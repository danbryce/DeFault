(define (domain manyfault)
(:requirements :fluents :incomplete-domain)

(:predicates (p) (q ?v) (s ?v ?v1) )

(:action a
 :parameters (?v ?v1)
 :precondition (and (q ?v) (s ?v ?v1))
 :effect (and (q ?v1) (not (q ?v)))
 :poss-effect (and (p))
)


)