package sky.monome;

import java.awt.Rectangle;
import sky.monome.LedButtonCouple.ButtonState;
import sky.monome.LedButtonCouple.LedState;
import sky.monome.SequencerPageSwitcher.SequencerPage;
import sky.monome.behavior.SequencerRadio;
import sky.monome.behavior.SequencerRadio.SequencerRadioGroup;
import sky.monome.event.button.ButtonManager;
import sky.monome.event.sequencer.SequencerComponent;
import sky.monome.event.sequencer.SequencerEvent;
import sky.monome.event.sequencer.SequencerListener;
import sky.monome.exception.MonomeException;
import sky.monome.frame.Frame;
import sky.monome.layer.LedStateModificationLayer;
import sky.monome.sequence.SequenceIterator;
import sky.monome.sequence.UpwardSequenceIterator;
import sky.monome.sequence.factory.SequenceIteratorFactory;
import sky.monome.sequencer.Sequencer;
import sky.monome.sequencer.Sequencer.SequencerOrientation;
import sky.monome.sequencer.SequencerEngine;
import sky.monome.util.OSCMessageDigester;
import sky.monome.util.SynchronizedList;
import sky.monome.util.ThreadWithUserObjects;

/**
 * Single sequencer which works with multiple pages.
 * You can control multiple parameters in parallel by activating one page or another.
 * @author PJ Skyman
 */
public class SequencerPageSwitcher extends AbstractGroup<SequencerPage> implements Sequencer<SequencerPageSwitcher,SequencerRadioGroup>
{
    /**
     * Active sequencer page in this sequencer page switcher.
     */
    protected SequencerPage activePage;
    /**
     * Number of the currently active step in the sequence.
     */
    protected int activeStepNumber;
    /**
     * Copy of the number of the currently active step in the sequence.
     * This copy is used for the sequencer lightning effect.
     */
    protected int activeStepNumberPseudoCopyForSequencerEffect;
    /**
     * Orientation of this sequencer page switcher.
     */
    protected final SequencerOrientation sequencerOrientation;
    /**
     * Number of steps in the sequence.
     */
    protected int stepsNumber;
    /**
     * Copy of the number of steps in the sequence.
     * This copy is used when the user change the real value in live.
     */
    protected int stepsNumberPseudoCopyWhenChangingRealValue;
    /**
     * Sequence iterator.
     */
    protected SequenceIterator<SequencerPageSwitcher,SequencerRadioGroup> sequenceIterator;
    /**
     * Sequencer engine.
     */
    protected final SequencerEngine<SequencerPageSwitcher,SequencerRadioGroup> sequencerEngine;
    /**
     * Indicates if a {@link sky.monome.behavior.Radio.RadioGroup Radio.RadioGroup} or a
     * {@link sky.monome.behavior.OptionalRadio.OptionalRadioGroup OptionalRadio.OptionalRadioGroup}
     * is used to control the steps buttons.
     */
    protected final boolean optional;
    /**
     * Time duration of the sequencer effect, in milliseconds
     * (short lightning that symbolizes the activation of a new step in the sequence).
     * @since SkyMonome v1.3
     */
    protected long sequencerEffectTime;

    /**
     * Constructs a sequencer page switcher with the specified name, specified coordinates and dimensions,
     * the specified orientation, specified tempo and number of divisions by quarter note, the specified steps number,
     * the specified mode for radio groups, the specified pages number and contained by the specified container.
     * A default {@link sky.monome.sequence.UpwardSequenceIterator UpwardSequenceIterator} is used to iterate over the sequence.
     * @param name Name of this sequencer page switcher.
     * @param container Container that will contain this sequencer page switcher.
     * @param x X-coordinate of this sequencer page switcher in the local context of its container.
     * @param y Y-coordinate of this sequencer page switcher in the local context of its container.
     * @param width Width of this sequencer page switcher.
     * @param height Height of this sequencer page switcher.
     * @param sequencerOrientation Sequencer orientation to use with this sequencer page switcher.
     * @param tempo Tempo, in number of quarter notes by minute.
     * @param divisions Number of divisions by quarter note.
     * @param stepsNumber Number of steps to use in this sequencer page switcher.
     * @param optional Boolean that indicates if a {@link sky.monome.behavior.Radio.RadioGroup Radio.RadioGroup} or a
     * {@link sky.monome.behavior.OptionalRadio.OptionalRadioGroup OptionalRadio.OptionalRadioGroup}
     * is used to control the steps buttons.
     * @param pagesNumber Number of pages to use in this sequencer page switcher.
     * @throws sky.monome.exception.MonomeException When the specified steps number is invalid, or when
     * the specified pages number is invalid, or when a led state can't be initialized.
     * @deprecated Since SkyMonome v1.2, all components register themselves inside their
     * container, so you don't need to specify the container by calling this constructor.
     */
    @Deprecated
    public SequencerPageSwitcher(String name,Container container,int x,int y,int width,int height,SequencerOrientation sequencerOrientation,float tempo,int divisions,int stepsNumber,boolean optional,int pagesNumber) throws MonomeException
    {
        this(name,container,x,y,width,height,sequencerOrientation,tempo,divisions,stepsNumber,optional,pagesNumber,new UpwardSequenceIterator<SequencerPageSwitcher,SequencerRadioGroup>());
    }

