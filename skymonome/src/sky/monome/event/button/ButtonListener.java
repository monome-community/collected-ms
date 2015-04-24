package sky.monome.event.button;

import java.util.EventListener;

/**
 * Listener that listens to button events.
 * @param <B> Type of button manager that is used with button listeners.
 * @author PJ Skyman
 */
public interface ButtonListener<B extends ButtonManager<B>> extends EventListener
{
    /**
     * Invoked when a button actionning occurs.
     * @param buttonEvent Informations about the button event.
     */
    public void buttonActionned(ButtonEvent<B> buttonEvent);
}