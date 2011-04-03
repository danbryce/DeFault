(define (domain HoboNav)
(:requirements :fluents :incomplete-domain)

(:predicates
 (at_x0) (at_y0) (at_x1) (at_y1)
 (have_bindle)
)

(:action move_0_0_1_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_x0)) (at_x1))
 :poss-effect (and (not (have_bindle)))
)

(:action move_1_0_0_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_x1)) (at_x0))
 :poss-effect (and (not (have_bindle)))
)

(:action move_0_0_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and (not (at_y0)) (at_y1))
)

(:action move_0_1_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_y1)) (at_y0))
 :poss-effect (and (not (have_bindle)))
)

(:action move_0_1_1_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_x0)) (at_x1))
 :poss-effect (and (not (have_bindle)))
)

(:action move_1_1_0_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and (not (at_x1)) (at_x0))
)

(:action move_1_0_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_y0)) (at_y1))
 :poss-effect (and (not (have_bindle)))
)

(:action move_1_1_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_y1)) (at_y0))
 :poss-effect (and (not (have_bindle)))
)

(:action gamble_bindle_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_bindle))
)

(:action gamble_bindle_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_bindle))
)
)
