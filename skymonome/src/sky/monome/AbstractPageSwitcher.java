package sky.monome;

import sky.monome.LedButtonCouple.LedState;
import sky.monome.exception.MonomeException;
import sky.monome.frame.Frame;
import sky.monome.util.OSCMessageDigester;

/**
 * Page switcher which can show different pages.
 * This class is the base class for all implementations of page switchers.
 * @author PJ Skyman
 */
public abstract class AbstractPageSwitcher extends AbstractGroup<Page>
{
    /**
     * Active page in this page switcher.
     */
    protected Page activePage;

    /**
     * Constructs an abstract page switcher with the specified name, specified coordinates and dimensions, and contained by the specified container.
     * @param name Name of this page switcher.
     * @param container Container that contains this page switcher.
     * @param x X-coordinate of this page switcher in the local context of its container.
     * @param y Y-coordinate of this page switcher in the local context of its container.
     * @param width Width of this page switcher.
     * @param height Height of this page switcher.
     * @deprecated Since SkyMonome v1.2, all components register themselves inside their
     * container, so you don't need to specify the container by calling this constructor.
     */
    @Deprecated
    public AbstractPageSwitcher(String name,Container container,int x,int y,int width,int height)
    {
        super(name,container,x,y,width,height);
        activePage=null;
    }

    /**
     * Constructs an abstract page switcher with the specified name and specified coordinates and dimensions.
     * @param name Name of this page switcher.
     * @param x X-coordinate of this page switcher in the local context of its container.
     * @param y Y-coordinate of this page switcher in the local context of its container.
     * @param width Width of this page switcher.
     * @param height Height of this page switcher.
     * @since SkyMonome v1.2
     */
    public AbstractPageSwitcher(String name,int x,int y,int width,int height)
    {
        super(name,x,y,width,height);
        activePage=null;
    }

    /**
     * Returns an array of all pages contained by this page switcher.
     * @return An array of all pages contained by this page switcher.
     */
    public Page[] getPages()
    {
        return components.toArray(new Page[0]);
    }

    /**
     * Adds the specified page to the list of contained pages.
     * @param page Page to add to the list of contained pages.
     * @throws sky.monome.exception.MonomeException When the first page is added and when it can't be drawn.
     */
    public void addPage(Page page) throws MonomeException
    {
        if(page==null)
            return;
        synchronized(lockObject)
        {
            page.setContainer(this);
            components.add(page);
            if(components.size()==1)
                showPage(page);
        }
    }

    /**
     * Removes the specified page from the list of contained pages.
     * @param page Page to remove from the list of contained pages.
     * @throws sky.monome.exception.MonomeException When the active page is changed as a result of the call, and it can't be drawn.
     */
    public abstract void removePage(Page page) throws MonomeException;

    /**
     * Returns the currently active page.
     * @return The currently active page.
     */
    public Page getActivePage()
    {
        return activePage;
    }

    /**
     * Shows the specified page, if this page is actually contained by this page switcher.
     * @param page Page to show. It will become the new active page.
     * @throws sky.monome.exception.MonomeException When the new active page can't be drawn.
     */
    public abstract void showPage(Page page) throws MonomeException;

    /**
     * Notifies this page switcher that a message comes from the Monome device.
     * @param messageDigester Message digester that prepares and encapsulates the message for an easy access of informations contained in the message.
     * @throws sky.monome.exception.MonomeException When a problem has occured when treating the message.
     * By example, a led/button couple can treat a message by lighting on the led, and lighting on a led is a potentially risked operation.
     */
    @Override
    public void notify(OSCMessageDigester messageDigester) throws MonomeException
    {
        try
        {
            getActivePage().notify(messageDigester);
        }
        catch(NullPointerException e)
        {
        }
    }

    /**
     * Writes this page switcher on the specified frame in order to refresh the Monome device.
     * Once this frame is completed, it is sent to the Monome device.
     * @param frame Frame in which this page switcher must write its led state.
     * @throws sky.monome.exception.MonomeException When a problem has occured while getting the led state of a component inside this page switcher.
     * @see sky.monome.Monome#refresh()
     */
    @Override
    public void writeOn(Frame frame) throws MonomeException
    {
        try
        {
            getActivePage().writeOn(frame);
        }
        catch(NullPointerException e)
        {
            for(int i=getAbsoluteX();i<getAbsoluteX()+getWidth();i++)
                for(int j=getAbsoluteY();j<getAbsoluteY()+getHeight();j++)
                    frame.set(i,j,LedState.OFF);
        }
    }
}