package sky.monome.layer;

import sky.monome.LedButtonCouple;
import sky.monome.LedButtonCouple.LedState;

/**
 * Inverted modification layer that can modify virtually the led state of a led or a whole group of leds.
 * This implementation of {@link sky.monome.layer.LedStateModificationLayer LedStateModificationLayer} interface
 * returns the inverted led state of the led/button couple that is specified.
 * @author PJ Skyman
 * @since SkyMonome v1.1
 */
public class InvertedLedStateModificationLayer implements LedStateModificationLayer
{
    /**
     * Constructs an inverted led state modification layer.
     */
    public InvertedLedStateModificationLayer()
    {
    }

    /**
     * Returns the led state to show instead of the natural led state of the specified led/button couple.
     * This implementation of the {@link sky.monome.layer.LedStateModificationLayer LedStateModificationLayer} interface
     * returns the inverted led state of the specified led/button couple.
     * @param ledButtonCouple led/button couple which is the reference.
     * @return The led state to show instead of the natural led state of the specified led/button couple.
     */
    public LedState getLedStateToShow(LedButtonCouple ledButtonCouple)
    {
        return ledButtonCouple.getLedState().invert();
    }
}