(define (domain HoboNav)
(:requirements :fluents :incomplete-domain)

(:predicates
 (at_0_0) (at_0_1) (at_0_2) (at_0_3) (at_0_4) (at_0_5)
 (at_1_0) (at_1_1) (at_1_2) (at_1_3) (at_1_4) (at_1_5)
 (at_2_0) (at_2_1) (at_2_2) (at_2_3) (at_2_4) (at_2_5)
 (at_3_0) (at_3_1) (at_3_2) (at_3_3) (at_3_4) (at_3_5)
 (at_4_0) (at_4_1) (at_4_2) (at_4_3) (at_4_4) (at_4_5)
 (at_5_0) (at_5_1) (at_5_2) (at_5_3) (at_5_4) (at_5_5)
 (have_bindle)
)

(:action move_0_0_1_0
 :parameters ()
 :precondition (and (at_0_0))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_0_0)) (at_1_0))
 :poss-effect (and (not (have_bindle)))
)

(:action move_1_0_0_0
 :parameters ()
 :precondition (and (at_1_0))
 :effect (and (not (at_1_0)) (at_0_0))
)

(:action move_0_0_0_1
 :parameters ()
 :precondition (and (at_0_0))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_0_0)) (at_0_1))
 :poss-effect (and (not (have_bindle)))
)

(:action move_0_1_0_0
 :parameters ()
 :precondition (and (at_0_1))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_0_1)) (at_0_0))
 :poss-effect (and (not (have_bindle)))
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

(:action move_0_1_0_2
 :parameters ()
 :precondition (and (at_0_1))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_0_1)) (at_0_2))
 :poss-effect (and (not (have_bindle)))
)

(:action move_0_2_0_1
 :parameters ()
 :precondition (and (at_0_2))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_0_2)) (at_0_1))
 :poss-effect (and (not (have_bindle)))
)

(:action move_0_2_1_2
 :parameters ()
 :precondition (and (at_0_2))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_0_2)) (at_1_2))
 :poss-effect (and (not (have_bindle)))
)

(:action move_1_2_0_2
 :parameters ()
 :precondition (and (at_1_2))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_1_2)) (at_0_2))
 :poss-effect (and (not (have_bindle)))
)

(:action move_0_2_0_3
 :parameters ()
 :precondition (and (at_0_2))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_0_2)) (at_0_3))
 :poss-effect (and (not (have_bindle)))
)

(:action move_0_3_0_2
 :parameters ()
 :precondition (and (at_0_3))
 :effect (and (not (at_0_3)) (at_0_2))
)

(:action move_0_3_1_3
 :parameters ()
 :precondition (and (at_0_3))
 :effect (and (not (at_0_3)) (at_1_3))
)

(:action move_1_3_0_3
 :parameters ()
 :precondition (and (at_1_3))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_1_3)) (at_0_3))
 :poss-effect (and (not (have_bindle)))
)

(:action move_0_3_0_4
 :parameters ()
 :precondition (and (at_0_3))
 :effect (and (not (at_0_3)) (at_0_4))
)

(:action move_0_4_0_3
 :parameters ()
 :precondition (and (at_0_4))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_0_4)) (at_0_3))
 :poss-effect (and (not (have_bindle)))
)

(:action move_0_4_1_4
 :parameters ()
 :precondition (and (at_0_4))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_0_4)) (at_1_4))
 :poss-effect (and (not (have_bindle)))
)

(:action move_1_4_0_4
 :parameters ()
 :precondition (and (at_1_4))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_1_4)) (at_0_4))
 :poss-effect (and (not (have_bindle)))
)

(:action move_0_4_0_5
 :parameters ()
 :precondition (and (at_0_4))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_0_4)) (at_0_5))
 :poss-effect (and (not (have_bindle)))
)

(:action move_0_5_0_4
 :parameters ()
 :precondition (and (at_0_5))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_0_5)) (at_0_4))
 :poss-effect (and (not (have_bindle)))
)

