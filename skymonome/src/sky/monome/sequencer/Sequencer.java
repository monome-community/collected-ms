package sky.monome.sequencer;

import sky.monome.event.button.ButtonManager;
import sky.monome.event.sequencer.SequencerComponent;
import sky.monome.exception.MonomeException;
import sky.monome.sequence.SequenceIterator;

/**
 * Complete sequencer that can run sequences.
 * @param <S> Type of sequencers that implement this interface.
 * @param <B> Type of button managers used by the sequencers that implement this interface.
 * @author PJ Skyman
 */
public interface Sequencer<S extends Sequencer<S,B>,B extends ButtonManager<B>> extends SequencerComponent<S,B>
{
    /**
     * Time duration of the sequencer effect (short lightning that symbolizes
     * the activation of a new step in the sequence), in milliseconds.
     * Since SkyMonome v1.3, sequencers should use this value by default,
     * but the user can change it by calling
     * {@link #setSequencerEffectTime(long) setSequencerEffectTime(long)}
     * method.
     */
    public static final long SEQUENCER_EFFECT_TIME=20L;

    /**
     * Returns the sequencer effect time, in milliseconds.
     * The sequencer effect is the short lightning that symbolizes the
     * activation of a new step in the sequence.
     * @return The sequencer effect time, in milliseconds.
     * @since SkyMonome v1.3
     */
    public long getSequencerEffectTime();

    /**
     * Modifies the sequencer effect time, in milliseconds.
     * The sequencer effect is the short lightning that symbolizes the
     * activation of a new step in the sequence.
     * @param sequencerEffectTime New sequencer effect time, in milliseconds.
     * Please note that if this new time exceeds the time between two
     * consecutive steps, so you may meet erratic behaviors.
     * @since SkyMonome v1.3
     */
    public void setSequencerEffectTime(long sequencerEffectTime);

    /**
     * Returns the sequencer engine that is used by this sequencer.
     * @return The sequencer engine that is used by this sequencer.
     * @since SkyMonome v1.3
     */
    public SequencerEngine<S,B> getSequencerEngine();

    /**
     * Returns the number of steps in the sequence.
     * @return The number of steps in the sequence.
     */
    public int getStepsNumberInSequence();

    /**
     * Returns the maximum possible number of steps in the sequence.
     * @return The maximum possible number of steps in the sequence.
     * @since SkyMonome v1.1
     */
    public int getMaximumStepsNumberInSequence();

    /**
     * Returns the number of the active step in the sequence.
     * @return The number of the active step in the sequence.
     */
    public int getActiveStepNumberInSequence();

    /**
     * Returns the number of available notes by step in the sequence.
     * @return The number of available notes by step in the sequence.
     * @since SkyMonome v1.1
     */
    public int getNotesNumberByStep();

    /**
     * Modifies the number of steps to iterate over the sequence.
     * @param stepsNumber New number of steps to iterate over the sequence.
     * @throws sky.monome.exception.MonomeException When the new steps number is incorrect for this sequencer.
     */
    public void setStepsNumber(int stepsNumber) throws MonomeException;

    /**
     * Invoked when this sequencer must iterate over the sequence.
     * @param sequencerEngine Sequencer engine that called this method.
     * @throws sky.monome.exception.MonomeException When a problem occurs in the iteration over the sequence.
     */
    public void sequencingAction(SequencerEngine<S,B> sequencerEngine) throws MonomeException;

    /**
     * Returns the sequence iterator used by this sequencer.
     * @return The sequence iterator used by this sequencer.
     * @since SkyMonome v1.1
     */
    public SequenceIterator<S,B> getSequenceIterator();

    /**
     * Sets the sequence iterator used by this sequencer.
     * @param sequenceIterator New sequence iterator to use in this sequencer.
     * @since SkyMonome v1.1
     */
    public void setSequenceIterator(SequenceIterator<S,B> sequenceIterator);

    /**
     * Orientation of the sequencer.
     */
    public static enum SequencerOrientation
    {
        /**
         * Denotes a sequencer which have time along the X-axis.
         */
        X_FOR_TIME_Y_FOR_ANYTHING,
        /**
         * Denotes a sequencer which have time along the Y-axis.
         */
        X_FOR_ANYTHING_Y_FOR_TIME;
    }
}