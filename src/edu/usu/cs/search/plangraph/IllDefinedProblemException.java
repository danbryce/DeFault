/**
 * PDDL Graph Planner
 * Zeyn Saigol <zeyn@zeyn.net>
 * School of Computer Science
 * University of Birmingham
 *
 * $Id: IllDefinedProblemException.java 25 2007-02-13 16:08:52Z zas $
 */
package edu.usu.cs.search.plangraph;

/**
 * Exception thrown when some aspect of the PDDL domain cause the problem
 * to be un-solvable.
 */
public class IllDefinedProblemException extends Exception
{
	private static final long serialVersionUID = -7443500605181301082L;

	public IllDefinedProblemException(String message, Throwable cause) {
        super(message, cause);
    }

    public IllDefinedProblemException(String message) {
        super(message);
    }
}
