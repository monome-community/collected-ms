package sky.monome.event;

import java.util.EventObject;

/**
 * Generic Monome event. This class is the base class for all Monome events.
 * @author PJ Skyman
 * @param <T> Type of objects that create this type of events.
 */
public abstract class GenericEvent<T> extends EventObject
{
    /**
     * Time of this generic event, in milliseconds since the time zero of Unix world.
     */
    protected final long when;

    /**
     * Constructs a generic event with the specified date and the specified source.
     * @param when Time of this generic event, in milliseconds since the time zero of Unix world.
     * @param source Source of this generic event.
     */
    public GenericEvent(long when,T source)
    {
        super(source);
        this.when=when;
    }

    /**
     * Returns the time of this generic event, in milliseconds since the time zero of Unix world.
     * @return The time of this generic event, in milliseconds since the time zero of Unix world.
     */
    public long getWhen()
    {
        return when;
    }

    /**
     * Returns the source of this generic event.
     * The source is typed with the right type.
     * @return The source of this generic event.
     */
    @SuppressWarnings("unchecked")
    public T getSource2()
    {
        return (T)getSource();
    }
}