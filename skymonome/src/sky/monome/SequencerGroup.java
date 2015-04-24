package sky.monome;

import sky.monome.LedButtonCouple.ButtonState;
import sky.monome.LedButtonCouple.LedState;
import sky.monome.behavior.SequencerRadio;
import sky.monome.behavior.SequencerRadio.SequencerRadioGroup;
import sky.monome.event.button.ButtonManager;
import sky.monome.event.sequencer.SequencerEvent;
import sky.monome.event.sequencer.SequencerListener;
import sky.monome.exception.MonomeException;
import sky.monome.layer.LedStateModificationLayer;
import sky.monome.sequence.SequenceIterator;
import sky.monome.sequence.UpwardSequenceIterator;
import sky.monome.sequence.factory.SequenceIteratorFactory;
import sky.monome.sequencer.Sequencer;
import sky.monome.sequencer.SequencerEngine;
import sky.monome.util.SynchronizedList;
import sky.monome.util.ThreadWithUserObjects;

/**
 * Sequencer group. This class is a very basic implementation of the {@link sky.monome.sequencer.Sequencer Sequencer}.
 * @author PJ Skyman
 */
public class SequencerGroup extends AbstractGroup<LedButtonCouple> implements Sequencer<SequencerGroup,SequencerRadioGroup>,LedStateModificationLayer
{
    /**
     * List of button managers that manage each step of this sequencer.
     */
    protected final SynchronizedList<SequencerRadioGroup> buttonManagers;
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
    protected SequenceIterator<SequencerGroup,SequencerRadioGroup> sequenceIterator;
    /**
     * Sequencer engine.
     */
    protected final SequencerEngine<SequencerGroup,SequencerRadioGroup> sequencerEngine;
    /**
     * Time duration of the sequencer effect, in milliseconds
     * (short lightning that symbolizes the activation of a new step in the sequence).
     * @since SkyMonome v1.3
     */
    protected long sequencerEffectTime;

    /**
     * Constructs a sequencer group with the specified name, specified coordinates and dimensions, the specified orientation,
     * specified tempo and number of divisions by quarter note, the specified steps number, the specified mode for radio groups,
     * and contained by the specified container.
     * @param name Name of this sequencer group.
     * @param container Container that will contain this sequencer group.
     * @param x X-coordinate of this sequencer group in the local context of its container.
     * @param y Y-coordinate of this sequencer group in the local context of its container.
     * @param width Width of this sequencer group.
     * @param height Height of this sequencer group.
     * @param sequencerOrientation Sequencer orientation to use with this sequencer group.
     * @param tempo Tempo, in number of quarter notes by minute.
     * @param divisions Number of divisions by quarter note.
     * @param stepsNumber Number of steps to use in this sequencer group.
     * @param optional Boolean that indicates if a {@link sky.monome.behavior.Radio.RadioGroup Radio.RadioGroup} or a
     * {@link sky.monome.behavior.OptionalRadio.OptionalRadioGroup OptionalRadio.OptionalRadioGroup}
     * is used to control the steps buttons.
     * @throws sky.monome.exception.MonomeException When the specified steps number is invalid, or when a led state can't be initialized.
     * @deprecated Since SkyMonome v1.2, all components register themselves inside their
     * container, so you don't need to specify the container by calling this constructor.
     */
    @Deprecated
    public SequencerGroup(String name,Container container,int x,int y,int width,int height,SequencerOrientation sequencerOrientation,float tempo,int divisions,int stepsNumber,boolean optional) throws MonomeException
    {
        this(name,container,x,y,width,height,sequencerOrientation,tempo,divisions,stepsNumber,optional,new UpwardSequenceIterator<SequencerGroup,SequencerRadioGroup>(),null);
    }

