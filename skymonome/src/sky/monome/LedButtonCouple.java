package sky.monome;

import java.awt.Rectangle;
import sky.monome.behavior.Behavior;
import sky.monome.behavior.LightOnPush;
import sky.monome.behavior.factory.BehaviorFactory;
import sky.monome.event.button.ButtonEvent;
import sky.monome.event.button.ButtonEvent.ButtonAction;
import sky.monome.event.button.ButtonListener;
import sky.monome.event.button.ButtonManager;
import sky.monome.exception.MonomeException;
import sky.monome.frame.Frame;
import sky.monome.layer.DefaultLedStateModificationLayer;
import sky.monome.layer.LedStateModificationLayer;
import sky.monome.util.OSCMessageDigester;
import sky.monome.util.ThreadWithUserObjects;

/**
 * Couple of a led and a button on the Monome device.
 * @author PJ Skyman
 */
public class LedButtonCouple extends Component implements ButtonManager<LedButtonCouple>
{
    /**
     * State of this button.
     */
    protected ButtonState buttonState;
    /**
     * State of this led.
     */
    protected LedState ledState;
    /**
     * Behavior of this led.
     */
    protected final Behavior behavior;
    /**
     * Modification layer for the led state of this led.
     */
    protected LedStateModificationLayer ledStateModificationLayer;

    /**
     * Constructs a led/button couple with the specified name and specified coordinates and contained by the specified container.
     * The default {@link sky.monome.behavior.LightOnPush LightOnPush} behavior is used.
     * @param name Name of this led/button couple.
     * @param container Container which contains this led/button couple.
     * @param x X-coordinate of this led/button couple in the local context of its container.
     * @param y Y-coordinate of this led/button couple in the local context of its container.
     * @throws sky.monome.exception.MonomeException When the led/button couple can't initialize itself.
     * @deprecated Since SkyMonome v1.2, all components register themselves inside their
     * container, so you don't need to specify the container by calling this constructor.
     */
    @Deprecated
    public LedButtonCouple(String name,Container container,int x,int y) throws MonomeException
    {
        this(name,container,x,y,new LightOnPush());
    }

    /**
     * Constructs a led/button couple with the specified name and specified coordinates.
     * The default {@link sky.monome.behavior.LightOnPush LightOnPush} behavior is used.
     * @param name Name of this led/button couple.
     * @param x X-coordinate of this led/button couple in the local context of its container.
     * @param y Y-coordinate of this led/button couple in the local context of its container.
     * @throws sky.monome.exception.MonomeException When the led/button couple can't initialize itself.
     * @since SkyMonome v1.2
     */
    public LedButtonCouple(String name,int x,int y) throws MonomeException
    {
        this(name,x,y,new LightOnPush());
    }

    /**
     * Constructs a led/button couple with the specified name, specified coordinates and the specified behavior and contained by the specified container.
     * @param name Name of this led/button couple.
     * @param container Container which contains this led/button couple.
     * @param x X-coordinate of this led/button couple in the local context of its container.
     * @param y Y-coordinate of this led/button couple in the local context of its container.
     * @param behavior Behavior of this led.
     * @throws sky.monome.exception.MonomeException When the led/button couple can't initialize itself.
     * @deprecated Since SkyMonome v1.2, all components register themselves inside their
     * container, so you don't need to specify the container by calling this constructor.
     */
    @Deprecated
    public LedButtonCouple(String name,Container container,int x,int y,Behavior behavior) throws MonomeException
    {
        super(name,container,x,y);
        ledStateModificationLayer=findLedStateModificationLayer();
        behavior.setLedButtonCouple(this);
        behavior.init();
        this.behavior=behavior;
    }

    /**
     * Constructs a led/button couple with the specified name, specified coordinates and the specified behavior.
     * @param name Name of this led/button couple.
     * @param x X-coordinate of this led/button couple in the local context of its container.
     * @param y Y-coordinate of this led/button couple in the local context of its container.
     * @param behavior Behavior of this led.
     * @throws sky.monome.exception.MonomeException When the led/button couple can't initialize itself.
     * @since SkyMonome v1.2
     */
    public LedButtonCouple(String name,int x,int y,Behavior behavior) throws MonomeException
    {
        super(name,x,y);
        ledStateModificationLayer=findLedStateModificationLayer();
        behavior.setLedButtonCouple(this);
        behavior.init();
        this.behavior=behavior;
    }

    /**
     * Constructs a led/button couple with the specified name, specified coordinates and the specified behavior factory and contained by the specified container.
     * @param name Name of this led/button couple.
     * @param container Container which contains this led/button couple.
     * @param x X-coordinate of this led/button couple in the local context of its container.
     * @param y Y-coordinate of this led/button couple in the local context of its container.
     * @param behaviorFactory Factory for the behavior of this led.
     * @throws sky.monome.exception.MonomeException When the led/button couple can't initialize itself,
     * or when the behavior factory can't operate successfully.
     * @since SkyMonome v1.1
     * @deprecated Since SkyMonome v1.2, all components register themselves inside their
     * container, so you don't need to specify the container by calling this constructor.
     */
    @Deprecated
    public LedButtonCouple(String name,Container container,int x,int y,BehaviorFactory behaviorFactory) throws MonomeException
    {
        this(name,container,x,y,behaviorFactory.createBehavior(x,y));
    }

