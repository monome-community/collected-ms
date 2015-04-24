package sky.monome.event;

/**
 * Generic listener that can have internal arguments.
 * @author PJ Skyman
 */
public abstract class GenericListenerWithArguments
{
    /**
     * Arguments of this listener.
     */
    protected final Object[] arguments;

    /**
     * Constructs a generic listener with specified arguments.
     * @param arguments Arguments of this generic listener.
     */
    protected GenericListenerWithArguments(Object... arguments)
    {
        this.arguments=arguments;
    }

    /**
     * Returns an array of arguments.
     * @return An array of arguments.
     */
    protected Object[] getArguments()
    {
        return arguments;
    }

    /**
     * Returns the argument at the specified index.
     * The returned argument can be typed if you parametrize this call.
     * @param <T> Type of the returned argument.
     * @param index Index of the argument.
     * @return The argument at the specified index.
     * @throws ArrayIndexOutOfBoundsException When the index is out of bounds.
     * @throws ClassCastException When the argument can't be typed to the specified type.
     */
    @SuppressWarnings("unchecked")
    protected <T> T getArgument(int index)
    {
        return (T)arguments[index];
    }

    /**
     * Returns the argument at the specified index.
     * The returned argument is typed to the specified type.
     * @param <T> Type of the returned argument.
     * @param clazz Class object that denotes the type of the returned argument.
     * @param index Index of the argument.
     * @return The argument at the specified index.
     * @throws ArrayIndexOutOfBoundsException When the index is out of bounds.
     * @throws ClassCastException When the argument can't be typed to the specified type.
     */
    @SuppressWarnings("unchecked")
    protected <T> T getArgument(Class<T> clazz,int index)
    {
        return (T)arguments[index];
    }
}