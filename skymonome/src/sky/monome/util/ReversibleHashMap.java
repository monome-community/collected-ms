package sky.monome.util;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/**
 * Map in which both parameter types are keys inbetween.
 * In a normal way, {@code K1} is the key and {@code K2} is the value.
 * In a reversed way, {@code K2} is the key and {@code K1} is the value.
 * That implies that there will be no doublons in keys AND in values ! A protection mechanism look after that aspect permanently.
 * Note that it goes against standard {@code Map} interface specifications.
 * <br/>
 * This map works like a {@code HashMap} since it internally contains {@code HashMap}s.
 * <br/>
 * This class is strongly thread-safe for all its methods. But you should iterate on it with external synchronization based on the internal lock object
 * accessible with the {@link #getLockObject() getLockObject()} method specified by the {@link sky.monome.util.Synchronized Synchronized} interface.
 * <br/>
 * Why do you need a reversed map ? With classic maps, you can find a value associated with a specified key.
 * But you can't find a key associated with a specific value. With reversed maps, you can do that !
 * @author PJ Skyman
 * @param <K1> Type of keys in a normal way.
 * @param <K2> Type of keys in a reversed way.
 * @version 2.1
 * @see sky.monome.util.Synchronized
 */
public final class ReversibleHashMap<K1,K2> implements Map<K1,K2>,Synchronized
{
    /**
     * {@code HashMap} to store key/key entries in a normal way.
     */
    private final HashMap<K1,K2> hashMap;
    /**
     * {@code HashMap} to store key/key entries in a reversed way.
     */
    private final HashMap<K2,K1> reversedHashMap;
    /**
     * Object dedicated to synchronization.
     */
    private final Object lockObject;

    /**
     * Constructs an empty map.
     */
    public ReversibleHashMap()
    {
        this(new HashMap<K1,K2>());
    }

    /**
     * Constructs a map prefilled with all entries of specified map.
     * Only copies of all valid entries will be realized, the specified map will stay unchanged.
     * @param map Map from which the new map will be prefilled.
     * @see #putAll(java.util.Map)
     */
    public ReversibleHashMap(Map<? extends K1,? extends K2> map)
    {
        lockObject=new Object();
        hashMap=new HashMap<K1,K2>();
        reversedHashMap=new HashMap<K2,K1>();
        putAll(map);
    }

    /**
     * Returns the size of this map.
     * @return The size of this map.
     */
    public int size()
    {
        synchronized(lockObject)
        {
            return hashMap.size();
        }
    }

    /**
     * Indicates whether this map is empty.
     * @return {@code true} if this map is empty, {@code false} otherwise.
     */
    public boolean isEmpty()
    {
        synchronized(lockObject)
        {
            return hashMap.isEmpty();
        }
    }

    /**
     * Indicates whether this map contains the specified key in a normal way.
     * @param key1 Key to look for.
     * @return {@code true} if this map contains the specified key, {@code false} otherwise.
     */
    public boolean containsKey(Object key1)
    {
        synchronized(lockObject)
        {
            return hashMap.containsKey(key1);
        }
    }

    /**
     * Indicates whether this map contains the specified key in a reversed way.
     * @param key2 Key to look for.
     * @return {@code true} if this map contains the specified key, {@code false} otherwise.
     */
    public boolean reversedContainsKey(Object key2)
    {
        synchronized(lockObject)
        {
            return reversedHashMap.containsKey(key2);
        }
    }

    /**
     * Indicates whether this map contains the specified value in a normal way.
     * @param key2 Value to look for.
     * @return {@code true} if this map contains the specified value, {@code false} otherwise.
     */
    public boolean containsValue(Object key2)
    {
        synchronized(lockObject)
        {
            return hashMap.containsValue(key2);
        }
    }

    /**
     * Indicates whether this map contains the specified value in a reversed way.
     * @param key1 Value to look for.
     * @return {@code true} if this map contains the specified value, {@code false} otherwise.
     */
    public boolean reversedContainsValue(Object key1)
    {
        synchronized(lockObject)
        {
            return reversedHashMap.containsValue(key1);
        }
    }

    /**
     * Returns the value associated with the specified key in a normal way.
     * @param key1 Key to find.
     * @return The value associated with the specified key in a normal way.
     */
    public K2 get(Object key1)
    {
        synchronized(lockObject)
        {
            return hashMap.get(key1);
        }
    }

    /**
     * Returns the value associated with the specified key in a reversed way.
     * @param key2 Key to find.
     * @return The value associated with the specified key in a reversed way.
     */
    public K1 reversedGet(Object key2)
    {
        synchronized(lockObject)
        {
            return reversedHashMap.get(key2);
        }
    }

    /**
     * Adds or replaces the specified value associated with the specified key in a normal way.
     * @param key1 Key to find or to add.
     * @param key2 Value to associate to the key.
     * @return The old value associated with the key, or {@code null} if the key was not found previously in this map.
     * Returning {@code null} can also indicate that the value {@code null} was previously associated to the key.
     */
    public K2 put(K1 key1,K2 key2)
    {
        synchronized(lockObject)
        {
            if(!hashMap.containsKey(key1)&&!reversedHashMap.containsKey(key2))
            {
                hashMap.put(key1,key2);
                reversedHashMap.put(key2,key1);
                return null;
            }
            if(hashMap.containsKey(key1)&&reversedHashMap.containsKey(key2))
                return key2;
            if(hashMap.containsKey(key1))
            {
                K2 oldKey2=hashMap.put(key1,key2);
                reversedHashMap.remove(oldKey2);
                reversedHashMap.put(key2,key1);
                return oldKey2;
            }
            K1 oldKey1=reversedHashMap.put(key2,key1);
            K2 oldKey2=hashMap.remove(oldKey1);
            hashMap.put(key1,key2);
            return oldKey2;
        }
    }