    /**
     * Constructs a sequencer page switcher with the specified name, specified coordinates and dimensions,
     * the specified orientation, specified tempo and number of divisions by quarter note, the specified steps number,
     * the specified mode for radio groups and the specified pages number.
     * A default {@link sky.monome.sequence.UpwardSequenceIterator UpwardSequenceIterator} is used to iterate over the sequence.
     * @param name Name of this sequencer page switcher.
     * @param x X-coordinate of this sequencer page switcher in the local context of its container.
     * @param y Y-coordinate of this sequencer page switcher in the local context of its container.
     * @param width Width of this sequencer page switcher.
     * @param height Height of this sequencer page switcher.
     * @param sequencerOrientation Sequencer orientation to use with this sequencer page switcher.
     * @param tempo Tempo, in number of quarter notes by minute.
     * @param divisions Number of divisions by quarter note.
     * @param stepsNumber Number of steps to use in this sequencer page switcher.
     * @param optional Boolean that indicates if a {@link sky.monome.behavior.Radio.RadioGroup Radio.RadioGroup} or a
     * {@link sky.monome.behavior.OptionalRadio.OptionalRadioGroup OptionalRadio.OptionalRadioGroup}
     * is used to control the steps buttons.
     * @param pagesNumber Number of pages to use in this sequencer page switcher.
     * @throws sky.monome.exception.MonomeException When the specified steps number is invalid, or when
     * the specified pages number is invalid, or when a led state can't be initialized.
     * @since SkyMonome v1.2
     */
    public SequencerPageSwitcher(String name,int x,int y,int width,int height,SequencerOrientation sequencerOrientation,float tempo,int divisions,int stepsNumber,boolean optional,int pagesNumber) throws MonomeException
    {
        this(name,x,y,width,height,sequencerOrientation,tempo,divisions,stepsNumber,optional,pagesNumber,new UpwardSequenceIterator<SequencerPageSwitcher,SequencerRadioGroup>());
    }

    /**
     * Constructs a sequencer page switcher with the specified name, specified coordinates and dimensions,
     * the specified orientation, specified tempo and number of divisions by quarter note, the specified steps number,
     * the specified mode for radio groups, the specified pages number, the specified sequence iterator
     * and contained by the specified container.
     * @param name Name of this sequencer page switcher.
     * @param container Container that will contain this sequencer page switcher.
     * @param x X-coordinate of this sequencer page switcher in the local context of its container.
     * @param y Y-coordinate of this sequencer page switcher in the local context of its container.
     * @param width Width of this sequencer page switcher.
     * @param height Height of this sequencer page switcher.
     * @param sequencerOrientation Sequencer orientation to use with this sequencer page switcher.
     * @param tempo Tempo, in number of quarter notes by minute.
     * @param divisions Number of divisions by quarter note.
     * @param stepsNumber Number of steps to use in this sequencer page switcher.
     * @param optional Boolean that indicates if a {@link sky.monome.behavior.Radio.RadioGroup Radio.RadioGroup} or a
     * {@link sky.monome.behavior.OptionalRadio.OptionalRadioGroup OptionalRadio.OptionalRadioGroup}
     * is used to control the steps buttons.
     * @param pagesNumber Number of pages to use in this sequencer page switcher.
     * @param sequenceIterator Sequence iterator to use to iterate over the sequence.
     * @throws sky.monome.exception.MonomeException When the specified steps number is invalid, or when
     * the specified pages number is invalid, or when a led state can't be initialized.
     * @deprecated Since SkyMonome v1.2, all components register themselves inside their
     * container, so you don't need to specify the container by calling this constructor.
     */
    @Deprecated
    public SequencerPageSwitcher(String name,Container container,int x,int y,int width,int height,SequencerOrientation sequencerOrientation,float tempo,int divisions,int stepsNumber,boolean optional,int pagesNumber,SequenceIterator<SequencerPageSwitcher,SequencerRadioGroup> sequenceIterator) throws MonomeException
    {
        super(name,container,x,y,width,height);
        sequencerEffectTime=SEQUENCER_EFFECT_TIME;
        setStepsNumber(stepsNumber);
        if(pagesNumber<1)
            throw new MonomeException("This sequencer page switcher must have at least 1 page");
        this.optional=optional;
        activePage=null;
        stepsNumberPseudoCopyWhenChangingRealValue=stepsNumber;
        this.sequencerOrientation=sequencerOrientation;
        this.sequenceIterator=sequenceIterator;
        activeStepNumber=0;
        activeStepNumberPseudoCopyForSequencerEffect=0;
        sequencerEngine=new SequencerEngine<SequencerPageSwitcher,SequencerRadioGroup>(getMonome(),tempo,divisions,this);
        for(int i=0;i<pagesNumber;i++)
        {
            SequencerPage sequencerPage=new SequencerPage("Page "+(i+1));
            sequencerPage.setContainer(this);
            components.add(sequencerPage);
        }
        showPage(components.get(0));
        sequencerEngine.start();
    }

