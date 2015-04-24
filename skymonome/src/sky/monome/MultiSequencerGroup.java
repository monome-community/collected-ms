package sky.monome;

import sky.monome.LedButtonCouple.ButtonState;
import sky.monome.LedButtonCouple.LedState;
import sky.monome.MultiSequencerGroup.SpecificSequencerGroup;
import sky.monome.behavior.OptionalRadio;
import sky.monome.behavior.OptionalRadio.OptionalRadioGroup;
import sky.monome.event.button.ButtonEvent;
import sky.monome.event.button.ButtonEvent.ButtonAction;
import sky.monome.event.button.ButtonListenerWithArguments;
import sky.monome.event.button.ButtonManager;
import sky.monome.event.sequencer.SequencerEvent;
import sky.monome.event.sequencer.SequencerListener;
import sky.monome.exception.MonomeException;
import sky.monome.layer.LedStateModificationLayer;
import sky.monome.sequence.SequenceIterator;
import sky.monome.sequence.factory.SequenceIteratorFactory;
import sky.monome.sequencer.Sequencer;
import sky.monome.sequencer.Sequencer.SequencerOrientation;
import sky.monome.sequencer.SequencerEngine;
import sky.monome.util.SynchronizedList;
import sky.monome.util.ThreadWithUserObjects;

/**
 * Group of parallel sequencers.
 * @author PJ Skyman
 */
public class MultiSequencerGroup extends AbstractGroup<SpecificSequencerGroup>
{
    /**
     * Specific sequencer engine.
     */
    protected final SpecificSequencerEngine specificSequencerEngine;
    /**
     * Sequencer orientation.
     */
    protected final SequencerOrientation sequencerOrientation;
    /**
     * Time duration of the sequencer effect, in milliseconds
     * (short lightning that symbolizes the activation of a new step in the sequence).
     * Due to optimization, all internal sequencer groups and the sequencer
     * engine share the same value for this parameter.
     * @since SkyMonome v1.3
     */
    protected long sequencerEffectTime;

    /**
     * Constructs a multisequencer group with the specified name, specified coordinates and dimensions, the specified orientation,
     * specified tempo and number of divisions by quarter note, the specified class of sequence iterator and contained by the specified container.
     * @param name Name of this multisequencer group.
     * @param container Container that will contain this multisequencer group.
     * @param x X-coordinate of this multisequencer group in the local context of its container.
     * @param y Y-coordinate of this multisequencer group in the local context of its container.
     * @param width Width of this multisequencer group.
     * @param height Height of this multisequencer group.
     * @param sequencerOrientation Sequencer orientation to use with this multisequencer group.
     * @param tempo Tempo, in number of quarter notes by minute.
     * @param divisions Number of divisions by quarter note.
     * @param sequenceIteratorClass Type of sequence iterator to use when creating internal sequencers.
     * @throws sky.monome.exception.MonomeException When internal sequence iterators can't be created.
     * @deprecated Since SkyMonome v1.1, it is preferred to use the
     * {@link MultiSequencerGroup#MultiSequencerGroup(java.lang.String, sky.monome.Container, int, int, int, int, sky.monome.sequencer.Sequencer.SequencerOrientation, float, int, sky.monome.sequence.factory.SequenceIteratorFactory)
     * MultiSequencerGroup(String,Container,int,int,int,int,SequencerOrientation,float,int,SequenceIteratorFactory)} constructor instead of this one.
     */
    @Deprecated
    public MultiSequencerGroup(String name,Container container,int x,int y,int width,int height,SequencerOrientation sequencerOrientation,float tempo,int divisions,Class<? extends SequenceIterator<SpecificSequencerGroup,OptionalRadioGroup>> sequenceIteratorClass) throws MonomeException
    {
        super(name,container,x,y,width,height);
        sequencerEffectTime=Sequencer.SEQUENCER_EFFECT_TIME;
        this.sequencerOrientation=sequencerOrientation;
        specificSequencerEngine=new SpecificSequencerEngine(tempo,divisions);
        if(sequencerOrientation==SequencerOrientation.X_FOR_TIME_Y_FOR_ANYTHING)
            for(int i=0;i<height;i++)
                try
                {
                    SpecificSequencerGroup specificSequencerGroup=new SpecificSequencerGroup("SpecificSequencerGroup "+i,0,i,width,1,sequenceIteratorClass.getConstructor().newInstance());
                    specificSequencerGroup.setContainer(this);
                    specificSequencerEngine.addSequencer(specificSequencerGroup);
                    components.add(specificSequencerGroup);
                }
                catch(Exception e)
                {
                    throw new MonomeException("A strange error has occured when creating a specific sequencer group inside the multisequencer group",e);
                }
        else
            for(int i=0;i<width;i++)
                try
                {
                    SpecificSequencerGroup specificSequencerGroup=new SpecificSequencerGroup("SpecificSequencerGroup "+i,i,0,1,height,sequenceIteratorClass.getConstructor().newInstance());
                    specificSequencerGroup.setContainer(this);
                    specificSequencerEngine.addSequencer(specificSequencerGroup);
                    components.add(specificSequencerGroup);
                }
                catch(Exception e)
                {
                    throw new MonomeException("A strange error has occured when creating a specific sequencer group inside the multisequencer group",e);
                }
        specificSequencerEngine.start();
    }

