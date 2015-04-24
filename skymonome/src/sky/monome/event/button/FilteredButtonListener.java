package sky.monome.event.button;

import sky.monome.event.button.ButtonEvent.ButtonAction;

/**
 * Filtered button listener. This is a special implementation of the {@link sky.monome.event.button.ButtonListener ButtonListener}
 * interface that is specialized in basic filtering of button actions. Implementations of this abstract class will be notified only when the filter value is met.
 * @author PJ Skyman
 * @param <B> Type of button manager that is used with button listeners.
 * @since SkyMonome v1.2
 */
public abstract class FilteredButtonListener<B extends ButtonManager<B>> extends ButtonListenerWithArguments<B>
{
    /**
     * Filter value.
     */
    private ButtonAction buttonActionFilter;

    /**
     * Constructs a filtered button listener with specified arguments.
     * The default value for the filter is {@link sky.monome.event.button.ButtonEvent.ButtonAction#BUTTON_PUSHED ButtonAction.BUTTON_PUSHED}.
     * @param arguments Arguments which can be used in the {@link #filteredButtonActionned(sky.monome.event.button.ButtonEvent) filteredButtonActionned(ButtonEvent)} method.
     * These arguments are optional. The presence of these arguments is due to this class which extends
     * {@link sky.monome.event.button.ButtonListenerWithArguments ButtonListenerWithArguments}.
     */
    public FilteredButtonListener(Object... arguments)
    {
        this(ButtonAction.BUTTON_PUSHED,arguments);
    }

    /**
     * Constructs a filtered button listener with specified arguments
     * and the specified filter value.
     * @param buttonActionFilter Filter value that will must be met
     * in order to notify implementations of this abstract class that
     * a button has been actionned.
     * @param arguments Arguments which can be used in the {@link #filteredButtonActionned(sky.monome.event.button.ButtonEvent) filteredButtonActionned(ButtonEvent)} method.
     * These arguments are optional. The presence of these arguments is due to this class which extends
     * {@link sky.monome.event.button.ButtonListenerWithArguments ButtonListenerWithArguments}.
     */
    public FilteredButtonListener(ButtonAction buttonActionFilter,Object... arguments)
    {
        super(arguments);
        this.buttonActionFilter=buttonActionFilter;
    }

    /**
     * Returns the filter value that will must be met
     * in order to notify implementations of this abstract class that
     * a button has been actionned.
     * @return The filter value that will must be met
     * in order to notify implementations of this abstract class that
     * a button has been actionned.
     */
    public ButtonAction getButtonActionFilter()
    {
        return buttonActionFilter;
    }

    /**
     * Modifies the filter value that will must be met
     * in order to notify implementations of this abstract class that
     * a button has been actionned.
     * @param buttonActionFilter New filter value that will must be met
     * in order to notify implementations of this abstract class that
     * a button has been actionned.
     */
    public void setButtonActionFilter(ButtonAction buttonActionFilter)
    {
        this.buttonActionFilter=buttonActionFilter;
    }

    /**
     * Invoked when a button actionning occurs.
     * This implementation verifies that the filter value is met, and if true, calls the
     * {@link #filteredButtonActionned(sky.monome.event.button.ButtonEvent) filteredButtonActionned(ButtonEvent)} method.
     * @param buttonEvent Informations about the button event.
     */
    public void buttonActionned(ButtonEvent<B> buttonEvent)
    {
        if(buttonEvent.getButtonAction().equals(buttonActionFilter))
            filteredButtonActionned(buttonEvent);
    }

    /**
     * Invoked when a filtered actionning occurs.
     * @param buttonEvent Informations about the button event.
     */
    public abstract void filteredButtonActionned(ButtonEvent<B> buttonEvent);
}