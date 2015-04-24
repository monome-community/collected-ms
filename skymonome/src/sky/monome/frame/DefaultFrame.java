package sky.monome.frame;

import sky.monome.LedButtonCouple.LedState;

/**
 * Sized frame in its simpliest form.
 * @author PJ Skyman
 */
public class DefaultFrame implements SizedFrame
{
    /**
     * Width of this frame.
     */
    protected final int width;
    /**
     * Height of this frame.
     */
    protected final int height;
    /**
     * Led states matrix of this frame.
     */
    protected final LedState[][] matrix;

    /**
     * Constructs a default frame with the specified size.
     * @param width Width of this frame.
     * @param height Height of this frame.
     */
    public DefaultFrame(int width,int height)
    {
        this.width=width;
        this.height=height;
        matrix=new LedState[width][height];
        clear();
    }

    /**
     * Returns the led state at specified coordinates.
     * @param x X-coordinate of the led state needed.
     * @param y Y-coordinate of the led state needed.
     * @return The led state at specified coordinates.
     */
    public LedState get(int x,int y)
    {
        return matrix[x][y];
    }

    /**
     * Modifies the led state at specified coordinates.
     * @param x X-coordinate of the led state to be modified.
     * @param y Y-coordinate of the led state to be modified.
     * @param ledState New led state to affect at specified coordinate.
     */
    public void set(int x,int y,LedState ledState)
    {
        matrix[x][y]=ledState;
    }

    /**
     * Clears all led states in the matrix of this frame.
     * The default value {@link sky.monome.LedButtonCouple.LedState#OFF LedState.OFF} is affected.
     */
    public void clear()
    {
        clear(LedState.OFF);
    }

    /**
     * Clears all led states in the matrix of this frame.
     * @param ledState Led state to affect.
     */
    public void clear(LedState ledState)
    {
        for(int i=0;i<matrix.length;i++)
            for(int j=0;j<matrix[i].length;j++)
                matrix[i][j]=ledState;
    }

    /**
     * Returns the width of this frame.
     * @return The width of this frame.
     */
    public int getWidth()
    {
        return width;
    }

    /**
     * Returns the height of this frame.
     * @return The height of this frame.
     */
    public int getHeight()
    {
        return height;
    }
}