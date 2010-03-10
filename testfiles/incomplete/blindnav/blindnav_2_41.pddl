(define (domain BlindNav)
(:requirements :fluents :incomplete-domain)

(:predicates
 (at_0_0) (at_0_1)
 (at_1_0) (at_1_1)
 (near_0_0) (near_0_1)
 (near_1_0) (near_1_1)
 (found) (at_bus_stop)
)

(:action move_toward_0_0_1_0
 :parameters ()
 :precondition (and (at_0_0) (found))
 :effect (and (not (at_0_0)) (near_1_0))
 :poss-effect (and (not (found)))
)

(:action move_toward_0_0_0_1
 :parameters ()
 :precondition (and (at_0_0) (found))
 :effect (and (not (at_0_0)) (near_0_1))
 :poss-effect (and (not (found)))
)

(:action move_toward_0_1_1_1
 :parameters ()
 :precondition (and (at_0_1) (found))
 :effect (and (not (at_0_1)) (near_1_1))
 :poss-effect (and (not (found)))
)

(:action move_toward_0_1_0_0
 :parameters ()
 :precondition (and (at_0_1) (found))
 :effect (and (not (at_0_1)) (near_0_0))
 :poss-effect (and (not (found)))
)

(:action move_toward_1_0_0_0
 :parameters ()
 :precondition (and (at_1_0) (found))
 :effect (and (not (at_1_0)) (near_0_0))
 :poss-effect (and (not (found)))
)

(:action move_toward_1_0_1_1
 :parameters ()
 :precondition (and (at_1_0) (found))
 :effect (and (not (at_1_0)) (near_1_1))
 :poss-effect (and (not (found)))
)

(:action move_toward_1_1_0_1
 :parameters ()
 :precondition (and (at_1_1) (found))
 :effect (and (not (at_1_1)) (near_0_1))
 :poss-effect (and (not (found)))
)

(:action move_toward_1_1_1_0
 :parameters ()
 :precondition (and (at_1_1) (found))
 :effect (and (not (at_1_1)) (near_1_0))
 :poss-effect (and (not (found)))
)

(:action arrive_at_0_0_1_0
 :parameters ()
 :precondition (and (near_0_0) (near_1_0))
 :poss-precondition (and (found))
 :effect (and (not (near_0_0)) (at_1_0))
)

(:action arrive_at_0_0_0_1
 :parameters ()
 :precondition (and (near_0_0) (near_0_1))
 :poss-precondition (and (found))
 :effect (and (not (near_0_0)) (at_0_1))
)

(:action arrive_at_0_1_1_1
 :parameters ()
 :precondition (and (near_0_1) (near_1_1))
 :poss-precondition (and (found))
 :effect (and (not (near_0_1)) (at_1_1))
)

(:action arrive_at_0_1_0_0
 :parameters ()
 :precondition (and (near_0_1) (near_0_0))
 :poss-precondition (and (found))
 :effect (and (not (near_0_1)) (at_0_0))
)

(:action arrive_at_1_0_0_0
 :parameters ()
 :precondition (and (near_1_0) (near_0_0))
 :poss-precondition (and (found))
 :effect (and (not (near_1_0)) (at_0_0))
)

(:action arrive_at_1_0_1_1
 :parameters ()
 :precondition (and (near_1_0) (near_1_1))
 :poss-precondition (and (found))
 :effect (and (not (near_1_0)) (at_1_1))
)

(:action arrive_at_1_1_0_1
 :parameters ()
 :precondition (and (near_1_1) (near_0_1))
 :poss-precondition (and (found))
 :effect (and (not (near_1_1)) (at_0_1))
)

(:action arrive_at_1_1_1_0
 :parameters ()
 :precondition (and (near_1_1) (near_1_0))
 :poss-precondition (and (found))
 :effect (and (not (near_1_1)) (at_1_0))
)

(:action observe_low_0_0_1_0_1
 :parameters ()
 :precondition (and (near_0_0) (near_1_0))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_0_0_0_1_1
 :parameters ()
 :precondition (and (near_0_0) (near_0_1))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_0_1_1_1_1
 :parameters ()
 :precondition (and (near_0_1) (near_1_1))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_0_1_1_1_2
 :parameters ()
 :precondition (and (near_0_1) (near_1_1))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_1_0_1_1_1
 :parameters ()
 :precondition (and (near_1_0) (near_1_1))
 :effect (and )
 :poss-effect (and (found))
)

(:action move_bus_stop
 :parameters ()
 :precondition (and (at_1_1))
 :effect (and (not (at_1_1)) (at_bus_stop))
)

)