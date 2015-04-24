package sky.monome.sequence;

import sky.monome.event.button.ButtonManager;
import sky.monome.sequencer.Sequencer;

/**
 * Iterator over a sequencer's sequence which progresses alternatively upwardly and backwardly in the sequence (ping-pong effect).
 * @param <S> Type of sequencers that use these sequence iterators.
 * @param <B> Type of button managers used by the sequencers that use these sequence iterators.
 * @author PJ Skyman
 */
public class UpwardAndBackwardSequenceIterator<S extends Sequencer<S,B>,B extends ButtonManager<B>> implements SequenceIterator<S,B>
{
    /**
     * Indicates whether the iterator is currently progressing upwardly or backwardly.
     */
    protected boolean upward;

    /**
     * Constructs an upward and backward sequence iterator.
     */
    public UpwardAndBackwardSequenceIterator()
    {
        upward=true;
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
        if(upward&&sequencer.getActiveStepNumberInSequence()==sequencer.getStepsNumberInSequence()-1)
            upward=false;
        if(!upward&&sequencer.getActiveStepNumberInSequence()==0)
            upward=true;
        return sequencer.getActiveStepNumberInSequence()+(upward?1:-1);
    }
}