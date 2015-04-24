package sky.monome.event.sequencer;

import java.util.EventListener;
import sky.monome.event.button.ButtonManager;

/**
 * Listener that listens to sequencer events.
 * @param <S> Type of sequencer components that work with these sequencer listeners.
 * @param <B> Type of button managers that are used by sequencer components that work with these sequencer listeners.
 * @author PJ Skyman
 */
public interface SequencerListener<S extends SequencerComponent<S,B>,B extends ButtonManager<B>> extends EventListener
{
    /**
     * Invoked when a step changing occurs.
     * @param sequencerEvent Informations about the sequencer event.
     */
    public void stepChanged(SequencerEvent<S,B> sequencerEvent);
}