    /**
     * Constructs a sequencer group with the specified name, specified coordinates and dimensions, the specified orientation,
     * specified tempo and number of divisions by quarter note, the specified steps number and the specified mode for radio groups.
     * @param name Name of this sequencer group.
     * @param x X-coordinate of this sequencer group in the local context of its container.
     * @param y Y-coordinate of this sequencer group in the local context of its container.
     * @param width Width of this sequencer group.
     * @param height Height of this sequencer group.
     * @param sequencerOrientation Sequencer orientation to use with this sequencer group.
     * @param tempo Tempo, in number of quarter notes by minute.
     * @param divisions Number of divisions by quarter note.
     * @param stepsNumber Number of steps to use in this sequencer group.
     * @param optional Boolean that indicates if a {@link sky.monome.behavior.Radio.RadioGroup Radio.RadioGroup} or a
     * {@link sky.monome.behavior.OptionalRadio.OptionalRadioGroup OptionalRadio.OptionalRadioGroup}
     * is used to control the steps buttons.
     * @throws sky.monome.exception.MonomeException When the specified steps number is invalid, or when a led state can't be initialized.
     * @since SkyMonome v1.2
     */
    public SequencerGroup(String name,int x,int y,int width,int height,SequencerOrientation sequencerOrientation,float tempo,int divisions,int stepsNumber,boolean optional) throws MonomeException
    {
        this(name,x,y,width,height,sequencerOrientation,tempo,divisions,stepsNumber,optional,new UpwardSequenceIterator<SequencerGroup,SequencerRadioGroup>(),null);
    }

    /**
     * Constructs a sequencer group with the specified name, specified coordinates and dimensions, the specified orientation,
     * specified tempo and number of divisions by quarter note, the specified steps number, the specified mode for radio groups,
     * the specified sequence iterator, and contained by the specified container.
     * @param name Name of this sequencer group.
     * @param container Container that will contain this sequencer group.
     * @param x X-coordinate of this sequencer group in the local context of its container.
     * @param y Y-coordinate of this sequencer group in the local context of its container.
     * @param width Width of this sequencer group.
     * @param height Height of this sequencer group.
     * @param sequencerOrientation Sequencer orientation to use with this sequencer group.
     * @param tempo Tempo, in number of quarter notes by minute.
     * @param divisions Number of divisions by quarter note.
     * @param stepsNumber Number of steps to use in this sequencer group.
     * @param optional Boolean that indicates if a {@link sky.monome.behavior.Radio.RadioGroup Radio.RadioGroup} or a
     * {@link sky.monome.behavior.OptionalRadio.OptionalRadioGroup OptionalRadio.OptionalRadioGroup}
     * is used to control the steps buttons.
     * @param sequenceIterator Sequence iterator to use to iterate over the sequence.
     * @throws sky.monome.exception.MonomeException When the specified steps number is invalid, or when a led state can't be initialized.
     * @deprecated Since SkyMonome v1.2, all components register themselves inside their
     * container, so you don't need to specify the container by calling this constructor.
     */
    @Deprecated
    public SequencerGroup(String name,Container container,int x,int y,int width,int height,SequencerOrientation sequencerOrientation,float tempo,int divisions,int stepsNumber,boolean optional,SequenceIterator<SequencerGroup,SequencerRadioGroup> sequenceIterator) throws MonomeException
    {
        this(name,container,x,y,width,height,sequencerOrientation,tempo,divisions,stepsNumber,optional,sequenceIterator,null);
    }

    /**
     * Constructs a sequencer group with the specified name, specified coordinates and dimensions, the specified orientation,
     * specified tempo and number of divisions by quarter note, the specified steps number, the specified mode for radio groups and
     * the specified sequence iterator.
     * @param name Name of this sequencer group.
     * @param x X-coordinate of this sequencer group in the local context of its container.
     * @param y Y-coordinate of this sequencer group in the local context of its container.
     * @param width Width of this sequencer group.
     * @param height Height of this sequencer group.
     * @param sequencerOrientation Sequencer orientation to use with this sequencer group.
     * @param tempo Tempo, in number of quarter notes by minute.
     * @param divisions Number of divisions by quarter note.
     * @param stepsNumber Number of steps to use in this sequencer group.
     * @param optional Boolean that indicates if a {@link sky.monome.behavior.Radio.RadioGroup Radio.RadioGroup} or a
     * {@link sky.monome.behavior.OptionalRadio.OptionalRadioGroup OptionalRadio.OptionalRadioGroup}
     * is used to control the steps buttons.
     * @param sequenceIterator Sequence iterator to use to iterate over the sequence.
     * @throws sky.monome.exception.MonomeException When the specified steps number is invalid, or when a led state can't be initialized.
     * @since SkyMonome v1.2
     */
    public SequencerGroup(String name,int x,int y,int width,int height,SequencerOrientation sequencerOrientation,float tempo,int divisions,int stepsNumber,boolean optional,SequenceIterator<SequencerGroup,SequencerRadioGroup> sequenceIterator) throws MonomeException
    {
        this(name,x,y,width,height,sequencerOrientation,tempo,divisions,stepsNumber,optional,sequenceIterator,null);
    }

