package sky.monome.util.scale;

/**
 * Musical scale of notes.
 * @author PJ Skyman
 * @since SkyMonome v1.1
 */
public abstract class Scale
{
    /**
     * Constructs a scale.
     */
    public Scale()
    {
    }

    /**
     * Returns an array of Midi notes that represent this scale.
     * This array is built with the specified base Midi note and the specified size.
     * @param baseNote Base note of the returned array.
     * @param size Size of the returned array.
     * @return An array of Midi notes that represent this scale.
     */
    public MidiNote[] getScale(MidiNote baseNote,int size)
    {
        MidiNote[] midiNotes=new MidiNote[size];
        int[] scaleOffsets=getScaleOffsets();
        midiNotes[0]=baseNote;
        for(int i=1;i<midiNotes.length;i++)
            midiNotes[i]=midiNotes[i-1].getOffsettedNote(scaleOffsets[(i-1)%scaleOffsets.length]);
        return midiNotes;
    }

    /**
     * Returns the number of notes composing this scale.
     * @return The number of notes composing this scale.
     */
    public int getNotesNumberInOctave()
    {
        return getScaleOffsets().length;
    }

    /**
     * Returns the sum of all intervals composing this scale.
     * If this method returns {@code 12}, so this scale is a standard scale of one octave.
     * @return The sum of all intervals composing this scale.
     */
    public int getIntervalsSum()
    {
        int count=0;
        int[] scaleOffsets=getScaleOffsets();
        for(int i=0;i<scaleOffsets.length;i++)
            count+=scaleOffsets[i];
        return count;
    }

    /**
     * Returns an array of all intervals composing this scale.
     * @return An array of all intervals composing this scale.
     */
    public abstract int[] getScaleOffsets();

    /**
     * Returns a string representation of this scale.
     * @return A string representation of this scale.
     */
    public abstract String toString();
}