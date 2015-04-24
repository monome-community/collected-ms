package sky.monome.sequence;

import java.util.Random;
import sky.monome.event.button.ButtonManager;
import sky.monome.sequencer.Sequencer;

/**
 * Iterator over a sequencer's sequence which progresses randomly in the sequence.
 * @param <S> Type of sequencers that use these sequence iterators.
 * @param <B> Type of button managers used by the sequencers that use these sequence iterators.
 * @author PJ Skyman
 * @since SkyMonome v1.1
 */
public class RandomSequenceIterator<S extends Sequencer<S,B>,B extends ButtonManager<B>> implements SequenceIterator<S,B>
{
    /**
     * Generator of pseudo-random numbers.
     */
    private final Random random;

    /**
     * Constructs a random sequence iterator.
     */
    public RandomSequenceIterator()
    {
        random=new Random();
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
        return random.nextInt(sequencer.getStepsNumberInSequence());
    }
}