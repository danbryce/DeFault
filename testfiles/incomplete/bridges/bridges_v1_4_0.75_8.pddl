(define (domain Bridges)
(:requirements :fluents :incomplete-domain)

(:predicates
 (at_0_0) (at_0_1) (at_0_2) (at_0_3)
 (at_1_0) (at_1_1) (at_1_2) (at_1_3)
 (at_2_0) (at_2_1) (at_2_2) (at_2_3)
 (at_3_0) (at_3_1) (at_3_2) (at_3_3)
 (bridge_1_2_1_3) (bridge_3_0_3_1) (bridge_1_1_2_1) (bridge_0_0_0_1) (bridge_2_2_2_3) (bridge_1_3_2_3) (bridge_2_0_3_0) (bridge_2_1_2_2) (bridge_0_1_1_1) (bridge_1_0_2_0) (bridge_0_3_1_3) (bridge_0_1_0_2) (bridge_2_1_3_1) (bridge_1_2_2_2) (bridge_1_1_1_2) (bridge_0_0_1_0) (bridge_2_3_3_3) (bridge_2_2_3_2)
 (holding_treasure_2) (holding_treasure_3) (holding_treasure_1))

(:action move_0_0_1_0
 :parameters ()
 :precondition (and (at_0_0))
 :poss-precondition (and (bridge_0_0_1_0))
 :effect (and (not (at_0_0)) (at_1_0))
)

(:action move_0_0_0_1
 :parameters ()
 :precondition (and (at_0_0))
 :poss-precondition (and (bridge_0_0_0_1))
 :effect (and (not (at_0_0)) (at_0_1))
)

(:action move_0_1_1_1
 :parameters ()
 :precondition (and (at_0_1))
 :poss-precondition (and (bridge_0_1_1_1))
 :effect (and (not (at_0_1)) (at_1_1))
)

(:action move_0_1_0_0
 :parameters ()
 :precondition (and (at_0_1))
 :poss-precondition (and (bridge_0_0_0_1))
 :effect (and (not (at_0_1)) (at_0_0))
)

(:action move_0_1_0_2
 :parameters ()
 :precondition (and (at_0_1))
 :poss-precondition (and (bridge_0_1_0_2))
 :effect (and (not (at_0_1)) (at_0_2))
)

(:action move_0_2_1_2
 :parameters ()
 :precondition (and (at_0_2))
 :effect (and (not (at_0_2)) (at_1_2))
)

(:action move_0_2_0_1
 :parameters ()
 :precondition (and (at_0_2))
 :poss-precondition (and (bridge_0_1_0_2))
 :effect (and (not (at_0_2)) (at_0_1))
)

(:action move_0_2_0_3
 :parameters ()
 :precondition (and (at_0_2))
 :effect (and (not (at_0_2)) (at_0_3))
)

(:action move_0_3_1_3
 :parameters ()
 :precondition (and (at_0_3))
 :poss-precondition (and (bridge_0_3_1_3))
 :effect (and (not (at_0_3)) (at_1_3))
)

(:action move_0_3_0_2
 :parameters ()
 :precondition (and (at_0_3))
 :effect (and (not (at_0_3)) (at_0_2))
)

(:action move_1_0_0_0
 :parameters ()
 :precondition (and (at_1_0))
 :poss-precondition (and (bridge_0_0_1_0))
 :effect (and (not (at_1_0)) (at_0_0))
)

(:action move_1_0_2_0
 :parameters ()
 :precondition (and (at_1_0))
 :poss-precondition (and (bridge_1_0_2_0))
 :effect (and (not (at_1_0)) (at_2_0))
)

(:action move_1_0_1_1
 :parameters ()
 :precondition (and (at_1_0))
 :effect (and (not (at_1_0)) (at_1_1))
)

(:action move_1_1_0_1
 :parameters ()
 :precondition (and (at_1_1))
 :poss-precondition (and (bridge_0_1_1_1))
 :effect (and (not (at_1_1)) (at_0_1))
)

(:action move_1_1_2_1
 :parameters ()
 :precondition (and (at_1_1))
 :poss-precondition (and (bridge_1_1_2_1))
 :effect (and (not (at_1_1)) (at_2_1))
)

(:action move_1_1_1_0
 :parameters ()
 :precondition (and (at_1_1))
 :effect (and (not (at_1_1)) (at_1_0))
)

(:action move_1_1_1_2
 :parameters ()
 :precondition (and (at_1_1))
 :poss-precondition (and (bridge_1_1_1_2))
 :effect (and (not (at_1_1)) (at_1_2))
)

(:action move_1_2_0_2
 :parameters ()
 :precondition (and (at_1_2))
 :effect (and (not (at_1_2)) (at_0_2))
)

(:action move_1_2_2_2
 :parameters ()
 :precondition (and (at_1_2))
 :poss-precondition (and (bridge_1_2_2_2))
 :effect (and (not (at_1_2)) (at_2_2))
)

(:action move_1_2_1_1
 :parameters ()
 :precondition (and (at_1_2))
 :poss-precondition (and (bridge_1_1_1_2))
 :effect (and (not (at_1_2)) (at_1_1))
)

(:action move_1_2_1_3
 :parameters ()
 :precondition (and (at_1_2))
 :poss-precondition (and (bridge_1_2_1_3))
 :effect (and (not (at_1_2)) (at_1_3))
)

(:action move_1_3_0_3
 :parameters ()
 :precondition (and (at_1_3))
 :poss-precondition (and (bridge_0_3_1_3))
 :effect (and (not (at_1_3)) (at_0_3))
)

(:action move_1_3_2_3
 :parameters ()
 :precondition (and (at_1_3))
 :poss-precondition (and (bridge_1_3_2_3))
 :effect (and (not (at_1_3)) (at_2_3))
)

(:action move_1_3_1_2
 :parameters ()
 :precondition (and (at_1_3))
 :poss-precondition (and (bridge_1_2_1_3))
 :effect (and (not (at_1_3)) (at_1_2))
)

(:action move_2_0_1_0
 :parameters ()
 :precondition (and (at_2_0))
 :poss-precondition (and (bridge_1_0_2_0))
 :effect (and (not (at_2_0)) (at_1_0))
)

(:action move_2_0_3_0
 :parameters ()
 :precondition (and (at_2_0))
 :poss-precondition (and (bridge_2_0_3_0))
 :effect (and (not (at_2_0)) (at_3_0))
)

(:action move_2_0_2_1
 :parameters ()
 :precondition (and (at_2_0))
 :effect (and (not (at_2_0)) (at_2_1))
)

(:action move_2_1_1_1
 :parameters ()
 :precondition (and (at_2_1))
 :poss-precondition (and (bridge_1_1_2_1))
 :effect (and (not (at_2_1)) (at_1_1))
)

(:action move_2_1_3_1
 :parameters ()
 :precondition (and (at_2_1))
 :poss-precondition (and (bridge_2_1_3_1))
 :effect (and (not (at_2_1)) (at_3_1))
)

(:action move_2_1_2_0
 :parameters ()
 :precondition (and (at_2_1))
 :effect (and (not (at_2_1)) (at_2_0))
)

(:action move_2_1_2_2
 :parameters ()
 :precondition (and (at_2_1))
 :poss-precondition (and (bridge_2_1_2_2))
 :effect (and (not (at_2_1)) (at_2_2))
)

(:action move_2_2_1_2
 :parameters ()
 :precondition (and (at_2_2))
 :poss-precondition (and (bridge_1_2_2_2))
 :effect (and (not (at_2_2)) (at_1_2))
)

(:action move_2_2_3_2
 :parameters ()
 :precondition (and (at_2_2))
 :poss-precondition (and (bridge_2_2_3_2))
 :effect (and (not (at_2_2)) (at_3_2))
)

(:action move_2_2_2_1
 :parameters ()
 :precondition (and (at_2_2))
 :poss-precondition (and (bridge_2_1_2_2))
 :effect (and (not (at_2_2)) (at_2_1))
)

(:action move_2_2_2_3
 :parameters ()
 :precondition (and (at_2_2))
 :poss-precondition (and (bridge_2_2_2_3))
 :effect (and (not (at_2_2)) (at_2_3))
)

(:action move_2_3_1_3
 :parameters ()
 :precondition (and (at_2_3))
 :poss-precondition (and (bridge_1_3_2_3))
 :effect (and (not (at_2_3)) (at_1_3))
)

(:action move_2_3_3_3
 :parameters ()
 :precondition (and (at_2_3))
 :poss-precondition (and (bridge_2_3_3_3))
 :effect (and (not (at_2_3)) (at_3_3))
)

(:action move_2_3_2_2
 :parameters ()
 :precondition (and (at_2_3))
 :poss-precondition (and (bridge_2_2_2_3))
 :effect (and (not (at_2_3)) (at_2_2))
)

(:action move_3_0_2_0
 :parameters ()
 :precondition (and (at_3_0))
 :poss-precondition (and (bridge_2_0_3_0))
 :effect (and (not (at_3_0)) (at_2_0))
)

(:action move_3_0_3_1
 :parameters ()
 :precondition (and (at_3_0))
 :poss-precondition (and (bridge_3_0_3_1))
 :effect (and (not (at_3_0)) (at_3_1))
)

(:action move_3_1_2_1
 :parameters ()
 :precondition (and (at_3_1))
 :poss-precondition (and (bridge_2_1_3_1))
 :effect (and (not (at_3_1)) (at_2_1))
)

(:action move_3_1_3_0
 :parameters ()
 :precondition (and (at_3_1))
 :poss-precondition (and (bridge_3_0_3_1))
 :effect (and (not (at_3_1)) (at_3_0))
)

(:action move_3_1_3_2
 :parameters ()
 :precondition (and (at_3_1))
 :effect (and (not (at_3_1)) (at_3_2))
)

(:action move_3_2_2_2
 :parameters ()
 :precondition (and (at_3_2))
 :poss-precondition (and (bridge_2_2_3_2))
 :effect (and (not (at_3_2)) (at_2_2))
)

(:action move_3_2_3_1
 :parameters ()
 :precondition (and (at_3_2))
 :effect (and (not (at_3_2)) (at_3_1))
)

(:action move_3_2_3_3
 :parameters ()
 :precondition (and (at_3_2))
 :effect (and (not (at_3_2)) (at_3_3))
)

(:action move_3_3_2_3
 :parameters ()
 :precondition (and (at_3_3))
 :poss-precondition (and (bridge_2_3_3_3))
 :effect (and (not (at_3_3)) (at_2_3))
)

(:action move_3_3_3_2
 :parameters ()
 :precondition (and (at_3_3))
 :effect (and (not (at_3_3)) (at_3_2))
)

(:action pickup_treasure1
 :parameters ()
 :precondition (and (at_3_0))
 :effect (and (holding_treasure_1))
)

(:action pickup_treasure2
 :parameters ()
 :precondition (and (at_3_3))
 :effect (and (holding_treasure_2))
)

(:action pickup_treasure3
 :parameters ()
 :precondition (and (at_0_3))
 :effect (and (holding_treasure_3))
)

)