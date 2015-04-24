package sky.monome.sequence;

import sky.monome.event.button.ButtonManager;
import sky.monome.sequencer.Sequencer;

/**
 * Iterator over a sequencer's sequence which progresses upwardly in the sequence, two steps by two steps.
 * With sequences having an odd number of steps, this iterator is very interesting.
 * @author PJ Skyman
 * @param <S> Type of sequencers that use these sequence iterators.
 * @param <B> Type of button managers used by the sequencers that use these sequence iterators.
 * @since SkyMonome v1.1
 */
public class TwiceUpwardSequenceIterator<S extends Sequencer<S,B>,B extends ButtonManager<B>> implements SequenceIterator<S,B>
{
    /**
     * Constructs a twice upward sequence iterator.
     */
    public TwiceUpwardSequenceIterator()
    {
    }

    /**
     * Returns the next step number for the specified sequencer.
     * @param sequencer Sequencer which demands the next step.
     * @return The next step number for the specified sequencer.
     */
    public int getNextStep(S sequencer)
    {
        if(sequencer.getStepsNumberInSequence()==1)
            return sequencer.getActiveStepNumberInSequence();
        return (sequencer.getActiveStepNumberInSequence()+2)%sequencer.getStepsNumberInSequence();
    }
}