    /**
     * Constructs a sequencer page switcher with the specified name, specified coordinates and dimensions,
     * the specified orientation, specified tempo and number of divisions by quarter note, the specified steps number,
     * the specified mode for radio groups, the specified pages number and the specified sequence iterator.
     * @param name Name of this sequencer page switcher.
     * @param x X-coordinate of this sequencer page switcher in the local context of its container.
     * @param y Y-coordinate of this sequencer page switcher in the local context of its container.
     * @param width Width of this sequencer page switcher.
     * @param height Height of this sequencer page switcher.
     * @param sequencerOrientation Sequencer orientation to use with this sequencer page switcher.
     * @param tempo Tempo, in number of quarter notes by minute.
     * @param divisions Number of divisions by quarter note.
     * @param stepsNumber Number of steps to use in this sequencer page switcher.
     * @param optional Boolean that indicates if a {@link sky.monome.behavior.Radio.RadioGroup Radio.RadioGroup} or a
     * {@link sky.monome.behavior.OptionalRadio.OptionalRadioGroup OptionalRadio.OptionalRadioGroup}
     * is used to control the steps buttons.
     * @param pagesNumber Number of pages to use in this sequencer page switcher.
     * @param sequenceIterator Sequence iterator to use to iterate over the sequence.
     * @throws sky.monome.exception.MonomeException When the specified steps number is invalid, or when
     * the specified pages number is invalid, or when a led state can't be initialized.
     * @since SkyMonome v1.2
     */
    public SequencerPageSwitcher(String name,int x,int y,int width,int height,SequencerOrientation sequencerOrientation,float tempo,int divisions,int stepsNumber,boolean optional,int pagesNumber,SequenceIterator<SequencerPageSwitcher,SequencerRadioGroup> sequenceIterator) throws MonomeException
    {
        super(name,x,y,width,height);
        sequencerEffectTime=SEQUENCER_EFFECT_TIME;
        setStepsNumber(stepsNumber);
        if(pagesNumber<1)
            throw new MonomeException("This sequencer page switcher must have at least 1 page");
        this.optional=optional;
        activePage=null;
        stepsNumberPseudoCopyWhenChangingRealValue=stepsNumber;
        this.sequencerOrientation=sequencerOrientation;
        this.sequenceIterator=sequenceIterator;
        activeStepNumber=0;
        activeStepNumberPseudoCopyForSequencerEffect=0;
        sequencerEngine=new SequencerEngine<SequencerPageSwitcher,SequencerRadioGroup>(getMonome(),tempo,divisions,this);
        for(int i=0;i<pagesNumber;i++)
        {
            SequencerPage sequencerPage=new SequencerPage("Page "+(i+1));
            sequencerPage.setContainer(this);
            components.add(sequencerPage);
        }
        showPage(components.get(0));
        sequencerEngine.start();
    }

    /**
     * Constructs a sequencer page switcher with the specified name, specified coordinates and dimensions,
     * the specified orientation, specified tempo and number of divisions by quarter note, the specified steps number,
     * the specified mode for radio groups, the specified pages number, the specified sequence iterator factory
     * and contained by the specified container.
     * @param name Name of this sequencer page switcher.
     * @param container Container that will contain this sequencer page switcher.
     * @param x X-coordinate of this sequencer page switcher in the local context of its container.
     * @param y Y-coordinate of this sequencer page switcher in the local context of its container.
     * @param width Width of this sequencer page switcher.
     * @param height Height of this sequencer page switcher.
     * @param sequencerOrientation Sequencer orientation to use with this sequencer page switcher.
     * @param tempo Tempo, in number of quarter notes by minute.
     * @param divisions Number of divisions by quarter note.
     * @param stepsNumber Number of steps to use in this sequencer page switcher.
     * @param optional Boolean that indicates if a {@link sky.monome.behavior.Radio.RadioGroup Radio.RadioGroup} or a
     * {@link sky.monome.behavior.OptionalRadio.OptionalRadioGroup OptionalRadio.OptionalRadioGroup}
     * is used to control the steps buttons.
     * @param pagesNumber Number of pages to use in this sequencer page switcher.
     * @param sequenceIteratorFactory Factory for sequence iterator to use to iterate over the sequence.
     * @throws sky.monome.exception.MonomeException When the specified steps number is invalid, or when
     * the specified pages number is invalid, or when a led state can't be initialized.
     * @since SkyMonome v1.1
     * @deprecated Since SkyMonome v1.2, all components register themselves inside their
     * container, so you don't need to specify the container by calling this constructor.
     */
    @Deprecated
    public SequencerPageSwitcher(String name,Container container,int x,int y,int width,int height,SequencerOrientation sequencerOrientation,float tempo,int divisions,int stepsNumber,boolean optional,int pagesNumber,SequenceIteratorFactory<SequencerPageSwitcher,SequencerRadioGroup> sequenceIteratorFactory) throws MonomeException
    {
        super(name,container,x,y,width,height);
        sequencerEffectTime=SEQUENCER_EFFECT_TIME;
        setStepsNumber(stepsNumber);
        if(pagesNumber<1)
            throw new MonomeException("This sequencer page switcher must have at least 1 page");
        this.optional=optional;
        activePage=null;
        stepsNumberPseudoCopyWhenChangingRealValue=stepsNumber;
        this.sequencerOrientation=sequencerOrientation;
        this.sequenceIterator=sequenceIteratorFactory.createSequenceIterator();
        activeStepNumber=0;
        activeStepNumberPseudoCopyForSequencerEffect=0;
        sequencerEngine=new SequencerEngine<SequencerPageSwitcher,SequencerRadioGroup>(getMonome(),tempo,divisions,this);
        for(int i=0;i<pagesNumber;i++)
        {
            SequencerPage sequencerPage=new SequencerPage("Page "+(i+1));
            sequencerPage.setContainer(this);
            components.add(sequencerPage);
        }
        showPage(components.get(0));
        sequencerEngine.start();
    }

