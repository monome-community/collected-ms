package sky.monome.frame;

import sky.monome.LedButtonCouple.LedState;

/**
 * Window that makes a movable view over a frame with a static translation offset and without any mirroring effect at frame bounds.
 * @author PJ Skyman
 */
public class FrameWindow extends AbstractFrameWindow<Frame,FrameWindow>
{
    /**
     * Type of window.
     */
    private final WindowType windowType;

    /**
     * Constructs a frame window with the specified frame and the default window type
     * {@link sky.monome.frame.AbstractWindow.WindowType#LEDS_OFF_OUTSIDE WindowType.LEDS_OFF_OUTSIDE}.
     * @param frame Frame over which this windows makes a view.
     */
    public FrameWindow(Frame frame)
    {
        this(frame,WindowType.LEDS_OFF_OUTSIDE);
    }

    /**
     * Constructs a frame window with the specified frame and the specified window type.
     * @param frame Frame over which this windows makes a view.
     * @param windowType Window type to respect.
     */
    public FrameWindow(Frame frame,WindowType windowType)
    {
        super(frame);
        this.windowType=windowType;
    }

    /**
     * Returns the led state at specified coordinates.
     * @param x X-coordinate of the led state needed.
     * @param y Y-coordinate of the led state needed.
     * @return The led state at specified coordinates.
     */
    public LedState get(int x,int y)
    {
        try
        {
            return frame.get(x+xOffset,y+yOffset);
        }
        catch(ArrayIndexOutOfBoundsException e)
        {
            return windowType==WindowType.LEDS_ON_OUTSIDE?LedState.ON:LedState.OFF;
        }
    }
}