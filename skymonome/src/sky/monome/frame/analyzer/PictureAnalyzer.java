package sky.monome.frame.analyzer;

import sky.monome.LedButtonCouple.LedState;

/**
 * Analyzer for pixels of a picture that is displayed in a {@link sky.monome.frame.PictureFrame PictureFrame}.
 * These objects return a led state for each pixel, and the calculation is based on Red/Green/Blue informations.
 * @author PJ Skyman
 */
public interface PictureAnalyzer
{
    /**
     * Returns the led state that corresponds to specified Red/Green/Blue informations.
     * @param pixel Red/Green/Blue informations of the desired pixel specified in an array of three integer values between 0 and 255 (included).
     * @return The led state that corresponds to specified Red/Green/Blue informations.
     */
    public LedState getLedStateForPixel(int[] pixel);
}