package sky.monome.behavior.factory;

import java.lang.reflect.Constructor;
import sky.monome.behavior.Behavior;
import sky.monome.exception.MonomeException;

/**
 * Generic behavior factory which can produce serially behaviors of the class specified at construction.
 * @author PJ Skyman
 * @since SkyMonome v1.1
 */
public class GenericBehaviorFactory implements BehaviorFactory
{
    /**
     * Constructor which is responsible for behaviors creation.
     */
    private final Constructor<? extends Behavior> constructor;
    /**
     * Arguments that are common to the factoring of all behaviors, since they correspond to a defined
     * constructor in the class specified at the construction of this factory.
     */
    private final Object[] arguments;

    /**
     * Constructs a generic behavior factory which can produce behaviors of the specified class
     * and with the specified arguments common to all produced behaviors.
     * @param behaviorClass Class object that denotes the type of behaviors that will be produced by this factory.
     * @param argumentsForBehavior Optional arguments that can be used for the behaviors factoring.
     * These arguments must be specified in a good order so that a constructor is defined for the
     * specified behavior class with specified arguments.
     * @throws sky.monome.exception.MonomeException When no constructor is found for the specified class and specified
     * arguments in the same order.
     */
    public GenericBehaviorFactory(Class<? extends Behavior> behaviorClass,Object... argumentsForBehavior) throws MonomeException
    {
        Class<?>[] classes=new Class<?>[argumentsForBehavior.length];
        for(int i=0;i<classes.length;i++)
            classes[i]=argumentsForBehavior[i].getClass();
        try
        {
            constructor=behaviorClass.getConstructor(classes);
        }
        catch(Exception e)
        {
            throw new MonomeException("Can't find a constructor for the class "+behaviorClass.getSimpleName()+" with specified arguments",e);
        }
        arguments=argumentsForBehavior;
    }

    /**
     * Creates a behavior with the help of optional arguments.
     * @param arguments Optional arguments that can help the behavior factoring.
     * Note that this kind of factory does not use these arguments.
     * @return A behavior freshly created.
     * @throws sky.monome.exception.MonomeException When the behavior factoring can't operate successfully.
     */
    public Behavior createBehavior(Object... arguments) throws MonomeException
    {
        try
        {
            return constructor.newInstance(this.arguments);
        }
        catch(Exception e)
        {
            throw new MonomeException("Can't create a new behavior object of the class "+constructor.getDeclaringClass().getSimpleName(),e);
        }
    }
}