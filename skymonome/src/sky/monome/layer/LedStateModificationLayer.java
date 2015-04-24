package sky.monome.layer;

import sky.monome.LedButtonCouple;
import sky.monome.LedButtonCouple.LedState;

/**
 * Modification layer that can modify virtually the led state of a led or a whole group of leds.
 * This kind of modification is useful to simulate by example a selection, or an active step while sequencing.
 * Since SkyMonome v1.1, led/button couples are less restrictive to find their own modification layer :
 * <br/>
 * - Firstly, they verify if they are themselves implementations of this interface
 * (in case of you create a subclass of {@link sky.monome.LedButtonCouple}).
 * <br/>
 * - Then, if not, they verify their Monome tree by going up in this tree.
 * The first found container that implements this interface is choosen.
 * <br/>
 * - Finally, if no one is an implementation of this interface, so a
 * {@link sky.monome.layer.DefaultLedStateModificationLayer DefaultLedStateModificationLayer} is used.
 * @author PJ Skyman
 */
public interface LedStateModificationLayer
{
    /**
     * Returns the led state to show instead of the natural led state of the specified led/button couple.
     * @param ledButtonCouple led/button couple which is the reference.
     * @return The led state to show instead of the natural led state of the specified led/button couple.
     */
    public LedState getLedStateToShow(LedButtonCouple ledButtonCouple);
}