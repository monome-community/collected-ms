package sky.monome;

import sky.monome.LedButtonCouple.LedState;
import sky.monome.behavior.Behavior;
import sky.monome.behavior.StaticBehavior;
import sky.monome.behavior.factory.BehaviorFactory;
import sky.monome.event.button.ButtonEvent.ButtonAction;
import sky.monome.event.frame.DynamicFrame;
import sky.monome.event.frame.FrameEvent;
import sky.monome.event.frame.FrameListener;
import sky.monome.event.frame.FrameListenerWithArguments;
import sky.monome.exception.MonomeException;
import sky.monome.frame.AbstractWindow;
import sky.monome.frame.Frame;
import sky.monome.util.OSCMessageDigester;

/**
 * Group of leds that shows frames.
 * @author PJ Skyman
 */
public class FrameGroup extends LedButtonGroup
{
    /**
     * Frame shown in this frame group.
     */
    private Frame frame;

    /**
     * Constructs a frame group with specified coordinates and dimensions, the specified name, and contained by the specified container.
     * An empty frame will be shown, with all leds off.
     * @param name Name of this frame group.
     * @param container Container that contains this frame group.
     * @param x X-coordinate of this frame group in the local context of its container.
     * @param y Y-coordinate of this frame group in the local context of its container.
     * @param width Width of this frame group.
     * @param height Height of this frame group.
     * @throws sky.monome.exception.MonomeException When led states can't be initialized.
     * @deprecated Since SkyMonome v1.2, all components register themselves inside their
     * container, so you don't need to specify the container by calling this constructor.
     */
    @Deprecated
    public FrameGroup(String name,Container container,int x,int y,int width,int height) throws MonomeException
    {
        this(name,container,x,y,width,height,new EmptyFrame());
    }

    /**
     * Constructs a frame group with specified coordinates and dimensions and the specified name.
     * An empty frame will be shown, with all leds off.
     * @param name Name of this frame group.
     * @param x X-coordinate of this frame group in the local context of its container.
     * @param y Y-coordinate of this frame group in the local context of its container.
     * @param width Width of this frame group.
     * @param height Height of this frame group.
     * @throws sky.monome.exception.MonomeException When led states can't be initialized.
     * @since SkyMonome v1.2
     */
    public FrameGroup(String name,int x,int y,int width,int height) throws MonomeException
    {
        this(name,x,y,width,height,new EmptyFrame());
    }

    /**
     * Constructs a frame group with specified coordinates and dimensions, the specified name, contained by the specified container,
     * and showing the specified frame.
     * @param name Name of this frame group.
     * @param container Container that contains this frame group.
     * @param x X-coordinate of this frame group.
     * @param y Y-coordinate of this frame group.
     * @param width Width of this frame group.
     * @param height Height of this frame group.
     * @param frame Frame that will be shown in this frame group.
     * @throws sky.monome.exception.MonomeException When led states can't be initialized.
     * @deprecated Since SkyMonome v1.2, all components register themselves inside their
     * container, so you don't need to specify the container by calling this constructor.
     */
    @Deprecated
    public FrameGroup(String name,Container container,int x,int y,int width,int height,Frame frame) throws MonomeException
    {
        super(name,container,x,y,width,height,new BehaviorFactory()
        {
            public Behavior createBehavior(Object... arguments) throws MonomeException
            {
                return new sky.monome.behavior.PassiveBehavior();
            }
        });
        setFrame(frame);
    }

    /**
     * Constructs a frame group with specified coordinates and dimensions, the specified name and showing the specified frame.
     * @param name Name of this frame group.
     * @param x X-coordinate of this frame group.
     * @param y Y-coordinate of this frame group.
     * @param width Width of this frame group.
     * @param height Height of this frame group.
     * @param frame Frame that will be shown in this frame group.
     * @throws sky.monome.exception.MonomeException When led states can't be initialized.
     * @since SkyMonome v1.2
     */
    public FrameGroup(String name,int x,int y,int width,int height,Frame frame) throws MonomeException
    {
        super(name,x,y,width,height,new BehaviorFactory()
        {
            public Behavior createBehavior(Object... arguments) throws MonomeException
            {
                return new sky.monome.behavior.PassiveBehavior();
            }
        });
        setFrame(frame);
    }

