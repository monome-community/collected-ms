package sky.monome.event.analog;

import sky.monome.event.GenericListenerWithArguments;

/**
 * Listener that listens to analog events.
 * Arguments can be given at the construction time and can be used internally.
 * @author PJ Skyman
 */
public abstract class AnalogListenerWithArguments extends GenericListenerWithArguments implements AnalogListener
{
    /**
     * Constructs an analog listener with specified arguments.
     * @param arguments Arguments to give to this analog listener for future internal use.
     */
    public AnalogListenerWithArguments(Object... arguments)
    {
        super(arguments);
    }
}