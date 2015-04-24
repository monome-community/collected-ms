package sky.monome.util.scale;

/**
 * Midi note. This kind of note can return its Midi number.
 * Note that Midi notes are immutable.
 * @author PJ Skyman
 * @since SkyMonome v1.1
 */
public final class MidiNote implements Comparable<MidiNote>
{
    /**
     * Octave note.
     */
    private final Note note;
    /**
     * Number of the octave.
     */
    private final int octave;
    /**
     * Constant for the minimum possible note with the Midi protocol. Its Midi number is {@code 0}.
     */
    public static final MidiNote C_1=new MidiNote(Note.C,-1);
    /**
     * Constant for the default note with the Midi protocol.
     */
    public static final MidiNote C4=new MidiNote(Note.C,4);
    /**
     * Constant for the maximum possible note with the Midi protocol. Its Midi number is {@code 127}.
     */
    public static final MidiNote G9=new MidiNote(Note.G,9);

    /**
     * Constructs a Midi note with the specified octave note and the specified octave number.
     * @param note Octave note.
     * @param octave Number of the octave.
     */
    public MidiNote(Note note,int octave)
    {
        this.note=note;
        this.octave=octave;
    }

    /**
     * Returns the octave note of this Midi note.
     * @return The octave note of this Midi note.
     */
    public Note getNote()
    {
        return note;
    }

    /**
     * Returns the number of the octave of this Midi note.
     * @return The number of the octave of this Midi note.
     */
    public int getOctave()
    {
        return octave;
    }

    /**
     * Returns the note number of this Midi note in the Midi protocol.
     * @return The note number of this Midi note in the Midi protocol.
     */
    public int getMidiNoteNumber()
    {
        if(octave<-1||octave>9||octave==9&&note.compareTo(Note.G)>0)
            return -1;
        else
            return (octave+1)*12+note.getNumberInOctave();
    }

    /**
     * Returns the Midi note which is the result of the specified offset applied on this Midi note.
     * @param offset Offset to apply to this Midi note.
     * @return The Midi note which is the result of the specified offset applied on this Midi note.
     */
    public MidiNote getOffsettedNote(int offset)
    {
        if(offset==0)
            return this;
        else
            if(offset>0)
                return new MidiNote(note.getOffsettedNote(offset),octave+offset/12+(offset%12>(11-note.getNumberInOctave())?1:0));
            else
                return new MidiNote(note.getOffsettedNote(offset),octave-(-offset)/12-((-offset)%12>note.getNumberInOctave()?1:0));
    }

    /**
     * Returns a string representation of this Midi note.
     * @return A string representation of this Midi note.
     */
    @Override
    public String toString()
    {
        return note+"("+octave+")";
    }

    /**
     * Compares this Midi note to the specified Midi note.
     * @param o Midi note to compare with.
     * @return A negative integer when this Midi note is inferior to the specified Midi note,
     * a positive integer when this Midi note is superior to the specified Midi note,
     * {@code 0} when this Midi note is equivalent to the specified Midi note.
     */
    public int compareTo(MidiNote o)
    {
        return this.getMidiNoteNumber()-o.getMidiNoteNumber();
    }

    /**
     * Says if this Midi note is equal to the specified object.
     * @param o Object to compare with.
     * @return Always {@code false} if the specified object is in a wrong type.
     * Otherwise, returns {@code true} if and only if the two Midi notes have the same octave note and the same octave number.
     */
    @Override
    public boolean equals(Object o)
    {
        if(!(o instanceof MidiNote))
            return false;
        MidiNote midiNote=(MidiNote)o;
        return getNote().equals(midiNote.getNote())&&getOctave()==midiNote.getOctave();
    }

    /**
     * Returns the hashcode of this Midi note.
     * @return The hashcode of this Midi note.
     */
    @Override
    public int hashCode()
    {
        return super.hashCode();
    }

    /**
     * Octave note.
     * @author PJ Skyman
     * @since SkyMonome v1.1
     */
    public static enum Note
    {
        /**
         * Denotes that this octave note is not a note (<u>N</u>ot <u>a</u> <u>N</u>ote).
         */
        NaN,
        /**
         * Denotes a C note.
         */
        C,
        /**
         * Denotes a C# note.
         */
        C_SHARP,
        /**
         * Denotes a Db note.
         */
        D_FLAT,
        /**
         * Denotes a D note.
         */
        D,
        /**
         * Denotes a D# note.
         */
        D_SHARP,
        /**
         * Denotes a Eb note.
         */
        E_FLAT,
        /**
         * Denotes a E note.
         */
        E,
        /**
         * Denotes a F note.
         */
        F,
        /**
         * Denotes a F# note.
         */
        F_SHARP,
        /**
         * Denotes a Gb note.
         */
        G_FLAT,
        /**
         * Denotes a G note.
         */
        G,
        /**
         * Denotes a G# note.
         */
        G_SHARP,
        /**
         * Denotes a Ab note.
         */
        A_FLAT,
        /**
         * Denotes a A note.
         */
        A,
        /**
         * Denotes a A# note.
         */
        A_SHARP,
        /**
         * Denotes a Bb note.
         */
        B_FLAT,
        /**
         * Denotes a B note.
         */
        B;

    /**
     * Returns the Midi note which is the result of the specified offset applied on this Midi note.
     * @param offset Offset to apply to this Midi note.
     * @return The Midi note which is the result of the specified offset applied on this Midi note.
     */
        /**
         * Returns the octave note which is the result of the specified offset applied on this octave note.
         * @param offset Offset to apply to this octave note.
         * @return The octave note which is the result of the specified offset applied on this octave note.
         */
        public Note getOffsettedNote(int offset)
        {
            if(offset==0)
                return this;
            else
            {
                Note note=this;
                if(offset>0)
                {
                    while(--offset>=0)
                        note=note.getNextSemitone();
                    return note;
                }
                else
                {
                    while(++offset<=0)
                        note=note.getPreviousSemitone();
                    return note;
                }
            }
        }

