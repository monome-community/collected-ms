package sky.monome.event.sequencer;

import sky.monome.event.button.ButtonManager;

/**
 * Component of a sequencer, or sequencer itself (so it also implements {@link sky.monome.sequencer.Sequencer Sequencer} interface,
 * which extends {@link sky.monome.event.sequencer.SequencerComponent SequencerComponent}).
 * A sequencer component can have registered listeners to listen to sequencer events.
 * @param <S> Type of sequencer components that implement this interface.
 * @param <B> Type of button managers that are used by sequencer components that implement this interface.
 * @author PJ Skyman
 */
public interface SequencerComponent<S extends SequencerComponent<S,B>,B extends ButtonManager<B>>
{
    /**
     * Adds the specified sequencer listener to the list of sequencer listeners.
     * @param sequencerListener Sequencer listener to add to the list of sequencer listeners.
     */
    public void addSequencerListener(SequencerListener<S,B> sequencerListener);

    /**
     * Removes the specified sequencer listener from the list of sequencer listeners.
     * @param sequencerListener Sequencer listener to remove from the list of sequencer listeners.
     */
    public void removeSequencerListener(SequencerListener<S,B> sequencerListener);

    /**
     * Returns an array of all sequencer listeners.
     * @return An array of all sequencer listeners.
     */
    public SequencerListener<S,B>[] getSequencerListeners();

    /**
     * Invoked when a step change occurs.
     * @param sequencerComponent Sequencer component that triggered the sequencer event.
     */
    public void fireStepChanged(S sequencerComponent,int activeStepNumber);

    /**
     * Returns an array of all button managers of this sequencer component.
     * Returned button managers are typed to the specified type.
     * @param <T> Desired type for button managers. It should be a subclass of {@link sky.monome.event.button.ButtonManager ButtonManager}.
     * @param clazz Class object that specify the return type for button managers.
     * @return An array of all button managers of this sequencer component.
     * @throws ClassCastException When button managers can't be typed to the specified type.
     * @deprecated Since this interface is parametrized, it is recommended to use
     * {@link #getButtonManagers() getButtonManagers()} instead.
     */
    @Deprecated
    public <T extends ButtonManager<?>> T[] getButtonManagers(Class<T> clazz);

    /**
     * Returns an array of all button managers of this sequencer component.
     * Returned button managers are typed to the type defined by the class that implements this parametrized interface.
     * @return An array of all button managers of this sequencer component.
     * @since SkyMonome v1.1
     */
    public B[] getButtonManagers();

    /**
     * Returns the button manager of this sequencer component at the specified step number.
     * The returned button manager is typed to the specified type.
     * @param <T> Desired type for the button manager. It should be a subclass of {@link sky.monome.event.button.ButtonManager ButtonManager}.
     * @param clazz Class object that specify the return type for the button manager.
     * @param number Number of the button manager needed.
     * @return The button manager of this sequencer component at the specified step number.
     * @throws ClassCastException When the button manager can't be typed to the specified type.
     * @deprecated Since this interface is parametrized, it is recommended to use
     * {@link #getButtonManager(int) getButtonManager(int)} instead.
     */
    @Deprecated
    public <T extends ButtonManager<?>> T getButtonManager(Class<T> clazz,int number);

    /**
     * Returns the button manager of this sequencer component at the specified step number.
     * The returned button manager is typed to the type defined by the class that implements this parametrized interface.
     * @param number Number of the button manager needed.
     * @return The button manager of this sequencer component at the specified step number.
     * @since SkyMonome v1.1
     */
    public B getButtonManager(int number);
}