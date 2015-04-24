package sky.monome.behavior;

import sky.monome.LedButtonCouple.LedState;
import sky.monome.behavior.AbstractRadio.AbstractRadioGroup;
import sky.monome.behavior.Member.Group;
import sky.monome.event.button.ButtonEvent.ButtonAction;
import sky.monome.exception.MonomeException;
import sky.monome.util.SynchronizedList;

/**
 * Behavior that creates mutual selections/unselections, like radio fields in a form.
 * A radio behavior is associated to a radio group. The radio group is responsible for ensuring the unity of the selection inside the group.
 * @author PJ Skyman
 * @param <T> Type of the associated radio group.
 */
public abstract class AbstractRadio<T extends AbstractRadioGroup<?,T>> extends Member<T>
{
    /**
     * Associated radio group.
     * @deprecated Since SkyMonome v1.1, this field is not used anymore.
     * Please use the field {@link #group group} instead.
     */
    @Deprecated
    protected final T radioGroup;

    /**
     * Constructs a radio behavior associated to the specified radio group.
     * @param radioGroup Radio group that will be associated to this radio behavior.
     */
    public AbstractRadio(T radioGroup)
    {
        super(radioGroup);
        this.radioGroup=null;
    }

    /**
     * Sets the led state of the registered led/button couple off.
     * This method should only be called by radio groups when a radio button is pressed.
     * @throws sky.monome.exception.MonomeException When the led state can't be modified.
     */
    protected void off() throws MonomeException
    {
        ledButtonCouple.setLedState(LedState.OFF,false);
    }

    /**
     * Returns the radio group associated to this radio behavior.
     * @return The radio group associated to this radio behavior.
     */
    public T getRadioGroup()
    {
        return getGroup();
    }

    /**
     * Returns the group associated to this member behavior.
     * @return The group associated to this member behavior.
     * @deprecated With a radio, it is recommended to use the
     * {@link #getRadioGroup() getRadioGroup()} method instead of this one.
     */
    @Deprecated
    public T getGroup()
    {
        return group;
    }

    /**
     * Radio group which is responsible for the permanent exclusivity of the last pressed radio button.
     * @param <T> Type of radio behaviors that this radio group will contain.
     * @param <G> Type of radio group that extends this abstract radio group.
     * @author PJ Skyman
     */
    public abstract static class AbstractRadioGroup<T extends AbstractRadio<G>,G extends AbstractRadioGroup<T,G>> extends Group<T,G>
    {
        /**
         * List of all radio behaviors associated with this radio group.
         * @deprecated Since SkyMonome v1.1, this field is not used anymore.
         * Please use the field {@link #members members} instead.
         */
        @Deprecated
        protected final SynchronizedList<T> radios;

        /**
         * Constructs a radio group.
         */
        public AbstractRadioGroup()
        {
            radios=null;
        }

        /**
         * Returns the currently selected radio behavior, or {@code null} if none is selected.
         * @return The currently selected radio behavior, or {@code null} if none is selected.
         */
        public T getActiveRadio()
        {
            synchronized(members.getLockObject())
            {
                for(T radio:members)
                    if(radio.getLedButtonCouple().getLedState()==LedState.ON)
                        return radio;
            }
            return null;
        }

        /**
         * Adds the specified radio behavior to the list of associated radio behaviors.
         * @param radio Radio behavior to add to the list of associated radio behaviors.
         * @throws sky.monome.exception.MonomeException In special cases, when a led state can't be initialized.
         */
        protected abstract void addRadio(T radio) throws MonomeException;

        /**
         * Adds the specified member behavior to the list of associated member behaviors.
         * @param member Member behavior to add to the list of associated member behaviors.
         * @throws sky.monome.exception.MonomeException In special cases, when a led state can't be initialized.
         * @since SkyMonome v1.1
         * @deprecated With a radio group, it is recommended to use the
         * {@link #addRadio(sky.monome.behavior.AbstractRadio) addRadio(T)} method instead of this one.
         */
        @Deprecated
        protected void addMember(T member) throws MonomeException
        {
            addRadio(member);
        }

        /**
         * Returns the number of associated radio behaviors.
         * @return The number of associated radio behaviors.
         * @since SkyMonome v1.1
         */
        public int getRadiosNumber()
        {
            return getMembersNumber();
        }

        /**
         * Notifies that the specified radio behavior is itself notified (the led/button couple notified its behavior).
         * @param radio Radio behavior that notifies this radio group.
         * @throws sky.monome.exception.MonomeException When a led state can't be modified.
         */
        @SuppressWarnings("unchecked")
        protected void notify(T radio) throws MonomeException
        {
            synchronized(members.getLockObject())
            {
                for(T aRadio:members)
                    if(aRadio!=radio)
                        aRadio.off();
            }
            fireButtonActionned((G)this,ButtonAction.BUTTON_PUSHED);
        }

        /**
         * Notifies that the specified member behavior is itself notified (the led/button couple notified its behavior).
         * @param member Member behavior that notifies this group.
         * @param buttonAction Button action associated to this notification.
         * @throws sky.monome.exception.MonomeException When a led state can't be modified.
         * @since SkyMonome v1.1
         * @deprecated With a radio group, it is recommended to use the
         * {@link #notify(sky.monome.behavior.AbstractRadio) notify(T)} method instead of this one,
         * because radio groups are notified only with button press actions.
         */
        @Deprecated
        protected void notify(T member,ButtonAction buttonAction) throws MonomeException
        {
            if(buttonAction==ButtonAction.BUTTON_PUSHED)
                notify(member);
        }

        /**
         * Initializes the specified radio behavior in the context of this radio group.
         * @param radio Radio behavior that must be initialized.
         * @throws sky.monome.exception.MonomeException When a led state can't be modified.
         */
        public void initRadio(T radio) throws MonomeException
        {
            if(members.contains(radio))
                radio.notify(ButtonAction.BUTTON_PUSHED);
        }
    }
}