package sky.monome.behavior;

import sky.monome.LedButtonCouple.LedState;
import sky.monome.event.button.ButtonEvent.ButtonAction;
import sky.monome.exception.MonomeException;

/**
 * Behavior that changes the led state accordingly to the button state, in a monostable manner.
 * @author PJ Skyman
 */
public class LightOnPush extends StaticBehavior
{
    /**
     * Type of behavior.
     */
    protected final LightOnPushType pushAndLightType;

    /**
     * Constructs a "light on push" behavior with the default type
     * {@link sky.monome.behavior.LightOnPush.LightOnPushType#PUSH_TO_LIGHT_ON LightOnPushType.PUSH_TO_LIGHT_ON}.
     */
    public LightOnPush()
    {
        this(LightOnPushType.PUSH_TO_LIGHT_ON);
    }

    /**
     * Constructs a "light on push" behavior with the specified type.
     * @param pushAndLightType Type of behavior to adopt.
     */
    public LightOnPush(LightOnPushType pushAndLightType)
    {
        this.pushAndLightType=pushAndLightType;
    }

    /**
     * Notifies this behavior that an action on the button is performed.
     * @param buttonAction Button action that is performed.
     * @throws sky.monome.exception.MonomeException When the led state can't be modified.
     */
    public void notify(ButtonAction buttonAction) throws MonomeException
    {
        if(pushAndLightType==LightOnPushType.PUSH_TO_LIGHT_ON)
            ledButtonCouple.setLedState(buttonAction==ButtonAction.BUTTON_PUSHED?LedState.ON:LedState.OFF,true);
        else
            ledButtonCouple.setLedState(buttonAction==ButtonAction.BUTTON_RELEASED?LedState.ON:LedState.OFF,true);
    }

    /**
     * Initializes this behavior and the registered led/button couple.
     * Only led/button couples should call this method, and should call it only one time.
     */
    public void init()
    {
        if(pushAndLightType==LightOnPushType.PUSH_TO_LIGHT_OFF)
            ledButtonCouple.initLedState(true);
    }

    /**
     * Type of behavior.
     * @author PJ Skyman
     */
    public static enum LightOnPushType
    {
        /**
         * Denotes the type that lights on only when the button is pressed.
         */
        PUSH_TO_LIGHT_ON,
        /**
         * Denotes the type that lights on only when the button is released.
         */
        PUSH_TO_LIGHT_OFF
    }
}