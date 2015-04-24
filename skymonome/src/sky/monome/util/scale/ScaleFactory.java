package sky.monome.util.scale;

import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;

/**
 * Scale factory. This ininstanciable class is only a set of convenience methods to create various common musical scales.
 * @author PJ Skyman
 * @since SkyMonome v1.1
 */
public final class ScaleFactory
{
    /**
     * A comparator for scales that will sort scales alphabetically.
     * @since SkyMonome v1.2
     */
    public static final Comparator<Scale> NAME_COMPARATOR=new Comparator<Scale>()
    {
        public int compare(Scale o1,Scale o2)
        {
            return o1.toString().compareTo(o2.toString());
        }
    };
    /**
     * A comparator for scales that will sort scales by notes number in octave.
     * @since SkyMonome v1.2
     */
    public static final Comparator<Scale> NOTES_NUMBER_IN_OCTAVE_COMPARATOR=new Comparator<Scale>()
    {
        public int compare(Scale o1,Scale o2)
        {
            return o2.getNotesNumberInOctave()-o1.getNotesNumberInOctave();
        }
    };
    /**
     * A comparator for scales that will sort scales by interval sum.
     * @since SkyMonome v1.2
     */
    public static final Comparator<Scale> INTERVAL_SUM_COMPARATOR=new Comparator<Scale>()
    {
        public int compare(Scale o1,Scale o2)
        {
            return o2.getIntervalsSum()-o1.getIntervalsSum();
        }
    };

    /**
     * Constructs a scale factory.
     * This constructor need not to be called.
     */
    private ScaleFactory()
    {
    }

    /**
     * Returns a major scale.
     * @return A major scale.
     */
    public static Scale createMajorScale()
    {
        return new Scale()
        {
            public int[] getScaleOffsets()
            {
                return new int[]{2,2,1,2,2,2,1};
            }

            public String toString()
            {
                return "Major scale";
            }
        };
    }

    /**
     * Returns a minor scale.
     * @return A minor scale.
     */
    public static Scale createMinorScale()
    {
        return new Scale()
        {
            public int[] getScaleOffsets()
            {
                return new int[]{2,1,2,2,1,2,2};
            }

            public String toString()
            {
                return "Minor scale";
            }
        };
    }

    /**
     * Returns a harmonic minor scale.
     * @return A harmonic minor scale.
     */
    public static Scale createHarmonicMinorScale()
    {
        return new Scale()
        {
            public int[] getScaleOffsets()
            {
                return new int[]{2,1,2,2,1,3,1};
            }

            public String toString()
            {
                return "Harmonic minor scale";
            }
        };
    }

    /**
     * Returns a melodic minor scale.
     * @return A melodic minor scale.
     */
    public static Scale createMelodicMinorScale()
    {
        return new Scale()
        {
            public int[] getScaleOffsets()
            {
                return new int[]{2,1,2,2,2,2,1};
            }

            public String toString()
            {
                return "Melodic minor scale";
            }
        };
    }

    /**
     * Returns a major pentatonic scale.
     * @return A major pentatonic scale.
     */
    public static Scale createMajorPentatonicScale()
    {
        return new Scale()
        {
            public int[] getScaleOffsets()
            {
                return new int[]{2,2,3,2,3};
            }

            public String toString()
            {
                return "Major pentatonic scale";
            }
        };
    }

    /**
     * Returns a minor pentatonic scale.
     * @return A minor pentatonic scale.
     */
    public static Scale createMinorPentatonicScale()
    {
        return new Scale()
        {
            public int[] getScaleOffsets()
            {
                return new int[]{3,2,2,3,2};
            }

            public String toString()
            {
                return "Minor pentatonic scale";
            }
        };
    }

    /**
     * Returns a blues pentatonic scale.
     * @return A blues pentatonic scale.
     */
    public static Scale createBluesPentatonicScale()
    {
        return new Scale()
        {
            public int[] getScaleOffsets()
            {
                return new int[]{3,2,1,1,3,2};
            }

            public String toString()
            {
                return "Blues pentatonic scale";
            }
        };
    }

    /**
     * Returns an ionian scale.
     * @return An ionian scale.
     */
    public static Scale createIonianScale()
    {
        return new Scale()
        {
            public int[] getScaleOffsets()
            {
                return new int[]{2,2,1,2,2,2,1};
            }

            public String toString()
            {
                return "Ionian scale";
            }
        };
    }

