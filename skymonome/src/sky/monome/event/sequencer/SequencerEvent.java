package sky.monome.event.sequencer;

import sky.monome.event.GenericEvent;
import sky.monome.event.button.ButtonManager;

/**
 * Sequencer event's information object.
 * Sequencer events are triggered by {@link sky.monome.event.sequencer.SequencerComponent SequencerComponent} objects.
 * @param <S> Type of sequencer components that use these sequencer events.
 * @param <B> Type of button managers that are used by sequencer components that use these sequencer events.
 * @author PJ Skyman
 */
public class SequencerEvent<S extends SequencerComponent<S,B>,B extends ButtonManager<B>> extends GenericEvent<S>
{
    /**
     * Number of the currently active step.
     */
    protected final int activeStepNumber;
    /**
     * Note currently activated by the sequencer.
     */
    protected final int activeNote;

    /**
     * Constructs a sequencer event with the specified time, source, active step number and active note.
     * @param when Time of this event, in milliseconds since the time zero in the Unix world.
     * @param source Source of this event. {@link sky.monome.event.sequencer.SequencerComponent SequencerComponent} objects are sources for sequencer events.
     * @param activeStepNumber Number of the currently active step.
     * @param activeNote Note currently activated by the sequencer. This value is the index of the note. First is 0.
     */
    public SequencerEvent(long when,S source,int activeStepNumber,int activeNote)
    {
        super(when,source);
        this.activeStepNumber=activeStepNumber;
        this.activeNote=activeNote;
    }

    /**
     * Returns the number of the currently active step.
     * @return The number of the currently active step.
     */
    public int getActiveStepNumber()
    {
        return activeStepNumber;
    }

    /**
     * Returns the note currently activated by the sequencer. This value is the index of the note. First is 0.
     * @return The note currently activated by the sequencer.
     */
    public int getActiveNote()
    {
        return activeNote;
    }
}