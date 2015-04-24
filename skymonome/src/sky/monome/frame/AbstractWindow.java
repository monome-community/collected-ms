package sky.monome.frame;

import javax.swing.event.EventListenerList;
import sky.monome.Container;
import sky.monome.LedButtonCouple.LedState;
import sky.monome.event.frame.DynamicFrame;
import sky.monome.event.frame.FrameEvent;
import sky.monome.event.frame.FrameListener;
import sky.monome.util.ThreadWithUserObjects;

/**
 * Window that makes a movable view over a frame.
 * This class is the based class for all windows.
 * @author PJ Skyman
 * @param <T> Type of viewed frame.
 * @param <F> Type of window that extends this abstract window.
 */
public abstract class AbstractWindow<T extends Frame,F extends AbstractWindow<T,F>> implements Frame,DynamicFrame<F>
{
    /**
     * Frame over which this window makes a view.
     */
    protected final T frame;
    /**
     * List of registered listeners.
     */
    protected final EventListenerList eventListenerList;
    /**
     * Container that contains this window.
     * @since SkyMonome v1.3
     */
    protected Container windowContainer;

    /**
     * Constructs an abstract window with the specified frame.
     * @param frame Frame over which this windows makes a view.
     */
    public AbstractWindow(T frame)
    {
        this.frame=frame;
        eventListenerList=new EventListenerList();
    }
    
    /**
     * Modifies the container that contains this window.
     * @param windowContainer New window container, or {@code null} to
     * remove this window from any container.
     * @since SkyMonome v1.3
     */
    public void setWindowContainer(Container windowContainer)
    {
        this.windowContainer=windowContainer;
    }

    /**
     * Returns the led state on the viewed frame at specified coordinates.
     * @param x X-coordinate of the needed led state on the viewed frame.
     * @param y Y-coordinate of the needed led state on the viewed frame.
     * @return The led state on the viewed frame at specified coordinates.
     */
    public LedState getOnFrame(int x,int y)
    {
        return frame.get(x,y);
    }

    /**
     * Modifies the led state on this window at specified coordinates.
     * @param x X-coordinate of the led state to be modified on this window.
     * @param y Y-coordinate of the led state to be modified on this window.
     * @param ledState New led state to affect at specified coordinates on this window.
     * @deprecated Since it is recommended to set led states directly on the viewed frame with
     * {@link #setOnFrame(int, int, sky.monome.LedButtonCouple.LedState) setOnFrame(int,int,LedState)} method.
     */
    @Deprecated
    public void set(int x,int y,LedState ledState)
    {
        frame.set(x,y,ledState);
    }

    /**
     * Modifies the led state on the viewed frame at specified coordinates.
     * @param x X-coordinate of the led state to be modified on the viewed frame.
     * @param y Y-coordinate of the led state to be modified on the viewed frame.
     * @param ledState New led state to affect at specified coordinates on the viewed frame.
     */
    public void setOnFrame(int x,int y,LedState ledState)
    {
        set(x,y,ledState);
    }

    /**
     * Adds the specified listener to the list of all registered listeners.
     * @param frameListener Listener to add to the list of all registered listeners.
     */
    public void addFrameListener(FrameListener<F> frameListener)
    {
        eventListenerList.add(FrameListener.class,frameListener);
    }

    /**
     * Removes the specified listener from the list of all registered listeners.
     * @param frameListener Listener to remove from the list of all registered listeners.
     */
    public void removeFrameListener(FrameListener<F> frameListener)
    {
        eventListenerList.remove(FrameListener.class,frameListener);
    }

    /**
     * Returns an array of all registered listeners.
     * @return An array of all registered listeners.
     */
    @SuppressWarnings("unchecked")
    public FrameListener<F>[] getFrameListeners()
    {
        return eventListenerList.getListeners(FrameListener.class);
    }

    /**
     * Invoked when a frame change occurs.
     * @param dynamicFrame Dynamic frame that triggered the frame event.
     */
    public void fireFrameChanged(F dynamicFrame)
    {
        for(FrameListener<F> frameListener:getFrameListeners())
            new ThreadWithUserObjects(frameListener,dynamicFrame)
            {
                public void run()
                {
                    this.<FrameListener<F>>getUserObject(0).frameChanged(new FrameEvent<F>(System.currentTimeMillis(),this.<F>getUserObject(1)));
                }
            }.start();
    }

    /**
     * Type of window. The type denotes the behavior of outer leds (leds out of viewed frame).
     */
    public static enum WindowType
    {
        /**
         * Makes outer leds off.
         */
        LEDS_OFF_OUTSIDE,
        /**
         * Makes outer leds on.
         */
        LEDS_ON_OUTSIDE
    }
}