    /**
     * Constructs a sequencer group with the specified name, specified coordinates and dimensions, the specified orientation,
     * specified tempo and number of divisions by quarter note, the specified steps number, the specified mode for radio groups,
     * the specified sequencer engine, and contained by the specified container.
     * @param name Name of this sequencer group.
     * @param container Container that will contain this sequencer group.
     * @param x X-coordinate of this sequencer group in the local context of its container.
     * @param y Y-coordinate of this sequencer group in the local context of its container.
     * @param width Width of this sequencer group.
     * @param height Height of this sequencer group.
     * @param sequencerOrientation Sequencer orientation to use with this sequencer group.
     * @param tempo Tempo, in number of quarter notes by minute.
     * @param divisions Number of divisions by quarter note.
     * @param stepsNumber Number of steps to use in this sequencer group.
     * @param optional Boolean that indicates if a {@link sky.monome.behavior.Radio.RadioGroup Radio.RadioGroup} or a
     * {@link sky.monome.behavior.OptionalRadio.OptionalRadioGroup OptionalRadio.OptionalRadioGroup}
     * is used to control the steps buttons.
     * @param sequencerEngine Sequencer engine that will drive this sequencer group.
     * @throws sky.monome.exception.MonomeException When the specified steps number is invalid, or when a led state can't be initialized.
     * @deprecated Since SkyMonome v1.2, all components register themselves inside their
     * container, so you don't need to specify the container by calling this constructor.
     */
    @Deprecated
    public SequencerGroup(String name,Container container,int x,int y,int width,int height,SequencerOrientation sequencerOrientation,float tempo,int divisions,int stepsNumber,boolean optional,SequencerEngine<SequencerGroup,SequencerRadioGroup> sequencerEngine) throws MonomeException
    {
        this(name,container,x,y,width,height,sequencerOrientation,tempo,divisions,stepsNumber,optional,new UpwardSequenceIterator<SequencerGroup,SequencerRadioGroup>(),sequencerEngine);
    }

    /**
     * Constructs a sequencer group with the specified name, specified coordinates and dimensions, the specified orientation,
     * specified tempo and number of divisions by quarter note, the specified steps number, the specified mode for radio groups and
     * the specified sequencer engine.
     * @param name Name of this sequencer group.
     * @param x X-coordinate of this sequencer group in the local context of its container.
     * @param y Y-coordinate of this sequencer group in the local context of its container.
     * @param width Width of this sequencer group.
     * @param height Height of this sequencer group.
     * @param sequencerOrientation Sequencer orientation to use with this sequencer group.
     * @param tempo Tempo, in number of quarter notes by minute.
     * @param divisions Number of divisions by quarter note.
     * @param stepsNumber Number of steps to use in this sequencer group.
     * @param optional Boolean that indicates if a {@link sky.monome.behavior.Radio.RadioGroup Radio.RadioGroup} or a
     * {@link sky.monome.behavior.OptionalRadio.OptionalRadioGroup OptionalRadio.OptionalRadioGroup}
     * is used to control the steps buttons.
     * @param sequencerEngine Sequencer engine that will drive this sequencer group.
     * @throws sky.monome.exception.MonomeException When the specified steps number is invalid, or when a led state can't be initialized.
     * @since SkyMonome v1.2
     */
    public SequencerGroup(String name,int x,int y,int width,int height,SequencerOrientation sequencerOrientation,float tempo,int divisions,int stepsNumber,boolean optional,SequencerEngine<SequencerGroup,SequencerRadioGroup> sequencerEngine) throws MonomeException
    {
        this(name,x,y,width,height,sequencerOrientation,tempo,divisions,stepsNumber,optional,new UpwardSequenceIterator<SequencerGroup,SequencerRadioGroup>(),sequencerEngine);
    }

