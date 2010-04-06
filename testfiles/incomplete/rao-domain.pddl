(define (domain Garland)
(:requirements :fluents :incomplete-domain)

(:predicates (p1) (p2) (p3) )

(:action a1
 :parameters ()
 :precondition (and (p1))
 :poss-precondition (and (p3))
 :effect (and (p2))
 :poss-effect (and (not (p1)))
)

(:action a2
 :parameters ()
 :precondition (and (p2))
 :effect (and (p3))
 :poss-effect (and (p1))
)
)