(:action move_0_5_1_5
 :parameters ()
 :precondition (and (at_0_5))
 :effect (and (not (at_0_5)) (at_1_5))
)

(:action move_1_5_0_5
 :parameters ()
 :precondition (and (at_1_5))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_1_5)) (at_0_5))
 :poss-effect (and (not (have_bindle)))
)

(:action move_1_0_2_0
 :parameters ()
 :precondition (and (at_1_0))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_1_0)) (at_2_0))
 :poss-effect (and (not (have_bindle)))
)

(:action move_2_0_1_0
 :parameters ()
 :precondition (and (at_2_0))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_2_0)) (at_1_0))
 :poss-effect (and (not (have_bindle)))
)

(:action move_1_0_1_1
 :parameters ()
 :precondition (and (at_1_0))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_1_0)) (at_1_1))
 :poss-effect (and (not (have_bindle)))
)

(:action move_1_1_1_0
 :parameters ()
 :precondition (and (at_1_1))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_1_1)) (at_1_0))
 :poss-effect (and (not (have_bindle)))
)

(:action move_1_1_2_1
 :parameters ()
 :precondition (and (at_1_1))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_1_1)) (at_2_1))
 :poss-effect (and (not (have_bindle)))
)

(:action move_2_1_1_1
 :parameters ()
 :precondition (and (at_2_1))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_2_1)) (at_1_1))
 :poss-effect (and (not (have_bindle)))
)

(:action move_1_1_1_2
 :parameters ()
 :precondition (and (at_1_1))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_1_1)) (at_1_2))
 :poss-effect (and (not (have_bindle)))
)

(:action move_1_2_1_1
 :parameters ()
 :precondition (and (at_1_2))
 :effect (and (not (at_1_2)) (at_1_1))
)

(:action move_1_2_2_2
 :parameters ()
 :precondition (and (at_1_2))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_1_2)) (at_2_2))
 :poss-effect (and (not (have_bindle)))
)

(:action move_2_2_1_2
 :parameters ()
 :precondition (and (at_2_2))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_2_2)) (at_1_2))
 :poss-effect (and (not (have_bindle)))
)

(:action move_1_2_1_3
 :parameters ()
 :precondition (and (at_1_2))
 :effect (and (not (at_1_2)) (at_1_3))
)

(:action move_1_3_1_2
 :parameters ()
 :precondition (and (at_1_3))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_1_3)) (at_1_2))
 :poss-effect (and (not (have_bindle)))
)

(:action move_1_3_2_3
 :parameters ()
 :precondition (and (at_1_3))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_1_3)) (at_2_3))
 :poss-effect (and (not (have_bindle)))
)

(:action move_2_3_1_3
 :parameters ()
 :precondition (and (at_2_3))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_2_3)) (at_1_3))
 :poss-effect (and (not (have_bindle)))
)

(:action move_1_3_1_4
 :parameters ()
 :precondition (and (at_1_3))
 :effect (and (not (at_1_3)) (at_1_4))
)

(:action move_1_4_1_3
 :parameters ()
 :precondition (and (at_1_4))
 :effect (and (not (at_1_4)) (at_1_3))
)

(:action move_1_4_2_4
 :parameters ()
 :precondition (and (at_1_4))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_1_4)) (at_2_4))
 :poss-effect (and (not (have_bindle)))
)

(:action move_2_4_1_4
 :parameters ()
 :precondition (and (at_2_4))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_2_4)) (at_1_4))
 :poss-effect (and (not (have_bindle)))
)

(:action move_1_4_1_5
 :parameters ()
 :precondition (and (at_1_4))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_1_4)) (at_1_5))
 :poss-effect (and (not (have_bindle)))
)

(:action move_1_5_1_4
 :parameters ()
 :precondition (and (at_1_5))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_1_5)) (at_1_4))
 :poss-effect (and (not (have_bindle)))
)

