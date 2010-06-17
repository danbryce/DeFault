(define (domain HoboNav)
(:requirements :fluents :incomplete-domain)

(:predicates
 (at_0_0) (at_0_1)
 (at_1_0) (at_1_1)
 (have_bindle) (have_california_blankets) (have_glad_rags) (have_road_stake)
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
 :effect (and (not (at_0_1)) (at_1_1))
)

(:action move_1_1_0_1
 :parameters ()
 :precondition (and (at_1_1))
 :effect (and (not (at_1_1)) (at_0_1))
)

(:action move_1_0_1_1
 :parameters ()
 :precondition (and (at_1_0))
 :effect (and (not (at_1_0)) (at_1_1))
)

(:action move_1_1_1_0
 :parameters ()
 :precondition (and (at_1_1))
 :effect (and (not (at_1_1)) (at_1_0))
)
)
