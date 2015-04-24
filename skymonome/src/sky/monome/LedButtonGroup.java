package sky.monome;

import sky.monome.behavior.Behavior;
import sky.monome.behavior.factory.BehaviorFactory;
import sky.monome.exception.MonomeException;

/**
 * Group that contains exclusively led/button couples.
 * The led/button couples creation is automatic.
 * All led/button couples will have the same type of behaviors.
 * @author PJ Skyman
 */
public class LedButtonGroup extends AbstractGroup<LedButtonCouple>
{
    /**
     * Constructs a led/button group with the specified name, specified coordinates and dimensions, the behavior of the specified type
     * (using specified arguments to create the behavior), and contained by the specified container.
     * @param name Name of this led/button group.
     * @param container Container that contains this led/button group.
     * @param x X-coordinate of this led/button group in the local context of its container.
     * @param y Y-coordinate of this led/button group in the local context of its container.
     * @param width Width of this led/button group.
     * @param height Height of this led/button group.
     * @param behaviorClass Type of behavior to use when creating led/button couples.
     * @param argumentsForBehavior Arguments to use when creating led/button couples.
     * @throws sky.monome.exception.MonomeException When led/button couple creations can't be done, for example when behavior objects can't be created.
     * @deprecated Since SkyMonome v1.1, it is preferred to use the
     * {@link LedButtonGroup#LedButtonGroup(java.lang.String, sky.monome.Container, int, int, int, int, sky.monome.behavior.factory.BehaviorFactory)
     * LedButtonGroup(String,Container,int,int,int,int,BehaviorFactory)} constructor instead of this one.
     */
    @Deprecated
    public LedButtonGroup(String name,Container container,int x,int y,int width,int height,Class<? extends Behavior> behaviorClass,Object... argumentsForBehavior) throws MonomeException
    {
        super(name,container,x,y,width,height);
        Class<?>[] classes=new Class<?>[argumentsForBehavior.length];
        for(int i=0;i<classes.length;i++)
            classes[i]=argumentsForBehavior[i].getClass();
        for(int i=0;i<width;i++)
            for(int j=0;j<height;j++)
                try
                {
                    addLedButtonCouple(new LedButtonCouple("Led "+i+","+j,this,i,j,behaviorClass.getConstructor(classes).newInstance(argumentsForBehavior)));
                }
                catch(MonomeException e)
                {
                    throw e;
                }
                catch(Exception e)
                {
                    throw new MonomeException("Error when creating behavior objects",e);
                }
    }

    /**
     * Constructs a led/button group with the specified name, specified coordinates and dimensions, the specified behavior factory,
     * and contained by the specified container.
     * @param name Name of this led/button group.
     * @param container Container that contains this led/button group.
     * @param x X-coordinate of this led/button group in the local context of its container.
     * @param y Y-coordinate of this led/button group in the local context of its container.
     * @param width Width of this led/button group.
     * @param height Height of this led/button group.
     * @param behaviorFactory Factory for behaviors that are used to create led/button couples.
     * @throws sky.monome.exception.MonomeException When led/button couple creations can't be done, for example when behavior objects can't be created.
     * @since SkyMonome v1.1
     * @deprecated Since SkyMonome v1.2, all components register themselves inside their
     * container, so you don't need to specify the container by calling this constructor.
     */
    @Deprecated
    public LedButtonGroup(String name,Container container,int x,int y,int width,int height,BehaviorFactory behaviorFactory) throws MonomeException
    {
        super(name,container,x,y,width,height);
        for(int i=0;i<width;i++)
            for(int j=0;j<height;j++)
                try
                {
                    addLedButtonCouple(new LedButtonCouple("Led "+i+","+j,this,i,j,behaviorFactory.createBehavior(i,j)));
                }
                catch(MonomeException e)
                {
                    throw e;
                }
                catch(Exception e)
                {
                    throw new MonomeException("Error when creating behavior objects",e);
                }
    }

    /**
     * Constructs a led/button group with the specified name, specified coordinates and dimensions and the specified behavior factory.
     * @param name Name of this led/button group.
     * @param x X-coordinate of this led/button group in the local context of its container.
     * @param y Y-coordinate of this led/button group in the local context of its container.
     * @param width Width of this led/button group.
     * @param height Height of this led/button group.
     * @param behaviorFactory Factory for behaviors that are used to create led/button couples.
     * @throws sky.monome.exception.MonomeException When led/button couple creations can't be done, for example when behavior objects can't be created.
     * @since SkyMonome v1.2
     */
    public LedButtonGroup(String name,int x,int y,int width,int height,BehaviorFactory behaviorFactory) throws MonomeException
    {
        super(name,x,y,width,height);
        for(int i=0;i<width;i++)
            for(int j=0;j<height;j++)
                try
                {
                    addLedButtonCouple(new LedButtonCouple("Led "+i+","+j,i,j,behaviorFactory.createBehavior(i,j)));
                }
                catch(MonomeException e)
                {
                    throw e;
                }
                catch(Exception e)
                {
                    throw new MonomeException("Error when creating behavior objects",e);
                }
    }

    /**
     * Returns a string representation of this led/button group.
     * @return A string representation of this led/button group.
     */
    public String toString()
    {
        return "LedButtonGroup "+name;
    }

    /**
     * Returns an array of all contained led/button couples.
     * @return An array of all contained led/button couples.
     */
    public LedButtonCouple[] getLedButtonCouples()
    {
        return components.toArray(new LedButtonCouple[0]);
    }

    /**
     * Returns the led/button couple at specified local coordinates.
     * @param x X-coordinate of the desired led/button couple.
     * @param y Y-coordinate of the desired led/button couple.
     * @return The led/button couple at specified local coordinates.
     * If these coordinates are not contained by this group, {@code null} is
     * returned. If there's no led/button couple at specified coordinates,
     * so {@code null} is also returned.
     * @since SkyMonome v1.3
     */
    public LedButtonCouple getLedButtonCouple(int x,int y)
    {
        try
        {
            synchronized(components.getLockObject())
            {
                for(LedButtonCouple ledButtonCouple:components)
                    if(ledButtonCouple.getX()==x&&ledButtonCouple.getY()==y)
                        return ledButtonCouple;
            }
            return null;
        }
        catch(IndexOutOfBoundsException e)
        {
            return null;
        }
    }

    /**
     * Adds the specified led/button couple to the list of contained led/button couples.
     * @param ledButtonCouple Led/button couple to add to the list of contained led/buton couples.
     * @throws sky.monome.exception.MonomeException When the bounds of the specified led/button couple intersects with a previously added led/button couple.
     */
    public void addLedButtonCouple(LedButtonCouple ledButtonCouple) throws MonomeException
    {
        synchronized(components.getLockObject())
        {
            for(LedButtonCouple aLedButtonCouple:components)
                if(aLedButtonCouple.getBounds().intersects(ledButtonCouple.getBounds()))
                    throw new MonomeException("Led/button couple bounds are already used");
        }
        ledButtonCouple.setContainer(this);
        components.add(ledButtonCouple);
    }

    /**
     * Removes the specified led/button couple from the list of contained led/button couples.
     * @param ledButtonCouple Led/button couple to remove from the list of the contained led/button couples.
     */
    public void removeLedButtonCouple(LedButtonCouple ledButtonCouple)
    {
        components.remove(ledButtonCouple);
    }

    /**
     * Removes all led/button couples from the list of the contained led/button couples.
     */
    public void removeLedButtonCouples()
    {
        components.clear();
    }
}