    /**
     * Adds or replaces the specified value associated with the specified key in a reversed way.
     * @param key2 Key to find or to add.
     * @param key1 Value to associate to the key.
     * @return The old value associated with the key, or {@code null} if the key was not found previously in this map.
     * Returning {@code null} can also indicate that the value {@code null} was previously associated to the key.
     */
    public K1 reversedPut(K2 key2,K1 key1)
    {
        synchronized(lockObject)
        {
            if(!reversedHashMap.containsKey(key2)&&!hashMap.containsKey(key1))//le couple n'est pas encore dedans
            {
                reversedHashMap.put(key2,key1);
                hashMap.put(key1,key2);
                return null;
            }
            if(reversedHashMap.containsKey(key2)&&hashMap.containsKey(key1))//le couple est d�j� dedans
                return key1;
            if(reversedHashMap.containsKey(key2))//on met un nouveau K1 pour le K2 sp�cifi�
            {
                K1 oldKey1=reversedHashMap.put(key2,key1);
                hashMap.remove(oldKey1);
                hashMap.put(key1,key2);
                return oldKey1;
            }
            //on met un nouveau K2 pour le K1 sp�cifi�
            K2 oldKey2=hashMap.put(key1,key2);
            K1 oldKey1=reversedHashMap.remove(oldKey2);
            reversedHashMap.put(key2,key1);
            return oldKey1;
        }
    }

    /**
     * Removes the value associated with the specified key in a normal way.
     * @param key1 Key to find and to remove.
     * @return The old value associated with the key, or {@code null} if the key was not found previously in this map.
     * Returning {@code null} can also indicate that the value {@code null} was previously associated to the key.
     */
    public K2 remove(Object key1)
    {
        synchronized(lockObject)
        {
            K2 key2=hashMap.remove(key1);
            reversedHashMap.remove(key2);
            return key2;
        }
    }

    /**
     * Removes the value associated with the specified key in a reversed way.
     * @param key2 Key to find and to remove.
     * @return The old value associated with the key, or {@code null} if the key was not found previously in this map.
     * Returning {@code null} can also indicate that the value {@code null} was previously associated to the key.
     */
    public K1 reversedRemove(Object key2)
    {
        synchronized(lockObject)
        {
            K1 key1=reversedHashMap.remove(key2);
            hashMap.remove(key1);
            return key1;
        }
    }

    /**
     * Copies all key/value entries of the specified map into this map in a normal way.
     * The specified map will stay unchanged after this call.
     * @param m Map from which key/value entries will be copied.
     */
    public void putAll(Map<? extends K1,? extends K2> m)
    {
        synchronized(lockObject)
        {
            for(Entry<? extends K1,? extends K2> entry:m.entrySet())
                put(entry.getKey(),entry.getValue());
        }
    }

    /**
     * Copies all key/value entries of the specified map into this map in a reversed way.
     * The specified map will stay unchanged after this call.
     * @param m Map from which key/value entries will be copied.
     */
    public void reversedPutAll(Map<? extends K2,? extends K1> m)
    {
        synchronized(lockObject)
        {
            for(Entry<? extends K2,? extends K1> entry:m.entrySet())
                reversedPut(entry.getKey(),entry.getValue());
        }
    }

    /**
     * Clears all key/value entries from this map.
     */
    public void clear()
    {
        synchronized(lockObject)
        {
            hashMap.clear();
            reversedHashMap.clear();
        }
    }

    /**
     * Returns a set of all keys contained by this map in a normal way.
     * @return A set of all keys contained by this map in a normal way.
     */
    public Set<K1> keySet()
    {
        synchronized(lockObject)
        {
            return hashMap.keySet();
        }
    }

    /**
     * Returns a set of all keys contained by this map in a reversed way.
     * @return A set of all keys contained by this map in a reversed way.
     */
    public Set<K2> reversedKeySet()
    {
        synchronized(lockObject)
        {
            return reversedHashMap.keySet();
        }
    }

    /**
     * Returns a collection of all values contained by this map in a normal way.
     * @return A collection of all values contained by this map in a normal way.
     */
    public Collection<K2> values()
    {
        synchronized(lockObject)
        {
            return hashMap.values();
        }
    }

    /**
     * Returns a collection of all values contained by this map in a normal way.
     * @return A collection of all values contained by this map in a normal way.
     */
    public Collection<K1> reversedValues()
    {
        synchronized(lockObject)
        {
            return reversedHashMap.values();
        }
    }

    /**
     * Returns a set of all key/value entries contained by this map in a normal way.
     * @return A set of all key/value entries contained by this map in a normal way.
     */
    public Set<Entry<K1,K2>> entrySet()
    {
        synchronized(lockObject)
        {
            return hashMap.entrySet();
        }
    }

    /**
     * Returns a set of all key/value entries contained by this map in a reversed way.
     * @return A set of all key/value entries contained by this map in a reversed way.
     */
    public Set<Entry<K2,K1>> reversedEntrySet()
    {
        synchronized(lockObject)
        {
            return reversedHashMap.entrySet();
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
