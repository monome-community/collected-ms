package sky.monome.sequencer;

import sky.monome.Monome;
import sky.monome.event.button.ButtonManager;
import sky.monome.exception.MonomeException;
import sky.monome.util.ThreadWithUserObjects;
import sky.monome.util.SynchronizedList;

/**
 * Engine of a sequencer. The engine is responsible for the iteration over the
 * sequence of the sequencer.
 * @param <S> Type of sequencers that use these sequencer engines.
 * @param <B> Type of button managers used by the sequencers that use these sequencer engines.
 * @author PJ Skyman
 */
public class SequencerEngine<S extends Sequencer<S,B>,B extends ButtonManager<B>> extends Thread
{
    /**
     * Calculated time between two consecutive steps, in milliseconds.
     * Since SkyMonome v1.3, this field is not final anymore.
     */
    protected double timeBetweenSteps;
    /**
     * Tempo used by this sequencer engine.
     * @since SkyMonome v1.3
     */
    protected float tempo;
    /**
     * Number of divisions by quarter note used by this sequencer engine.
     * @since SkyMonome v1.3
     */
    protected int divisions;
    /**
     * List of sequencers that use this sequencer engine.
     */
    protected final SynchronizedList<S> sequencers;
    /**
     * Logical Monome device for refreshings.
     */
    protected final Monome monome;

    /**
     * Constructs a sequencer engine with the specified logical Monome device, the specified tempo, the specified number of divisions by quarter note,
     * and driving specified sequencers. These sequencers can also be added after the construction.
     * @param monome Logical Monome device for refreshings.
     * @param tempo Tempo, in number of quarter notes by minute.
     * @param divisions Number of divisions by quarter note.
     * @param sequencers Sequencers that will be driven by this sequencer engine.
     */
    public SequencerEngine(Monome monome,float tempo,int divisions,S... sequencers)
    {
        setPriority(Thread.MAX_PRIORITY);
        this.tempo=tempo;
        this.divisions=divisions;
        this.monome=monome;
        timeBetweenSteps=60000d/(double)tempo/(double)divisions;
        this.sequencers=new SynchronizedList<S>();
        for(S sequencer:sequencers)
            this.sequencers.add(sequencer);
    }

    /**
     * Returns the number of divisions by quarter note currently used by this
     * sequencer engine.
     * @return The number of divisions by quarter note currently used by this
     * sequencer engine.
     * @since SkyMonome v1.3
     */
    public int getDivisions()
    {
        return divisions;
    }

    /**
     * Modifies the number of divisions by quarter note of this sequencer
     * engine.
     * @param divisions New number of divisions by quarter note used by this
     * sequencer engine.
     * @since SkyMonome v1.3
     */
    public void setDivisions(int divisions)
    {
        this.divisions=divisions;
        timeBetweenSteps=60000d/(double)tempo/(double)divisions;
    }

    /**
     * Returns the current tempo of this sequencer engine.
     * @return The current tempo of this sequencer engine.
     * @since SkyMonome v1.3
     */
    public float getTempo()
    {
        return tempo;
    }

    /**
     * Modifies the tempo of this sequencer engine.
     * @param tempo New tempo for this sequencer engine.
     * @since SkyMonome v1.3
     */
    public void setTempo(float tempo)
    {
        this.tempo=tempo;
        timeBetweenSteps=60000d/(double)tempo/(double)divisions;
    }

    /**
     * Modified the tempo and the number of divisions by quarter note
     * currently used by this sequencer engine.
     * @param tempo New tempo for this sequencer engine.
     * @param divisions New number of divisions by quarter note used by this
     * sequencer engine.
     * @since SkyMonome v1.3
     */
    public void setTempo(float tempo,int divisions)
    {
        this.tempo=tempo;
        this.divisions=divisions;
        timeBetweenSteps=60000d/(double)tempo/(double)divisions;
    }

    /**
     * Returns an array of all associated sequencers.
     * @return An array of all associated sequencers.
     */
    @SuppressWarnings("unchecked")
    public S[] getSequencers()
    {
        return (S[])sequencers.toArray(new Sequencer[0]);
    }

    /**
     * Adds the specified sequencer to the list of associated sequencers.
     * @param sequencer Sequencer to add to the list of associated sequencers.
     */
    public void addSequencer(S sequencer)
    {
        sequencers.add(sequencer);
    }

    /**
     * Removes the specified sequencer from the list of associated sequencers.
     * @param sequencer Sequencer to remove from the list of associated sequencers.
     */
    public void removeSequencer(S sequencer)
    {
        sequencers.remove(sequencer);
    }

    /**
     * Removes all sequencers from the list of associated sequencers.
     */
    public void removeSequencers()
    {
        sequencers.clear();
    }

    /**
     * Refreshes the physical Monome device.
     * This method garantees the fastest way to refresh the physical Monome device,
     * but the difference is significant only when your Monome tree is very deep.
     * @throws sky.monome.exception.MonomeException When the Monome device can't be refreshed.
     */
    public void refreshMonome() throws MonomeException
    {
        monome.refresh();
    }

    /**
     * Returns the calculated time between two consecutive steps.
     * @return The calculated time between two consecutive steps.
     */
    public double getTimeBetweenSteps()
    {
        return timeBetweenSteps;
    }

    /**
     * Invoked by the virtual machine to execute this thread.
     */
    @Override
    public void run()
    {
        int nanoseconds=0;
        double currentTimeBetweenSteps=-1d;
        try
        {
            while(true)
            {
                if(currentTimeBetweenSteps!=timeBetweenSteps)
                {
                    currentTimeBetweenSteps=timeBetweenSteps;
                    nanoseconds=(int)((currentTimeBetweenSteps-(double)(int)currentTimeBetweenSteps)*1000000d);
                }
                sleep((long)currentTimeBetweenSteps,nanoseconds);
                new Thread()
                {
                    @Override
                    public void run()
                    {
                        synchronized(sequencers.getLockObject())
                        {
                            for(S sequencer:sequencers)
                                new ThreadWithUserObjects(sequencer)
                                {
                                    public void run()
                                    {
                                        try
                                        {
                                            this.<S>getUserObject(0).sequencingAction(SequencerEngine.this);
                                        }
                                        catch(MonomeException e)
                                        {
                                            e.printStackTrace();
                                        }
                                    }
                                }.start();
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