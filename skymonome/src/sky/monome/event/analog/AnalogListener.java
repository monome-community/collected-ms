package sky.monome.event.analog;

import java.util.EventListener;

/**
 * Listener that listens to analog events.
 * @author PJ Skyman
 */
public interface AnalogListener extends EventListener
{
    /**
     * Invoked when an analog moving occurs.
     * @param analogEvent Informations about the analog event.
     */
    public void analogMoved(AnalogEvent analogEvent);
}