    /**
     * Constructs a led/button couple with the specified name, specified coordinates and the specified behavior factory.
     * @param name Name of this led/button couple.
     * @param x X-coordinate of this led/button couple in the local context of its container.
     * @param y Y-coordinate of this led/button couple in the local context of its container.
     * @param behaviorFactory Factory for the behavior of this led.
     * @throws sky.monome.exception.MonomeException When the led/button couple can't initialize itself,
     * or when the behavior factory can't operate successfully.
     * @since SkyMonome v1.2
     */
    public LedButtonCouple(String name,int x,int y,BehaviorFactory behaviorFactory) throws MonomeException
    {
        this(name,x,y,behaviorFactory.createBehavior(x,y));
    }

    /**
     * Finds the led state modification layer that this led/button couple need.
     * @return The led state modification layer that this led/button couple need.
     * @since SkyMonome v1.1
     */
    private LedStateModificationLayer findLedStateModificationLayer()
    {
        Component component=this;
        while(component!=null)
        {
            if(component instanceof LedStateModificationLayer)
                return (LedStateModificationLayer)component;
            component=component.getContainer();
        }
        return new DefaultLedStateModificationLayer();
    }

    /**
     * Sets the container that contains this led/button couple.
     * @param container Container that contains this led/button couple.
     * @since SkyMonome v1.2
     */
    @Override
    void setContainer(Container container)
    {
        super.setContainer(container);
        ledStateModificationLayer=findLedStateModificationLayer();
    }

    /**
     * Returns the logical Monome device that contains this led/button couple.
     * The logical Monome device is always at the top of the Monome assembling tree.
     * @return The logical Monome device that contains this led/button couple.
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
     * Returns the behavior of this led.
     * @return The behavior of this led.
     */
    public Behavior getBehavior()
    {
        return behavior;
    }

    /**
     * Returns the state of this led.
     * @return The state of this led.
     */
    public LedState getLedState()
    {
        return ledState;
    }

    /**
     * Initializes the state of this led.
     * This method is exclusively made for use in behaviors.
     * @param ledState Initial state to give to this led.
     */
    public void initLedState(boolean ledState)
    {
        this.ledState=ledState?LedState.ON:LedState.OFF;
    }

    /**
     * Modifies the state of this led.
     * @param ledState New state to give to this led, among {@link sky.monome.LedButtonCouple.LedState#ON LedState.ON} and {@link sky.monome.LedButtonCouple.LedState#OFF LedState.OFF}.
     * @param mustRefresh {@code true} if the Monome device must be updated immediately, {@code false} otherwise.
     * @throws sky.monome.exception.MonomeException When the Monome device can't be updated.
     */
    public void setLedState(LedState ledState,boolean mustRefresh) throws MonomeException
    {
        this.ledState=ledState;
        if(mustRefresh)
            getMonome().refresh();
    }

    /**
     * Returns the state of this button.
     * @return The state of this button.
     */
    public ButtonState getButtonState()
    {
        return buttonState;
    }

    /**
     * Modifies the state of this button.
     * Warning ! Only internal listener methods must call this method. Otherwise, chaotic behaviors must appear.
     * @param buttonState state New state of this button, among {@link sky.monome.LedButtonCouple.ButtonState#BUTTON_PUSHED ButtonState.BUTTON_PUSHED} and {@link sky.monome.LedButtonCouple.ButtonState#BUTTON_RELEASED ButtonState.BUTTON_RELEASED}.
     */
    protected void setButtonState(ButtonState buttonState)
    {
        this.buttonState=buttonState;
    }

    /**
     * Adds the specified listener to the listeners list of this button.
     * @param buttonListener Listener to add to the listeners list of this button.
     */
    public void addButtonListener(ButtonListener<LedButtonCouple> buttonListener)
    {
        eventListenerList.add(ButtonListener.class,buttonListener);
    }

    /**
     * Removes the specified listener from the listeners list of this button.
     * @param buttonListener Listener to remove from the listeners list of this button.
     */
    public void removeButtonListener(ButtonListener<LedButtonCouple> buttonListener)
    {
        eventListenerList.remove(ButtonListener.class,buttonListener);
    }

    /**
     * Returns an array of all listeners contained in the listeners list of this button.
     * @return An array of all listeners contained in the listeners list of this button.
     */
    @SuppressWarnings("unchecked")
    public ButtonListener<LedButtonCouple>[] getButtonListeners()
    {
        return eventListenerList.getListeners(ButtonListener.class);
    }