(:action move_1_5_2_5
 :parameters ()
 :precondition (and (at_1_5))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_1_5)) (at_2_5))
 :poss-effect (and (not (have_bindle)))
)

(:action move_2_5_1_5
 :parameters ()
 :precondition (and (at_2_5))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_2_5)) (at_1_5))
 :poss-effect (and (not (have_bindle)))
)

(:action move_2_0_3_0
 :parameters ()
 :precondition (and (at_2_0))
 :effect (and (not (at_2_0)) (at_3_0))
)

(:action move_3_0_2_0
 :parameters ()
 :precondition (and (at_3_0))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_3_0)) (at_2_0))
 :poss-effect (and (not (have_bindle)))
)

(:action move_2_0_2_1
 :parameters ()
 :precondition (and (at_2_0))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_2_0)) (at_2_1))
 :poss-effect (and (not (have_bindle)))
)

(:action move_2_1_2_0
 :parameters ()
 :precondition (and (at_2_1))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_2_1)) (at_2_0))
 :poss-effect (and (not (have_bindle)))
)

(:action move_2_1_3_1
 :parameters ()
 :precondition (and (at_2_1))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_2_1)) (at_3_1))
 :poss-effect (and (not (have_bindle)))
)

(:action move_3_1_2_1
 :parameters ()
 :precondition (and (at_3_1))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_3_1)) (at_2_1))
 :poss-effect (and (not (have_bindle)))
)

(:action move_2_1_2_2
 :parameters ()
 :precondition (and (at_2_1))
 :effect (and (not (at_2_1)) (at_2_2))
)

(:action move_2_2_2_1
 :parameters ()
 :precondition (and (at_2_2))
 :effect (and (not (at_2_2)) (at_2_1))
)

(:action move_2_2_3_2
 :parameters ()
 :precondition (and (at_2_2))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_2_2)) (at_3_2))
 :poss-effect (and (not (have_bindle)))
)

(:action move_3_2_2_2
 :parameters ()
 :precondition (and (at_3_2))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_3_2)) (at_2_2))
 :poss-effect (and (not (have_bindle)))
)

(:action move_2_2_2_3
 :parameters ()
 :precondition (and (at_2_2))
 :effect (and (not (at_2_2)) (at_2_3))
)

(:action move_2_3_2_2
 :parameters ()
 :precondition (and (at_2_3))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_2_3)) (at_2_2))
 :poss-effect (and (not (have_bindle)))
)

(:action move_2_3_3_3
 :parameters ()
 :precondition (and (at_2_3))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_2_3)) (at_3_3))
 :poss-effect (and (not (have_bindle)))
)

(:action move_3_3_2_3
 :parameters ()
 :precondition (and (at_3_3))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_3_3)) (at_2_3))
 :poss-effect (and (not (have_bindle)))
)

(:action move_2_3_2_4
 :parameters ()
 :precondition (and (at_2_3))
 :effect (and (not (at_2_3)) (at_2_4))
)

(:action move_2_4_2_3
 :parameters ()
 :precondition (and (at_2_4))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_2_4)) (at_2_3))
 :poss-effect (and (not (have_bindle)))
)

(:action move_2_4_3_4
 :parameters ()
 :precondition (and (at_2_4))
 :effect (and (not (at_2_4)) (at_3_4))
)

(:action move_3_4_2_4
 :parameters ()
 :precondition (and (at_3_4))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_3_4)) (at_2_4))
 :poss-effect (and (not (have_bindle)))
)

(:action move_2_4_2_5
 :parameters ()
 :precondition (and (at_2_4))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_2_4)) (at_2_5))
 :poss-effect (and (not (have_bindle)))
)

(:action move_2_5_2_4
 :parameters ()
 :precondition (and (at_2_5))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_2_5)) (at_2_4))
 :poss-effect (and (not (have_bindle)))
)

(:action move_2_5_3_5
 :parameters ()
 :precondition (and (at_2_5))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_2_5)) (at_3_5))
 :poss-effect (and (not (have_bindle)))
)

