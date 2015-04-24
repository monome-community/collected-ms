package sky.monome.frame;

import sky.monome.LedButtonCouple.LedState;

/**
 * Frame that can be shown or used in multiple ways.
 * @author PJ Skyman
 */
public interface Frame
{
    /**
     * Returns the led state at specified coordinates.
     * @param x X-coordinate of the led state needed.
     * @param y Y-coordinate of the led state needed.
     * @return The led state at specified coordinates.
     */
    public LedState get(int x,int y);

    /**
     * Modifies the led state at specified coordinates.
     * @param x X-coordinate of the led state to be modified.
     * @param y Y-coordinate of the led state to be modified.
     * @param ledState New led state to affect at specified coordinate.
     */
    public void set(int x,int y,LedState ledState);
}