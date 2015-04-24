package sky.monome.util;

import com.illposed.osc.OSCMessage;
import java.util.Arrays;

/**
 * Digester for messages provided by the OSC protocol.
 * With a digester, which treats the message, you can easily access to the instruction and arguments.
 * @author PJ Skyman
 */
public class OSCMessageDigester
{
    /**
     * Instruction included in the message digested by this digester.
     */
    protected final String instruction;
    /**
     * Array of arguments included in the message digested by this digester.
     */
    protected final Object[] arguments;

    /**
     * Constructs a message digester with the specified raw message.
     * @param message Raw message which must be digested by this digester.
     */
    public OSCMessageDigester(OSCMessage message)
    {
        String address=message.getAddress();
        instruction=address.substring(address.lastIndexOf("/"));
        arguments=message.getArguments();
    }

    /**
     * Returns the instruction included in the message digested by this digester.
     * The returned instruction contains the initial slash character ('/').
     * @return The instruction included in the message digested by this digester.
     */
    public String getInstruction()
    {
        return instruction;
    }

    /**
     * Returns the argument at the specified index included in the message digested by this digester.
     * The returned argument can be typed if you parametrize this call.
     * @param <T> Type of the returned argument.
     * @param index Index of the argument in the array of arguments.
     * @return The (eventually typed) argument at the specified index included in the message digested by this digester.
     * @throws ArrayIndexOutOfBoundsException When the index is not valid for the array of arguments.
     * @throws ClassCastException When the argument can't be typed to the specified type.
     * @since SkyMonome v1.1
     */
    @SuppressWarnings("unchecked")
    public <T> T getArgument(int index)
    {
        return (T)arguments[index];
    }

    /**
     * Returns the argument at the specified index included in the message digested by this digester.
     * The returned argument is typed, if possible, to the specified type.
     * @param <T> Type of the returned argument.
     * @param clazz Class object which indicates the type of the returned argument.
     * @param index Index of the argument in the array of arguments.
     * @return The typed argument at the specified index included in the message digested by this digester.
     * @throws ArrayIndexOutOfBoundsException When the index is not valid for the array of arguments.
     * @throws ClassCastException When the argument can't be typed to the specified type.
     */
    @SuppressWarnings("unchecked")
    public <T> T getArgument(Class<T> clazz,int index)
    {
        return (T)arguments[index];
    }

    /**
     * Returns a string representation of this message digester.
     * @return A string representation of this message digester.
     */
    @Override
    public String toString()
    {
        return "\""+getInstruction()+"\" "+Arrays.toString(arguments);
    }
}