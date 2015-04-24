package sky.monome.frame;

import sky.monome.LedButtonCouple.LedState;

/**
 * Window that makes a movable view over a frame with an inertia translation offset and with a mirroring effect at frame bounds.
 * The mirroring effect needs an instance of {@link sky.monome.frame.SizedFrame SizedFrame} instead of
 * {@link sky.monome.frame.Frame Frame}.
 * @author PJ Skyman
 */
public class InertiaMirroredFrameWindow extends AbstractInertiaFrameWindow<SizedFrame,InertiaMirroredFrameWindow>
{
    /**
     * Constructs an inertia mirrored frame window with the specified sized frame.
     * @param sizedFrame Sized frame over which this windows makes a view.
     */
    public InertiaMirroredFrameWindow(SizedFrame sizedFrame)
    {
        super(sizedFrame);
    }

    /**
     * Returns the led state at specified coordinates.
     * @param x X-coordinate of the led state needed.
     * @param y Y-coordinate of the led state needed.
     * @return The led state at specified coordinates.
     */
    public LedState get(int x,int y)
    {
        int xTemp=x+intX;
        if(xTemp<0)
            xTemp+=(Math.abs(xTemp)/frame.getWidth()+1)*frame.getWidth();
        int yTemp=y+intY;
        if(yTemp<0)
            yTemp+=(Math.abs(yTemp)/frame.getHeight()+1)*frame.getHeight();
        return frame.get(xTemp%frame.getWidth(),yTemp%frame.getHeight());
    }
}