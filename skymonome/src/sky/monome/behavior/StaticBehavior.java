package sky.monome.behavior;

import sky.monome.LedButtonCouple;
import sky.monome.exception.MonomeException;

/**
 * Behavior that has no animation in time. It simply reacts to button pressures.
 * @author PJ Skyman
 */
public abstract class StaticBehavior implements Behavior
{
    /**
     * Registered led/button couple.
     */
    protected LedButtonCouple ledButtonCouple;

    /**
     * Constructs a static behavior.
     */
    public StaticBehavior()
    {
    }

    /**
     * Returns the led/button couple registered with this behavior.
     * @return The led/button couple registered with this behavior.
     */
    public LedButtonCouple getLedButtonCouple()
    {
        return ledButtonCouple;
    }

    /**
     * Modifies the led/button couple registered with this behavior.
     * Note that the behavior can be registered with only one led/button couple in its whole life.
     * If you attempt to register a second led/button couple, so a {@link sky.monome.exception.MonomeException MonomeException} is raised.
     * @param ledButtonCouple New led/button couple to register with this behavior.
     * @throws sky.monome.exception.MonomeException When this behavior is already registered with a led/button couple when this method is called.
     */
    public void setLedButtonCouple(LedButtonCouple ledButtonCouple) throws MonomeException
    {
        if(this.ledButtonCouple!=null)
            throw new MonomeException("The behavior is already registered to "+this.ledButtonCouple);
        this.ledButtonCouple=ledButtonCouple;
    }
}