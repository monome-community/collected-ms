package sky.monome.behavior.factory;

import sky.monome.behavior.Behavior;
import sky.monome.exception.MonomeException;

/**
 * Behavior factory. A factory of this kind can produce behaviors serially.
 * @author PJ Skyman
 * @since SkyMonome v1.1
 */
public interface BehaviorFactory
{
    /**
     * Creates a behavior with the help of optional arguments.
     * @param arguments Optional arguments that can help the behavior factoring.
     * Few factories need arguments to produce specific behaviors.
     * Generally, it is not used.
     * @return A behavior freshly created.
     * @throws sky.monome.exception.MonomeException When the behavior factoring can't operate successfully.
     */
    public Behavior createBehavior(Object... arguments) throws MonomeException;
}