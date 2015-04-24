package sky.monome;

import sky.monome.exception.MonomeException;

/**
 * Group of components.
 * @author PJ Skyman
 */
public class Group extends AbstractGroup<Component>
{
    /**
     * Constructs a group with the specified name, specified coordinates and dimensions, and contained by the specified container.
     * @param name Name of this group.
     * @param container Container that contains this group.
     * @param x X-coordinate of this group in the local context of its container.
     * @param y Y-coordinate of this group in the local context of its container.
     * @param width Width of this group.
     * @param height Height of this group.
     * @deprecated Since SkyMonome v1.2, all components register themselves inside their
     * container, so you don't need to specify the container by calling this constructor.
     */
    @Deprecated
    public Group(String name,Container container,int x,int y,int width,int height)
    {
        super(name,container,x,y,width,height);
    }

    /**
     * Constructs a group with the specified name, specified coordinates and dimensions.
     * @param name Name of this group.
     * @param x X-coordinate of this group in the local context of its container.
     * @param y Y-coordinate of this group in the local context of its container.
     * @param width Width of this group.
     * @param height Height of this group.
     * @since SkyMonome v1.2
     */
    public Group(String name,int x,int y,int width,int height)
    {
        super(name,x,y,width,height);
    }

    /**
     * Returns an array of contained components.
     * @return An array of contained components.
     */
    public Component[] getComponents()
    {
        return components.toArray(new Component[0]);
    }

    /**
     * Adds the specified component to the list of contained components.
     * @param component Component to add to the list of contained components.
     * @throws sky.monome.exception.MonomeException When the bounds of the specified component intersects with a previously added component,
     * or when the specified component can't have parent container.
     */
    public void addComponent(Component component) throws MonomeException
    {
        if(!component.canHaveParentContainer())
            throw new MonomeException("The component "+component+" can't have parent");
        synchronized(components.getLockObject())
        {
            for(Component aComponent:components)
                if(aComponent.getBounds().intersects(component.getBounds()))
                    throw new MonomeException("Component bounds are already used");
        }
        component.setContainer(this);
        components.add(component);
    }

    /**
     * Removes the specified component from the list of contained components.
     * @param component Component to remove from the list of contained components.
     */
    public void removeComponent(Component component)
    {
        components.remove(component);
    }

    /**
     * Removes all components from the list of contained components.
     */
    public void removeComponents()
    {
        components.clear();
    }

    /**
     * Returns a string representation of this group.
     * @return A string representation of this group.
     */
    public String toString()
    {
        return "Group "+name;
    }
}