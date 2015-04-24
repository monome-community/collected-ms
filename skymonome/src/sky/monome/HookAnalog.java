package sky.monome;

import sky.monome.util.OSCMessageDigester;

/**
 * Warning, this class has not been tested !
 * Use it at your own risks !
 * <br/><br/>
 * Analog input soldered into the Monome device that have a "hook behavior".
 * The user must go very close to the actual value to change the value.
 * An analog can be a potentiometer, an accelerometer, a gyrometer, a thermometer, an altimeter, a barometer
 * or any device that can give output signal in the range specified by the Monome microcontroller
 * (0V to 5V, powered by a 5V DC voltage), but hook analogs are more suitable for potentiometers only.
 * Analogs are usually contained by the logical Monome device directly for convenience, but you can build the Monome assembling tree of your choice.
 * By example, you can add an analog in a page, and this analog will be active only when the page will be visible.
 * @author PJ Skyman
 * @since SkyMonome v1.1
 * @see sky.monome.Analog Analog
 */
public class HookAnalog extends Analog
{
    /**
     * Indicates if this hook analog is currently in hook mode or not.
     */
    protected boolean hook;
    /**
     * Threshold to activate the hook mode.
     */
    protected static final float HOOK_THRESHOLD=.01f;

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
    public HookAnalog(String name,Container container,int rank)
    {
        super(name,container,rank);
        hook=false;
    }

    /**
     * Constructs an analog with the specified name and the specified rank.
     * @param name Name of this analog.
     * @param rank Rank of the analog. The rank is the physical rank on the Monome device. For compatibility with other components,
     * the rank is also named X-coordinate. This rank MUST follow this rule : the first analog have a rank of 0, the second is 1, and so on.
     * If you do not respect that rule, you should meet event problems.
     * @since SkyMonome v1.2
     */
    public HookAnalog(String name,int rank)
    {
        super(name,rank);
        hook=false;
    }

    /**
     * Notifies this hook analog that a message comes from the Monome device.
     * @param messageDigester Message digester that prepares and encapsulates the message for an easy access of informations contained in the message.
     */
    @Override
    public void notify(OSCMessageDigester messageDigester)
    {
        if(messageDigester.getInstruction().equals("/adc")&&messageDigester.getArgument(Integer.class,0).equals(x))
        {
            float newValue=messageDigester.getArgument(Float.class,1);
            synchronized(lockObject)
            {
                if(hook&&!isVisible())
                    hook=false;
                if(!hook&&Math.abs(value-newValue)<HOOK_THRESHOLD)
                    hook=true;
                if(hook)
                {
                    setValue(newValue);
                    fireAnalogMoved(value);
                }
            }
        }
    }
}