    /**
     * Constructs a sequencer page switcher with the specified name, specified coordinates and dimensions,
     * the specified orientation, specified tempo and number of divisions by quarter note, the specified steps number,
     * the specified mode for radio groups, the specified pages number and the specified sequence iterator factory.
     * @param name Name of this sequencer page switcher.
     * @param x X-coordinate of this sequencer page switcher in the local context of its container.
     * @param y Y-coordinate of this sequencer page switcher in the local context of its container.
     * @param width Width of this sequencer page switcher.
     * @param height Height of this sequencer page switcher.
     * @param sequencerOrientation Sequencer orientation to use with this sequencer page switcher.
     * @param tempo Tempo, in number of quarter notes by minute.
     * @param divisions Number of divisions by quarter note.
     * @param stepsNumber Number of steps to use in this sequencer page switcher.
     * @param optional Boolean that indicates if a {@link sky.monome.behavior.Radio.RadioGroup Radio.RadioGroup} or a
     * {@link sky.monome.behavior.OptionalRadio.OptionalRadioGroup OptionalRadio.OptionalRadioGroup}
     * is used to control the steps buttons.
     * @param pagesNumber Number of pages to use in this sequencer page switcher.
     * @param sequenceIteratorFactory Factory for sequence iterator to use to iterate over the sequence.
     * @throws sky.monome.exception.MonomeException When the specified steps number is invalid, or when
     * the specified pages number is invalid, or when a led state can't be initialized.
     * @since SkyMonome v1.2
     */
    public SequencerPageSwitcher(String name,int x,int y,int width,int height,SequencerOrientation sequencerOrientation,float tempo,int divisions,int stepsNumber,boolean optional,int pagesNumber,SequenceIteratorFactory<SequencerPageSwitcher,SequencerRadioGroup> sequenceIteratorFactory) throws MonomeException
    {
        super(name,x,y,width,height);
        sequencerEffectTime=SEQUENCER_EFFECT_TIME;
        setStepsNumber(stepsNumber);
        if(pagesNumber<1)
            throw new MonomeException("This sequencer page switcher must have at least 1 page");
        this.optional=optional;
        activePage=null;
        stepsNumberPseudoCopyWhenChangingRealValue=stepsNumber;
        this.sequencerOrientation=sequencerOrientation;
        this.sequenceIterator=sequenceIteratorFactory.createSequenceIterator();
        activeStepNumber=0;
        activeStepNumberPseudoCopyForSequencerEffect=0;
        sequencerEngine=new SequencerEngine<SequencerPageSwitcher,SequencerRadioGroup>(getMonome(),tempo,divisions,this);
        for(int i=0;i<pagesNumber;i++)
        {
            SequencerPage sequencerPage=new SequencerPage("Page "+(i+1));
            sequencerPage.setContainer(this);
            components.add(sequencerPage);
        }
        showPage(components.get(0));
        sequencerEngine.start();
    }

    /**
     * Returns an array of all pages.
     * @return An array of all pages.
     */
    public SequencerPage[] getPages()
    {
        return components.toArray(new SequencerPage[0]);
    }

    /**
     * Returns the currently active page.
     * @return The currently active page.
     */
    public SequencerPage getActivePage()
    {
        return activePage;
    }

    /**
     * Sets as active the specified page.
     * If the specified object is not contained by this sequencer page switcher, or is {@code null}, this method does nothing.
     * @param sequencerPage New active page.
     * @throws sky.monome.exception.MonomeException When a led state can't be modified.
     */
    public void showPage(SequencerPage sequencerPage) throws MonomeException
    {
        if(sequencerPage==null)
            return;
        if(activePage==sequencerPage)
            return;
        if(!components.contains(sequencerPage))
            return;
        activePage=sequencerPage;
        getMonome().refresh();
    }

    /**
     * Returns the sequencer effect time, in milliseconds.
     * The sequencer effect is the short lightning that symbolizes the
     * activation of a new step in the sequence.
     * @return The sequencer effect time, in milliseconds.
     * @since SkyMonome v1.3
     */
    public long getSequencerEffectTime()
    {
        return sequencerEffectTime;
    }

    /**
     * Modifies the sequencer effect time, in milliseconds.
     * The sequencer effect is the short lightning that symbolizes the
     * activation of a new step in the sequence.
     * @param sequencerEffectTime New sequencer effect time, in milliseconds.
     * Please note that if this new time exceeds the time between two
     * consecutive steps, so you may meet erratic behaviors.
     * @since SkyMonome v1.3
     */
    public void setSequencerEffectTime(long sequencerEffectTime)
    {
        this.sequencerEffectTime=sequencerEffectTime;
    }

    /**
     * Returns the sequencer engine that is used by this sequencer.
     * @return The sequencer engine that is used by this sequencer.
     * @since SkyMonome v1.3
     */
    public SequencerEngine<SequencerPageSwitcher,SequencerRadioGroup> getSequencerEngine()
    {
        return sequencerEngine;
    }

    /**
     * Invoked when this sequencer must iterate over the sequence.
     * @param sequencerEngine Sequencer engine that called this method.
     * @throws sky.monome.exception.MonomeException When a problem occurs in the iteration over the sequence.
     */
    public void sequencingAction(SequencerEngine<SequencerPageSwitcher,SequencerRadioGroup> sequencerEngine) throws MonomeException
    {
        try
        {
            activeStepNumber=sequenceIterator.getNextStep(this);
            activeStepNumberPseudoCopyForSequencerEffect=activeStepNumber;
            if(activeStepNumber<stepsNumber)
                stepsNumberPseudoCopyWhenChangingRealValue=stepsNumber;
            if(isVisible())
                getMonome().refresh();
            fireStepChanged(this,activeStepNumber);
            synchronized(components.getLockObject())
            {
                for(SequencerPage sequencerPage:components)
                    sequencerPage.fireStepChanged(sequencerPage,activeStepNumber);
            }
            Thread.sleep(sequencerEffectTime);
            activeStepNumberPseudoCopyForSequencerEffect=-1;
            if(isVisible())
                getMonome().refresh();
        }
        catch(InterruptedException e)
        {
        }
    }

