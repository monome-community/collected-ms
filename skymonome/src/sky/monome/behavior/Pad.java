package sky.monome.behavior;

import java.awt.Rectangle;
import sky.monome.Container;
import sky.monome.LedButtonCouple;
import sky.monome.LedButtonCouple.ButtonState;
import sky.monome.LedButtonCouple.LedState;
import sky.monome.Monome;
import sky.monome.behavior.Member.Group;
import sky.monome.behavior.Pad.PadGroup;
import sky.monome.behavior.factory.BehaviorFactory;
import sky.monome.event.button.ButtonEvent.ButtonAction;
import sky.monome.event.button.ButtonListener;
import sky.monome.exception.MonomeException;
import sky.monome.frame.Frame;
import sky.monome.util.OSCMessageDigester;

/**
 * Pad behavior. A pad can be included in a pad group. With pads, you can
 * build synchronized led/button couples. It is possible to specify the behavior that
 * the group will adopt with the set of all associated pads.
 * @author PJ Skyman
 * @since SkyMonome v1.1
 */
public class Pad extends Member<PadGroup>
{
    /**
     * Constructs a pad that is associated to the specified pad group.
     * @param padGroup Pad group that will be associated to this pad behavior.
     */
    public Pad(PadGroup padGroup)
    {
        super(padGroup);
    }

    /**
     * Notifies this behavior that an action on the button is performed.
     * @param buttonAction Button action that is performed.
     * @throws sky.monome.exception.MonomeException When a led state can't be modified.
     */
    public void notify(ButtonAction buttonAction) throws MonomeException
    {
        if(group!=null)
            group.notify(this,buttonAction);
    }

    /**
     * Initializes this behavior and the registered led/button couple.
     * Only led/button couples should call this method, and should call it only one time.
     * @throws sky.monome.exception.MonomeException When the initialization of this behavior and the registered led/button couple was not possible.
     */
    public void init() throws MonomeException
    {
        group.addMember(this);
    }

    /**
     * Group of pads which is responsible for the synchronization between all associated pads.
     * @author PJ Skyman
     * @since SkyMonome v1.1
     */
    public static class PadGroup extends Group<Pad,PadGroup>
    {
        /**
         * Common behavior of this group. This behavior is used for the synchronization of all associated pads.
         */
        protected final Behavior behavior;
        /**
         * Virtual led/button couple that is registered to the common behavior of this group.
         * This "lure" is used to propagate its led state changes to all pads simultaneously.
         */
        protected final Lure lure;

        /**
         * Constructs a pad group.
         * A default {@link sky.monome.behavior.LightOnPush LightOnPush} common behavior is internally used.
         * @throws sky.monome.exception.MonomeException When a led state can't be initialized.
         */
        public PadGroup() throws MonomeException
        {
            this(new LightOnPush());
        }

        /**
         * Constructs a pad group with the specified behavior factory.
         * @param behaviorFactory Behavior factory that will create a common behavior for internal use.
         * @throws sky.monome.exception.MonomeException When a led state can't be initialized, or when the behavior factory
         * can't build a behavior for this pad group.
         */
        public PadGroup(BehaviorFactory behaviorFactory) throws MonomeException
        {
            this(behaviorFactory.createBehavior());
        }

        /**
         * Constructs a pad group with the specified behavior.
         * @param behavior Common behavior for internal use.
         * @throws sky.monome.exception.MonomeException When a led state can't be initialized.
         */
        public PadGroup(Behavior behavior) throws MonomeException
        {
            this.behavior=behavior;
            lure=new Lure(behavior);
            setLedStates(lure.getLedState());
        }

        /**
         * Returns the common behavior that is internally used for the synchronization of all associated pads.
         * @return The common behavior that is internally used for the synchronization of all associated pads.
         */
        protected Behavior getBehavior()
        {
            return behavior;
        }

