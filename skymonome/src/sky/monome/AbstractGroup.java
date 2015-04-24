package sky.monome;

import java.awt.Rectangle;
import sky.monome.exception.MonomeException;
import sky.monome.frame.Frame;
import sky.monome.util.OSCMessageDigester;
import sky.monome.util.SynchronizedList;

/**
 * Skeletton class for all groups.
 * @author PJ Skyman
 * @param <T> Type of contained components.
 */
public abstract class AbstractGroup<T extends Component> extends Container
{
    /**
     * List of contained components.
     */
    protected final SynchronizedList<T> components;

    /**
     * Constructs an abstract group with the specified name, specified coordinates and dimensions, and contained by the specified container.
     * @param name Name of this abstract group.
     * @param container Container that contains this abstract group.
     * @param x X-coordinate of this abstract group in the local context of its container.
     * @param y Y-coordinate of this abstract group in the local context of its container.
     * @param width Width of this abstract group.
     * @param height Height of this abstract group.
     * @deprecated Since SkyMonome v1.2, all components register themselves inside their
     * container, so you don't need to specify the container by calling this constructor.
     */
    @Deprecated
    public AbstractGroup(String name,Container container,int x,int y,int width,int height)
    {
        super(name,container,x,y,width,height);
        components=new SynchronizedList<T>();
    }

    /**
     * Constructs an abstract group with the specified name and specified coordinates and dimensions.
     * @param name Name of this abstract group.
     * @param x X-coordinate of this abstract group in the local context of its container.
     * @param y Y-coordinate of this abstract group in the local context of its container.
     * @param width Width of this abstract group.
     * @param height Height of this abstract group.
     * @since SkyMonome v1.2
     */
    public AbstractGroup(String name,int x,int y,int width,int height)
    {
        super(name,x,y,width,height);
        components=new SynchronizedList<T>();
    }

    /**
     * Returns the absolute X-coordinate of this abstract group.
     * @return The absolute X-coordinate of this abstract group.
     */
    public int getAbsoluteX()
    {
        try
        {
            return x+container.getAbsoluteX();
        }
        catch(NullPointerException e)
        {
            return x;
        }
    }

    /**
     * Returns the absolute Y-coordinate of this abstract group.
     * @return The absolute Y-coordinate of this abstract group.
     */
    public int getAbsoluteY()
    {
        try
        {
            return y+container.getAbsoluteY();
        }
        catch(NullPointerException e)
        {
            return y;
        }
    }

    /**
     * Returns the logical Monome device that contains this abstract group.
     * The logical Monome device is always at the top of the Monome assembling tree.
     * @return The logical Monome device that contains this abstract group.
     */
    public Monome getMonome()
    {
        try
        {
            return container.getMonome();
        }
        catch(NullPointerException e)
        {
            return null;
        }
    }

    /**
     * Notifies this abstract group that a message comes from the Monome device.
     * @param messageDigester Message digester that prepares and encapsulates the message for an easy access of informations contained in the message.
     * @throws sky.monome.exception.MonomeException When a problem has occured when treating the message.
     * By example, a led/button couple can treat a message by lighting on the led, and lighting on a led is a potentially risked operation.
     */
    public void notify(OSCMessageDigester messageDigester) throws MonomeException
    {
        synchronized(components.getLockObject())
        {
            for(T component:components)
                component.notify(messageDigester);
        }
    }

    /**
     * Writes this abstract group on the specified frame in order to refresh the Monome device.
     * Once this frame is completed, it is sent to the Monome device.
     * @param frame Frame in which this abstract group must write its led state.
     * @throws sky.monome.exception.MonomeException When a problem has occured while getting the led state of a component inside this abstract group.
     * @see sky.monome.Monome#refresh()
     */
    public void writeOn(Frame frame) throws MonomeException
    {
        synchronized(components.getLockObject())
        {
            for(T component:components)
                component.writeOn(frame);
        }
    }

    /**
     * Indicates whether this abstract group is actually visible.
     * @return {@code true} if this abstract group is actually visible, {@code false} otherwise.
     */
    public boolean isVisible()
    {
        try
        {
            return container.isVisible();
        }
        catch(NullPointerException e)
        {
            return false;
        }
    }

    /**
     * Indicates whether this abstract group can have a parent container in the Monome assembling tree.
     * @return Always {@code true}.
     */
    public boolean canHaveParentContainer()
    {
        return true;
    }

    /**
     * Returns bounds of this abstract group in the local context of its container.
     * @return Bounds of this abstract group in the local context of its container.
     */
    public Rectangle getBounds()
    {
        return new Rectangle(x,y,width,height);
    }
}