(:action move_3_5_2_5
 :parameters ()
 :precondition (and (at_3_5))
 :effect (and (not (at_3_5)) (at_2_5))
)

(:action move_3_0_4_0
 :parameters ()
 :precondition (and (at_3_0))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_3_0)) (at_4_0))
 :poss-effect (and (not (have_bindle)))
)

(:action move_4_0_3_0
 :parameters ()
 :precondition (and (at_4_0))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_4_0)) (at_3_0))
 :poss-effect (and (not (have_bindle)))
)

(:action move_3_0_3_1
 :parameters ()
 :precondition (and (at_3_0))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_3_0)) (at_3_1))
 :poss-effect (and (not (have_bindle)))
)

(:action move_3_1_3_0
 :parameters ()
 :precondition (and (at_3_1))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_3_1)) (at_3_0))
 :poss-effect (and (not (have_bindle)))
)

(:action move_3_1_4_1
 :parameters ()
 :precondition (and (at_3_1))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_3_1)) (at_4_1))
 :poss-effect (and (not (have_bindle)))
)

(:action move_4_1_3_1
 :parameters ()
 :precondition (and (at_4_1))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_4_1)) (at_3_1))
 :poss-effect (and (not (have_bindle)))
)

(:action move_3_1_3_2
 :parameters ()
 :precondition (and (at_3_1))
 :effect (and (not (at_3_1)) (at_3_2))
)

(:action move_3_2_3_1
 :parameters ()
 :precondition (and (at_3_2))
 :effect (and (not (at_3_2)) (at_3_1))
)

(:action move_3_2_4_2
 :parameters ()
 :precondition (and (at_3_2))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_3_2)) (at_4_2))
 :poss-effect (and (not (have_bindle)))
)

(:action move_4_2_3_2
 :parameters ()
 :precondition (and (at_4_2))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_4_2)) (at_3_2))
 :poss-effect (and (not (have_bindle)))
)

(:action move_3_2_3_3
 :parameters ()
 :precondition (and (at_3_2))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_3_2)) (at_3_3))
 :poss-effect (and (not (have_bindle)))
)

(:action move_3_3_3_2
 :parameters ()
 :precondition (and (at_3_3))
 :effect (and (not (at_3_3)) (at_3_2))
)

(:action move_3_3_4_3
 :parameters ()
 :precondition (and (at_3_3))
 :effect (and (not (at_3_3)) (at_4_3))
)

(:action move_4_3_3_3
 :parameters ()
 :precondition (and (at_4_3))
 :effect (and (not (at_4_3)) (at_3_3))
)

(:action move_3_3_3_4
 :parameters ()
 :precondition (and (at_3_3))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_3_3)) (at_3_4))
 :poss-effect (and (not (have_bindle)))
)

(:action move_3_4_3_3
 :parameters ()
 :precondition (and (at_3_4))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_3_4)) (at_3_3))
 :poss-effect (and (not (have_bindle)))
)

(:action move_3_4_4_4
 :parameters ()
 :precondition (and (at_3_4))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_3_4)) (at_4_4))
 :poss-effect (and (not (have_bindle)))
)

(:action move_4_4_3_4
 :parameters ()
 :precondition (and (at_4_4))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_4_4)) (at_3_4))
 :poss-effect (and (not (have_bindle)))
)

(:action move_3_4_3_5
 :parameters ()
 :precondition (and (at_3_4))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_3_4)) (at_3_5))
 :poss-effect (and (not (have_bindle)))
)

(:action move_3_5_3_4
 :parameters ()
 :precondition (and (at_3_5))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_3_5)) (at_3_4))
 :poss-effect (and (not (have_bindle)))
)

(:action move_3_5_4_5
 :parameters ()
 :precondition (and (at_3_5))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_3_5)) (at_4_5))
 :poss-effect (and (not (have_bindle)))
)