    /**
     * Returns the number of the active step in the sequence.
     * @return The number of the active step in the sequence.
     */
    public int getActiveStepNumberInSequence()
    {
        return activeStepNumber;
    }

    /**
     * Returns the number of steps in the sequence.
     * @return The number of steps in the sequence.
     */
    public int getStepsNumberInSequence()
    {
        return stepsNumberPseudoCopyWhenChangingRealValue;
    }

    /**
     * Returns the maximum possible number of steps in the sequence.
     * @return The maximum possible number of steps in the sequence.
     * @since SkyMonome v1.1
     */
    public int getMaximumStepsNumberInSequence()
    {
        return sequencerOrientation==SequencerOrientation.X_FOR_TIME_Y_FOR_ANYTHING?width:height;
    }

    /**
     * Returns the number of available notes by step in the sequence.
     * @return The number of available notes by step in the sequence.
     * @since SkyMonome v1.1
     */
    public int getNotesNumberByStep()
    {
        return activePage.buttonManagers.get(0).getRadiosNumber();
    }

    /**
     * Modifies the number of steps to iterate over the sequence.
     * @param stepsNumber New number of steps to iterate over the sequence.
     * @throws sky.monome.exception.MonomeException When the new steps number is incorrect for this sequencer.
     */
    public void setStepsNumber(int stepsNumber) throws MonomeException
    {
        if(sequencerOrientation==SequencerOrientation.X_FOR_TIME_Y_FOR_ANYTHING&&stepsNumber>width||sequencerOrientation==SequencerOrientation.X_FOR_ANYTHING_Y_FOR_TIME&&stepsNumber>height)
            throw new MonomeException("Not big enough for "+stepsNumber+" steps");
        if(stepsNumber<2)
            throw new MonomeException("A minimum of 2 steps is required");
        this.stepsNumber=stepsNumber;
    }

    /**
     * Notifies this sequencer page switcher that a message comes from the Monome device.
     * @param messageDigester Message digester that prepares and encapsulates the message for an easy access of informations contained in the message.
     * @throws sky.monome.exception.MonomeException When a problem has occured when treating the message.
     */
    @Override
    public void notify(OSCMessageDigester messageDigester) throws MonomeException
    {
        activePage.notify(messageDigester);
    }

    /**
     * Writes this sequencer page switcher on the specified frame in order to refresh the Monome device.
     * Once this frame is completed, it is sent to the Monome device.
     * @param frame Frame in which this sequencer page switcher must write its led state.
     * @throws sky.monome.exception.MonomeException When a problem has occured while getting the led state of a page inside this sequencer page switcher.
     * @see sky.monome.Monome#refresh()
     */
    @Override
    public void writeOn(Frame frame) throws MonomeException
    {
        activePage.writeOn(frame);
    }

    /**
     * Returns a string representation of this sequencer page switcher.
     * @return A string representation of this sequencer page switcher.
     */
    public String toString()
    {
        return "SequencerPageSwitcher "+name;
    }

    /**
     * Adds the specified sequencer listener to the list of sequencer listeners.
     * @param sequencerListener Sequencer listener to add to the list of sequencer listeners.
     */
    public void addSequencerListener(SequencerListener<SequencerPageSwitcher,SequencerRadioGroup> sequencerListener)
    {
        eventListenerList.add(SequencerListener.class,sequencerListener);
    }

    /**
     * Removes the specified sequencer listener from the list of sequencer listeners.
     * @param sequencerListener Sequencer listener to remove from the list of sequencer listeners.
     */
    public void removeSequencerListener(SequencerListener<SequencerPageSwitcher,SequencerRadioGroup> sequencerListener)
    {
        eventListenerList.remove(SequencerListener.class,sequencerListener);
    }

    /**
     * Returns an array of all sequencer listeners.
     * @return An array of all sequencer listeners.
     */
    @SuppressWarnings("unchecked")
    public SequencerListener<SequencerPageSwitcher,SequencerRadioGroup>[] getSequencerListeners()
    {
        return eventListenerList.getListeners(SequencerListener.class);
    }

    /**
     * Invoked when a step change occurs.
     * @param sequencerPageSwitcher Sequencer page switcher that triggered the sequencer event.
     */
    public void fireStepChanged(SequencerPageSwitcher sequencerPageSwitcher,int activeStepNumber)
    {
        for(SequencerListener<SequencerPageSwitcher,SequencerRadioGroup> sequencerListener:getSequencerListeners())
            new ThreadWithUserObjects(sequencerListener,sequencerPageSwitcher,activeStepNumber)
            {
                public void run()
                {
                    this.<SequencerListener<SequencerPageSwitcher,SequencerRadioGroup>>getUserObject(0).stepChanged(new SequencerEvent<SequencerPageSwitcher,SequencerRadioGroup>(System.currentTimeMillis(),this.<SequencerPageSwitcher>getUserObject(1),this.<Integer>getUserObject(2),-1));
                }
            }.start();
    }

    /**
     * Returns an array of all button managers of this sequencer page switcher which are contained by the currently activated page.
     * Returned button managers are typed to the specified type.
     * @param <T> Desired type for button managers. It should be a subclass of {@link sky.monome.event.button.ButtonManager ButtonManager}.
     * @param clazz Class object that specify the return type for button managers.
     * @return An array of all button managers of this sequencer page switcher which are contained by the currently activated page.
     * @throws ClassCastException When button managers can't be typed to the specified type.
     * @deprecated Since it is more logical to use {@link #getButtonManagersForPage(java.lang.Class,sky.monome.SequencerPageSwitcher.SequencerPage)
     * getButtonManagersForPage(Class<T extends ButtonManager>,SequencerPage)} to specify the page on which you want button managers.
     */
    @Deprecated
    public <T extends ButtonManager<?>> T[] getButtonManagers(Class<T> clazz)
    {
        return activePage.getButtonManagers(clazz);
    }

