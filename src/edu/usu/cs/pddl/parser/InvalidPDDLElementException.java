/**
 * PDDL Graph Planner
 * Zeyn Saigol <zeyn@zeyn.net>
 * School of Computer Science
 * University of Birmingham
 *
 * $Id: InvalidPDDLElementException.java 33 2007-02-23 15:45:34Z zas $
 */
package edu.usu.cs.pddl.parser;

/**
 * Exception thrown when language elements (e.g. functions, types, arguments) used in a 
 * PDDL domain or problem do not have a corresponding declaration earlier in the domain file, 
 * or in the domain corresponding to the problem. 
 */
public class InvalidPDDLElementException extends Exception
{
	private static final long serialVersionUID = -3426091388469660547L;

	public InvalidPDDLElementException()
    {
        super();
    }

    public InvalidPDDLElementException(String message)
    {
        super(message);
    }

    public InvalidPDDLElementException(Throwable cause)
    {
        super(cause);
    }

    public InvalidPDDLElementException(String message, Throwable cause)
    {
        super(message, cause);
    }
}
