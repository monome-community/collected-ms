package sky.monome.event.button;

import sky.monome.event.GenericListenerWithArguments;

/**
 * Listener that listens to button events.
 * Arguments can be given at the construction time and can be used internally.
 * @param <B> Type of button manager that is used with button listeners.
 * @author PJ Skyman
 */
public abstract class ButtonListenerWithArguments<B extends ButtonManager<B>> extends GenericListenerWithArguments implements ButtonListener<B>
{
    /**
     * Constructs a button listener with specified arguments.
     * @param arguments Arguments to give to this button listener for future internal use.
     */
    public ButtonListenerWithArguments(Object... arguments)
    {
        super(arguments);
    }
}