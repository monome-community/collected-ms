package sky.monome;

import com.illposed.osc.OSCListener;
import com.illposed.osc.OSCMessage;
import com.illposed.osc.OSCPortIn;
import com.illposed.osc.OSCPortOut;
import java.awt.Dimension;
import java.io.IOException;
import java.net.InetAddress;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.util.Date;
import sky.monome.LedButtonCouple.LedState;
import sky.monome.exception.MonomeException;
import sky.monome.frame.DefaultFrame;
import sky.monome.util.OSCMessageDigester;

/**
 * Logical Monome device. Instances of this class must be always on top of Monome assembling trees.
 * Due to its logical nature, only one instance of this class can manage up to 4 physical 40h Monome devices at the same time, with a correct mapping done in MonomeSerial.
 * @author PJ Skyman
 */
public final class Monome extends Group
{
    /**
     * Connection object that communicates with physical Monome device.
     */
    private final MonomeConnection monomeConnection;
    /**
     * Size of this logical Monome device.
     */
    private final MonomeSize monomeSize;
    /**
     * Constant used to denote that a coordinate was not found.
     * @deprecated Since SkyMonome v1.3, this constant field is not used
     * anymore.
     */
    @Deprecated
    public static final int COORDINATE_NOT_FOUND=-1;

    /**
     * Constructs a logical Monome device with specified name, size, network addressing and prefix.
     * @param name Name of this Monome device.
     * @param monomeSize Size of this Monome device.
     * @param address Network address of this Monome device, typically "localhost".
     * @param prefix Prefix of this Monome device. Prefix is used by MonomeSerial. Typically "/40h".
     * @param portInNumber Port number for entering communication, typically 8000.
     * @param portOutNumber Port number for outgoing communication, typically 8080.
     * @throws sky.monome.exception.MonomeException When it's impossible to create network connections with MonomeSerial.
     */
    public Monome(String name,MonomeSize monomeSize,String address,String prefix,int portInNumber,int portOutNumber) throws MonomeException
    {
        super(name,0,0,monomeSize.getDimension().width,monomeSize.getDimension().height);
        this.monomeSize=monomeSize;
        try
        {
            monomeConnection=new MonomeConnection(address,prefix,portInNumber,portOutNumber);
        }
        catch(UnknownHostException e)
        {
            throw new MonomeException("Error when resolving network address of MonomeSerial",e);
        }
        catch(SocketException e)
        {
            throw new MonomeException("Error when creating network connections with MonomeSerial",e);
        }
    }

    /**
     * Returns {@code this}.
     * @return {@code this}.
     */
    @Override
    public Monome getMonome()
    {
        return this;
    }

    /**
     * Returns {@code 0}.
     * @return {@code 0}.
     */
    @Override
    public int getAbsoluteX()
    {
        return 0;
    }

    /**
     * Returns {@code 0}.
     * @return {@code 0}.
     */
    @Override
    public int getAbsoluteY()
    {
        return 0;
    }

    /**
     * Returns a string representation of this logical Monome device.
     * @return A string representation of this logical Monome device.
     */
    @Override
    public String toString()
    {
        return "Monome "+name;
    }

    /**
     * Returns {@code true}.
     * @return {@code true}.
     */
    @Override
    public boolean isVisible()
    {
        return true;
    }

    /**
     * Returns {@code false}.
     * @return {@code false}.
     */
    @Override
    public boolean canHaveParentContainer()
    {
        return false;
    }

    /**
     * Refreshes the physical Monome device according to this logical Monome device.
     * It internally uses a {@link sky.monome.frame.DefaultFrame DefaultFrame}.
     * This logicial Monome device asks to its contained components to write down to the DefaultFrame,
     * and then the virtual "image" represented by the DefaultFrame is sent in one shot to the physical Monome device.
     * @throws sky.monome.exception.MonomeException When an error appears when communicating with MonomeSerial.
     */
    public void refresh() throws MonomeException
    {
        synchronized(lockObject)
        {
            DefaultFrame defaultFrame=new DefaultFrame(monomeSize.getDimension().width,monomeSize.getDimension().height);
            writeOn(defaultFrame);
            if(monomeSize==MonomeSize.MONOME_64)
            {
                int[] values=new int[8];
                for(int i=0;i<8;i++)
                    for(int j=0;j<8;j++)
                        values[i]=(values[i]<<1)|(defaultFrame.get(7-j,i)==LedState.ON?1:0);
                try
                {
                    monomeConnection.send(monomeConnection.getPrefix()+"/frame",values[0],values[1],values[2],values[3],values[4],values[5],values[6],values[7]);
                }
                catch(IOException e)
                {
                    throw new MonomeException("Error when writing to MonomeSerial",e);
                }
            }
            else
                for(int m=0;m<16;m+=8)
                    for(int n=0;n<height;n+=8)
                    {
                        int[] values=new int[8];
                        for(int i=0;i<8;i++)
                            for(int j=0;j<8;j++)
                                values[i]=(values[i]<<1)|(defaultFrame.get(7-j+m,i+n)==LedState.ON?1:0);
                        try
                        {
                            monomeConnection.send(monomeConnection.getPrefix()+"/frame",m,n,values[0],values[1],values[2],values[3],values[4],values[5],values[6],values[7]);
                        }
                        catch(IOException e)
                        {
                            throw new MonomeException("Error when writing to MonomeSerial",e);
                        }
                    }
        }
    }
    
