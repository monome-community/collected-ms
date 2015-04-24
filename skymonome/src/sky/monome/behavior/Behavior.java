package sky.monome.behavior;

import sky.monome.LedButtonCouple;
import sky.monome.event.button.ButtonEvent.ButtonAction;
import sky.monome.exception.MonomeException;

/**
 * Led behavior. Typically, led behaviors can produce lighting effects like blinking, or more simply can automatize led states when buttons are pressed.
 * Other behaviors can be also integrated in groups of behaviors, in order to do exclusive actions between these behaviors.
 * More generally, a behavior avoids the use of button listeners by controlling directly and more simply led states.
 * A led/button couple is registered with only one behavior, and a behavior is associated with only one led/button couple.
 * @author PJ Skyman
 */
public interface Behavior
{
    /**
     * Returns the led/button couple registered with this behavior.
     * @return The led/button couple registered with this behavior.
     */
    public LedButtonCouple getLedButtonCouple();

    /**
     * Modifies the led/button couple registered with this behavior.
     * Note that the behavior can be registered with only one led/button couple in its whole life.
     * If you attempt to register a second led/button couple, so a {@link sky.monome.exception.MonomeException MonomeException} is raised.
     * @param ledButtonCouple New led/button couple to register with this behavior.
     * @throws sky.monome.exception.MonomeException When this behavior is already registered with a led/button couple when this method is called.
     */
    public void setLedButtonCouple(LedButtonCouple ledButtonCouple) throws MonomeException;

    /**
     * Notifies this behavior that an action on the button is performed.
     * @param buttonAction Button action that is performed.
     * @throws sky.monome.exception.MonomeException Only with a few behaviors, when a led state can't be modified, by example.
     */
    public void notify(ButtonAction buttonAction) throws MonomeException;

    /**
     * Initializes this behavior and the registered led/button couple.
     * By example, if the behavior forces the registered led to light on at the program launching, so it will be done in this method.
     * Only led/button couples should call this method, and should call it only one time.
     * @throws sky.monome.exception.MonomeException When the initialization of this behavior and the registered led/button couple was not possible.
     */
    public void init() throws MonomeException;
}