    /**
     * Constructs a sequencer group with the specified name, specified coordinates and dimensions, the specified orientation,
     * specified tempo and number of divisions by quarter note, the specified steps number, the specified mode for radio groups,
     * the specified sequence iterator, the specified sequencer engine, and contained by the specified container.
     * @param name Name of this sequencer group.
     * @param container Container that will contain this sequencer group.
     * @param x X-coordinate of this sequencer group in the local context of its container.
     * @param y Y-coordinate of this sequencer group in the local context of its container.
     * @param width Width of this sequencer group.
     * @param height Height of this sequencer group.
     * @param sequencerOrientation Sequencer orientation to use with this sequencer group.
     * @param tempo Tempo, in number of quarter notes by minute.
     * @param divisions Number of divisions by quarter note.
     * @param stepsNumber Number of steps to use in this sequencer group.
     * @param optional Boolean that indicates if a {@link sky.monome.behavior.Radio.RadioGroup Radio.RadioGroup} or a
     * {@link sky.monome.behavior.OptionalRadio.OptionalRadioGroup OptionalRadio.OptionalRadioGroup}
     * is used to control the steps buttons.
     * @param sequenceIterator Sequence iterator to use to iterate over the sequence.
     * @param sequencerEngine Sequencer engine that will drive this sequencer group.
     * @throws sky.monome.exception.MonomeException When the specified steps number is invalid, or when a led state can't be initialized.
     * @deprecated Since SkyMonome v1.2, all components register themselves inside their
     * container, so you don't need to specify the container by calling this constructor.
     */
    @Deprecated
    public SequencerGroup(String name,Container container,int x,int y,int width,int height,SequencerOrientation sequencerOrientation,float tempo,int divisions,int stepsNumber,boolean optional,SequenceIterator<SequencerGroup,SequencerRadioGroup> sequenceIterator,SequencerEngine<SequencerGroup,SequencerRadioGroup> sequencerEngine) throws MonomeException
    {
        super(name,container,x,y,width,height);
        sequencerEffectTime=SEQUENCER_EFFECT_TIME;
        setStepsNumber(stepsNumber);
        stepsNumberPseudoCopyWhenChangingRealValue=stepsNumber;
        this.sequencerOrientation=sequencerOrientation;
        this.sequenceIterator=sequenceIterator;
        buttonManagers=new SynchronizedList<SequencerRadioGroup>();
        if(sequencerOrientation==SequencerOrientation.X_FOR_TIME_Y_FOR_ANYTHING)
            for(int i=0;i<width;i++)
            {
                SequencerRadioGroup sequencerRadioGroup=new SequencerRadioGroup(optional);
                buttonManagers.add(sequencerRadioGroup);
                for(int j=0;j<height;j++)
                    addLedButtonCouple(new LedButtonCouple("Led "+i+","+j,this,i,j,new SequencerRadio(sequencerRadioGroup)));
                sequencerRadioGroup.initRadio((SequencerRadio)components.get(components.size()-1).getBehavior());
            }
        else
            for(int j=0;j<height;j++)
            {
                SequencerRadioGroup sequencerRadioGroup=new SequencerRadioGroup(optional);
                buttonManagers.add(sequencerRadioGroup);
                for(int i=0;i<width;i++)
                    addLedButtonCouple(new LedButtonCouple("Led "+i+","+j,this,i,j,new SequencerRadio(sequencerRadioGroup)));
                sequencerRadioGroup.initRadio((SequencerRadio)components.get(components.size()-1).getBehavior());
            }
        activeStepNumber=0;
        activeStepNumberPseudoCopyForSequencerEffect=0;
        if(sequencerEngine==null)
        {
            this.sequencerEngine=new SequencerEngine<SequencerGroup,SequencerRadioGroup>(getMonome(),tempo,divisions,this);
            this.sequencerEngine.start();
        }
        else
            this.sequencerEngine=sequencerEngine;
    }

