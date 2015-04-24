package sky.monome.frame;

import sky.monome.LedButtonCouple.LedState;

/**
 * Window that makes a movable view over a frame with an inertia translation offset
 * that cannot exceed frame bounds.
 * The bounding effect needs an instance of {@link sky.monome.frame.SizedFrame SizedFrame} instead of
 * {@link sky.monome.frame.Frame Frame}.
 * @author PJ Skyman
 * @since SkyMonome v1.3
 */
public class InertiaBoundedFrameWindow extends AbstractInertiaFrameWindow<SizedFrame,InertiaBoundedFrameWindow>
{
    /**
     * Constructs an inertia bounded frame window with the specified sized frame.
     * @param sizedFrame Sized frame over which this windows makes a view.
     */
    public InertiaBoundedFrameWindow(SizedFrame sizedFrame)
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
        try
        {
            return frame.get(x+intX,y+intY);
        }
        catch(ArrayIndexOutOfBoundsException e)
        {
            return LedState.OFF;
        }
    }

    /**
     * Apply the increment on the X-axis.
     * @since SkyMonome v1.3
     */
    @Override
    protected synchronized void applyXIncrement()
    {
        x+=xIncrement;
        if(x<0f)
            x=0f;
        int width=windowContainer!=null?windowContainer.getWidth():0;
        if(frame.getWidth()<width)
            x=0f;
        else
            if((int)x>frame.getWidth()-width)
                x=(float)(frame.getWidth()-width);
    }

    /**
     * Apply the increment on the Y-axis.
     * @since SkyMonome v1.3
     */
    @Override
    protected synchronized void applyYIncrement()
    {
        y+=yIncrement;
        if(y<0f)
            y=0f;
        int height=windowContainer!=null?windowContainer.getHeight():0;
        if(frame.getHeight()<height)
            y=0f;
        else
            if((int)y>frame.getHeight()-height)
                y=(float)(frame.getHeight()-height);
    }
}