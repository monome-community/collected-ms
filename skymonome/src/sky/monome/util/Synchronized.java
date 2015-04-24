package sky.monome.util;

/**
 * Interface for all collections that are strongly synchronized.
 * A strongly synchronized collection has all its methods incorporated into a synchronized block based on a final lock object,
 * and provide this final lock object for external synchronization, like iteration over a {@code for} loop.
 * @author PJ Skyman
 */
public interface Synchronized
{
    /**
     * Returns the object over which the internal and external synchronization will operate.
     * Only implicit and explicit usages of iterator(s) need external synchronization, because all others methods are already internally synchronized.
     * @return The object over which the internal and external synchronization will operate.
     */
    public Object getLockObject();
}