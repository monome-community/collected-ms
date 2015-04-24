package sky.monome.behavior;

import sky.monome.LedButtonCouple;
import sky.monome.exception.MonomeException;

/**
 * Behavior that can make animation in time, like blinking effect.
 * All subclasses of this class should start the internal thread at the initialization by calling
 * {@link sky.monome.behavior.DynamicBehavior#startThread() DynamicBehavior.startThread()} method.
 * @see Behavior#init()
 * @author PJ Skyman
 */
public abstract class DynamicBehavior implements Behavior
{
    /**
     * Type of dynamicity.
     */
    protected final DynamicBehaviorType dynamicBehaviorType;
    /**
     * Registered led/button couple.
     */
    protected LedButtonCouple ledButtonCouple;
    /**
     * Thread that is responsible for animate this behavior.
     */
    protected final Thread thread;

    /**
     * Constructs a dynamic behavior with the specified type of dynamicity.
     * @param dynamicBehaviorType Type of dynamicity to adopt in this behavior.
     */
    public DynamicBehavior(DynamicBehaviorType dynamicBehaviorType)
    {
        this.dynamicBehaviorType=dynamicBehaviorType;
        thread=new Thread()
        {
            @Override
            public void run()
            {
                try
                {
                    while(DynamicBehavior.this.dynamicBehaviorType==DynamicBehaviorType.PERPETUAL)
                        action();
                }
                catch(MonomeException e)
                {
                    e.printStackTrace();
                }
                catch(InterruptedException e)
                {
                }
            }
        };
    }

    /**
     * Invoked when the behavior must execute its perpetual or one-time action.
     * @throws java.lang.InterruptedException When the virtual machine stops while a sleep operation.
     * @throws sky.monome.exception.MonomeException When the action can't be executed without any error.
     * Typically, led state modifications can raise this exception.
     */
    public abstract void action() throws InterruptedException,MonomeException;

    /**
     * Returns the led/button couple registered with this behavior.
     * @return The led/button couple registered with this behavior.
     */
    public LedButtonCouple getLedButtonCouple()
    {
        return ledButtonCouple;
    }

    /**
     * Modifies the led/button couple registered with this behavior.
     * Note that the behavior can be registered with only one led/button couple in its whole life.
     * If you attempt to register a second led/button couple, so a {@link sky.monome.exception.MonomeException MonomeException} is raised.
     * @param ledButtonCouple New led/button couple to register with this behavior.
     * @throws sky.monome.exception.MonomeException When this behavior is already registered with a led/button couple when this method is called.
     */
    public void setLedButtonCouple(LedButtonCouple ledButtonCouple) throws MonomeException
    {
        if(this.ledButtonCouple!=null)
            throw new MonomeException("The behavior is already registered to "+this.ledButtonCouple);
        this.ledButtonCouple=ledButtonCouple;
    }

    /**
     * Starts the activity of this dynamic behavior.
     */
    protected void startThread()
    {
        thread.start();
    }

    /**
     * Type of dynamicity.
     * @author PJ Skyman
     */
    public static enum DynamicBehaviorType
    {
        /**
         * Denotes a behavior that have only one cycle.
         */
        MONOCYCLE,
        /**
         * Denotes a behavior that have an infinity of cycles.
         */
        PERPETUAL
    }
}