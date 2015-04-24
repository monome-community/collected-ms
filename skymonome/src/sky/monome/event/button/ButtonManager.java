package sky.monome.event.button;

import sky.monome.event.button.ButtonEvent.ButtonAction;

/**
 * Manager or container of buttons, or button itself.
 * A button manager can have registered listeners to listen to button events.
 * @param <B> Type of button manager that implements this interface.
 * @author PJ Skyman
 */
public interface ButtonManager<B extends ButtonManager<B>>
{
    /**
     * Adds the specified button listener to the list of button listeners.
     * @param buttonListener Button listener to add to the list of button listeners.
     */
    public void addButtonListener(ButtonListener<B> buttonListener);

    /**
     * Removes the specified button listener from the list of button listeners.
     * @param buttonListener Button listener to remove from the list of button listeners.
     */
    public void removeButtonListener(ButtonListener<B> buttonListener);

    /**
     * Returns an array of all button listeners.
     * @return An array of all button listeners.
     */
    public ButtonListener<B>[] getButtonListeners();

    /**
     * Invoked when a button action occurs.
     * @param buttonManager Button manager that triggered the button event.
     * @param buttonAction Button action that is performed.
     */
    public void fireButtonActionned(B buttonManager,ButtonAction buttonAction);
}