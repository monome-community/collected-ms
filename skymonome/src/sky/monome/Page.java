package sky.monome;

import java.awt.Rectangle;

/**
 * Page of components to be added in a page switcher.
 * @author PJ Skyman
 */
public class Page extends Group
{
    /**
     * Page switcher which contains this page.
     * Since SkyMonome v1.2, this field is not final anymore due to the
     * automatic registering of this page inside its page switcher.
     * Since SkyMonome v1.2.1, this field is an {@link AbstractPageSwitcher}
     * instead of a {@link PageSwitcher} for more flexibility.
     */
    protected AbstractPageSwitcher pageSwitcher;

    /**
     * Constructs a page with the specified name and contained in the specified page switcher.
     * @param name Name of this page.
     * @param pageSwitcher Page switcher which contains this page.
     * @deprecated Since SkyMonome v1.2, all components register themselves inside their
     * container, so you don't need to specify the container by calling this constructor.
     */
    @Deprecated
    public Page(String name,PageSwitcher pageSwitcher)
    {
        super(name,pageSwitcher,0,0,pageSwitcher.getWidth(),pageSwitcher.getHeight());
        this.pageSwitcher=pageSwitcher;
    }

    /**
     * Constructs a page with the specified name.
     * @param name Name of this page.
     * @since SkyMonome v1.2
     */
    public Page(String name)
    {
        super(name,0,0,0,0);
    }

    /**
     * Sets the page switcher that contains this page.
     * <br/><br/>
     * Because this method overrides a method of the class
     * {@link sky.monome.Component Component}, the specified container
     * is not a page switcher, but only a
     * {@link sky.monome.Container Container}. Despite this, you must
     * specify a page switcher of type {@link AbstractPageSwitcher}
     * as a parameter to avoid subsequent
     * {@link java.lang.ClassCastException ClassCastException}.
     * @param container Page switcher that contains this page.
     * @since SkyMonome v1.2
     */
    @Override
    void setContainer(Container container)
    {
        pageSwitcher=(AbstractPageSwitcher)container;
        super.setContainer(container);
    }

    /**
     * Returns a string representation of this page.
     * @return A string representation of this page.
     */
    @Override
    public String toString()
    {
        return "Page "+name;
    }

    /**
     * Returns the absolute X-coordinate of this page.
     * @return The absolute X-coordinate of this page.
     */
    @Override
    public int getAbsoluteX()
    {
        try
        {
            return pageSwitcher.getAbsoluteX();
        }
        catch(NullPointerException e)
        {
            return 0;
        }
    }

    /**
     * Returns the absolute Y-coordinate of this page.
     * @return The absolute Y-coordinate of this page.
     */
    @Override
    public int getAbsoluteY()
    {
        try
        {
            return pageSwitcher.getAbsoluteY();
        }
        catch(NullPointerException e)
        {
            return 0;
        }
    }

    /**
     * Indicates whether this page is actually visible.
     * @return {@code true} if this page is actually visible, {@code false} otherwise.
     */
    @Override
    public boolean isVisible()
    {
        try
        {
            return pageSwitcher.isVisible()&&pageSwitcher.getActivePage()==this;
        }
        catch(NullPointerException e)
        {
            return false;
        }
    }

    /**
     * Indicates whether this page can have a parent container in the Monome assembling tree.
     * @return Always {@code false}, since pages are contained only by page switchers.
     */
    @Override
    public boolean canHaveParentContainer()
    {
        return false;
    }

    /**
     * Returns bounds of this page in the local context of its page switcher.
     * @return Bounds of this page in the local context of its page switcher.
     * @since SkyMonome v1.2
     */
    @Override
    public Rectangle getBounds()
    {
        try
        {
            return new Rectangle(0,0,pageSwitcher.getWidth(),pageSwitcher.getHeight());
        }
        catch(NullPointerException e)
        {
            return super.getBounds();
        }
    }

    /**
     * Returns the width of this page.
     * @return The width of this page.
     * @since SkyMonome v1.2
     */
    @Override
    public int getWidth()
    {
        try
        {
            return pageSwitcher.getWidth();
        }
        catch(NullPointerException e)
        {
            return super.getWidth();
        }
    }

    /**
     * Returns the height of this page.
     * @return The height of this page.
     * @since SkyMonome v1.2
     */
    @Override
    public int getHeight()
    {
        try
        {
            return pageSwitcher.getHeight();
        }
        catch(NullPointerException e)
        {
            return super.getHeight();
        }
    }
}