    /**
     * Notifies all the listeners that a new button action occured.
     * @param buttonManager Button manager that triggered the button event.
     * @param buttonAction Button action performed on the specified button manager.
     */
    public void fireButtonActionned(LedButtonCouple buttonManager,ButtonAction buttonAction)
    {
        for(ButtonListener<LedButtonCouple> buttonListener:getButtonListeners())
            new ThreadWithUserObjects(buttonListener,buttonManager,buttonAction)
            {
                public void run()
                {
                    this.<ButtonListener<LedButtonCouple>>getUserObject(0).buttonActionned(new ButtonEvent<LedButtonCouple>(System.currentTimeMillis(),this.<LedButtonCouple>getUserObject(1),this.<ButtonAction>getUserObject(2)));
                }
            }.start();
    }

    /**
     * Notifies this led/button couple that a message comes from the Monome device.
     * @param messageDigester Message digester that prepares and encapsulates the message for an easy access of informations contained in the message.
     * @throws sky.monome.exception.MonomeException When a problem has occured when treating the message.
     * By example, a led/button couple can treat a message by lighting on the led, and lighting on a led is a potentially risked operation.
     */
    public void notify(OSCMessageDigester messageDigester) throws MonomeException
    {
        synchronized(lockObject)
        {
            if(messageDigester.getInstruction().equals("/press")&&messageDigester.getArgument(Integer.class,0).equals(getAbsoluteX())&&messageDigester.getArgument(Integer.class,1).equals(getAbsoluteY()))
            {
                ButtonAction buttonAction=messageDigester.getArgument(Integer.class,2).equals(1)?ButtonAction.BUTTON_PUSHED:ButtonAction.BUTTON_RELEASED;
                setButtonState(ButtonState.getButtonStateForButtonAction(buttonAction));
                getBehavior().notify(buttonAction);
                fireButtonActionned(this,buttonAction);
            }
        }
    }

    /**
     * Programmatically does a click on this led/button couple.
     * @throws MonomeException Only with a few behaviors, when a led state can't be modified, by example.
     * @since SkyMonome v1.1
     */
    public void doClick() throws MonomeException
    {
        setButtonState(ButtonState.getButtonStateForButtonAction(ButtonAction.BUTTON_PUSHED));
        getBehavior().notify(ButtonAction.BUTTON_PUSHED);
        fireButtonActionned(this,ButtonAction.BUTTON_PUSHED);
        setButtonState(ButtonState.getButtonStateForButtonAction(ButtonAction.BUTTON_RELEASED));
        getBehavior().notify(ButtonAction.BUTTON_RELEASED);
        fireButtonActionned(this,ButtonAction.BUTTON_RELEASED);
    }

    /**
     * Writes this led on the specified frame in order to refresh the Monome device.
     * Once this frame is completed, it is sent to the Monome device.
     * @param frame Frame in which this led must write its led state.
     * @see sky.monome.Monome#refresh()
     */
    public void writeOn(Frame frame)
    {
        frame.set(getAbsoluteX(),getAbsoluteY(),ledStateModificationLayer.getLedStateToShow(this));
    }

    /**
     * Returns the absolute X-coordinate of this led/button couple.
     * @return The absolute X-coordinate of this led/button couple.
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
     * Returns the absolute Y-coordinate of this led/button couple.
     * @return The absolute Y-coordinate of this led/button couple.
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
     * Indicates whether this led/button couple is actually visible.
     * @return {@code true} if this led/button couple is actually visible, {@code false} otherwise.
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
     * Returns a string representation of this led/button couple.
     * @return A string representation of this led/button couple.
     */
    public String toString()
    {
        return "LedButtonCouple "+name;
    }

    /**
     * Indicates whether this led/button couple can have a parent container in the Monome assembling tree.
     * @return Always {@code true}.
     */
    public boolean canHaveParentContainer()
    {
        return true;
    }

    /**
     * Returns the bounds of this led/button couple in the local context of its container.
     * @return The bounds of this led/button couple in the local context of its container.
     */
    public Rectangle getBounds()
    {
        return new Rectangle(x,y,1,1);
    }

    /**
     * Led state.
     * @author PJ Skyman
     */
    public static enum LedState
    {
        /**
         * Denotes a led turned off.
         */
        OFF,
        /**
         * Denotes a led turned on.
         */
        ON;

        /**
         * Returns the inverse of this led state.
         * @return The inverse of this led state.
         */
        public LedState invert()
        {
            if(this==OFF)
                return ON;
            return OFF;
        }
    }

    /**
     * Button state.
     * @author PJ Skyman
     */
    public static enum ButtonState
    {
        /**
         * Denotes a pushed button.
         */
        BUTTON_PUSHED,
        /**
         * Denotes a released button.
         */
        BUTTON_RELEASED;

        /**
         * Returns the button state associated with the specified button action.
         * @param buttonAction Button action to convert.
         * @return The button state associated with the specified button action.
         */
        public static ButtonState getButtonStateForButtonAction(ButtonAction buttonAction)
        {
            return buttonAction==ButtonAction.BUTTON_PUSHED?BUTTON_PUSHED:BUTTON_RELEASED;
        }
    }
}