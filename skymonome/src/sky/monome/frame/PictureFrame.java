package sky.monome.frame;

import sky.monome.frame.analyzer.PictureAnalyzer;
import java.awt.image.Raster;
import java.awt.image.RenderedImage;
import sky.monome.LedButtonCouple.LedState;
import sky.monome.frame.analyzer.MidGreyAnalyzer;

/**
 * Frame that displays a {@link java.awt.image.RenderedImage RenderedImage}.
 * This frame takes dimensions of the specified image.
 * @author PJ Skyman
 */
public class PictureFrame extends DefaultFrame
{
    /**
     * Constructs a picture frame with the specified picture and the specified negative flag.
     * The default {@link sky.monome.frame.analyzer.MidGreyAnalyzer MidGreyAnalyzer} is used to convert the picture into a matrix of led states.
     * @param renderedImage Picture to display in this picture frame.
     * @param negative Flag that indicates if this picture frame must invert all led states.
     */
    public PictureFrame(RenderedImage renderedImage,boolean negative)
    {
        this(renderedImage,negative,new MidGreyAnalyzer());
    }

    /**
     * Constructs a picture frame with the specified picture, the specified negative flag and the specified picture analyzer.
     * @param renderedImage Picture to display in this picture frame.
     * @param negative Flag that indicates if this picture frame must invert all led states.
     * @param pictureAnalyzer Picture analyzer to use to convert the picture into a matrix of led states.
     */
    public PictureFrame(RenderedImage renderedImage,boolean negative,PictureAnalyzer pictureAnalyzer)
    {
        super(renderedImage.getWidth(),renderedImage.getHeight());
        Raster raster=renderedImage.getData();
        for(int i=0;i<renderedImage.getWidth();i++)
            for(int j=0;j<renderedImage.getHeight();j++)
            {
                LedState ledState=pictureAnalyzer.getLedStateForPixel(raster.getPixel(i,j,new int[3]));
                set(i,j,negative?ledState.invert():ledState);
            }
    }
}