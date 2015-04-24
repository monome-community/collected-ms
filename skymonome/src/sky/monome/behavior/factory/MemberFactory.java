package sky.monome.behavior.factory;

import sky.monome.behavior.Behavior;
import sky.monome.behavior.Member;
import sky.monome.behavior.Member.Group;
import sky.monome.exception.MonomeException;

/**
 * Specialized behavior factory that produces exclusively members of groups of buttons.
 * Note that this factory works properly only when the group class is enclosed in the member class.
 * @author PJ Skyman
 * @since SkyMonome v1.1
 */
public class MemberFactory implements BehaviorFactory
{
    /**
     * Group of members which will be the group of future produced members.
     */
    private final Group<? extends Member<?>,? extends Group<?,?>> memberGroup;

    /**
     * Constructs a member factory with the specified group object.
     * @param memberGroup Group object that will be the group of all future produced members.
     */
    public MemberFactory(Group<? extends Member<?>,? extends Group<?,?>> memberGroup)
    {
        this.memberGroup=memberGroup;
    }

    /**
     * Creates a member behavior with the help of optional arguments.
     * @param arguments Optional arguments that can help the behavior factoring.
     * Note that this kind of factory does not use these arguments.
     * @return A member behavior freshly created.
     * @throws sky.monome.exception.MonomeException When the behavior factoring can't operate successfully.
     */
    public Behavior createBehavior(Object... arguments) throws MonomeException
    {
        try
        {
            return (Behavior)memberGroup.getClass().getEnclosingClass().getConstructor(memberGroup.getClass()).newInstance(memberGroup);
        }
        catch(Exception e)
        {
            throw new MonomeException("Can't create a new member object attached to a group of class "+memberGroup.getClass().getSimpleName(),e);
        }
    }
}