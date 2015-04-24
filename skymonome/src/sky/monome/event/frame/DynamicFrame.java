package sky.monome.event.frame;

/**
 * Frame that is dynamic in time.
 * A dynamic frame can have registered listeners to listen to frame events (when frame needs to be refreshed on the physical Monome device).
 * @param <F> Type of dynamic frame that implements this interface.
 * @author PJ Skyman
 */
public interface DynamicFrame<F extends DynamicFrame<F>>
{
    /**
     * Adds the specified frame listener to the list of frame listeners.
     * @param frameListener Frame listener to add to the list of frame listeners.
     */
    public void addFrameListener(FrameListener<F> frameListener);

    /**
     * Removes the specified frame listener from the list of frame listeners.
     * @param frameListener Frame listener to remove from the list of frame listeners.
     */
    public void removeFrameListener(FrameListener<F> frameListener);

    /**
     * Returns an array of all frame listeners.
     * @return An array of all frame listeners.
     */
    public FrameListener<F>[] getFrameListeners();

    /**
     * Invoked when a frame change occurs.
     * @param dynamicFrame Dynamic frame that triggered the frame event.
     */
    public void fireFrameChanged(F dynamicFrame);
}