    /**
     * Modifies the frame that is shown in this frame group.
     * If the new frame is an instance of {@link sky.monome.event.frame.DynamicFrame DynamicFrame}, so a special
     * auto-refreshing listener is added to the frame.
     * If the old frame is an instance of {@link sky.monome.event.frame.DynamicFrame DynamicFrame}, so the special
     * auto-refreshing listener that was added is removed from the frame.
     * This kind of auto-refreshing listeners is designed to refresh the Monome device when the frame is internally modified,
     * since it concerns only dynamic frames.
     * @param frame New frame that will replace the old one.
     * @throws sky.monome.exception.MonomeException When led states can't be modified.
     */
    @SuppressWarnings("unchecked")
    public void setFrame(Frame frame) throws MonomeException
    {
        if(this.frame==frame)
            return;
        if(this.frame instanceof DynamicFrame)
        {
            DynamicFrame<?> dynamicFrame=(DynamicFrame<?>)this.frame;
            for(FrameListener frameListener:dynamicFrame.getFrameListeners())
                if(frameListener instanceof RefreshFrameListener)
                    dynamicFrame.removeFrameListener(frameListener);
        }
        if(this.frame instanceof AbstractWindow)
            ((AbstractWindow<?,?>)this.frame).setWindowContainer(null);
        this.frame=frame;
        updateLeds();
        if(frame instanceof DynamicFrame)
            ((DynamicFrame<?>)frame).addFrameListener(new RefreshFrameListener());
        if(frame instanceof AbstractWindow)
            ((AbstractWindow<?,?>)frame).setWindowContainer(this);
        if(getMonome()!=null)
            getMonome().refresh();
    }

    /**
     * Updates led states on the Monome device.
     * @throws sky.monome.exception.MonomeException When led states can't be updated.
     */
    private void updateLeds() throws MonomeException
    {
        synchronized(components.getLockObject())
        {
            for(LedButtonCouple ledButtonCouple:components)
                ledButtonCouple.setLedState(frame.get(ledButtonCouple.getX(),ledButtonCouple.getY()),false);
        }
    }

    /**
     * Notifies this frame group that a message comes from the Monome device.
     * A frame group does nothing when it is notified.
     * @param messageDigester Message digester that prepares and encapsulates the message for an easy access of informations contained in the message.
     */
    @Override
    public void notify(OSCMessageDigester messageDigester)
    {
    }

    /**
     * Returns a string representation of this frame group.
     * @return A string representation of this frame group.
     */
    @Override
    public String toString()
    {
        return "FrameGroup "+name;
    }

    /**
     * Led behavior that does nothing when it is notified and does nothing at the initialization.
     * @author PJ Skyman
     * @deprecated Since SkyMonome v1.1, it is recommended to use the
     * {@link sky.monome.behavior.PassiveBehavior PassiveBehavior} class instead of this one.
     */
    @Deprecated
    public static class PassiveBehavior extends StaticBehavior
    {
        /**
         * Constructs a passive behavior.
         */
        public PassiveBehavior()
        {
        }

        /**
         * Notifies this behavior that an action on the button is performed, but this behavior does nothing.
         * @param buttonAction Button action that is performed.
         */
        public void notify(ButtonAction buttonAction)
        {
        }

        /**
         * Initializes this behavior. The initialization of this passive behavior does nothing.
         */
        public void init()
        {
        }
    }

    /**
     * Empty frame that is unmodifiable.
     * @author PJ Skyman
     */
    private static class EmptyFrame implements Frame
    {
        /**
         * Constructs an empty frame.
         */
        private EmptyFrame()
        {
        }

        /**
         * Returns the led state at the specified coordinates.
         * This method returns always {@link sky.monome.LedButtonCouple.LedState#OFF LedState.OFF}.
         * @param x X-coordinate of the led state needed.
         * @param y Y-coordinate of the led state needed.
         * @return Always {@link sky.monome.LedButtonCouple.LedState#OFF LedState.OFF}.
         */
        public LedState get(int x,int y)
        {
            return LedState.OFF;
        }

        /**
         * Modifies the led state at the specified coordinates.
         * This method does always nothing.
         * @param x X-coordinate of the led state to be modified.
         * @param y Y-coordinate of the led state to be modified.
         * @param ledState New led state to affect at the specified coordinate.
         */
        public void set(int x,int y,LedState ledState)
        {
        }
    }

    /**
     * Frame listener that automatically refreshes the Monome device when the associated frame has been internationaly modified.
     * This applies only on {@link sky.monome.event.frame.DynamicFrame DynamicFrame}.
     * @param <F> Type of dynamic frame that is used with frame listeners.
     * @author PJ Skyman
     */
    private class RefreshFrameListener<F extends DynamicFrame<F>> extends FrameListenerWithArguments<F>
    {
        /**
         * Constructs a refresh frame listener.
         */
        private RefreshFrameListener()
        {
        }

        /**
         * Invoked when a frame event occurs.
         * @param frameEvent Informations about the frame event.
         */
        public void frameChanged(FrameEvent<F> frameEvent)
        {
            try
            {
                updateLeds();
                if(getMonome()!=null)
                    getMonome().refresh();
            }
            catch(MonomeException e)
            {
                e.printStackTrace();
            }
        }
    }
}