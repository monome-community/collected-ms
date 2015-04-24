package sky.monome.behavior;

import sky.monome.LedButtonCouple.LedState;
import sky.monome.Monome;
import sky.monome.behavior.OptionalRadio.OptionalRadioGroup;
import sky.monome.behavior.AbstractRadio.AbstractRadioGroup;
import sky.monome.event.button.ButtonEvent.ButtonAction;
import sky.monome.exception.MonomeException;

/**
 * Behavior that creates mutual selections/unselections, like radio fields in a form.
 * An {@link sky.monome.behavior.OptionalRadio OptionalRadio} is associated to a {@link sky.monome.behavior.OptionalRadio.OptionalRadioGroup OptionalRadioGroup}.
 * The {@link sky.monome.behavior.OptionalRadio.OptionalRadioGroup OptionalRadioGroup} is responsible for ensuring the unity of the selection inside the group,
 * but you can deselect all radios by pressing on the currently selected one.
 * @author PJ Skyman
 */
public class OptionalRadio extends AbstractRadio<OptionalRadioGroup>
{
    /**
     * Constructs an optional radio behavior associated to the specified optional radio group.
     * @param optionalRadioGroup Optional radio group that will be associated to this optional radio behavior.
     */
    public OptionalRadio(OptionalRadioGroup optionalRadioGroup)
    {
        super(optionalRadioGroup);
    }

    /**
     * Notifies this optional radio behavior that an action on the button is performed.
     * @param buttonAction Button action that is performed.
     * @throws sky.monome.exception.MonomeException When a led state can't be modified.
     */
    public void notify(ButtonAction buttonAction) throws MonomeException
    {
        if(buttonAction==ButtonAction.BUTTON_PUSHED)
        {
            if(ledButtonCouple.getLedState()==LedState.OFF)
                ledButtonCouple.setLedState(LedState.ON,true);
            else
                ledButtonCouple.setLedState(LedState.OFF,true);
            if(group!=null)
                group.notify(this);
        }
    }

    /**
     * Initializes this optional radio behavior and the registered led/button couple.
     * Only led/button couples should call this method, and should call it only one time.
     * @throws sky.monome.exception.MonomeException When the initialization of this behavior and the registered led/button couple was not possible.
     */
    public void init() throws MonomeException
    {
        off();
        group.addRadio(this);
    }

    /**
     * Optional radio group which is responsible for the permanent exclusivity of the last pressed optional radio button.
     * With this type of radio group, it is possible to deselect all radios by pressing on the currently selected one.
     * @author PJ Skyman
     */
    public static class OptionalRadioGroup extends AbstractRadioGroup<OptionalRadio,OptionalRadioGroup>
    {
        /**
         * Constructs an optional radio group.
         */
        public OptionalRadioGroup()
        {
        }

        /**
         * Adds the specified optional radio behavior to the list of associated optional radio behaviors.
         * @param optionalRadio Optional radio behavior to add to the list of associated optional radio behaviors.
         */
        protected void addRadio(OptionalRadio optionalRadio)
        {
            members.add(optionalRadio);
        }
    }
}