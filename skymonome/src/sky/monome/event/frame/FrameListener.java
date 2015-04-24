package sky.monome.event.frame;

import java.util.EventListener;

/**
 * Listener that listens to frame events.
 * @param <F> Type of dynamic frame that is used with frame listeners.
 * @author PJ Skyman
 */
public interface FrameListener<F extends DynamicFrame<F>> extends EventListener
{
    /**
     * Invoked when a frame changing occurs.
     * @param frameEvent Informations about the frame event.
     */
    public void frameChanged(FrameEvent<F> frameEvent);
}