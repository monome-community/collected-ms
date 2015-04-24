package sky.monome.sequence;

import java.util.Random;
import sky.monome.event.button.ButtonManager;
import sky.monome.sequencer.Sequencer;

/**
 * Iterator over a sequencer's sequence which progresses in the sequence with a randomly choosen direction at each step.
 * @param <S> Type of sequencers that use these sequence iterators.
 * @param <B> Type of button managers used by the sequencers that use these sequence iterators.
 * @author PJ Skyman
 * @since SkyMonome v1.1
 */
public class RandomOffsetSequenceIterator<S extends Sequencer<S,B>,B extends ButtonManager<B>> implements SequenceIterator<S,B>
{
    /**
     * Generator of pseudo-random numbers.
     */
    private final Random random;
    /**
     * Type of generated random offsets.
     */
    private final RandomOffsetType randomOffsetType;

    /**
     * Constructs a random offset sequence iterator with the default type of generated random offsets
     * {@link sky.monome.sequence.RandomOffsetSequenceIterator.RandomOffsetType#UPWARD_BACKWARD_OR_NOTHING RandomOffsetType.UPWARD_BACKWARD_OR_NOTHING}.
     */
    public RandomOffsetSequenceIterator()
    {
        this(RandomOffsetType.UPWARD_BACKWARD_OR_NOTHING);
    }

    /**
     * Constructs a random offset sequence iterator with the specified type of generated random offsets.
     * @param randomOffsetType Type of generated random offsets.
     */
    public RandomOffsetSequenceIterator(RandomOffsetType randomOffsetType)
    {
        random=new Random();
        this.randomOffsetType=randomOffsetType;
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
        int offset;
        if(randomOffsetType==RandomOffsetType.UPWARD_BACKWARD_OR_NOTHING)
            offset=random.nextInt(3)-1;
        else
            offset=random.nextBoolean()?1:-1;
        return (sequencer.getActiveStepNumberInSequence()+offset+sequencer.getStepsNumberInSequence())%sequencer.getStepsNumberInSequence();
    }

    /**
     * Type of generated random offsets.
     * @author PJ Skyman
     * @since SkyMonome v1.1
     */
    public static enum RandomOffsetType
    {
        /**
         * Denotes the type that gives offsets of -1, 0 or 1 while iterating.
         */
        UPWARD_BACKWARD_OR_NOTHING,
        /**
         * Denotes the type that gives offsets of -1 or 1 while iterating.
         */
        UPWARD_OR_BACKWARD
    }
}