(:action move_4_5_3_5
 :parameters ()
 :precondition (and (at_4_5))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_4_5)) (at_3_5))
 :poss-effect (and (not (have_bindle)))
)

(:action move_4_0_5_0
 :parameters ()
 :precondition (and (at_4_0))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_4_0)) (at_5_0))
 :poss-effect (and (not (have_bindle)))
)

(:action move_5_0_4_0
 :parameters ()
 :precondition (and (at_5_0))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_5_0)) (at_4_0))
 :poss-effect (and (not (have_bindle)))
)

(:action move_4_0_4_1
 :parameters ()
 :precondition (and (at_4_0))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_4_0)) (at_4_1))
 :poss-effect (and (not (have_bindle)))
)

(:action move_4_1_4_0
 :parameters ()
 :precondition (and (at_4_1))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_4_1)) (at_4_0))
 :poss-effect (and (not (have_bindle)))
)

(:action move_4_1_5_1
 :parameters ()
 :precondition (and (at_4_1))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_4_1)) (at_5_1))
 :poss-effect (and (not (have_bindle)))
)

(:action move_5_1_4_1
 :parameters ()
 :precondition (and (at_5_1))
 :effect (and (not (at_5_1)) (at_4_1))
)

(:action move_4_1_4_2
 :parameters ()
 :precondition (and (at_4_1))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_4_1)) (at_4_2))
 :poss-effect (and (not (have_bindle)))
)

(:action move_4_2_4_1
 :parameters ()
 :precondition (and (at_4_2))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_4_2)) (at_4_1))
 :poss-effect (and (not (have_bindle)))
)

(:action move_4_2_5_2
 :parameters ()
 :precondition (and (at_4_2))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_4_2)) (at_5_2))
 :poss-effect (and (not (have_bindle)))
)

(:action move_5_2_4_2
 :parameters ()
 :precondition (and (at_5_2))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_5_2)) (at_4_2))
 :poss-effect (and (not (have_bindle)))
)

(:action move_4_2_4_3
 :parameters ()
 :precondition (and (at_4_2))
 :effect (and (not (at_4_2)) (at_4_3))
)

(:action move_4_3_4_2
 :parameters ()
 :precondition (and (at_4_3))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_4_3)) (at_4_2))
 :poss-effect (and (not (have_bindle)))
)

(:action move_4_3_5_3
 :parameters ()
 :precondition (and (at_4_3))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_4_3)) (at_5_3))
 :poss-effect (and (not (have_bindle)))
)

(:action move_5_3_4_3
 :parameters ()
 :precondition (and (at_5_3))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_5_3)) (at_4_3))
 :poss-effect (and (not (have_bindle)))
)

(:action move_4_3_4_4
 :parameters ()
 :precondition (and (at_4_3))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_4_3)) (at_4_4))
 :poss-effect (and (not (have_bindle)))
)

(:action move_4_4_4_3
 :parameters ()
 :precondition (and (at_4_4))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_4_4)) (at_4_3))
 :poss-effect (and (not (have_bindle)))
)

(:action move_4_4_5_4
 :parameters ()
 :precondition (and (at_4_4))
 :effect (and (not (at_4_4)) (at_5_4))
)

(:action move_5_4_4_4
 :parameters ()
 :precondition (and (at_5_4))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_5_4)) (at_4_4))
 :poss-effect (and (not (have_bindle)))
)

(:action move_4_4_4_5
 :parameters ()
 :precondition (and (at_4_4))
 :effect (and (not (at_4_4)) (at_4_5))
)

(:action move_4_5_4_4
 :parameters ()
 :precondition (and (at_4_5))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_4_5)) (at_4_4))
 :poss-effect (and (not (have_bindle)))
)

(:action move_4_5_5_5
 :parameters ()
 :precondition (and (at_4_5))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_4_5)) (at_5_5))
 :poss-effect (and (not (have_bindle)))
)