    /**
     * Returns an array of all button managers of this sequencer component.
     * Returned button managers are typed to the type defined by the parametrization of this class.
     * @return An array of all button managers of this sequencer component.
     * @since SkyMonome v1.1
     * @deprecated Since it is more logical to use {@link #getButtonManagersForPage(sky.monome.SequencerPageSwitcher.SequencerPage)
     * getButtonManagersForPage(SequencerPage)} to specify the page on which you want button managers.
     */
    @Deprecated
    public SequencerRadioGroup[] getButtonManagers()
    {
        return activePage.getButtonManagers();
    }

    /**
     * Returns an array of all button managers of this sequencer page switcher which are contained by the specified page.
     * @param <T> Desired type for button managers. It should be a subclass of {@link sky.monome.event.button.ButtonManager ButtonManager}.
     * @param clazz Class object that specify the return type for button managers.
     * @param page Page of interest.
     * @return An array of all button managers of this sequencer page switcher which are contained by the specified page.
     * @throws ClassCastException When button managers can't be typed to the specified type.
     * @deprecated Since this class implements an interface that is parametrized, it is recommended to use
     * {@link #getButtonManagerForPage(sky.monome.SequencerPageSwitcher.SequencerPage, int)  getButtonManagerForPage(SequencerPage,int)} instead.
     */
    @Deprecated
    public <T extends ButtonManager<?>> T[] getButtonManagersForPage(Class<T> clazz,SequencerPage page)
    {
        return page.getButtonManagers(clazz);
    }

    /**
     * Returns an array of all button managers of this sequencer page switcher which are contained by the specified page.
     * @param page Page of interest.
     * @return An array of all button managers of this sequencer page switcher which are contained by the specified page.
     * @throws ClassCastException When button managers can't be typed to the specified type.
     * @since SkyMonome v1.1
     */
    public SequencerRadioGroup[] getButtonManagersForPage(SequencerPage page)
    {
        return page.getButtonManagers();
    }

    /**
     * Returns the button manager of this sequencer page switcher at the specified step number and which is contained by the currently activated page.
     * @param <T> Desired type for the button manager. It should be a subclass of {@link sky.monome.event.button.ButtonManager ButtonManager}.
     * @param clazz Class object that specify the return type for the button manager.
     * @param number Number of the button manager needed.
     * @return The button manager of this sequencer page switcher at the specified step number which is contained by the currently activated page.
     * @throws ClassCastException When the button manager can't be typed to the specified type.
     * @deprecated Since it is more logical to use {@link #getButtonManagerForPage(java.lang.Class,sky.monome.SequencerPageSwitcher.SequencerPage,int)
     * getButtonManagerForPage(Class<T extends ButtonManager>,SequencerPage,int)} to specify the page on which you want the button manager.
     */
    @Deprecated
    public <T extends ButtonManager<?>> T getButtonManager(Class<T> clazz,int number)
    {
        return activePage.getButtonManager(clazz,number);
    }

    /**
     * Returns the button manager of this sequencer component at the specified step number.
     * The returned button manager is typed to the type defined by the parametrization of this class.
     * @param number Number of the button manager needed.
     * @return The button manager of this sequencer component at the specified step number.
     * @since SkyMonome v1.1
     * @deprecated Since it is more logical to use {@link #getButtonManagerForPage(sky.monome.SequencerPageSwitcher.SequencerPage,int)
     * getButtonManagerForPage(SequencerPage,int)} to specify the page on which you want the button manager.
     */
    @Deprecated
    public SequencerRadioGroup getButtonManager(int number)
    {
        return activePage.getButtonManager(number);
    }

    /**
     * Returns the button manager of this sequencer page switcher at the specified step number and which is contained by the specified page.
     * @param <T> Desired type for the button manager. It should be a subclass of {@link sky.monome.event.button.ButtonManager ButtonManager}.
     * @param clazz Class object that specify the return type for the button manager.
     * @param page Page of interest.
     * @param number Number of the button manager needed.
     * @return The button manager of this sequencer page switcher at the specified step number and which is contained by the specified page.
     * @throws ClassCastException When the button manager can't be typed to the specified type.
     * @deprecated Since this class implements an interface that is parametrized, it is recommended to use
     * {@link #getButtonManagerForPage(sky.monome.SequencerPageSwitcher.SequencerPage, int)  getButtonManagerForPage(SequencerPage,int)} instead.
     */
    @Deprecated
    public <T extends ButtonManager<?>> T getButtonManagerForPage(Class<T> clazz,SequencerPage page,int number)
    {
        return page.getButtonManager(clazz,number);
    }

    /**
     * Returns the button manager of this sequencer page switcher at the specified step number and which is contained by the specified page.
     * @param page Page of interest.
     * @param number Number of the button manager needed.
     * @return The button manager of this sequencer page switcher at the specified step number and which is contained by the specified page.
     * @throws ClassCastException When the button manager can't be typed to the specified type.
     * @since SkyMonome v1.1
     */
    public SequencerRadioGroup getButtonManagerForPage(SequencerPage page,int number)
    {
        return page.getButtonManager(number);
    }

    /**
     * Returns the sequence iterator used by this sequencer.
     * @return The sequence iterator used by this sequencer.
     * @since SkyMonome v1.1
     */
    public SequenceIterator<SequencerPageSwitcher,SequencerRadioGroup> getSequenceIterator()
    {
        return sequenceIterator;
    }