    /**
     * Constructs a sequencer group with the specified name, specified coordinates and dimensions, the specified orientation,
     * specified tempo and number of divisions by quarter note, the specified steps number, the specified mode for radio groups,
     * the specified sequence iterator and the specified sequencer engine.
     * @param name Name of this sequencer group.
     * @param x X-coordinate of this sequencer group in the local context of its container.
     * @param y Y-coordinate of this sequencer group in the local context of its container.
     * @param width Width of this sequencer group.
     * @param height Height of this sequencer group.
     * @param sequencerOrientation Sequencer orientation to use with this sequencer group.
     * @param tempo Tempo, in number of quarter notes by minute.
     * @param divisions Number of divisions by quarter note.
     * @param stepsNumber Number of steps to use in this sequencer group.
     * @param optional Boolean that indicates if a {@link sky.monome.behavior.Radio.RadioGroup Radio.RadioGroup} or a
     * {@link sky.monome.behavior.OptionalRadio.OptionalRadioGroup OptionalRadio.OptionalRadioGroup}
     * is used to control the steps buttons.
     * @param sequenceIterator Sequence iterator to use to iterate over the sequence.
     * @param sequencerEngine Sequencer engine that will drive this sequencer group.
     * @throws sky.monome.exception.MonomeException When the specified steps number is invalid, or when a led state can't be initialized.
     * @since SkyMonome v1.2
     */
    public SequencerGroup(String name,int x,int y,int width,int height,SequencerOrientation sequencerOrientation,float tempo,int divisions,int stepsNumber,boolean optional,SequenceIterator<SequencerGroup,SequencerRadioGroup> sequenceIterator,SequencerEngine<SequencerGroup,SequencerRadioGroup> sequencerEngine) throws MonomeException
    {
        super(name,x,y,width,height);
        sequencerEffectTime=SEQUENCER_EFFECT_TIME;
        setStepsNumber(stepsNumber);
        stepsNumberPseudoCopyWhenChangingRealValue=stepsNumber;
        this.sequencerOrientation=sequencerOrientation;
        this.sequenceIterator=sequenceIterator;
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
        activeStepNumber=0;
        activeStepNumberPseudoCopyForSequencerEffect=0;
        if(sequencerEngine==null)
        {
            this.sequencerEngine=new SequencerEngine<SequencerGroup,SequencerRadioGroup>(getMonome(),tempo,divisions,this);
            this.sequencerEngine.start();
        }
        else
            this.sequencerEngine=sequencerEngine;
    }

    /**
     * Constructs a sequencer group with the specified name, specified coordinates and dimensions, the specified orientation,
     * specified tempo and number of divisions by quarter note, the specified steps number, the specified mode for radio groups,
     * the specified sequence iterator factory, and contained by the specified container.
     * @param name Name of this sequencer group.
     * @param container Container that will contain this sequencer group.
     * @param x X-coordinate of this sequencer group in the local context of its container.
     * @param y Y-coordinate of this sequencer group in the local context of its container.
     * @param width Width of this sequencer group.
     * @param height Height of this sequencer group.
     * @param sequencerOrientation Sequencer orientation to use with this sequencer group.
     * @param tempo Tempo, in number of quarter notes by minute.
     * @param divisions Number of divisions by quarter note.
     * @param stepsNumber Number of steps to use in this sequencer group.
     * @param optional Boolean that indicates if a {@link sky.monome.behavior.Radio.RadioGroup Radio.RadioGroup} or a
     * {@link sky.monome.behavior.OptionalRadio.OptionalRadioGroup OptionalRadio.OptionalRadioGroup}
     * is used to control the steps buttons.
     * @param sequenceIteratorFactory Factory for sequence iterator to use to iterate over the sequence.
     * @throws sky.monome.exception.MonomeException When the specified steps number is invalid, or when a led state can't be initialized.
     * @since SkyMonome v1.1
     * @deprecated Since SkyMonome v1.2, all components register themselves inside their
     * container, so you don't need to specify the container by calling this constructor.
     */
    @Deprecated
    public SequencerGroup(String name,Container container,int x,int y,int width,int height,SequencerOrientation sequencerOrientation,float tempo,int divisions,int stepsNumber,boolean optional,SequenceIteratorFactory<SequencerGroup,SequencerRadioGroup> sequenceIteratorFactory) throws MonomeException
    {
        this(name,container,x,y,width,height,sequencerOrientation,tempo,divisions,stepsNumber,optional,sequenceIteratorFactory.createSequenceIterator(),null);
    }