(:action move_5_5_4_5
 :parameters ()
 :precondition (and (at_5_5))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_5_5)) (at_4_5))
 :poss-effect (and (not (have_bindle)))
)

(:action move_5_0_5_1
 :parameters ()
 :precondition (and (at_5_0))
 :effect (and (not (at_5_0)) (at_5_1))
)

(:action move_5_1_5_0
 :parameters ()
 :precondition (and (at_5_1))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_5_1)) (at_5_0))
 :poss-effect (and (not (have_bindle)))
)

(:action move_5_1_5_2
 :parameters ()
 :precondition (and (at_5_1))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_5_1)) (at_5_2))
 :poss-effect (and (not (have_bindle)))
)

(:action move_5_2_5_1
 :parameters ()
 :precondition (and (at_5_2))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_5_2)) (at_5_1))
 :poss-effect (and (not (have_bindle)))
)

(:action move_5_2_5_3
 :parameters ()
 :precondition (and (at_5_2))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_5_2)) (at_5_3))
 :poss-effect (and (not (have_bindle)))
)

(:action move_5_3_5_2
 :parameters ()
 :precondition (and (at_5_3))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_5_3)) (at_5_2))
 :poss-effect (and (not (have_bindle)))
)

(:action move_5_3_5_4
 :parameters ()
 :precondition (and (at_5_3))
 :effect (and (not (at_5_3)) (at_5_4))
)

(:action move_5_4_5_3
 :parameters ()
 :precondition (and (at_5_4))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_5_4)) (at_5_3))
 :poss-effect (and (not (have_bindle)))
)

(:action move_5_4_5_5
 :parameters ()
 :precondition (and (at_5_4))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_5_4)) (at_5_5))
 :poss-effect (and (not (have_bindle)))
)

(:action move_5_5_5_4
 :parameters ()
 :precondition (and (at_5_5))
 :poss-precondition (and (have_bindle))
 :effect (and (not (at_5_5)) (at_5_4))
 :poss-effect (and (not (have_bindle)))
)

(:action gamble_bindle_0_0
 :parameters ()
 :precondition (and (at_0_0))
 :effect (and )
 :poss-effect (and (have_bindle))
)

(:action gamble_bindle_0_1
 :parameters ()
 :precondition (and (at_0_1))
 :effect (and )
 :poss-effect (and (have_bindle))
)

(:action gamble_bindle_0_2
 :parameters ()
 :precondition (and (at_0_2))
 :effect (and )
 :poss-effect (and (have_bindle))
)

(:action gamble_bindle_0_4
 :parameters ()
 :precondition (and (at_0_4))
 :effect (and )
 :poss-effect (and (have_bindle))
)

(:action gamble_bindle_0_5
 :parameters ()
 :precondition (and (at_0_5))
 :effect (and )
 :poss-effect (and (have_bindle))
)

(:action gamble_bindle_1_0
 :parameters ()
 :precondition (and (at_1_0))
 :effect (and )
 :poss-effect (and (have_bindle))
)

(:action gamble_bindle_1_1
 :parameters ()
 :precondition (and (at_1_1))
 :effect (and )
 :poss-effect (and (have_bindle))
)

(:action gamble_bindle_1_2
 :parameters ()
 :precondition (and (at_1_2))
 :effect (and )
 :poss-effect (and (have_bindle))
)

(:action gamble_bindle_1_3
 :parameters ()
 :precondition (and (at_1_3))
 :effect (and )
 :poss-effect (and (have_bindle))
)

(:action gamble_bindle_1_4
 :parameters ()
 :precondition (and (at_1_4))
 :effect (and )
 :poss-effect (and (have_bindle))
)

(:action gamble_bindle_1_5
 :parameters ()
 :precondition (and (at_1_5))
 :effect (and )
 :poss-effect (and (have_bindle))
)

(:action gamble_bindle_2_0
 :parameters ()
 :precondition (and (at_2_0))
 :effect (and )
 :poss-effect (and (have_bindle))
)

