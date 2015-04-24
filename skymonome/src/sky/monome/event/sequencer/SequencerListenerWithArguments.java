package sky.monome.event.sequencer;

import sky.monome.event.GenericListenerWithArguments;
import sky.monome.event.button.ButtonManager;

/**
 * Listener that listens to sequencer events.
 * Arguments can be given at the construction time and can be used internally.
 * @param <S> Type of sequencer components that work with these sequencer listeners with arguments.
 * @param <B> Type of button managers that are used by sequencer components that work with these sequencer listeners with arguments.
 * @author PJ Skyman
 */
public abstract class SequencerListenerWithArguments<S extends SequencerComponent<S,B>,B extends ButtonManager<B>> extends GenericListenerWithArguments implements SequencerListener<S,B>
{
    /**
     * Constructs a sequencer listener with specified arguments.
     * @param arguments Arguments to give to this sequencer listener for future internal use.
     */
    public SequencerListenerWithArguments(Object... arguments)
    {
        super(arguments);
    }
}