    /**
     * Constructs a sequencer group with the specified name, specified coordinates and dimensions, the specified orientation,
     * specified tempo and number of divisions by quarter note, the specified steps number, the specified mode for radio groups and
     * the specified sequence iterator factory.
     * @param name Name of this sequencer group.
     * @param x X-coordinate of this sequencer group in the local context of its container.
     * @param y Y-coordinate of this sequencer group in the local context of its container.
     * @param width Width of this sequencer group.
     * @param height Height of this sequencer group.
     * @param sequencerOrientation Sequencer orientation to use with this sequencer group.
     * @param tempo Tempo, in number of quarter notes by minute.
     * @param divisions Number of divisions by quarter note.
     * @param stepsNumber Number of steps to use in this sequencer group.
     * @param optional Boolean that indicates if a {@link sky.monome.behavior.Radio.RadioGroup Radio.RadioGroup} or a
     * {@link sky.monome.behavior.OptionalRadio.OptionalRadioGroup OptionalRadio.OptionalRadioGroup}
     * is used to control the steps buttons.
     * @param sequenceIteratorFactory Factory for sequence iterator to use to iterate over the sequence.
     * @throws sky.monome.exception.MonomeException When the specified steps number is invalid, or when a led state can't be initialized.
     * @since SkyMonome v1.2
     */
    public SequencerGroup(String name,int x,int y,int width,int height,SequencerOrientation sequencerOrientation,float tempo,int divisions,int stepsNumber,boolean optional,SequenceIteratorFactory<SequencerGroup,SequencerRadioGroup> sequenceIteratorFactory) throws MonomeException
    {
        this(name,x,y,width,height,sequencerOrientation,tempo,divisions,stepsNumber,optional,sequenceIteratorFactory.createSequenceIterator(),null);
    }

    /**
     * Constructs a sequencer group with the specified name, specified coordinates and dimensions, the specified orientation,
     * specified tempo and number of divisions by quarter note, the specified steps number, the specified mode for radio groups,
     * the specified sequence iterator factory, the specified sequencer engine, and contained by the specified container.
     * @param name Name of this sequencer group.
     * @param container Container that will contain this sequencer group.
     * @param x X-coordinate of this sequencer group in the local context of its container.
     * @param y Y-coordinate of this sequencer group in the local context of its container.
     * @param width Width of this sequencer group.
     * @param height Height of this sequencer group.
     * @param sequencerOrientation Sequencer orientation to use with this sequencer group.
     * @param tempo Tempo, in number of quarter notes by minute.
     * @param divisions Number of divisions by quarter note.
     * @param stepsNumber Number of steps to use in this sequencer group.
     * @param optional Boolean that indicates if a {@link sky.monome.behavior.Radio.RadioGroup Radio.RadioGroup} or a
     * {@link sky.monome.behavior.OptionalRadio.OptionalRadioGroup OptionalRadio.OptionalRadioGroup}
     * is used to control the steps buttons.
     * @param sequenceIteratorFactory Factory for sequence iterator to use to iterate over the sequence.
     * @param sequencerEngine Sequencer engine that will drive this sequencer group.
     * @throws sky.monome.exception.MonomeException When the specified steps number is invalid, or when a led state can't be initialized.
     * @since SkyMonome v1.1
     * @deprecated Since SkyMonome v1.2, all components register themselves inside their
     * container, so you don't need to specify the container by calling this constructor.
     */
    @Deprecated
    public SequencerGroup(String name,Container container,int x,int y,int width,int height,SequencerOrientation sequencerOrientation,float tempo,int divisions,int stepsNumber,boolean optional,SequenceIteratorFactory<SequencerGroup,SequencerRadioGroup> sequenceIteratorFactory,SequencerEngine<SequencerGroup,SequencerRadioGroup> sequencerEngine) throws MonomeException
    {
        super(name,container,x,y,width,height);
        sequencerEffectTime=SEQUENCER_EFFECT_TIME;
        setStepsNumber(stepsNumber);
        stepsNumberPseudoCopyWhenChangingRealValue=stepsNumber;
        this.sequencerOrientation=sequencerOrientation;
        this.sequenceIterator=sequenceIteratorFactory.createSequenceIterator();
        buttonManagers=new SynchronizedList<SequencerRadioGroup>();
        if(sequencerOrientation==SequencerOrientation.X_FOR_TIME_Y_FOR_ANYTHING)
            for(int i=0;i<width;i++)
            {
                SequencerRadioGroup sequencerRadioGroup=new SequencerRadioGroup(optional);
                buttonManagers.add(sequencerRadioGroup);
                for(int j=0;j<height;j++)
                    addLedButtonCouple(new LedButtonCouple("Led "+i+","+j,this,i,j,new SequencerRadio(sequencerRadioGroup)));
                sequencerRadioGroup.initRadio((SequencerRadio)components.get(components.size()-1).getBehavior());
            }
        else
            for(int j=0;j<height;j++)
            {
                SequencerRadioGroup sequencerRadioGroup=new SequencerRadioGroup(optional);
                buttonManagers.add(sequencerRadioGroup);
                for(int i=0;i<width;i++)
                    addLedButtonCouple(new LedButtonCouple("Led "+i+","+j,this,i,j,new SequencerRadio(sequencerRadioGroup)));
                sequencerRadioGroup.initRadio((SequencerRadio)components.get(components.size()-1).getBehavior());
            }
        activeStepNumber=0;
        activeStepNumberPseudoCopyForSequencerEffect=0;
        if(sequencerEngine==null)
        {
            this.sequencerEngine=new SequencerEngine<SequencerGroup,SequencerRadioGroup>(getMonome(),tempo,divisions,this);
            this.sequencerEngine.start();
        }
        else
            this.sequencerEngine=sequencerEngine;
    }