    /**
     * Sets the sequence iterator used by this sequencer.
     * @param sequenceIterator New sequence iterator to use in this sequencer.
     * @since SkyMonome v1.1
     */
    public void setSequenceIterator(SequenceIterator<SequencerPageSwitcher,SequencerRadioGroup> sequenceIterator)
    {
        this.sequenceIterator=sequenceIterator;
    }

    /**
     * Page of sequencer. This class is a special implementation of the
     * {@link sky.monome.event.sequencer.SequencerComponent SequencerComponent} interface based on the
     * {@link sky.monome.AbstractGroup AbstractGroup}<{@link sky.monome.LedButtonCouple LedButtonCouple}> class.
     */
    public class SequencerPage extends AbstractGroup<LedButtonCouple> implements SequencerComponent<SequencerPage,SequencerRadioGroup>,LedStateModificationLayer
    {
        /**
         * List of button managers that manage each step of the enclosing sequencer.
         */
        protected SynchronizedList<SequencerRadioGroup> buttonManagers;

        /**
         * Constructs a sequencer page with the specified name.
         * @param name Name of this sequencer page.
         * @throws sky.monome.exception.MonomeException When a led state can't be initialized.
         */
        protected SequencerPage(String name) throws MonomeException
        {
            super(name,0,0,SequencerPageSwitcher.this.width,SequencerPageSwitcher.this.height);
            buttonManagers=new SynchronizedList<SequencerRadioGroup>();
            if(sequencerOrientation==SequencerOrientation.X_FOR_TIME_Y_FOR_ANYTHING)
                for(int i=0;i<width;i++)
                {
                    SequencerRadioGroup sequencerRadioGroup=new SequencerRadioGroup(optional);
                    buttonManagers.add(sequencerRadioGroup);
                    for(int j=0;j<height;j++)
                        addLedButtonCouple(new LedButtonCouple("Led "+i+","+j,i,j,new SequencerRadio(sequencerRadioGroup)));
                    sequencerRadioGroup.initRadio((SequencerRadio)components.get(components.size()-1).getBehavior());
                }
            else
                for(int j=0;j<height;j++)
                {
                    SequencerRadioGroup sequencerRadioGroup=new SequencerRadioGroup(optional);
                    buttonManagers.add(sequencerRadioGroup);
                    for(int i=0;i<width;i++)
                        addLedButtonCouple(new LedButtonCouple("Led "+i+","+j,i,j,new SequencerRadio(sequencerRadioGroup)));
                    sequencerRadioGroup.initRadio((SequencerRadio)components.get(components.size()-1).getBehavior());
                }
        }

        /**
         * Adds the specified led/button couple to the list of led/button couples.
         * @param ledButtonCouple Led/button couple to add to the list of led/button couples.
         * @throws sky.monome.exception.MonomeException When a led/button couple has bounds already used by another led/button couple.
         */
        protected void addLedButtonCouple(LedButtonCouple ledButtonCouple) throws MonomeException
        {
            synchronized(components.getLockObject())
            {
                for(LedButtonCouple aLedButtonCouple:components)
                    if(aLedButtonCouple.getBounds().intersects(ledButtonCouple.getBounds()))
                        throw new MonomeException("Component bounds are already used");
            }
            ledButtonCouple.setContainer(SequencerPage.this);
            components.add(ledButtonCouple);
        }

        /**
         * Returns the logical Monome device that contains this sequencer page.
         * The logical Monome device is always at the top of the Monome assembling tree.
         * @return The logical Monome device that contains this sequencer page.
         */
        @Override
        public Monome getMonome()
        {
            return SequencerPageSwitcher.this.getMonome();
        }

        /**
         * Returns the absolute X-coordinate of this sequencer page.
         * @return The absolute X-coordinate of this sequencer page.
         */
        @Override
        public int getAbsoluteX()
        {
            return SequencerPageSwitcher.this.getAbsoluteX();
        }

        /**
         * Returns the absolute Y-coordinate of this sequencer page.
         * @return The absolute Y-coordinate of this sequencer page.
         */
        @Override
        public int getAbsoluteY()
        {
            return SequencerPageSwitcher.this.getAbsoluteY();
        }

        /**
         * Indicates whether this sequencer page is actually visible.
         * @return {@code true} if this sequencer page is actually visible, {@code false} otherwise.
         */
        @Override
        public boolean isVisible()
        {
            return SequencerPageSwitcher.this.isVisible()&&activePage==this;
        }

        /**
         * Indicates whether this sequencer page can have a parent container in the Monome assembling tree.
         * @return Always {@code false}, since pages are contained only by page switchers.
         */
        @Override
        public boolean canHaveParentContainer()
        {
            return false;
        }

        /**
         * Returns a string representation of this sequencer page.
         * @return A string representation of this sequencer page.
         */
        public String toString()
        {
            return "SequencerPage "+name;
        }

        /**
         * Returns the bounds of this sequencer page in the local context of its container.
         * @return The bounds of this sequencer page in the local context of its container.
         */
        @Override
        public Rectangle getBounds()
        {
            return SequencerPageSwitcher.this.getBounds();
        }

        /**
         * Adds the specified sequencer listener to the list of sequencer listeners.
         * @param sequencerListener Sequencer listener to add to the list of sequencer listeners.
         */
        public void addSequencerListener(SequencerListener<SequencerPage,SequencerRadioGroup> sequencerListener)
        {
            eventListenerList.add(SequencerListener.class,sequencerListener);
        }

