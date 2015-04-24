package sky.monome.behavior;

import sky.monome.LedButtonCouple.LedState;
import sky.monome.event.button.ButtonEvent.ButtonAction;
import sky.monome.exception.MonomeException;

/**
 * Toggle behavior. This behavior change its state by pressing the button, in a bistable manner.
 * @author PJ Skyman
 */
public class Toggle extends StaticBehavior
{
    /**
     * Indicates if the state of this behavior is actually on.
     */
    protected boolean on;
    /**
     * Type of behavior.
     */
    protected final ToggleType toggleType;

    /**
     * Constructs a toggle behavior with the default type
     * {@link sky.monome.behavior.Toggle.ToggleType#INITIALIZED_OFF ToggleType.INITIALIZED_OFF}.
     */
    public Toggle()
    {
        this(ToggleType.INITIALIZED_OFF);
    }

    /**
     * Constructs a toggle behavior with the specified type.
     * @param toggleType Type of behavior to adopt.
     */
    public Toggle(ToggleType toggleType)
    {
        this.toggleType=toggleType;
        if(toggleType==ToggleType.INITIALIZED_ON)
            on=true;
    }

    /**
     * Notifies this behavior that an action on the button is performed.
     * @param buttonAction Button action that is performed.
     * @throws sky.monome.exception.MonomeException When the led state can't be modified.
     */
    public void notify(ButtonAction buttonAction) throws MonomeException
    {
        if(buttonAction==ButtonAction.BUTTON_PUSHED)
        {
            on=!on;
            ledButtonCouple.setLedState(on?LedState.ON:LedState.OFF,true);
        }
    }

    /**
     * Indicates if this toggle is currently on.
     * @return {@code true} if this toggle is currently on, {@code false} otherwise.
     */
    public boolean isOn()
    {
        return on;
    }

    /**
     * Initializes this behavior and the registered led/button couple.
     * Only led/button couples should call this method, and should call it only one time.
     */
    public void init()
    {
        if(toggleType==ToggleType.INITIALIZED_ON)
            ledButtonCouple.initLedState(true);
    }

    /**
     * Type of behavior.
     * @author PJ Skyman
     */
    public static enum ToggleType
    {
        /**
         * Denotes the type that initially lights off the led state of the registered led/button couple.
         */
        INITIALIZED_OFF,
        /**
         * Denotes the type that initially lights on the led state of the registered led/button couple.
         */
        INITIALIZED_ON
    }
}