    /**
     * Constructs a multisequencer group with the specified name, specified coordinates and dimensions, the specified orientation,
     * specified tempo and number of divisions by quarter note, the specified sequence iterator factory and contained by the specified container.
     * @param name Name of this multisequencer group.
     * @param container Container that will contain this multisequencer group.
     * @param x X-coordinate of this multisequencer group in the local context of its container.
     * @param y Y-coordinate of this multisequencer group in the local context of its container.
     * @param width Width of this multisequencer group.
     * @param height Height of this multisequencer group.
     * @param sequencerOrientation Sequencer orientation to use with this multisequencer group.
     * @param tempo Tempo, in number of quarter notes by minute.
     * @param divisions Number of divisions by quarter note.
     * @param sequenceIteratorFactory Factory for sequence iterators to use when creating internal sequencers.
     * @throws sky.monome.exception.MonomeException When internal sequence iterators can't be created.
     * @since SkyMonome v1.1
     * @deprecated Since SkyMonome v1.2, all components register themselves inside their
     * container, so you don't need to specify the container by calling this constructor.
     */
    @Deprecated
    public MultiSequencerGroup(String name,Container container,int x,int y,int width,int height,SequencerOrientation sequencerOrientation,float tempo,int divisions,SequenceIteratorFactory<SpecificSequencerGroup,OptionalRadioGroup> sequenceIteratorFactory) throws MonomeException
    {
        super(name,container,x,y,width,height);
        sequencerEffectTime=Sequencer.SEQUENCER_EFFECT_TIME;
        this.sequencerOrientation=sequencerOrientation;
        specificSequencerEngine=new SpecificSequencerEngine(tempo,divisions);
        if(sequencerOrientation==SequencerOrientation.X_FOR_TIME_Y_FOR_ANYTHING)
            for(int i=0;i<height;i++)
                try
                {
                    SpecificSequencerGroup specificSequencerGroup=new SpecificSequencerGroup("SpecificSequencerGroup "+i,0,i,width,1,sequenceIteratorFactory.createSequenceIterator(i));
                    specificSequencerGroup.setContainer(this);
                    specificSequencerEngine.addSequencer(specificSequencerGroup);
                    components.add(specificSequencerGroup);
                }
                catch(MonomeException e)
                {
                    throw e;
                }
                catch(Exception e)
                {
                    throw new MonomeException("A strange error has occured when creating a specific sequencer group inside the multisequencer group",e);
                }
        else
            for(int i=0;i<width;i++)
                try
                {
                    SpecificSequencerGroup specificSequencerGroup=new SpecificSequencerGroup("SpecificSequencerGroup "+i,i,0,1,height,sequenceIteratorFactory.createSequenceIterator(i));
                    specificSequencerGroup.setContainer(this);
                    specificSequencerEngine.addSequencer(specificSequencerGroup);
                    components.add(specificSequencerGroup);
                }
                catch(MonomeException e)
                {
                    throw e;
                }
                catch(Exception e)
                {
                    throw new MonomeException("A strange error has occured when creating a specific sequencer group inside the multisequencer group",e);
                }
        specificSequencerEngine.start();
    }

