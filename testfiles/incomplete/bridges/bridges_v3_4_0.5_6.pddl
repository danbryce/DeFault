(define (domain Bridges)
(:requirements :fluents :incomplete-domain)

(:predicates
 (at_x0) (at_y0)
 (at_x1) (at_y1)
 (at_x2) (at_y2)
 (at_x3) (at_y3)
 (bridge_3_0_3_1) (bridge_1_1_2_1) (bridge_0_3_1_3) (bridge_0_1_0_2) (bridge_2_1_2_2) (bridge_2_1_3_1) (bridge_2_0_2_1) (bridge_3_2_3_3) (bridge_1_1_1_2) (bridge_1_2_2_2) (bridge_1_0_2_0) (bridge_2_3_3_3)
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

(:action move_0_1_0_2
 :parameters ()
 :precondition (and (at_x0)(at_y1))
 :poss-precondition (and (bridge_0_1_0_2))
 :effect (and (not (at_y1)) (at_y2))
)

(:action move_0_2_1_2
 :parameters ()
 :precondition (and (at_x0)(at_y2))
 :effect (and (not (at_x0)) (at_x1))
)

(:action move_0_2_0_1
 :parameters ()
 :precondition (and (at_x0)(at_y2))
 :poss-precondition (and (bridge_0_1_0_2))
 :effect (and (not (at_y2)) (at_y1))
)

(:action move_0_2_0_3
 :parameters ()
 :precondition (and (at_x0)(at_y2))
 :effect (and (not (at_y2)) (at_y3))
)

(:action move_0_3_1_3
 :parameters ()
 :precondition (and (at_x0)(at_y3))
 :poss-precondition (and (bridge_0_3_1_3))
 :effect (and (not (at_x0)) (at_x1))
)

(:action move_0_3_0_2
 :parameters ()
 :precondition (and (at_x0)(at_y3))
 :effect (and (not (at_y3)) (at_y2))
)

(:action move_1_0_0_0
 :parameters ()
 :precondition (and (at_x1)(at_y0))
 :effect (and (not (at_x1)) (at_x0))
)

(:action move_1_0_2_0
 :parameters ()
 :precondition (and (at_x1)(at_y0))
 :poss-precondition (and (bridge_1_0_2_0))
 :effect (and (not (at_x1)) (at_x2))
)

(:action move_1_0_1_1
 :parameters ()
 :precondition (and (at_x1)(at_y0))
 :effect (and (not (at_y0)) (at_y1))
)

(:action move_1_1_0_1
 :parameters ()
 :precondition (and (at_x1)(at_y1))
 :effect (and (not (at_x1)) (at_x0))
)

(:action move_1_1_2_1
 :parameters ()
 :precondition (and (at_x1)(at_y1))
 :poss-precondition (and (bridge_1_1_2_1))
 :effect (and (not (at_x1)) (at_x2))
)

(:action move_1_1_1_0
 :parameters ()
 :precondition (and (at_x1)(at_y1))
 :effect (and (not (at_y1)) (at_y0))
)

(:action move_1_1_1_2
 :parameters ()
 :precondition (and (at_x1)(at_y1))
 :poss-precondition (and (bridge_1_1_1_2))
 :effect (and (not (at_y1)) (at_y2))
)

(:action move_1_2_0_2
 :parameters ()
 :precondition (and (at_x1)(at_y2))
 :effect (and (not (at_x1)) (at_x0))
)

(:action move_1_2_2_2
 :parameters ()
 :precondition (and (at_x1)(at_y2))
 :poss-precondition (and (bridge_1_2_2_2))
 :effect (and (not (at_x1)) (at_x2))
)

(:action move_1_2_1_1
 :parameters ()
 :precondition (and (at_x1)(at_y2))
 :poss-precondition (and (bridge_1_1_1_2))
 :effect (and (not (at_y2)) (at_y1))
)

(:action move_1_2_1_3
 :parameters ()
 :precondition (and (at_x1)(at_y2))
 :effect (and (not (at_y2)) (at_y3))
)

(:action move_1_3_0_3
 :parameters ()
 :precondition (and (at_x1)(at_y3))
 :poss-precondition (and (bridge_0_3_1_3))
 :effect (and (not (at_x1)) (at_x0))
)

(:action move_1_3_2_3
 :parameters ()
 :precondition (and (at_x1)(at_y3))
 :effect (and (not (at_x1)) (at_x2))
)

(:action move_1_3_1_2
 :parameters ()
 :precondition (and (at_x1)(at_y3))
 :effect (and (not (at_y3)) (at_y2))
)

(:action move_2_0_1_0
 :parameters ()
 :precondition (and (at_x2)(at_y0))
 :poss-precondition (and (bridge_1_0_2_0))
 :effect (and (not (at_x2)) (at_x1))
)

(:action move_2_0_3_0
 :parameters ()
 :precondition (and (at_x2)(at_y0))
 :effect (and (not (at_x2)) (at_x3))
)

(:action move_2_0_2_1
 :parameters ()
 :precondition (and (at_x2)(at_y0))
 :poss-precondition (and (bridge_2_0_2_1))
 :effect (and (not (at_y0)) (at_y1))
)

(:action move_2_1_1_1
 :parameters ()
 :precondition (and (at_x2)(at_y1))
 :poss-precondition (and (bridge_1_1_2_1))
 :effect (and (not (at_x2)) (at_x1))
)

(:action move_2_1_3_1
 :parameters ()
 :precondition (and (at_x2)(at_y1))
 :poss-precondition (and (bridge_2_1_3_1))
 :effect (and (not (at_x2)) (at_x3))
)

(:action move_2_1_2_0
 :parameters ()
 :precondition (and (at_x2)(at_y1))
 :poss-precondition (and (bridge_2_0_2_1))
 :effect (and (not (at_y1)) (at_y0))
)

(:action move_2_1_2_2
 :parameters ()
 :precondition (and (at_x2)(at_y1))
 :poss-precondition (and (bridge_2_1_2_2))
 :effect (and (not (at_y1)) (at_y2))
)

(:action move_2_2_1_2
 :parameters ()
 :precondition (and (at_x2)(at_y2))
 :poss-precondition (and (bridge_1_2_2_2))
 :effect (and (not (at_x2)) (at_x1))
)

(:action move_2_2_3_2
 :parameters ()
 :precondition (and (at_x2)(at_y2))
 :effect (and (not (at_x2)) (at_x3))
)

(:action move_2_2_2_1
 :parameters ()
 :precondition (and (at_x2)(at_y2))
 :poss-precondition (and (bridge_2_1_2_2))
 :effect (and (not (at_y2)) (at_y1))
)

(:action move_2_2_2_3
 :parameters ()
 :precondition (and (at_x2)(at_y2))
 :effect (and (not (at_y2)) (at_y3))
)

(:action move_2_3_1_3
 :parameters ()
 :precondition (and (at_x2)(at_y3))
 :effect (and (not (at_x2)) (at_x1))
)

(:action move_2_3_3_3
 :parameters ()
 :precondition (and (at_x2)(at_y3))
 :poss-precondition (and (bridge_2_3_3_3))
 :effect (and (not (at_x2)) (at_x3))
)

(:action move_2_3_2_2
 :parameters ()
 :precondition (and (at_x2)(at_y3))
 :effect (and (not (at_y3)) (at_y2))
)

(:action move_3_0_2_0
 :parameters ()
 :precondition (and (at_x3)(at_y0))
 :effect (and (not (at_x3)) (at_x2))
)

(:action move_3_0_3_1
 :parameters ()
 :precondition (and (at_x3)(at_y0))
 :poss-precondition (and (bridge_3_0_3_1))
 :effect (and (not (at_y0)) (at_y1))
)

(:action move_3_1_2_1
 :parameters ()
 :precondition (and (at_x3)(at_y1))
 :poss-precondition (and (bridge_2_1_3_1))
 :effect (and (not (at_x3)) (at_x2))
)

(:action move_3_1_3_0
 :parameters ()
 :precondition (and (at_x3)(at_y1))
 :poss-precondition (and (bridge_3_0_3_1))
 :effect (and (not (at_y1)) (at_y0))
)

(:action move_3_1_3_2
 :parameters ()
 :precondition (and (at_x3)(at_y1))
 :effect (and (not (at_y1)) (at_y2))
)

(:action move_3_2_2_2
 :parameters ()
 :precondition (and (at_x3)(at_y2))
 :effect (and (not (at_x3)) (at_x2))
)

(:action move_3_2_3_1
 :parameters ()
 :precondition (and (at_x3)(at_y2))
 :effect (and (not (at_y2)) (at_y1))
)

(:action move_3_2_3_3
 :parameters ()
 :precondition (and (at_x3)(at_y2))
 :poss-precondition (and (bridge_3_2_3_3))
 :effect (and (not (at_y2)) (at_y3))
)

(:action move_3_3_2_3
 :parameters ()
 :precondition (and (at_x3)(at_y3))
 :poss-precondition (and (bridge_2_3_3_3))
 :effect (and (not (at_x3)) (at_x2))
)

(:action move_3_3_3_2
 :parameters ()
 :precondition (and (at_x3)(at_y3))
 :poss-precondition (and (bridge_3_2_3_3))
 :effect (and (not (at_y3)) (at_y2))
)

(:action pickup_treasure1
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and (holding_treasure_1))
 :poss-effect (and (holding_treasure_3))
)

(:action pickup_treasure2
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and (holding_treasure_2))
 :poss-effect (and (holding_treasure_1))
)

(:action pickup_treasure3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and (holding_treasure_3))
 :poss-effect (and (holding_treasure_1))
)

)