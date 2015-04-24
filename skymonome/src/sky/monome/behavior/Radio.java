package sky.monome.behavior;

import sky.monome.LedButtonCouple.LedState;
import sky.monome.behavior.Radio.RadioGroup;
import sky.monome.behavior.AbstractRadio.AbstractRadioGroup;
import sky.monome.event.button.ButtonEvent.ButtonAction;
import sky.monome.exception.MonomeException;

/**
 * Behavior that creates mutual selections/unselections, like radio fields in a form.
 * A {@link sky.monome.behavior.Radio Radio} is associated to a {@link sky.monome.behavior.Radio.RadioGroup RadioGroup}.
 * The {@link sky.monome.behavior.Radio.RadioGroup RadioGroup} is responsible for ensuring the unity of the selection inside the group,
 * and always one radio is selected, even at the beginning.
 * @author PJ Skyman
 */
public class Radio extends AbstractRadio<RadioGroup>
{
    /**
     * Constructs a radio behavior associated to the specified radio group.
     * @param radioGroup Radio group that will be associated to this radio behavior.
     */
    public Radio(RadioGroup radioGroup)
    {
        super(radioGroup);
    }

    /**
     * Notifies this radio behavior that an action on the button is performed.
     * @param buttonAction Button action that is performed.
     * @throws sky.monome.exception.MonomeException When a led state can't be modified.
     */
    public void notify(ButtonAction buttonAction) throws MonomeException
    {
        if(buttonAction==ButtonAction.BUTTON_PUSHED)
        {
            ledButtonCouple.setLedState(LedState.ON,true);
            if(group!=null)
                group.notify(this);
        }
    }

    /**
     * Initializes this radio behavior and the registered led/button couple.
     * Only led/button couples should call this method, and should call it only one time.
     * @throws sky.monome.exception.MonomeException When the initialization of this behavior and the registered led/button couple was not possible.
     */
    public void init() throws MonomeException
    {
        group.addRadio(this);
    }

    /**
     * Radio group which is responsible for the permanent exclusivity of the last pressed radio button.
     * With this type of radio group, always one radio is selected, even at the beginning.
     * @author PJ Skyman
     */
    public static class RadioGroup extends AbstractRadioGroup<Radio,RadioGroup>
    {
        /**
         * Constructs a radio group.
         */
        public RadioGroup()
        {
        }

        /**
         * Adds the specified radio behavior to the list of associated radio behaviors.
         * @param radio Radio behavior to add to the list of associated radio behaviors.
         * @throws sky.monome.exception.MonomeException When a led state can't be initialized.
         */
        protected void addRadio(Radio radio) throws MonomeException
        {
            members.add(radio);
            if(members.size()==1)
                initRadio(radio);
        }
    }
}