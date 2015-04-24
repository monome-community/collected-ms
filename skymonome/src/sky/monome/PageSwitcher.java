package sky.monome;

import sky.monome.exception.MonomeException;

/**
 * Page switcher that is capable to show no page if you want.
 * @author PJ Skyman
 */
public class PageSwitcher extends AbstractPageSwitcher
{
    /**
     * Constructs a page switcher with the specified name, specified coordinates and dimensions, and contained by the specified container.
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
    public PageSwitcher(String name,Container container,int x,int y,int width,int height)
    {
        super(name,container,x,y,width,height);
    }

    /**
     * Constructs a page switcher with the specified name, specified coordinates and dimensions.
     * @param name Name of this page switcher.
     * @param x X-coordinate of this page switcher in the local context of its container.
     * @param y Y-coordinate of this page switcher in the local context of its container.
     * @param width Width of this page switcher.
     * @param height Height of this page switcher.
     * @since SkyMonome v1.2
     */
    public PageSwitcher(String name,int x,int y,int width,int height)
    {
        super(name,x,y,width,height);
    }

    /**
     * Shows the specified page, if this page is actually contained by this page switcher.
     * @param page Page to show. It will become the new active page.
     * @throws sky.monome.exception.MonomeException When the new active page can't be drawn.
     */
    public void showPage(Page page) throws MonomeException
    {
        if(activePage==page)
            return;
        if(page!=null&&!components.contains(page))
            return;
        activePage=page;
        getMonome().refresh();
    }

    /**
     * Removes the specified page from the list of contained pages.
     * @param page Page to remove from the list of contained pages.
     * @throws sky.monome.exception.MonomeException When the active page is changed as a result of the call, and it can't be drawn.
     */
    public void removePage(Page page) throws MonomeException
    {
        if(page==null||!components.contains(page))
            return;
        synchronized(lockObject)
        {
            if(page==getActivePage())
                if(components.size()==1)
                    showPage(null);
                else
                    if(components.indexOf(page)==0)
                        showPage(components.get(1));
                    else
                        showPage(components.get(components.indexOf(page)-1));
            components.remove(page);
        }
    }

    /**
     * Returns a string representation of this page switcher.
     * @return A string representation of this page switcher.
     */
    public String toString()
    {
        return "PageSwitcher "+name;
    }
}