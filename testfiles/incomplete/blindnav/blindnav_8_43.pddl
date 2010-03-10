(define (domain BlindNav)
(:requirements :fluents :incomplete-domain)

(:predicates
 (at_0_0) (at_0_1) (at_0_2) (at_0_3) (at_0_4) (at_0_5) (at_0_6) (at_0_7)
 (at_1_0) (at_1_1) (at_1_2) (at_1_3) (at_1_4) (at_1_5) (at_1_6) (at_1_7)
 (at_2_0) (at_2_1) (at_2_2) (at_2_3) (at_2_4) (at_2_5) (at_2_6) (at_2_7)
 (at_3_0) (at_3_1) (at_3_2) (at_3_3) (at_3_4) (at_3_5) (at_3_6) (at_3_7)
 (at_4_0) (at_4_1) (at_4_2) (at_4_3) (at_4_4) (at_4_5) (at_4_6) (at_4_7)
 (at_5_0) (at_5_1) (at_5_2) (at_5_3) (at_5_4) (at_5_5) (at_5_6) (at_5_7)
 (at_6_0) (at_6_1) (at_6_2) (at_6_3) (at_6_4) (at_6_5) (at_6_6) (at_6_7)
 (at_7_0) (at_7_1) (at_7_2) (at_7_3) (at_7_4) (at_7_5) (at_7_6) (at_7_7)
 (near_0_0) (near_0_1) (near_0_2) (near_0_3) (near_0_4) (near_0_5) (near_0_6) (near_0_7)
 (near_1_0) (near_1_1) (near_1_2) (near_1_3) (near_1_4) (near_1_5) (near_1_6) (near_1_7)
 (near_2_0) (near_2_1) (near_2_2) (near_2_3) (near_2_4) (near_2_5) (near_2_6) (near_2_7)
 (near_3_0) (near_3_1) (near_3_2) (near_3_3) (near_3_4) (near_3_5) (near_3_6) (near_3_7)
 (near_4_0) (near_4_1) (near_4_2) (near_4_3) (near_4_4) (near_4_5) (near_4_6) (near_4_7)
 (near_5_0) (near_5_1) (near_5_2) (near_5_3) (near_5_4) (near_5_5) (near_5_6) (near_5_7)
 (near_6_0) (near_6_1) (near_6_2) (near_6_3) (near_6_4) (near_6_5) (near_6_6) (near_6_7)
 (near_7_0) (near_7_1) (near_7_2) (near_7_3) (near_7_4) (near_7_5) (near_7_6) (near_7_7)
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

(:action move_toward_0_1_0_2
 :parameters ()
 :precondition (and (at_0_1) (found))
 :effect (and (not (at_0_1)) (near_0_2))
 :poss-effect (and (not (found)))
)

(:action move_toward_0_2_1_2
 :parameters ()
 :precondition (and (at_0_2) (found))
 :effect (and (not (at_0_2)) (near_1_2))
 :poss-effect (and (not (found)))
)

(:action move_toward_0_2_0_1
 :parameters ()
 :precondition (and (at_0_2) (found))
 :effect (and (not (at_0_2)) (near_0_1))
 :poss-effect (and (not (found)))
)

(:action move_toward_0_2_0_3
 :parameters ()
 :precondition (and (at_0_2) (found))
 :effect (and (not (at_0_2)) (near_0_3))
 :poss-effect (and (not (found)))
)

(:action move_toward_0_3_1_3
 :parameters ()
 :precondition (and (at_0_3) (found))
 :effect (and (not (at_0_3)) (near_1_3))
 :poss-effect (and (not (found)))
)

(:action move_toward_0_3_0_2
 :parameters ()
 :precondition (and (at_0_3) (found))
 :effect (and (not (at_0_3)) (near_0_2))
 :poss-effect (and (not (found)))
)

(:action move_toward_0_3_0_4
 :parameters ()
 :precondition (and (at_0_3) (found))
 :effect (and (not (at_0_3)) (near_0_4))
 :poss-effect (and (not (found)))
)

(:action move_toward_0_4_1_4
 :parameters ()
 :precondition (and (at_0_4) (found))
 :effect (and (not (at_0_4)) (near_1_4))
 :poss-effect (and (not (found)))
)

(:action move_toward_0_4_0_3
 :parameters ()
 :precondition (and (at_0_4) (found))
 :effect (and (not (at_0_4)) (near_0_3))
 :poss-effect (and (not (found)))
)

(:action move_toward_0_4_0_5
 :parameters ()
 :precondition (and (at_0_4) (found))
 :effect (and (not (at_0_4)) (near_0_5))
 :poss-effect (and (not (found)))
)

(:action move_toward_0_5_1_5
 :parameters ()
 :precondition (and (at_0_5) (found))
 :effect (and (not (at_0_5)) (near_1_5))
 :poss-effect (and (not (found)))
)

(:action move_toward_0_5_0_4
 :parameters ()
 :precondition (and (at_0_5) (found))
 :effect (and (not (at_0_5)) (near_0_4))
 :poss-effect (and (not (found)))
)

(:action move_toward_0_5_0_6
 :parameters ()
 :precondition (and (at_0_5) (found))
 :effect (and (not (at_0_5)) (near_0_6))
 :poss-effect (and (not (found)))
)

(:action move_toward_0_6_1_6
 :parameters ()
 :precondition (and (at_0_6) (found))
 :effect (and (not (at_0_6)) (near_1_6))
 :poss-effect (and (not (found)))
)

(:action move_toward_0_6_0_5
 :parameters ()
 :precondition (and (at_0_6) (found))
 :effect (and (not (at_0_6)) (near_0_5))
 :poss-effect (and (not (found)))
)

(:action move_toward_0_6_0_7
 :parameters ()
 :precondition (and (at_0_6) (found))
 :effect (and (not (at_0_6)) (near_0_7))
 :poss-effect (and (not (found)))
)

(:action move_toward_0_7_1_7
 :parameters ()
 :precondition (and (at_0_7) (found))
 :effect (and (not (at_0_7)) (near_1_7))
 :poss-effect (and (not (found)))
)

(:action move_toward_0_7_0_6
 :parameters ()
 :precondition (and (at_0_7) (found))
 :effect (and (not (at_0_7)) (near_0_6))
 :poss-effect (and (not (found)))
)

(:action move_toward_1_0_0_0
 :parameters ()
 :precondition (and (at_1_0) (found))
 :effect (and (not (at_1_0)) (near_0_0))
 :poss-effect (and (not (found)))
)

(:action move_toward_1_0_2_0
 :parameters ()
 :precondition (and (at_1_0) (found))
 :effect (and (not (at_1_0)) (near_2_0))
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

(:action move_toward_1_1_2_1
 :parameters ()
 :precondition (and (at_1_1) (found))
 :effect (and (not (at_1_1)) (near_2_1))
 :poss-effect (and (not (found)))
)

(:action move_toward_1_1_1_0
 :parameters ()
 :precondition (and (at_1_1) (found))
 :effect (and (not (at_1_1)) (near_1_0))
 :poss-effect (and (not (found)))
)

(:action move_toward_1_1_1_2
 :parameters ()
 :precondition (and (at_1_1) (found))
 :effect (and (not (at_1_1)) (near_1_2))
 :poss-effect (and (not (found)))
)

(:action move_toward_1_2_0_2
 :parameters ()
 :precondition (and (at_1_2) (found))
 :effect (and (not (at_1_2)) (near_0_2))
 :poss-effect (and (not (found)))
)

(:action move_toward_1_2_2_2
 :parameters ()
 :precondition (and (at_1_2) (found))
 :effect (and (not (at_1_2)) (near_2_2))
 :poss-effect (and (not (found)))
)

(:action move_toward_1_2_1_1
 :parameters ()
 :precondition (and (at_1_2) (found))
 :effect (and (not (at_1_2)) (near_1_1))
 :poss-effect (and (not (found)))
)

(:action move_toward_1_2_1_3
 :parameters ()
 :precondition (and (at_1_2) (found))
 :effect (and (not (at_1_2)) (near_1_3))
 :poss-effect (and (not (found)))
)

(:action move_toward_1_3_0_3
 :parameters ()
 :precondition (and (at_1_3) (found))
 :effect (and (not (at_1_3)) (near_0_3))
 :poss-effect (and (not (found)))
)

(:action move_toward_1_3_2_3
 :parameters ()
 :precondition (and (at_1_3) (found))
 :effect (and (not (at_1_3)) (near_2_3))
 :poss-effect (and (not (found)))
)

(:action move_toward_1_3_1_2
 :parameters ()
 :precondition (and (at_1_3) (found))
 :effect (and (not (at_1_3)) (near_1_2))
 :poss-effect (and (not (found)))
)

(:action move_toward_1_3_1_4
 :parameters ()
 :precondition (and (at_1_3) (found))
 :effect (and (not (at_1_3)) (near_1_4))
 :poss-effect (and (not (found)))
)

(:action move_toward_1_4_0_4
 :parameters ()
 :precondition (and (at_1_4) (found))
 :effect (and (not (at_1_4)) (near_0_4))
 :poss-effect (and (not (found)))
)

(:action move_toward_1_4_2_4
 :parameters ()
 :precondition (and (at_1_4) (found))
 :effect (and (not (at_1_4)) (near_2_4))
 :poss-effect (and (not (found)))
)

(:action move_toward_1_4_1_3
 :parameters ()
 :precondition (and (at_1_4) (found))
 :effect (and (not (at_1_4)) (near_1_3))
 :poss-effect (and (not (found)))
)

(:action move_toward_1_4_1_5
 :parameters ()
 :precondition (and (at_1_4) (found))
 :effect (and (not (at_1_4)) (near_1_5))
 :poss-effect (and (not (found)))
)

(:action move_toward_1_5_0_5
 :parameters ()
 :precondition (and (at_1_5) (found))
 :effect (and (not (at_1_5)) (near_0_5))
 :poss-effect (and (not (found)))
)

(:action move_toward_1_5_2_5
 :parameters ()
 :precondition (and (at_1_5) (found))
 :effect (and (not (at_1_5)) (near_2_5))
 :poss-effect (and (not (found)))
)

(:action move_toward_1_5_1_4
 :parameters ()
 :precondition (and (at_1_5) (found))
 :effect (and (not (at_1_5)) (near_1_4))
 :poss-effect (and (not (found)))
)

(:action move_toward_1_5_1_6
 :parameters ()
 :precondition (and (at_1_5) (found))
 :effect (and (not (at_1_5)) (near_1_6))
 :poss-effect (and (not (found)))
)

(:action move_toward_1_6_0_6
 :parameters ()
 :precondition (and (at_1_6) (found))
 :effect (and (not (at_1_6)) (near_0_6))
 :poss-effect (and (not (found)))
)

(:action move_toward_1_6_2_6
 :parameters ()
 :precondition (and (at_1_6) (found))
 :effect (and (not (at_1_6)) (near_2_6))
 :poss-effect (and (not (found)))
)

(:action move_toward_1_6_1_5
 :parameters ()
 :precondition (and (at_1_6) (found))
 :effect (and (not (at_1_6)) (near_1_5))
 :poss-effect (and (not (found)))
)

(:action move_toward_1_6_1_7
 :parameters ()
 :precondition (and (at_1_6) (found))
 :effect (and (not (at_1_6)) (near_1_7))
 :poss-effect (and (not (found)))
)

(:action move_toward_1_7_0_7
 :parameters ()
 :precondition (and (at_1_7) (found))
 :effect (and (not (at_1_7)) (near_0_7))
 :poss-effect (and (not (found)))
)

(:action move_toward_1_7_2_7
 :parameters ()
 :precondition (and (at_1_7) (found))
 :effect (and (not (at_1_7)) (near_2_7))
 :poss-effect (and (not (found)))
)

(:action move_toward_1_7_1_6
 :parameters ()
 :precondition (and (at_1_7) (found))
 :effect (and (not (at_1_7)) (near_1_6))
 :poss-effect (and (not (found)))
)

(:action move_toward_2_0_1_0
 :parameters ()
 :precondition (and (at_2_0) (found))
 :effect (and (not (at_2_0)) (near_1_0))
 :poss-effect (and (not (found)))
)

(:action move_toward_2_0_3_0
 :parameters ()
 :precondition (and (at_2_0) (found))
 :effect (and (not (at_2_0)) (near_3_0))
 :poss-effect (and (not (found)))
)

(:action move_toward_2_0_2_1
 :parameters ()
 :precondition (and (at_2_0) (found))
 :effect (and (not (at_2_0)) (near_2_1))
 :poss-effect (and (not (found)))
)

(:action move_toward_2_1_1_1
 :parameters ()
 :precondition (and (at_2_1) (found))
 :effect (and (not (at_2_1)) (near_1_1))
 :poss-effect (and (not (found)))
)

(:action move_toward_2_1_3_1
 :parameters ()
 :precondition (and (at_2_1) (found))
 :effect (and (not (at_2_1)) (near_3_1))
 :poss-effect (and (not (found)))
)

(:action move_toward_2_1_2_0
 :parameters ()
 :precondition (and (at_2_1) (found))
 :effect (and (not (at_2_1)) (near_2_0))
 :poss-effect (and (not (found)))
)

(:action move_toward_2_1_2_2
 :parameters ()
 :precondition (and (at_2_1) (found))
 :effect (and (not (at_2_1)) (near_2_2))
 :poss-effect (and (not (found)))
)

(:action move_toward_2_2_1_2
 :parameters ()
 :precondition (and (at_2_2) (found))
 :effect (and (not (at_2_2)) (near_1_2))
 :poss-effect (and (not (found)))
)

(:action move_toward_2_2_3_2
 :parameters ()
 :precondition (and (at_2_2) (found))
 :effect (and (not (at_2_2)) (near_3_2))
 :poss-effect (and (not (found)))
)

(:action move_toward_2_2_2_1
 :parameters ()
 :precondition (and (at_2_2) (found))
 :effect (and (not (at_2_2)) (near_2_1))
 :poss-effect (and (not (found)))
)

(:action move_toward_2_2_2_3
 :parameters ()
 :precondition (and (at_2_2) (found))
 :effect (and (not (at_2_2)) (near_2_3))
 :poss-effect (and (not (found)))
)

(:action move_toward_2_3_1_3
 :parameters ()
 :precondition (and (at_2_3) (found))
 :effect (and (not (at_2_3)) (near_1_3))
 :poss-effect (and (not (found)))
)

(:action move_toward_2_3_3_3
 :parameters ()
 :precondition (and (at_2_3) (found))
 :effect (and (not (at_2_3)) (near_3_3))
 :poss-effect (and (not (found)))
)

(:action move_toward_2_3_2_2
 :parameters ()
 :precondition (and (at_2_3) (found))
 :effect (and (not (at_2_3)) (near_2_2))
 :poss-effect (and (not (found)))
)

(:action move_toward_2_3_2_4
 :parameters ()
 :precondition (and (at_2_3) (found))
 :effect (and (not (at_2_3)) (near_2_4))
 :poss-effect (and (not (found)))
)

(:action move_toward_2_4_1_4
 :parameters ()
 :precondition (and (at_2_4) (found))
 :effect (and (not (at_2_4)) (near_1_4))
 :poss-effect (and (not (found)))
)

(:action move_toward_2_4_3_4
 :parameters ()
 :precondition (and (at_2_4) (found))
 :effect (and (not (at_2_4)) (near_3_4))
 :poss-effect (and (not (found)))
)

(:action move_toward_2_4_2_3
 :parameters ()
 :precondition (and (at_2_4) (found))
 :effect (and (not (at_2_4)) (near_2_3))
 :poss-effect (and (not (found)))
)

(:action move_toward_2_4_2_5
 :parameters ()
 :precondition (and (at_2_4) (found))
 :effect (and (not (at_2_4)) (near_2_5))
 :poss-effect (and (not (found)))
)

(:action move_toward_2_5_1_5
 :parameters ()
 :precondition (and (at_2_5) (found))
 :effect (and (not (at_2_5)) (near_1_5))
 :poss-effect (and (not (found)))
)

(:action move_toward_2_5_3_5
 :parameters ()
 :precondition (and (at_2_5) (found))
 :effect (and (not (at_2_5)) (near_3_5))
 :poss-effect (and (not (found)))
)

(:action move_toward_2_5_2_4
 :parameters ()
 :precondition (and (at_2_5) (found))
 :effect (and (not (at_2_5)) (near_2_4))
 :poss-effect (and (not (found)))
)

(:action move_toward_2_5_2_6
 :parameters ()
 :precondition (and (at_2_5) (found))
 :effect (and (not (at_2_5)) (near_2_6))
 :poss-effect (and (not (found)))
)

(:action move_toward_2_6_1_6
 :parameters ()
 :precondition (and (at_2_6) (found))
 :effect (and (not (at_2_6)) (near_1_6))
 :poss-effect (and (not (found)))
)

(:action move_toward_2_6_3_6
 :parameters ()
 :precondition (and (at_2_6) (found))
 :effect (and (not (at_2_6)) (near_3_6))
 :poss-effect (and (not (found)))
)

(:action move_toward_2_6_2_5
 :parameters ()
 :precondition (and (at_2_6) (found))
 :effect (and (not (at_2_6)) (near_2_5))
 :poss-effect (and (not (found)))
)

(:action move_toward_2_6_2_7
 :parameters ()
 :precondition (and (at_2_6) (found))
 :effect (and (not (at_2_6)) (near_2_7))
 :poss-effect (and (not (found)))
)

(:action move_toward_2_7_1_7
 :parameters ()
 :precondition (and (at_2_7) (found))
 :effect (and (not (at_2_7)) (near_1_7))
 :poss-effect (and (not (found)))
)

(:action move_toward_2_7_3_7
 :parameters ()
 :precondition (and (at_2_7) (found))
 :effect (and (not (at_2_7)) (near_3_7))
 :poss-effect (and (not (found)))
)

(:action move_toward_2_7_2_6
 :parameters ()
 :precondition (and (at_2_7) (found))
 :effect (and (not (at_2_7)) (near_2_6))
 :poss-effect (and (not (found)))
)

(:action move_toward_3_0_2_0
 :parameters ()
 :precondition (and (at_3_0) (found))
 :effect (and (not (at_3_0)) (near_2_0))
 :poss-effect (and (not (found)))
)

(:action move_toward_3_0_4_0
 :parameters ()
 :precondition (and (at_3_0) (found))
 :effect (and (not (at_3_0)) (near_4_0))
 :poss-effect (and (not (found)))
)

(:action move_toward_3_0_3_1
 :parameters ()
 :precondition (and (at_3_0) (found))
 :effect (and (not (at_3_0)) (near_3_1))
 :poss-effect (and (not (found)))
)

(:action move_toward_3_1_2_1
 :parameters ()
 :precondition (and (at_3_1) (found))
 :effect (and (not (at_3_1)) (near_2_1))
 :poss-effect (and (not (found)))
)

(:action move_toward_3_1_4_1
 :parameters ()
 :precondition (and (at_3_1) (found))
 :effect (and (not (at_3_1)) (near_4_1))
 :poss-effect (and (not (found)))
)

(:action move_toward_3_1_3_0
 :parameters ()
 :precondition (and (at_3_1) (found))
 :effect (and (not (at_3_1)) (near_3_0))
 :poss-effect (and (not (found)))
)

(:action move_toward_3_1_3_2
 :parameters ()
 :precondition (and (at_3_1) (found))
 :effect (and (not (at_3_1)) (near_3_2))
 :poss-effect (and (not (found)))
)

(:action move_toward_3_2_2_2
 :parameters ()
 :precondition (and (at_3_2) (found))
 :effect (and (not (at_3_2)) (near_2_2))
 :poss-effect (and (not (found)))
)

(:action move_toward_3_2_4_2
 :parameters ()
 :precondition (and (at_3_2) (found))
 :effect (and (not (at_3_2)) (near_4_2))
 :poss-effect (and (not (found)))
)

(:action move_toward_3_2_3_1
 :parameters ()
 :precondition (and (at_3_2) (found))
 :effect (and (not (at_3_2)) (near_3_1))
 :poss-effect (and (not (found)))
)

(:action move_toward_3_2_3_3
 :parameters ()
 :precondition (and (at_3_2) (found))
 :effect (and (not (at_3_2)) (near_3_3))
 :poss-effect (and (not (found)))
)

(:action move_toward_3_3_2_3
 :parameters ()
 :precondition (and (at_3_3) (found))
 :effect (and (not (at_3_3)) (near_2_3))
 :poss-effect (and (not (found)))
)

(:action move_toward_3_3_4_3
 :parameters ()
 :precondition (and (at_3_3) (found))
 :effect (and (not (at_3_3)) (near_4_3))
 :poss-effect (and (not (found)))
)

(:action move_toward_3_3_3_2
 :parameters ()
 :precondition (and (at_3_3) (found))
 :effect (and (not (at_3_3)) (near_3_2))
 :poss-effect (and (not (found)))
)

(:action move_toward_3_3_3_4
 :parameters ()
 :precondition (and (at_3_3) (found))
 :effect (and (not (at_3_3)) (near_3_4))
 :poss-effect (and (not (found)))
)

(:action move_toward_3_4_2_4
 :parameters ()
 :precondition (and (at_3_4) (found))
 :effect (and (not (at_3_4)) (near_2_4))
 :poss-effect (and (not (found)))
)

(:action move_toward_3_4_4_4
 :parameters ()
 :precondition (and (at_3_4) (found))
 :effect (and (not (at_3_4)) (near_4_4))
 :poss-effect (and (not (found)))
)

(:action move_toward_3_4_3_3
 :parameters ()
 :precondition (and (at_3_4) (found))
 :effect (and (not (at_3_4)) (near_3_3))
 :poss-effect (and (not (found)))
)

(:action move_toward_3_4_3_5
 :parameters ()
 :precondition (and (at_3_4) (found))
 :effect (and (not (at_3_4)) (near_3_5))
 :poss-effect (and (not (found)))
)

(:action move_toward_3_5_2_5
 :parameters ()
 :precondition (and (at_3_5) (found))
 :effect (and (not (at_3_5)) (near_2_5))
 :poss-effect (and (not (found)))
)

(:action move_toward_3_5_4_5
 :parameters ()
 :precondition (and (at_3_5) (found))
 :effect (and (not (at_3_5)) (near_4_5))
 :poss-effect (and (not (found)))
)

(:action move_toward_3_5_3_4
 :parameters ()
 :precondition (and (at_3_5) (found))
 :effect (and (not (at_3_5)) (near_3_4))
 :poss-effect (and (not (found)))
)

(:action move_toward_3_5_3_6
 :parameters ()
 :precondition (and (at_3_5) (found))
 :effect (and (not (at_3_5)) (near_3_6))
 :poss-effect (and (not (found)))
)

(:action move_toward_3_6_2_6
 :parameters ()
 :precondition (and (at_3_6) (found))
 :effect (and (not (at_3_6)) (near_2_6))
 :poss-effect (and (not (found)))
)

(:action move_toward_3_6_4_6
 :parameters ()
 :precondition (and (at_3_6) (found))
 :effect (and (not (at_3_6)) (near_4_6))
 :poss-effect (and (not (found)))
)

(:action move_toward_3_6_3_5
 :parameters ()
 :precondition (and (at_3_6) (found))
 :effect (and (not (at_3_6)) (near_3_5))
 :poss-effect (and (not (found)))
)

(:action move_toward_3_6_3_7
 :parameters ()
 :precondition (and (at_3_6) (found))
 :effect (and (not (at_3_6)) (near_3_7))
 :poss-effect (and (not (found)))
)

(:action move_toward_3_7_2_7
 :parameters ()
 :precondition (and (at_3_7) (found))
 :effect (and (not (at_3_7)) (near_2_7))
 :poss-effect (and (not (found)))
)

(:action move_toward_3_7_4_7
 :parameters ()
 :precondition (and (at_3_7) (found))
 :effect (and (not (at_3_7)) (near_4_7))
 :poss-effect (and (not (found)))
)

(:action move_toward_3_7_3_6
 :parameters ()
 :precondition (and (at_3_7) (found))
 :effect (and (not (at_3_7)) (near_3_6))
 :poss-effect (and (not (found)))
)

(:action move_toward_4_0_3_0
 :parameters ()
 :precondition (and (at_4_0) (found))
 :effect (and (not (at_4_0)) (near_3_0))
 :poss-effect (and (not (found)))
)

(:action move_toward_4_0_5_0
 :parameters ()
 :precondition (and (at_4_0) (found))
 :effect (and (not (at_4_0)) (near_5_0))
 :poss-effect (and (not (found)))
)

(:action move_toward_4_0_4_1
 :parameters ()
 :precondition (and (at_4_0) (found))
 :effect (and (not (at_4_0)) (near_4_1))
 :poss-effect (and (not (found)))
)

(:action move_toward_4_1_3_1
 :parameters ()
 :precondition (and (at_4_1) (found))
 :effect (and (not (at_4_1)) (near_3_1))
 :poss-effect (and (not (found)))
)

(:action move_toward_4_1_5_1
 :parameters ()
 :precondition (and (at_4_1) (found))
 :effect (and (not (at_4_1)) (near_5_1))
 :poss-effect (and (not (found)))
)

(:action move_toward_4_1_4_0
 :parameters ()
 :precondition (and (at_4_1) (found))
 :effect (and (not (at_4_1)) (near_4_0))
 :poss-effect (and (not (found)))
)

(:action move_toward_4_1_4_2
 :parameters ()
 :precondition (and (at_4_1) (found))
 :effect (and (not (at_4_1)) (near_4_2))
 :poss-effect (and (not (found)))
)

(:action move_toward_4_2_3_2
 :parameters ()
 :precondition (and (at_4_2) (found))
 :effect (and (not (at_4_2)) (near_3_2))
 :poss-effect (and (not (found)))
)

(:action move_toward_4_2_5_2
 :parameters ()
 :precondition (and (at_4_2) (found))
 :effect (and (not (at_4_2)) (near_5_2))
 :poss-effect (and (not (found)))
)

(:action move_toward_4_2_4_1
 :parameters ()
 :precondition (and (at_4_2) (found))
 :effect (and (not (at_4_2)) (near_4_1))
 :poss-effect (and (not (found)))
)

(:action move_toward_4_2_4_3
 :parameters ()
 :precondition (and (at_4_2) (found))
 :effect (and (not (at_4_2)) (near_4_3))
 :poss-effect (and (not (found)))
)

(:action move_toward_4_3_3_3
 :parameters ()
 :precondition (and (at_4_3) (found))
 :effect (and (not (at_4_3)) (near_3_3))
 :poss-effect (and (not (found)))
)

(:action move_toward_4_3_5_3
 :parameters ()
 :precondition (and (at_4_3) (found))
 :effect (and (not (at_4_3)) (near_5_3))
 :poss-effect (and (not (found)))
)

(:action move_toward_4_3_4_2
 :parameters ()
 :precondition (and (at_4_3) (found))
 :effect (and (not (at_4_3)) (near_4_2))
 :poss-effect (and (not (found)))
)

(:action move_toward_4_3_4_4
 :parameters ()
 :precondition (and (at_4_3) (found))
 :effect (and (not (at_4_3)) (near_4_4))
 :poss-effect (and (not (found)))
)

(:action move_toward_4_4_3_4
 :parameters ()
 :precondition (and (at_4_4) (found))
 :effect (and (not (at_4_4)) (near_3_4))
 :poss-effect (and (not (found)))
)

(:action move_toward_4_4_5_4
 :parameters ()
 :precondition (and (at_4_4) (found))
 :effect (and (not (at_4_4)) (near_5_4))
 :poss-effect (and (not (found)))
)

(:action move_toward_4_4_4_3
 :parameters ()
 :precondition (and (at_4_4) (found))
 :effect (and (not (at_4_4)) (near_4_3))
 :poss-effect (and (not (found)))
)

(:action move_toward_4_4_4_5
 :parameters ()
 :precondition (and (at_4_4) (found))
 :effect (and (not (at_4_4)) (near_4_5))
 :poss-effect (and (not (found)))
)

(:action move_toward_4_5_3_5
 :parameters ()
 :precondition (and (at_4_5) (found))
 :effect (and (not (at_4_5)) (near_3_5))
 :poss-effect (and (not (found)))
)

(:action move_toward_4_5_5_5
 :parameters ()
 :precondition (and (at_4_5) (found))
 :effect (and (not (at_4_5)) (near_5_5))
 :poss-effect (and (not (found)))
)

(:action move_toward_4_5_4_4
 :parameters ()
 :precondition (and (at_4_5) (found))
 :effect (and (not (at_4_5)) (near_4_4))
 :poss-effect (and (not (found)))
)

(:action move_toward_4_5_4_6
 :parameters ()
 :precondition (and (at_4_5) (found))
 :effect (and (not (at_4_5)) (near_4_6))
 :poss-effect (and (not (found)))
)

(:action move_toward_4_6_3_6
 :parameters ()
 :precondition (and (at_4_6) (found))
 :effect (and (not (at_4_6)) (near_3_6))
 :poss-effect (and (not (found)))
)

(:action move_toward_4_6_5_6
 :parameters ()
 :precondition (and (at_4_6) (found))
 :effect (and (not (at_4_6)) (near_5_6))
 :poss-effect (and (not (found)))
)

(:action move_toward_4_6_4_5
 :parameters ()
 :precondition (and (at_4_6) (found))
 :effect (and (not (at_4_6)) (near_4_5))
 :poss-effect (and (not (found)))
)

(:action move_toward_4_6_4_7
 :parameters ()
 :precondition (and (at_4_6) (found))
 :effect (and (not (at_4_6)) (near_4_7))
 :poss-effect (and (not (found)))
)

(:action move_toward_4_7_3_7
 :parameters ()
 :precondition (and (at_4_7) (found))
 :effect (and (not (at_4_7)) (near_3_7))
 :poss-effect (and (not (found)))
)

(:action move_toward_4_7_5_7
 :parameters ()
 :precondition (and (at_4_7) (found))
 :effect (and (not (at_4_7)) (near_5_7))
 :poss-effect (and (not (found)))
)

(:action move_toward_4_7_4_6
 :parameters ()
 :precondition (and (at_4_7) (found))
 :effect (and (not (at_4_7)) (near_4_6))
 :poss-effect (and (not (found)))
)

(:action move_toward_5_0_4_0
 :parameters ()
 :precondition (and (at_5_0) (found))
 :effect (and (not (at_5_0)) (near_4_0))
 :poss-effect (and (not (found)))
)

(:action move_toward_5_0_6_0
 :parameters ()
 :precondition (and (at_5_0) (found))
 :effect (and (not (at_5_0)) (near_6_0))
 :poss-effect (and (not (found)))
)

(:action move_toward_5_0_5_1
 :parameters ()
 :precondition (and (at_5_0) (found))
 :effect (and (not (at_5_0)) (near_5_1))
 :poss-effect (and (not (found)))
)

(:action move_toward_5_1_4_1
 :parameters ()
 :precondition (and (at_5_1) (found))
 :effect (and (not (at_5_1)) (near_4_1))
 :poss-effect (and (not (found)))
)

(:action move_toward_5_1_6_1
 :parameters ()
 :precondition (and (at_5_1) (found))
 :effect (and (not (at_5_1)) (near_6_1))
 :poss-effect (and (not (found)))
)

(:action move_toward_5_1_5_0
 :parameters ()
 :precondition (and (at_5_1) (found))
 :effect (and (not (at_5_1)) (near_5_0))
 :poss-effect (and (not (found)))
)

(:action move_toward_5_1_5_2
 :parameters ()
 :precondition (and (at_5_1) (found))
 :effect (and (not (at_5_1)) (near_5_2))
 :poss-effect (and (not (found)))
)

(:action move_toward_5_2_4_2
 :parameters ()
 :precondition (and (at_5_2) (found))
 :effect (and (not (at_5_2)) (near_4_2))
 :poss-effect (and (not (found)))
)

(:action move_toward_5_2_6_2
 :parameters ()
 :precondition (and (at_5_2) (found))
 :effect (and (not (at_5_2)) (near_6_2))
 :poss-effect (and (not (found)))
)

(:action move_toward_5_2_5_1
 :parameters ()
 :precondition (and (at_5_2) (found))
 :effect (and (not (at_5_2)) (near_5_1))
 :poss-effect (and (not (found)))
)

(:action move_toward_5_2_5_3
 :parameters ()
 :precondition (and (at_5_2) (found))
 :effect (and (not (at_5_2)) (near_5_3))
 :poss-effect (and (not (found)))
)

(:action move_toward_5_3_4_3
 :parameters ()
 :precondition (and (at_5_3) (found))
 :effect (and (not (at_5_3)) (near_4_3))
 :poss-effect (and (not (found)))
)

(:action move_toward_5_3_6_3
 :parameters ()
 :precondition (and (at_5_3) (found))
 :effect (and (not (at_5_3)) (near_6_3))
 :poss-effect (and (not (found)))
)

(:action move_toward_5_3_5_2
 :parameters ()
 :precondition (and (at_5_3) (found))
 :effect (and (not (at_5_3)) (near_5_2))
 :poss-effect (and (not (found)))
)

(:action move_toward_5_3_5_4
 :parameters ()
 :precondition (and (at_5_3) (found))
 :effect (and (not (at_5_3)) (near_5_4))
 :poss-effect (and (not (found)))
)

(:action move_toward_5_4_4_4
 :parameters ()
 :precondition (and (at_5_4) (found))
 :effect (and (not (at_5_4)) (near_4_4))
 :poss-effect (and (not (found)))
)

(:action move_toward_5_4_6_4
 :parameters ()
 :precondition (and (at_5_4) (found))
 :effect (and (not (at_5_4)) (near_6_4))
 :poss-effect (and (not (found)))
)

(:action move_toward_5_4_5_3
 :parameters ()
 :precondition (and (at_5_4) (found))
 :effect (and (not (at_5_4)) (near_5_3))
 :poss-effect (and (not (found)))
)

(:action move_toward_5_4_5_5
 :parameters ()
 :precondition (and (at_5_4) (found))
 :effect (and (not (at_5_4)) (near_5_5))
 :poss-effect (and (not (found)))
)

(:action move_toward_5_5_4_5
 :parameters ()
 :precondition (and (at_5_5) (found))
 :effect (and (not (at_5_5)) (near_4_5))
 :poss-effect (and (not (found)))
)

(:action move_toward_5_5_6_5
 :parameters ()
 :precondition (and (at_5_5) (found))
 :effect (and (not (at_5_5)) (near_6_5))
 :poss-effect (and (not (found)))
)

(:action move_toward_5_5_5_4
 :parameters ()
 :precondition (and (at_5_5) (found))
 :effect (and (not (at_5_5)) (near_5_4))
 :poss-effect (and (not (found)))
)

(:action move_toward_5_5_5_6
 :parameters ()
 :precondition (and (at_5_5) (found))
 :effect (and (not (at_5_5)) (near_5_6))
 :poss-effect (and (not (found)))
)

(:action move_toward_5_6_4_6
 :parameters ()
 :precondition (and (at_5_6) (found))
 :effect (and (not (at_5_6)) (near_4_6))
 :poss-effect (and (not (found)))
)

(:action move_toward_5_6_6_6
 :parameters ()
 :precondition (and (at_5_6) (found))
 :effect (and (not (at_5_6)) (near_6_6))
 :poss-effect (and (not (found)))
)

(:action move_toward_5_6_5_5
 :parameters ()
 :precondition (and (at_5_6) (found))
 :effect (and (not (at_5_6)) (near_5_5))
 :poss-effect (and (not (found)))
)

(:action move_toward_5_6_5_7
 :parameters ()
 :precondition (and (at_5_6) (found))
 :effect (and (not (at_5_6)) (near_5_7))
 :poss-effect (and (not (found)))
)

(:action move_toward_5_7_4_7
 :parameters ()
 :precondition (and (at_5_7) (found))
 :effect (and (not (at_5_7)) (near_4_7))
 :poss-effect (and (not (found)))
)

(:action move_toward_5_7_6_7
 :parameters ()
 :precondition (and (at_5_7) (found))
 :effect (and (not (at_5_7)) (near_6_7))
 :poss-effect (and (not (found)))
)

(:action move_toward_5_7_5_6
 :parameters ()
 :precondition (and (at_5_7) (found))
 :effect (and (not (at_5_7)) (near_5_6))
 :poss-effect (and (not (found)))
)

(:action move_toward_6_0_5_0
 :parameters ()
 :precondition (and (at_6_0) (found))
 :effect (and (not (at_6_0)) (near_5_0))
 :poss-effect (and (not (found)))
)

(:action move_toward_6_0_7_0
 :parameters ()
 :precondition (and (at_6_0) (found))
 :effect (and (not (at_6_0)) (near_7_0))
 :poss-effect (and (not (found)))
)

(:action move_toward_6_0_6_1
 :parameters ()
 :precondition (and (at_6_0) (found))
 :effect (and (not (at_6_0)) (near_6_1))
 :poss-effect (and (not (found)))
)

(:action move_toward_6_1_5_1
 :parameters ()
 :precondition (and (at_6_1) (found))
 :effect (and (not (at_6_1)) (near_5_1))
 :poss-effect (and (not (found)))
)

(:action move_toward_6_1_7_1
 :parameters ()
 :precondition (and (at_6_1) (found))
 :effect (and (not (at_6_1)) (near_7_1))
 :poss-effect (and (not (found)))
)

(:action move_toward_6_1_6_0
 :parameters ()
 :precondition (and (at_6_1) (found))
 :effect (and (not (at_6_1)) (near_6_0))
 :poss-effect (and (not (found)))
)

(:action move_toward_6_1_6_2
 :parameters ()
 :precondition (and (at_6_1) (found))
 :effect (and (not (at_6_1)) (near_6_2))
 :poss-effect (and (not (found)))
)

(:action move_toward_6_2_5_2
 :parameters ()
 :precondition (and (at_6_2) (found))
 :effect (and (not (at_6_2)) (near_5_2))
 :poss-effect (and (not (found)))
)

(:action move_toward_6_2_7_2
 :parameters ()
 :precondition (and (at_6_2) (found))
 :effect (and (not (at_6_2)) (near_7_2))
 :poss-effect (and (not (found)))
)

(:action move_toward_6_2_6_1
 :parameters ()
 :precondition (and (at_6_2) (found))
 :effect (and (not (at_6_2)) (near_6_1))
 :poss-effect (and (not (found)))
)

(:action move_toward_6_2_6_3
 :parameters ()
 :precondition (and (at_6_2) (found))
 :effect (and (not (at_6_2)) (near_6_3))
 :poss-effect (and (not (found)))
)

(:action move_toward_6_3_5_3
 :parameters ()
 :precondition (and (at_6_3) (found))
 :effect (and (not (at_6_3)) (near_5_3))
 :poss-effect (and (not (found)))
)

(:action move_toward_6_3_7_3
 :parameters ()
 :precondition (and (at_6_3) (found))
 :effect (and (not (at_6_3)) (near_7_3))
 :poss-effect (and (not (found)))
)

(:action move_toward_6_3_6_2
 :parameters ()
 :precondition (and (at_6_3) (found))
 :effect (and (not (at_6_3)) (near_6_2))
 :poss-effect (and (not (found)))
)

(:action move_toward_6_3_6_4
 :parameters ()
 :precondition (and (at_6_3) (found))
 :effect (and (not (at_6_3)) (near_6_4))
 :poss-effect (and (not (found)))
)

(:action move_toward_6_4_5_4
 :parameters ()
 :precondition (and (at_6_4) (found))
 :effect (and (not (at_6_4)) (near_5_4))
 :poss-effect (and (not (found)))
)

(:action move_toward_6_4_7_4
 :parameters ()
 :precondition (and (at_6_4) (found))
 :effect (and (not (at_6_4)) (near_7_4))
 :poss-effect (and (not (found)))
)

(:action move_toward_6_4_6_3
 :parameters ()
 :precondition (and (at_6_4) (found))
 :effect (and (not (at_6_4)) (near_6_3))
 :poss-effect (and (not (found)))
)

(:action move_toward_6_4_6_5
 :parameters ()
 :precondition (and (at_6_4) (found))
 :effect (and (not (at_6_4)) (near_6_5))
 :poss-effect (and (not (found)))
)

(:action move_toward_6_5_5_5
 :parameters ()
 :precondition (and (at_6_5) (found))
 :effect (and (not (at_6_5)) (near_5_5))
 :poss-effect (and (not (found)))
)

(:action move_toward_6_5_7_5
 :parameters ()
 :precondition (and (at_6_5) (found))
 :effect (and (not (at_6_5)) (near_7_5))
 :poss-effect (and (not (found)))
)

(:action move_toward_6_5_6_4
 :parameters ()
 :precondition (and (at_6_5) (found))
 :effect (and (not (at_6_5)) (near_6_4))
 :poss-effect (and (not (found)))
)

(:action move_toward_6_5_6_6
 :parameters ()
 :precondition (and (at_6_5) (found))
 :effect (and (not (at_6_5)) (near_6_6))
 :poss-effect (and (not (found)))
)

(:action move_toward_6_6_5_6
 :parameters ()
 :precondition (and (at_6_6) (found))
 :effect (and (not (at_6_6)) (near_5_6))
 :poss-effect (and (not (found)))
)

(:action move_toward_6_6_7_6
 :parameters ()
 :precondition (and (at_6_6) (found))
 :effect (and (not (at_6_6)) (near_7_6))
 :poss-effect (and (not (found)))
)

(:action move_toward_6_6_6_5
 :parameters ()
 :precondition (and (at_6_6) (found))
 :effect (and (not (at_6_6)) (near_6_5))
 :poss-effect (and (not (found)))
)

(:action move_toward_6_6_6_7
 :parameters ()
 :precondition (and (at_6_6) (found))
 :effect (and (not (at_6_6)) (near_6_7))
 :poss-effect (and (not (found)))
)

(:action move_toward_6_7_5_7
 :parameters ()
 :precondition (and (at_6_7) (found))
 :effect (and (not (at_6_7)) (near_5_7))
 :poss-effect (and (not (found)))
)

(:action move_toward_6_7_7_7
 :parameters ()
 :precondition (and (at_6_7) (found))
 :effect (and (not (at_6_7)) (near_7_7))
 :poss-effect (and (not (found)))
)

(:action move_toward_6_7_6_6
 :parameters ()
 :precondition (and (at_6_7) (found))
 :effect (and (not (at_6_7)) (near_6_6))
 :poss-effect (and (not (found)))
)

(:action move_toward_7_0_6_0
 :parameters ()
 :precondition (and (at_7_0) (found))
 :effect (and (not (at_7_0)) (near_6_0))
 :poss-effect (and (not (found)))
)

(:action move_toward_7_0_7_1
 :parameters ()
 :precondition (and (at_7_0) (found))
 :effect (and (not (at_7_0)) (near_7_1))
 :poss-effect (and (not (found)))
)

(:action move_toward_7_1_6_1
 :parameters ()
 :precondition (and (at_7_1) (found))
 :effect (and (not (at_7_1)) (near_6_1))
 :poss-effect (and (not (found)))
)

(:action move_toward_7_1_7_0
 :parameters ()
 :precondition (and (at_7_1) (found))
 :effect (and (not (at_7_1)) (near_7_0))
 :poss-effect (and (not (found)))
)

(:action move_toward_7_1_7_2
 :parameters ()
 :precondition (and (at_7_1) (found))
 :effect (and (not (at_7_1)) (near_7_2))
 :poss-effect (and (not (found)))
)

(:action move_toward_7_2_6_2
 :parameters ()
 :precondition (and (at_7_2) (found))
 :effect (and (not (at_7_2)) (near_6_2))
 :poss-effect (and (not (found)))
)

(:action move_toward_7_2_7_1
 :parameters ()
 :precondition (and (at_7_2) (found))
 :effect (and (not (at_7_2)) (near_7_1))
 :poss-effect (and (not (found)))
)

(:action move_toward_7_2_7_3
 :parameters ()
 :precondition (and (at_7_2) (found))
 :effect (and (not (at_7_2)) (near_7_3))
 :poss-effect (and (not (found)))
)

(:action move_toward_7_3_6_3
 :parameters ()
 :precondition (and (at_7_3) (found))
 :effect (and (not (at_7_3)) (near_6_3))
 :poss-effect (and (not (found)))
)

(:action move_toward_7_3_7_2
 :parameters ()
 :precondition (and (at_7_3) (found))
 :effect (and (not (at_7_3)) (near_7_2))
 :poss-effect (and (not (found)))
)

(:action move_toward_7_3_7_4
 :parameters ()
 :precondition (and (at_7_3) (found))
 :effect (and (not (at_7_3)) (near_7_4))
 :poss-effect (and (not (found)))
)

(:action move_toward_7_4_6_4
 :parameters ()
 :precondition (and (at_7_4) (found))
 :effect (and (not (at_7_4)) (near_6_4))
 :poss-effect (and (not (found)))
)

(:action move_toward_7_4_7_3
 :parameters ()
 :precondition (and (at_7_4) (found))
 :effect (and (not (at_7_4)) (near_7_3))
 :poss-effect (and (not (found)))
)

(:action move_toward_7_4_7_5
 :parameters ()
 :precondition (and (at_7_4) (found))
 :effect (and (not (at_7_4)) (near_7_5))
 :poss-effect (and (not (found)))
)

(:action move_toward_7_5_6_5
 :parameters ()
 :precondition (and (at_7_5) (found))
 :effect (and (not (at_7_5)) (near_6_5))
 :poss-effect (and (not (found)))
)

(:action move_toward_7_5_7_4
 :parameters ()
 :precondition (and (at_7_5) (found))
 :effect (and (not (at_7_5)) (near_7_4))
 :poss-effect (and (not (found)))
)

(:action move_toward_7_5_7_6
 :parameters ()
 :precondition (and (at_7_5) (found))
 :effect (and (not (at_7_5)) (near_7_6))
 :poss-effect (and (not (found)))
)

(:action move_toward_7_6_6_6
 :parameters ()
 :precondition (and (at_7_6) (found))
 :effect (and (not (at_7_6)) (near_6_6))
 :poss-effect (and (not (found)))
)

(:action move_toward_7_6_7_5
 :parameters ()
 :precondition (and (at_7_6) (found))
 :effect (and (not (at_7_6)) (near_7_5))
 :poss-effect (and (not (found)))
)

(:action move_toward_7_6_7_7
 :parameters ()
 :precondition (and (at_7_6) (found))
 :effect (and (not (at_7_6)) (near_7_7))
 :poss-effect (and (not (found)))
)

(:action move_toward_7_7_6_7
 :parameters ()
 :precondition (and (at_7_7) (found))
 :effect (and (not (at_7_7)) (near_6_7))
 :poss-effect (and (not (found)))
)

(:action move_toward_7_7_7_6
 :parameters ()
 :precondition (and (at_7_7) (found))
 :effect (and (not (at_7_7)) (near_7_6))
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

(:action arrive_at_0_1_0_2
 :parameters ()
 :precondition (and (near_0_1) (near_0_2))
 :poss-precondition (and (found))
 :effect (and (not (near_0_1)) (at_0_2))
)

(:action arrive_at_0_2_1_2
 :parameters ()
 :precondition (and (near_0_2) (near_1_2))
 :poss-precondition (and (found))
 :effect (and (not (near_0_2)) (at_1_2))
)

(:action arrive_at_0_2_0_1
 :parameters ()
 :precondition (and (near_0_2) (near_0_1))
 :poss-precondition (and (found))
 :effect (and (not (near_0_2)) (at_0_1))
)

(:action arrive_at_0_2_0_3
 :parameters ()
 :precondition (and (near_0_2) (near_0_3))
 :poss-precondition (and (found))
 :effect (and (not (near_0_2)) (at_0_3))
)

(:action arrive_at_0_3_1_3
 :parameters ()
 :precondition (and (near_0_3) (near_1_3))
 :poss-precondition (and (found))
 :effect (and (not (near_0_3)) (at_1_3))
)

(:action arrive_at_0_3_0_2
 :parameters ()
 :precondition (and (near_0_3) (near_0_2))
 :poss-precondition (and (found))
 :effect (and (not (near_0_3)) (at_0_2))
)

(:action arrive_at_0_3_0_4
 :parameters ()
 :precondition (and (near_0_3) (near_0_4))
 :poss-precondition (and (found))
 :effect (and (not (near_0_3)) (at_0_4))
)

(:action arrive_at_0_4_1_4
 :parameters ()
 :precondition (and (near_0_4) (near_1_4))
 :poss-precondition (and (found))
 :effect (and (not (near_0_4)) (at_1_4))
)

(:action arrive_at_0_4_0_3
 :parameters ()
 :precondition (and (near_0_4) (near_0_3))
 :poss-precondition (and (found))
 :effect (and (not (near_0_4)) (at_0_3))
)

(:action arrive_at_0_4_0_5
 :parameters ()
 :precondition (and (near_0_4) (near_0_5))
 :poss-precondition (and (found))
 :effect (and (not (near_0_4)) (at_0_5))
)

(:action arrive_at_0_5_1_5
 :parameters ()
 :precondition (and (near_0_5) (near_1_5))
 :poss-precondition (and (found))
 :effect (and (not (near_0_5)) (at_1_5))
)

(:action arrive_at_0_5_0_4
 :parameters ()
 :precondition (and (near_0_5) (near_0_4))
 :poss-precondition (and (found))
 :effect (and (not (near_0_5)) (at_0_4))
)

(:action arrive_at_0_5_0_6
 :parameters ()
 :precondition (and (near_0_5) (near_0_6))
 :poss-precondition (and (found))
 :effect (and (not (near_0_5)) (at_0_6))
)

(:action arrive_at_0_6_1_6
 :parameters ()
 :precondition (and (near_0_6) (near_1_6))
 :poss-precondition (and (found))
 :effect (and (not (near_0_6)) (at_1_6))
)

(:action arrive_at_0_6_0_5
 :parameters ()
 :precondition (and (near_0_6) (near_0_5))
 :poss-precondition (and (found))
 :effect (and (not (near_0_6)) (at_0_5))
)

(:action arrive_at_0_6_0_7
 :parameters ()
 :precondition (and (near_0_6) (near_0_7))
 :poss-precondition (and (found))
 :effect (and (not (near_0_6)) (at_0_7))
)

(:action arrive_at_0_7_1_7
 :parameters ()
 :precondition (and (near_0_7) (near_1_7))
 :poss-precondition (and (found))
 :effect (and (not (near_0_7)) (at_1_7))
)

(:action arrive_at_0_7_0_6
 :parameters ()
 :precondition (and (near_0_7) (near_0_6))
 :poss-precondition (and (found))
 :effect (and (not (near_0_7)) (at_0_6))
)

(:action arrive_at_1_0_0_0
 :parameters ()
 :precondition (and (near_1_0) (near_0_0))
 :poss-precondition (and (found))
 :effect (and (not (near_1_0)) (at_0_0))
)

(:action arrive_at_1_0_2_0
 :parameters ()
 :precondition (and (near_1_0) (near_2_0))
 :poss-precondition (and (found))
 :effect (and (not (near_1_0)) (at_2_0))
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

(:action arrive_at_1_1_2_1
 :parameters ()
 :precondition (and (near_1_1) (near_2_1))
 :poss-precondition (and (found))
 :effect (and (not (near_1_1)) (at_2_1))
)

(:action arrive_at_1_1_1_0
 :parameters ()
 :precondition (and (near_1_1) (near_1_0))
 :poss-precondition (and (found))
 :effect (and (not (near_1_1)) (at_1_0))
)

(:action arrive_at_1_1_1_2
 :parameters ()
 :precondition (and (near_1_1) (near_1_2))
 :poss-precondition (and (found))
 :effect (and (not (near_1_1)) (at_1_2))
)

(:action arrive_at_1_2_0_2
 :parameters ()
 :precondition (and (near_1_2) (near_0_2))
 :poss-precondition (and (found))
 :effect (and (not (near_1_2)) (at_0_2))
)

(:action arrive_at_1_2_2_2
 :parameters ()
 :precondition (and (near_1_2) (near_2_2))
 :poss-precondition (and (found))
 :effect (and (not (near_1_2)) (at_2_2))
)

(:action arrive_at_1_2_1_1
 :parameters ()
 :precondition (and (near_1_2) (near_1_1))
 :poss-precondition (and (found))
 :effect (and (not (near_1_2)) (at_1_1))
)

(:action arrive_at_1_2_1_3
 :parameters ()
 :precondition (and (near_1_2) (near_1_3))
 :poss-precondition (and (found))
 :effect (and (not (near_1_2)) (at_1_3))
)

(:action arrive_at_1_3_0_3
 :parameters ()
 :precondition (and (near_1_3) (near_0_3))
 :poss-precondition (and (found))
 :effect (and (not (near_1_3)) (at_0_3))
)

(:action arrive_at_1_3_2_3
 :parameters ()
 :precondition (and (near_1_3) (near_2_3))
 :poss-precondition (and (found))
 :effect (and (not (near_1_3)) (at_2_3))
)

(:action arrive_at_1_3_1_2
 :parameters ()
 :precondition (and (near_1_3) (near_1_2))
 :poss-precondition (and (found))
 :effect (and (not (near_1_3)) (at_1_2))
)

(:action arrive_at_1_3_1_4
 :parameters ()
 :precondition (and (near_1_3) (near_1_4))
 :poss-precondition (and (found))
 :effect (and (not (near_1_3)) (at_1_4))
)

(:action arrive_at_1_4_0_4
 :parameters ()
 :precondition (and (near_1_4) (near_0_4))
 :poss-precondition (and (found))
 :effect (and (not (near_1_4)) (at_0_4))
)

(:action arrive_at_1_4_2_4
 :parameters ()
 :precondition (and (near_1_4) (near_2_4))
 :poss-precondition (and (found))
 :effect (and (not (near_1_4)) (at_2_4))
)

(:action arrive_at_1_4_1_3
 :parameters ()
 :precondition (and (near_1_4) (near_1_3))
 :poss-precondition (and (found))
 :effect (and (not (near_1_4)) (at_1_3))
)

(:action arrive_at_1_4_1_5
 :parameters ()
 :precondition (and (near_1_4) (near_1_5))
 :poss-precondition (and (found))
 :effect (and (not (near_1_4)) (at_1_5))
)

(:action arrive_at_1_5_0_5
 :parameters ()
 :precondition (and (near_1_5) (near_0_5))
 :poss-precondition (and (found))
 :effect (and (not (near_1_5)) (at_0_5))
)

(:action arrive_at_1_5_2_5
 :parameters ()
 :precondition (and (near_1_5) (near_2_5))
 :poss-precondition (and (found))
 :effect (and (not (near_1_5)) (at_2_5))
)

(:action arrive_at_1_5_1_4
 :parameters ()
 :precondition (and (near_1_5) (near_1_4))
 :poss-precondition (and (found))
 :effect (and (not (near_1_5)) (at_1_4))
)

(:action arrive_at_1_5_1_6
 :parameters ()
 :precondition (and (near_1_5) (near_1_6))
 :poss-precondition (and (found))
 :effect (and (not (near_1_5)) (at_1_6))
)

(:action arrive_at_1_6_0_6
 :parameters ()
 :precondition (and (near_1_6) (near_0_6))
 :poss-precondition (and (found))
 :effect (and (not (near_1_6)) (at_0_6))
)

(:action arrive_at_1_6_2_6
 :parameters ()
 :precondition (and (near_1_6) (near_2_6))
 :poss-precondition (and (found))
 :effect (and (not (near_1_6)) (at_2_6))
)

(:action arrive_at_1_6_1_5
 :parameters ()
 :precondition (and (near_1_6) (near_1_5))
 :poss-precondition (and (found))
 :effect (and (not (near_1_6)) (at_1_5))
)

(:action arrive_at_1_6_1_7
 :parameters ()
 :precondition (and (near_1_6) (near_1_7))
 :poss-precondition (and (found))
 :effect (and (not (near_1_6)) (at_1_7))
)

(:action arrive_at_1_7_0_7
 :parameters ()
 :precondition (and (near_1_7) (near_0_7))
 :poss-precondition (and (found))
 :effect (and (not (near_1_7)) (at_0_7))
)

(:action arrive_at_1_7_2_7
 :parameters ()
 :precondition (and (near_1_7) (near_2_7))
 :poss-precondition (and (found))
 :effect (and (not (near_1_7)) (at_2_7))
)

(:action arrive_at_1_7_1_6
 :parameters ()
 :precondition (and (near_1_7) (near_1_6))
 :poss-precondition (and (found))
 :effect (and (not (near_1_7)) (at_1_6))
)

(:action arrive_at_2_0_1_0
 :parameters ()
 :precondition (and (near_2_0) (near_1_0))
 :poss-precondition (and (found))
 :effect (and (not (near_2_0)) (at_1_0))
)

(:action arrive_at_2_0_3_0
 :parameters ()
 :precondition (and (near_2_0) (near_3_0))
 :poss-precondition (and (found))
 :effect (and (not (near_2_0)) (at_3_0))
)

(:action arrive_at_2_0_2_1
 :parameters ()
 :precondition (and (near_2_0) (near_2_1))
 :poss-precondition (and (found))
 :effect (and (not (near_2_0)) (at_2_1))
)

(:action arrive_at_2_1_1_1
 :parameters ()
 :precondition (and (near_2_1) (near_1_1))
 :poss-precondition (and (found))
 :effect (and (not (near_2_1)) (at_1_1))
)

(:action arrive_at_2_1_3_1
 :parameters ()
 :precondition (and (near_2_1) (near_3_1))
 :poss-precondition (and (found))
 :effect (and (not (near_2_1)) (at_3_1))
)

(:action arrive_at_2_1_2_0
 :parameters ()
 :precondition (and (near_2_1) (near_2_0))
 :poss-precondition (and (found))
 :effect (and (not (near_2_1)) (at_2_0))
)

(:action arrive_at_2_1_2_2
 :parameters ()
 :precondition (and (near_2_1) (near_2_2))
 :poss-precondition (and (found))
 :effect (and (not (near_2_1)) (at_2_2))
)

(:action arrive_at_2_2_1_2
 :parameters ()
 :precondition (and (near_2_2) (near_1_2))
 :poss-precondition (and (found))
 :effect (and (not (near_2_2)) (at_1_2))
)

(:action arrive_at_2_2_3_2
 :parameters ()
 :precondition (and (near_2_2) (near_3_2))
 :poss-precondition (and (found))
 :effect (and (not (near_2_2)) (at_3_2))
)

(:action arrive_at_2_2_2_1
 :parameters ()
 :precondition (and (near_2_2) (near_2_1))
 :poss-precondition (and (found))
 :effect (and (not (near_2_2)) (at_2_1))
)

(:action arrive_at_2_2_2_3
 :parameters ()
 :precondition (and (near_2_2) (near_2_3))
 :poss-precondition (and (found))
 :effect (and (not (near_2_2)) (at_2_3))
)

(:action arrive_at_2_3_1_3
 :parameters ()
 :precondition (and (near_2_3) (near_1_3))
 :poss-precondition (and (found))
 :effect (and (not (near_2_3)) (at_1_3))
)

(:action arrive_at_2_3_3_3
 :parameters ()
 :precondition (and (near_2_3) (near_3_3))
 :poss-precondition (and (found))
 :effect (and (not (near_2_3)) (at_3_3))
)

(:action arrive_at_2_3_2_2
 :parameters ()
 :precondition (and (near_2_3) (near_2_2))
 :poss-precondition (and (found))
 :effect (and (not (near_2_3)) (at_2_2))
)

(:action arrive_at_2_3_2_4
 :parameters ()
 :precondition (and (near_2_3) (near_2_4))
 :poss-precondition (and (found))
 :effect (and (not (near_2_3)) (at_2_4))
)

(:action arrive_at_2_4_1_4
 :parameters ()
 :precondition (and (near_2_4) (near_1_4))
 :poss-precondition (and (found))
 :effect (and (not (near_2_4)) (at_1_4))
)

(:action arrive_at_2_4_3_4
 :parameters ()
 :precondition (and (near_2_4) (near_3_4))
 :poss-precondition (and (found))
 :effect (and (not (near_2_4)) (at_3_4))
)

(:action arrive_at_2_4_2_3
 :parameters ()
 :precondition (and (near_2_4) (near_2_3))
 :poss-precondition (and (found))
 :effect (and (not (near_2_4)) (at_2_3))
)

(:action arrive_at_2_4_2_5
 :parameters ()
 :precondition (and (near_2_4) (near_2_5))
 :poss-precondition (and (found))
 :effect (and (not (near_2_4)) (at_2_5))
)

(:action arrive_at_2_5_1_5
 :parameters ()
 :precondition (and (near_2_5) (near_1_5))
 :poss-precondition (and (found))
 :effect (and (not (near_2_5)) (at_1_5))
)

(:action arrive_at_2_5_3_5
 :parameters ()
 :precondition (and (near_2_5) (near_3_5))
 :poss-precondition (and (found))
 :effect (and (not (near_2_5)) (at_3_5))
)

(:action arrive_at_2_5_2_4
 :parameters ()
 :precondition (and (near_2_5) (near_2_4))
 :poss-precondition (and (found))
 :effect (and (not (near_2_5)) (at_2_4))
)

(:action arrive_at_2_5_2_6
 :parameters ()
 :precondition (and (near_2_5) (near_2_6))
 :poss-precondition (and (found))
 :effect (and (not (near_2_5)) (at_2_6))
)

(:action arrive_at_2_6_1_6
 :parameters ()
 :precondition (and (near_2_6) (near_1_6))
 :poss-precondition (and (found))
 :effect (and (not (near_2_6)) (at_1_6))
)

(:action arrive_at_2_6_3_6
 :parameters ()
 :precondition (and (near_2_6) (near_3_6))
 :poss-precondition (and (found))
 :effect (and (not (near_2_6)) (at_3_6))
)

(:action arrive_at_2_6_2_5
 :parameters ()
 :precondition (and (near_2_6) (near_2_5))
 :poss-precondition (and (found))
 :effect (and (not (near_2_6)) (at_2_5))
)

(:action arrive_at_2_6_2_7
 :parameters ()
 :precondition (and (near_2_6) (near_2_7))
 :poss-precondition (and (found))
 :effect (and (not (near_2_6)) (at_2_7))
)

(:action arrive_at_2_7_1_7
 :parameters ()
 :precondition (and (near_2_7) (near_1_7))
 :poss-precondition (and (found))
 :effect (and (not (near_2_7)) (at_1_7))
)

(:action arrive_at_2_7_3_7
 :parameters ()
 :precondition (and (near_2_7) (near_3_7))
 :poss-precondition (and (found))
 :effect (and (not (near_2_7)) (at_3_7))
)

(:action arrive_at_2_7_2_6
 :parameters ()
 :precondition (and (near_2_7) (near_2_6))
 :poss-precondition (and (found))
 :effect (and (not (near_2_7)) (at_2_6))
)

(:action arrive_at_3_0_2_0
 :parameters ()
 :precondition (and (near_3_0) (near_2_0))
 :poss-precondition (and (found))
 :effect (and (not (near_3_0)) (at_2_0))
)

(:action arrive_at_3_0_4_0
 :parameters ()
 :precondition (and (near_3_0) (near_4_0))
 :poss-precondition (and (found))
 :effect (and (not (near_3_0)) (at_4_0))
)

(:action arrive_at_3_0_3_1
 :parameters ()
 :precondition (and (near_3_0) (near_3_1))
 :poss-precondition (and (found))
 :effect (and (not (near_3_0)) (at_3_1))
)

(:action arrive_at_3_1_2_1
 :parameters ()
 :precondition (and (near_3_1) (near_2_1))
 :poss-precondition (and (found))
 :effect (and (not (near_3_1)) (at_2_1))
)

(:action arrive_at_3_1_4_1
 :parameters ()
 :precondition (and (near_3_1) (near_4_1))
 :poss-precondition (and (found))
 :effect (and (not (near_3_1)) (at_4_1))
)

(:action arrive_at_3_1_3_0
 :parameters ()
 :precondition (and (near_3_1) (near_3_0))
 :poss-precondition (and (found))
 :effect (and (not (near_3_1)) (at_3_0))
)

(:action arrive_at_3_1_3_2
 :parameters ()
 :precondition (and (near_3_1) (near_3_2))
 :poss-precondition (and (found))
 :effect (and (not (near_3_1)) (at_3_2))
)

(:action arrive_at_3_2_2_2
 :parameters ()
 :precondition (and (near_3_2) (near_2_2))
 :poss-precondition (and (found))
 :effect (and (not (near_3_2)) (at_2_2))
)

(:action arrive_at_3_2_4_2
 :parameters ()
 :precondition (and (near_3_2) (near_4_2))
 :poss-precondition (and (found))
 :effect (and (not (near_3_2)) (at_4_2))
)

(:action arrive_at_3_2_3_1
 :parameters ()
 :precondition (and (near_3_2) (near_3_1))
 :poss-precondition (and (found))
 :effect (and (not (near_3_2)) (at_3_1))
)

(:action arrive_at_3_2_3_3
 :parameters ()
 :precondition (and (near_3_2) (near_3_3))
 :poss-precondition (and (found))
 :effect (and (not (near_3_2)) (at_3_3))
)

(:action arrive_at_3_3_2_3
 :parameters ()
 :precondition (and (near_3_3) (near_2_3))
 :poss-precondition (and (found))
 :effect (and (not (near_3_3)) (at_2_3))
)

(:action arrive_at_3_3_4_3
 :parameters ()
 :precondition (and (near_3_3) (near_4_3))
 :poss-precondition (and (found))
 :effect (and (not (near_3_3)) (at_4_3))
)

(:action arrive_at_3_3_3_2
 :parameters ()
 :precondition (and (near_3_3) (near_3_2))
 :poss-precondition (and (found))
 :effect (and (not (near_3_3)) (at_3_2))
)

(:action arrive_at_3_3_3_4
 :parameters ()
 :precondition (and (near_3_3) (near_3_4))
 :poss-precondition (and (found))
 :effect (and (not (near_3_3)) (at_3_4))
)

(:action arrive_at_3_4_2_4
 :parameters ()
 :precondition (and (near_3_4) (near_2_4))
 :poss-precondition (and (found))
 :effect (and (not (near_3_4)) (at_2_4))
)

(:action arrive_at_3_4_4_4
 :parameters ()
 :precondition (and (near_3_4) (near_4_4))
 :poss-precondition (and (found))
 :effect (and (not (near_3_4)) (at_4_4))
)

(:action arrive_at_3_4_3_3
 :parameters ()
 :precondition (and (near_3_4) (near_3_3))
 :poss-precondition (and (found))
 :effect (and (not (near_3_4)) (at_3_3))
)

(:action arrive_at_3_4_3_5
 :parameters ()
 :precondition (and (near_3_4) (near_3_5))
 :poss-precondition (and (found))
 :effect (and (not (near_3_4)) (at_3_5))
)

(:action arrive_at_3_5_2_5
 :parameters ()
 :precondition (and (near_3_5) (near_2_5))
 :poss-precondition (and (found))
 :effect (and (not (near_3_5)) (at_2_5))
)

(:action arrive_at_3_5_4_5
 :parameters ()
 :precondition (and (near_3_5) (near_4_5))
 :poss-precondition (and (found))
 :effect (and (not (near_3_5)) (at_4_5))
)

(:action arrive_at_3_5_3_4
 :parameters ()
 :precondition (and (near_3_5) (near_3_4))
 :poss-precondition (and (found))
 :effect (and (not (near_3_5)) (at_3_4))
)

(:action arrive_at_3_5_3_6
 :parameters ()
 :precondition (and (near_3_5) (near_3_6))
 :poss-precondition (and (found))
 :effect (and (not (near_3_5)) (at_3_6))
)

(:action arrive_at_3_6_2_6
 :parameters ()
 :precondition (and (near_3_6) (near_2_6))
 :poss-precondition (and (found))
 :effect (and (not (near_3_6)) (at_2_6))
)

(:action arrive_at_3_6_4_6
 :parameters ()
 :precondition (and (near_3_6) (near_4_6))
 :poss-precondition (and (found))
 :effect (and (not (near_3_6)) (at_4_6))
)

(:action arrive_at_3_6_3_5
 :parameters ()
 :precondition (and (near_3_6) (near_3_5))
 :poss-precondition (and (found))
 :effect (and (not (near_3_6)) (at_3_5))
)

(:action arrive_at_3_6_3_7
 :parameters ()
 :precondition (and (near_3_6) (near_3_7))
 :poss-precondition (and (found))
 :effect (and (not (near_3_6)) (at_3_7))
)

(:action arrive_at_3_7_2_7
 :parameters ()
 :precondition (and (near_3_7) (near_2_7))
 :poss-precondition (and (found))
 :effect (and (not (near_3_7)) (at_2_7))
)

(:action arrive_at_3_7_4_7
 :parameters ()
 :precondition (and (near_3_7) (near_4_7))
 :poss-precondition (and (found))
 :effect (and (not (near_3_7)) (at_4_7))
)

(:action arrive_at_3_7_3_6
 :parameters ()
 :precondition (and (near_3_7) (near_3_6))
 :poss-precondition (and (found))
 :effect (and (not (near_3_7)) (at_3_6))
)

(:action arrive_at_4_0_3_0
 :parameters ()
 :precondition (and (near_4_0) (near_3_0))
 :poss-precondition (and (found))
 :effect (and (not (near_4_0)) (at_3_0))
)

(:action arrive_at_4_0_5_0
 :parameters ()
 :precondition (and (near_4_0) (near_5_0))
 :poss-precondition (and (found))
 :effect (and (not (near_4_0)) (at_5_0))
)

(:action arrive_at_4_0_4_1
 :parameters ()
 :precondition (and (near_4_0) (near_4_1))
 :poss-precondition (and (found))
 :effect (and (not (near_4_0)) (at_4_1))
)

(:action arrive_at_4_1_3_1
 :parameters ()
 :precondition (and (near_4_1) (near_3_1))
 :poss-precondition (and (found))
 :effect (and (not (near_4_1)) (at_3_1))
)

(:action arrive_at_4_1_5_1
 :parameters ()
 :precondition (and (near_4_1) (near_5_1))
 :poss-precondition (and (found))
 :effect (and (not (near_4_1)) (at_5_1))
)

(:action arrive_at_4_1_4_0
 :parameters ()
 :precondition (and (near_4_1) (near_4_0))
 :poss-precondition (and (found))
 :effect (and (not (near_4_1)) (at_4_0))
)

(:action arrive_at_4_1_4_2
 :parameters ()
 :precondition (and (near_4_1) (near_4_2))
 :poss-precondition (and (found))
 :effect (and (not (near_4_1)) (at_4_2))
)

(:action arrive_at_4_2_3_2
 :parameters ()
 :precondition (and (near_4_2) (near_3_2))
 :poss-precondition (and (found))
 :effect (and (not (near_4_2)) (at_3_2))
)

(:action arrive_at_4_2_5_2
 :parameters ()
 :precondition (and (near_4_2) (near_5_2))
 :poss-precondition (and (found))
 :effect (and (not (near_4_2)) (at_5_2))
)

(:action arrive_at_4_2_4_1
 :parameters ()
 :precondition (and (near_4_2) (near_4_1))
 :poss-precondition (and (found))
 :effect (and (not (near_4_2)) (at_4_1))
)

(:action arrive_at_4_2_4_3
 :parameters ()
 :precondition (and (near_4_2) (near_4_3))
 :poss-precondition (and (found))
 :effect (and (not (near_4_2)) (at_4_3))
)

(:action arrive_at_4_3_3_3
 :parameters ()
 :precondition (and (near_4_3) (near_3_3))
 :poss-precondition (and (found))
 :effect (and (not (near_4_3)) (at_3_3))
)

(:action arrive_at_4_3_5_3
 :parameters ()
 :precondition (and (near_4_3) (near_5_3))
 :poss-precondition (and (found))
 :effect (and (not (near_4_3)) (at_5_3))
)

(:action arrive_at_4_3_4_2
 :parameters ()
 :precondition (and (near_4_3) (near_4_2))
 :poss-precondition (and (found))
 :effect (and (not (near_4_3)) (at_4_2))
)

(:action arrive_at_4_3_4_4
 :parameters ()
 :precondition (and (near_4_3) (near_4_4))
 :poss-precondition (and (found))
 :effect (and (not (near_4_3)) (at_4_4))
)

(:action arrive_at_4_4_3_4
 :parameters ()
 :precondition (and (near_4_4) (near_3_4))
 :poss-precondition (and (found))
 :effect (and (not (near_4_4)) (at_3_4))
)

(:action arrive_at_4_4_5_4
 :parameters ()
 :precondition (and (near_4_4) (near_5_4))
 :poss-precondition (and (found))
 :effect (and (not (near_4_4)) (at_5_4))
)

(:action arrive_at_4_4_4_3
 :parameters ()
 :precondition (and (near_4_4) (near_4_3))
 :poss-precondition (and (found))
 :effect (and (not (near_4_4)) (at_4_3))
)

(:action arrive_at_4_4_4_5
 :parameters ()
 :precondition (and (near_4_4) (near_4_5))
 :poss-precondition (and (found))
 :effect (and (not (near_4_4)) (at_4_5))
)

(:action arrive_at_4_5_3_5
 :parameters ()
 :precondition (and (near_4_5) (near_3_5))
 :poss-precondition (and (found))
 :effect (and (not (near_4_5)) (at_3_5))
)

(:action arrive_at_4_5_5_5
 :parameters ()
 :precondition (and (near_4_5) (near_5_5))
 :poss-precondition (and (found))
 :effect (and (not (near_4_5)) (at_5_5))
)

(:action arrive_at_4_5_4_4
 :parameters ()
 :precondition (and (near_4_5) (near_4_4))
 :poss-precondition (and (found))
 :effect (and (not (near_4_5)) (at_4_4))
)

(:action arrive_at_4_5_4_6
 :parameters ()
 :precondition (and (near_4_5) (near_4_6))
 :poss-precondition (and (found))
 :effect (and (not (near_4_5)) (at_4_6))
)

(:action arrive_at_4_6_3_6
 :parameters ()
 :precondition (and (near_4_6) (near_3_6))
 :poss-precondition (and (found))
 :effect (and (not (near_4_6)) (at_3_6))
)

(:action arrive_at_4_6_5_6
 :parameters ()
 :precondition (and (near_4_6) (near_5_6))
 :poss-precondition (and (found))
 :effect (and (not (near_4_6)) (at_5_6))
)

(:action arrive_at_4_6_4_5
 :parameters ()
 :precondition (and (near_4_6) (near_4_5))
 :poss-precondition (and (found))
 :effect (and (not (near_4_6)) (at_4_5))
)

(:action arrive_at_4_6_4_7
 :parameters ()
 :precondition (and (near_4_6) (near_4_7))
 :poss-precondition (and (found))
 :effect (and (not (near_4_6)) (at_4_7))
)

(:action arrive_at_4_7_3_7
 :parameters ()
 :precondition (and (near_4_7) (near_3_7))
 :poss-precondition (and (found))
 :effect (and (not (near_4_7)) (at_3_7))
)

(:action arrive_at_4_7_5_7
 :parameters ()
 :precondition (and (near_4_7) (near_5_7))
 :poss-precondition (and (found))
 :effect (and (not (near_4_7)) (at_5_7))
)

(:action arrive_at_4_7_4_6
 :parameters ()
 :precondition (and (near_4_7) (near_4_6))
 :poss-precondition (and (found))
 :effect (and (not (near_4_7)) (at_4_6))
)

(:action arrive_at_5_0_4_0
 :parameters ()
 :precondition (and (near_5_0) (near_4_0))
 :poss-precondition (and (found))
 :effect (and (not (near_5_0)) (at_4_0))
)

(:action arrive_at_5_0_6_0
 :parameters ()
 :precondition (and (near_5_0) (near_6_0))
 :poss-precondition (and (found))
 :effect (and (not (near_5_0)) (at_6_0))
)

(:action arrive_at_5_0_5_1
 :parameters ()
 :precondition (and (near_5_0) (near_5_1))
 :poss-precondition (and (found))
 :effect (and (not (near_5_0)) (at_5_1))
)

(:action arrive_at_5_1_4_1
 :parameters ()
 :precondition (and (near_5_1) (near_4_1))
 :poss-precondition (and (found))
 :effect (and (not (near_5_1)) (at_4_1))
)

(:action arrive_at_5_1_6_1
 :parameters ()
 :precondition (and (near_5_1) (near_6_1))
 :poss-precondition (and (found))
 :effect (and (not (near_5_1)) (at_6_1))
)

(:action arrive_at_5_1_5_0
 :parameters ()
 :precondition (and (near_5_1) (near_5_0))
 :poss-precondition (and (found))
 :effect (and (not (near_5_1)) (at_5_0))
)

(:action arrive_at_5_1_5_2
 :parameters ()
 :precondition (and (near_5_1) (near_5_2))
 :poss-precondition (and (found))
 :effect (and (not (near_5_1)) (at_5_2))
)

(:action arrive_at_5_2_4_2
 :parameters ()
 :precondition (and (near_5_2) (near_4_2))
 :poss-precondition (and (found))
 :effect (and (not (near_5_2)) (at_4_2))
)

(:action arrive_at_5_2_6_2
 :parameters ()
 :precondition (and (near_5_2) (near_6_2))
 :poss-precondition (and (found))
 :effect (and (not (near_5_2)) (at_6_2))
)

(:action arrive_at_5_2_5_1
 :parameters ()
 :precondition (and (near_5_2) (near_5_1))
 :poss-precondition (and (found))
 :effect (and (not (near_5_2)) (at_5_1))
)

(:action arrive_at_5_2_5_3
 :parameters ()
 :precondition (and (near_5_2) (near_5_3))
 :poss-precondition (and (found))
 :effect (and (not (near_5_2)) (at_5_3))
)

(:action arrive_at_5_3_4_3
 :parameters ()
 :precondition (and (near_5_3) (near_4_3))
 :poss-precondition (and (found))
 :effect (and (not (near_5_3)) (at_4_3))
)

(:action arrive_at_5_3_6_3
 :parameters ()
 :precondition (and (near_5_3) (near_6_3))
 :poss-precondition (and (found))
 :effect (and (not (near_5_3)) (at_6_3))
)

(:action arrive_at_5_3_5_2
 :parameters ()
 :precondition (and (near_5_3) (near_5_2))
 :poss-precondition (and (found))
 :effect (and (not (near_5_3)) (at_5_2))
)

(:action arrive_at_5_3_5_4
 :parameters ()
 :precondition (and (near_5_3) (near_5_4))
 :poss-precondition (and (found))
 :effect (and (not (near_5_3)) (at_5_4))
)

(:action arrive_at_5_4_4_4
 :parameters ()
 :precondition (and (near_5_4) (near_4_4))
 :poss-precondition (and (found))
 :effect (and (not (near_5_4)) (at_4_4))
)

(:action arrive_at_5_4_6_4
 :parameters ()
 :precondition (and (near_5_4) (near_6_4))
 :poss-precondition (and (found))
 :effect (and (not (near_5_4)) (at_6_4))
)

(:action arrive_at_5_4_5_3
 :parameters ()
 :precondition (and (near_5_4) (near_5_3))
 :poss-precondition (and (found))
 :effect (and (not (near_5_4)) (at_5_3))
)

(:action arrive_at_5_4_5_5
 :parameters ()
 :precondition (and (near_5_4) (near_5_5))
 :poss-precondition (and (found))
 :effect (and (not (near_5_4)) (at_5_5))
)

(:action arrive_at_5_5_4_5
 :parameters ()
 :precondition (and (near_5_5) (near_4_5))
 :poss-precondition (and (found))
 :effect (and (not (near_5_5)) (at_4_5))
)

(:action arrive_at_5_5_6_5
 :parameters ()
 :precondition (and (near_5_5) (near_6_5))
 :poss-precondition (and (found))
 :effect (and (not (near_5_5)) (at_6_5))
)

(:action arrive_at_5_5_5_4
 :parameters ()
 :precondition (and (near_5_5) (near_5_4))
 :poss-precondition (and (found))
 :effect (and (not (near_5_5)) (at_5_4))
)

(:action arrive_at_5_5_5_6
 :parameters ()
 :precondition (and (near_5_5) (near_5_6))
 :poss-precondition (and (found))
 :effect (and (not (near_5_5)) (at_5_6))
)

(:action arrive_at_5_6_4_6
 :parameters ()
 :precondition (and (near_5_6) (near_4_6))
 :poss-precondition (and (found))
 :effect (and (not (near_5_6)) (at_4_6))
)

(:action arrive_at_5_6_6_6
 :parameters ()
 :precondition (and (near_5_6) (near_6_6))
 :poss-precondition (and (found))
 :effect (and (not (near_5_6)) (at_6_6))
)

(:action arrive_at_5_6_5_5
 :parameters ()
 :precondition (and (near_5_6) (near_5_5))
 :poss-precondition (and (found))
 :effect (and (not (near_5_6)) (at_5_5))
)

(:action arrive_at_5_6_5_7
 :parameters ()
 :precondition (and (near_5_6) (near_5_7))
 :poss-precondition (and (found))
 :effect (and (not (near_5_6)) (at_5_7))
)

(:action arrive_at_5_7_4_7
 :parameters ()
 :precondition (and (near_5_7) (near_4_7))
 :poss-precondition (and (found))
 :effect (and (not (near_5_7)) (at_4_7))
)

(:action arrive_at_5_7_6_7
 :parameters ()
 :precondition (and (near_5_7) (near_6_7))
 :poss-precondition (and (found))
 :effect (and (not (near_5_7)) (at_6_7))
)

(:action arrive_at_5_7_5_6
 :parameters ()
 :precondition (and (near_5_7) (near_5_6))
 :poss-precondition (and (found))
 :effect (and (not (near_5_7)) (at_5_6))
)

(:action arrive_at_6_0_5_0
 :parameters ()
 :precondition (and (near_6_0) (near_5_0))
 :poss-precondition (and (found))
 :effect (and (not (near_6_0)) (at_5_0))
)

(:action arrive_at_6_0_7_0
 :parameters ()
 :precondition (and (near_6_0) (near_7_0))
 :poss-precondition (and (found))
 :effect (and (not (near_6_0)) (at_7_0))
)

(:action arrive_at_6_0_6_1
 :parameters ()
 :precondition (and (near_6_0) (near_6_1))
 :poss-precondition (and (found))
 :effect (and (not (near_6_0)) (at_6_1))
)

(:action arrive_at_6_1_5_1
 :parameters ()
 :precondition (and (near_6_1) (near_5_1))
 :poss-precondition (and (found))
 :effect (and (not (near_6_1)) (at_5_1))
)

(:action arrive_at_6_1_7_1
 :parameters ()
 :precondition (and (near_6_1) (near_7_1))
 :poss-precondition (and (found))
 :effect (and (not (near_6_1)) (at_7_1))
)

(:action arrive_at_6_1_6_0
 :parameters ()
 :precondition (and (near_6_1) (near_6_0))
 :poss-precondition (and (found))
 :effect (and (not (near_6_1)) (at_6_0))
)

(:action arrive_at_6_1_6_2
 :parameters ()
 :precondition (and (near_6_1) (near_6_2))
 :poss-precondition (and (found))
 :effect (and (not (near_6_1)) (at_6_2))
)

(:action arrive_at_6_2_5_2
 :parameters ()
 :precondition (and (near_6_2) (near_5_2))
 :poss-precondition (and (found))
 :effect (and (not (near_6_2)) (at_5_2))
)

(:action arrive_at_6_2_7_2
 :parameters ()
 :precondition (and (near_6_2) (near_7_2))
 :poss-precondition (and (found))
 :effect (and (not (near_6_2)) (at_7_2))
)

(:action arrive_at_6_2_6_1
 :parameters ()
 :precondition (and (near_6_2) (near_6_1))
 :poss-precondition (and (found))
 :effect (and (not (near_6_2)) (at_6_1))
)

(:action arrive_at_6_2_6_3
 :parameters ()
 :precondition (and (near_6_2) (near_6_3))
 :poss-precondition (and (found))
 :effect (and (not (near_6_2)) (at_6_3))
)

(:action arrive_at_6_3_5_3
 :parameters ()
 :precondition (and (near_6_3) (near_5_3))
 :poss-precondition (and (found))
 :effect (and (not (near_6_3)) (at_5_3))
)

(:action arrive_at_6_3_7_3
 :parameters ()
 :precondition (and (near_6_3) (near_7_3))
 :poss-precondition (and (found))
 :effect (and (not (near_6_3)) (at_7_3))
)

(:action arrive_at_6_3_6_2
 :parameters ()
 :precondition (and (near_6_3) (near_6_2))
 :poss-precondition (and (found))
 :effect (and (not (near_6_3)) (at_6_2))
)

(:action arrive_at_6_3_6_4
 :parameters ()
 :precondition (and (near_6_3) (near_6_4))
 :poss-precondition (and (found))
 :effect (and (not (near_6_3)) (at_6_4))
)

(:action arrive_at_6_4_5_4
 :parameters ()
 :precondition (and (near_6_4) (near_5_4))
 :poss-precondition (and (found))
 :effect (and (not (near_6_4)) (at_5_4))
)

(:action arrive_at_6_4_7_4
 :parameters ()
 :precondition (and (near_6_4) (near_7_4))
 :poss-precondition (and (found))
 :effect (and (not (near_6_4)) (at_7_4))
)

(:action arrive_at_6_4_6_3
 :parameters ()
 :precondition (and (near_6_4) (near_6_3))
 :poss-precondition (and (found))
 :effect (and (not (near_6_4)) (at_6_3))
)

(:action arrive_at_6_4_6_5
 :parameters ()
 :precondition (and (near_6_4) (near_6_5))
 :poss-precondition (and (found))
 :effect (and (not (near_6_4)) (at_6_5))
)

(:action arrive_at_6_5_5_5
 :parameters ()
 :precondition (and (near_6_5) (near_5_5))
 :poss-precondition (and (found))
 :effect (and (not (near_6_5)) (at_5_5))
)

(:action arrive_at_6_5_7_5
 :parameters ()
 :precondition (and (near_6_5) (near_7_5))
 :poss-precondition (and (found))
 :effect (and (not (near_6_5)) (at_7_5))
)

(:action arrive_at_6_5_6_4
 :parameters ()
 :precondition (and (near_6_5) (near_6_4))
 :poss-precondition (and (found))
 :effect (and (not (near_6_5)) (at_6_4))
)

(:action arrive_at_6_5_6_6
 :parameters ()
 :precondition (and (near_6_5) (near_6_6))
 :poss-precondition (and (found))
 :effect (and (not (near_6_5)) (at_6_6))
)

(:action arrive_at_6_6_5_6
 :parameters ()
 :precondition (and (near_6_6) (near_5_6))
 :poss-precondition (and (found))
 :effect (and (not (near_6_6)) (at_5_6))
)

(:action arrive_at_6_6_7_6
 :parameters ()
 :precondition (and (near_6_6) (near_7_6))
 :poss-precondition (and (found))
 :effect (and (not (near_6_6)) (at_7_6))
)

(:action arrive_at_6_6_6_5
 :parameters ()
 :precondition (and (near_6_6) (near_6_5))
 :poss-precondition (and (found))
 :effect (and (not (near_6_6)) (at_6_5))
)

(:action arrive_at_6_6_6_7
 :parameters ()
 :precondition (and (near_6_6) (near_6_7))
 :poss-precondition (and (found))
 :effect (and (not (near_6_6)) (at_6_7))
)

(:action arrive_at_6_7_5_7
 :parameters ()
 :precondition (and (near_6_7) (near_5_7))
 :poss-precondition (and (found))
 :effect (and (not (near_6_7)) (at_5_7))
)

(:action arrive_at_6_7_7_7
 :parameters ()
 :precondition (and (near_6_7) (near_7_7))
 :poss-precondition (and (found))
 :effect (and (not (near_6_7)) (at_7_7))
)

(:action arrive_at_6_7_6_6
 :parameters ()
 :precondition (and (near_6_7) (near_6_6))
 :poss-precondition (and (found))
 :effect (and (not (near_6_7)) (at_6_6))
)

(:action arrive_at_7_0_6_0
 :parameters ()
 :precondition (and (near_7_0) (near_6_0))
 :poss-precondition (and (found))
 :effect (and (not (near_7_0)) (at_6_0))
)

(:action arrive_at_7_0_7_1
 :parameters ()
 :precondition (and (near_7_0) (near_7_1))
 :poss-precondition (and (found))
 :effect (and (not (near_7_0)) (at_7_1))
)

(:action arrive_at_7_1_6_1
 :parameters ()
 :precondition (and (near_7_1) (near_6_1))
 :poss-precondition (and (found))
 :effect (and (not (near_7_1)) (at_6_1))
)

(:action arrive_at_7_1_7_0
 :parameters ()
 :precondition (and (near_7_1) (near_7_0))
 :poss-precondition (and (found))
 :effect (and (not (near_7_1)) (at_7_0))
)

(:action arrive_at_7_1_7_2
 :parameters ()
 :precondition (and (near_7_1) (near_7_2))
 :poss-precondition (and (found))
 :effect (and (not (near_7_1)) (at_7_2))
)

(:action arrive_at_7_2_6_2
 :parameters ()
 :precondition (and (near_7_2) (near_6_2))
 :poss-precondition (and (found))
 :effect (and (not (near_7_2)) (at_6_2))
)

(:action arrive_at_7_2_7_1
 :parameters ()
 :precondition (and (near_7_2) (near_7_1))
 :poss-precondition (and (found))
 :effect (and (not (near_7_2)) (at_7_1))
)

(:action arrive_at_7_2_7_3
 :parameters ()
 :precondition (and (near_7_2) (near_7_3))
 :poss-precondition (and (found))
 :effect (and (not (near_7_2)) (at_7_3))
)

(:action arrive_at_7_3_6_3
 :parameters ()
 :precondition (and (near_7_3) (near_6_3))
 :poss-precondition (and (found))
 :effect (and (not (near_7_3)) (at_6_3))
)

(:action arrive_at_7_3_7_2
 :parameters ()
 :precondition (and (near_7_3) (near_7_2))
 :poss-precondition (and (found))
 :effect (and (not (near_7_3)) (at_7_2))
)

(:action arrive_at_7_3_7_4
 :parameters ()
 :precondition (and (near_7_3) (near_7_4))
 :poss-precondition (and (found))
 :effect (and (not (near_7_3)) (at_7_4))
)

(:action arrive_at_7_4_6_4
 :parameters ()
 :precondition (and (near_7_4) (near_6_4))
 :poss-precondition (and (found))
 :effect (and (not (near_7_4)) (at_6_4))
)

(:action arrive_at_7_4_7_3
 :parameters ()
 :precondition (and (near_7_4) (near_7_3))
 :poss-precondition (and (found))
 :effect (and (not (near_7_4)) (at_7_3))
)

(:action arrive_at_7_4_7_5
 :parameters ()
 :precondition (and (near_7_4) (near_7_5))
 :poss-precondition (and (found))
 :effect (and (not (near_7_4)) (at_7_5))
)

(:action arrive_at_7_5_6_5
 :parameters ()
 :precondition (and (near_7_5) (near_6_5))
 :poss-precondition (and (found))
 :effect (and (not (near_7_5)) (at_6_5))
)

(:action arrive_at_7_5_7_4
 :parameters ()
 :precondition (and (near_7_5) (near_7_4))
 :poss-precondition (and (found))
 :effect (and (not (near_7_5)) (at_7_4))
)

(:action arrive_at_7_5_7_6
 :parameters ()
 :precondition (and (near_7_5) (near_7_6))
 :poss-precondition (and (found))
 :effect (and (not (near_7_5)) (at_7_6))
)

(:action arrive_at_7_6_6_6
 :parameters ()
 :precondition (and (near_7_6) (near_6_6))
 :poss-precondition (and (found))
 :effect (and (not (near_7_6)) (at_6_6))
)

(:action arrive_at_7_6_7_5
 :parameters ()
 :precondition (and (near_7_6) (near_7_5))
 :poss-precondition (and (found))
 :effect (and (not (near_7_6)) (at_7_5))
)

(:action arrive_at_7_6_7_7
 :parameters ()
 :precondition (and (near_7_6) (near_7_7))
 :poss-precondition (and (found))
 :effect (and (not (near_7_6)) (at_7_7))
)

(:action arrive_at_7_7_6_7
 :parameters ()
 :precondition (and (near_7_7) (near_6_7))
 :poss-precondition (and (found))
 :effect (and (not (near_7_7)) (at_6_7))
)

(:action arrive_at_7_7_7_6
 :parameters ()
 :precondition (and (near_7_7) (near_7_6))
 :poss-precondition (and (found))
 :effect (and (not (near_7_7)) (at_7_6))
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

(:action observe_low_0_1_0_2_1
 :parameters ()
 :precondition (and (near_0_1) (near_0_2))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_0_3_1_3_1
 :parameters ()
 :precondition (and (near_0_3) (near_1_3))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_0_3_0_4_1
 :parameters ()
 :precondition (and (near_0_3) (near_0_4))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_0_4_1_4_1
 :parameters ()
 :precondition (and (near_0_4) (near_1_4))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_0_4_0_5_1
 :parameters ()
 :precondition (and (near_0_4) (near_0_5))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_0_5_1_5_1
 :parameters ()
 :precondition (and (near_0_5) (near_1_5))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_0_5_1_5_2
 :parameters ()
 :precondition (and (near_0_5) (near_1_5))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_0_5_0_6_1
 :parameters ()
 :precondition (and (near_0_5) (near_0_6))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_0_5_0_6_2
 :parameters ()
 :precondition (and (near_0_5) (near_0_6))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_high_0_7_1_7
 :parameters ()
 :precondition (and (near_0_7) (near_1_7))
 :effect (and (found))
)

(:action observe_low_1_0_2_0_1
 :parameters ()
 :precondition (and (near_1_0) (near_2_0))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_1_0_1_1_1
 :parameters ()
 :precondition (and (near_1_0) (near_1_1))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_1_1_2_1_1
 :parameters ()
 :precondition (and (near_1_1) (near_2_1))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_1_1_1_2_1
 :parameters ()
 :precondition (and (near_1_1) (near_1_2))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_1_2_2_2_1
 :parameters ()
 :precondition (and (near_1_2) (near_2_2))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_1_2_1_3_1
 :parameters ()
 :precondition (and (near_1_2) (near_1_3))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_high_1_3_2_3
 :parameters ()
 :precondition (and (near_1_3) (near_2_3))
 :effect (and (found))
)

(:action observe_high_1_3_1_4
 :parameters ()
 :precondition (and (near_1_3) (near_1_4))
 :effect (and (found))
)

(:action observe_low_1_4_2_4_1
 :parameters ()
 :precondition (and (near_1_4) (near_2_4))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_1_4_1_5_1
 :parameters ()
 :precondition (and (near_1_4) (near_1_5))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_1_5_2_5_1
 :parameters ()
 :precondition (and (near_1_5) (near_2_5))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_1_5_1_6_1
 :parameters ()
 :precondition (and (near_1_5) (near_1_6))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_high_1_7_2_7
 :parameters ()
 :precondition (and (near_1_7) (near_2_7))
 :effect (and (found))
)

(:action observe_low_2_0_3_0_1
 :parameters ()
 :precondition (and (near_2_0) (near_3_0))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_2_0_2_1_1
 :parameters ()
 :precondition (and (near_2_0) (near_2_1))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_2_1_3_1_1
 :parameters ()
 :precondition (and (near_2_1) (near_3_1))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_2_1_3_1_2
 :parameters ()
 :precondition (and (near_2_1) (near_3_1))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_2_1_2_2_1
 :parameters ()
 :precondition (and (near_2_1) (near_2_2))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_2_1_2_2_2
 :parameters ()
 :precondition (and (near_2_1) (near_2_2))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_high_2_2_3_2
 :parameters ()
 :precondition (and (near_2_2) (near_3_2))
 :effect (and (found))
)

(:action observe_high_2_2_2_3
 :parameters ()
 :precondition (and (near_2_2) (near_2_3))
 :effect (and (found))
)

(:action observe_low_2_4_3_4_1
 :parameters ()
 :precondition (and (near_2_4) (near_3_4))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_2_4_2_5_1
 :parameters ()
 :precondition (and (near_2_4) (near_2_5))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_high_2_5_3_5
 :parameters ()
 :precondition (and (near_2_5) (near_3_5))
 :effect (and (found))
)

(:action observe_high_2_5_2_6
 :parameters ()
 :precondition (and (near_2_5) (near_2_6))
 :effect (and (found))
)

(:action observe_high_2_6_3_6
 :parameters ()
 :precondition (and (near_2_6) (near_3_6))
 :effect (and (found))
)

(:action observe_high_2_6_2_7
 :parameters ()
 :precondition (and (near_2_6) (near_2_7))
 :effect (and (found))
)

(:action observe_high_2_7_3_7
 :parameters ()
 :precondition (and (near_2_7) (near_3_7))
 :effect (and (found))
)

(:action observe_low_3_0_4_0_1
 :parameters ()
 :precondition (and (near_3_0) (near_4_0))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_3_0_3_1_1
 :parameters ()
 :precondition (and (near_3_0) (near_3_1))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_3_1_4_1_1
 :parameters ()
 :precondition (and (near_3_1) (near_4_1))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_3_1_3_2_1
 :parameters ()
 :precondition (and (near_3_1) (near_3_2))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_high_3_2_4_2
 :parameters ()
 :precondition (and (near_3_2) (near_4_2))
 :effect (and (found))
)

(:action observe_high_3_2_3_3
 :parameters ()
 :precondition (and (near_3_2) (near_3_3))
 :effect (and (found))
)

(:action observe_low_3_3_4_3_1
 :parameters ()
 :precondition (and (near_3_3) (near_4_3))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_3_3_4_3_2
 :parameters ()
 :precondition (and (near_3_3) (near_4_3))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_3_3_3_4_1
 :parameters ()
 :precondition (and (near_3_3) (near_3_4))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_3_3_3_4_2
 :parameters ()
 :precondition (and (near_3_3) (near_3_4))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_3_4_4_4_1
 :parameters ()
 :precondition (and (near_3_4) (near_4_4))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_3_4_4_4_2
 :parameters ()
 :precondition (and (near_3_4) (near_4_4))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_3_4_3_5_1
 :parameters ()
 :precondition (and (near_3_4) (near_3_5))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_3_4_3_5_2
 :parameters ()
 :precondition (and (near_3_4) (near_3_5))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_3_5_4_5_1
 :parameters ()
 :precondition (and (near_3_5) (near_4_5))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_3_5_4_5_2
 :parameters ()
 :precondition (and (near_3_5) (near_4_5))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_3_5_3_6_1
 :parameters ()
 :precondition (and (near_3_5) (near_3_6))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_3_5_3_6_2
 :parameters ()
 :precondition (and (near_3_5) (near_3_6))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_high_3_6_4_6
 :parameters ()
 :precondition (and (near_3_6) (near_4_6))
 :effect (and (found))
)

(:action observe_high_3_6_3_7
 :parameters ()
 :precondition (and (near_3_6) (near_3_7))
 :effect (and (found))
)

(:action observe_low_3_7_4_7_1
 :parameters ()
 :precondition (and (near_3_7) (near_4_7))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_4_0_5_0_1
 :parameters ()
 :precondition (and (near_4_0) (near_5_0))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_4_0_4_1_1
 :parameters ()
 :precondition (and (near_4_0) (near_4_1))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_4_1_5_1_1
 :parameters ()
 :precondition (and (near_4_1) (near_5_1))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_4_1_4_2_1
 :parameters ()
 :precondition (and (near_4_1) (near_4_2))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_high_4_2_5_2
 :parameters ()
 :precondition (and (near_4_2) (near_5_2))
 :effect (and (found))
)

(:action observe_high_4_2_4_3
 :parameters ()
 :precondition (and (near_4_2) (near_4_3))
 :effect (and (found))
)

(:action observe_low_4_3_5_3_1
 :parameters ()
 :precondition (and (near_4_3) (near_5_3))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_4_3_5_3_2
 :parameters ()
 :precondition (and (near_4_3) (near_5_3))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_4_3_4_4_1
 :parameters ()
 :precondition (and (near_4_3) (near_4_4))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_4_3_4_4_2
 :parameters ()
 :precondition (and (near_4_3) (near_4_4))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_4_4_5_4_1
 :parameters ()
 :precondition (and (near_4_4) (near_5_4))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_4_4_5_4_2
 :parameters ()
 :precondition (and (near_4_4) (near_5_4))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_4_4_4_5_1
 :parameters ()
 :precondition (and (near_4_4) (near_4_5))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_4_4_4_5_2
 :parameters ()
 :precondition (and (near_4_4) (near_4_5))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_4_6_5_6_1
 :parameters ()
 :precondition (and (near_4_6) (near_5_6))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_4_6_4_7_1
 :parameters ()
 :precondition (and (near_4_6) (near_4_7))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_high_4_7_5_7
 :parameters ()
 :precondition (and (near_4_7) (near_5_7))
 :effect (and (found))
)

(:action observe_low_5_1_6_1_1
 :parameters ()
 :precondition (and (near_5_1) (near_6_1))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_5_1_6_1_2
 :parameters ()
 :precondition (and (near_5_1) (near_6_1))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_5_1_5_2_1
 :parameters ()
 :precondition (and (near_5_1) (near_5_2))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_5_1_5_2_2
 :parameters ()
 :precondition (and (near_5_1) (near_5_2))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_high_5_2_6_2
 :parameters ()
 :precondition (and (near_5_2) (near_6_2))
 :effect (and (found))
)

(:action observe_high_5_2_5_3
 :parameters ()
 :precondition (and (near_5_2) (near_5_3))
 :effect (and (found))
)

(:action observe_high_5_5_6_5
 :parameters ()
 :precondition (and (near_5_5) (near_6_5))
 :effect (and (found))
)

(:action observe_high_5_5_5_6
 :parameters ()
 :precondition (and (near_5_5) (near_5_6))
 :effect (and (found))
)

(:action observe_high_5_7_6_7
 :parameters ()
 :precondition (and (near_5_7) (near_6_7))
 :effect (and (found))
)

(:action observe_low_6_0_7_0_1
 :parameters ()
 :precondition (and (near_6_0) (near_7_0))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_6_0_6_1_1
 :parameters ()
 :precondition (and (near_6_0) (near_6_1))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_high_6_1_7_1
 :parameters ()
 :precondition (and (near_6_1) (near_7_1))
 :effect (and (found))
)

(:action observe_high_6_1_6_2
 :parameters ()
 :precondition (and (near_6_1) (near_6_2))
 :effect (and (found))
)

(:action observe_low_6_2_7_2_1
 :parameters ()
 :precondition (and (near_6_2) (near_7_2))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_6_2_6_3_1
 :parameters ()
 :precondition (and (near_6_2) (near_6_3))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_high_6_3_7_3
 :parameters ()
 :precondition (and (near_6_3) (near_7_3))
 :effect (and (found))
)

(:action observe_high_6_3_6_4
 :parameters ()
 :precondition (and (near_6_3) (near_6_4))
 :effect (and (found))
)

(:action observe_low_6_4_7_4_1
 :parameters ()
 :precondition (and (near_6_4) (near_7_4))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_6_4_6_5_1
 :parameters ()
 :precondition (and (near_6_4) (near_6_5))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_high_6_5_7_5
 :parameters ()
 :precondition (and (near_6_5) (near_7_5))
 :effect (and (found))
)

(:action observe_high_6_5_6_6
 :parameters ()
 :precondition (and (near_6_5) (near_6_6))
 :effect (and (found))
)

(:action observe_low_6_6_7_6_1
 :parameters ()
 :precondition (and (near_6_6) (near_7_6))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_6_6_7_6_2
 :parameters ()
 :precondition (and (near_6_6) (near_7_6))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_6_6_6_7_1
 :parameters ()
 :precondition (and (near_6_6) (near_6_7))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_6_6_6_7_2
 :parameters ()
 :precondition (and (near_6_6) (near_6_7))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_6_7_7_7_1
 :parameters ()
 :precondition (and (near_6_7) (near_7_7))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_high_7_1_7_2
 :parameters ()
 :precondition (and (near_7_1) (near_7_2))
 :effect (and (found))
)

(:action observe_low_7_2_7_3_1
 :parameters ()
 :precondition (and (near_7_2) (near_7_3))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_7_2_7_3_2
 :parameters ()
 :precondition (and (near_7_2) (near_7_3))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_high_7_3_7_4
 :parameters ()
 :precondition (and (near_7_3) (near_7_4))
 :effect (and (found))
)

(:action observe_low_7_4_7_5_1
 :parameters ()
 :precondition (and (near_7_4) (near_7_5))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_7_5_7_6_1
 :parameters ()
 :precondition (and (near_7_5) (near_7_6))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_high_7_6_7_7
 :parameters ()
 :precondition (and (near_7_6) (near_7_7))
 :effect (and (found))
)

(:action move_bus_stop
 :parameters ()
 :precondition (and (at_7_7))
 :effect (and (not (at_7_7)) (at_bus_stop))
)

)