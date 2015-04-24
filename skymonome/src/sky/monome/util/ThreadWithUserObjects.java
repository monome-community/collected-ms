package sky.monome.util;

/**
 * Thread which can have user objects for use by example in the {@link #run() run()} method.
 * Implementors of this class must redefine the {@link #run() run()} method.
 * @author PJ Skyman
 */
public abstract class ThreadWithUserObjects extends Thread
{
    /**
     * Array of arguments given to this thread.
     */
    protected final Object[] userObjects;

    /**
     * Constructs a thread with given user objects.
     * @param userObjects User objects that can be used by example in the {@link #run() run()} method.
     */
    public ThreadWithUserObjects(Object... userObjects)
    {
        this.userObjects=userObjects;
    }

    /**
     * Constructs a thread with given user objects and the specified name.
     * @param name Name of this thread.
     * @param userObjects User objects that can be used by example in the {@link #run() run()} method.
     */
    public ThreadWithUserObjects(String name,Object... userObjects)
    {
        super(name);
        this.userObjects=userObjects;
    }

    /**
     * Constructs a thread with given user objects, the specified thread group and the specified name.
     * @param threadGroup Thread group into which this thread will be executed.
     * @param name Name of this thread.
     * @param userObjects User objects that can be used by example in the {@link #run() run()} method.
     */
    public ThreadWithUserObjects(ThreadGroup threadGroup,String name,Object... userObjects)
    {
        super(threadGroup,name);
        this.userObjects=userObjects;
    }

    /**
     * Returns the user object at the specified index in the array of user objects.
     * The returned user object is typed to the specified type if you parametrize this call.
     * @param <T> Type of the returned user object.
     * @param index Index of the user object in the array of user objects.
     * @return The (eventually typed) user object at the specified index in the array of user objects.
     * @throws ArrayIndexOutOfBoundsException When the index is not valid for the array of user objects.
     * @throws ClassCastException When the user object can't be typed to the specified type.
     * @since SkyMonome v1.1
     */
    @SuppressWarnings("unchecked")
    public <T> T getUserObject(int index)
    {
        return (T)userObjects[index];
    }

    /**
     * Returns the user object at the specified index in the array of user objects.
     * The returned user object is typed, if possible, to the specified type.
     * @param <T> Type of the returned user object.
     * @param clazz Class object which indicates the type of the returned user object.
     * @param index Index of the user object in the array of user objects.
     * @return The typed user object at the specified index in the array of user objects.
     * @throws ArrayIndexOutOfBoundsException When the index is not valid for the array of user objects.
     * @throws ClassCastException When the user object can't be typed to the specified type.
     */
    @SuppressWarnings("unchecked")
    public <T> T getUserObject(Class<T> clazz,int index)
    {
        return (T)userObjects[index];
    }

    /**
     * Contains the main action of this thread.
     * Implementors must redefine this method.
     */
    @Override
    public abstract void run();
}