    /**
     * Constructs a multisequencer group with the specified name, specified coordinates and dimensions, the specified orientation,
     * specified tempo and number of divisions by quarter note and the specified sequence iterator factory.
     * @param name Name of this multisequencer group.
     * @param x X-coordinate of this multisequencer group in the local context of its container.
     * @param y Y-coordinate of this multisequencer group in the local context of its container.
     * @param width Width of this multisequencer group.
     * @param height Height of this multisequencer group.
     * @param sequencerOrientation Sequencer orientation to use with this multisequencer group.
     * @param tempo Tempo, in number of quarter notes by minute.
     * @param divisions Number of divisions by quarter note.
     * @param sequenceIteratorFactory Factory for sequence iterators to use when creating internal sequencers.
     * @throws sky.monome.exception.MonomeException When internal sequence iterators can't be created.
     * @since SkyMonome v1.2
     */
    public MultiSequencerGroup(String name,int x,int y,int width,int height,SequencerOrientation sequencerOrientation,float tempo,int divisions,SequenceIteratorFactory<SpecificSequencerGroup,OptionalRadioGroup> sequenceIteratorFactory) throws MonomeException
    {
        super(name,x,y,width,height);
        sequencerEffectTime=Sequencer.SEQUENCER_EFFECT_TIME;
        this.sequencerOrientation=sequencerOrientation;
        specificSequencerEngine=new SpecificSequencerEngine(tempo,divisions);
        if(sequencerOrientation==SequencerOrientation.X_FOR_TIME_Y_FOR_ANYTHING)
            for(int i=0;i<height;i++)
                try
                {
                    SpecificSequencerGroup specificSequencerGroup=new SpecificSequencerGroup("SpecificSequencerGroup "+i,0,i,width,1,sequenceIteratorFactory.createSequenceIterator(i));
                    specificSequencerGroup.setContainer(this);
                    specificSequencerEngine.addSequencer(specificSequencerGroup);
                    components.add(specificSequencerGroup);
                }
                catch(MonomeException e)
                {
                    throw e;
                }
                catch(Exception e)
                {
                    throw new MonomeException("A strange error has occured when creating a specific sequencer group inside the multisequencer group",e);
                }
        else
            for(int i=0;i<width;i++)
                try
                {
                    SpecificSequencerGroup specificSequencerGroup=new SpecificSequencerGroup("SpecificSequencerGroup "+i,i,0,1,height,sequenceIteratorFactory.createSequenceIterator(i));
                    specificSequencerGroup.setContainer(this);
                    specificSequencerEngine.addSequencer(specificSequencerGroup);
                    components.add(specificSequencerGroup);
                }
                catch(MonomeException e)
                {
                    throw e;
                }
                catch(Exception e)
                {
                    throw new MonomeException("A strange error has occured when creating a specific sequencer group inside the multisequencer group",e);
                }
        specificSequencerEngine.start();
    }