        /**
         * Sets the led states of all associated pads.
         * @param ledState New led state to give to all associated pads.
         * @throws sky.monome.exception.MonomeException When a led state can't be modified, or when the Monome device can't be refreshed.
         */
        protected void setLedStates(LedState ledState) throws MonomeException
        {
            synchronized(members.getLockObject())
            {
                for(Pad pad:members)
                    pad.getLedButtonCouple().setLedState(ledState,false);
            }
            if(members.size()>0)
                members.get(0).getLedButtonCouple().getMonome().refresh();
        }

        /**
         * Adds the specified member behavior to the list of associated member behaviors.
         * @param member Member behavior to add to the list of associated member behaviors.
         */
        protected void addMember(Pad member)
        {
            members.add(member);
            try
            {
                member.getLedButtonCouple().setLedState(lure.getLedState(),false);
            }
            catch(MonomeException e)
            {
            }
        }

        /**
         * Notifies that the specified pad behavior is itself notified (the led/button couple had notified its pad behavior).
         * @param member Pad behavior that notifies this pad group.
         * @param buttonAction Button action associated to this notification.
         * @throws sky.monome.exception.MonomeException When a led state can't be modified.
         */
        protected void notify(Pad member,ButtonAction buttonAction) throws MonomeException
        {
            lure.setButtonState(ButtonState.getButtonStateForButtonAction(buttonAction));
            behavior.notify(buttonAction);
            fireButtonActionned(this,buttonAction);
        }

        /**
         * Virtual led/button couple internally associated with the common behavior of the pad group.
         * @author PJ Skyman
         * @since SkyMonome v1.1
         */
        protected class Lure extends LedButtonCouple
        {
            /**
             * Constructs a "lure" with the specified common behavior.
             * @param behavior Common behavior which will be associated to this "lure".
             * @throws sky.monome.exception.MonomeException When this "lure" can't be initialized.
             */
            protected Lure(Behavior behavior) throws MonomeException
            {
                super("",-1,-1,behavior);
            }

            /**
             * Adds the specified listener to the listeners list of this button.
             * This method does nothing.
             * @param buttonListener Listener to add to the listeners list of this button.
             */
            @Override
            public void addButtonListener(ButtonListener<LedButtonCouple> buttonListener)
            {
            }

            /**
             * Indicates whether this led/button couple can have a parent container in the Monome assembling tree.
             * @return Always {@code false}.
             */
            @Override
            public boolean canHaveParentContainer()
            {
                return false;
            }

            /**
             * Notifies all the listeners that a new button action occured.
             * This method does nothing.
             * @param buttonManager Button manager that triggered the button event.
             * @param buttonAction Button action performed on the specified button manager.
             */
            @Override
            public void fireButtonActionned(LedButtonCouple buttonManager,ButtonAction buttonAction)
            {
            }

            /**
             * Returns the absolute X-coordinate of this led/button couple.
             * @return {@code 0}.
             */
            @Override
            public int getAbsoluteX()
            {
                return 0;
            }

            /**
             * Returns the absolute Y-coordinate of this led/button couple.
             * @return {@code 0}.
             */
            @Override
            public int getAbsoluteY()
            {
                return 0;
            }

            /**
             * Returns the bounds of this led/button couple in the local context of its container.
             * @return A default rectangle with null dimensions and null coordinates.
             */
            @Override
            public Rectangle getBounds()
            {
                return new Rectangle();
            }

            /**
             * Returns an array of all listeners contained in the listeners list of this button.
             * The returned array is always empty.
             * @return An array of all listeners contained in the listeners list of this button.
             */
            @Override
            @SuppressWarnings("unchecked")
            public ButtonListener<LedButtonCouple>[] getButtonListeners()
            {
                return new ButtonListener[0];
            }

