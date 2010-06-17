(define (domain HoboNav)
(:requirements :fluents :incomplete-domain)

(:predicates
 (at_0_0) (at_0_1)
 (at_1_0) (at_1_1)
 (have_bindle)
)

(:action move_0_0_1_0
 :parameters ()
 :precondition (and (at_0_0))
 :effect (and (not (at_0_0)) (at_1_0))
)

(:action move_1_0_0_0
 :parameters ()
 :precondition (and (at_1_0))
 :effect (and (not (at_1_0)) (at_0_0))
)

(:action move_0_0_0_1
 :parameters ()
 :precondition (and (at_0_0))
 :effect (and (not (at_0_0)) (at_0_1))
)

(:action move_0_1_0_0
 :parameters ()
 :precondition (and (at_0_1))
 :effect (and (not (at_0_1)) (at_0_0))
)

(:action move_0_1_1_1
 :parameters ()
 :precondition (and (at_0_1))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_0_1)) (at_1_1))
 :poss-effect (and (not (have_bindle)))
)

(:action move_1_1_0_1
 :parameters ()
 :precondition (and (at_1_1))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_1_1)) (at_0_1))
 :poss-effect (and (not (have_bindle)))
)

(:action move_1_0_1_1
 :parameters ()
 :precondition (and (at_1_0))
 :effect (and (not (at_1_0)) (at_1_1))
)

(:action move_1_1_1_0
 :parameters ()
 :precondition (and (at_1_1))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_1_1)) (at_1_0))
 :poss-effect (and (not (have_bindle)))
)

(:action gamble_bindle_0_0
 :parameters ()
 :precondition (and (at_0_0))
 :effect (and )
 :poss-effect (and (have_bindle))
)
)
