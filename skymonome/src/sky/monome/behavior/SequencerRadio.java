package sky.monome.behavior;

import sky.monome.LedButtonCouple.LedState;
import sky.monome.behavior.AbstractRadio.AbstractRadioGroup;
import sky.monome.behavior.SequencerRadio.SequencerRadioGroup;
import sky.monome.event.button.ButtonEvent.ButtonAction;
import sky.monome.exception.MonomeException;

/**
 * Behavior that creates mutual selections/unselections, like radio fields in a form.
 * A {@link sky.monome.behavior.SequencerRadio SequencerRadio} is associated to a {@link sky.monome.behavior.SequencerRadio.SequencerRadioGroup SequencerRadioGroup}.
 * The {@link sky.monome.behavior.SequencerRadio.SequencerRadioGroup SequencerRadioGroup} is responsible for ensuring the unity of the selection inside the group,
 * and you have the choice between a {@link sky.monome.behavior.Radio Radio} and a
 * {@link sky.monome.behavior.OptionalRadio OptionalRadio} attitude with a simple boolean.
 * @see sky.monome.behavior.Radio.RadioGroup
 * @see sky.monome.behavior.OptionalRadio.OptionalRadioGroup
 * @author PJ Skyman
 * @since SkyMonome v1.1
 */
public class SequencerRadio extends AbstractRadio<SequencerRadioGroup>
{
    /**
     * Constructs a sequencer radio behavior associated to the specified sequencer radio group.
     * @param sequencerRadioGroup Sequencer radio group that will be associated to this sequencer radio behavior.
     */
    public SequencerRadio(SequencerRadioGroup sequencerRadioGroup)
    {
        super(sequencerRadioGroup);
    }

    /**
     * Notifies this sequencer radio behavior that an action on the button is performed.
     * @param buttonAction Button action that is performed.
     * @throws sky.monome.exception.MonomeException When a led state can't be modified.
     */
    public void notify(ButtonAction buttonAction) throws MonomeException
    {
        if(buttonAction==ButtonAction.BUTTON_PUSHED)
        {
            if(!group.optional)
                ledButtonCouple.setLedState(LedState.ON,true);
            else
                if(ledButtonCouple.getLedState()==LedState.OFF)
                    ledButtonCouple.setLedState(LedState.ON,true);
                else
                    ledButtonCouple.setLedState(LedState.OFF,true);
            if(group!=null)
                group.notify(this);
        }
    }

    /**
     * Initializes this sequencer radio behavior and the registered led/button couple.
     * Only led/button couples should call this method, and should call it only one time.
     * @throws sky.monome.exception.MonomeException When the initialization of this behavior and the registered led/button couple was not possible.
     */
    public void init() throws MonomeException
    {
        if(group.optional)
            off();
        group.addRadio(this);
    }

    /**
     * Sequencer radio group which is responsible for the permanent exclusivity of the last pressed sequencer radio button.
     * With this type of radio group, the boolean passed at the construction of the group condition whether always one radio is selected, even at the beginning,
     * or whether it is possible to deselect all radios by pressing on the currently selected one.
     * @author PJ Skyman
     * @since SkyMonome v1.1
     */
    public static class SequencerRadioGroup extends AbstractRadioGroup<SequencerRadio,SequencerRadioGroup>
    {
        private boolean optional;

        /**
         * Constructs a sequencer radio group.
         * @param optional Boolean that condition whether always one radio is selected, even at the beginning,
         * or whether it is possible to deselect all radios by pressing on the currently selected one.
         */
        public SequencerRadioGroup(boolean optional)
        {
            this.optional=optional;
        }

        /**
         * Adds the specified radio behavior to the list of associated radio behaviors.
         * @param sequencerRadio Radio behavior to add to the list of associated radio behaviors.
         * @throws sky.monome.exception.MonomeException When a led state can't be initialized.
         */
        protected void addRadio(SequencerRadio sequencerRadio) throws MonomeException
        {
            members.add(sequencerRadio);
            if(!optional&&members.size()==1)
                initRadio(sequencerRadio);
        }
    }
}
