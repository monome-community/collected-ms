package sky.monome.event.frame;

import sky.monome.event.GenericEvent;

/**
 * Frame event's information object.
 * Frame events are triggered by {@link sky.monome.event.frame.DynamicFrame DynamicFrame} objects.
 * @param <F> Type of dynamic frame that triggers frame events.
 * @author PJ Skyman
 */
public class FrameEvent<F extends DynamicFrame<F>> extends GenericEvent<F>
{
    /**
     * Constructs a frame event with the specified time and source.
     * @param when Time of this event, in milliseconds since the time zero in the Unix world.
     * @param source Source of this event. {@link sky.monome.event.frame.DynamicFrame DynamicFrame} objects are sources for frame events.
     */
    public FrameEvent(long when,F source)
    {
        super(when,source);
    }
}