package edu.usu.cs.heuristic.graphplanner.relaxedplangraph;

/**
 * An order-invariant pair of objects. This means {@link #equals(Object)} will
 * return true for a pair of objects regardless of the order they were passed
 * to the constructor.
 * @param <T> one object.
 * @param <T> another object.
 */
public class Pair<T>
{
    private final T first;
    private final T second;

    public Pair(final T one, final T two) {
        if (one == null || two == null) {
            throw new IllegalArgumentException("null element");
        }
        if (one.hashCode() < two.hashCode()) {
            this.first = one;
            this.second = two;
        } else {
            this.first = two;
            this.second = one;
        }
    }

    public T getFirst() {
        return first;
    }

    public T getSecond() {
        return second;
    }

    @Override
    public int hashCode() {
        final int PRIME = 31;
        int result = 1;
        result = PRIME * result + first.hashCode();
        result = PRIME * result + second.hashCode();
        return result;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (getClass() != obj.getClass())
            return false;

        final Pair other = (Pair) obj;
        if (first.equals(other.first) 
                && second.equals(other.second)) {
            return true;
        } else {
            // Still need to check reversed order, as hashcodes may be equal for different objects
            return first.equals(other.second) 
                       && second.equals(other.first);
        }
    }
}
