package sky.monome.frame;

import sky.monome.LedButtonCouple.LedState;

/**
 * Window that makes a movable view over a frame with a static translation offset
 * that cannot exceed frame bounds.
 * The bounding effect needs an instance of {@link sky.monome.frame.SizedFrame SizedFrame} instead of
 * {@link sky.monome.frame.Frame Frame}.
 * @author PJ Skyman
 * @since SkyMonome v1.3
 */
public class BoundedFrameWindow extends AbstractFrameWindow<SizedFrame,BoundedFrameWindow>
{
    /**
     * Constructs a bounded frame window with the specified sized frame.
     * @param sizedFrame Sized frame over which this windows makes a view.
     */
    public BoundedFrameWindow(SizedFrame sizedFrame)
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
            return frame.get(x+xOffset,y+yOffset);
        }
        catch(ArrayIndexOutOfBoundsException e)
        {
            return LedState.OFF;
        }
    }

    /**
     * Changes the translation over the frame.
     * @param newX New offset on the X-axis.
     * @param newY New offset on the Y-axis.
     */
    @Override
    public void move(int newX,int newY)
    {
        xOffset=newX;
        if(xOffset<0)
            xOffset=0;
        int width=windowContainer!=null?windowContainer.getWidth():0;
        if(frame.getWidth()<width)
            xOffset=0;
        else
            if(xOffset>frame.getWidth()-width)
                xOffset=frame.getWidth()-width;
        yOffset=newY;
        if(yOffset<0)
            yOffset=0;
        int height=windowContainer!=null?windowContainer.getHeight():0;
        if(frame.getHeight()<height)
            yOffset=0;
        else
            if(yOffset>frame.getHeight()-height)
                yOffset=frame.getHeight()-height;
        fireFrameChanged(this);
    }

    /**
     * Makes a translation on the frame by the specified offset.
     * @param xOffset Offset on the X-axis to add to the current offset.
     * @param yOffset Offset on the Y-axis to add to the current offset.
     */
    @Override
    public void translate(int xOffset,int yOffset)
    {
        this.xOffset+=xOffset;
        if(this.xOffset<0)
            this.xOffset=0;
        int width=windowContainer!=null?windowContainer.getWidth():0;
        if(frame.getWidth()<width)
            this.xOffset=0;
        else
            if(this.xOffset>frame.getWidth()-width)
                this.xOffset=frame.getWidth()-width;
        this.yOffset+=yOffset;
        if(this.yOffset<0)
            this.yOffset=0;
        int height=windowContainer!=null?windowContainer.getHeight():0;
        if(frame.getHeight()<height)
            this.yOffset=0;
        else
            if(this.yOffset>frame.getHeight()-height)
                this.yOffset=frame.getHeight()-height;
        fireFrameChanged(this);
    }
}