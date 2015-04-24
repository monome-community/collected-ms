package sky.monome.util;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/**
 * Unbounded list with strong synchronization.
 * <br/>
 * This list works like an {@code ArrayList} since it internally contains an {@code ArrayList}.
 * <br/>
 * This class is strongly thread-safe for all its methods. But you should iterate on it with external synchronization based on the internal lock object
 * accessible with the {@link #getLockObject() getLockObject()} method specified by the {@link sky.monome.util.Synchronized Synchronized} interface.
 * @author PJ Skyman
 * @param <T> Type of the contained data.
 * @see sky.monome.util.Synchronized
 */
public final class SynchronizedList<T> implements List<T>,RandomAccess,Synchronized
{
    /**
     * {@code ArrayList} to store data.
     */
    private final ArrayList<T> list;
    /**
     * Object dedicated to synchronization.
     */
    private final Object lockObject;

    /**
     * Constructs an empty synchronized list.
     */
    public SynchronizedList()
    {
        list=new ArrayList<T>();
        lockObject=new Object();
    }

    /**
     * Adds the specified object to this list.
     * The object is appended at the tail of this list.
     * @param e Object to add to this list.
     * @return {@code true}.
     */
    public boolean add(T e)
    {
        synchronized(lockObject)
        {
            return list.add(e);
        }
    }

    /**
     * Adds the specified object to this list at the specified index.
     * @param index Index in this list at which the specified object will be inserted.
     * @param element Object to add to this list at the specified index.
     */
    public void add(int index,T element)
    {
        synchronized(lockObject)
        {
            list.add(index,element);
        }
    }

    /**
     * Adds all objects of the specified collection to this list.
     * These objects are appended at the tail of this list.
     * @param c Collection from which all objects will be added to this list.
     * @return {@code true} if this list was modified as a result of the call, {@code false} otherwise.
     */
    public boolean addAll(Collection<? extends T> c)
    {
        synchronized(lockObject)
        {
            return list.addAll(c);
        }
    }

    /**
     * Adds all objects of the specified collection to this list at the specified index.
     * @param index Index in this list at which specified objects will be inserted.
     * @param c Collection from which all objects will be added to this list.
     * @return {@code true} if this list was modified as a result of the call, {@code false} otherwise.
     */
    public boolean addAll(int index,Collection<? extends T> c)
    {
        synchronized(lockObject)
        {
            return list.addAll(index,c);
        }
    }

    /**
     * Clears this list.
     */
    public void clear()
    {
        synchronized(lockObject)
        {
            list.clear();
        }
    }

    /**
     * Indicates whether this list contains the specified object.
     * @param o Object whose presence in this list is to be tested.
     * @return {@code true} if this list contains the specified object, {@code false} otherwise.
     */
    public boolean contains(Object o)
    {
        synchronized(lockObject)
        {
            return list.contains(o);
        }
    }

    /**
     * Indicates whether this list contains all objects of the specified collection at the same time.
     * @param c Collection whose presence of all objects in this list is to be tested.
     * @return {@code true} if this list contains all objects of the specified collection at the same time, {@code false} otherwise.
     */
    public boolean containsAll(Collection<?> c)
    {
        synchronized(lockObject)
        {
            return list.containsAll(c);
        }
    }

    /**
     * Compares the specified object with this list for equality. Returns
     * {@code true} if and only if the specified object is also a list, both
     * lists have the same size, and all corresponding pairs of elements in
     * the two lists are <i>equal</i>. (Two elements {@code e1} and
     * {@code e2} are <i>equal</i> if {@code (e1==null ? e2==null :
     * e1.equals(e2))}.) In other words, two lists are defined to be
     * equal if they contain same elements in the same order.<p>
     *
     * @param obj The object to be compared for equality with this list.
     * @return {@code true} if the specified object is equal to this list, {@code false} otherwise.
     */
    @Override
    public boolean equals(Object obj)
    {
        synchronized(lockObject)
        {
            return list.equals(obj);
        }
    }

    /**
     * Returns the object stored at the specified index in this list.
     * @param index Index of the desired object.
     * @return The object stored at the specified index in this list.
     */
    public T get(int index)
    {
        synchronized(lockObject)
        {
            return list.get(index);
        }
    }

    /**
     * Returns the hashcode of this list.
     * @return The hashcode of this list.
     */
    @Override
    public int hashCode()
    {
        synchronized(lockObject)
        {
            return list.hashCode();
        }
    }

    /**
     * Returns the index of the specified object in this list.
     * @param o Object to search for.
     * @return The index of the specified object in this list.
     */
    public int indexOf(Object o)
    {
        synchronized(lockObject)
        {
            return list.indexOf(o);
        }
    }

    /**
     * Indicates whether this list is empty.
     * @return {@code true} if this list is empty, {@code false} otherwise.
     */
    public boolean isEmpty()
    {
        synchronized(lockObject)
        {
            return list.isEmpty();
        }
    }

    /**
     * Returns an iterator to iterate over this list.
     * @return An iterator to iterate over this list.
     */
    public Iterator<T> iterator()
    {
        synchronized(lockObject)
        {
            return list.iterator();
        }
    }

    /**
     * Returns the index of the last occurrence of the specified object in this list.
     * @param o Object to search for.
     * @return The index of the last occurrence of the specified object in this list.
     */
    public int lastIndexOf(Object o)
    {
        synchronized(lockObject)
        {
            return list.lastIndexOf(o);
        }
    }

