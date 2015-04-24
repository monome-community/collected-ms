package sky.monome.behavior;

import javax.swing.event.EventListenerList;
import sky.monome.behavior.Member.Group;
import sky.monome.event.button.ButtonEvent;
import sky.monome.event.button.ButtonEvent.ButtonAction;
import sky.monome.event.button.ButtonListener;
import sky.monome.event.button.ButtonManager;
import sky.monome.exception.MonomeException;
import sky.monome.util.SynchronizedList;
import sky.monome.util.ThreadWithUserObjects;

/**
 * Member behavior. With this type of behavior, grouped led/button couples can work together.
 * By example, it is possible to make radio buttons, or synchronized leds.
 * Each member can be included into a group represented by the {@link sky.monome.behavior.Member.Group Group} class.
 * @author PJ Skyman
 * @param <G> Type of group associated to this type of member.
 * @since SkyMonome v1.1
 */
public abstract class Member<G extends Group<?,G>> extends StaticBehavior
{
    /**
     * Associated group.
     */
    protected final G group;

    /**
     * Constructs a member that is associated to the specified group.
     * @param group Group that will be associated to this member behavior.
     */
    protected Member(G group)
    {
        this.group=group;
    }

    /**
     * Returns the group associated to this member behavior.
     * @return The group associated to this member behavior.
     */
    public G getGroup()
    {
        return group;
    }

    /**
     * Group of members which is responsible for a common behavior between all associated members.
     * @param <M> Type of member behaviors that this group will contain.
     * @param <G> Type of group that extends this abstract group.
     * @author PJ Skyman
     * @since SkyMonome v1.1
     */
    public abstract static class Group<M extends Member<G>,G extends Group<M,G>> implements ButtonManager<G>
    {
        /**
         * List of all listeners registered with this group.
         */
        protected final EventListenerList eventListenerList;
        /**
         * List of all member behaviors associated with this group.
         */
        protected final SynchronizedList<M> members;

        /**
         * Constructs a group.
         */
        protected Group()
        {
            members=new SynchronizedList<M>();
            eventListenerList=new EventListenerList();
        }

        /**
         * Adds the specified member behavior to the list of associated member behaviors.
         * @param member Member behavior to add to the list of associated member behaviors.
         * @throws sky.monome.exception.MonomeException In special cases, when a led state can't be initialized.
         */
        protected abstract void addMember(M member) throws MonomeException;

        /**
         * Returns the number of associated member behaviors.
         * @return The number of associated member behaviors.
         */
        public int getMembersNumber()
        {
            return members.size();
        }

        /**
         * Notifies that the specified member behavior is itself notified (the led/button couple notified its behavior).
         * @param member Member behavior that notifies this group.
         * @param buttonAction Button action associated to this notification.
         * @throws sky.monome.exception.MonomeException When a led state can't be modified.
         */
        protected abstract void notify(M member,ButtonAction buttonAction) throws MonomeException;

        
        /**
         * Adds the specified button listener to the list of button listeners.
         * @param buttonListener Button listener to add to the list of button listeners.
         */
        public void addButtonListener(ButtonListener<G> buttonListener)
        {
            eventListenerList.add(ButtonListener.class,buttonListener);
        }

        /**
         * Removes the specified button listener from the list of button listeners.
         * @param buttonListener Button listener to remove from the list of button listeners.
         */
        public void removeButtonListener(ButtonListener<G> buttonListener)
        {
            eventListenerList.remove(ButtonListener.class,buttonListener);
        }

        /**
         * Returns an array of all button listeners.
         * @return An array of all button listeners.
         */
        @SuppressWarnings("unchecked")
        public ButtonListener<G>[] getButtonListeners()
        {
            return eventListenerList.getListeners(ButtonListener.class);
        }

        /**
         * Invoked when a button action occurs.
         * @param buttonManager Button manager that triggered the button event.
         * @param buttonAction Button action that is performed.
         */
        public void fireButtonActionned(G buttonManager,ButtonAction buttonAction)
        {
            for(ButtonListener<G> buttonListener:getButtonListeners())
                new ThreadWithUserObjects(buttonListener,buttonManager,buttonAction)
                {
                    public void run()
                    {
                        this.<ButtonListener<G>>getUserObject(0).buttonActionned(new ButtonEvent<G>(System.currentTimeMillis(),this.<G>getUserObject(1),this.<ButtonAction>getUserObject(2)));
                    }
                }.start();
        }
    }
}