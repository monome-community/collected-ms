package sky.monome.layer;

import sky.monome.LedButtonCouple;
import sky.monome.LedButtonCouple.LedState;

/**
 * Default modification layer that can modify virtually the led state of a led or a whole group of leds.
 * This basic implementation of {@link sky.monome.layer.LedStateModificationLayer LedStateModificationLayer} interface
 * simply returns the led state of the led/button couple that is specified.
 * @author PJ Skyman
 */
public class DefaultLedStateModificationLayer implements LedStateModificationLayer
{
    /**
     * Constructs a default led state modification layer.
     */
    public DefaultLedStateModificationLayer()
    {
    }

    /**
     * Returns the led state to show instead of the natural led state of the specified led/button couple.
     * This basic implementation of the {@link sky.monome.layer.LedStateModificationLayer LedStateModificationLayer} interface
     * simply returns the led state of the specified led/button couple.
     * @param ledButtonCouple led/button couple which is the reference.
     * @return The led state to show instead of the natural led state of the specified led/button couple.
     */
    public LedState getLedStateToShow(LedButtonCouple ledButtonCouple)
    {
        return ledButtonCouple.getLedState();
    }
}