    /**
     * Constructs a sequencer group with the specified name, specified coordinates and dimensions, the specified orientation,
     * specified tempo and number of divisions by quarter note, the specified steps number, the specified mode for radio groups,
     * the specified sequence iterator factory and the specified sequencer engine.
     * @param name Name of this sequencer group.
     * @param x X-coordinate of this sequencer group in the local context of its container.
     * @param y Y-coordinate of this sequencer group in the local context of its container.
     * @param width Width of this sequencer group.
     * @param height Height of this sequencer group.
     * @param sequencerOrientation Sequencer orientation to use with this sequencer group.
     * @param tempo Tempo, in number of quarter notes by minute.
     * @param divisions Number of divisions by quarter note.
     * @param stepsNumber Number of steps to use in this sequencer group.
     * @param optional Boolean that indicates if a {@link sky.monome.behavior.Radio.RadioGroup Radio.RadioGroup} or a
     * {@link sky.monome.behavior.OptionalRadio.OptionalRadioGroup OptionalRadio.OptionalRadioGroup}
     * is used to control the steps buttons.
     * @param sequenceIteratorFactory Factory for sequence iterator to use to iterate over the sequence.
     * @param sequencerEngine Sequencer engine that will drive this sequencer group.
     * @throws sky.monome.exception.MonomeException When the specified steps number is invalid, or when a led state can't be initialized.
     * @since SkyMonome v1.2
     */
    public SequencerGroup(String name,int x,int y,int width,int height,SequencerOrientation sequencerOrientation,float tempo,int divisions,int stepsNumber,boolean optional,SequenceIteratorFactory<SequencerGroup,SequencerRadioGroup> sequenceIteratorFactory,SequencerEngine<SequencerGroup,SequencerRadioGroup> sequencerEngine) throws MonomeException
    {
        super(name,x,y,width,height);
        sequencerEffectTime=SEQUENCER_EFFECT_TIME;
        setStepsNumber(stepsNumber);
        stepsNumberPseudoCopyWhenChangingRealValue=stepsNumber;
        this.sequencerOrientation=sequencerOrientation;
        this.sequenceIterator=sequenceIteratorFactory.createSequenceIterator();
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
        activeStepNumber=0;
        activeStepNumberPseudoCopyForSequencerEffect=0;
        if(sequencerEngine==null)
        {
            this.sequencerEngine=new SequencerEngine<SequencerGroup,SequencerRadioGroup>(getMonome(),tempo,divisions,this);
            this.sequencerEngine.start();
        }
        else
            this.sequencerEngine=sequencerEngine;
    }

