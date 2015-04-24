package sky.monome;

import java.awt.Rectangle;
import javax.swing.event.EventListenerList;
import sky.monome.exception.MonomeException;
import sky.monome.frame.Frame;
import sky.monome.util.OSCMessageDigester;

/**
 * Monome component. This class is the base of all components on a Monome device.
 * @author PJ Skyman
 */
public abstract class Component
{
    /**
     * Name of this component.
     */
    protected final String name;
    /**
     * X-coordinate of this component.
     */
    protected final int x;
    /**
     * Y-coordinate of this component.
     */
    protected final int y;
    /**
     * Lock object needed for exclusive operations.
     */
    protected final Object lockObject;
    /**
     * List of all listeners registered with this component.
     */
    protected final EventListenerList eventListenerList;
    /**
     * Container which contains this component.
     * Since SkyMonome v1.2, this field is not final anymore due to the
     * automatic registering of this component inside its container.
     */
    protected Container container;

    /**
     * Constructs a component with the specified name and specified coordinates
     * and contained by the specified container.
     * @param name Name of this component.
     * @param container Container that contains this component.
     * @param x X-coordinate of this component in the local context of its container.
     * @param y Y-coordinate of this component in the local context of its container.
     * @deprecated Since SkyMonome v1.2, all components register themselves inside their
     * container, so you don't need to specify the container by calling this constructor.
     */
    @Deprecated
    public Component(String name,Container container,int x,int y)
    {
        this.name=name;
        this.container=container;
        this.x=x;
        this.y=y;
        lockObject=new Object();
        eventListenerList=new EventListenerList();
    }

    /**
     * Constructs a component with the specified name and specified coordinates.
     * @param name Name of this component.
     * @param x X-coordinate of this component in the local context of its container.
     * @param y Y-coordinate of this component in the local context of its container.
     * @since SkyMonome v1.2
     */
    public Component(String name,int x,int y)
    {
        this.name=name;
        this.x=x;
        this.y=y;
        lockObject=new Object();
        eventListenerList=new EventListenerList();
    }

    /**
     * Sets the container that contains this component.
     * @param container Container that contains this component.
     * @since SkyMonome v1.2
     */
    void setContainer(Container container)
    {
        this.container=container;
    }

    /**
     * Returns the name of this component.
     * @return The name of this component.
     */
    public String getName()
    {
        return name;
    }

    /**
     * Returns the X-coordinate of this component in the local context of its container.
     * @return The X-coordinate of this component in the local context of its container.
     */
    public int getX()
    {
        return x;
    }

    /**
     * Returns the Y-coordinate of this component in the local context of its container.
     * @return The Y-coordinate of this component in the local context of its container.
     */
    public int getY()
    {
        return y;
    }

    /**
     * Returns the lock object needed for exclusive operations.
     * @return The lock object needed for exclusive operations.
     */
    public Object getLockObject()
    {
        return lockObject;
    }

    /**
     * Returns the container that contains this component.
     * @return The container that contains this component.
     */
    public Container getContainer()
    {
        return container;
    }

    /**
     * Notifies this component that a message comes from the Monome device.
     * @param messageDigester Message digester that prepares and encapsulates the message for an easy access of informations contained in the message.
     * @throws sky.monome.exception.MonomeException When a problem has occured when treating the message.
     * By example, a led/button couple can treat a message by lighting on the led, and lighting on a led is a potentially risked operation.
     */
    public abstract void notify(OSCMessageDigester messageDigester) throws MonomeException;

    /**
     * Writes this component on the specified frame in order to refresh the Monome device.
     * Once this frame is completed, it is sent to the Monome device.
     * Implementors must essentially use the {@link sky.monome.frame.Frame#set(int,int,sky.monome.LedButtonCouple.LedState) set(int,int,LedState)} method of class {@link sky.monome.frame.Frame Frame} for writing their led state,
     * or call the {@link #writeOn(sky.monome.frame.Frame) writeOn(Frame)} method of contained components for the containers,
     * or do nothing when they haven't any relation with the leds.
     * @param frame Frame in which this component must write its led state.
     * @throws sky.monome.exception.MonomeException When a problem has occured while getting the led state of this component, or a component inside (for containers).
     * @see sky.monome.Monome#refresh()
     */
    public abstract void writeOn(Frame frame) throws MonomeException;

    /**
     * Returns the logical Monome device that contains this component.
     * The logical Monome device is always at the top of the Monome assembling tree.
     * @return The logical Monome device that contains this component.
     */
    public abstract Monome getMonome();

    /**
     * Returns the absolute X-coordinate of this component.
     * @return The absolute X-coordinate of this component.
     */
    public abstract int getAbsoluteX();

    /**
     * Returns the absolute Y-coordinate of this component.
     * @return The absolute Y-coordinate of this component.
     */
    public abstract int getAbsoluteY();

    /**
     * Indicates whether this component is actually visible.
     * @return {@code true} if this component is actually visible, {@code false} otherwise.
     */
    public abstract boolean isVisible();

    /**
     * Indicates whether this component can have a parent container in the Monome assembling tree.
     * @return {@code true} if this component can have a parent container, {@code false} otherwise.
     */
    public abstract boolean canHaveParentContainer();

    /**
     * Returns a string representation of this component.
     * Implementors should always not forget to implement/override this method.
     * @return A string representation of this component.
     */
    @Override
    public abstract String toString();

    /**
     * Returns the bounds of this component in the local context of its container.
     * @return The bounds of this component in the local context of its container.
     */
    public abstract Rectangle getBounds();
}