(define (domain Bridges)
(:requirements :fluents :incomplete-domain)

(:predicates
 (at_0_0) (at_0_1)
 (at_1_0) (at_1_1)
 (bridge_1_0_1_1) (bridge_0_0_0_1) (bridge_0_1_1_1) (bridge_0_0_1_0)
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
 :poss-effect
    (and
     (not (holding_treasure_1))
     (not (holding_treasure_2))
     (not (holding_treasure_3))
    )
)

(:action move_0_1_1_1
 :parameters ()
 :precondition (and (at_0_1))
 :poss-precondition (and (bridge_0_1_1_1))
 :effect (and (not (at_0_1)) (at_1_1))
 :poss-effect
    (and
     (not (holding_treasure_1))
     (not (holding_treasure_2))
     (not (holding_treasure_3))
    )
)

(:action move_0_1_0_0
 :parameters ()
 :precondition (and (at_0_1))
 :poss-precondition (and (bridge_0_0_0_1))
 :effect (and (not (at_0_1)) (at_0_0))
)

(:action move_1_0_0_0
 :parameters ()
 :precondition (and (at_1_0))
 :poss-precondition (and (bridge_0_0_1_0))
 :effect (and (not (at_1_0)) (at_0_0))
)

(:action move_1_0_1_1
 :parameters ()
 :precondition (and (at_1_0))
 :poss-precondition (and (bridge_1_0_1_1))
 :effect (and (not (at_1_0)) (at_1_1))
)

(:action move_1_1_0_1
 :parameters ()
 :precondition (and (at_1_1))
 :poss-precondition (and (bridge_0_1_1_1))
 :effect (and (not (at_1_1)) (at_0_1))
 :poss-effect
    (and
     (not (holding_treasure_1))
     (not (holding_treasure_2))
     (not (holding_treasure_3))
    )
)

(:action move_1_1_1_0
 :parameters ()
 :precondition (and (at_1_1))
 :poss-precondition (and (bridge_1_0_1_1))
 :effect (and (not (at_1_1)) (at_1_0))
)

(:action pickup_treasure1
 :parameters ()
 :precondition (and (at_1_0))
 :effect (and (holding_treasure_1))
 :poss-effect (and (holding_treasure_3))
)

(:action pickup_treasure2
 :parameters ()
 :precondition (and (at_1_1))
 :effect (and (holding_treasure_2))
 :poss-effect (and (holding_treasure_3))
)

(:action pickup_treasure3
 :parameters ()
 :precondition (and (at_0_1))
 :effect (and (holding_treasure_3))
 :poss-effect (and (holding_treasure_2))
)

)