    /**
     * Invoked when this sequencer must iterate over the sequence.
     * @param sequencerEngine Sequencer engine that called this method.
     * @throws sky.monome.exception.MonomeException When a problem occurs in the iteration over the sequence.
     */
    public void sequencingAction(SequencerEngine<SequencerGroup,SequencerRadioGroup> sequencerEngine) throws MonomeException
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
    public SequencerEngine<SequencerGroup,SequencerRadioGroup> getSequencerEngine()
    {
        return sequencerEngine;
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
        return buttonManagers.get(0).getRadiosNumber();
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
     * Returns an array of all button managers of this sequencer group.
     * Returned button managers are typed to the specified type.
     * @param <T> Desired type for button managers. It should be a subclass of {@link sky.monome.event.button.ButtonManager ButtonManager}.
     * @param clazz Class object that specify the return type for button managers.
     * @return An array of all button managers of this sequencer group.
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
     * Returns the button manager of this sequencer group at the specified step number.
     * The returned button manager is typed to the specified type.
     * @param <T> Desired type for the button manager. It should be a subclass of {@link sky.monome.event.button.ButtonManager ButtonManager}.
     * @param clazz Class object that specify the return type for the button manager.
     * @param number Number of the button manager needed.
     * @return The button manager of this sequencer group at the specified step number.
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
     * Returns the sequence iterator used by this sequencer.
     * @return The sequence iterator used by this sequencer.
     * @since SkyMonome v1.1
     */
    public SequenceIterator<SequencerGroup,SequencerRadioGroup> getSequenceIterator()
    {
        return sequenceIterator;
    }

    /**
     * Sets the sequence iterator used by this sequencer.
     * @param sequenceIterator New sequence iterator to use in this sequencer.
     * @since SkyMonome v1.1
     */
    public void setSequenceIterator(SequenceIterator<SequencerGroup,SequencerRadioGroup> sequenceIterator)
    {
        this.sequenceIterator=sequenceIterator;
    }

    /**
     * Returns an array of all led/button couples.
     * @return An array of all led/button couples.
     */
    public LedButtonCouple[] getLedButtonCouples()
    {
        return components.toArray(new LedButtonCouple[0]);
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
        ledButtonCouple.setContainer(this);
        components.add(ledButtonCouple);
    }

    /**
     * Returns a string representation of this sequencer group.
     * @return A string representation of this sequencer group.
     */
    public String toString()
    {
        return "SequencerGroup "+name;
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

    /**
     * Adds the specified sequencer listener to the list of sequencer listeners.
     * @param sequencerListener Sequencer listener to add to the list of sequencer listeners.
     */
    public void addSequencerListener(SequencerListener<SequencerGroup,SequencerRadioGroup> sequencerListener)
    {
        eventListenerList.add(SequencerListener.class,sequencerListener);
    }

    /**
     * Removes the specified sequencer listener from the list of sequencer listeners.
     * @param sequencerListener Sequencer listener to remove from the list of sequencer listeners.
     */
    public void removeSequencerListener(SequencerListener<SequencerGroup,SequencerRadioGroup> sequencerListener)
    {
        eventListenerList.remove(SequencerListener.class,sequencerListener);
    }

    /**
     * Returns an array of all sequencer listeners.
     * @return An array of all sequencer listeners.
     */
    @SuppressWarnings("unchecked")
    public SequencerListener<SequencerGroup,SequencerRadioGroup>[] getSequencerListeners()
    {
        return eventListenerList.getListeners(SequencerListener.class);
    }

    /**
     * Invoked when a step change occurs.
     * @param sequencerComponent Sequencer component that triggered the sequencer event.
     */
    public void fireStepChanged(SequencerGroup sequencerComponent,int activeStepNumber)
    {
        int noteNumber=-1;
        try
        {
            noteNumber=sequencerOrientation==SequencerOrientation.X_FOR_TIME_Y_FOR_ANYTHING?getButtonManager(activeStepNumber).getActiveRadio().getLedButtonCouple().getY():getButtonManager(activeStepNumber).getActiveRadio().getLedButtonCouple().getX();
        }
        catch(NullPointerException e)
        {
        }
        for(SequencerListener<SequencerGroup,SequencerRadioGroup> sequencerListener:getSequencerListeners())
            new ThreadWithUserObjects(sequencerListener,sequencerComponent,activeStepNumber,noteNumber)
            {
                public void run()
                {
                    this.<SequencerListener<SequencerGroup,SequencerRadioGroup>>getUserObject(0).stepChanged(new SequencerEvent<SequencerGroup,SequencerRadioGroup>(System.currentTimeMillis(),this.<SequencerGroup>getUserObject(1),this.<Integer>getUserObject(2),this.<Integer>getUserObject(3)));
                }
            }.start();
    }
}