package sky.monome.sequence.factory;

import java.lang.reflect.Constructor;
import sky.monome.event.button.ButtonManager;
import sky.monome.exception.MonomeException;
import sky.monome.sequence.SequenceIterator;
import sky.monome.sequencer.Sequencer;

/**
 * Generic sequence iterator factory which can produce serially sequence iterators of the class specified at construction.
 * @author PJ Skyman
 * @param <S> Type of sequencers that use sequence iterators built by this factory.
 * @param <B> Type of button managers used by the sequencers that use sequence iterators built by this factory.
 * @since SkyMonome v1.1
 */
public class GenericSequenceIteratorFactory<S extends Sequencer<S,B>,B extends ButtonManager<B>> implements SequenceIteratorFactory<S,B>
{
    /**
     * Constructor which is responsible for sequence iterators creation.
     */
    private final Constructor<? extends SequenceIterator<S,B>> constructor;
    /**
     * Arguments that are common to the factoring of all sequence iterators, since they correspond to a defined
     * constructor in the class specified at the construction of this factory.
     */
    private final Object[] arguments;

    /**
     * Constructs a generic sequence iterator factory which can produce sequence iterators of the specified class
     * and with the specified arguments common to all produced sequence iterators.
     * @param sequenceIteratorClass Class object that denotes the type of sequence iterators that will be produced by this factory.s
     * @param argumentsForSequenceIterator Optional arguments that can be used for the sequence iterators factoring.
     * These arguments must be specified in a good order so that a constructor is defined for the
     * specified sequence iterator class with specified arguments.
     * @throws sky.monome.exception.MonomeException When no constructor is found for the specified class and specified
     * arguments in the same order.
     */
    public GenericSequenceIteratorFactory(Class<? extends SequenceIterator<S,B>> sequenceIteratorClass,Object... argumentsForSequenceIterator) throws MonomeException
    {
        Class<?>[] classes=new Class<?>[argumentsForSequenceIterator.length];
        for(int i=0;i<classes.length;i++)
            classes[i]=argumentsForSequenceIterator[i].getClass();
        try
        {
            constructor=sequenceIteratorClass.getConstructor(classes);
        }
        catch(Exception e)
        {
            throw new MonomeException("Can't find a constructor for the class "+sequenceIteratorClass.getSimpleName()+" with specified arguments",e);
        }
        arguments=argumentsForSequenceIterator;
    }

    /**
     * Creates a sequence iterator with the help of optional arguments.
     * @param arguments Optional arguments that can help the sequence iterator factoring.
     * Note that this kind of factory does not use these arguments.
     * @return A sequence iterator freshly created.
     * @throws sky.monome.exception.MonomeException When the sequence iterator factoring can't operate successfully.
     */
    public SequenceIterator<S,B> createSequenceIterator(Object... arguments) throws MonomeException
    {
        try
        {
            return constructor.newInstance(this.arguments);
        }
        catch(Exception e)
        {
            throw new MonomeException("Can't create a new sequence iterator object of the class "+constructor.getDeclaringClass().getSimpleName(),e);
        }
    }

    /**
     * Creates a generic sequence iterator factory of specified types, and with the specified (not paramtrized) sequence iterator class and specified arguments.
     * See the constructor doc to know more about these arguments.
     * This static method is a convenience method that can create correctly parametrized factories.
     * @param <S> Type of sequencer that use sequence iterators built by this factory.
     * @param <B> Type of button manager used by sequencers that use sequence iterators built by this factory.
     * @param sequenceIteratorClass (Not parametrized) sequence iterator class that denotes future factored sequence iterators.
     * @param argumentsForSequenceIterator Arguments used to create the factory.
     * @return A freshly created generic sequence iterator factory ready to be used to create sequence iterators.
     * @throws sky.monome.exception.MonomeException When the factory can't be created.
     * @see #GenericSequenceIteratorFactory(java.lang.Class, java.lang.Object[]) GenericSequenceIteratorFactory(Class<?>,Object...)
     */
    @SuppressWarnings("unchecked")
    public static <S extends Sequencer<S,B>,B extends ButtonManager<B>> GenericSequenceIteratorFactory<S,B> createGenericSequenceIteratorFactory(Class<? extends SequenceIterator> sequenceIteratorClass,Object... argumentsForSequenceIterator) throws MonomeException
    {
        return new GenericSequenceIteratorFactory<S,B>((Class<? extends SequenceIterator<S,B>>)sequenceIteratorClass,argumentsForSequenceIterator);
    }
}