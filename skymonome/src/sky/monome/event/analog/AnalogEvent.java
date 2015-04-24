package sky.monome.event.analog;

import sky.monome.Analog;
import sky.monome.event.GenericEvent;

/**
 * Analog event's information object.
 * Analog events are triggered by {@link sky.monome.Analog Analog} objects.
 * @author PJ Skyman
 */
public class AnalogEvent extends GenericEvent<Analog>
{
    /**
     * Value associated with this analog event.
     */
    protected final float value;

    /**
     * Constructs an analog event with the specified time, source and value.
     * @param when Time of this event, in milliseconds since the time zero in the Unix world.
     * @param source Source of this event. {@link sky.monome.Analog Analog} objects are sources for analog events.
     * @param value Value associated with this analog event.
     */
    public AnalogEvent(long when,Analog source,float value)
    {
        super(when,source);
        this.value=value;
    }

    /**
     * Returns the value associated with this analog event.
     * @return The value associated with this analog event.
     */
    public float getValue()
    {
        return value;
    }
}