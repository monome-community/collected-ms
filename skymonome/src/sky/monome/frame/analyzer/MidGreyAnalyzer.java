package sky.monome.frame.analyzer;

import sky.monome.LedButtonCouple.LedState;

/**
 * Analyzer for pixels of a picture that is displayed in a {@link sky.monome.frame.PictureFrame PictureFrame}.
 * The mid-grey analyzer returns {@link sky.monome.LedButtonCouple.LedState#ON LedState.ON}
 * when the average of these three values is over or equal to 128, {@link sky.monome.LedButtonCouple.LedState#OFF LedState.OFF} otherwise.
 * @author PJ Skyman
 */
public class MidGreyAnalyzer implements PictureAnalyzer
{
    /**
     * Constructs a mid grey analyzer.
     */
    public MidGreyAnalyzer()
    {
    }

    /**
     * Returns the led state that corresponds to specified Red/Green/Blue informations.
     * The mid-grey analyzer returns {@link sky.monome.LedButtonCouple.LedState#ON LedState.ON}
     * when the average of these three values is over or equal to 128, {@link sky.monome.LedButtonCouple.LedState#OFF LedState.OFF} otherwise.
     * @param pixel Red/Green/Blue informations of the desired pixel specified in an array of three integer values between 0 and 255 (included).
     * @return The led state that corresponds to specified Red/Green/Blue informations.
     */
    public LedState getLedStateForPixel(int[] pixel)
    {
        int combinedPixel=pixel[0]+pixel[1]+pixel[2];
        return combinedPixel>=128*3?LedState.ON:LedState.OFF;
    }
}