        /**
         * Removes the specified sequencer listener from the list of sequencer listeners.
         * @param sequencerListener Sequencer listener to remove from the list of sequencer listeners.
         */
        public void removeSequencerListener(SequencerListener<SequencerPage,SequencerRadioGroup> sequencerListener)
        {
            eventListenerList.remove(SequencerListener.class,sequencerListener);
        }

        /**
         * Returns an array of all sequencer listeners.
         * @return An array of all sequencer listeners.
         */
        @SuppressWarnings("unchecked")
        public SequencerListener<SequencerPage,SequencerRadioGroup>[] getSequencerListeners()
        {
            return eventListenerList.getListeners(SequencerListener.class);
        }

        /**
         * Invoked when a step change occurs.
         * @param sequencerPage Sequencer page that triggered the sequencer event.
         */
        public void fireStepChanged(SequencerPage sequencerPage,int activeStepNumber)
        {
            int noteNumber=-1;
            try
            {
                noteNumber=sequencerOrientation==SequencerOrientation.X_FOR_TIME_Y_FOR_ANYTHING?getButtonManager(activeStepNumber).getActiveRadio().getLedButtonCouple().getY():getButtonManager(activeStepNumber).getActiveRadio().getLedButtonCouple().getX();
            }
            catch(NullPointerException e)
            {
            }
            for(SequencerListener<SequencerPage,SequencerRadioGroup> sequencerListener:getSequencerListeners())
                new ThreadWithUserObjects(sequencerListener,sequencerPage,activeStepNumber,noteNumber)
                {
                    public void run()
                    {
                        this.<SequencerListener<SequencerPage,SequencerRadioGroup>>getUserObject(0).stepChanged(new SequencerEvent<SequencerPage,SequencerRadioGroup>(System.currentTimeMillis(),this.<SequencerPage>getUserObject(1),this.<Integer>getUserObject(2),this.<Integer>getUserObject(3)));
                    }
                }.start();
        }

        /**
         * Returns an array of all button managers of this sequencer component.
         * Returned button managers are typed to the specified type.
         * @param <T> Desired type for button managers. It should be a subclass of {@link sky.monome.event.button.ButtonManager ButtonManager}.
         * @param clazz Class object that specify the return type for button managers.
         * @return An array of all button managers of this sequencer component.
         * @throws ClassCastException When button managers can't be typed to the specified type.
         * @deprecated Since this class implements an interface that is parametrized, it is recommended to use
         * {@link #getButtonManagers() getButtonManagers()} instead.
         */
        @Deprecated
        @SuppressWarnings("unchecked")
        public <T extends ButtonManager<?>> T[] getButtonManagers(Class<T> clazz)
        {
            return (T[])buttonManagers.toArray(new ButtonManager[0]);
        }

        /**
         * Returns an array of all button managers of this sequencer component.
         * Returned button managers are typed to the type defined by the parametrization of this class.
         * @return An array of all button managers of this sequencer component.
         * @since SkyMonome v1.1
         */
        public SequencerRadioGroup[] getButtonManagers()
        {
            return buttonManagers.toArray(new SequencerRadioGroup[0]);
        }

        /**
         * Returns the button manager of this sequencer component at the specified step number.
         * The returned button manager is typed to the specified type.
         * @param <T> Desired type for the button manager. It should be a subclass of {@link sky.monome.event.button.ButtonManager ButtonManager}.
         * @param clazz Class object that specify the return type for the button manager.
         * @param number Number of the button manager needed.
         * @return The button manager of this sequencer component at the specified step number.
         * @throws ClassCastException When the button manager can't be typed to the specified type.
         * @deprecated Since this class implements an interface that is parametrized, it is recommended to use
         * {@link #getButtonManager(int) getButtonManager(int)} instead.
         */
        @Deprecated
        @SuppressWarnings("unchecked")
        public <T extends ButtonManager<?>> T getButtonManager(Class<T> clazz,int number)
        {
            return (T)buttonManagers.get(number);
        }

        /**
         * Returns the button manager of this sequencer component at the specified step number.
         * The returned button manager is typed to the type defined by the parametrization of this class.
         * @param number Number of the button manager needed.
         * @return The button manager of this sequencer component at the specified step number.
         * @since SkyMonome v1.1
         */
        public SequencerRadioGroup getButtonManager(int number)
        {
            return buttonManagers.get(number);
        }

        /**
         * Returns the led state to show instead of the natural led state of the specified led/button couple.
         * @param ledButtonCouple led/button couple which is the reference.
         * @return The led state to show instead of the natural led state of the specified led/button couple.
         */
        public LedState getLedStateToShow(LedButtonCouple ledButtonCouple)
        {
            if(sequencerOrientation==SequencerOrientation.X_FOR_TIME_Y_FOR_ANYTHING&&ledButtonCouple.getX()>=stepsNumberPseudoCopyWhenChangingRealValue||sequencerOrientation==SequencerOrientation.X_FOR_ANYTHING_Y_FOR_TIME&&height-1-ledButtonCouple.getY()>=stepsNumberPseudoCopyWhenChangingRealValue)
                return ledButtonCouple.getButtonState()==ButtonState.BUTTON_PUSHED?LedState.ON:LedState.OFF;
            boolean state=ledButtonCouple.getLedState()==LedState.ON;
            if(sequencerOrientation==SequencerOrientation.X_FOR_TIME_Y_FOR_ANYTHING)
                if(activeStepNumberPseudoCopyForSequencerEffect==ledButtonCouple.getX())
                    state=!state;
                else
                {
                }
            else
                if(activeStepNumberPseudoCopyForSequencerEffect==height-1-ledButtonCouple.getY())
                    state=!state;
            return state?LedState.ON:LedState.OFF;
        }
    }
}