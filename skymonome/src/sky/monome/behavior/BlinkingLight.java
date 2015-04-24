package sky.monome.behavior;

import sky.monome.LedButtonCouple.LedState;
import sky.monome.event.button.ButtonEvent.ButtonAction;
import sky.monome.exception.MonomeException;

/**
 * Behavior for blinking light. The blinking cadency is independent of any other blinking light behavior,
 * so it should be unsynchronized. The blinking effect is permanent.
 * @author PJ Skyman
 */
public class BlinkingLight extends DynamicBehavior
{
    /**
     * Delay for one blinking cycle.
     */
    protected final long delay;

    /**
     * Constructs a blinking light behavior with the specified delay.
     * @param delay Delay for one blinking cycle, in milliseconds.
     */
    public BlinkingLight(long delay)
    {
        this(new Long(delay));
    }

    /**
     * Constructs a blinking light behavior with the specified delay.
     * @param delay Delay for one blinking cycle, in milliseconds.
     * @since SkyMonome v1.2
     */
    public BlinkingLight(Long delay)
    {
        super(DynamicBehaviorType.PERPETUAL);
        this.delay=delay;
    }

    /**
     * Invoked when the behavior must execute its perpetual or one-time action.
     * @throws java.lang.InterruptedException When the virtual machine stops while a sleep operation.
     * @throws sky.monome.exception.MonomeException When the led state of the registered led can't be modified.
     */
    public void action() throws InterruptedException,MonomeException
    {
        if(!ledButtonCouple.isVisible())
            return;
        ledButtonCouple.setLedState(LedState.ON,true);
        Thread.sleep(delay/2L);
        ledButtonCouple.setLedState(LedState.OFF,true);
        Thread.sleep(delay/2L);
    }

    /**
     * Notifies this behavior that an action on the button is performed.
     * This method does nothing since the blinking effect is independent of button actions.
     * @param buttonAction Button action that is performed.
     */
    public void notify(ButtonAction buttonAction)
    {
    }

    /**
     * Initializes this behavior and the registered led/button couple.
     * It starts the internal thread.
     * Only led/button couples should call this method, and should call it only one time.
     * @throws sky.monome.exception.MonomeException When the initialization of this behavior and the registered led/button couple was not possible.
     */
    public void init()
    {
        startThread();
    }
}