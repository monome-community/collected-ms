package sky.monome.frame;

/**
 * Window that makes a movable view over a frame with a static translation offset.
 * This class is the based class for all windows with a static translation offset.
 * @author PJ Skyman
 * @param <T> Type of viewed frame.
 * @param <F> Type of frame window that extends this abstract frame window.
 */
public abstract class AbstractFrameWindow<T extends Frame,F extends AbstractFrameWindow<T,F>> extends AbstractWindow<T,F>
{
    /**
     * Offset on the X-axis.
     */
    protected int xOffset;
    /**
     * Offset on the Y-axis.
     */
    protected int yOffset;

    /**
     * Constructs an abstract frame window with the specified frame.
     * @param frame Frame over which this windows makes a view.
     */
    public AbstractFrameWindow(T frame)
    {
        super(frame);
        xOffset=0;
        yOffset=0;
    }

    /**
     * Makes a translation on the frame by the specified offset.
     * @param xOffset Offset on the X-axis to add to the current offset.
     * @param yOffset Offset on the Y-axis to add to the current offset.
     */
    @SuppressWarnings("unchecked")
    public void translate(int xOffset,int yOffset)
    {
        this.xOffset+=xOffset;
        this.yOffset+=yOffset;
        fireFrameChanged((F)this);
    }

    /**
     * Changes the translation over the frame.
     * @param newX New offset on the X-axis.
     * @param newY New offset on the Y-axis.
     */
    @SuppressWarnings("unchecked")
    public void move(int newX,int newY)
    {
        xOffset=newX;
        yOffset=newY;
        fireFrameChanged((F)this);
    }
}