            /**
             * Returns the logical Monome device that contains this led/button couple.
             * The logical Monome device is always at the top of the Monome assembling tree.
             * Note that if the pad group that uses this "lure" has no associated pads, so {@code null} is returned.
             * @return The logical Monome device that contains this led/button couple, or {@code null}.
             */
            @Override
            public Monome getMonome()
            {
                if(members.size()>0)
                    return members.get(0).getLedButtonCouple().getMonome();
                return null;
            }

            /**
             * Initializes the state of this led.
             * This method is exclusively made for use in behaviors.
             * @param ledState Initial state to give to this led.
             */
            @Override
            public void initLedState(boolean ledState)
            {
                super.initLedState(ledState);
                try
                {
                    setLedStates(getLedState());
                }
                catch(MonomeException e)
                {
                }
            }

            /**
             * Indicates whether this led/button couple is actually visible.
             * @return Always {@code true}, since this object is a "lure" and needs to be always active/visible.
             */
            @Override
            public boolean isVisible()
            {
                return true;
            }

            /**
             * Notifies this led/button couple that a message comes from the Monome device.
             * This method does nothing since no Monome device can notify this "lure".
             * @param messageDigester Message digester that prepares and encapsulates the message for an easy access of informations contained in the message.
             * @throws sky.monome.exception.MonomeException When a problem has occured when treating the message.
             * By example, a led/button couple can treat a message by lighting on the led, and lighting on a led is a potentially risked operation.
             */
            @Override
            public void notify(OSCMessageDigester messageDigester) throws MonomeException
            {
            }

            /**
             * Removes the specified listener from the listeners list of this button.
             * This method does nothing.
             * @param buttonListener Listener to remove from the listeners list of this button.
             */
            @Override
            public void removeButtonListener(ButtonListener<LedButtonCouple> buttonListener)
            {
            }

            /**
             * Modifies the state of this button.
             * @param buttonState state New state of this button, among {@link sky.monome.LedButtonCouple.ButtonState#BUTTON_PUSHED ButtonState.BUTTON_PUSHED} and {@link sky.monome.LedButtonCouple.ButtonState#BUTTON_RELEASED ButtonState.BUTTON_RELEASED}.
             */
            @Override
            protected void setButtonState(ButtonState buttonState)
            {
                super.setButtonState(buttonState);
            }

            /**
             * Modifies the state of this led.
             * @param ledState New state to give to this led, among {@link sky.monome.LedButtonCouple.LedState#ON LedState.ON} and {@link sky.monome.LedButtonCouple.LedState#OFF LedState.OFF}.
             * @param mustRefresh {@code true} if the Monome device must be updated immediately, {@code false} otherwise.
             * This parameter is not used.
             * @throws sky.monome.exception.MonomeException When a led state can't be modified.
             */
            @Override
            public void setLedState(LedState ledState,boolean mustRefresh) throws MonomeException
            {
                this.ledState=ledState;
                setLedStates(ledState);
            }

            /**
             * Returns a string representation of this "lure".
             * @return A string representation of this "lure".
             */
            @Override
            public String toString()
            {
                return "Lure";
            }

            /**
             * Writes this led on the specified frame in order to refresh the Monome device.
             * Once this frame is completed, it is sent to the Monome device.
             * This method does nothing.
             * @param frame Frame in which this led must write its led state.
             * @see sky.monome.Monome#refresh()
             */
            @Override
            public void writeOn(Frame frame)
            {
            }

            /**
             * Returns the container that contains this component.
             * @return Always {@code null}.
             */
            @Override
            public Container getContainer()
            {
                return null;
            }

            /**
             * Returns the name of this component.
             * @return Always an empty string.
             */
            @Override
            public String getName()
            {
                return "";
            }

            /**
             * Returns the X-coordinate of this component in the local context of its container.
             * @return Always {@code 0}.
             */
            @Override
            public int getX()
            {
                return 0;
            }

            /**
             * Returns the Y-coordinate of this component in the local context of its container.
             * @return Always {@code 0}.
             */
            @Override
            public int getY()
            {
                return 0;
            }
        }
    }
}