(:action gamble_bindle_2_2
 :parameters ()
 :precondition (and (at_2_2))
 :effect (and )
 :poss-effect (and (have_bindle))
)

(:action gamble_bindle_2_3
 :parameters ()
 :precondition (and (at_2_3))
 :effect (and )
 :poss-effect (and (have_bindle))
)

(:action gamble_bindle_2_4
 :parameters ()
 :precondition (and (at_2_4))
 :effect (and )
 :poss-effect (and (have_bindle))
)

(:action gamble_bindle_2_5
 :parameters ()
 :precondition (and (at_2_5))
 :effect (and )
 :poss-effect (and (have_bindle))
)

(:action gamble_bindle_3_0
 :parameters ()
 :precondition (and (at_3_0))
 :effect (and )
 :poss-effect (and (have_bindle))
)

(:action gamble_bindle_3_1
 :parameters ()
 :precondition (and (at_3_1))
 :effect (and )
 :poss-effect (and (have_bindle))
)

(:action gamble_bindle_3_2
 :parameters ()
 :precondition (and (at_3_2))
 :effect (and )
 :poss-effect (and (have_bindle))
)

(:action gamble_bindle_3_3
 :parameters ()
 :precondition (and (at_3_3))
 :effect (and )
 :poss-effect (and (have_bindle))
)

(:action gamble_bindle_4_0
 :parameters ()
 :precondition (and (at_4_0))
 :effect (and )
 :poss-effect (and (have_bindle))
)

(:action gamble_bindle_4_1
 :parameters ()
 :precondition (and (at_4_1))
 :effect (and )
 :poss-effect (and (have_bindle))
)

(:action gamble_bindle_4_2
 :parameters ()
 :precondition (and (at_4_2))
 :effect (and )
 :poss-effect (and (have_bindle))
)

(:action gamble_bindle_4_3
 :parameters ()
 :precondition (and (at_4_3))
 :effect (and )
 :poss-effect (and (have_bindle))
)

(:action gamble_bindle_4_4
 :parameters ()
 :precondition (and (at_4_4))
 :effect (and )
 :poss-effect (and (have_bindle))
)

(:action gamble_bindle_4_5
 :parameters ()
 :precondition (and (at_4_5))
 :effect (and )
 :poss-effect (and (have_bindle))
)

(:action gamble_bindle_5_0
 :parameters ()
 :precondition (and (at_5_0))
 :effect (and )
 :poss-effect (and (have_bindle))
)

(:action gamble_bindle_5_1
 :parameters ()
 :precondition (and (at_5_1))
 :effect (and )
 :poss-effect (and (have_bindle))
)

(:action gamble_bindle_5_2
 :parameters ()
 :precondition (and (at_5_2))
 :effect (and )
 :poss-effect (and (have_bindle))
)

(:action gamble_bindle_5_3
 :parameters ()
 :precondition (and (at_5_3))
 :effect (and )
 :poss-effect (and (have_bindle))
)

(:action gamble_bindle_5_4
 :parameters ()
 :precondition (and (at_5_4))
 :effect (and )
 :poss-effect (and (have_bindle))
)

(:action gamble_bindle_5_5
 :parameters ()
 :precondition (and (at_5_5))
 :effect (and )
 :poss-effect (and (have_bindle))
)

(:action easymark_bindle_0_2
 :parameters ()
 :precondition (and (at_0_2))
 :effect (and (have_bindle))
)

(:action easymark_bindle_2_5
 :parameters ()
 :precondition (and (at_2_5))
 :effect (and (have_bindle))
)

(:action easymark_bindle_3_2
 :parameters ()
 :precondition (and (at_3_2))
 :effect (and (have_bindle))
)

(:action easymark_bindle_4_0
 :parameters ()
 :precondition (and (at_4_0))
 :effect (and (have_bindle))
)

(:action easymark_bindle_5_1
 :parameters ()
 :precondition (and (at_5_1))
 :effect (and (have_bindle))
)
)