        /**
         * Returns the rank in the octave of this octave note.
         * @return The rank in the octave of this octave note.
         */
        public int getNumberInOctave()
        {
            if(this==C)
                return 0;
            else
                if(this==C_SHARP||this==D_FLAT)
                    return 1;
                else
                    if(this==D)
                        return 2;
                    else
                        if(this==D_SHARP||this==E_FLAT)
                            return 3;
                        else
                            if(this==E)
                                return 4;
                            else
                                if(this==F)
                                    return 5;
                                else
                                    if(this==F_SHARP||this==G_FLAT)
                                        return 6;
                                    else
                                        if(this==G)
                                            return 7;
                                        else
                                            if(this==G_SHARP||this==A_FLAT)
                                                return 8;
                                            else
                                                if(this==A)
                                                    return 9;
                                                else
                                                    if(this==A_SHARP||this==B_FLAT)
                                                        return 10;
                                                    else
                                                        if(this==B)
                                                            return 11;
                                                        else
                                                            return -1;
        }

        /**
         * Returns the octave note which represents the next semitone after this octave note.
         * @return The octave note which represents the next semitone after this octave note.
         */
        public Note getNextSemitone()
        {
            if(this==C)
                return C_SHARP;
            else
                if(this==C_SHARP||this==D_FLAT)
                    return D;
                else
                    if(this==D)
                        return D_SHARP;
                    else
                        if(this==D_SHARP||this==E_FLAT)
                            return E;
                        else
                            if(this==E)
                                return F;
                            else
                                if(this==F)
                                    return F_SHARP;
                                else
                                    if(this==F_SHARP||this==G_FLAT)
                                        return G;
                                    else
                                        if(this==G)
                                            return G_SHARP;
                                        else
                                            if(this==G_SHARP||this==A_FLAT)
                                                return A;
                                            else
                                                if(this==A)
                                                    return A_SHARP;
                                                else
                                                    if(this==A_SHARP||this==B_FLAT)
                                                        return B;
                                                    else
                                                        if(this==B)
                                                            return C;
                                                        else
                                                            return NaN;
        }

        /**
         * Returns the octave note which represents the previous semitone before this octave note.
         * @return The octave note which represents the previous semitone before this octave note.
         */
        public Note getPreviousSemitone()
        {
            if(this==C)
                return B;
            else
                if(this==C_SHARP||this==D_FLAT)
                    return C;
                else
                    if(this==D)
                        return C_SHARP;
                    else
                        if(this==D_SHARP||this==E_FLAT)
                            return D;
                        else
                            if(this==E)
                                return D_SHARP;
                            else
                                if(this==F)
                                    return E;
                                else
                                    if(this==F_SHARP||this==G_FLAT)
                                        return F;
                                    else
                                        if(this==G)
                                            return F_SHARP;
                                        else
                                            if(this==G_SHARP||this==A_FLAT)
                                                return G;
                                            else
                                                if(this==A)
                                                    return G_SHARP;
                                                else
                                                    if(this==A_SHARP||this==B_FLAT)
                                                        return A;
                                                    else
                                                        if(this==B)
                                                            return A_SHARP;
                                                        else
                                                            return NaN;
        }

        /**
         * Returns the octave note which represents the next tone after this octave note.
         * @return The octave note which represents the next tone after this octave note.
         */
        public Note getNextTone()
        {
            if(this==C)
                return D;
            else
                if(this==C_SHARP||this==D_FLAT)
                    return D_SHARP;
                else
                    if(this==D)
                        return E;
                    else
                        if(this==D_SHARP||this==E_FLAT)
                            return F_SHARP;
                        else
                            if(this==E)
                                return F;
                            else
                                if(this==F)
                                    return G;
                                else
                                    if(this==F_SHARP||this==G_FLAT)
                                        return G_SHARP;
                                    else
                                        if(this==G)
                                            return A;
                                        else
                                            if(this==G_SHARP||this==A_FLAT)
                                                return A_SHARP;
                                            else
                                                if(this==A)
                                                    return B;
                                                else
                                                    if(this==A_SHARP||this==B_FLAT)
                                                        return C_SHARP;
                                                    else
                                                        if(this==B)
                                                            return C;
                                                        else
                                                            return NaN;
        }

        /**
         * Returns the octave note which represents the previous tone before this octave note.
         * @return The octave note which represents the previous tone before this octave note.
         */
        public Note getPreviousTone()
        {
            if(this==C)
                return B;
            else
                if(this==C_SHARP||this==D_FLAT)
                    return A_SHARP;
                else
                    if(this==D)
                        return C;
                    else
                        if(this==D_SHARP||this==E_FLAT)
                            return C_SHARP;
                        else
                            if(this==E)
                                return D;
                            else
                                if(this==F)
                                    return E;
                                else
                                    if(this==F_SHARP||this==G_FLAT)
                                        return D_SHARP;
                                    else
                                        if(this==G)
                                            return F;
                                        else
                                            if(this==G_SHARP||this==A_FLAT)
                                                return F_SHARP;
                                            else
                                                if(this==A)
                                                    return G;
                                                else
                                                    if(this==A_SHARP||this==B_FLAT)
                                                        return G_SHARP;
                                                    else
                                                        if(this==B)
                                                            return A;
                                                        else
                                                            return NaN;
        }
    }
}
