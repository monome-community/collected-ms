package sky.monome;

/**
 * Monome container. This class is the base class of all containers on a Monome device.
 * @author PJ Skyman
 */
public abstract class Container extends Component
{
    /**
     * Width of this container.
     */
    protected final int width;
    /**
     * Height of this container.
     */
    protected final int height;

    /**
     * Constructs a container with the specified name and specified coordinates and dimensions
     * and contained by the specified container.
     * These coordinates denote the upper-left corner of this container.
     * @param name Name of this container.
     * @param container Container that contains this container.
     * @param x X-coordinate of this container in the local context of its container.
     * @param y Y-coordinate of this container in the local context of its container.
     * @param width Width of this container.
     * @param height Height of this container.
     * @deprecated Since SkyMonome v1.2, all components register themselves inside their
     * container, so you don't need to specify the container by calling this constructor.
     */
    @Deprecated
    public Container(String name,Container container,int x,int y,int width,int height)
    {
        super(name,container,x,y);
        this.width=width;
        this.height=height;
    }

    /**
     * Constructs a container with the specified name and specified coordinates and dimensions.
     * These coordinates denote the upper-left corner of this container.
     * @param name Name of this container.
     * @param x X-coordinate of this container in the local context of its container.
     * @param y Y-coordinate of this container in the local context of its container.
     * @param width Width of this container.
     * @param height Height of this container.
     * @since SkyMonome v1.2
     */
    public Container(String name,int x,int y,int width,int height)
    {
        super(name,x,y);
        this.width=width;
        this.height=height;
    }

    /**
     * Returns the width of this container.
     * @return The width of this container.
     */
    public int getWidth()
    {
        return width;
    }

    /**
     * Returns the height of this container.
     * @return The height of this container.
     */
    public int getHeight()
    {
        return height;
    }
}