    /**
     * Returns a list iterator to iterate over this list.
     * @return A list iterator to iterate over this list.
     */
    public ListIterator<T> listIterator()
    {
        synchronized(lockObject)
        {
            return list.listIterator();
        }
    }

    /**
     * Returns a list iterator to iterate over this list from the specified index.
     * @param index Index from which the iterator will iterate.
     * @return A list iterator to iterate over this list from the specified index.
     */
    public ListIterator<T> listIterator(int index)
    {
        synchronized(lockObject)
        {
            return list.listIterator(index);
        }
    }

    /**
     * Removes the specified object from this list.
     * Only the first occurrence of the specified object will be removed.
     * @param o Object to remove from this list.
     * @return {@code true} if this list is modified as a result of the call, {@code false} otherwise.
     */
    public boolean remove(Object o)
    {
        synchronized(lockObject)
        {
            return list.remove(o);
        }
    }

    /**
     * Removes the object at the specified index from this list.
     * @param index Index of the object which needs to be removed from this list.
     * @return The object that is removed from this list.
     */
    public T remove(int index)
    {
        synchronized(lockObject)
        {
            return list.remove(index);
        }
    }

    /**
     * Removes all objects from this list that are also contained in the specified collection.
     * @param c Collection from which objects also contained in this list will be removed.
     * @return {@code true} if this list is modified as a result of the call.
     */
    public boolean removeAll(Collection<?> c)
    {
        synchronized(lockObject)
        {
            return list.removeAll(c);
        }
    }

    /**
     * Retains only all objects also contained by the specified collection.
     * @param c Collection from which only objects also contained will be retained.
     * @return {@code true} if this list is modified as a result of the call.
     */
    public boolean retainAll(Collection<?> c)
    {
        synchronized(lockObject)
        {
            return list.retainAll(c);
        }
    }

    /**
     * Stores the specified object at the specified index.
     * @param index Index at which the specified object will be stored.
     * @param element Object to store at the specified index in this list.
     * @return The object that was stored in this list before the call.
     */
    public T set(int index,T element)
    {
        synchronized(lockObject)
        {
            return list.set(index,element);
        }
    }

    /**
     * Returns the size of this list.
     * @return The size of this list.
     */
    public int size()
    {
        synchronized(lockObject)
        {
            return list.size();
        }
    }

    /**
     * Returns a sublist of this list built from the specified begin index
     * to the specified end index.
     * @param fromIndex Index from which the sublist is built (inclusive).
     * @param toIndex Index to which the sublist is built (exclusive).
     * @return A sublist of this list.
     * @deprecated Since the sublist will share the same internal data, there will be no consistent synchronization anymore
     * by manipulating the sublist.
     */
    @Deprecated
    public List<T> subList(int fromIndex,int toIndex)
    {
        synchronized(lockObject)
        {
            return Collections.synchronizedList(list.subList(fromIndex,toIndex));//probl�me : la synchronisation ne se fera plus sur le m�me objet, ce qui peut �tre probl�matique...
        }
    }

    /**
     * Returns an array of objects contained in this list.
     * @return An array of objects contained in this list.
     */
    public Object[] toArray()
    {
        synchronized(lockObject)
        {
            return list.toArray();
        }
    }

    /**
     * Returns an array containing all of elements in this list in proper
     * sequence (from first to last element); the runtime type of the returned
     * array is that of the specified array. If the list fits in the
     * specified array, it is returned therein. Otherwise, a new array is
     * allocated with the runtime type of the specified array and the size of
     * this list.
     *
     * <p>If the list fits in the specified array with room to spare
     * (i.e., the array has more elements than the list), the element in
     * the array immediately following the end of the collection is set to
     * <tt>null</tt>. (This is useful in determining the length of the
     * list <i>only</i> if the caller knows that the list does not contain
     * any null elements.)
     * @param <T> Type of contained elements
     * @param a The array into which elements of the list are to
     *          be stored, if it is big enough; otherwise, a new array of the
     *          same runtime type is allocated for this purpose.
     * @return An array containing elements of this list.
     * @throws ArrayStoreException If the runtime type of the specified array
     *         is not a supertype of the runtime type of every element in
     *         this list.
     * @throws NullPointerException If the specified array is null.
     */
    public <T> T[] toArray(T[] a)
    {
        synchronized(lockObject)
        {
            return list.toArray(a);
        }
    }

    /**
     * Returns a string representation of this list.
     * The returned string contains all elements of this list separated by a comma character.
     * @return A string representation of this list.
     */
    @Override
    public String toString()
    {
        synchronized(lockObject)
        {
            return list.toString();
        }
    }

    /**
     * Verifies that the specified index is valid for this list.
     * @param index Index to verify.
     * @return {@code true} if the specified index is in the range [0;size()[, {@code false} otherwise.
     */
    public boolean isValidIndex(int index)
    {
        synchronized(lockObject)
        {
            return index>=0&&index<size();
        }
    }

    /**
     * Returns the object over which the internal and external synchronization will operate.
     * Only implicit and explicit usages of iterator(s) need external synchronization, because all others methods are already internally synchronized.
     * @return The object over which the internal and external synchronization will operate.
     */
    public Object getLockObject()
    {
        return lockObject;
    }
}
