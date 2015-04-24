package sky.monome.event.sequencer;

import sky.monome.event.button.ButtonManager;
import sky.monome.sequencer.Sequencer;
import sky.monome.util.scale.MidiNote;
import sky.monome.util.scale.Scale;

/**
 * Note player listener. This is a special implementation of the {@link sky.monome.event.sequencer.SequencerListener SequencerListener}
 * interface that is specialized in scale playing. Implementations of this abstract class can play notes via Midi or any other medium.
 * @author PJ Skyman
 * @param <S> Type of sequencers that work with these note player listeners.
 * @param <B> Type of button managers that are used by sequencer components that work with these note player listeners.
 * @since SkyMonome v1.1
 */
public abstract class NotePlayerListener<S extends Sequencer<S,B>,B extends ButtonManager<B>> extends SequencerListenerWithArguments<S,B>
{
    /**
     * Scale played by this note player listener.
     */
    private Scale scale;
    /**
     * Base note of the scale to be played.
     */
    private MidiNote baseNote;
    /**
     * Associated sequencer.
     */
    private S sequencer;
    /**
     * Player mode used by this note player listener.
     */
    private PlayerMode playerMode;
    /**
     * Array of notes to be played.
     */
    private MidiNote[] scaleNotes;
    /**
     * Lock object used internally for exclusive operations.
     */
    private final Object lock;

    /**
     * Constructs a note player listener with the specified scale, the specified base note, the specified sequencer,
     * the specified player mode, and specified arguments.
     * @param scale Scale to be played.
     * @param baseNote Note which is the first note of the scale.
     * @param sequencer Sequencer which triggers note playings.
     * @param playerMode Player mode used by this note player listener.
     * @param arguments Arguments which can be used in the {@link #playNote(sky.monome.util.scale.MidiNote) playNote(MidiNote)} method.
     * These arguments are optional. The presence of these arguments is due to this class which extends
     * {@link sky.monome.event.sequencer.SequencerListenerWithArguments SeqencerListenerWithArguments}.
     */
    public NotePlayerListener(Scale scale,MidiNote baseNote,S sequencer,PlayerMode playerMode,Object... arguments)
    {
        super(arguments);
        lock=new Object();
        this.scale=scale;
        this.baseNote=baseNote;
        this.sequencer=sequencer;
        this.playerMode=playerMode;
        initScale();
    }

    /**
     * Initializes the array of notes to be played.
     */
    private void initScale()
    {
        scaleNotes=scale.getScale(baseNote,playerMode.getMaximumValueForPropertyOfInterest(sequencer));
    }

    /**
     * Returns the base note of the played scale.
     * @return The base note of the played scale.
     */
    public MidiNote getBaseNote()
    {
        return baseNote;
    }

    /**
     * Sets the base note of the played scale.
     * @param baseNote New base note for the scale to be played.
     */
    public void setBaseNote(MidiNote baseNote)
    {
        synchronized(lock)
        {
            this.baseNote=baseNote;
            initScale();
        }
    }

    /**
     * Returns the player mode used by this note player listener.
     * @return The player mode used by this note player listener.
     */
    public PlayerMode getPlayerMode()
    {
        return playerMode;
    }

    /**
     * Sets the player mode to use in this note player listener.
     * @param playerMode New player mode to use.
     */
    public void setPlayerMode(PlayerMode playerMode)
    {
        synchronized(lock)
        {
            this.playerMode=playerMode;
            initScale();
        }
    }

    /**
     * Returns the scale played by this note player listener.
     * @return The scale played by this note player listener.
     */
    public Scale getScale()
    {
        return scale;
    }

    /**
     * Sets the scale to be played by this note player listener.
     * @param scale New scale to be played.
     */
    public void setScale(Scale scale)
    {
        synchronized(lock)
        {
            this.scale=scale;
            initScale();
        }
    }

    /**
     * Returns the sequencer that triggers note playings.
     * @return The sequencer that triggers note playings.
     */
    public S getSequencer()
    {
        return sequencer;
    }

    /**
     * Sets the sequencer that triggers note playings.
     * @param sequencer New sequencer that triggers note playings.
     */
    public void setSequencer(S sequencer)
    {
        synchronized(lock)
        {
            this.sequencer=sequencer;
            initScale();
        }
    }

    /**
     * Invoked when a step changing occurs.
     * This implementation calculates the note to play, and calls the
     * {@link #playNote(sky.monome.util.scale.MidiNote) playNote(MidiNote)} method.
     * @param sequencerEvent Informations about the sequencer event.
     */
    public void stepChanged(SequencerEvent<S,B> sequencerEvent)
    {
        synchronized(lock)
        {
            playNote(scaleNotes[playerMode.getPropertyOfInterest(sequencerEvent)]);
        }
    }

    /**
     * Plays the specified note.
     * @param midiNote Midi note to play.
     */
    public abstract void playNote(MidiNote midiNote);

    /**
     * Player mode used by note player listeners.
     */
    public static enum PlayerMode
    {
        /**
         * Denotes the player mode that takes the number of the currently active step to choose the note to play in the scale.
         */
        PLAY_WITH_STEP_NUMBER
        {
            public int getPropertyOfInterest(SequencerEvent<?,?> sequencerEvent)
            {
                return sequencerEvent.getActiveStepNumber();
            }

            public int getMaximumValueForPropertyOfInterest(Sequencer<?,?> sequencer)
            {
                return sequencer.getMaximumStepsNumberInSequence();
            }
        },
        /**
         * Denotes the player mode that takes the number of the currently active note rank in the currently active step
         * to choose the note to play in the scale.
         */
        PLAY_WITH_NOTE_NUMBER_IN_STEP
        {
            public int getPropertyOfInterest(SequencerEvent<?,?> sequencerEvent)
            {
                return sequencerEvent.getActiveNote();
            }

            public int getMaximumValueForPropertyOfInterest(Sequencer<?,?> sequencer)
            {
                return sequencer.getNotesNumberByStep();
            }
        };

        /**
         * Returns the property of interest in the specified sequencer event.
         * @param sequencerEvent Sequencer event to extract the property of interest.
         * @return The property of interest in the specified sequencer event.
         * @since SkyMonome v1.2
         */
        public abstract int getPropertyOfInterest(SequencerEvent<?,?> sequencerEvent);

        /**
         * Returns the maximum value for the property of interest in the specified sequencer.
         * @param sequencer Sequencer to extract the maximum value for the property of interest.
         * @return The maximum value for the property of interest in the specified sequencer.
         * @since SkyMonome v1.2
         */
        public abstract int getMaximumValueForPropertyOfInterest(Sequencer<?,?> sequencer);
    }
}