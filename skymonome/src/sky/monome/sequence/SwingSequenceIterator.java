package sky.monome.sequence;

import sky.monome.event.button.ButtonManager;
import sky.monome.sequencer.Sequencer;

/**
 * Iterator over a sequencer's sequence which progresses with a kind of "swing".
 * It goes two steps positively and one step negatively.
 * @author PJ Skyman
 * @param <S> Type of sequencers that use these sequence iterators.
 * @param <B> Type of button managers used by the sequencers that use these sequence iterators.
 * @since SkyMonome v1.1
 */
public class SwingSequenceIterator<S extends Sequencer<S,B>,B extends ButtonManager<B>> implements SequenceIterator<S,B>
{
    /**
     * Indicates whether the iterator is currently progressing upwardly or backwardly.
     */
    protected boolean upward;

    /**
     * Constructs a swing sequence iterator.
     */
    public SwingSequenceIterator()
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
        int currentStep=sequencer.getActiveStepNumberInSequence();
        if(upward)
        {
            currentStep=(currentStep+2)%sequencer.getStepsNumberInSequence();
            upward=false;
        }
        else
        {
            currentStep=(currentStep-1+sequencer.getStepsNumberInSequence())%sequencer.getStepsNumberInSequence();
            upward=true;
        }
        return currentStep;
    }
}