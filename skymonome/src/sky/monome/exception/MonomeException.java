package sky.monome.exception;

/**
 * Exception specific to the Monome environment.
 * @author PJ Skyman
 */
public class MonomeException extends Exception
{
    /**
     * Constructs a Monome exception with the specified message.
     * @param message Message associated with this exception.
     */
    public MonomeException(String message)
    {
        super(message);
    }

    /**
     * Constructs a Monome exception with specified message and cause.
     * @param message Message associated with this exception.
     * @param cause Cause of this exception.
     */
    public MonomeException(String message,Throwable cause)
    {
        super(message,cause);
    }
}