    /**
     * Clears the led state of all leds of the Monome device.
     * @throws sky.monome.exception.MonomeException When an error appears when communicating with MonomeSerial.
     * @since SkyMonome v1.1
     */
    public void clear() throws MonomeException
    {
        clear(false);
    }

    /**
     * Clears the led state of all leds of the Monome device.
     * @param state {@code true} if all leds should be turned on, or {@code false} if all leds should turned off.
     * @throws sky.monome.exception.MonomeException When an error appears when communicating with MonomeSerial.
     * @since SkyMonome v1.1
     */
    public void clear(boolean state) throws MonomeException
    {
        try
        {
            monomeConnection.send(monomeConnection.getPrefix()+"/clear",state?"1":"0");
        }
        catch(IOException e)
        {
            throw new MonomeException("Error when writing to MonomeSerial",e);
        }
    }

    /**
     * Connection class used for physical communication with the Monome device.
     * @author PJ Skyman
     */
    private class MonomeConnection
    {
        /**
         * Current prefix used for communicating with the Monome device.
         */
        private final String prefix;
        /**
         * Communication port used for listening physical events.
         */
        private final OSCPortIn portIn;
        /**
         * Communication port used for sending physical orders.
         */
        private final OSCPortOut portOut;

        /**
         * Constructs a connection object with the specified connection informations and the specified logical Monome device.
         * @param monome Logical Monome device to attach to this connection object.
         * @param address Address of the Monome device.
         * @param prefix Current prefix of the Monome device.
         * @param portInNumber Port number for listening physical events (port in).
         * @param portOutNumber Port number for sending physical orders (port out).
         * @throws java.net.SocketException When troubles are encountered when establishing the physical connection with the Monome device.
         */
        private MonomeConnection(String address,String prefix,int portInNumber,int portOutNumber) throws SocketException,UnknownHostException
        {
            this.prefix=prefix;
            portIn=new OSCPortIn(portInNumber);
            OSCListener listener=new OSCListener()
            {
                public void acceptMessage(Date arg0,OSCMessage arg1)
                {
                    try
                    {
                        Monome.this.notify(new OSCMessageDigester(arg1));
                    }
                    catch(MonomeException e)
                    {
                        e.printStackTrace();
                    }
                }
            };
            String[] listenedInstructions=
            {
                "/press",
                "/adc",
                "/enc"
            };
            for(String instruction:listenedInstructions)
                portIn.addListener(prefix+instruction,listener);
            portIn.startListening();
            portOut=new OSCPortOut(InetAddress.getByName(address),portOutNumber);
        }

        /**
         * Returns the current prefix of the Monome device.
         * @return The current prefix of the Monome device.
         */
        private String getPrefix()
        {
            return prefix;
        }

        /**
         * Sends a message to the Monome device.
         * @param instruction Instrution of the message.
         * @param arguments Arguments of the message.
         * @throws java.io.IOException When it is impossible to send the message.
         */
        private void send(String instruction,Object... arguments) throws IOException
        {
            portOut.send(new OSCMessage(instruction,arguments));
        }
    }

    /**
     * Monome size.
     * @author PJ Skyman
     */
    public static enum MonomeSize
    {
        /**
         * Denotes a Monome 64 or a Monome 40h (8x8).
         */
        MONOME_64
        {
            public Dimension getDimension()
            {
                return new Dimension(8,8);
            }
        },
        /**
         * Denotes a Monome 128 or a Monome 80h (16x8). Note that this Monome should be used horizontally only.
         */
        MONOME_128
        {
            public Dimension getDimension()
            {
                return new Dimension(16,8);
            }
        },
        /**
         * Denotes a Monome 256 or a Monome 100h (16x16).
         */
        MONOME_256
        {
            public Dimension getDimension()
            {
                return new Dimension(16,16);
            }
        };

        /**
         * Returns the physical dimension equivalent to this Monome size.
         * @return The physical dimension equivalent to this Monome size.
         * @since SkyMonome v1.2
         */
        public abstract Dimension getDimension();
    }

    /**
     * Throws an exception and prints the stack trace.
     * This method is designed for debugging purpose only.
     * @since SkyMonome v1.1
     */
    public static void throwException()
    {
        try
        {
            throw new Exception();
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }
    
    /**
     * Prints out an about message on the console.
     */
    private static void printAbout()
    {
        System.out.println("SkyMonome v1.3 by PJ Skyman");
    }

    /**
     * Main method. This prints out an about message on the console.
     * @param args Arguments passed to the program.
     * They won't be used.
     */
    public static void main(String[] args)
    {
        printAbout();
    }
}