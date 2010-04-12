(define (domain translationbug)
(:requirements :fluents :incomplete-domain)

(:predicates (p) (q) (r) (s) (t) )

(:action a1
 :parameters ()
 :precondition (and (p) (s))
 :poss-precondition (and (q) (r))
 :effect (and (r))
)

(:action a2
 :parameters ()
 :precondition (and (s))
 :poss-precondition (and (p) (q) (r))
 :effect (and (q))
 :poss-effect (and (not (r)))
)
)