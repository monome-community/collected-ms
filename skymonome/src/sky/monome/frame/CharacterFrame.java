package sky.monome.frame;

import java.awt.Font;
import java.awt.font.FontRenderContext;
import java.awt.font.TextLayout;
import java.awt.geom.AffineTransform;
import java.awt.image.BufferedImage;
import javax.swing.event.EventListenerList;
import sky.monome.LedButtonCouple.LedState;
import sky.monome.event.frame.DynamicFrame;
import sky.monome.event.frame.FrameEvent;
import sky.monome.event.frame.FrameListener;
import sky.monome.util.ThreadWithUserObjects;

/**
 * Frame which displays a character.
 * This frame has a size of 8x8, and uses a {@code new Font("Lucida Sans Typewriter",Font.PLAIN,8)} for displaying the character.
 * The character can be modified after construction, and the frame automatically notifies its frame listeners.
 * @author PJ Skyman
 */
public class CharacterFrame extends DefaultFrame implements DynamicFrame<CharacterFrame>
{
    /**
     * Character that is being displayed in this frame.
     */
    private char character;
    /**
     * List of registered frame listeners.
     */
    private final EventListenerList eventListenerList;

    /**
     * Constructs a character frame with a default space character.
     */
    public CharacterFrame()
    {
        this(' ');
    }

    /**
     * Constructs a character frame with the specified character.
     * @param character Character to display in this character frame.
     */
    public CharacterFrame(char character)
    {
        super(8,8);
        eventListenerList=new EventListenerList();
        setCharacter(character);
    }

    /**
     * Returns the character that is currently being displayed on this frame.
     * @return The character that is currently being displayed in this frame.
     */
    public char getCharacter()
    {
        return character;
    }

    /**
     * Modifies the character that is currently being displayed on this frame.
     * @param character New character that will be displayed on this frame.
     */
    public void setCharacter(char character)
    {
        this.character=character;
        drawCharacter();
    }

    /**
     * Draws the currently displayed character on this frame.
     */
    private void drawCharacter()
    {
        clear();
        TextLayout textLayout=new TextLayout(""+character,new Font("Lucida Sans Typewriter",Font.PLAIN,8),new FontRenderContext(new AffineTransform(),false,false));
        BufferedImage bufferedImage=new BufferedImage(8,8,BufferedImage.TYPE_INT_RGB);
        textLayout.draw(bufferedImage.createGraphics(),0,6);
        for(int i=0;i<8;i++)
            for(int j=0;j<8;j++)
            {
                int[] data=bufferedImage.getData().getPixel(i,j,new int[3]);
                int combinedData=data[0]+data[1]+data[2];
                set(i,j,combinedData==0?LedState.OFF:LedState.ON);
            }
        fireFrameChanged(this);
    }

    /**
     * Adds the specified frame listener to the list of frame listeners.
     * @param frameListener Frame listener to add to the list of frame listeners.
     */
    public void addFrameListener(FrameListener<CharacterFrame> frameListener)
    {
        eventListenerList.add(FrameListener.class,frameListener);
    }

    /**
     * Removes the specified frame listener from the list of frame listeners.
     * @param frameListener Frame listener to remove from the list of frame listeners.
     */
    public void removeFrameListener(FrameListener<CharacterFrame> frameListener)
    {
        eventListenerList.remove(FrameListener.class,frameListener);
    }

    /**
     * Returns an array of all frame listeners.
     * @return An array of all frame listeners.
     */
    @SuppressWarnings("unchecked")
    public FrameListener<CharacterFrame>[] getFrameListeners()
    {
        return eventListenerList.getListeners(FrameListener.class);
    }

    /**
     * Invoked when a frame change occurs.
     * @param dynamicFrame Dynamic frame that triggered the frame event.
     */
    public void fireFrameChanged(CharacterFrame dynamicFrame)
    {
        for(FrameListener<CharacterFrame> frameListener:getFrameListeners())
            new ThreadWithUserObjects(frameListener,dynamicFrame)
            {
                public void run()
                {
                    this.<FrameListener<CharacterFrame>>getUserObject(0).frameChanged(new FrameEvent<CharacterFrame>(System.currentTimeMillis(),this.<CharacterFrame>getUserObject(1)));
                }
            }.start();
    }

    /**
     * Returns the width of this frame.
     * @return The width of this frame.
     */
    @Override
    public int getWidth()
    {
        return 8;
    }

    /**
     * Returns the height of this frame.
     * @return The height of this frame.
     */
    @Override
    public int getHeight()
    {
        return 8;
    }
}