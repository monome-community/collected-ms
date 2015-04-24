package sky.monome.behavior;

import sky.monome.LedButtonCouple.ButtonState;
import sky.monome.LedButtonCouple.LedState;
import sky.monome.event.button.ButtonEvent.ButtonAction;
import sky.monome.exception.MonomeException;
/**
 * Behavior for blinking light when the button is pushed. The blinking cadency is independent of any other blinking light behavior,
 * so it should be unsynchronized. The blinking effect is permanent.
 * @author PJ Skyman
 */

public class BlinkingLightOnPush extends DynamicBehavior
{
    /**
     * Delay for one blinking cycle.
     */
    protected final long delay;

    /**
     * Constructs a blinking light on push behavior with te specified delay.
     * @param delay Delay for one blinking cycle, in milliseconds.
     */
    public BlinkingLightOnPush(long delay)
    {
        this(new Long(delay));
    }

    /**
     * Constructs a blinking light on push behavior with te specified delay.
     * @param delay Delay for one blinking cycle, in milliseconds.
     * @since SkyMonome v1.2
     */
    public BlinkingLightOnPush(Long delay)
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
        if(ledButtonCouple.getButtonState()==ButtonState.BUTTON_PUSHED)
            ledButtonCouple.setLedState(LedState.ON,true);
        Thread.sleep(delay/2L);
        if(ledButtonCouple.getButtonState()==ButtonState.BUTTON_PUSHED)
            ledButtonCouple.setLedState(LedState.OFF,true);
        Thread.sleep(delay/2L);
    }

    /**
     * Notifies this behavior that an action on the button is performed.
     * @param buttonAction Button action that is performed.
     */
    public void notify(ButtonAction buttonAction) throws MonomeException
    {
        if(buttonAction==ButtonAction.BUTTON_RELEASED)
            ledButtonCouple.setLedState(LedState.OFF,true);
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