package sky.monome.behavior;

import sky.monome.event.button.ButtonEvent.ButtonAction;

/**
 * Led behavior that does nothing when it is notified and does nothing at the initialization.
 * @author PJ Skyman
 * @since SkyMonome v1.1
 */
public class PassiveBehavior extends StaticBehavior
{
    /**
     * Type of passivity used by this passive behavior.
     */
    protected final PassivityType passivityType;

    /**
     * Constructs a passive behavior with the default type
     * {@link sky.monome.behavior.PassiveBehavior.PassivityType#INITIALIZED_OFF Passivity.INITIALIZED_OFF}.
     */
    public PassiveBehavior()
    {
        this(PassivityType.INITIALIZED_OFF);
    }

    /**
     * Constructs a passive behavior with the specified type.
     * @param passivityType Type of behavior to adopt.
     */
    public PassiveBehavior(PassivityType passivityType)
    {
        this.passivityType=passivityType;
    }

    /**
     * Notifies this behavior that an action on the button is performed.
     * This method does nothing.
     * @param buttonAction Button action that is performed.
     */
    public void notify(ButtonAction buttonAction)
    {
    }

    /**
     * Initializes this behavior and the registered led/button couple.
     * Only led/button couples should call this method, and should call it only one time.
     */
    public void init()
    {
        if(passivityType==PassivityType.INITIALIZED_ON)
            ledButtonCouple.initLedState(true);
    }

    /**
     * Type of passivity.
     * @author PJ Skyman
     * @since SkyMonome v1.1
     */
    public static enum PassivityType
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