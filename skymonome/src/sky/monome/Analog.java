package sky.monome;

import java.awt.Rectangle;
import sky.monome.event.analog.AnalogEvent;
import sky.monome.event.analog.AnalogListener;
import sky.monome.frame.Frame;
import sky.monome.util.OSCMessageDigester;
import sky.monome.util.ThreadWithUserObjects;

/**
 * Analog input soldered into the Monome device.
 * An analog can be a potentiometer, an accelerometer, a gyrometer, a thermometer, an altimeter, a barometer
 * or any device that can give output signal in the range specified by the Monome microcontroller
 * (0V to 5V, powered by a 5V DC voltage).
 * Analogs are usually contained by the logical Monome device directly for convenience, but you can build the Monome assembling tree of your choice.
 * By example, you can add an analog in a page, and this analog will be active only when the page will be visible.
 * @author PJ Skyman
 */
public class Analog extends Component
{
    /**
     * Current value of this analog.
     */
    protected float value;

    /**
     * Constructs an analog with the specified name and the specified rank and contained by the specified container.
     * @param name Name of this analog.
     * @param container Container that contains this analog.
     * @param rank Rank of the analog. The rank is the physical rank on the Monome device. For compatibility with other components,
     * the rank is also named X-coordinate. This rank MUST follow this rule : the first analog have a rank of 0, the second is 1, and so on.
     * If you do not respect that rule, you should meet event problems.
     * @deprecated Since SkyMonome v1.2, all components register themselves inside their
     * container, so you don't need to specify the container by calling this constructor.
     */
    @Deprecated
    public Analog(String name,Container container,int rank)
    {
        super(name,container,rank,0);
        value=0f;
    }

    /**
     * Constructs an analog with the specified name and the specified rank.
     * @param name Name of this analog.
     * @param rank Rank of the analog. The rank is the physical rank on the Monome device. For compatibility with other components,
     * the rank is also named X-coordinate. This rank MUST follow this rule : the first analog have a rank of 0, the second is 1, and so on.
     * If you do not respect that rule, you should meet event problems.
     * @since SkyMonome v1.2
     */
    public Analog(String name,int rank)
    {
        super(name,rank,0);
        value=0f;
    }

    /**
     * Returns the current value of this analog.
     * @return The current value of this analog.
     */
    public float getValue()
    {
        return value;
    }

    /**
     * Modifies the current value of this analog.
     * Warning ! Only internal listener methods must call this method. Otherwise, chaotic behaviors must appear.
     * @param value New value to give to this analog.
     */
    protected void setValue(float value)
    {
        this.value=value;
    }

    /**
     * Adds the specified listener to the listeners list of this analog.
     * @param analogListener Listener to add to the listeners list of this analog.
     */
    public void addAnalogListener(AnalogListener analogListener)
    {
        eventListenerList.add(AnalogListener.class,analogListener);
    }

    /**
     * Removes the specified listener from the listeners list of this analog.
     * @param analogListener Listener to remove from the listeners list of this analog.
     */
    public void removeAnalogListener(AnalogListener analogListener)
    {
        eventListenerList.remove(AnalogListener.class,analogListener);
    }

    /**
     * Returns an array of all listeners contained in the listeners list of this analog.
     * @return An array of all listeners contained in the listeners list of this analog.
     */
    public AnalogListener[] getAnalogListeners()
    {
        return eventListenerList.getListeners(AnalogListener.class);
    }

    /**
     * Notifies all the listeners that a new analog move occured.
     * @param value New value given to this analog.
     */
    public void fireAnalogMoved(float value)
    {
        for(AnalogListener analogListener:getAnalogListeners())
            new ThreadWithUserObjects(analogListener,value)
            {
                public void run()
                {
                    this.<AnalogListener>getUserObject(0).analogMoved(new AnalogEvent(System.currentTimeMillis(),Analog.this,this.<Float>getUserObject(1)));
                }
            }.start();
    }

    /**
     * Returns the logical Monome device that contains this analog.
     * The logical Monome device is always at the top of the Monome assembling tree.
     * @return The logical Monome device that contains this analog.
     */
    public Monome getMonome()
    {
        try
        {
            return container.getMonome();
        }
        catch(NullPointerException e)
        {
            return null;
        }
    }

    /**
     * Notifies this analog that a message comes from the Monome device.
     * @param messageDigester Message digester that prepares and encapsulates the message for an easy access of informations contained in the message.
     */
    public void notify(OSCMessageDigester messageDigester)
    {
        if(messageDigester.getInstruction().equals("/adc")&&messageDigester.getArgument(Integer.class,0).equals(x))
        {
            setValue(messageDigester.getArgument(Float.class,1));
            fireAnalogMoved(value);
        }
    }

    /**
     * Writes this analog on the specified frame in order to refresh the Monome device.
     * Once this frame is completed, it is sent to the Monome device.
     * This method does nothing since analogs haven't any relation with the leds.
     * @param frame Frame in which this analog must write its led state.
     * @see sky.monome.Monome#refresh()
     */
    public void writeOn(Frame frame)
    {
    }

    /**
     * Returns the absolute X-coordinate of this analog.
     * For analogs, this method returns the rank that was given at construction.
     * @return The absolute X-coordinate of this analog.
     */
    public int getAbsoluteX()
    {
        return x;
    }

    /**
     * Returns the absolute Y-coordinate of this analog.
     * For analogs, this method always returns 0.
     * @return The absolute Y-coordinate of this analog.
     */
    public int getAbsoluteY()
    {
        return 0;
    }

    /**
     * Indicates whether this analog is actually visible.
     * @return {@code true} if this analog is actually visible, {@code false} otherwise.
     */
    public boolean isVisible()
    {
        try
        {
            return container.isVisible();
        }
        catch(NullPointerException e)
        {
            return false;
        }
    }

    /**
     * Returns a string representation of this analog.
     * @return A string representation of this analog.
     */
    public String toString()
    {
        return "Analog "+name;
    }

    /**
     * Indicates whether this analog can have a parent container in the Monome assembling tree.
     * @return Always {@code true}.
     */
    public boolean canHaveParentContainer()
    {
        return true;
    }

    /**
     * Returns the bounds of this analog in the local context of its container.
     * @return The bounds of this analog in the local context of its container.
     */
    public Rectangle getBounds()
    {
        return new Rectangle(-x-1,0,1,1);
    }
}