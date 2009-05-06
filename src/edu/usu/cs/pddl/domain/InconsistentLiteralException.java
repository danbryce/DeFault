/**
 * PDDL Graph Planner
 * Zeyn Saigol <zeyn@zeyn.net>
 * School of Computer Science
 * University of Birmingham
 *
 * $Id: InconsistentLiteralException.java 25 2007-02-13 16:08:52Z zas $
 */
package edu.usu.cs.pddl.domain;

/**
 * Exception thrown when an attempt is made to add an inconsistent literal to a
 * {@link ConsistentLiteralSet}.
 */
public class InconsistentLiteralException extends Exception
{
    public InconsistentLiteralException(String message, Throwable cause) {
        super(message, cause);
    }

    public InconsistentLiteralException(String message) {
        super(message);
    }
}
