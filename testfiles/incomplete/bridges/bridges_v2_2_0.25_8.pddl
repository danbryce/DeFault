(define (domain Bridges)
(:requirements :fluents :incomplete-domain)

(:predicates
 (at_x0) (at_y0)
 (at_x1) (at_y1)
 (bridge_1_0_1_1)
 (holding_treasure_2) (holding_treasure_3) (holding_treasure_1))

(:action move_0_0_1_0
 :parameters ()
 :precondition (and (at_x0)(at_y0))
 :effect (and (not (at_x0)) (at_x1))
)

(:action move_0_0_0_1
 :parameters ()
 :precondition (and (at_x0)(at_y0))
 :effect (and (not (at_y0)) (at_y1))
)

(:action move_0_1_1_1
 :parameters ()
 :precondition (and (at_x0)(at_y1))
 :effect (and (not (at_x0)) (at_x1))
)

(:action move_0_1_0_0
 :parameters ()
 :precondition (and (at_x0)(at_y1))
 :effect (and (not (at_y1)) (at_y0))
)

(:action move_1_0_0_0
 :parameters ()
 :precondition (and (at_x1)(at_y0))
 :effect (and (not (at_x1)) (at_x0))
)

(:action move_1_0_1_1
 :parameters ()
 :precondition (and (at_x1)(at_y0))
 :poss-precondition (and (bridge_1_0_1_1))
 :effect (and (not (at_y0)) (at_y1))
 :poss-effect
    (and
     (not (holding_treasure_1))
     (not (holding_treasure_2))
     (not (holding_treasure_3))
    )
)

(:action move_1_1_0_1
 :parameters ()
 :precondition (and (at_x1)(at_y1))
 :effect (and (not (at_x1)) (at_x0))
)

(:action move_1_1_1_0
 :parameters ()
 :precondition (and (at_x1)(at_y1))
 :poss-precondition (and (bridge_1_0_1_1))
 :effect (and (not (at_y1)) (at_y0))
)

(:action pickup_treasure1
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and (holding_treasure_1))
)

(:action pickup_treasure2
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and (holding_treasure_2))
)

(:action pickup_treasure3
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and (holding_treasure_3))
)

)