package sky.monome.sequence;

import sky.monome.event.button.ButtonManager;
import sky.monome.sequencer.Sequencer;

/**
 * Iterator over a sequencer's sequence which progresses upwardly in the sequence.
 * @param <S> Type of sequencers that use these sequence iterators.
 * @param <B> Type of button managers used by the sequencers that use these sequence iterators.
 * @author PJ Skyman
 */
public class UpwardSequenceIterator<S extends Sequencer<S,B>,B extends ButtonManager<B>> implements SequenceIterator<S,B>
{
    /**
     * Constructs an upward sequence iterator.
     */
    public UpwardSequenceIterator()
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
        return (sequencer.getActiveStepNumberInSequence()+1)%sequencer.getStepsNumberInSequence();
    }
}