    /**
     * Returns an aeolian scale.
     * @return An aeolian scale.
     */
    public static Scale createAeolianScale()
    {
        return new Scale()
        {
            public int[] getScaleOffsets()
            {
                return new int[]{2,1,2,2,1,2,2};
            }

            public String toString()
            {
                return "Aeolian scale";
            }
        };
    }

    /**
     * Returns a dorian scale.
     * @return A dorian scale.
     */
    public static Scale createDorianScale()
    {
        return new Scale()
        {
            public int[] getScaleOffsets()
            {
                return new int[]{2,1,2,2,2,1,2};
            }

            public String toString()
            {
                return "Dorian scale";
            }
        };
    }

    /**
     * Returns a mixolydian scale.
     * @return A mixolydian scale.
     */
    public static Scale createMixolydianScale()
    {
        return new Scale()
        {
            public int[] getScaleOffsets()
            {
                return new int[]{2,2,1,2,2,1,2};
            }

            public String toString()
            {
                return "Mixolydian scale";
            }
        };
    }

    /**
     * Returns a phrygian scale.
     * @return A phrygian scale.
     */
    public static Scale createPhrygianScale()
    {
        return new Scale()
        {
            public int[] getScaleOffsets()
            {
                return new int[]{1,2,2,2,1,2,2};
            }

            public String toString()
            {
                return "Phrygian scale";
            }
        };
    }

    /**
     * Returns a lydian scale.
     * @return A lydian scale.
     */
    public static Scale createLydianScale()
    {
        return new Scale()
        {
            public int[] getScaleOffsets()
            {
                return new int[]{2,2,2,1,2,2,1};
            }

            public String toString()
            {
                return "Lydian scale";
            }
        };
    }

    /**
     * Returns a locrian scale.
     * @return A locrian scale.
     */
    public static Scale createLocrianScale()
    {
        return new Scale()
        {
            public int[] getScaleOffsets()
            {
                return new int[]{1,2,2,1,2,2,2};
            }

            public String toString()
            {
                return "Locrian scale";
            }
        };
    }

    /**
     * Returns a blues scale.
     * @return A blues scale.
     */
    public static Scale createBluesScale()
    {
        return new Scale()
        {
            public int[] getScaleOffsets()
            {
                return new int[]{3,2,1,1,3,2};
            }

            public String toString()
            {
                return "Blues scale";
            }
        };
    }

    /**
     * Returns a diatonic scale.
     * @return A diatonic scale.
     */
    public static Scale createDiatonicScale()
    {
        return new Scale()
        {
            public int[] getScaleOffsets()
            {
                return new int[]{2,2,3,2,3};
            }

            public String toString()
            {
                return "Diatonic scale";
            }
        };
    }

    /**
     * Returns an array of all existing scales sorted in an
     * arbitrary order.
     * The returned array is dynamically calculated by reflection.
     * @return An array of all existing scales.
     * @since SkyMonome v1.2
     */
    public static Scale[] getAllScales()
    {
        ArrayList<Method> methods=new ArrayList<Method>();
        for(Method method:ScaleFactory.class.getDeclaredMethods())
            if(method.getName().startsWith("create")&&method.getParameterTypes().length==0&&method.getReturnType().equals(Scale.class)&&Modifier.isStatic(method.getModifiers())&&Modifier.isPublic(method.getModifiers()))
                methods.add(method);
        Scale[] scales=new Scale[methods.size()];
        for(int i=0;i<scales.length;i++)
            try
            {
                scales[i]=(Scale)methods.get(i).invoke(null);
            }
            catch(Exception e)
            {
            }
        return scales;
    }

    /**
     * Returns a sorted array of all existing scales.
     * The order of the scales in the returned array is defined
     * by specified comparators (you can specify just one comparator).
     * Note that the last comparator is the last applied. So if you need
     * to sort by notes number in octave and then alphabetically for those
     * that have the same notes number, you must specify
     * firstly the comparator for names (the least important), and secondly the comparator
     * for notes numbers in octave (the most important).
     * @param comparators Comparators of scales that will sort scales
     * in the returned array.
     * @return A sorted array of all existing scales.
     * @since SkyMonome v1.2
     */
    public static Scale[] getAllScales(Comparator<? super Scale>... comparators)
    {
        Scale[] scales=getAllScales();
        for(Comparator<? super Scale> comparator:comparators)
            Arrays.sort(scales,comparator);
        return scales;
    }
}