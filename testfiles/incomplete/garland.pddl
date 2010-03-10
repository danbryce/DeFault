(define (domain Garland)
(:requirements :fluents :incomplete-domain)

(:predicates (p) (q) (r) )

(:action a1
 :parameters ()
 :precondition (and (p))
 :poss-precondition (and (q) (r))
 :effect (and (r))
)

(:action a2
 :parameters ()
 :precondition (and )
 :poss-precondition (and (p) (q) (r))
 :effect (and (q))
 :poss-effect (and (not (r)))
)
)