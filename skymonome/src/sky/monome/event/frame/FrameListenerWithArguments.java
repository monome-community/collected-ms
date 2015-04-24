package sky.monome.event.frame;

import sky.monome.event.GenericListenerWithArguments;

/**
 * Listener that listens to frame events.
 * Arguments can be given at the construction time and can be used internally.
 * @param <F> Type of dynamic frame that is used with frame listeners.
 * @author PJ Skyman
 */
public abstract class FrameListenerWithArguments<F extends DynamicFrame<F>> extends GenericListenerWithArguments implements FrameListener<F>
{
    /**
     * Constructs a frame listener with specified arguments.
     * @param arguments Arguments to give to this frame listener for future internal use.
     */
    public FrameListenerWithArguments(Object... arguments)
    {
        super(arguments);
    }
}