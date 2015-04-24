package sky.monome.event.button;

import sky.monome.event.GenericEvent;

/**
 * Button event's information object.
 * Button events are triggered by {@link sky.monome.event.button.ButtonManager ButtonManager} objects.
 * @param <B> Type of button manager that triggers button events.
 * @author PJ Skyman
 */
public class ButtonEvent<B extends ButtonManager<B>> extends GenericEvent<B>
{
    /**
     * Action associated with this button event.
     */
    protected final ButtonAction buttonAction;

    /**
     * Constructs a button event with the specified time, source and button action.
     * @param when Time of this event, in milliseconds since the time zero in the Unix world.
     * @param source Source of this event. {@link sky.monome.event.button.ButtonManager ButtonManager} objects are sources for button events.
     * @param buttonAction Action associated with this button event.
     */
    public ButtonEvent(long when,B source,ButtonAction buttonAction)
    {
        super(when,source);
        this.buttonAction=buttonAction;
    }

    /**
     * Returns the action associated with this button event.
     * @return The action associated with this button event.
     */
    public ButtonAction getButtonAction()
    {
        return buttonAction;
    }

    /**
     * Button action.
     * @author PJ Skyman
     */
    public enum ButtonAction
    {
        /**
         * Denotes a pushed button action.
         */
        BUTTON_PUSHED,
        /**
         * Denotes a released button action.
         */
        BUTTON_RELEASED
    }
}