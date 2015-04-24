package sky.monome.frame;

/**
 * Window that makes a movable view over a frame with an inertia translation offset.
 * This class is the based class for all windows with an inertia translation offset.
 * @author PJ Skyman
 * @param <T> Type of viewed frame.
 * @param <F> Type of frame window that extends this abstract frame window.
 */
public abstract class AbstractInertiaFrameWindow<T extends Frame,F extends AbstractInertiaFrameWindow<T,F>> extends AbstractWindow<T,F>
{
    /**
     * Real value of the offset on the X-axis.
     */
    protected float x;
    /**
     * Real value of the offset on the Y-axis.
     */
    protected float y;
    /**
     * Truncated value of the offset on the X-axis.
     */
    protected int intX;
    /**
     * Truncated value of the offset on the Y-axis.
     */
    protected int intY;
    /**
     * Value of the increment on the X-axis.
     */
    protected float xIncrement;
    /**
     * Value of the increment on the Y-axis.
     */
    protected float yIncrement;
    /**
     * Loop time for internal refreshing of the offset.
     * @since SkyMonome v1.3
     */
    protected long loopTime;
    /**
     * Standard loop time for internal refreshing of the offset.
     * Since SkyMonome v1.3, this value is used by default, but the user can
     * change it by calling {@link #setLoopTime(long) setLoopTime(long)} method.
     */
    protected static final long LOOP_TIME=25L;

    /**
     * Constructs an abstract inertia frame window with the specified frame.
     * @param frame Frame over which this windows makes a view.
     */
    public AbstractInertiaFrameWindow(T frame)
    {
        super(frame);
        loopTime=LOOP_TIME;
        x=0f;
        y=0f;
        intX=0;
        intY=0;
        xIncrement=0f;
        yIncrement=0f;
        new Thread()
        {
            @Override
            public void run()
            {
                try
                {
                    while(true)
                    {
                        sleep(loopTime);
                        applyXIncrement();
                        applyYIncrement();
                        boolean needsRefresh=false;
                        if(intX!=(int)x)
                        {
                            needsRefresh=true;
                            intX=(int)x;
                        }
                        if(intY!=(int)y)
                        {
                            needsRefresh=true;
                            intY=(int)y;
                        }
                        if(needsRefresh)
                            new Thread()
                            {
                                @Override
                                @SuppressWarnings("unchecked")
                                public void run()
                                {
                                    fireFrameChanged((F)AbstractInertiaFrameWindow.this);
                                }
                            }.start();
                    }
                }
                catch(InterruptedException e)
                {
                }
            }
        }.start();
    }

    /**
     * Returns the loop time for internal refreshing of the offset,
     * in milliseconds.
     * @return The loop time for internal refreshing of the offset,
     * in milliseconds.
     * @since SkyMonome v1.3
     */
    public long getLoopTime()
    {
        return loopTime;
    }

    /**
     * Modified the loop time for internal refreshing of the offset,
     * in milliseconds.
     * The new value takes effect only at next loop cycle. However, with
     * low values (around 25 milliseconds), you can consider that takes
     * effect immediately.
     * Warning ! A value of 0L (zero) may cause erratic behaviors !
     * @param loopTime New loop time for internal refreshing of the offset,
     * in milliseconds.
     * @since SkyMonome v1.3
     */
    public void setLoopTime(long loopTime)
    {
        this.loopTime=loopTime;
    }

    /**
     * Modifies the increment on the X-axis.
     * @param xIncrement New increment to store.
     */
    public void setXIncrement(float xIncrement)
    {
        this.xIncrement=xIncrement;
    }

    /**
     * Modifies the increment on the Y-axis.
     * @param yIncrement New increment to store.
     */
    public void setYIncrement(float yIncrement)
    {
        this.yIncrement=yIncrement;
    }

    /**
     * Apply the increment on the X-axis.
     * @since SkyMonome v1.3
     */
    protected synchronized void applyXIncrement()
    {
        x+=xIncrement;
    }

    /**
     * Apply the increment on the Y-axis.
     * @since SkyMonome v1.3
     */
    protected synchronized void applyYIncrement()
    {
        y+=yIncrement;
    }
}