    /**
     * Returns the sequencer engine that is used by all sequencers of this group.
     * @return The sequencer engine that is used by all sequencers of this group.
     * @since SkyMonome v1.3
     */
    public SequencerEngine<SpecificSequencerGroup,OptionalRadioGroup> getSequencerEngine()
    {
        return specificSequencerEngine;
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
     * Returns the sequencer at the specified index.
     * @param index Index of the sequencer needed.
     * @return The sequencer at the specified index.
     */
    public SpecificSequencerGroup getSequencer(int index)
    {
        return components.get(index);
    }

    /**
     * Returns an array of all sequencers.
     * @return An array of all sequencers.
     */
    public SpecificSequencerGroup[] getSequencers()
    {
        return components.toArray(new SpecificSequencerGroup[0]);
    }

    /**
     * Returns a string representation of this multisequencer group.
     * @return A string representation of this multisequencer group.
     */
    public String toString()
    {
        return "MultiSequencerGroup "+name;
    }

    /**
     * Specific sequencer engine. This class is a special implementation of the
     * {@link sky.monome.sequencer.SequencerEngine SequencerEngine} class for use in the
     * {@link sky.monome.MultiSequencerGroup MultiSequencerGroup} class.
     */
    protected class SpecificSequencerEngine extends SequencerEngine<SpecificSequencerGroup,OptionalRadioGroup>
    {
        /**
         * Constructs a specific sequencer engine with specified tempo and number of divisions by quarter note, and driving
         * specified sequencers.
         * @param tempo Tempo, in number of quarter notes by minute.
         * @param divisions Number of divisions by quarter note.
         * @param sequencers List of sequencers that will be driven by this specific sequencer engine.
         */
        protected SpecificSequencerEngine(float tempo,int divisions,SpecificSequencerGroup... sequencers)
        {
            super(getMonome(),tempo,divisions,sequencers);
        }

        /**
         * Invoked by the virtual machine to execute this thread.
         */
        @Override
        public void run()
        {
            try
            {
                while(true)
                {
                    sleep((long)timeBetweenSteps,(int)(Math.max(timeBetweenSteps-(double)(int)timeBetweenSteps,0d)*1000000d));
                    new Thread()
                    {
                        @Override
                        public void run()
                        {
                            try
                            {
                                for(SpecificSequencerGroup specificSequencerGroup:MultiSequencerGroup.this.getSequencers())
                                {
                                    if(!specificSequencerGroup.isActive())
                                        continue;
                                    specificSequencerGroup.activeStepNumber=specificSequencerGroup.sequenceIterator.getNextStep(specificSequencerGroup);
                                    specificSequencerGroup.activeStepNumberPseudoCopyForSequencerEffect=specificSequencerGroup.activeStepNumber;
                                    if(specificSequencerGroup.activeStepNumber<specificSequencerGroup.stepsNumber)
                                        specificSequencerGroup.stepsNumberPseudoCopyWhenChangingRealValue=specificSequencerGroup.stepsNumber;
                                }
                                if(isVisible())
                                    getMonome().refresh();
                                for(SpecificSequencerGroup specificSequencerGroup:MultiSequencerGroup.this.getSequencers())
                                {
                                    if(!specificSequencerGroup.isActive())
                                        continue;
                                    specificSequencerGroup.fireStepChanged(specificSequencerGroup,specificSequencerGroup.activeStepNumber);
                                }
                                sleep(sequencerEffectTime);
                                for(SpecificSequencerGroup specificSequencerGroup:MultiSequencerGroup.this.getSequencers())
                                {
                                    if(!specificSequencerGroup.isActive())
                                        continue;
                                    specificSequencerGroup.activeStepNumberPseudoCopyForSequencerEffect=-1;
                                }
                                if(isVisible())
                                    getMonome().refresh();
                            }
                            catch(MonomeException e)
                            {
                                e.printStackTrace();
                            }
                            catch(InterruptedException e)
                            {
                            }
                        }
                    }.start();
                }
            }
            catch(InterruptedException e)
            {
            }
        }
    }

    /**
     * Specific sequencer group. This class is a special implementation of the
     * {@link sky.monome.sequencer.Sequencer Sequencer} interface based on the
     * {@link sky.monome.AbstractGroup AbstractGroup}<{@link sky.monome.LedButtonCouple LedButtonCouple}> class.
     */
    public class SpecificSequencerGroup extends AbstractGroup<LedButtonCouple> implements Sequencer<SpecificSequencerGroup,OptionalRadioGroup>,LedStateModificationLayer
    {
        /**
         * List of button managers that manage each step of the enclosing sequencer.
         */
        protected final SynchronizedList<OptionalRadioGroup> buttonManagers;
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
        protected SequenceIterator<SpecificSequencerGroup,OptionalRadioGroup> sequenceIterator;
        /**
         * Indicates if this specific sequencer group is currently used in the multisequencer group.
         */
        protected boolean active;

        /**
         * Constructs a specific sequencer group with the specified name, specified coordinates and dimensions, and the specified sequence iterator.
         * @param name Name of this specific sequencer group.
         * @param x X-coordinate of this specific sequencer group in the local context of its container.
         * @param y Y-coordinate of this specific sequencer group in the local context of its container.
         * @param width Width of this specific sequencer group.
         * @param height Height of this specific sequencer group.
         * @param sequenceIterator Sequence iterator to use to iterate over the sequence.
         * @throws sky.monome.exception.MonomeException When the number of steps is invalid.
         * @since SkyMonome v1.1
         */
        protected SpecificSequencerGroup(String name,int x,int y,int width,int height,SequenceIterator<SpecificSequencerGroup,OptionalRadioGroup> sequenceIterator) throws MonomeException
        {
            super(name,x,y,width,height);
            setStepsNumber(1);
            active=false;
            stepsNumberPseudoCopyWhenChangingRealValue=stepsNumber;
            this.sequenceIterator=sequenceIterator;
            buttonManagers=new SynchronizedList<OptionalRadioGroup>();
            if(sequencerOrientation==SequencerOrientation.X_FOR_TIME_Y_FOR_ANYTHING)
                for(int j=0;j<height;j++)
                {
                    OptionalRadioGroup optionalRadioGroup=new OptionalRadioGroup();
                    buttonManagers.add(optionalRadioGroup);
                    for(int i=0;i<width;i++)
                        addLedButtonCouple(new LedButtonCouple("Led "+i+","+j,i,j,new OptionalRadio(optionalRadioGroup)));
                    optionalRadioGroup.addButtonListener(new ButtonListenerWithArguments<OptionalRadioGroup>(optionalRadioGroup)
                    {
                        public void buttonActionned(ButtonEvent<OptionalRadioGroup> event)
                        {
                            if(event.getButtonAction()==ButtonAction.BUTTON_PUSHED)
                                setActive(getArgument(OptionalRadioGroup.class,0).getActiveRadio()!=null);
                        }
                    });
                }
            else
                for(int i=0;i<width;i++)
                {
                    OptionalRadioGroup optionalRadioGroup=new OptionalRadioGroup();
                    buttonManagers.add(optionalRadioGroup);
                    for(int j=0;j<height;j++)
                        addLedButtonCouple(new LedButtonCouple("Led "+i+","+j,i,j,new OptionalRadio(optionalRadioGroup)));
                    optionalRadioGroup.addButtonListener(new ButtonListenerWithArguments<OptionalRadioGroup>(optionalRadioGroup)
                    {
                        public void buttonActionned(ButtonEvent<OptionalRadioGroup> event)
                        {
                            if(event.getButtonAction()==ButtonAction.BUTTON_PUSHED)
                                setActive(getArgument(OptionalRadioGroup.class,0).getActiveRadio()!=null);
                        }
                    });
                }
            activeStepNumber=0;
            activeStepNumberPseudoCopyForSequencerEffect=0;
        }

        /**
         * Constructs a specific sequencer group with the specified name, specified coordinates and dimensions, specified tempo and
         * number of divisions by quarter note and the specified sequence iterator.
         * @param name Name of this specific sequencer group.
         * @param x X-coordinate of this specific sequencer group in the local context of its container.
         * @param y Y-coordinate of this specific sequencer group in the local context of its container.
         * @param width Width of this specific sequencer group.
         * @param height Height of this specific sequencer group.
         * @param tempo Tempo, in number of quarter notes by minute.
         * @param divisions Number of divisions by quarter note.
         * @param sequenceIterator Sequence iterator to use to iterate over the sequence.
         * @throws sky.monome.exception.MonomeException When the number of steps is invalid.
         * @deprecated Since {@code tempo} and {@code divisions} parameters are not used at all, so it is recommended to use the
         * {@link MultiSequencerGroup.SpecificSequencerGroup#MultiSequencerGroup.SpecificSequencerGroup(java.lang.String, int, int, int, int, sky.monome.sequence.SequenceIterator)
         * SpecificSequencerGroup(String,int,int,int,int,SequenceIterator<SpecificSequencerGroup,OptionalRadioGroup>)} constructor instead of this one.
         */
        @Deprecated
        protected SpecificSequencerGroup(String name,int x,int y,int width,int height,float tempo,int divisions,SequenceIterator<SpecificSequencerGroup,OptionalRadioGroup> sequenceIterator) throws MonomeException
        {
            this(name,x,y,width,height,sequenceIterator);
        }

        /**
         * Constructs a specific sequencer group with the specified name, specified coordinates and dimensions, and the specified sequence iterator factory.
         * @param name Name of this specific sequencer group.
         * @param x X-coordinate of this specific sequencer group in the local context of its container.
         * @param y Y-coordinate of this specific sequencer group in the local context of its container.
         * @param width Width of this specific sequencer group.
         * @param height Height of this specific sequencer group.
         * @param sequenceIteratorFactory Factory for sequence iterator to use to iterate over the sequence.
         * @throws sky.monome.exception.MonomeException When the number of steps is invalid.
         * @since SkyMonome v1.1
         */
        protected SpecificSequencerGroup(String name,int x,int y,int width,int height,SequenceIteratorFactory<SpecificSequencerGroup,OptionalRadioGroup> sequenceIteratorFactory) throws MonomeException
        {
            super(name,x,y,width,height);
            setStepsNumber(1);
            active=false;
            stepsNumberPseudoCopyWhenChangingRealValue=stepsNumber;
            this.sequenceIterator=sequenceIteratorFactory.createSequenceIterator();
            buttonManagers=new SynchronizedList<OptionalRadioGroup>();
            if(sequencerOrientation==SequencerOrientation.X_FOR_TIME_Y_FOR_ANYTHING)
                for(int j=0;j<height;j++)
                {
                    OptionalRadioGroup optionalRadioGroup=new OptionalRadioGroup();
                    buttonManagers.add(optionalRadioGroup);
                    for(int i=0;i<width;i++)
                        addLedButtonCouple(new LedButtonCouple("Led "+i+","+j,i,j,new OptionalRadio(optionalRadioGroup)));
                    optionalRadioGroup.addButtonListener(new ButtonListenerWithArguments<OptionalRadioGroup>(optionalRadioGroup)
                    {
                        public void buttonActionned(ButtonEvent<OptionalRadioGroup> event)
                        {
                            if(event.getButtonAction()==ButtonAction.BUTTON_PUSHED)
                                setActive(getArgument(OptionalRadioGroup.class,0).getActiveRadio()!=null);
                        }
                    });
                }
            else
                for(int i=0;i<width;i++)
                {
                    OptionalRadioGroup optionalRadioGroup=new OptionalRadioGroup();
                    buttonManagers.add(optionalRadioGroup);
                    for(int j=0;j<height;j++)
                        addLedButtonCouple(new LedButtonCouple("Led "+i+","+j,i,j,new OptionalRadio(optionalRadioGroup)));
                    optionalRadioGroup.addButtonListener(new ButtonListenerWithArguments<OptionalRadioGroup>(optionalRadioGroup)
                    {
                        public void buttonActionned(ButtonEvent<OptionalRadioGroup> event)
                        {
                            if(event.getButtonAction()==ButtonAction.BUTTON_PUSHED)
                                setActive(getArgument(OptionalRadioGroup.class,0).getActiveRadio()!=null);
                        }
                    });
                }
            activeStepNumber=0;
            activeStepNumberPseudoCopyForSequencerEffect=0;
        }

        /**
         * Constructs a specific sequencer group with the specified name, specified coordinates and dimensions, specified tempo and
         * number of divisions by quarter note and the specified sequence iterator factory.
         * @param name Name of this specific sequencer group.
         * @param x X-coordinate of this specific sequencer group in the local context of its container.
         * @param y Y-coordinate of this specific sequencer group in the local context of its container.
         * @param width Width of this specific sequencer group.
         * @param height Height of this specific sequencer group.
         * @param tempo Tempo, in number of quarter notes by minute.
         * @param divisions Number of divisions by quarter note.
         * @param sequenceIteratorFactory Factory for sequence iterator to use to iterate over the sequence.
         * @throws sky.monome.exception.MonomeException When the number of steps is invalid.
         * @since SkyMonome v1.1
         * @deprecated Since {@code tempo} and {@code divisions} parameters are not used at all, so it is recommended to use the
         * {@link MultiSequencerGroup.SpecificSequencerGroup#MultiSequencerGroup.SpecificSequencerGroup(java.lang.String, int, int, int, int, sky.monome.sequence.factory.SequenceIteratorFactory)
         * SpecificSequencerGroup(String,int,int,int,int,SequenceIteratorFactory<SpecificSequencerGroup,OptionalRadioGroup>)} constructor instead of this one.
         */
        @Deprecated
        protected SpecificSequencerGroup(String name,int x,int y,int width,int height,float tempo,int divisions,SequenceIteratorFactory<SpecificSequencerGroup,OptionalRadioGroup> sequenceIteratorFactory) throws MonomeException
        {
            this(name,x,y,width,height,sequenceIteratorFactory);
        }

        /**
         * Invoked when this sequencer must iterate over the sequence.
         * This implementation does nothing.
         * @param sequencerEngine Sequencer engine that called this method.
         * @throws sky.monome.exception.MonomeException When a problem occurs in the iteration over the sequence.
         */
        public void sequencingAction(SequencerEngine<SpecificSequencerGroup,OptionalRadioGroup> sequencerEngine)
        {
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
            MultiSequencerGroup.this.sequencerEffectTime=sequencerEffectTime;
        }

        /**
         * Returns the sequencer engine that is used by this sequencer.
         * @return The sequencer engine that is used by this sequencer.
         * @since SkyMonome v1.3
         */
        public SequencerEngine<SpecificSequencerGroup,OptionalRadioGroup> getSequencerEngine()
        {
            return specificSequencerEngine;
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
            if(stepsNumber<1)
                throw new MonomeException("A minimum of 1 step is required");
            this.stepsNumber=stepsNumber;
        }

        /**
         * Returns an array of all button managers of this specific sequencer group.
         * Returned button managers are typed to the specified type.
         * @param <T> Desired type for button managers. It should be a subclass of {@link sky.monome.event.button.ButtonManager ButtonManager}.
         * @param clazz Class object that specify the return type for button managers.
         * @return An array of all button managers of this specific sequencer group.
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
        public OptionalRadioGroup[] getButtonManagers()
        {
            return buttonManagers.toArray(new OptionalRadioGroup[0]);
        }

        /**
         * Returns the button manager of this specific sequencer group at the specified step number.
         * The returned button manager is typed to the specified type.
         * @param <T> Desired type for the button manager. It should be a subclass of {@link sky.monome.event.button.ButtonManager ButtonManager}.
         * @param clazz Class object that specify the return type for the button manager.
         * @param number Number of the button manager needed.
         * @return The button manager of this specific sequencer group at the specified step number.
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
        public OptionalRadioGroup getButtonManager(int number)
        {
            return buttonManagers.get(number);
        }

        /**
         * Returns the sequence iterator used by this sequencer.
         * @return The sequence iterator used by this sequencer.
         * @since SkyMonome v1.1
         */
        public SequenceIterator<SpecificSequencerGroup,OptionalRadioGroup> getSequenceIterator()
        {
            return sequenceIterator;
        }

        /**
         * Sets the sequence iterator used by this sequencer.
         * @param sequenceIterator New sequence iterator to use in this sequencer.
         * @since SkyMonome v1.1
         */
        public void setSequenceIterator(SequenceIterator<SpecificSequencerGroup,OptionalRadioGroup> sequenceIterator)
        {
            this.sequenceIterator=sequenceIterator;
        }

        /**
         * Returns an array of all led/button couples contained by this specific sequencer group.
         * @return An array of all led/button couples contained by this specific sequencer group.
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
            ledButtonCouple.setContainer(SpecificSequencerGroup.this);
            components.add(ledButtonCouple);
        }

        /**
         * Returns a string representation of this specific sequencer group.
         * @return A string representation of this specific sequencer group.
         */
        public String toString()
        {
            return "SpecificSequencerGroup "+name;
        }

        /**
         * Returns the led state to show instead of the natural led state of the specified led/button couple.
         * @param ledButtonCouple led/button couple which is the reference.
         * @return The led state to show instead of the natural led state of the specified led/button couple.
         */
        public LedState getLedStateToShow(LedButtonCouple ledButtonCouple)
        {
            if(!active||sequencerOrientation==SequencerOrientation.X_FOR_TIME_Y_FOR_ANYTHING&&ledButtonCouple.getX()>=stepsNumberPseudoCopyWhenChangingRealValue||sequencerOrientation==SequencerOrientation.X_FOR_ANYTHING_Y_FOR_TIME&&height-1-ledButtonCouple.getY()>=stepsNumberPseudoCopyWhenChangingRealValue)
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
        public void addSequencerListener(SequencerListener<SpecificSequencerGroup,OptionalRadioGroup> sequencerListener)
        {
            eventListenerList.add(SequencerListener.class,sequencerListener);
        }

        /**
         * Removes the specified sequencer listener from the list of sequencer listeners.
         * @param sequencerListener Sequencer listener to remove from the list of sequencer listeners.
         */
        public void removeSequencerListener(SequencerListener<SpecificSequencerGroup,OptionalRadioGroup> sequencerListener)
        {
            eventListenerList.remove(SequencerListener.class,sequencerListener);
        }

        /**
         * Returns an array of all sequencer listeners.
         * @return An array of all sequencer listeners.
         */
        @SuppressWarnings("unchecked")
        public SequencerListener<SpecificSequencerGroup,OptionalRadioGroup>[] getSequencerListeners()
        {
            return eventListenerList.getListeners(SequencerListener.class);
        }

        /**
         * Invoked when a step change occurs.
         * @param sequencerComponent Sequencer component that triggered the sequencer event.
         */
        public void fireStepChanged(SpecificSequencerGroup sequencerComponent,int activeStepNumber)
        {
            for(SequencerListener<SpecificSequencerGroup,OptionalRadioGroup> sequencerListener:getSequencerListeners())
                new ThreadWithUserObjects(sequencerListener,sequencerComponent,activeStepNumber)
                {
                    public void run()
                    {
                        this.<SequencerListener<SpecificSequencerGroup,OptionalRadioGroup>>getUserObject(0).stepChanged(new SequencerEvent<SpecificSequencerGroup,OptionalRadioGroup>(System.currentTimeMillis(),this.<SpecificSequencerGroup>getUserObject(1),this.<Integer>getUserObject(2),-1));
                    }
                }.start();
        }

        /**
         * Indicates if this specific sequencer group is currently used in the multisequencer group.
         * @return {@code true} if this specific sequencer group is currently used in the multisequencer group, {@code false} otherwise.
         */
        public boolean isActive()
        {
            return active;
        }

        /**
         * Sets if this specific sequencer group must be used in the multisequencer group.
         * @param active {@code true} if it must be used, {@code false} otherwise.
         */
        public void setActive(boolean active)
        {
            this.active=active;
        }
    }
}