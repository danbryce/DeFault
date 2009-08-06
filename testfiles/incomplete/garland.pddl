(define (domain Garland)
(:requirements :fluents :incomplete-domain)

(:predicates (p) (q) (r) )

(:action a1
 :parameters (?x)
 :precondition (and (p))
 :poss-precondition (and (q) (r))
 :effect (and (r))
 :poss-effect (and (not (p)) (not (q)))
)

(:action a2
 :parameters (?x)
 :precondition (and )
 :poss-precondition (and (p) (q) (r))
 :effect (and (q))
 :poss-effect (and (not (p)) (not (r)))
)
)