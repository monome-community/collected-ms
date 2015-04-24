package sky.monome.sequence.factory;

import sky.monome.event.button.ButtonManager;
import sky.monome.exception.MonomeException;
import sky.monome.sequence.SequenceIterator;
import sky.monome.sequencer.Sequencer;

/**
 * Sequence iterator factory. A factory of this kind can produce sequence iterators serially.
 * @author PJ Skyman
 * @param <S> Type of sequencers that use sequence iterators built by this factory.
 * @param <B> Type of button managers used by the sequencers that use sequence iterators built by this factory.
 * @since SkyMonome v1.1
 */
public interface SequenceIteratorFactory<S extends Sequencer<S,B>,B extends ButtonManager<B>>
{
    /**
     * Creates a sequence iterator with the help of optional arguments.
     * @param arguments Optional arguments that can help the sequence iterator factoring.
     * Few factories need arguments to produce specific sequence iterators.
     * Generally, it is not used.
     * @return A sequence iterator freshly created.
     * @throws sky.monome.exception.MonomeException When the sequence iterator factoring can't operate successfully.
     */
    public SequenceIterator<S,B> createSequenceIterator(Object... arguments) throws MonomeException;
}