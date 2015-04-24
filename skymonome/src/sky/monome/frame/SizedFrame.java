package sky.monome.frame;

/**
 * Frame that have fixed size.
 * @author PJ Skyman
 */
public interface SizedFrame extends Frame
{
    /**
     * Returns the width of this sized frame.
     * @return The width of this sized frame.
     */
    public int getWidth();

    /**
     * Returns the height of this sized frame.
     * @return The height of this sized frame.
     */
    public int getHeight();
}