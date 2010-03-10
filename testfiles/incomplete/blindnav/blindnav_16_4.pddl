(define (domain BlindNav)
(:requirements :fluents :incomplete-domain)

(:predicates
 (at_0_0) (at_0_1) (at_0_2) (at_0_3) (at_0_4) (at_0_5) (at_0_6) (at_0_7) (at_0_8) (at_0_9) (at_0_10) (at_0_11) (at_0_12) (at_0_13) (at_0_14) (at_0_15)
 (at_1_0) (at_1_1) (at_1_2) (at_1_3) (at_1_4) (at_1_5) (at_1_6) (at_1_7) (at_1_8) (at_1_9) (at_1_10) (at_1_11) (at_1_12) (at_1_13) (at_1_14) (at_1_15)
 (at_2_0) (at_2_1) (at_2_2) (at_2_3) (at_2_4) (at_2_5) (at_2_6) (at_2_7) (at_2_8) (at_2_9) (at_2_10) (at_2_11) (at_2_12) (at_2_13) (at_2_14) (at_2_15)
 (at_3_0) (at_3_1) (at_3_2) (at_3_3) (at_3_4) (at_3_5) (at_3_6) (at_3_7) (at_3_8) (at_3_9) (at_3_10) (at_3_11) (at_3_12) (at_3_13) (at_3_14) (at_3_15)
 (at_4_0) (at_4_1) (at_4_2) (at_4_3) (at_4_4) (at_4_5) (at_4_6) (at_4_7) (at_4_8) (at_4_9) (at_4_10) (at_4_11) (at_4_12) (at_4_13) (at_4_14) (at_4_15)
 (at_5_0) (at_5_1) (at_5_2) (at_5_3) (at_5_4) (at_5_5) (at_5_6) (at_5_7) (at_5_8) (at_5_9) (at_5_10) (at_5_11) (at_5_12) (at_5_13) (at_5_14) (at_5_15)
 (at_6_0) (at_6_1) (at_6_2) (at_6_3) (at_6_4) (at_6_5) (at_6_6) (at_6_7) (at_6_8) (at_6_9) (at_6_10) (at_6_11) (at_6_12) (at_6_13) (at_6_14) (at_6_15)
 (at_7_0) (at_7_1) (at_7_2) (at_7_3) (at_7_4) (at_7_5) (at_7_6) (at_7_7) (at_7_8) (at_7_9) (at_7_10) (at_7_11) (at_7_12) (at_7_13) (at_7_14) (at_7_15)
 (at_8_0) (at_8_1) (at_8_2) (at_8_3) (at_8_4) (at_8_5) (at_8_6) (at_8_7) (at_8_8) (at_8_9) (at_8_10) (at_8_11) (at_8_12) (at_8_13) (at_8_14) (at_8_15)
 (at_9_0) (at_9_1) (at_9_2) (at_9_3) (at_9_4) (at_9_5) (at_9_6) (at_9_7) (at_9_8) (at_9_9) (at_9_10) (at_9_11) (at_9_12) (at_9_13) (at_9_14) (at_9_15)
 (at_10_0) (at_10_1) (at_10_2) (at_10_3) (at_10_4) (at_10_5) (at_10_6) (at_10_7) (at_10_8) (at_10_9) (at_10_10) (at_10_11) (at_10_12) (at_10_13) (at_10_14) (at_10_15)
 (at_11_0) (at_11_1) (at_11_2) (at_11_3) (at_11_4) (at_11_5) (at_11_6) (at_11_7) (at_11_8) (at_11_9) (at_11_10) (at_11_11) (at_11_12) (at_11_13) (at_11_14) (at_11_15)
 (at_12_0) (at_12_1) (at_12_2) (at_12_3) (at_12_4) (at_12_5) (at_12_6) (at_12_7) (at_12_8) (at_12_9) (at_12_10) (at_12_11) (at_12_12) (at_12_13) (at_12_14) (at_12_15)
 (at_13_0) (at_13_1) (at_13_2) (at_13_3) (at_13_4) (at_13_5) (at_13_6) (at_13_7) (at_13_8) (at_13_9) (at_13_10) (at_13_11) (at_13_12) (at_13_13) (at_13_14) (at_13_15)
 (at_14_0) (at_14_1) (at_14_2) (at_14_3) (at_14_4) (at_14_5) (at_14_6) (at_14_7) (at_14_8) (at_14_9) (at_14_10) (at_14_11) (at_14_12) (at_14_13) (at_14_14) (at_14_15)
 (at_15_0) (at_15_1) (at_15_2) (at_15_3) (at_15_4) (at_15_5) (at_15_6) (at_15_7) (at_15_8) (at_15_9) (at_15_10) (at_15_11) (at_15_12) (at_15_13) (at_15_14) (at_15_15)
 (near_0_0) (near_0_1) (near_0_2) (near_0_3) (near_0_4) (near_0_5) (near_0_6) (near_0_7) (near_0_8) (near_0_9) (near_0_10) (near_0_11) (near_0_12) (near_0_13) (near_0_14) (near_0_15)
 (near_1_0) (near_1_1) (near_1_2) (near_1_3) (near_1_4) (near_1_5) (near_1_6) (near_1_7) (near_1_8) (near_1_9) (near_1_10) (near_1_11) (near_1_12) (near_1_13) (near_1_14) (near_1_15)
 (near_2_0) (near_2_1) (near_2_2) (near_2_3) (near_2_4) (near_2_5) (near_2_6) (near_2_7) (near_2_8) (near_2_9) (near_2_10) (near_2_11) (near_2_12) (near_2_13) (near_2_14) (near_2_15)
 (near_3_0) (near_3_1) (near_3_2) (near_3_3) (near_3_4) (near_3_5) (near_3_6) (near_3_7) (near_3_8) (near_3_9) (near_3_10) (near_3_11) (near_3_12) (near_3_13) (near_3_14) (near_3_15)
 (near_4_0) (near_4_1) (near_4_2) (near_4_3) (near_4_4) (near_4_5) (near_4_6) (near_4_7) (near_4_8) (near_4_9) (near_4_10) (near_4_11) (near_4_12) (near_4_13) (near_4_14) (near_4_15)
 (near_5_0) (near_5_1) (near_5_2) (near_5_3) (near_5_4) (near_5_5) (near_5_6) (near_5_7) (near_5_8) (near_5_9) (near_5_10) (near_5_11) (near_5_12) (near_5_13) (near_5_14) (near_5_15)
 (near_6_0) (near_6_1) (near_6_2) (near_6_3) (near_6_4) (near_6_5) (near_6_6) (near_6_7) (near_6_8) (near_6_9) (near_6_10) (near_6_11) (near_6_12) (near_6_13) (near_6_14) (near_6_15)
 (near_7_0) (near_7_1) (near_7_2) (near_7_3) (near_7_4) (near_7_5) (near_7_6) (near_7_7) (near_7_8) (near_7_9) (near_7_10) (near_7_11) (near_7_12) (near_7_13) (near_7_14) (near_7_15)
 (near_8_0) (near_8_1) (near_8_2) (near_8_3) (near_8_4) (near_8_5) (near_8_6) (near_8_7) (near_8_8) (near_8_9) (near_8_10) (near_8_11) (near_8_12) (near_8_13) (near_8_14) (near_8_15)
 (near_9_0) (near_9_1) (near_9_2) (near_9_3) (near_9_4) (near_9_5) (near_9_6) (near_9_7) (near_9_8) (near_9_9) (near_9_10) (near_9_11) (near_9_12) (near_9_13) (near_9_14) (near_9_15)
 (near_10_0) (near_10_1) (near_10_2) (near_10_3) (near_10_4) (near_10_5) (near_10_6) (near_10_7) (near_10_8) (near_10_9) (near_10_10) (near_10_11) (near_10_12) (near_10_13) (near_10_14) (near_10_15)
 (near_11_0) (near_11_1) (near_11_2) (near_11_3) (near_11_4) (near_11_5) (near_11_6) (near_11_7) (near_11_8) (near_11_9) (near_11_10) (near_11_11) (near_11_12) (near_11_13) (near_11_14) (near_11_15)
 (near_12_0) (near_12_1) (near_12_2) (near_12_3) (near_12_4) (near_12_5) (near_12_6) (near_12_7) (near_12_8) (near_12_9) (near_12_10) (near_12_11) (near_12_12) (near_12_13) (near_12_14) (near_12_15)
 (near_13_0) (near_13_1) (near_13_2) (near_13_3) (near_13_4) (near_13_5) (near_13_6) (near_13_7) (near_13_8) (near_13_9) (near_13_10) (near_13_11) (near_13_12) (near_13_13) (near_13_14) (near_13_15)
 (near_14_0) (near_14_1) (near_14_2) (near_14_3) (near_14_4) (near_14_5) (near_14_6) (near_14_7) (near_14_8) (near_14_9) (near_14_10) (near_14_11) (near_14_12) (near_14_13) (near_14_14) (near_14_15)
 (near_15_0) (near_15_1) (near_15_2) (near_15_3) (near_15_4) (near_15_5) (near_15_6) (near_15_7) (near_15_8) (near_15_9) (near_15_10) (near_15_11) (near_15_12) (near_15_13) (near_15_14) (near_15_15)
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

(:action move_toward_0_7_0_8
 :parameters ()
 :precondition (and (at_0_7) (found))
 :effect (and (not (at_0_7)) (near_0_8))
 :poss-effect (and (not (found)))
)

(:action move_toward_0_8_1_8
 :parameters ()
 :precondition (and (at_0_8) (found))
 :effect (and (not (at_0_8)) (near_1_8))
 :poss-effect (and (not (found)))
)

(:action move_toward_0_8_0_7
 :parameters ()
 :precondition (and (at_0_8) (found))
 :effect (and (not (at_0_8)) (near_0_7))
 :poss-effect (and (not (found)))
)

(:action move_toward_0_8_0_9
 :parameters ()
 :precondition (and (at_0_8) (found))
 :effect (and (not (at_0_8)) (near_0_9))
 :poss-effect (and (not (found)))
)

(:action move_toward_0_9_1_9
 :parameters ()
 :precondition (and (at_0_9) (found))
 :effect (and (not (at_0_9)) (near_1_9))
 :poss-effect (and (not (found)))
)

(:action move_toward_0_9_0_8
 :parameters ()
 :precondition (and (at_0_9) (found))
 :effect (and (not (at_0_9)) (near_0_8))
 :poss-effect (and (not (found)))
)

(:action move_toward_0_9_0_10
 :parameters ()
 :precondition (and (at_0_9) (found))
 :effect (and (not (at_0_9)) (near_0_10))
 :poss-effect (and (not (found)))
)

(:action move_toward_0_10_1_10
 :parameters ()
 :precondition (and (at_0_10) (found))
 :effect (and (not (at_0_10)) (near_1_10))
 :poss-effect (and (not (found)))
)

(:action move_toward_0_10_0_9
 :parameters ()
 :precondition (and (at_0_10) (found))
 :effect (and (not (at_0_10)) (near_0_9))
 :poss-effect (and (not (found)))
)

(:action move_toward_0_10_0_11
 :parameters ()
 :precondition (and (at_0_10) (found))
 :effect (and (not (at_0_10)) (near_0_11))
 :poss-effect (and (not (found)))
)

(:action move_toward_0_11_1_11
 :parameters ()
 :precondition (and (at_0_11) (found))
 :effect (and (not (at_0_11)) (near_1_11))
 :poss-effect (and (not (found)))
)

(:action move_toward_0_11_0_10
 :parameters ()
 :precondition (and (at_0_11) (found))
 :effect (and (not (at_0_11)) (near_0_10))
 :poss-effect (and (not (found)))
)

(:action move_toward_0_11_0_12
 :parameters ()
 :precondition (and (at_0_11) (found))
 :effect (and (not (at_0_11)) (near_0_12))
 :poss-effect (and (not (found)))
)

(:action move_toward_0_12_1_12
 :parameters ()
 :precondition (and (at_0_12) (found))
 :effect (and (not (at_0_12)) (near_1_12))
 :poss-effect (and (not (found)))
)

(:action move_toward_0_12_0_11
 :parameters ()
 :precondition (and (at_0_12) (found))
 :effect (and (not (at_0_12)) (near_0_11))
 :poss-effect (and (not (found)))
)

(:action move_toward_0_12_0_13
 :parameters ()
 :precondition (and (at_0_12) (found))
 :effect (and (not (at_0_12)) (near_0_13))
 :poss-effect (and (not (found)))
)

(:action move_toward_0_13_1_13
 :parameters ()
 :precondition (and (at_0_13) (found))
 :effect (and (not (at_0_13)) (near_1_13))
 :poss-effect (and (not (found)))
)

(:action move_toward_0_13_0_12
 :parameters ()
 :precondition (and (at_0_13) (found))
 :effect (and (not (at_0_13)) (near_0_12))
 :poss-effect (and (not (found)))
)

(:action move_toward_0_13_0_14
 :parameters ()
 :precondition (and (at_0_13) (found))
 :effect (and (not (at_0_13)) (near_0_14))
 :poss-effect (and (not (found)))
)

(:action move_toward_0_14_1_14
 :parameters ()
 :precondition (and (at_0_14) (found))
 :effect (and (not (at_0_14)) (near_1_14))
 :poss-effect (and (not (found)))
)

(:action move_toward_0_14_0_13
 :parameters ()
 :precondition (and (at_0_14) (found))
 :effect (and (not (at_0_14)) (near_0_13))
 :poss-effect (and (not (found)))
)

(:action move_toward_0_14_0_15
 :parameters ()
 :precondition (and (at_0_14) (found))
 :effect (and (not (at_0_14)) (near_0_15))
 :poss-effect (and (not (found)))
)

(:action move_toward_0_15_1_15
 :parameters ()
 :precondition (and (at_0_15) (found))
 :effect (and (not (at_0_15)) (near_1_15))
 :poss-effect (and (not (found)))
)

(:action move_toward_0_15_0_14
 :parameters ()
 :precondition (and (at_0_15) (found))
 :effect (and (not (at_0_15)) (near_0_14))
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

(:action move_toward_1_7_1_8
 :parameters ()
 :precondition (and (at_1_7) (found))
 :effect (and (not (at_1_7)) (near_1_8))
 :poss-effect (and (not (found)))
)

(:action move_toward_1_8_0_8
 :parameters ()
 :precondition (and (at_1_8) (found))
 :effect (and (not (at_1_8)) (near_0_8))
 :poss-effect (and (not (found)))
)

(:action move_toward_1_8_2_8
 :parameters ()
 :precondition (and (at_1_8) (found))
 :effect (and (not (at_1_8)) (near_2_8))
 :poss-effect (and (not (found)))
)

(:action move_toward_1_8_1_7
 :parameters ()
 :precondition (and (at_1_8) (found))
 :effect (and (not (at_1_8)) (near_1_7))
 :poss-effect (and (not (found)))
)

(:action move_toward_1_8_1_9
 :parameters ()
 :precondition (and (at_1_8) (found))
 :effect (and (not (at_1_8)) (near_1_9))
 :poss-effect (and (not (found)))
)

(:action move_toward_1_9_0_9
 :parameters ()
 :precondition (and (at_1_9) (found))
 :effect (and (not (at_1_9)) (near_0_9))
 :poss-effect (and (not (found)))
)

(:action move_toward_1_9_2_9
 :parameters ()
 :precondition (and (at_1_9) (found))
 :effect (and (not (at_1_9)) (near_2_9))
 :poss-effect (and (not (found)))
)

(:action move_toward_1_9_1_8
 :parameters ()
 :precondition (and (at_1_9) (found))
 :effect (and (not (at_1_9)) (near_1_8))
 :poss-effect (and (not (found)))
)

(:action move_toward_1_9_1_10
 :parameters ()
 :precondition (and (at_1_9) (found))
 :effect (and (not (at_1_9)) (near_1_10))
 :poss-effect (and (not (found)))
)

(:action move_toward_1_10_0_10
 :parameters ()
 :precondition (and (at_1_10) (found))
 :effect (and (not (at_1_10)) (near_0_10))
 :poss-effect (and (not (found)))
)

(:action move_toward_1_10_2_10
 :parameters ()
 :precondition (and (at_1_10) (found))
 :effect (and (not (at_1_10)) (near_2_10))
 :poss-effect (and (not (found)))
)

(:action move_toward_1_10_1_9
 :parameters ()
 :precondition (and (at_1_10) (found))
 :effect (and (not (at_1_10)) (near_1_9))
 :poss-effect (and (not (found)))
)

(:action move_toward_1_10_1_11
 :parameters ()
 :precondition (and (at_1_10) (found))
 :effect (and (not (at_1_10)) (near_1_11))
 :poss-effect (and (not (found)))
)

(:action move_toward_1_11_0_11
 :parameters ()
 :precondition (and (at_1_11) (found))
 :effect (and (not (at_1_11)) (near_0_11))
 :poss-effect (and (not (found)))
)

(:action move_toward_1_11_2_11
 :parameters ()
 :precondition (and (at_1_11) (found))
 :effect (and (not (at_1_11)) (near_2_11))
 :poss-effect (and (not (found)))
)

(:action move_toward_1_11_1_10
 :parameters ()
 :precondition (and (at_1_11) (found))
 :effect (and (not (at_1_11)) (near_1_10))
 :poss-effect (and (not (found)))
)

(:action move_toward_1_11_1_12
 :parameters ()
 :precondition (and (at_1_11) (found))
 :effect (and (not (at_1_11)) (near_1_12))
 :poss-effect (and (not (found)))
)

(:action move_toward_1_12_0_12
 :parameters ()
 :precondition (and (at_1_12) (found))
 :effect (and (not (at_1_12)) (near_0_12))
 :poss-effect (and (not (found)))
)

(:action move_toward_1_12_2_12
 :parameters ()
 :precondition (and (at_1_12) (found))
 :effect (and (not (at_1_12)) (near_2_12))
 :poss-effect (and (not (found)))
)

(:action move_toward_1_12_1_11
 :parameters ()
 :precondition (and (at_1_12) (found))
 :effect (and (not (at_1_12)) (near_1_11))
 :poss-effect (and (not (found)))
)

(:action move_toward_1_12_1_13
 :parameters ()
 :precondition (and (at_1_12) (found))
 :effect (and (not (at_1_12)) (near_1_13))
 :poss-effect (and (not (found)))
)

(:action move_toward_1_13_0_13
 :parameters ()
 :precondition (and (at_1_13) (found))
 :effect (and (not (at_1_13)) (near_0_13))
 :poss-effect (and (not (found)))
)

(:action move_toward_1_13_2_13
 :parameters ()
 :precondition (and (at_1_13) (found))
 :effect (and (not (at_1_13)) (near_2_13))
 :poss-effect (and (not (found)))
)

(:action move_toward_1_13_1_12
 :parameters ()
 :precondition (and (at_1_13) (found))
 :effect (and (not (at_1_13)) (near_1_12))
 :poss-effect (and (not (found)))
)

(:action move_toward_1_13_1_14
 :parameters ()
 :precondition (and (at_1_13) (found))
 :effect (and (not (at_1_13)) (near_1_14))
 :poss-effect (and (not (found)))
)

(:action move_toward_1_14_0_14
 :parameters ()
 :precondition (and (at_1_14) (found))
 :effect (and (not (at_1_14)) (near_0_14))
 :poss-effect (and (not (found)))
)

(:action move_toward_1_14_2_14
 :parameters ()
 :precondition (and (at_1_14) (found))
 :effect (and (not (at_1_14)) (near_2_14))
 :poss-effect (and (not (found)))
)

(:action move_toward_1_14_1_13
 :parameters ()
 :precondition (and (at_1_14) (found))
 :effect (and (not (at_1_14)) (near_1_13))
 :poss-effect (and (not (found)))
)

(:action move_toward_1_14_1_15
 :parameters ()
 :precondition (and (at_1_14) (found))
 :effect (and (not (at_1_14)) (near_1_15))
 :poss-effect (and (not (found)))
)

(:action move_toward_1_15_0_15
 :parameters ()
 :precondition (and (at_1_15) (found))
 :effect (and (not (at_1_15)) (near_0_15))
 :poss-effect (and (not (found)))
)

(:action move_toward_1_15_2_15
 :parameters ()
 :precondition (and (at_1_15) (found))
 :effect (and (not (at_1_15)) (near_2_15))
 :poss-effect (and (not (found)))
)

(:action move_toward_1_15_1_14
 :parameters ()
 :precondition (and (at_1_15) (found))
 :effect (and (not (at_1_15)) (near_1_14))
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

(:action move_toward_2_7_2_8
 :parameters ()
 :precondition (and (at_2_7) (found))
 :effect (and (not (at_2_7)) (near_2_8))
 :poss-effect (and (not (found)))
)

(:action move_toward_2_8_1_8
 :parameters ()
 :precondition (and (at_2_8) (found))
 :effect (and (not (at_2_8)) (near_1_8))
 :poss-effect (and (not (found)))
)

(:action move_toward_2_8_3_8
 :parameters ()
 :precondition (and (at_2_8) (found))
 :effect (and (not (at_2_8)) (near_3_8))
 :poss-effect (and (not (found)))
)

(:action move_toward_2_8_2_7
 :parameters ()
 :precondition (and (at_2_8) (found))
 :effect (and (not (at_2_8)) (near_2_7))
 :poss-effect (and (not (found)))
)

(:action move_toward_2_8_2_9
 :parameters ()
 :precondition (and (at_2_8) (found))
 :effect (and (not (at_2_8)) (near_2_9))
 :poss-effect (and (not (found)))
)

(:action move_toward_2_9_1_9
 :parameters ()
 :precondition (and (at_2_9) (found))
 :effect (and (not (at_2_9)) (near_1_9))
 :poss-effect (and (not (found)))
)

(:action move_toward_2_9_3_9
 :parameters ()
 :precondition (and (at_2_9) (found))
 :effect (and (not (at_2_9)) (near_3_9))
 :poss-effect (and (not (found)))
)

(:action move_toward_2_9_2_8
 :parameters ()
 :precondition (and (at_2_9) (found))
 :effect (and (not (at_2_9)) (near_2_8))
 :poss-effect (and (not (found)))
)

(:action move_toward_2_9_2_10
 :parameters ()
 :precondition (and (at_2_9) (found))
 :effect (and (not (at_2_9)) (near_2_10))
 :poss-effect (and (not (found)))
)

(:action move_toward_2_10_1_10
 :parameters ()
 :precondition (and (at_2_10) (found))
 :effect (and (not (at_2_10)) (near_1_10))
 :poss-effect (and (not (found)))
)

(:action move_toward_2_10_3_10
 :parameters ()
 :precondition (and (at_2_10) (found))
 :effect (and (not (at_2_10)) (near_3_10))
 :poss-effect (and (not (found)))
)

(:action move_toward_2_10_2_9
 :parameters ()
 :precondition (and (at_2_10) (found))
 :effect (and (not (at_2_10)) (near_2_9))
 :poss-effect (and (not (found)))
)

(:action move_toward_2_10_2_11
 :parameters ()
 :precondition (and (at_2_10) (found))
 :effect (and (not (at_2_10)) (near_2_11))
 :poss-effect (and (not (found)))
)

(:action move_toward_2_11_1_11
 :parameters ()
 :precondition (and (at_2_11) (found))
 :effect (and (not (at_2_11)) (near_1_11))
 :poss-effect (and (not (found)))
)

(:action move_toward_2_11_3_11
 :parameters ()
 :precondition (and (at_2_11) (found))
 :effect (and (not (at_2_11)) (near_3_11))
 :poss-effect (and (not (found)))
)

(:action move_toward_2_11_2_10
 :parameters ()
 :precondition (and (at_2_11) (found))
 :effect (and (not (at_2_11)) (near_2_10))
 :poss-effect (and (not (found)))
)

(:action move_toward_2_11_2_12
 :parameters ()
 :precondition (and (at_2_11) (found))
 :effect (and (not (at_2_11)) (near_2_12))
 :poss-effect (and (not (found)))
)

(:action move_toward_2_12_1_12
 :parameters ()
 :precondition (and (at_2_12) (found))
 :effect (and (not (at_2_12)) (near_1_12))
 :poss-effect (and (not (found)))
)

(:action move_toward_2_12_3_12
 :parameters ()
 :precondition (and (at_2_12) (found))
 :effect (and (not (at_2_12)) (near_3_12))
 :poss-effect (and (not (found)))
)

(:action move_toward_2_12_2_11
 :parameters ()
 :precondition (and (at_2_12) (found))
 :effect (and (not (at_2_12)) (near_2_11))
 :poss-effect (and (not (found)))
)

(:action move_toward_2_12_2_13
 :parameters ()
 :precondition (and (at_2_12) (found))
 :effect (and (not (at_2_12)) (near_2_13))
 :poss-effect (and (not (found)))
)

(:action move_toward_2_13_1_13
 :parameters ()
 :precondition (and (at_2_13) (found))
 :effect (and (not (at_2_13)) (near_1_13))
 :poss-effect (and (not (found)))
)

(:action move_toward_2_13_3_13
 :parameters ()
 :precondition (and (at_2_13) (found))
 :effect (and (not (at_2_13)) (near_3_13))
 :poss-effect (and (not (found)))
)

(:action move_toward_2_13_2_12
 :parameters ()
 :precondition (and (at_2_13) (found))
 :effect (and (not (at_2_13)) (near_2_12))
 :poss-effect (and (not (found)))
)

(:action move_toward_2_13_2_14
 :parameters ()
 :precondition (and (at_2_13) (found))
 :effect (and (not (at_2_13)) (near_2_14))
 :poss-effect (and (not (found)))
)

(:action move_toward_2_14_1_14
 :parameters ()
 :precondition (and (at_2_14) (found))
 :effect (and (not (at_2_14)) (near_1_14))
 :poss-effect (and (not (found)))
)

(:action move_toward_2_14_3_14
 :parameters ()
 :precondition (and (at_2_14) (found))
 :effect (and (not (at_2_14)) (near_3_14))
 :poss-effect (and (not (found)))
)

(:action move_toward_2_14_2_13
 :parameters ()
 :precondition (and (at_2_14) (found))
 :effect (and (not (at_2_14)) (near_2_13))
 :poss-effect (and (not (found)))
)

(:action move_toward_2_14_2_15
 :parameters ()
 :precondition (and (at_2_14) (found))
 :effect (and (not (at_2_14)) (near_2_15))
 :poss-effect (and (not (found)))
)

(:action move_toward_2_15_1_15
 :parameters ()
 :precondition (and (at_2_15) (found))
 :effect (and (not (at_2_15)) (near_1_15))
 :poss-effect (and (not (found)))
)

(:action move_toward_2_15_3_15
 :parameters ()
 :precondition (and (at_2_15) (found))
 :effect (and (not (at_2_15)) (near_3_15))
 :poss-effect (and (not (found)))
)

(:action move_toward_2_15_2_14
 :parameters ()
 :precondition (and (at_2_15) (found))
 :effect (and (not (at_2_15)) (near_2_14))
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

(:action move_toward_3_7_3_8
 :parameters ()
 :precondition (and (at_3_7) (found))
 :effect (and (not (at_3_7)) (near_3_8))
 :poss-effect (and (not (found)))
)

(:action move_toward_3_8_2_8
 :parameters ()
 :precondition (and (at_3_8) (found))
 :effect (and (not (at_3_8)) (near_2_8))
 :poss-effect (and (not (found)))
)

(:action move_toward_3_8_4_8
 :parameters ()
 :precondition (and (at_3_8) (found))
 :effect (and (not (at_3_8)) (near_4_8))
 :poss-effect (and (not (found)))
)

(:action move_toward_3_8_3_7
 :parameters ()
 :precondition (and (at_3_8) (found))
 :effect (and (not (at_3_8)) (near_3_7))
 :poss-effect (and (not (found)))
)

(:action move_toward_3_8_3_9
 :parameters ()
 :precondition (and (at_3_8) (found))
 :effect (and (not (at_3_8)) (near_3_9))
 :poss-effect (and (not (found)))
)

(:action move_toward_3_9_2_9
 :parameters ()
 :precondition (and (at_3_9) (found))
 :effect (and (not (at_3_9)) (near_2_9))
 :poss-effect (and (not (found)))
)

(:action move_toward_3_9_4_9
 :parameters ()
 :precondition (and (at_3_9) (found))
 :effect (and (not (at_3_9)) (near_4_9))
 :poss-effect (and (not (found)))
)

(:action move_toward_3_9_3_8
 :parameters ()
 :precondition (and (at_3_9) (found))
 :effect (and (not (at_3_9)) (near_3_8))
 :poss-effect (and (not (found)))
)

(:action move_toward_3_9_3_10
 :parameters ()
 :precondition (and (at_3_9) (found))
 :effect (and (not (at_3_9)) (near_3_10))
 :poss-effect (and (not (found)))
)

(:action move_toward_3_10_2_10
 :parameters ()
 :precondition (and (at_3_10) (found))
 :effect (and (not (at_3_10)) (near_2_10))
 :poss-effect (and (not (found)))
)

(:action move_toward_3_10_4_10
 :parameters ()
 :precondition (and (at_3_10) (found))
 :effect (and (not (at_3_10)) (near_4_10))
 :poss-effect (and (not (found)))
)

(:action move_toward_3_10_3_9
 :parameters ()
 :precondition (and (at_3_10) (found))
 :effect (and (not (at_3_10)) (near_3_9))
 :poss-effect (and (not (found)))
)

(:action move_toward_3_10_3_11
 :parameters ()
 :precondition (and (at_3_10) (found))
 :effect (and (not (at_3_10)) (near_3_11))
 :poss-effect (and (not (found)))
)

(:action move_toward_3_11_2_11
 :parameters ()
 :precondition (and (at_3_11) (found))
 :effect (and (not (at_3_11)) (near_2_11))
 :poss-effect (and (not (found)))
)

(:action move_toward_3_11_4_11
 :parameters ()
 :precondition (and (at_3_11) (found))
 :effect (and (not (at_3_11)) (near_4_11))
 :poss-effect (and (not (found)))
)

(:action move_toward_3_11_3_10
 :parameters ()
 :precondition (and (at_3_11) (found))
 :effect (and (not (at_3_11)) (near_3_10))
 :poss-effect (and (not (found)))
)

(:action move_toward_3_11_3_12
 :parameters ()
 :precondition (and (at_3_11) (found))
 :effect (and (not (at_3_11)) (near_3_12))
 :poss-effect (and (not (found)))
)

(:action move_toward_3_12_2_12
 :parameters ()
 :precondition (and (at_3_12) (found))
 :effect (and (not (at_3_12)) (near_2_12))
 :poss-effect (and (not (found)))
)

(:action move_toward_3_12_4_12
 :parameters ()
 :precondition (and (at_3_12) (found))
 :effect (and (not (at_3_12)) (near_4_12))
 :poss-effect (and (not (found)))
)

(:action move_toward_3_12_3_11
 :parameters ()
 :precondition (and (at_3_12) (found))
 :effect (and (not (at_3_12)) (near_3_11))
 :poss-effect (and (not (found)))
)

(:action move_toward_3_12_3_13
 :parameters ()
 :precondition (and (at_3_12) (found))
 :effect (and (not (at_3_12)) (near_3_13))
 :poss-effect (and (not (found)))
)

(:action move_toward_3_13_2_13
 :parameters ()
 :precondition (and (at_3_13) (found))
 :effect (and (not (at_3_13)) (near_2_13))
 :poss-effect (and (not (found)))
)

(:action move_toward_3_13_4_13
 :parameters ()
 :precondition (and (at_3_13) (found))
 :effect (and (not (at_3_13)) (near_4_13))
 :poss-effect (and (not (found)))
)

(:action move_toward_3_13_3_12
 :parameters ()
 :precondition (and (at_3_13) (found))
 :effect (and (not (at_3_13)) (near_3_12))
 :poss-effect (and (not (found)))
)

(:action move_toward_3_13_3_14
 :parameters ()
 :precondition (and (at_3_13) (found))
 :effect (and (not (at_3_13)) (near_3_14))
 :poss-effect (and (not (found)))
)

(:action move_toward_3_14_2_14
 :parameters ()
 :precondition (and (at_3_14) (found))
 :effect (and (not (at_3_14)) (near_2_14))
 :poss-effect (and (not (found)))
)

(:action move_toward_3_14_4_14
 :parameters ()
 :precondition (and (at_3_14) (found))
 :effect (and (not (at_3_14)) (near_4_14))
 :poss-effect (and (not (found)))
)

(:action move_toward_3_14_3_13
 :parameters ()
 :precondition (and (at_3_14) (found))
 :effect (and (not (at_3_14)) (near_3_13))
 :poss-effect (and (not (found)))
)

(:action move_toward_3_14_3_15
 :parameters ()
 :precondition (and (at_3_14) (found))
 :effect (and (not (at_3_14)) (near_3_15))
 :poss-effect (and (not (found)))
)

(:action move_toward_3_15_2_15
 :parameters ()
 :precondition (and (at_3_15) (found))
 :effect (and (not (at_3_15)) (near_2_15))
 :poss-effect (and (not (found)))
)

(:action move_toward_3_15_4_15
 :parameters ()
 :precondition (and (at_3_15) (found))
 :effect (and (not (at_3_15)) (near_4_15))
 :poss-effect (and (not (found)))
)

(:action move_toward_3_15_3_14
 :parameters ()
 :precondition (and (at_3_15) (found))
 :effect (and (not (at_3_15)) (near_3_14))
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

(:action move_toward_4_7_4_8
 :parameters ()
 :precondition (and (at_4_7) (found))
 :effect (and (not (at_4_7)) (near_4_8))
 :poss-effect (and (not (found)))
)

(:action move_toward_4_8_3_8
 :parameters ()
 :precondition (and (at_4_8) (found))
 :effect (and (not (at_4_8)) (near_3_8))
 :poss-effect (and (not (found)))
)

(:action move_toward_4_8_5_8
 :parameters ()
 :precondition (and (at_4_8) (found))
 :effect (and (not (at_4_8)) (near_5_8))
 :poss-effect (and (not (found)))
)

(:action move_toward_4_8_4_7
 :parameters ()
 :precondition (and (at_4_8) (found))
 :effect (and (not (at_4_8)) (near_4_7))
 :poss-effect (and (not (found)))
)

(:action move_toward_4_8_4_9
 :parameters ()
 :precondition (and (at_4_8) (found))
 :effect (and (not (at_4_8)) (near_4_9))
 :poss-effect (and (not (found)))
)

(:action move_toward_4_9_3_9
 :parameters ()
 :precondition (and (at_4_9) (found))
 :effect (and (not (at_4_9)) (near_3_9))
 :poss-effect (and (not (found)))
)

(:action move_toward_4_9_5_9
 :parameters ()
 :precondition (and (at_4_9) (found))
 :effect (and (not (at_4_9)) (near_5_9))
 :poss-effect (and (not (found)))
)

(:action move_toward_4_9_4_8
 :parameters ()
 :precondition (and (at_4_9) (found))
 :effect (and (not (at_4_9)) (near_4_8))
 :poss-effect (and (not (found)))
)

(:action move_toward_4_9_4_10
 :parameters ()
 :precondition (and (at_4_9) (found))
 :effect (and (not (at_4_9)) (near_4_10))
 :poss-effect (and (not (found)))
)

(:action move_toward_4_10_3_10
 :parameters ()
 :precondition (and (at_4_10) (found))
 :effect (and (not (at_4_10)) (near_3_10))
 :poss-effect (and (not (found)))
)

(:action move_toward_4_10_5_10
 :parameters ()
 :precondition (and (at_4_10) (found))
 :effect (and (not (at_4_10)) (near_5_10))
 :poss-effect (and (not (found)))
)

(:action move_toward_4_10_4_9
 :parameters ()
 :precondition (and (at_4_10) (found))
 :effect (and (not (at_4_10)) (near_4_9))
 :poss-effect (and (not (found)))
)

(:action move_toward_4_10_4_11
 :parameters ()
 :precondition (and (at_4_10) (found))
 :effect (and (not (at_4_10)) (near_4_11))
 :poss-effect (and (not (found)))
)

(:action move_toward_4_11_3_11
 :parameters ()
 :precondition (and (at_4_11) (found))
 :effect (and (not (at_4_11)) (near_3_11))
 :poss-effect (and (not (found)))
)

(:action move_toward_4_11_5_11
 :parameters ()
 :precondition (and (at_4_11) (found))
 :effect (and (not (at_4_11)) (near_5_11))
 :poss-effect (and (not (found)))
)

(:action move_toward_4_11_4_10
 :parameters ()
 :precondition (and (at_4_11) (found))
 :effect (and (not (at_4_11)) (near_4_10))
 :poss-effect (and (not (found)))
)

(:action move_toward_4_11_4_12
 :parameters ()
 :precondition (and (at_4_11) (found))
 :effect (and (not (at_4_11)) (near_4_12))
 :poss-effect (and (not (found)))
)

(:action move_toward_4_12_3_12
 :parameters ()
 :precondition (and (at_4_12) (found))
 :effect (and (not (at_4_12)) (near_3_12))
 :poss-effect (and (not (found)))
)

(:action move_toward_4_12_5_12
 :parameters ()
 :precondition (and (at_4_12) (found))
 :effect (and (not (at_4_12)) (near_5_12))
 :poss-effect (and (not (found)))
)

(:action move_toward_4_12_4_11
 :parameters ()
 :precondition (and (at_4_12) (found))
 :effect (and (not (at_4_12)) (near_4_11))
 :poss-effect (and (not (found)))
)

(:action move_toward_4_12_4_13
 :parameters ()
 :precondition (and (at_4_12) (found))
 :effect (and (not (at_4_12)) (near_4_13))
 :poss-effect (and (not (found)))
)

(:action move_toward_4_13_3_13
 :parameters ()
 :precondition (and (at_4_13) (found))
 :effect (and (not (at_4_13)) (near_3_13))
 :poss-effect (and (not (found)))
)

(:action move_toward_4_13_5_13
 :parameters ()
 :precondition (and (at_4_13) (found))
 :effect (and (not (at_4_13)) (near_5_13))
 :poss-effect (and (not (found)))
)

(:action move_toward_4_13_4_12
 :parameters ()
 :precondition (and (at_4_13) (found))
 :effect (and (not (at_4_13)) (near_4_12))
 :poss-effect (and (not (found)))
)

(:action move_toward_4_13_4_14
 :parameters ()
 :precondition (and (at_4_13) (found))
 :effect (and (not (at_4_13)) (near_4_14))
 :poss-effect (and (not (found)))
)

(:action move_toward_4_14_3_14
 :parameters ()
 :precondition (and (at_4_14) (found))
 :effect (and (not (at_4_14)) (near_3_14))
 :poss-effect (and (not (found)))
)

(:action move_toward_4_14_5_14
 :parameters ()
 :precondition (and (at_4_14) (found))
 :effect (and (not (at_4_14)) (near_5_14))
 :poss-effect (and (not (found)))
)

(:action move_toward_4_14_4_13
 :parameters ()
 :precondition (and (at_4_14) (found))
 :effect (and (not (at_4_14)) (near_4_13))
 :poss-effect (and (not (found)))
)

(:action move_toward_4_14_4_15
 :parameters ()
 :precondition (and (at_4_14) (found))
 :effect (and (not (at_4_14)) (near_4_15))
 :poss-effect (and (not (found)))
)

(:action move_toward_4_15_3_15
 :parameters ()
 :precondition (and (at_4_15) (found))
 :effect (and (not (at_4_15)) (near_3_15))
 :poss-effect (and (not (found)))
)

(:action move_toward_4_15_5_15
 :parameters ()
 :precondition (and (at_4_15) (found))
 :effect (and (not (at_4_15)) (near_5_15))
 :poss-effect (and (not (found)))
)

(:action move_toward_4_15_4_14
 :parameters ()
 :precondition (and (at_4_15) (found))
 :effect (and (not (at_4_15)) (near_4_14))
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

(:action move_toward_5_7_5_8
 :parameters ()
 :precondition (and (at_5_7) (found))
 :effect (and (not (at_5_7)) (near_5_8))
 :poss-effect (and (not (found)))
)

(:action move_toward_5_8_4_8
 :parameters ()
 :precondition (and (at_5_8) (found))
 :effect (and (not (at_5_8)) (near_4_8))
 :poss-effect (and (not (found)))
)

(:action move_toward_5_8_6_8
 :parameters ()
 :precondition (and (at_5_8) (found))
 :effect (and (not (at_5_8)) (near_6_8))
 :poss-effect (and (not (found)))
)

(:action move_toward_5_8_5_7
 :parameters ()
 :precondition (and (at_5_8) (found))
 :effect (and (not (at_5_8)) (near_5_7))
 :poss-effect (and (not (found)))
)

(:action move_toward_5_8_5_9
 :parameters ()
 :precondition (and (at_5_8) (found))
 :effect (and (not (at_5_8)) (near_5_9))
 :poss-effect (and (not (found)))
)

(:action move_toward_5_9_4_9
 :parameters ()
 :precondition (and (at_5_9) (found))
 :effect (and (not (at_5_9)) (near_4_9))
 :poss-effect (and (not (found)))
)

(:action move_toward_5_9_6_9
 :parameters ()
 :precondition (and (at_5_9) (found))
 :effect (and (not (at_5_9)) (near_6_9))
 :poss-effect (and (not (found)))
)

(:action move_toward_5_9_5_8
 :parameters ()
 :precondition (and (at_5_9) (found))
 :effect (and (not (at_5_9)) (near_5_8))
 :poss-effect (and (not (found)))
)

(:action move_toward_5_9_5_10
 :parameters ()
 :precondition (and (at_5_9) (found))
 :effect (and (not (at_5_9)) (near_5_10))
 :poss-effect (and (not (found)))
)

(:action move_toward_5_10_4_10
 :parameters ()
 :precondition (and (at_5_10) (found))
 :effect (and (not (at_5_10)) (near_4_10))
 :poss-effect (and (not (found)))
)

(:action move_toward_5_10_6_10
 :parameters ()
 :precondition (and (at_5_10) (found))
 :effect (and (not (at_5_10)) (near_6_10))
 :poss-effect (and (not (found)))
)

(:action move_toward_5_10_5_9
 :parameters ()
 :precondition (and (at_5_10) (found))
 :effect (and (not (at_5_10)) (near_5_9))
 :poss-effect (and (not (found)))
)

(:action move_toward_5_10_5_11
 :parameters ()
 :precondition (and (at_5_10) (found))
 :effect (and (not (at_5_10)) (near_5_11))
 :poss-effect (and (not (found)))
)

(:action move_toward_5_11_4_11
 :parameters ()
 :precondition (and (at_5_11) (found))
 :effect (and (not (at_5_11)) (near_4_11))
 :poss-effect (and (not (found)))
)

(:action move_toward_5_11_6_11
 :parameters ()
 :precondition (and (at_5_11) (found))
 :effect (and (not (at_5_11)) (near_6_11))
 :poss-effect (and (not (found)))
)

(:action move_toward_5_11_5_10
 :parameters ()
 :precondition (and (at_5_11) (found))
 :effect (and (not (at_5_11)) (near_5_10))
 :poss-effect (and (not (found)))
)

(:action move_toward_5_11_5_12
 :parameters ()
 :precondition (and (at_5_11) (found))
 :effect (and (not (at_5_11)) (near_5_12))
 :poss-effect (and (not (found)))
)

(:action move_toward_5_12_4_12
 :parameters ()
 :precondition (and (at_5_12) (found))
 :effect (and (not (at_5_12)) (near_4_12))
 :poss-effect (and (not (found)))
)

(:action move_toward_5_12_6_12
 :parameters ()
 :precondition (and (at_5_12) (found))
 :effect (and (not (at_5_12)) (near_6_12))
 :poss-effect (and (not (found)))
)

(:action move_toward_5_12_5_11
 :parameters ()
 :precondition (and (at_5_12) (found))
 :effect (and (not (at_5_12)) (near_5_11))
 :poss-effect (and (not (found)))
)

(:action move_toward_5_12_5_13
 :parameters ()
 :precondition (and (at_5_12) (found))
 :effect (and (not (at_5_12)) (near_5_13))
 :poss-effect (and (not (found)))
)

(:action move_toward_5_13_4_13
 :parameters ()
 :precondition (and (at_5_13) (found))
 :effect (and (not (at_5_13)) (near_4_13))
 :poss-effect (and (not (found)))
)

(:action move_toward_5_13_6_13
 :parameters ()
 :precondition (and (at_5_13) (found))
 :effect (and (not (at_5_13)) (near_6_13))
 :poss-effect (and (not (found)))
)

(:action move_toward_5_13_5_12
 :parameters ()
 :precondition (and (at_5_13) (found))
 :effect (and (not (at_5_13)) (near_5_12))
 :poss-effect (and (not (found)))
)

(:action move_toward_5_13_5_14
 :parameters ()
 :precondition (and (at_5_13) (found))
 :effect (and (not (at_5_13)) (near_5_14))
 :poss-effect (and (not (found)))
)

(:action move_toward_5_14_4_14
 :parameters ()
 :precondition (and (at_5_14) (found))
 :effect (and (not (at_5_14)) (near_4_14))
 :poss-effect (and (not (found)))
)

(:action move_toward_5_14_6_14
 :parameters ()
 :precondition (and (at_5_14) (found))
 :effect (and (not (at_5_14)) (near_6_14))
 :poss-effect (and (not (found)))
)

(:action move_toward_5_14_5_13
 :parameters ()
 :precondition (and (at_5_14) (found))
 :effect (and (not (at_5_14)) (near_5_13))
 :poss-effect (and (not (found)))
)

(:action move_toward_5_14_5_15
 :parameters ()
 :precondition (and (at_5_14) (found))
 :effect (and (not (at_5_14)) (near_5_15))
 :poss-effect (and (not (found)))
)

(:action move_toward_5_15_4_15
 :parameters ()
 :precondition (and (at_5_15) (found))
 :effect (and (not (at_5_15)) (near_4_15))
 :poss-effect (and (not (found)))
)

(:action move_toward_5_15_6_15
 :parameters ()
 :precondition (and (at_5_15) (found))
 :effect (and (not (at_5_15)) (near_6_15))
 :poss-effect (and (not (found)))
)

(:action move_toward_5_15_5_14
 :parameters ()
 :precondition (and (at_5_15) (found))
 :effect (and (not (at_5_15)) (near_5_14))
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

(:action move_toward_6_7_6_8
 :parameters ()
 :precondition (and (at_6_7) (found))
 :effect (and (not (at_6_7)) (near_6_8))
 :poss-effect (and (not (found)))
)

(:action move_toward_6_8_5_8
 :parameters ()
 :precondition (and (at_6_8) (found))
 :effect (and (not (at_6_8)) (near_5_8))
 :poss-effect (and (not (found)))
)

(:action move_toward_6_8_7_8
 :parameters ()
 :precondition (and (at_6_8) (found))
 :effect (and (not (at_6_8)) (near_7_8))
 :poss-effect (and (not (found)))
)

(:action move_toward_6_8_6_7
 :parameters ()
 :precondition (and (at_6_8) (found))
 :effect (and (not (at_6_8)) (near_6_7))
 :poss-effect (and (not (found)))
)

(:action move_toward_6_8_6_9
 :parameters ()
 :precondition (and (at_6_8) (found))
 :effect (and (not (at_6_8)) (near_6_9))
 :poss-effect (and (not (found)))
)

(:action move_toward_6_9_5_9
 :parameters ()
 :precondition (and (at_6_9) (found))
 :effect (and (not (at_6_9)) (near_5_9))
 :poss-effect (and (not (found)))
)

(:action move_toward_6_9_7_9
 :parameters ()
 :precondition (and (at_6_9) (found))
 :effect (and (not (at_6_9)) (near_7_9))
 :poss-effect (and (not (found)))
)

(:action move_toward_6_9_6_8
 :parameters ()
 :precondition (and (at_6_9) (found))
 :effect (and (not (at_6_9)) (near_6_8))
 :poss-effect (and (not (found)))
)

(:action move_toward_6_9_6_10
 :parameters ()
 :precondition (and (at_6_9) (found))
 :effect (and (not (at_6_9)) (near_6_10))
 :poss-effect (and (not (found)))
)

(:action move_toward_6_10_5_10
 :parameters ()
 :precondition (and (at_6_10) (found))
 :effect (and (not (at_6_10)) (near_5_10))
 :poss-effect (and (not (found)))
)

(:action move_toward_6_10_7_10
 :parameters ()
 :precondition (and (at_6_10) (found))
 :effect (and (not (at_6_10)) (near_7_10))
 :poss-effect (and (not (found)))
)

(:action move_toward_6_10_6_9
 :parameters ()
 :precondition (and (at_6_10) (found))
 :effect (and (not (at_6_10)) (near_6_9))
 :poss-effect (and (not (found)))
)

(:action move_toward_6_10_6_11
 :parameters ()
 :precondition (and (at_6_10) (found))
 :effect (and (not (at_6_10)) (near_6_11))
 :poss-effect (and (not (found)))
)

(:action move_toward_6_11_5_11
 :parameters ()
 :precondition (and (at_6_11) (found))
 :effect (and (not (at_6_11)) (near_5_11))
 :poss-effect (and (not (found)))
)

(:action move_toward_6_11_7_11
 :parameters ()
 :precondition (and (at_6_11) (found))
 :effect (and (not (at_6_11)) (near_7_11))
 :poss-effect (and (not (found)))
)

(:action move_toward_6_11_6_10
 :parameters ()
 :precondition (and (at_6_11) (found))
 :effect (and (not (at_6_11)) (near_6_10))
 :poss-effect (and (not (found)))
)

(:action move_toward_6_11_6_12
 :parameters ()
 :precondition (and (at_6_11) (found))
 :effect (and (not (at_6_11)) (near_6_12))
 :poss-effect (and (not (found)))
)

(:action move_toward_6_12_5_12
 :parameters ()
 :precondition (and (at_6_12) (found))
 :effect (and (not (at_6_12)) (near_5_12))
 :poss-effect (and (not (found)))
)

(:action move_toward_6_12_7_12
 :parameters ()
 :precondition (and (at_6_12) (found))
 :effect (and (not (at_6_12)) (near_7_12))
 :poss-effect (and (not (found)))
)

(:action move_toward_6_12_6_11
 :parameters ()
 :precondition (and (at_6_12) (found))
 :effect (and (not (at_6_12)) (near_6_11))
 :poss-effect (and (not (found)))
)

(:action move_toward_6_12_6_13
 :parameters ()
 :precondition (and (at_6_12) (found))
 :effect (and (not (at_6_12)) (near_6_13))
 :poss-effect (and (not (found)))
)

(:action move_toward_6_13_5_13
 :parameters ()
 :precondition (and (at_6_13) (found))
 :effect (and (not (at_6_13)) (near_5_13))
 :poss-effect (and (not (found)))
)

(:action move_toward_6_13_7_13
 :parameters ()
 :precondition (and (at_6_13) (found))
 :effect (and (not (at_6_13)) (near_7_13))
 :poss-effect (and (not (found)))
)

(:action move_toward_6_13_6_12
 :parameters ()
 :precondition (and (at_6_13) (found))
 :effect (and (not (at_6_13)) (near_6_12))
 :poss-effect (and (not (found)))
)

(:action move_toward_6_13_6_14
 :parameters ()
 :precondition (and (at_6_13) (found))
 :effect (and (not (at_6_13)) (near_6_14))
 :poss-effect (and (not (found)))
)

(:action move_toward_6_14_5_14
 :parameters ()
 :precondition (and (at_6_14) (found))
 :effect (and (not (at_6_14)) (near_5_14))
 :poss-effect (and (not (found)))
)

(:action move_toward_6_14_7_14
 :parameters ()
 :precondition (and (at_6_14) (found))
 :effect (and (not (at_6_14)) (near_7_14))
 :poss-effect (and (not (found)))
)

(:action move_toward_6_14_6_13
 :parameters ()
 :precondition (and (at_6_14) (found))
 :effect (and (not (at_6_14)) (near_6_13))
 :poss-effect (and (not (found)))
)

(:action move_toward_6_14_6_15
 :parameters ()
 :precondition (and (at_6_14) (found))
 :effect (and (not (at_6_14)) (near_6_15))
 :poss-effect (and (not (found)))
)

(:action move_toward_6_15_5_15
 :parameters ()
 :precondition (and (at_6_15) (found))
 :effect (and (not (at_6_15)) (near_5_15))
 :poss-effect (and (not (found)))
)

(:action move_toward_6_15_7_15
 :parameters ()
 :precondition (and (at_6_15) (found))
 :effect (and (not (at_6_15)) (near_7_15))
 :poss-effect (and (not (found)))
)

(:action move_toward_6_15_6_14
 :parameters ()
 :precondition (and (at_6_15) (found))
 :effect (and (not (at_6_15)) (near_6_14))
 :poss-effect (and (not (found)))
)

(:action move_toward_7_0_6_0
 :parameters ()
 :precondition (and (at_7_0) (found))
 :effect (and (not (at_7_0)) (near_6_0))
 :poss-effect (and (not (found)))
)

(:action move_toward_7_0_8_0
 :parameters ()
 :precondition (and (at_7_0) (found))
 :effect (and (not (at_7_0)) (near_8_0))
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

(:action move_toward_7_1_8_1
 :parameters ()
 :precondition (and (at_7_1) (found))
 :effect (and (not (at_7_1)) (near_8_1))
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

(:action move_toward_7_2_8_2
 :parameters ()
 :precondition (and (at_7_2) (found))
 :effect (and (not (at_7_2)) (near_8_2))
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

(:action move_toward_7_3_8_3
 :parameters ()
 :precondition (and (at_7_3) (found))
 :effect (and (not (at_7_3)) (near_8_3))
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

(:action move_toward_7_4_8_4
 :parameters ()
 :precondition (and (at_7_4) (found))
 :effect (and (not (at_7_4)) (near_8_4))
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

(:action move_toward_7_5_8_5
 :parameters ()
 :precondition (and (at_7_5) (found))
 :effect (and (not (at_7_5)) (near_8_5))
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

(:action move_toward_7_6_8_6
 :parameters ()
 :precondition (and (at_7_6) (found))
 :effect (and (not (at_7_6)) (near_8_6))
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

(:action move_toward_7_7_8_7
 :parameters ()
 :precondition (and (at_7_7) (found))
 :effect (and (not (at_7_7)) (near_8_7))
 :poss-effect (and (not (found)))
)

(:action move_toward_7_7_7_6
 :parameters ()
 :precondition (and (at_7_7) (found))
 :effect (and (not (at_7_7)) (near_7_6))
 :poss-effect (and (not (found)))
)

(:action move_toward_7_7_7_8
 :parameters ()
 :precondition (and (at_7_7) (found))
 :effect (and (not (at_7_7)) (near_7_8))
 :poss-effect (and (not (found)))
)

(:action move_toward_7_8_6_8
 :parameters ()
 :precondition (and (at_7_8) (found))
 :effect (and (not (at_7_8)) (near_6_8))
 :poss-effect (and (not (found)))
)

(:action move_toward_7_8_8_8
 :parameters ()
 :precondition (and (at_7_8) (found))
 :effect (and (not (at_7_8)) (near_8_8))
 :poss-effect (and (not (found)))
)

(:action move_toward_7_8_7_7
 :parameters ()
 :precondition (and (at_7_8) (found))
 :effect (and (not (at_7_8)) (near_7_7))
 :poss-effect (and (not (found)))
)

(:action move_toward_7_8_7_9
 :parameters ()
 :precondition (and (at_7_8) (found))
 :effect (and (not (at_7_8)) (near_7_9))
 :poss-effect (and (not (found)))
)

(:action move_toward_7_9_6_9
 :parameters ()
 :precondition (and (at_7_9) (found))
 :effect (and (not (at_7_9)) (near_6_9))
 :poss-effect (and (not (found)))
)

(:action move_toward_7_9_8_9
 :parameters ()
 :precondition (and (at_7_9) (found))
 :effect (and (not (at_7_9)) (near_8_9))
 :poss-effect (and (not (found)))
)

(:action move_toward_7_9_7_8
 :parameters ()
 :precondition (and (at_7_9) (found))
 :effect (and (not (at_7_9)) (near_7_8))
 :poss-effect (and (not (found)))
)

(:action move_toward_7_9_7_10
 :parameters ()
 :precondition (and (at_7_9) (found))
 :effect (and (not (at_7_9)) (near_7_10))
 :poss-effect (and (not (found)))
)

(:action move_toward_7_10_6_10
 :parameters ()
 :precondition (and (at_7_10) (found))
 :effect (and (not (at_7_10)) (near_6_10))
 :poss-effect (and (not (found)))
)

(:action move_toward_7_10_8_10
 :parameters ()
 :precondition (and (at_7_10) (found))
 :effect (and (not (at_7_10)) (near_8_10))
 :poss-effect (and (not (found)))
)

(:action move_toward_7_10_7_9
 :parameters ()
 :precondition (and (at_7_10) (found))
 :effect (and (not (at_7_10)) (near_7_9))
 :poss-effect (and (not (found)))
)

(:action move_toward_7_10_7_11
 :parameters ()
 :precondition (and (at_7_10) (found))
 :effect (and (not (at_7_10)) (near_7_11))
 :poss-effect (and (not (found)))
)

(:action move_toward_7_11_6_11
 :parameters ()
 :precondition (and (at_7_11) (found))
 :effect (and (not (at_7_11)) (near_6_11))
 :poss-effect (and (not (found)))
)

(:action move_toward_7_11_8_11
 :parameters ()
 :precondition (and (at_7_11) (found))
 :effect (and (not (at_7_11)) (near_8_11))
 :poss-effect (and (not (found)))
)

(:action move_toward_7_11_7_10
 :parameters ()
 :precondition (and (at_7_11) (found))
 :effect (and (not (at_7_11)) (near_7_10))
 :poss-effect (and (not (found)))
)

(:action move_toward_7_11_7_12
 :parameters ()
 :precondition (and (at_7_11) (found))
 :effect (and (not (at_7_11)) (near_7_12))
 :poss-effect (and (not (found)))
)

(:action move_toward_7_12_6_12
 :parameters ()
 :precondition (and (at_7_12) (found))
 :effect (and (not (at_7_12)) (near_6_12))
 :poss-effect (and (not (found)))
)

(:action move_toward_7_12_8_12
 :parameters ()
 :precondition (and (at_7_12) (found))
 :effect (and (not (at_7_12)) (near_8_12))
 :poss-effect (and (not (found)))
)

(:action move_toward_7_12_7_11
 :parameters ()
 :precondition (and (at_7_12) (found))
 :effect (and (not (at_7_12)) (near_7_11))
 :poss-effect (and (not (found)))
)

(:action move_toward_7_12_7_13
 :parameters ()
 :precondition (and (at_7_12) (found))
 :effect (and (not (at_7_12)) (near_7_13))
 :poss-effect (and (not (found)))
)

(:action move_toward_7_13_6_13
 :parameters ()
 :precondition (and (at_7_13) (found))
 :effect (and (not (at_7_13)) (near_6_13))
 :poss-effect (and (not (found)))
)

(:action move_toward_7_13_8_13
 :parameters ()
 :precondition (and (at_7_13) (found))
 :effect (and (not (at_7_13)) (near_8_13))
 :poss-effect (and (not (found)))
)

(:action move_toward_7_13_7_12
 :parameters ()
 :precondition (and (at_7_13) (found))
 :effect (and (not (at_7_13)) (near_7_12))
 :poss-effect (and (not (found)))
)

(:action move_toward_7_13_7_14
 :parameters ()
 :precondition (and (at_7_13) (found))
 :effect (and (not (at_7_13)) (near_7_14))
 :poss-effect (and (not (found)))
)

(:action move_toward_7_14_6_14
 :parameters ()
 :precondition (and (at_7_14) (found))
 :effect (and (not (at_7_14)) (near_6_14))
 :poss-effect (and (not (found)))
)

(:action move_toward_7_14_8_14
 :parameters ()
 :precondition (and (at_7_14) (found))
 :effect (and (not (at_7_14)) (near_8_14))
 :poss-effect (and (not (found)))
)

(:action move_toward_7_14_7_13
 :parameters ()
 :precondition (and (at_7_14) (found))
 :effect (and (not (at_7_14)) (near_7_13))
 :poss-effect (and (not (found)))
)

(:action move_toward_7_14_7_15
 :parameters ()
 :precondition (and (at_7_14) (found))
 :effect (and (not (at_7_14)) (near_7_15))
 :poss-effect (and (not (found)))
)

(:action move_toward_7_15_6_15
 :parameters ()
 :precondition (and (at_7_15) (found))
 :effect (and (not (at_7_15)) (near_6_15))
 :poss-effect (and (not (found)))
)

(:action move_toward_7_15_8_15
 :parameters ()
 :precondition (and (at_7_15) (found))
 :effect (and (not (at_7_15)) (near_8_15))
 :poss-effect (and (not (found)))
)

(:action move_toward_7_15_7_14
 :parameters ()
 :precondition (and (at_7_15) (found))
 :effect (and (not (at_7_15)) (near_7_14))
 :poss-effect (and (not (found)))
)

(:action move_toward_8_0_7_0
 :parameters ()
 :precondition (and (at_8_0) (found))
 :effect (and (not (at_8_0)) (near_7_0))
 :poss-effect (and (not (found)))
)

(:action move_toward_8_0_9_0
 :parameters ()
 :precondition (and (at_8_0) (found))
 :effect (and (not (at_8_0)) (near_9_0))
 :poss-effect (and (not (found)))
)

(:action move_toward_8_0_8_1
 :parameters ()
 :precondition (and (at_8_0) (found))
 :effect (and (not (at_8_0)) (near_8_1))
 :poss-effect (and (not (found)))
)

(:action move_toward_8_1_7_1
 :parameters ()
 :precondition (and (at_8_1) (found))
 :effect (and (not (at_8_1)) (near_7_1))
 :poss-effect (and (not (found)))
)

(:action move_toward_8_1_9_1
 :parameters ()
 :precondition (and (at_8_1) (found))
 :effect (and (not (at_8_1)) (near_9_1))
 :poss-effect (and (not (found)))
)

(:action move_toward_8_1_8_0
 :parameters ()
 :precondition (and (at_8_1) (found))
 :effect (and (not (at_8_1)) (near_8_0))
 :poss-effect (and (not (found)))
)

(:action move_toward_8_1_8_2
 :parameters ()
 :precondition (and (at_8_1) (found))
 :effect (and (not (at_8_1)) (near_8_2))
 :poss-effect (and (not (found)))
)

(:action move_toward_8_2_7_2
 :parameters ()
 :precondition (and (at_8_2) (found))
 :effect (and (not (at_8_2)) (near_7_2))
 :poss-effect (and (not (found)))
)

(:action move_toward_8_2_9_2
 :parameters ()
 :precondition (and (at_8_2) (found))
 :effect (and (not (at_8_2)) (near_9_2))
 :poss-effect (and (not (found)))
)

(:action move_toward_8_2_8_1
 :parameters ()
 :precondition (and (at_8_2) (found))
 :effect (and (not (at_8_2)) (near_8_1))
 :poss-effect (and (not (found)))
)

(:action move_toward_8_2_8_3
 :parameters ()
 :precondition (and (at_8_2) (found))
 :effect (and (not (at_8_2)) (near_8_3))
 :poss-effect (and (not (found)))
)

(:action move_toward_8_3_7_3
 :parameters ()
 :precondition (and (at_8_3) (found))
 :effect (and (not (at_8_3)) (near_7_3))
 :poss-effect (and (not (found)))
)

(:action move_toward_8_3_9_3
 :parameters ()
 :precondition (and (at_8_3) (found))
 :effect (and (not (at_8_3)) (near_9_3))
 :poss-effect (and (not (found)))
)

(:action move_toward_8_3_8_2
 :parameters ()
 :precondition (and (at_8_3) (found))
 :effect (and (not (at_8_3)) (near_8_2))
 :poss-effect (and (not (found)))
)

(:action move_toward_8_3_8_4
 :parameters ()
 :precondition (and (at_8_3) (found))
 :effect (and (not (at_8_3)) (near_8_4))
 :poss-effect (and (not (found)))
)

(:action move_toward_8_4_7_4
 :parameters ()
 :precondition (and (at_8_4) (found))
 :effect (and (not (at_8_4)) (near_7_4))
 :poss-effect (and (not (found)))
)

(:action move_toward_8_4_9_4
 :parameters ()
 :precondition (and (at_8_4) (found))
 :effect (and (not (at_8_4)) (near_9_4))
 :poss-effect (and (not (found)))
)

(:action move_toward_8_4_8_3
 :parameters ()
 :precondition (and (at_8_4) (found))
 :effect (and (not (at_8_4)) (near_8_3))
 :poss-effect (and (not (found)))
)

(:action move_toward_8_4_8_5
 :parameters ()
 :precondition (and (at_8_4) (found))
 :effect (and (not (at_8_4)) (near_8_5))
 :poss-effect (and (not (found)))
)

(:action move_toward_8_5_7_5
 :parameters ()
 :precondition (and (at_8_5) (found))
 :effect (and (not (at_8_5)) (near_7_5))
 :poss-effect (and (not (found)))
)

(:action move_toward_8_5_9_5
 :parameters ()
 :precondition (and (at_8_5) (found))
 :effect (and (not (at_8_5)) (near_9_5))
 :poss-effect (and (not (found)))
)

(:action move_toward_8_5_8_4
 :parameters ()
 :precondition (and (at_8_5) (found))
 :effect (and (not (at_8_5)) (near_8_4))
 :poss-effect (and (not (found)))
)

(:action move_toward_8_5_8_6
 :parameters ()
 :precondition (and (at_8_5) (found))
 :effect (and (not (at_8_5)) (near_8_6))
 :poss-effect (and (not (found)))
)

(:action move_toward_8_6_7_6
 :parameters ()
 :precondition (and (at_8_6) (found))
 :effect (and (not (at_8_6)) (near_7_6))
 :poss-effect (and (not (found)))
)

(:action move_toward_8_6_9_6
 :parameters ()
 :precondition (and (at_8_6) (found))
 :effect (and (not (at_8_6)) (near_9_6))
 :poss-effect (and (not (found)))
)

(:action move_toward_8_6_8_5
 :parameters ()
 :precondition (and (at_8_6) (found))
 :effect (and (not (at_8_6)) (near_8_5))
 :poss-effect (and (not (found)))
)

(:action move_toward_8_6_8_7
 :parameters ()
 :precondition (and (at_8_6) (found))
 :effect (and (not (at_8_6)) (near_8_7))
 :poss-effect (and (not (found)))
)

(:action move_toward_8_7_7_7
 :parameters ()
 :precondition (and (at_8_7) (found))
 :effect (and (not (at_8_7)) (near_7_7))
 :poss-effect (and (not (found)))
)

(:action move_toward_8_7_9_7
 :parameters ()
 :precondition (and (at_8_7) (found))
 :effect (and (not (at_8_7)) (near_9_7))
 :poss-effect (and (not (found)))
)

(:action move_toward_8_7_8_6
 :parameters ()
 :precondition (and (at_8_7) (found))
 :effect (and (not (at_8_7)) (near_8_6))
 :poss-effect (and (not (found)))
)

(:action move_toward_8_7_8_8
 :parameters ()
 :precondition (and (at_8_7) (found))
 :effect (and (not (at_8_7)) (near_8_8))
 :poss-effect (and (not (found)))
)

(:action move_toward_8_8_7_8
 :parameters ()
 :precondition (and (at_8_8) (found))
 :effect (and (not (at_8_8)) (near_7_8))
 :poss-effect (and (not (found)))
)

(:action move_toward_8_8_9_8
 :parameters ()
 :precondition (and (at_8_8) (found))
 :effect (and (not (at_8_8)) (near_9_8))
 :poss-effect (and (not (found)))
)

(:action move_toward_8_8_8_7
 :parameters ()
 :precondition (and (at_8_8) (found))
 :effect (and (not (at_8_8)) (near_8_7))
 :poss-effect (and (not (found)))
)

(:action move_toward_8_8_8_9
 :parameters ()
 :precondition (and (at_8_8) (found))
 :effect (and (not (at_8_8)) (near_8_9))
 :poss-effect (and (not (found)))
)

(:action move_toward_8_9_7_9
 :parameters ()
 :precondition (and (at_8_9) (found))
 :effect (and (not (at_8_9)) (near_7_9))
 :poss-effect (and (not (found)))
)

(:action move_toward_8_9_9_9
 :parameters ()
 :precondition (and (at_8_9) (found))
 :effect (and (not (at_8_9)) (near_9_9))
 :poss-effect (and (not (found)))
)

(:action move_toward_8_9_8_8
 :parameters ()
 :precondition (and (at_8_9) (found))
 :effect (and (not (at_8_9)) (near_8_8))
 :poss-effect (and (not (found)))
)

(:action move_toward_8_9_8_10
 :parameters ()
 :precondition (and (at_8_9) (found))
 :effect (and (not (at_8_9)) (near_8_10))
 :poss-effect (and (not (found)))
)

(:action move_toward_8_10_7_10
 :parameters ()
 :precondition (and (at_8_10) (found))
 :effect (and (not (at_8_10)) (near_7_10))
 :poss-effect (and (not (found)))
)

(:action move_toward_8_10_9_10
 :parameters ()
 :precondition (and (at_8_10) (found))
 :effect (and (not (at_8_10)) (near_9_10))
 :poss-effect (and (not (found)))
)

(:action move_toward_8_10_8_9
 :parameters ()
 :precondition (and (at_8_10) (found))
 :effect (and (not (at_8_10)) (near_8_9))
 :poss-effect (and (not (found)))
)

(:action move_toward_8_10_8_11
 :parameters ()
 :precondition (and (at_8_10) (found))
 :effect (and (not (at_8_10)) (near_8_11))
 :poss-effect (and (not (found)))
)

(:action move_toward_8_11_7_11
 :parameters ()
 :precondition (and (at_8_11) (found))
 :effect (and (not (at_8_11)) (near_7_11))
 :poss-effect (and (not (found)))
)

(:action move_toward_8_11_9_11
 :parameters ()
 :precondition (and (at_8_11) (found))
 :effect (and (not (at_8_11)) (near_9_11))
 :poss-effect (and (not (found)))
)

(:action move_toward_8_11_8_10
 :parameters ()
 :precondition (and (at_8_11) (found))
 :effect (and (not (at_8_11)) (near_8_10))
 :poss-effect (and (not (found)))
)

(:action move_toward_8_11_8_12
 :parameters ()
 :precondition (and (at_8_11) (found))
 :effect (and (not (at_8_11)) (near_8_12))
 :poss-effect (and (not (found)))
)

(:action move_toward_8_12_7_12
 :parameters ()
 :precondition (and (at_8_12) (found))
 :effect (and (not (at_8_12)) (near_7_12))
 :poss-effect (and (not (found)))
)

(:action move_toward_8_12_9_12
 :parameters ()
 :precondition (and (at_8_12) (found))
 :effect (and (not (at_8_12)) (near_9_12))
 :poss-effect (and (not (found)))
)

(:action move_toward_8_12_8_11
 :parameters ()
 :precondition (and (at_8_12) (found))
 :effect (and (not (at_8_12)) (near_8_11))
 :poss-effect (and (not (found)))
)

(:action move_toward_8_12_8_13
 :parameters ()
 :precondition (and (at_8_12) (found))
 :effect (and (not (at_8_12)) (near_8_13))
 :poss-effect (and (not (found)))
)

(:action move_toward_8_13_7_13
 :parameters ()
 :precondition (and (at_8_13) (found))
 :effect (and (not (at_8_13)) (near_7_13))
 :poss-effect (and (not (found)))
)

(:action move_toward_8_13_9_13
 :parameters ()
 :precondition (and (at_8_13) (found))
 :effect (and (not (at_8_13)) (near_9_13))
 :poss-effect (and (not (found)))
)

(:action move_toward_8_13_8_12
 :parameters ()
 :precondition (and (at_8_13) (found))
 :effect (and (not (at_8_13)) (near_8_12))
 :poss-effect (and (not (found)))
)

(:action move_toward_8_13_8_14
 :parameters ()
 :precondition (and (at_8_13) (found))
 :effect (and (not (at_8_13)) (near_8_14))
 :poss-effect (and (not (found)))
)

(:action move_toward_8_14_7_14
 :parameters ()
 :precondition (and (at_8_14) (found))
 :effect (and (not (at_8_14)) (near_7_14))
 :poss-effect (and (not (found)))
)

(:action move_toward_8_14_9_14
 :parameters ()
 :precondition (and (at_8_14) (found))
 :effect (and (not (at_8_14)) (near_9_14))
 :poss-effect (and (not (found)))
)

(:action move_toward_8_14_8_13
 :parameters ()
 :precondition (and (at_8_14) (found))
 :effect (and (not (at_8_14)) (near_8_13))
 :poss-effect (and (not (found)))
)

(:action move_toward_8_14_8_15
 :parameters ()
 :precondition (and (at_8_14) (found))
 :effect (and (not (at_8_14)) (near_8_15))
 :poss-effect (and (not (found)))
)

(:action move_toward_8_15_7_15
 :parameters ()
 :precondition (and (at_8_15) (found))
 :effect (and (not (at_8_15)) (near_7_15))
 :poss-effect (and (not (found)))
)

(:action move_toward_8_15_9_15
 :parameters ()
 :precondition (and (at_8_15) (found))
 :effect (and (not (at_8_15)) (near_9_15))
 :poss-effect (and (not (found)))
)

(:action move_toward_8_15_8_14
 :parameters ()
 :precondition (and (at_8_15) (found))
 :effect (and (not (at_8_15)) (near_8_14))
 :poss-effect (and (not (found)))
)

(:action move_toward_9_0_8_0
 :parameters ()
 :precondition (and (at_9_0) (found))
 :effect (and (not (at_9_0)) (near_8_0))
 :poss-effect (and (not (found)))
)

(:action move_toward_9_0_10_0
 :parameters ()
 :precondition (and (at_9_0) (found))
 :effect (and (not (at_9_0)) (near_10_0))
 :poss-effect (and (not (found)))
)

(:action move_toward_9_0_9_1
 :parameters ()
 :precondition (and (at_9_0) (found))
 :effect (and (not (at_9_0)) (near_9_1))
 :poss-effect (and (not (found)))
)

(:action move_toward_9_1_8_1
 :parameters ()
 :precondition (and (at_9_1) (found))
 :effect (and (not (at_9_1)) (near_8_1))
 :poss-effect (and (not (found)))
)

(:action move_toward_9_1_10_1
 :parameters ()
 :precondition (and (at_9_1) (found))
 :effect (and (not (at_9_1)) (near_10_1))
 :poss-effect (and (not (found)))
)

(:action move_toward_9_1_9_0
 :parameters ()
 :precondition (and (at_9_1) (found))
 :effect (and (not (at_9_1)) (near_9_0))
 :poss-effect (and (not (found)))
)

(:action move_toward_9_1_9_2
 :parameters ()
 :precondition (and (at_9_1) (found))
 :effect (and (not (at_9_1)) (near_9_2))
 :poss-effect (and (not (found)))
)

(:action move_toward_9_2_8_2
 :parameters ()
 :precondition (and (at_9_2) (found))
 :effect (and (not (at_9_2)) (near_8_2))
 :poss-effect (and (not (found)))
)

(:action move_toward_9_2_10_2
 :parameters ()
 :precondition (and (at_9_2) (found))
 :effect (and (not (at_9_2)) (near_10_2))
 :poss-effect (and (not (found)))
)

(:action move_toward_9_2_9_1
 :parameters ()
 :precondition (and (at_9_2) (found))
 :effect (and (not (at_9_2)) (near_9_1))
 :poss-effect (and (not (found)))
)

(:action move_toward_9_2_9_3
 :parameters ()
 :precondition (and (at_9_2) (found))
 :effect (and (not (at_9_2)) (near_9_3))
 :poss-effect (and (not (found)))
)

(:action move_toward_9_3_8_3
 :parameters ()
 :precondition (and (at_9_3) (found))
 :effect (and (not (at_9_3)) (near_8_3))
 :poss-effect (and (not (found)))
)

(:action move_toward_9_3_10_3
 :parameters ()
 :precondition (and (at_9_3) (found))
 :effect (and (not (at_9_3)) (near_10_3))
 :poss-effect (and (not (found)))
)

(:action move_toward_9_3_9_2
 :parameters ()
 :precondition (and (at_9_3) (found))
 :effect (and (not (at_9_3)) (near_9_2))
 :poss-effect (and (not (found)))
)

(:action move_toward_9_3_9_4
 :parameters ()
 :precondition (and (at_9_3) (found))
 :effect (and (not (at_9_3)) (near_9_4))
 :poss-effect (and (not (found)))
)

(:action move_toward_9_4_8_4
 :parameters ()
 :precondition (and (at_9_4) (found))
 :effect (and (not (at_9_4)) (near_8_4))
 :poss-effect (and (not (found)))
)

(:action move_toward_9_4_10_4
 :parameters ()
 :precondition (and (at_9_4) (found))
 :effect (and (not (at_9_4)) (near_10_4))
 :poss-effect (and (not (found)))
)

(:action move_toward_9_4_9_3
 :parameters ()
 :precondition (and (at_9_4) (found))
 :effect (and (not (at_9_4)) (near_9_3))
 :poss-effect (and (not (found)))
)

(:action move_toward_9_4_9_5
 :parameters ()
 :precondition (and (at_9_4) (found))
 :effect (and (not (at_9_4)) (near_9_5))
 :poss-effect (and (not (found)))
)

(:action move_toward_9_5_8_5
 :parameters ()
 :precondition (and (at_9_5) (found))
 :effect (and (not (at_9_5)) (near_8_5))
 :poss-effect (and (not (found)))
)

(:action move_toward_9_5_10_5
 :parameters ()
 :precondition (and (at_9_5) (found))
 :effect (and (not (at_9_5)) (near_10_5))
 :poss-effect (and (not (found)))
)

(:action move_toward_9_5_9_4
 :parameters ()
 :precondition (and (at_9_5) (found))
 :effect (and (not (at_9_5)) (near_9_4))
 :poss-effect (and (not (found)))
)

(:action move_toward_9_5_9_6
 :parameters ()
 :precondition (and (at_9_5) (found))
 :effect (and (not (at_9_5)) (near_9_6))
 :poss-effect (and (not (found)))
)

(:action move_toward_9_6_8_6
 :parameters ()
 :precondition (and (at_9_6) (found))
 :effect (and (not (at_9_6)) (near_8_6))
 :poss-effect (and (not (found)))
)

(:action move_toward_9_6_10_6
 :parameters ()
 :precondition (and (at_9_6) (found))
 :effect (and (not (at_9_6)) (near_10_6))
 :poss-effect (and (not (found)))
)

(:action move_toward_9_6_9_5
 :parameters ()
 :precondition (and (at_9_6) (found))
 :effect (and (not (at_9_6)) (near_9_5))
 :poss-effect (and (not (found)))
)

(:action move_toward_9_6_9_7
 :parameters ()
 :precondition (and (at_9_6) (found))
 :effect (and (not (at_9_6)) (near_9_7))
 :poss-effect (and (not (found)))
)

(:action move_toward_9_7_8_7
 :parameters ()
 :precondition (and (at_9_7) (found))
 :effect (and (not (at_9_7)) (near_8_7))
 :poss-effect (and (not (found)))
)

(:action move_toward_9_7_10_7
 :parameters ()
 :precondition (and (at_9_7) (found))
 :effect (and (not (at_9_7)) (near_10_7))
 :poss-effect (and (not (found)))
)

(:action move_toward_9_7_9_6
 :parameters ()
 :precondition (and (at_9_7) (found))
 :effect (and (not (at_9_7)) (near_9_6))
 :poss-effect (and (not (found)))
)

(:action move_toward_9_7_9_8
 :parameters ()
 :precondition (and (at_9_7) (found))
 :effect (and (not (at_9_7)) (near_9_8))
 :poss-effect (and (not (found)))
)

(:action move_toward_9_8_8_8
 :parameters ()
 :precondition (and (at_9_8) (found))
 :effect (and (not (at_9_8)) (near_8_8))
 :poss-effect (and (not (found)))
)

(:action move_toward_9_8_10_8
 :parameters ()
 :precondition (and (at_9_8) (found))
 :effect (and (not (at_9_8)) (near_10_8))
 :poss-effect (and (not (found)))
)

(:action move_toward_9_8_9_7
 :parameters ()
 :precondition (and (at_9_8) (found))
 :effect (and (not (at_9_8)) (near_9_7))
 :poss-effect (and (not (found)))
)

(:action move_toward_9_8_9_9
 :parameters ()
 :precondition (and (at_9_8) (found))
 :effect (and (not (at_9_8)) (near_9_9))
 :poss-effect (and (not (found)))
)

(:action move_toward_9_9_8_9
 :parameters ()
 :precondition (and (at_9_9) (found))
 :effect (and (not (at_9_9)) (near_8_9))
 :poss-effect (and (not (found)))
)

(:action move_toward_9_9_10_9
 :parameters ()
 :precondition (and (at_9_9) (found))
 :effect (and (not (at_9_9)) (near_10_9))
 :poss-effect (and (not (found)))
)

(:action move_toward_9_9_9_8
 :parameters ()
 :precondition (and (at_9_9) (found))
 :effect (and (not (at_9_9)) (near_9_8))
 :poss-effect (and (not (found)))
)

(:action move_toward_9_9_9_10
 :parameters ()
 :precondition (and (at_9_9) (found))
 :effect (and (not (at_9_9)) (near_9_10))
 :poss-effect (and (not (found)))
)

(:action move_toward_9_10_8_10
 :parameters ()
 :precondition (and (at_9_10) (found))
 :effect (and (not (at_9_10)) (near_8_10))
 :poss-effect (and (not (found)))
)

(:action move_toward_9_10_10_10
 :parameters ()
 :precondition (and (at_9_10) (found))
 :effect (and (not (at_9_10)) (near_10_10))
 :poss-effect (and (not (found)))
)

(:action move_toward_9_10_9_9
 :parameters ()
 :precondition (and (at_9_10) (found))
 :effect (and (not (at_9_10)) (near_9_9))
 :poss-effect (and (not (found)))
)

(:action move_toward_9_10_9_11
 :parameters ()
 :precondition (and (at_9_10) (found))
 :effect (and (not (at_9_10)) (near_9_11))
 :poss-effect (and (not (found)))
)

(:action move_toward_9_11_8_11
 :parameters ()
 :precondition (and (at_9_11) (found))
 :effect (and (not (at_9_11)) (near_8_11))
 :poss-effect (and (not (found)))
)

(:action move_toward_9_11_10_11
 :parameters ()
 :precondition (and (at_9_11) (found))
 :effect (and (not (at_9_11)) (near_10_11))
 :poss-effect (and (not (found)))
)

(:action move_toward_9_11_9_10
 :parameters ()
 :precondition (and (at_9_11) (found))
 :effect (and (not (at_9_11)) (near_9_10))
 :poss-effect (and (not (found)))
)

(:action move_toward_9_11_9_12
 :parameters ()
 :precondition (and (at_9_11) (found))
 :effect (and (not (at_9_11)) (near_9_12))
 :poss-effect (and (not (found)))
)

(:action move_toward_9_12_8_12
 :parameters ()
 :precondition (and (at_9_12) (found))
 :effect (and (not (at_9_12)) (near_8_12))
 :poss-effect (and (not (found)))
)

(:action move_toward_9_12_10_12
 :parameters ()
 :precondition (and (at_9_12) (found))
 :effect (and (not (at_9_12)) (near_10_12))
 :poss-effect (and (not (found)))
)

(:action move_toward_9_12_9_11
 :parameters ()
 :precondition (and (at_9_12) (found))
 :effect (and (not (at_9_12)) (near_9_11))
 :poss-effect (and (not (found)))
)

(:action move_toward_9_12_9_13
 :parameters ()
 :precondition (and (at_9_12) (found))
 :effect (and (not (at_9_12)) (near_9_13))
 :poss-effect (and (not (found)))
)

(:action move_toward_9_13_8_13
 :parameters ()
 :precondition (and (at_9_13) (found))
 :effect (and (not (at_9_13)) (near_8_13))
 :poss-effect (and (not (found)))
)

(:action move_toward_9_13_10_13
 :parameters ()
 :precondition (and (at_9_13) (found))
 :effect (and (not (at_9_13)) (near_10_13))
 :poss-effect (and (not (found)))
)

(:action move_toward_9_13_9_12
 :parameters ()
 :precondition (and (at_9_13) (found))
 :effect (and (not (at_9_13)) (near_9_12))
 :poss-effect (and (not (found)))
)

(:action move_toward_9_13_9_14
 :parameters ()
 :precondition (and (at_9_13) (found))
 :effect (and (not (at_9_13)) (near_9_14))
 :poss-effect (and (not (found)))
)

(:action move_toward_9_14_8_14
 :parameters ()
 :precondition (and (at_9_14) (found))
 :effect (and (not (at_9_14)) (near_8_14))
 :poss-effect (and (not (found)))
)

(:action move_toward_9_14_10_14
 :parameters ()
 :precondition (and (at_9_14) (found))
 :effect (and (not (at_9_14)) (near_10_14))
 :poss-effect (and (not (found)))
)

(:action move_toward_9_14_9_13
 :parameters ()
 :precondition (and (at_9_14) (found))
 :effect (and (not (at_9_14)) (near_9_13))
 :poss-effect (and (not (found)))
)

(:action move_toward_9_14_9_15
 :parameters ()
 :precondition (and (at_9_14) (found))
 :effect (and (not (at_9_14)) (near_9_15))
 :poss-effect (and (not (found)))
)

(:action move_toward_9_15_8_15
 :parameters ()
 :precondition (and (at_9_15) (found))
 :effect (and (not (at_9_15)) (near_8_15))
 :poss-effect (and (not (found)))
)

(:action move_toward_9_15_10_15
 :parameters ()
 :precondition (and (at_9_15) (found))
 :effect (and (not (at_9_15)) (near_10_15))
 :poss-effect (and (not (found)))
)

(:action move_toward_9_15_9_14
 :parameters ()
 :precondition (and (at_9_15) (found))
 :effect (and (not (at_9_15)) (near_9_14))
 :poss-effect (and (not (found)))
)

(:action move_toward_10_0_9_0
 :parameters ()
 :precondition (and (at_10_0) (found))
 :effect (and (not (at_10_0)) (near_9_0))
 :poss-effect (and (not (found)))
)

(:action move_toward_10_0_11_0
 :parameters ()
 :precondition (and (at_10_0) (found))
 :effect (and (not (at_10_0)) (near_11_0))
 :poss-effect (and (not (found)))
)

(:action move_toward_10_0_10_1
 :parameters ()
 :precondition (and (at_10_0) (found))
 :effect (and (not (at_10_0)) (near_10_1))
 :poss-effect (and (not (found)))
)

(:action move_toward_10_1_9_1
 :parameters ()
 :precondition (and (at_10_1) (found))
 :effect (and (not (at_10_1)) (near_9_1))
 :poss-effect (and (not (found)))
)

(:action move_toward_10_1_11_1
 :parameters ()
 :precondition (and (at_10_1) (found))
 :effect (and (not (at_10_1)) (near_11_1))
 :poss-effect (and (not (found)))
)

(:action move_toward_10_1_10_0
 :parameters ()
 :precondition (and (at_10_1) (found))
 :effect (and (not (at_10_1)) (near_10_0))
 :poss-effect (and (not (found)))
)

(:action move_toward_10_1_10_2
 :parameters ()
 :precondition (and (at_10_1) (found))
 :effect (and (not (at_10_1)) (near_10_2))
 :poss-effect (and (not (found)))
)

(:action move_toward_10_2_9_2
 :parameters ()
 :precondition (and (at_10_2) (found))
 :effect (and (not (at_10_2)) (near_9_2))
 :poss-effect (and (not (found)))
)

(:action move_toward_10_2_11_2
 :parameters ()
 :precondition (and (at_10_2) (found))
 :effect (and (not (at_10_2)) (near_11_2))
 :poss-effect (and (not (found)))
)

(:action move_toward_10_2_10_1
 :parameters ()
 :precondition (and (at_10_2) (found))
 :effect (and (not (at_10_2)) (near_10_1))
 :poss-effect (and (not (found)))
)

(:action move_toward_10_2_10_3
 :parameters ()
 :precondition (and (at_10_2) (found))
 :effect (and (not (at_10_2)) (near_10_3))
 :poss-effect (and (not (found)))
)

(:action move_toward_10_3_9_3
 :parameters ()
 :precondition (and (at_10_3) (found))
 :effect (and (not (at_10_3)) (near_9_3))
 :poss-effect (and (not (found)))
)

(:action move_toward_10_3_11_3
 :parameters ()
 :precondition (and (at_10_3) (found))
 :effect (and (not (at_10_3)) (near_11_3))
 :poss-effect (and (not (found)))
)

(:action move_toward_10_3_10_2
 :parameters ()
 :precondition (and (at_10_3) (found))
 :effect (and (not (at_10_3)) (near_10_2))
 :poss-effect (and (not (found)))
)

(:action move_toward_10_3_10_4
 :parameters ()
 :precondition (and (at_10_3) (found))
 :effect (and (not (at_10_3)) (near_10_4))
 :poss-effect (and (not (found)))
)

(:action move_toward_10_4_9_4
 :parameters ()
 :precondition (and (at_10_4) (found))
 :effect (and (not (at_10_4)) (near_9_4))
 :poss-effect (and (not (found)))
)

(:action move_toward_10_4_11_4
 :parameters ()
 :precondition (and (at_10_4) (found))
 :effect (and (not (at_10_4)) (near_11_4))
 :poss-effect (and (not (found)))
)

(:action move_toward_10_4_10_3
 :parameters ()
 :precondition (and (at_10_4) (found))
 :effect (and (not (at_10_4)) (near_10_3))
 :poss-effect (and (not (found)))
)

(:action move_toward_10_4_10_5
 :parameters ()
 :precondition (and (at_10_4) (found))
 :effect (and (not (at_10_4)) (near_10_5))
 :poss-effect (and (not (found)))
)

(:action move_toward_10_5_9_5
 :parameters ()
 :precondition (and (at_10_5) (found))
 :effect (and (not (at_10_5)) (near_9_5))
 :poss-effect (and (not (found)))
)

(:action move_toward_10_5_11_5
 :parameters ()
 :precondition (and (at_10_5) (found))
 :effect (and (not (at_10_5)) (near_11_5))
 :poss-effect (and (not (found)))
)

(:action move_toward_10_5_10_4
 :parameters ()
 :precondition (and (at_10_5) (found))
 :effect (and (not (at_10_5)) (near_10_4))
 :poss-effect (and (not (found)))
)

(:action move_toward_10_5_10_6
 :parameters ()
 :precondition (and (at_10_5) (found))
 :effect (and (not (at_10_5)) (near_10_6))
 :poss-effect (and (not (found)))
)

(:action move_toward_10_6_9_6
 :parameters ()
 :precondition (and (at_10_6) (found))
 :effect (and (not (at_10_6)) (near_9_6))
 :poss-effect (and (not (found)))
)

(:action move_toward_10_6_11_6
 :parameters ()
 :precondition (and (at_10_6) (found))
 :effect (and (not (at_10_6)) (near_11_6))
 :poss-effect (and (not (found)))
)

(:action move_toward_10_6_10_5
 :parameters ()
 :precondition (and (at_10_6) (found))
 :effect (and (not (at_10_6)) (near_10_5))
 :poss-effect (and (not (found)))
)

(:action move_toward_10_6_10_7
 :parameters ()
 :precondition (and (at_10_6) (found))
 :effect (and (not (at_10_6)) (near_10_7))
 :poss-effect (and (not (found)))
)

(:action move_toward_10_7_9_7
 :parameters ()
 :precondition (and (at_10_7) (found))
 :effect (and (not (at_10_7)) (near_9_7))
 :poss-effect (and (not (found)))
)

(:action move_toward_10_7_11_7
 :parameters ()
 :precondition (and (at_10_7) (found))
 :effect (and (not (at_10_7)) (near_11_7))
 :poss-effect (and (not (found)))
)

(:action move_toward_10_7_10_6
 :parameters ()
 :precondition (and (at_10_7) (found))
 :effect (and (not (at_10_7)) (near_10_6))
 :poss-effect (and (not (found)))
)

(:action move_toward_10_7_10_8
 :parameters ()
 :precondition (and (at_10_7) (found))
 :effect (and (not (at_10_7)) (near_10_8))
 :poss-effect (and (not (found)))
)

(:action move_toward_10_8_9_8
 :parameters ()
 :precondition (and (at_10_8) (found))
 :effect (and (not (at_10_8)) (near_9_8))
 :poss-effect (and (not (found)))
)

(:action move_toward_10_8_11_8
 :parameters ()
 :precondition (and (at_10_8) (found))
 :effect (and (not (at_10_8)) (near_11_8))
 :poss-effect (and (not (found)))
)

(:action move_toward_10_8_10_7
 :parameters ()
 :precondition (and (at_10_8) (found))
 :effect (and (not (at_10_8)) (near_10_7))
 :poss-effect (and (not (found)))
)

(:action move_toward_10_8_10_9
 :parameters ()
 :precondition (and (at_10_8) (found))
 :effect (and (not (at_10_8)) (near_10_9))
 :poss-effect (and (not (found)))
)

(:action move_toward_10_9_9_9
 :parameters ()
 :precondition (and (at_10_9) (found))
 :effect (and (not (at_10_9)) (near_9_9))
 :poss-effect (and (not (found)))
)

(:action move_toward_10_9_11_9
 :parameters ()
 :precondition (and (at_10_9) (found))
 :effect (and (not (at_10_9)) (near_11_9))
 :poss-effect (and (not (found)))
)

(:action move_toward_10_9_10_8
 :parameters ()
 :precondition (and (at_10_9) (found))
 :effect (and (not (at_10_9)) (near_10_8))
 :poss-effect (and (not (found)))
)

(:action move_toward_10_9_10_10
 :parameters ()
 :precondition (and (at_10_9) (found))
 :effect (and (not (at_10_9)) (near_10_10))
 :poss-effect (and (not (found)))
)

(:action move_toward_10_10_9_10
 :parameters ()
 :precondition (and (at_10_10) (found))
 :effect (and (not (at_10_10)) (near_9_10))
 :poss-effect (and (not (found)))
)

(:action move_toward_10_10_11_10
 :parameters ()
 :precondition (and (at_10_10) (found))
 :effect (and (not (at_10_10)) (near_11_10))
 :poss-effect (and (not (found)))
)

(:action move_toward_10_10_10_9
 :parameters ()
 :precondition (and (at_10_10) (found))
 :effect (and (not (at_10_10)) (near_10_9))
 :poss-effect (and (not (found)))
)

(:action move_toward_10_10_10_11
 :parameters ()
 :precondition (and (at_10_10) (found))
 :effect (and (not (at_10_10)) (near_10_11))
 :poss-effect (and (not (found)))
)

(:action move_toward_10_11_9_11
 :parameters ()
 :precondition (and (at_10_11) (found))
 :effect (and (not (at_10_11)) (near_9_11))
 :poss-effect (and (not (found)))
)

(:action move_toward_10_11_11_11
 :parameters ()
 :precondition (and (at_10_11) (found))
 :effect (and (not (at_10_11)) (near_11_11))
 :poss-effect (and (not (found)))
)

(:action move_toward_10_11_10_10
 :parameters ()
 :precondition (and (at_10_11) (found))
 :effect (and (not (at_10_11)) (near_10_10))
 :poss-effect (and (not (found)))
)

(:action move_toward_10_11_10_12
 :parameters ()
 :precondition (and (at_10_11) (found))
 :effect (and (not (at_10_11)) (near_10_12))
 :poss-effect (and (not (found)))
)

(:action move_toward_10_12_9_12
 :parameters ()
 :precondition (and (at_10_12) (found))
 :effect (and (not (at_10_12)) (near_9_12))
 :poss-effect (and (not (found)))
)

(:action move_toward_10_12_11_12
 :parameters ()
 :precondition (and (at_10_12) (found))
 :effect (and (not (at_10_12)) (near_11_12))
 :poss-effect (and (not (found)))
)

(:action move_toward_10_12_10_11
 :parameters ()
 :precondition (and (at_10_12) (found))
 :effect (and (not (at_10_12)) (near_10_11))
 :poss-effect (and (not (found)))
)

(:action move_toward_10_12_10_13
 :parameters ()
 :precondition (and (at_10_12) (found))
 :effect (and (not (at_10_12)) (near_10_13))
 :poss-effect (and (not (found)))
)

(:action move_toward_10_13_9_13
 :parameters ()
 :precondition (and (at_10_13) (found))
 :effect (and (not (at_10_13)) (near_9_13))
 :poss-effect (and (not (found)))
)

(:action move_toward_10_13_11_13
 :parameters ()
 :precondition (and (at_10_13) (found))
 :effect (and (not (at_10_13)) (near_11_13))
 :poss-effect (and (not (found)))
)

(:action move_toward_10_13_10_12
 :parameters ()
 :precondition (and (at_10_13) (found))
 :effect (and (not (at_10_13)) (near_10_12))
 :poss-effect (and (not (found)))
)

(:action move_toward_10_13_10_14
 :parameters ()
 :precondition (and (at_10_13) (found))
 :effect (and (not (at_10_13)) (near_10_14))
 :poss-effect (and (not (found)))
)

(:action move_toward_10_14_9_14
 :parameters ()
 :precondition (and (at_10_14) (found))
 :effect (and (not (at_10_14)) (near_9_14))
 :poss-effect (and (not (found)))
)

(:action move_toward_10_14_11_14
 :parameters ()
 :precondition (and (at_10_14) (found))
 :effect (and (not (at_10_14)) (near_11_14))
 :poss-effect (and (not (found)))
)

(:action move_toward_10_14_10_13
 :parameters ()
 :precondition (and (at_10_14) (found))
 :effect (and (not (at_10_14)) (near_10_13))
 :poss-effect (and (not (found)))
)

(:action move_toward_10_14_10_15
 :parameters ()
 :precondition (and (at_10_14) (found))
 :effect (and (not (at_10_14)) (near_10_15))
 :poss-effect (and (not (found)))
)

(:action move_toward_10_15_9_15
 :parameters ()
 :precondition (and (at_10_15) (found))
 :effect (and (not (at_10_15)) (near_9_15))
 :poss-effect (and (not (found)))
)

(:action move_toward_10_15_11_15
 :parameters ()
 :precondition (and (at_10_15) (found))
 :effect (and (not (at_10_15)) (near_11_15))
 :poss-effect (and (not (found)))
)

(:action move_toward_10_15_10_14
 :parameters ()
 :precondition (and (at_10_15) (found))
 :effect (and (not (at_10_15)) (near_10_14))
 :poss-effect (and (not (found)))
)

(:action move_toward_11_0_10_0
 :parameters ()
 :precondition (and (at_11_0) (found))
 :effect (and (not (at_11_0)) (near_10_0))
 :poss-effect (and (not (found)))
)

(:action move_toward_11_0_12_0
 :parameters ()
 :precondition (and (at_11_0) (found))
 :effect (and (not (at_11_0)) (near_12_0))
 :poss-effect (and (not (found)))
)

(:action move_toward_11_0_11_1
 :parameters ()
 :precondition (and (at_11_0) (found))
 :effect (and (not (at_11_0)) (near_11_1))
 :poss-effect (and (not (found)))
)

(:action move_toward_11_1_10_1
 :parameters ()
 :precondition (and (at_11_1) (found))
 :effect (and (not (at_11_1)) (near_10_1))
 :poss-effect (and (not (found)))
)

(:action move_toward_11_1_12_1
 :parameters ()
 :precondition (and (at_11_1) (found))
 :effect (and (not (at_11_1)) (near_12_1))
 :poss-effect (and (not (found)))
)

(:action move_toward_11_1_11_0
 :parameters ()
 :precondition (and (at_11_1) (found))
 :effect (and (not (at_11_1)) (near_11_0))
 :poss-effect (and (not (found)))
)

(:action move_toward_11_1_11_2
 :parameters ()
 :precondition (and (at_11_1) (found))
 :effect (and (not (at_11_1)) (near_11_2))
 :poss-effect (and (not (found)))
)

(:action move_toward_11_2_10_2
 :parameters ()
 :precondition (and (at_11_2) (found))
 :effect (and (not (at_11_2)) (near_10_2))
 :poss-effect (and (not (found)))
)

(:action move_toward_11_2_12_2
 :parameters ()
 :precondition (and (at_11_2) (found))
 :effect (and (not (at_11_2)) (near_12_2))
 :poss-effect (and (not (found)))
)

(:action move_toward_11_2_11_1
 :parameters ()
 :precondition (and (at_11_2) (found))
 :effect (and (not (at_11_2)) (near_11_1))
 :poss-effect (and (not (found)))
)

(:action move_toward_11_2_11_3
 :parameters ()
 :precondition (and (at_11_2) (found))
 :effect (and (not (at_11_2)) (near_11_3))
 :poss-effect (and (not (found)))
)

(:action move_toward_11_3_10_3
 :parameters ()
 :precondition (and (at_11_3) (found))
 :effect (and (not (at_11_3)) (near_10_3))
 :poss-effect (and (not (found)))
)

(:action move_toward_11_3_12_3
 :parameters ()
 :precondition (and (at_11_3) (found))
 :effect (and (not (at_11_3)) (near_12_3))
 :poss-effect (and (not (found)))
)

(:action move_toward_11_3_11_2
 :parameters ()
 :precondition (and (at_11_3) (found))
 :effect (and (not (at_11_3)) (near_11_2))
 :poss-effect (and (not (found)))
)

(:action move_toward_11_3_11_4
 :parameters ()
 :precondition (and (at_11_3) (found))
 :effect (and (not (at_11_3)) (near_11_4))
 :poss-effect (and (not (found)))
)

(:action move_toward_11_4_10_4
 :parameters ()
 :precondition (and (at_11_4) (found))
 :effect (and (not (at_11_4)) (near_10_4))
 :poss-effect (and (not (found)))
)

(:action move_toward_11_4_12_4
 :parameters ()
 :precondition (and (at_11_4) (found))
 :effect (and (not (at_11_4)) (near_12_4))
 :poss-effect (and (not (found)))
)

(:action move_toward_11_4_11_3
 :parameters ()
 :precondition (and (at_11_4) (found))
 :effect (and (not (at_11_4)) (near_11_3))
 :poss-effect (and (not (found)))
)

(:action move_toward_11_4_11_5
 :parameters ()
 :precondition (and (at_11_4) (found))
 :effect (and (not (at_11_4)) (near_11_5))
 :poss-effect (and (not (found)))
)

(:action move_toward_11_5_10_5
 :parameters ()
 :precondition (and (at_11_5) (found))
 :effect (and (not (at_11_5)) (near_10_5))
 :poss-effect (and (not (found)))
)

(:action move_toward_11_5_12_5
 :parameters ()
 :precondition (and (at_11_5) (found))
 :effect (and (not (at_11_5)) (near_12_5))
 :poss-effect (and (not (found)))
)

(:action move_toward_11_5_11_4
 :parameters ()
 :precondition (and (at_11_5) (found))
 :effect (and (not (at_11_5)) (near_11_4))
 :poss-effect (and (not (found)))
)

(:action move_toward_11_5_11_6
 :parameters ()
 :precondition (and (at_11_5) (found))
 :effect (and (not (at_11_5)) (near_11_6))
 :poss-effect (and (not (found)))
)

(:action move_toward_11_6_10_6
 :parameters ()
 :precondition (and (at_11_6) (found))
 :effect (and (not (at_11_6)) (near_10_6))
 :poss-effect (and (not (found)))
)

(:action move_toward_11_6_12_6
 :parameters ()
 :precondition (and (at_11_6) (found))
 :effect (and (not (at_11_6)) (near_12_6))
 :poss-effect (and (not (found)))
)

(:action move_toward_11_6_11_5
 :parameters ()
 :precondition (and (at_11_6) (found))
 :effect (and (not (at_11_6)) (near_11_5))
 :poss-effect (and (not (found)))
)

(:action move_toward_11_6_11_7
 :parameters ()
 :precondition (and (at_11_6) (found))
 :effect (and (not (at_11_6)) (near_11_7))
 :poss-effect (and (not (found)))
)

(:action move_toward_11_7_10_7
 :parameters ()
 :precondition (and (at_11_7) (found))
 :effect (and (not (at_11_7)) (near_10_7))
 :poss-effect (and (not (found)))
)

(:action move_toward_11_7_12_7
 :parameters ()
 :precondition (and (at_11_7) (found))
 :effect (and (not (at_11_7)) (near_12_7))
 :poss-effect (and (not (found)))
)

(:action move_toward_11_7_11_6
 :parameters ()
 :precondition (and (at_11_7) (found))
 :effect (and (not (at_11_7)) (near_11_6))
 :poss-effect (and (not (found)))
)

(:action move_toward_11_7_11_8
 :parameters ()
 :precondition (and (at_11_7) (found))
 :effect (and (not (at_11_7)) (near_11_8))
 :poss-effect (and (not (found)))
)

(:action move_toward_11_8_10_8
 :parameters ()
 :precondition (and (at_11_8) (found))
 :effect (and (not (at_11_8)) (near_10_8))
 :poss-effect (and (not (found)))
)

(:action move_toward_11_8_12_8
 :parameters ()
 :precondition (and (at_11_8) (found))
 :effect (and (not (at_11_8)) (near_12_8))
 :poss-effect (and (not (found)))
)

(:action move_toward_11_8_11_7
 :parameters ()
 :precondition (and (at_11_8) (found))
 :effect (and (not (at_11_8)) (near_11_7))
 :poss-effect (and (not (found)))
)

(:action move_toward_11_8_11_9
 :parameters ()
 :precondition (and (at_11_8) (found))
 :effect (and (not (at_11_8)) (near_11_9))
 :poss-effect (and (not (found)))
)

(:action move_toward_11_9_10_9
 :parameters ()
 :precondition (and (at_11_9) (found))
 :effect (and (not (at_11_9)) (near_10_9))
 :poss-effect (and (not (found)))
)

(:action move_toward_11_9_12_9
 :parameters ()
 :precondition (and (at_11_9) (found))
 :effect (and (not (at_11_9)) (near_12_9))
 :poss-effect (and (not (found)))
)

(:action move_toward_11_9_11_8
 :parameters ()
 :precondition (and (at_11_9) (found))
 :effect (and (not (at_11_9)) (near_11_8))
 :poss-effect (and (not (found)))
)

(:action move_toward_11_9_11_10
 :parameters ()
 :precondition (and (at_11_9) (found))
 :effect (and (not (at_11_9)) (near_11_10))
 :poss-effect (and (not (found)))
)

(:action move_toward_11_10_10_10
 :parameters ()
 :precondition (and (at_11_10) (found))
 :effect (and (not (at_11_10)) (near_10_10))
 :poss-effect (and (not (found)))
)

(:action move_toward_11_10_12_10
 :parameters ()
 :precondition (and (at_11_10) (found))
 :effect (and (not (at_11_10)) (near_12_10))
 :poss-effect (and (not (found)))
)

(:action move_toward_11_10_11_9
 :parameters ()
 :precondition (and (at_11_10) (found))
 :effect (and (not (at_11_10)) (near_11_9))
 :poss-effect (and (not (found)))
)

(:action move_toward_11_10_11_11
 :parameters ()
 :precondition (and (at_11_10) (found))
 :effect (and (not (at_11_10)) (near_11_11))
 :poss-effect (and (not (found)))
)

(:action move_toward_11_11_10_11
 :parameters ()
 :precondition (and (at_11_11) (found))
 :effect (and (not (at_11_11)) (near_10_11))
 :poss-effect (and (not (found)))
)

(:action move_toward_11_11_12_11
 :parameters ()
 :precondition (and (at_11_11) (found))
 :effect (and (not (at_11_11)) (near_12_11))
 :poss-effect (and (not (found)))
)

(:action move_toward_11_11_11_10
 :parameters ()
 :precondition (and (at_11_11) (found))
 :effect (and (not (at_11_11)) (near_11_10))
 :poss-effect (and (not (found)))
)

(:action move_toward_11_11_11_12
 :parameters ()
 :precondition (and (at_11_11) (found))
 :effect (and (not (at_11_11)) (near_11_12))
 :poss-effect (and (not (found)))
)

(:action move_toward_11_12_10_12
 :parameters ()
 :precondition (and (at_11_12) (found))
 :effect (and (not (at_11_12)) (near_10_12))
 :poss-effect (and (not (found)))
)

(:action move_toward_11_12_12_12
 :parameters ()
 :precondition (and (at_11_12) (found))
 :effect (and (not (at_11_12)) (near_12_12))
 :poss-effect (and (not (found)))
)

(:action move_toward_11_12_11_11
 :parameters ()
 :precondition (and (at_11_12) (found))
 :effect (and (not (at_11_12)) (near_11_11))
 :poss-effect (and (not (found)))
)

(:action move_toward_11_12_11_13
 :parameters ()
 :precondition (and (at_11_12) (found))
 :effect (and (not (at_11_12)) (near_11_13))
 :poss-effect (and (not (found)))
)

(:action move_toward_11_13_10_13
 :parameters ()
 :precondition (and (at_11_13) (found))
 :effect (and (not (at_11_13)) (near_10_13))
 :poss-effect (and (not (found)))
)

(:action move_toward_11_13_12_13
 :parameters ()
 :precondition (and (at_11_13) (found))
 :effect (and (not (at_11_13)) (near_12_13))
 :poss-effect (and (not (found)))
)

(:action move_toward_11_13_11_12
 :parameters ()
 :precondition (and (at_11_13) (found))
 :effect (and (not (at_11_13)) (near_11_12))
 :poss-effect (and (not (found)))
)

(:action move_toward_11_13_11_14
 :parameters ()
 :precondition (and (at_11_13) (found))
 :effect (and (not (at_11_13)) (near_11_14))
 :poss-effect (and (not (found)))
)

(:action move_toward_11_14_10_14
 :parameters ()
 :precondition (and (at_11_14) (found))
 :effect (and (not (at_11_14)) (near_10_14))
 :poss-effect (and (not (found)))
)

(:action move_toward_11_14_12_14
 :parameters ()
 :precondition (and (at_11_14) (found))
 :effect (and (not (at_11_14)) (near_12_14))
 :poss-effect (and (not (found)))
)

(:action move_toward_11_14_11_13
 :parameters ()
 :precondition (and (at_11_14) (found))
 :effect (and (not (at_11_14)) (near_11_13))
 :poss-effect (and (not (found)))
)

(:action move_toward_11_14_11_15
 :parameters ()
 :precondition (and (at_11_14) (found))
 :effect (and (not (at_11_14)) (near_11_15))
 :poss-effect (and (not (found)))
)

(:action move_toward_11_15_10_15
 :parameters ()
 :precondition (and (at_11_15) (found))
 :effect (and (not (at_11_15)) (near_10_15))
 :poss-effect (and (not (found)))
)

(:action move_toward_11_15_12_15
 :parameters ()
 :precondition (and (at_11_15) (found))
 :effect (and (not (at_11_15)) (near_12_15))
 :poss-effect (and (not (found)))
)

(:action move_toward_11_15_11_14
 :parameters ()
 :precondition (and (at_11_15) (found))
 :effect (and (not (at_11_15)) (near_11_14))
 :poss-effect (and (not (found)))
)

(:action move_toward_12_0_11_0
 :parameters ()
 :precondition (and (at_12_0) (found))
 :effect (and (not (at_12_0)) (near_11_0))
 :poss-effect (and (not (found)))
)

(:action move_toward_12_0_13_0
 :parameters ()
 :precondition (and (at_12_0) (found))
 :effect (and (not (at_12_0)) (near_13_0))
 :poss-effect (and (not (found)))
)

(:action move_toward_12_0_12_1
 :parameters ()
 :precondition (and (at_12_0) (found))
 :effect (and (not (at_12_0)) (near_12_1))
 :poss-effect (and (not (found)))
)

(:action move_toward_12_1_11_1
 :parameters ()
 :precondition (and (at_12_1) (found))
 :effect (and (not (at_12_1)) (near_11_1))
 :poss-effect (and (not (found)))
)

(:action move_toward_12_1_13_1
 :parameters ()
 :precondition (and (at_12_1) (found))
 :effect (and (not (at_12_1)) (near_13_1))
 :poss-effect (and (not (found)))
)

(:action move_toward_12_1_12_0
 :parameters ()
 :precondition (and (at_12_1) (found))
 :effect (and (not (at_12_1)) (near_12_0))
 :poss-effect (and (not (found)))
)

(:action move_toward_12_1_12_2
 :parameters ()
 :precondition (and (at_12_1) (found))
 :effect (and (not (at_12_1)) (near_12_2))
 :poss-effect (and (not (found)))
)

(:action move_toward_12_2_11_2
 :parameters ()
 :precondition (and (at_12_2) (found))
 :effect (and (not (at_12_2)) (near_11_2))
 :poss-effect (and (not (found)))
)

(:action move_toward_12_2_13_2
 :parameters ()
 :precondition (and (at_12_2) (found))
 :effect (and (not (at_12_2)) (near_13_2))
 :poss-effect (and (not (found)))
)

(:action move_toward_12_2_12_1
 :parameters ()
 :precondition (and (at_12_2) (found))
 :effect (and (not (at_12_2)) (near_12_1))
 :poss-effect (and (not (found)))
)

(:action move_toward_12_2_12_3
 :parameters ()
 :precondition (and (at_12_2) (found))
 :effect (and (not (at_12_2)) (near_12_3))
 :poss-effect (and (not (found)))
)

(:action move_toward_12_3_11_3
 :parameters ()
 :precondition (and (at_12_3) (found))
 :effect (and (not (at_12_3)) (near_11_3))
 :poss-effect (and (not (found)))
)

(:action move_toward_12_3_13_3
 :parameters ()
 :precondition (and (at_12_3) (found))
 :effect (and (not (at_12_3)) (near_13_3))
 :poss-effect (and (not (found)))
)

(:action move_toward_12_3_12_2
 :parameters ()
 :precondition (and (at_12_3) (found))
 :effect (and (not (at_12_3)) (near_12_2))
 :poss-effect (and (not (found)))
)

(:action move_toward_12_3_12_4
 :parameters ()
 :precondition (and (at_12_3) (found))
 :effect (and (not (at_12_3)) (near_12_4))
 :poss-effect (and (not (found)))
)

(:action move_toward_12_4_11_4
 :parameters ()
 :precondition (and (at_12_4) (found))
 :effect (and (not (at_12_4)) (near_11_4))
 :poss-effect (and (not (found)))
)

(:action move_toward_12_4_13_4
 :parameters ()
 :precondition (and (at_12_4) (found))
 :effect (and (not (at_12_4)) (near_13_4))
 :poss-effect (and (not (found)))
)

(:action move_toward_12_4_12_3
 :parameters ()
 :precondition (and (at_12_4) (found))
 :effect (and (not (at_12_4)) (near_12_3))
 :poss-effect (and (not (found)))
)

(:action move_toward_12_4_12_5
 :parameters ()
 :precondition (and (at_12_4) (found))
 :effect (and (not (at_12_4)) (near_12_5))
 :poss-effect (and (not (found)))
)

(:action move_toward_12_5_11_5
 :parameters ()
 :precondition (and (at_12_5) (found))
 :effect (and (not (at_12_5)) (near_11_5))
 :poss-effect (and (not (found)))
)

(:action move_toward_12_5_13_5
 :parameters ()
 :precondition (and (at_12_5) (found))
 :effect (and (not (at_12_5)) (near_13_5))
 :poss-effect (and (not (found)))
)

(:action move_toward_12_5_12_4
 :parameters ()
 :precondition (and (at_12_5) (found))
 :effect (and (not (at_12_5)) (near_12_4))
 :poss-effect (and (not (found)))
)

(:action move_toward_12_5_12_6
 :parameters ()
 :precondition (and (at_12_5) (found))
 :effect (and (not (at_12_5)) (near_12_6))
 :poss-effect (and (not (found)))
)

(:action move_toward_12_6_11_6
 :parameters ()
 :precondition (and (at_12_6) (found))
 :effect (and (not (at_12_6)) (near_11_6))
 :poss-effect (and (not (found)))
)

(:action move_toward_12_6_13_6
 :parameters ()
 :precondition (and (at_12_6) (found))
 :effect (and (not (at_12_6)) (near_13_6))
 :poss-effect (and (not (found)))
)

(:action move_toward_12_6_12_5
 :parameters ()
 :precondition (and (at_12_6) (found))
 :effect (and (not (at_12_6)) (near_12_5))
 :poss-effect (and (not (found)))
)

(:action move_toward_12_6_12_7
 :parameters ()
 :precondition (and (at_12_6) (found))
 :effect (and (not (at_12_6)) (near_12_7))
 :poss-effect (and (not (found)))
)

(:action move_toward_12_7_11_7
 :parameters ()
 :precondition (and (at_12_7) (found))
 :effect (and (not (at_12_7)) (near_11_7))
 :poss-effect (and (not (found)))
)

(:action move_toward_12_7_13_7
 :parameters ()
 :precondition (and (at_12_7) (found))
 :effect (and (not (at_12_7)) (near_13_7))
 :poss-effect (and (not (found)))
)

(:action move_toward_12_7_12_6
 :parameters ()
 :precondition (and (at_12_7) (found))
 :effect (and (not (at_12_7)) (near_12_6))
 :poss-effect (and (not (found)))
)

(:action move_toward_12_7_12_8
 :parameters ()
 :precondition (and (at_12_7) (found))
 :effect (and (not (at_12_7)) (near_12_8))
 :poss-effect (and (not (found)))
)

(:action move_toward_12_8_11_8
 :parameters ()
 :precondition (and (at_12_8) (found))
 :effect (and (not (at_12_8)) (near_11_8))
 :poss-effect (and (not (found)))
)

(:action move_toward_12_8_13_8
 :parameters ()
 :precondition (and (at_12_8) (found))
 :effect (and (not (at_12_8)) (near_13_8))
 :poss-effect (and (not (found)))
)

(:action move_toward_12_8_12_7
 :parameters ()
 :precondition (and (at_12_8) (found))
 :effect (and (not (at_12_8)) (near_12_7))
 :poss-effect (and (not (found)))
)

(:action move_toward_12_8_12_9
 :parameters ()
 :precondition (and (at_12_8) (found))
 :effect (and (not (at_12_8)) (near_12_9))
 :poss-effect (and (not (found)))
)

(:action move_toward_12_9_11_9
 :parameters ()
 :precondition (and (at_12_9) (found))
 :effect (and (not (at_12_9)) (near_11_9))
 :poss-effect (and (not (found)))
)

(:action move_toward_12_9_13_9
 :parameters ()
 :precondition (and (at_12_9) (found))
 :effect (and (not (at_12_9)) (near_13_9))
 :poss-effect (and (not (found)))
)

(:action move_toward_12_9_12_8
 :parameters ()
 :precondition (and (at_12_9) (found))
 :effect (and (not (at_12_9)) (near_12_8))
 :poss-effect (and (not (found)))
)

(:action move_toward_12_9_12_10
 :parameters ()
 :precondition (and (at_12_9) (found))
 :effect (and (not (at_12_9)) (near_12_10))
 :poss-effect (and (not (found)))
)

(:action move_toward_12_10_11_10
 :parameters ()
 :precondition (and (at_12_10) (found))
 :effect (and (not (at_12_10)) (near_11_10))
 :poss-effect (and (not (found)))
)

(:action move_toward_12_10_13_10
 :parameters ()
 :precondition (and (at_12_10) (found))
 :effect (and (not (at_12_10)) (near_13_10))
 :poss-effect (and (not (found)))
)

(:action move_toward_12_10_12_9
 :parameters ()
 :precondition (and (at_12_10) (found))
 :effect (and (not (at_12_10)) (near_12_9))
 :poss-effect (and (not (found)))
)

(:action move_toward_12_10_12_11
 :parameters ()
 :precondition (and (at_12_10) (found))
 :effect (and (not (at_12_10)) (near_12_11))
 :poss-effect (and (not (found)))
)

(:action move_toward_12_11_11_11
 :parameters ()
 :precondition (and (at_12_11) (found))
 :effect (and (not (at_12_11)) (near_11_11))
 :poss-effect (and (not (found)))
)

(:action move_toward_12_11_13_11
 :parameters ()
 :precondition (and (at_12_11) (found))
 :effect (and (not (at_12_11)) (near_13_11))
 :poss-effect (and (not (found)))
)

(:action move_toward_12_11_12_10
 :parameters ()
 :precondition (and (at_12_11) (found))
 :effect (and (not (at_12_11)) (near_12_10))
 :poss-effect (and (not (found)))
)

(:action move_toward_12_11_12_12
 :parameters ()
 :precondition (and (at_12_11) (found))
 :effect (and (not (at_12_11)) (near_12_12))
 :poss-effect (and (not (found)))
)

(:action move_toward_12_12_11_12
 :parameters ()
 :precondition (and (at_12_12) (found))
 :effect (and (not (at_12_12)) (near_11_12))
 :poss-effect (and (not (found)))
)

(:action move_toward_12_12_13_12
 :parameters ()
 :precondition (and (at_12_12) (found))
 :effect (and (not (at_12_12)) (near_13_12))
 :poss-effect (and (not (found)))
)

(:action move_toward_12_12_12_11
 :parameters ()
 :precondition (and (at_12_12) (found))
 :effect (and (not (at_12_12)) (near_12_11))
 :poss-effect (and (not (found)))
)

(:action move_toward_12_12_12_13
 :parameters ()
 :precondition (and (at_12_12) (found))
 :effect (and (not (at_12_12)) (near_12_13))
 :poss-effect (and (not (found)))
)

(:action move_toward_12_13_11_13
 :parameters ()
 :precondition (and (at_12_13) (found))
 :effect (and (not (at_12_13)) (near_11_13))
 :poss-effect (and (not (found)))
)

(:action move_toward_12_13_13_13
 :parameters ()
 :precondition (and (at_12_13) (found))
 :effect (and (not (at_12_13)) (near_13_13))
 :poss-effect (and (not (found)))
)

(:action move_toward_12_13_12_12
 :parameters ()
 :precondition (and (at_12_13) (found))
 :effect (and (not (at_12_13)) (near_12_12))
 :poss-effect (and (not (found)))
)

(:action move_toward_12_13_12_14
 :parameters ()
 :precondition (and (at_12_13) (found))
 :effect (and (not (at_12_13)) (near_12_14))
 :poss-effect (and (not (found)))
)

(:action move_toward_12_14_11_14
 :parameters ()
 :precondition (and (at_12_14) (found))
 :effect (and (not (at_12_14)) (near_11_14))
 :poss-effect (and (not (found)))
)

(:action move_toward_12_14_13_14
 :parameters ()
 :precondition (and (at_12_14) (found))
 :effect (and (not (at_12_14)) (near_13_14))
 :poss-effect (and (not (found)))
)

(:action move_toward_12_14_12_13
 :parameters ()
 :precondition (and (at_12_14) (found))
 :effect (and (not (at_12_14)) (near_12_13))
 :poss-effect (and (not (found)))
)

(:action move_toward_12_14_12_15
 :parameters ()
 :precondition (and (at_12_14) (found))
 :effect (and (not (at_12_14)) (near_12_15))
 :poss-effect (and (not (found)))
)

(:action move_toward_12_15_11_15
 :parameters ()
 :precondition (and (at_12_15) (found))
 :effect (and (not (at_12_15)) (near_11_15))
 :poss-effect (and (not (found)))
)

(:action move_toward_12_15_13_15
 :parameters ()
 :precondition (and (at_12_15) (found))
 :effect (and (not (at_12_15)) (near_13_15))
 :poss-effect (and (not (found)))
)

(:action move_toward_12_15_12_14
 :parameters ()
 :precondition (and (at_12_15) (found))
 :effect (and (not (at_12_15)) (near_12_14))
 :poss-effect (and (not (found)))
)

(:action move_toward_13_0_12_0
 :parameters ()
 :precondition (and (at_13_0) (found))
 :effect (and (not (at_13_0)) (near_12_0))
 :poss-effect (and (not (found)))
)

(:action move_toward_13_0_14_0
 :parameters ()
 :precondition (and (at_13_0) (found))
 :effect (and (not (at_13_0)) (near_14_0))
 :poss-effect (and (not (found)))
)

(:action move_toward_13_0_13_1
 :parameters ()
 :precondition (and (at_13_0) (found))
 :effect (and (not (at_13_0)) (near_13_1))
 :poss-effect (and (not (found)))
)

(:action move_toward_13_1_12_1
 :parameters ()
 :precondition (and (at_13_1) (found))
 :effect (and (not (at_13_1)) (near_12_1))
 :poss-effect (and (not (found)))
)

(:action move_toward_13_1_14_1
 :parameters ()
 :precondition (and (at_13_1) (found))
 :effect (and (not (at_13_1)) (near_14_1))
 :poss-effect (and (not (found)))
)

(:action move_toward_13_1_13_0
 :parameters ()
 :precondition (and (at_13_1) (found))
 :effect (and (not (at_13_1)) (near_13_0))
 :poss-effect (and (not (found)))
)

(:action move_toward_13_1_13_2
 :parameters ()
 :precondition (and (at_13_1) (found))
 :effect (and (not (at_13_1)) (near_13_2))
 :poss-effect (and (not (found)))
)

(:action move_toward_13_2_12_2
 :parameters ()
 :precondition (and (at_13_2) (found))
 :effect (and (not (at_13_2)) (near_12_2))
 :poss-effect (and (not (found)))
)

(:action move_toward_13_2_14_2
 :parameters ()
 :precondition (and (at_13_2) (found))
 :effect (and (not (at_13_2)) (near_14_2))
 :poss-effect (and (not (found)))
)

(:action move_toward_13_2_13_1
 :parameters ()
 :precondition (and (at_13_2) (found))
 :effect (and (not (at_13_2)) (near_13_1))
 :poss-effect (and (not (found)))
)

(:action move_toward_13_2_13_3
 :parameters ()
 :precondition (and (at_13_2) (found))
 :effect (and (not (at_13_2)) (near_13_3))
 :poss-effect (and (not (found)))
)

(:action move_toward_13_3_12_3
 :parameters ()
 :precondition (and (at_13_3) (found))
 :effect (and (not (at_13_3)) (near_12_3))
 :poss-effect (and (not (found)))
)

(:action move_toward_13_3_14_3
 :parameters ()
 :precondition (and (at_13_3) (found))
 :effect (and (not (at_13_3)) (near_14_3))
 :poss-effect (and (not (found)))
)

(:action move_toward_13_3_13_2
 :parameters ()
 :precondition (and (at_13_3) (found))
 :effect (and (not (at_13_3)) (near_13_2))
 :poss-effect (and (not (found)))
)

(:action move_toward_13_3_13_4
 :parameters ()
 :precondition (and (at_13_3) (found))
 :effect (and (not (at_13_3)) (near_13_4))
 :poss-effect (and (not (found)))
)

(:action move_toward_13_4_12_4
 :parameters ()
 :precondition (and (at_13_4) (found))
 :effect (and (not (at_13_4)) (near_12_4))
 :poss-effect (and (not (found)))
)

(:action move_toward_13_4_14_4
 :parameters ()
 :precondition (and (at_13_4) (found))
 :effect (and (not (at_13_4)) (near_14_4))
 :poss-effect (and (not (found)))
)

(:action move_toward_13_4_13_3
 :parameters ()
 :precondition (and (at_13_4) (found))
 :effect (and (not (at_13_4)) (near_13_3))
 :poss-effect (and (not (found)))
)

(:action move_toward_13_4_13_5
 :parameters ()
 :precondition (and (at_13_4) (found))
 :effect (and (not (at_13_4)) (near_13_5))
 :poss-effect (and (not (found)))
)

(:action move_toward_13_5_12_5
 :parameters ()
 :precondition (and (at_13_5) (found))
 :effect (and (not (at_13_5)) (near_12_5))
 :poss-effect (and (not (found)))
)

(:action move_toward_13_5_14_5
 :parameters ()
 :precondition (and (at_13_5) (found))
 :effect (and (not (at_13_5)) (near_14_5))
 :poss-effect (and (not (found)))
)

(:action move_toward_13_5_13_4
 :parameters ()
 :precondition (and (at_13_5) (found))
 :effect (and (not (at_13_5)) (near_13_4))
 :poss-effect (and (not (found)))
)

(:action move_toward_13_5_13_6
 :parameters ()
 :precondition (and (at_13_5) (found))
 :effect (and (not (at_13_5)) (near_13_6))
 :poss-effect (and (not (found)))
)

(:action move_toward_13_6_12_6
 :parameters ()
 :precondition (and (at_13_6) (found))
 :effect (and (not (at_13_6)) (near_12_6))
 :poss-effect (and (not (found)))
)

(:action move_toward_13_6_14_6
 :parameters ()
 :precondition (and (at_13_6) (found))
 :effect (and (not (at_13_6)) (near_14_6))
 :poss-effect (and (not (found)))
)

(:action move_toward_13_6_13_5
 :parameters ()
 :precondition (and (at_13_6) (found))
 :effect (and (not (at_13_6)) (near_13_5))
 :poss-effect (and (not (found)))
)

(:action move_toward_13_6_13_7
 :parameters ()
 :precondition (and (at_13_6) (found))
 :effect (and (not (at_13_6)) (near_13_7))
 :poss-effect (and (not (found)))
)

(:action move_toward_13_7_12_7
 :parameters ()
 :precondition (and (at_13_7) (found))
 :effect (and (not (at_13_7)) (near_12_7))
 :poss-effect (and (not (found)))
)

(:action move_toward_13_7_14_7
 :parameters ()
 :precondition (and (at_13_7) (found))
 :effect (and (not (at_13_7)) (near_14_7))
 :poss-effect (and (not (found)))
)

(:action move_toward_13_7_13_6
 :parameters ()
 :precondition (and (at_13_7) (found))
 :effect (and (not (at_13_7)) (near_13_6))
 :poss-effect (and (not (found)))
)

(:action move_toward_13_7_13_8
 :parameters ()
 :precondition (and (at_13_7) (found))
 :effect (and (not (at_13_7)) (near_13_8))
 :poss-effect (and (not (found)))
)

(:action move_toward_13_8_12_8
 :parameters ()
 :precondition (and (at_13_8) (found))
 :effect (and (not (at_13_8)) (near_12_8))
 :poss-effect (and (not (found)))
)

(:action move_toward_13_8_14_8
 :parameters ()
 :precondition (and (at_13_8) (found))
 :effect (and (not (at_13_8)) (near_14_8))
 :poss-effect (and (not (found)))
)

(:action move_toward_13_8_13_7
 :parameters ()
 :precondition (and (at_13_8) (found))
 :effect (and (not (at_13_8)) (near_13_7))
 :poss-effect (and (not (found)))
)

(:action move_toward_13_8_13_9
 :parameters ()
 :precondition (and (at_13_8) (found))
 :effect (and (not (at_13_8)) (near_13_9))
 :poss-effect (and (not (found)))
)

(:action move_toward_13_9_12_9
 :parameters ()
 :precondition (and (at_13_9) (found))
 :effect (and (not (at_13_9)) (near_12_9))
 :poss-effect (and (not (found)))
)

(:action move_toward_13_9_14_9
 :parameters ()
 :precondition (and (at_13_9) (found))
 :effect (and (not (at_13_9)) (near_14_9))
 :poss-effect (and (not (found)))
)

(:action move_toward_13_9_13_8
 :parameters ()
 :precondition (and (at_13_9) (found))
 :effect (and (not (at_13_9)) (near_13_8))
 :poss-effect (and (not (found)))
)

(:action move_toward_13_9_13_10
 :parameters ()
 :precondition (and (at_13_9) (found))
 :effect (and (not (at_13_9)) (near_13_10))
 :poss-effect (and (not (found)))
)

(:action move_toward_13_10_12_10
 :parameters ()
 :precondition (and (at_13_10) (found))
 :effect (and (not (at_13_10)) (near_12_10))
 :poss-effect (and (not (found)))
)

(:action move_toward_13_10_14_10
 :parameters ()
 :precondition (and (at_13_10) (found))
 :effect (and (not (at_13_10)) (near_14_10))
 :poss-effect (and (not (found)))
)

(:action move_toward_13_10_13_9
 :parameters ()
 :precondition (and (at_13_10) (found))
 :effect (and (not (at_13_10)) (near_13_9))
 :poss-effect (and (not (found)))
)

(:action move_toward_13_10_13_11
 :parameters ()
 :precondition (and (at_13_10) (found))
 :effect (and (not (at_13_10)) (near_13_11))
 :poss-effect (and (not (found)))
)

(:action move_toward_13_11_12_11
 :parameters ()
 :precondition (and (at_13_11) (found))
 :effect (and (not (at_13_11)) (near_12_11))
 :poss-effect (and (not (found)))
)

(:action move_toward_13_11_14_11
 :parameters ()
 :precondition (and (at_13_11) (found))
 :effect (and (not (at_13_11)) (near_14_11))
 :poss-effect (and (not (found)))
)

(:action move_toward_13_11_13_10
 :parameters ()
 :precondition (and (at_13_11) (found))
 :effect (and (not (at_13_11)) (near_13_10))
 :poss-effect (and (not (found)))
)

(:action move_toward_13_11_13_12
 :parameters ()
 :precondition (and (at_13_11) (found))
 :effect (and (not (at_13_11)) (near_13_12))
 :poss-effect (and (not (found)))
)

(:action move_toward_13_12_12_12
 :parameters ()
 :precondition (and (at_13_12) (found))
 :effect (and (not (at_13_12)) (near_12_12))
 :poss-effect (and (not (found)))
)

(:action move_toward_13_12_14_12
 :parameters ()
 :precondition (and (at_13_12) (found))
 :effect (and (not (at_13_12)) (near_14_12))
 :poss-effect (and (not (found)))
)

(:action move_toward_13_12_13_11
 :parameters ()
 :precondition (and (at_13_12) (found))
 :effect (and (not (at_13_12)) (near_13_11))
 :poss-effect (and (not (found)))
)

(:action move_toward_13_12_13_13
 :parameters ()
 :precondition (and (at_13_12) (found))
 :effect (and (not (at_13_12)) (near_13_13))
 :poss-effect (and (not (found)))
)

(:action move_toward_13_13_12_13
 :parameters ()
 :precondition (and (at_13_13) (found))
 :effect (and (not (at_13_13)) (near_12_13))
 :poss-effect (and (not (found)))
)

(:action move_toward_13_13_14_13
 :parameters ()
 :precondition (and (at_13_13) (found))
 :effect (and (not (at_13_13)) (near_14_13))
 :poss-effect (and (not (found)))
)

(:action move_toward_13_13_13_12
 :parameters ()
 :precondition (and (at_13_13) (found))
 :effect (and (not (at_13_13)) (near_13_12))
 :poss-effect (and (not (found)))
)

(:action move_toward_13_13_13_14
 :parameters ()
 :precondition (and (at_13_13) (found))
 :effect (and (not (at_13_13)) (near_13_14))
 :poss-effect (and (not (found)))
)

(:action move_toward_13_14_12_14
 :parameters ()
 :precondition (and (at_13_14) (found))
 :effect (and (not (at_13_14)) (near_12_14))
 :poss-effect (and (not (found)))
)

(:action move_toward_13_14_14_14
 :parameters ()
 :precondition (and (at_13_14) (found))
 :effect (and (not (at_13_14)) (near_14_14))
 :poss-effect (and (not (found)))
)

(:action move_toward_13_14_13_13
 :parameters ()
 :precondition (and (at_13_14) (found))
 :effect (and (not (at_13_14)) (near_13_13))
 :poss-effect (and (not (found)))
)

(:action move_toward_13_14_13_15
 :parameters ()
 :precondition (and (at_13_14) (found))
 :effect (and (not (at_13_14)) (near_13_15))
 :poss-effect (and (not (found)))
)

(:action move_toward_13_15_12_15
 :parameters ()
 :precondition (and (at_13_15) (found))
 :effect (and (not (at_13_15)) (near_12_15))
 :poss-effect (and (not (found)))
)

(:action move_toward_13_15_14_15
 :parameters ()
 :precondition (and (at_13_15) (found))
 :effect (and (not (at_13_15)) (near_14_15))
 :poss-effect (and (not (found)))
)

(:action move_toward_13_15_13_14
 :parameters ()
 :precondition (and (at_13_15) (found))
 :effect (and (not (at_13_15)) (near_13_14))
 :poss-effect (and (not (found)))
)

(:action move_toward_14_0_13_0
 :parameters ()
 :precondition (and (at_14_0) (found))
 :effect (and (not (at_14_0)) (near_13_0))
 :poss-effect (and (not (found)))
)

(:action move_toward_14_0_15_0
 :parameters ()
 :precondition (and (at_14_0) (found))
 :effect (and (not (at_14_0)) (near_15_0))
 :poss-effect (and (not (found)))
)

(:action move_toward_14_0_14_1
 :parameters ()
 :precondition (and (at_14_0) (found))
 :effect (and (not (at_14_0)) (near_14_1))
 :poss-effect (and (not (found)))
)

(:action move_toward_14_1_13_1
 :parameters ()
 :precondition (and (at_14_1) (found))
 :effect (and (not (at_14_1)) (near_13_1))
 :poss-effect (and (not (found)))
)

(:action move_toward_14_1_15_1
 :parameters ()
 :precondition (and (at_14_1) (found))
 :effect (and (not (at_14_1)) (near_15_1))
 :poss-effect (and (not (found)))
)

(:action move_toward_14_1_14_0
 :parameters ()
 :precondition (and (at_14_1) (found))
 :effect (and (not (at_14_1)) (near_14_0))
 :poss-effect (and (not (found)))
)

(:action move_toward_14_1_14_2
 :parameters ()
 :precondition (and (at_14_1) (found))
 :effect (and (not (at_14_1)) (near_14_2))
 :poss-effect (and (not (found)))
)

(:action move_toward_14_2_13_2
 :parameters ()
 :precondition (and (at_14_2) (found))
 :effect (and (not (at_14_2)) (near_13_2))
 :poss-effect (and (not (found)))
)

(:action move_toward_14_2_15_2
 :parameters ()
 :precondition (and (at_14_2) (found))
 :effect (and (not (at_14_2)) (near_15_2))
 :poss-effect (and (not (found)))
)

(:action move_toward_14_2_14_1
 :parameters ()
 :precondition (and (at_14_2) (found))
 :effect (and (not (at_14_2)) (near_14_1))
 :poss-effect (and (not (found)))
)

(:action move_toward_14_2_14_3
 :parameters ()
 :precondition (and (at_14_2) (found))
 :effect (and (not (at_14_2)) (near_14_3))
 :poss-effect (and (not (found)))
)

(:action move_toward_14_3_13_3
 :parameters ()
 :precondition (and (at_14_3) (found))
 :effect (and (not (at_14_3)) (near_13_3))
 :poss-effect (and (not (found)))
)

(:action move_toward_14_3_15_3
 :parameters ()
 :precondition (and (at_14_3) (found))
 :effect (and (not (at_14_3)) (near_15_3))
 :poss-effect (and (not (found)))
)

(:action move_toward_14_3_14_2
 :parameters ()
 :precondition (and (at_14_3) (found))
 :effect (and (not (at_14_3)) (near_14_2))
 :poss-effect (and (not (found)))
)

(:action move_toward_14_3_14_4
 :parameters ()
 :precondition (and (at_14_3) (found))
 :effect (and (not (at_14_3)) (near_14_4))
 :poss-effect (and (not (found)))
)

(:action move_toward_14_4_13_4
 :parameters ()
 :precondition (and (at_14_4) (found))
 :effect (and (not (at_14_4)) (near_13_4))
 :poss-effect (and (not (found)))
)

(:action move_toward_14_4_15_4
 :parameters ()
 :precondition (and (at_14_4) (found))
 :effect (and (not (at_14_4)) (near_15_4))
 :poss-effect (and (not (found)))
)

(:action move_toward_14_4_14_3
 :parameters ()
 :precondition (and (at_14_4) (found))
 :effect (and (not (at_14_4)) (near_14_3))
 :poss-effect (and (not (found)))
)

(:action move_toward_14_4_14_5
 :parameters ()
 :precondition (and (at_14_4) (found))
 :effect (and (not (at_14_4)) (near_14_5))
 :poss-effect (and (not (found)))
)

(:action move_toward_14_5_13_5
 :parameters ()
 :precondition (and (at_14_5) (found))
 :effect (and (not (at_14_5)) (near_13_5))
 :poss-effect (and (not (found)))
)

(:action move_toward_14_5_15_5
 :parameters ()
 :precondition (and (at_14_5) (found))
 :effect (and (not (at_14_5)) (near_15_5))
 :poss-effect (and (not (found)))
)

(:action move_toward_14_5_14_4
 :parameters ()
 :precondition (and (at_14_5) (found))
 :effect (and (not (at_14_5)) (near_14_4))
 :poss-effect (and (not (found)))
)

(:action move_toward_14_5_14_6
 :parameters ()
 :precondition (and (at_14_5) (found))
 :effect (and (not (at_14_5)) (near_14_6))
 :poss-effect (and (not (found)))
)

(:action move_toward_14_6_13_6
 :parameters ()
 :precondition (and (at_14_6) (found))
 :effect (and (not (at_14_6)) (near_13_6))
 :poss-effect (and (not (found)))
)

(:action move_toward_14_6_15_6
 :parameters ()
 :precondition (and (at_14_6) (found))
 :effect (and (not (at_14_6)) (near_15_6))
 :poss-effect (and (not (found)))
)

(:action move_toward_14_6_14_5
 :parameters ()
 :precondition (and (at_14_6) (found))
 :effect (and (not (at_14_6)) (near_14_5))
 :poss-effect (and (not (found)))
)

(:action move_toward_14_6_14_7
 :parameters ()
 :precondition (and (at_14_6) (found))
 :effect (and (not (at_14_6)) (near_14_7))
 :poss-effect (and (not (found)))
)

(:action move_toward_14_7_13_7
 :parameters ()
 :precondition (and (at_14_7) (found))
 :effect (and (not (at_14_7)) (near_13_7))
 :poss-effect (and (not (found)))
)

(:action move_toward_14_7_15_7
 :parameters ()
 :precondition (and (at_14_7) (found))
 :effect (and (not (at_14_7)) (near_15_7))
 :poss-effect (and (not (found)))
)

(:action move_toward_14_7_14_6
 :parameters ()
 :precondition (and (at_14_7) (found))
 :effect (and (not (at_14_7)) (near_14_6))
 :poss-effect (and (not (found)))
)

(:action move_toward_14_7_14_8
 :parameters ()
 :precondition (and (at_14_7) (found))
 :effect (and (not (at_14_7)) (near_14_8))
 :poss-effect (and (not (found)))
)

(:action move_toward_14_8_13_8
 :parameters ()
 :precondition (and (at_14_8) (found))
 :effect (and (not (at_14_8)) (near_13_8))
 :poss-effect (and (not (found)))
)

(:action move_toward_14_8_15_8
 :parameters ()
 :precondition (and (at_14_8) (found))
 :effect (and (not (at_14_8)) (near_15_8))
 :poss-effect (and (not (found)))
)

(:action move_toward_14_8_14_7
 :parameters ()
 :precondition (and (at_14_8) (found))
 :effect (and (not (at_14_8)) (near_14_7))
 :poss-effect (and (not (found)))
)

(:action move_toward_14_8_14_9
 :parameters ()
 :precondition (and (at_14_8) (found))
 :effect (and (not (at_14_8)) (near_14_9))
 :poss-effect (and (not (found)))
)

(:action move_toward_14_9_13_9
 :parameters ()
 :precondition (and (at_14_9) (found))
 :effect (and (not (at_14_9)) (near_13_9))
 :poss-effect (and (not (found)))
)

(:action move_toward_14_9_15_9
 :parameters ()
 :precondition (and (at_14_9) (found))
 :effect (and (not (at_14_9)) (near_15_9))
 :poss-effect (and (not (found)))
)

(:action move_toward_14_9_14_8
 :parameters ()
 :precondition (and (at_14_9) (found))
 :effect (and (not (at_14_9)) (near_14_8))
 :poss-effect (and (not (found)))
)

(:action move_toward_14_9_14_10
 :parameters ()
 :precondition (and (at_14_9) (found))
 :effect (and (not (at_14_9)) (near_14_10))
 :poss-effect (and (not (found)))
)

(:action move_toward_14_10_13_10
 :parameters ()
 :precondition (and (at_14_10) (found))
 :effect (and (not (at_14_10)) (near_13_10))
 :poss-effect (and (not (found)))
)

(:action move_toward_14_10_15_10
 :parameters ()
 :precondition (and (at_14_10) (found))
 :effect (and (not (at_14_10)) (near_15_10))
 :poss-effect (and (not (found)))
)

(:action move_toward_14_10_14_9
 :parameters ()
 :precondition (and (at_14_10) (found))
 :effect (and (not (at_14_10)) (near_14_9))
 :poss-effect (and (not (found)))
)

(:action move_toward_14_10_14_11
 :parameters ()
 :precondition (and (at_14_10) (found))
 :effect (and (not (at_14_10)) (near_14_11))
 :poss-effect (and (not (found)))
)

(:action move_toward_14_11_13_11
 :parameters ()
 :precondition (and (at_14_11) (found))
 :effect (and (not (at_14_11)) (near_13_11))
 :poss-effect (and (not (found)))
)

(:action move_toward_14_11_15_11
 :parameters ()
 :precondition (and (at_14_11) (found))
 :effect (and (not (at_14_11)) (near_15_11))
 :poss-effect (and (not (found)))
)

(:action move_toward_14_11_14_10
 :parameters ()
 :precondition (and (at_14_11) (found))
 :effect (and (not (at_14_11)) (near_14_10))
 :poss-effect (and (not (found)))
)

(:action move_toward_14_11_14_12
 :parameters ()
 :precondition (and (at_14_11) (found))
 :effect (and (not (at_14_11)) (near_14_12))
 :poss-effect (and (not (found)))
)

(:action move_toward_14_12_13_12
 :parameters ()
 :precondition (and (at_14_12) (found))
 :effect (and (not (at_14_12)) (near_13_12))
 :poss-effect (and (not (found)))
)

(:action move_toward_14_12_15_12
 :parameters ()
 :precondition (and (at_14_12) (found))
 :effect (and (not (at_14_12)) (near_15_12))
 :poss-effect (and (not (found)))
)

(:action move_toward_14_12_14_11
 :parameters ()
 :precondition (and (at_14_12) (found))
 :effect (and (not (at_14_12)) (near_14_11))
 :poss-effect (and (not (found)))
)

(:action move_toward_14_12_14_13
 :parameters ()
 :precondition (and (at_14_12) (found))
 :effect (and (not (at_14_12)) (near_14_13))
 :poss-effect (and (not (found)))
)

(:action move_toward_14_13_13_13
 :parameters ()
 :precondition (and (at_14_13) (found))
 :effect (and (not (at_14_13)) (near_13_13))
 :poss-effect (and (not (found)))
)

(:action move_toward_14_13_15_13
 :parameters ()
 :precondition (and (at_14_13) (found))
 :effect (and (not (at_14_13)) (near_15_13))
 :poss-effect (and (not (found)))
)

(:action move_toward_14_13_14_12
 :parameters ()
 :precondition (and (at_14_13) (found))
 :effect (and (not (at_14_13)) (near_14_12))
 :poss-effect (and (not (found)))
)

(:action move_toward_14_13_14_14
 :parameters ()
 :precondition (and (at_14_13) (found))
 :effect (and (not (at_14_13)) (near_14_14))
 :poss-effect (and (not (found)))
)

(:action move_toward_14_14_13_14
 :parameters ()
 :precondition (and (at_14_14) (found))
 :effect (and (not (at_14_14)) (near_13_14))
 :poss-effect (and (not (found)))
)

(:action move_toward_14_14_15_14
 :parameters ()
 :precondition (and (at_14_14) (found))
 :effect (and (not (at_14_14)) (near_15_14))
 :poss-effect (and (not (found)))
)

(:action move_toward_14_14_14_13
 :parameters ()
 :precondition (and (at_14_14) (found))
 :effect (and (not (at_14_14)) (near_14_13))
 :poss-effect (and (not (found)))
)

(:action move_toward_14_14_14_15
 :parameters ()
 :precondition (and (at_14_14) (found))
 :effect (and (not (at_14_14)) (near_14_15))
 :poss-effect (and (not (found)))
)

(:action move_toward_14_15_13_15
 :parameters ()
 :precondition (and (at_14_15) (found))
 :effect (and (not (at_14_15)) (near_13_15))
 :poss-effect (and (not (found)))
)

(:action move_toward_14_15_15_15
 :parameters ()
 :precondition (and (at_14_15) (found))
 :effect (and (not (at_14_15)) (near_15_15))
 :poss-effect (and (not (found)))
)

(:action move_toward_14_15_14_14
 :parameters ()
 :precondition (and (at_14_15) (found))
 :effect (and (not (at_14_15)) (near_14_14))
 :poss-effect (and (not (found)))
)

(:action move_toward_15_0_14_0
 :parameters ()
 :precondition (and (at_15_0) (found))
 :effect (and (not (at_15_0)) (near_14_0))
 :poss-effect (and (not (found)))
)

(:action move_toward_15_0_15_1
 :parameters ()
 :precondition (and (at_15_0) (found))
 :effect (and (not (at_15_0)) (near_15_1))
 :poss-effect (and (not (found)))
)

(:action move_toward_15_1_14_1
 :parameters ()
 :precondition (and (at_15_1) (found))
 :effect (and (not (at_15_1)) (near_14_1))
 :poss-effect (and (not (found)))
)

(:action move_toward_15_1_15_0
 :parameters ()
 :precondition (and (at_15_1) (found))
 :effect (and (not (at_15_1)) (near_15_0))
 :poss-effect (and (not (found)))
)

(:action move_toward_15_1_15_2
 :parameters ()
 :precondition (and (at_15_1) (found))
 :effect (and (not (at_15_1)) (near_15_2))
 :poss-effect (and (not (found)))
)

(:action move_toward_15_2_14_2
 :parameters ()
 :precondition (and (at_15_2) (found))
 :effect (and (not (at_15_2)) (near_14_2))
 :poss-effect (and (not (found)))
)

(:action move_toward_15_2_15_1
 :parameters ()
 :precondition (and (at_15_2) (found))
 :effect (and (not (at_15_2)) (near_15_1))
 :poss-effect (and (not (found)))
)

(:action move_toward_15_2_15_3
 :parameters ()
 :precondition (and (at_15_2) (found))
 :effect (and (not (at_15_2)) (near_15_3))
 :poss-effect (and (not (found)))
)

(:action move_toward_15_3_14_3
 :parameters ()
 :precondition (and (at_15_3) (found))
 :effect (and (not (at_15_3)) (near_14_3))
 :poss-effect (and (not (found)))
)

(:action move_toward_15_3_15_2
 :parameters ()
 :precondition (and (at_15_3) (found))
 :effect (and (not (at_15_3)) (near_15_2))
 :poss-effect (and (not (found)))
)

(:action move_toward_15_3_15_4
 :parameters ()
 :precondition (and (at_15_3) (found))
 :effect (and (not (at_15_3)) (near_15_4))
 :poss-effect (and (not (found)))
)

(:action move_toward_15_4_14_4
 :parameters ()
 :precondition (and (at_15_4) (found))
 :effect (and (not (at_15_4)) (near_14_4))
 :poss-effect (and (not (found)))
)

(:action move_toward_15_4_15_3
 :parameters ()
 :precondition (and (at_15_4) (found))
 :effect (and (not (at_15_4)) (near_15_3))
 :poss-effect (and (not (found)))
)

(:action move_toward_15_4_15_5
 :parameters ()
 :precondition (and (at_15_4) (found))
 :effect (and (not (at_15_4)) (near_15_5))
 :poss-effect (and (not (found)))
)

(:action move_toward_15_5_14_5
 :parameters ()
 :precondition (and (at_15_5) (found))
 :effect (and (not (at_15_5)) (near_14_5))
 :poss-effect (and (not (found)))
)

(:action move_toward_15_5_15_4
 :parameters ()
 :precondition (and (at_15_5) (found))
 :effect (and (not (at_15_5)) (near_15_4))
 :poss-effect (and (not (found)))
)

(:action move_toward_15_5_15_6
 :parameters ()
 :precondition (and (at_15_5) (found))
 :effect (and (not (at_15_5)) (near_15_6))
 :poss-effect (and (not (found)))
)

(:action move_toward_15_6_14_6
 :parameters ()
 :precondition (and (at_15_6) (found))
 :effect (and (not (at_15_6)) (near_14_6))
 :poss-effect (and (not (found)))
)

(:action move_toward_15_6_15_5
 :parameters ()
 :precondition (and (at_15_6) (found))
 :effect (and (not (at_15_6)) (near_15_5))
 :poss-effect (and (not (found)))
)

(:action move_toward_15_6_15_7
 :parameters ()
 :precondition (and (at_15_6) (found))
 :effect (and (not (at_15_6)) (near_15_7))
 :poss-effect (and (not (found)))
)

(:action move_toward_15_7_14_7
 :parameters ()
 :precondition (and (at_15_7) (found))
 :effect (and (not (at_15_7)) (near_14_7))
 :poss-effect (and (not (found)))
)

(:action move_toward_15_7_15_6
 :parameters ()
 :precondition (and (at_15_7) (found))
 :effect (and (not (at_15_7)) (near_15_6))
 :poss-effect (and (not (found)))
)

(:action move_toward_15_7_15_8
 :parameters ()
 :precondition (and (at_15_7) (found))
 :effect (and (not (at_15_7)) (near_15_8))
 :poss-effect (and (not (found)))
)

(:action move_toward_15_8_14_8
 :parameters ()
 :precondition (and (at_15_8) (found))
 :effect (and (not (at_15_8)) (near_14_8))
 :poss-effect (and (not (found)))
)

(:action move_toward_15_8_15_7
 :parameters ()
 :precondition (and (at_15_8) (found))
 :effect (and (not (at_15_8)) (near_15_7))
 :poss-effect (and (not (found)))
)

(:action move_toward_15_8_15_9
 :parameters ()
 :precondition (and (at_15_8) (found))
 :effect (and (not (at_15_8)) (near_15_9))
 :poss-effect (and (not (found)))
)

(:action move_toward_15_9_14_9
 :parameters ()
 :precondition (and (at_15_9) (found))
 :effect (and (not (at_15_9)) (near_14_9))
 :poss-effect (and (not (found)))
)

(:action move_toward_15_9_15_8
 :parameters ()
 :precondition (and (at_15_9) (found))
 :effect (and (not (at_15_9)) (near_15_8))
 :poss-effect (and (not (found)))
)

(:action move_toward_15_9_15_10
 :parameters ()
 :precondition (and (at_15_9) (found))
 :effect (and (not (at_15_9)) (near_15_10))
 :poss-effect (and (not (found)))
)

(:action move_toward_15_10_14_10
 :parameters ()
 :precondition (and (at_15_10) (found))
 :effect (and (not (at_15_10)) (near_14_10))
 :poss-effect (and (not (found)))
)

(:action move_toward_15_10_15_9
 :parameters ()
 :precondition (and (at_15_10) (found))
 :effect (and (not (at_15_10)) (near_15_9))
 :poss-effect (and (not (found)))
)

(:action move_toward_15_10_15_11
 :parameters ()
 :precondition (and (at_15_10) (found))
 :effect (and (not (at_15_10)) (near_15_11))
 :poss-effect (and (not (found)))
)

(:action move_toward_15_11_14_11
 :parameters ()
 :precondition (and (at_15_11) (found))
 :effect (and (not (at_15_11)) (near_14_11))
 :poss-effect (and (not (found)))
)

(:action move_toward_15_11_15_10
 :parameters ()
 :precondition (and (at_15_11) (found))
 :effect (and (not (at_15_11)) (near_15_10))
 :poss-effect (and (not (found)))
)

(:action move_toward_15_11_15_12
 :parameters ()
 :precondition (and (at_15_11) (found))
 :effect (and (not (at_15_11)) (near_15_12))
 :poss-effect (and (not (found)))
)

(:action move_toward_15_12_14_12
 :parameters ()
 :precondition (and (at_15_12) (found))
 :effect (and (not (at_15_12)) (near_14_12))
 :poss-effect (and (not (found)))
)

(:action move_toward_15_12_15_11
 :parameters ()
 :precondition (and (at_15_12) (found))
 :effect (and (not (at_15_12)) (near_15_11))
 :poss-effect (and (not (found)))
)

(:action move_toward_15_12_15_13
 :parameters ()
 :precondition (and (at_15_12) (found))
 :effect (and (not (at_15_12)) (near_15_13))
 :poss-effect (and (not (found)))
)

(:action move_toward_15_13_14_13
 :parameters ()
 :precondition (and (at_15_13) (found))
 :effect (and (not (at_15_13)) (near_14_13))
 :poss-effect (and (not (found)))
)

(:action move_toward_15_13_15_12
 :parameters ()
 :precondition (and (at_15_13) (found))
 :effect (and (not (at_15_13)) (near_15_12))
 :poss-effect (and (not (found)))
)

(:action move_toward_15_13_15_14
 :parameters ()
 :precondition (and (at_15_13) (found))
 :effect (and (not (at_15_13)) (near_15_14))
 :poss-effect (and (not (found)))
)

(:action move_toward_15_14_14_14
 :parameters ()
 :precondition (and (at_15_14) (found))
 :effect (and (not (at_15_14)) (near_14_14))
 :poss-effect (and (not (found)))
)

(:action move_toward_15_14_15_13
 :parameters ()
 :precondition (and (at_15_14) (found))
 :effect (and (not (at_15_14)) (near_15_13))
 :poss-effect (and (not (found)))
)

(:action move_toward_15_14_15_15
 :parameters ()
 :precondition (and (at_15_14) (found))
 :effect (and (not (at_15_14)) (near_15_15))
 :poss-effect (and (not (found)))
)

(:action move_toward_15_15_14_15
 :parameters ()
 :precondition (and (at_15_15) (found))
 :effect (and (not (at_15_15)) (near_14_15))
 :poss-effect (and (not (found)))
)

(:action move_toward_15_15_15_14
 :parameters ()
 :precondition (and (at_15_15) (found))
 :effect (and (not (at_15_15)) (near_15_14))
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

(:action arrive_at_0_7_0_8
 :parameters ()
 :precondition (and (near_0_7) (near_0_8))
 :poss-precondition (and (found))
 :effect (and (not (near_0_7)) (at_0_8))
)

(:action arrive_at_0_8_1_8
 :parameters ()
 :precondition (and (near_0_8) (near_1_8))
 :poss-precondition (and (found))
 :effect (and (not (near_0_8)) (at_1_8))
)

(:action arrive_at_0_8_0_7
 :parameters ()
 :precondition (and (near_0_8) (near_0_7))
 :poss-precondition (and (found))
 :effect (and (not (near_0_8)) (at_0_7))
)

(:action arrive_at_0_8_0_9
 :parameters ()
 :precondition (and (near_0_8) (near_0_9))
 :poss-precondition (and (found))
 :effect (and (not (near_0_8)) (at_0_9))
)

(:action arrive_at_0_9_1_9
 :parameters ()
 :precondition (and (near_0_9) (near_1_9))
 :poss-precondition (and (found))
 :effect (and (not (near_0_9)) (at_1_9))
)

(:action arrive_at_0_9_0_8
 :parameters ()
 :precondition (and (near_0_9) (near_0_8))
 :poss-precondition (and (found))
 :effect (and (not (near_0_9)) (at_0_8))
)

(:action arrive_at_0_9_0_10
 :parameters ()
 :precondition (and (near_0_9) (near_0_10))
 :poss-precondition (and (found))
 :effect (and (not (near_0_9)) (at_0_10))
)

(:action arrive_at_0_10_1_10
 :parameters ()
 :precondition (and (near_0_10) (near_1_10))
 :poss-precondition (and (found))
 :effect (and (not (near_0_10)) (at_1_10))
)

(:action arrive_at_0_10_0_9
 :parameters ()
 :precondition (and (near_0_10) (near_0_9))
 :poss-precondition (and (found))
 :effect (and (not (near_0_10)) (at_0_9))
)

(:action arrive_at_0_10_0_11
 :parameters ()
 :precondition (and (near_0_10) (near_0_11))
 :poss-precondition (and (found))
 :effect (and (not (near_0_10)) (at_0_11))
)

(:action arrive_at_0_11_1_11
 :parameters ()
 :precondition (and (near_0_11) (near_1_11))
 :poss-precondition (and (found))
 :effect (and (not (near_0_11)) (at_1_11))
)

(:action arrive_at_0_11_0_10
 :parameters ()
 :precondition (and (near_0_11) (near_0_10))
 :poss-precondition (and (found))
 :effect (and (not (near_0_11)) (at_0_10))
)

(:action arrive_at_0_11_0_12
 :parameters ()
 :precondition (and (near_0_11) (near_0_12))
 :poss-precondition (and (found))
 :effect (and (not (near_0_11)) (at_0_12))
)

(:action arrive_at_0_12_1_12
 :parameters ()
 :precondition (and (near_0_12) (near_1_12))
 :poss-precondition (and (found))
 :effect (and (not (near_0_12)) (at_1_12))
)

(:action arrive_at_0_12_0_11
 :parameters ()
 :precondition (and (near_0_12) (near_0_11))
 :poss-precondition (and (found))
 :effect (and (not (near_0_12)) (at_0_11))
)

(:action arrive_at_0_12_0_13
 :parameters ()
 :precondition (and (near_0_12) (near_0_13))
 :poss-precondition (and (found))
 :effect (and (not (near_0_12)) (at_0_13))
)

(:action arrive_at_0_13_1_13
 :parameters ()
 :precondition (and (near_0_13) (near_1_13))
 :poss-precondition (and (found))
 :effect (and (not (near_0_13)) (at_1_13))
)

(:action arrive_at_0_13_0_12
 :parameters ()
 :precondition (and (near_0_13) (near_0_12))
 :poss-precondition (and (found))
 :effect (and (not (near_0_13)) (at_0_12))
)

(:action arrive_at_0_13_0_14
 :parameters ()
 :precondition (and (near_0_13) (near_0_14))
 :poss-precondition (and (found))
 :effect (and (not (near_0_13)) (at_0_14))
)

(:action arrive_at_0_14_1_14
 :parameters ()
 :precondition (and (near_0_14) (near_1_14))
 :poss-precondition (and (found))
 :effect (and (not (near_0_14)) (at_1_14))
)

(:action arrive_at_0_14_0_13
 :parameters ()
 :precondition (and (near_0_14) (near_0_13))
 :poss-precondition (and (found))
 :effect (and (not (near_0_14)) (at_0_13))
)

(:action arrive_at_0_14_0_15
 :parameters ()
 :precondition (and (near_0_14) (near_0_15))
 :poss-precondition (and (found))
 :effect (and (not (near_0_14)) (at_0_15))
)

(:action arrive_at_0_15_1_15
 :parameters ()
 :precondition (and (near_0_15) (near_1_15))
 :poss-precondition (and (found))
 :effect (and (not (near_0_15)) (at_1_15))
)

(:action arrive_at_0_15_0_14
 :parameters ()
 :precondition (and (near_0_15) (near_0_14))
 :poss-precondition (and (found))
 :effect (and (not (near_0_15)) (at_0_14))
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

(:action arrive_at_1_7_1_8
 :parameters ()
 :precondition (and (near_1_7) (near_1_8))
 :poss-precondition (and (found))
 :effect (and (not (near_1_7)) (at_1_8))
)

(:action arrive_at_1_8_0_8
 :parameters ()
 :precondition (and (near_1_8) (near_0_8))
 :poss-precondition (and (found))
 :effect (and (not (near_1_8)) (at_0_8))
)

(:action arrive_at_1_8_2_8
 :parameters ()
 :precondition (and (near_1_8) (near_2_8))
 :poss-precondition (and (found))
 :effect (and (not (near_1_8)) (at_2_8))
)

(:action arrive_at_1_8_1_7
 :parameters ()
 :precondition (and (near_1_8) (near_1_7))
 :poss-precondition (and (found))
 :effect (and (not (near_1_8)) (at_1_7))
)

(:action arrive_at_1_8_1_9
 :parameters ()
 :precondition (and (near_1_8) (near_1_9))
 :poss-precondition (and (found))
 :effect (and (not (near_1_8)) (at_1_9))
)

(:action arrive_at_1_9_0_9
 :parameters ()
 :precondition (and (near_1_9) (near_0_9))
 :poss-precondition (and (found))
 :effect (and (not (near_1_9)) (at_0_9))
)

(:action arrive_at_1_9_2_9
 :parameters ()
 :precondition (and (near_1_9) (near_2_9))
 :poss-precondition (and (found))
 :effect (and (not (near_1_9)) (at_2_9))
)

(:action arrive_at_1_9_1_8
 :parameters ()
 :precondition (and (near_1_9) (near_1_8))
 :poss-precondition (and (found))
 :effect (and (not (near_1_9)) (at_1_8))
)

(:action arrive_at_1_9_1_10
 :parameters ()
 :precondition (and (near_1_9) (near_1_10))
 :poss-precondition (and (found))
 :effect (and (not (near_1_9)) (at_1_10))
)

(:action arrive_at_1_10_0_10
 :parameters ()
 :precondition (and (near_1_10) (near_0_10))
 :poss-precondition (and (found))
 :effect (and (not (near_1_10)) (at_0_10))
)

(:action arrive_at_1_10_2_10
 :parameters ()
 :precondition (and (near_1_10) (near_2_10))
 :poss-precondition (and (found))
 :effect (and (not (near_1_10)) (at_2_10))
)

(:action arrive_at_1_10_1_9
 :parameters ()
 :precondition (and (near_1_10) (near_1_9))
 :poss-precondition (and (found))
 :effect (and (not (near_1_10)) (at_1_9))
)

(:action arrive_at_1_10_1_11
 :parameters ()
 :precondition (and (near_1_10) (near_1_11))
 :poss-precondition (and (found))
 :effect (and (not (near_1_10)) (at_1_11))
)

(:action arrive_at_1_11_0_11
 :parameters ()
 :precondition (and (near_1_11) (near_0_11))
 :poss-precondition (and (found))
 :effect (and (not (near_1_11)) (at_0_11))
)

(:action arrive_at_1_11_2_11
 :parameters ()
 :precondition (and (near_1_11) (near_2_11))
 :poss-precondition (and (found))
 :effect (and (not (near_1_11)) (at_2_11))
)

(:action arrive_at_1_11_1_10
 :parameters ()
 :precondition (and (near_1_11) (near_1_10))
 :poss-precondition (and (found))
 :effect (and (not (near_1_11)) (at_1_10))
)

(:action arrive_at_1_11_1_12
 :parameters ()
 :precondition (and (near_1_11) (near_1_12))
 :poss-precondition (and (found))
 :effect (and (not (near_1_11)) (at_1_12))
)

(:action arrive_at_1_12_0_12
 :parameters ()
 :precondition (and (near_1_12) (near_0_12))
 :poss-precondition (and (found))
 :effect (and (not (near_1_12)) (at_0_12))
)

(:action arrive_at_1_12_2_12
 :parameters ()
 :precondition (and (near_1_12) (near_2_12))
 :poss-precondition (and (found))
 :effect (and (not (near_1_12)) (at_2_12))
)

(:action arrive_at_1_12_1_11
 :parameters ()
 :precondition (and (near_1_12) (near_1_11))
 :poss-precondition (and (found))
 :effect (and (not (near_1_12)) (at_1_11))
)

(:action arrive_at_1_12_1_13
 :parameters ()
 :precondition (and (near_1_12) (near_1_13))
 :poss-precondition (and (found))
 :effect (and (not (near_1_12)) (at_1_13))
)

(:action arrive_at_1_13_0_13
 :parameters ()
 :precondition (and (near_1_13) (near_0_13))
 :poss-precondition (and (found))
 :effect (and (not (near_1_13)) (at_0_13))
)

(:action arrive_at_1_13_2_13
 :parameters ()
 :precondition (and (near_1_13) (near_2_13))
 :poss-precondition (and (found))
 :effect (and (not (near_1_13)) (at_2_13))
)

(:action arrive_at_1_13_1_12
 :parameters ()
 :precondition (and (near_1_13) (near_1_12))
 :poss-precondition (and (found))
 :effect (and (not (near_1_13)) (at_1_12))
)

(:action arrive_at_1_13_1_14
 :parameters ()
 :precondition (and (near_1_13) (near_1_14))
 :poss-precondition (and (found))
 :effect (and (not (near_1_13)) (at_1_14))
)

(:action arrive_at_1_14_0_14
 :parameters ()
 :precondition (and (near_1_14) (near_0_14))
 :poss-precondition (and (found))
 :effect (and (not (near_1_14)) (at_0_14))
)

(:action arrive_at_1_14_2_14
 :parameters ()
 :precondition (and (near_1_14) (near_2_14))
 :poss-precondition (and (found))
 :effect (and (not (near_1_14)) (at_2_14))
)

(:action arrive_at_1_14_1_13
 :parameters ()
 :precondition (and (near_1_14) (near_1_13))
 :poss-precondition (and (found))
 :effect (and (not (near_1_14)) (at_1_13))
)

(:action arrive_at_1_14_1_15
 :parameters ()
 :precondition (and (near_1_14) (near_1_15))
 :poss-precondition (and (found))
 :effect (and (not (near_1_14)) (at_1_15))
)

(:action arrive_at_1_15_0_15
 :parameters ()
 :precondition (and (near_1_15) (near_0_15))
 :poss-precondition (and (found))
 :effect (and (not (near_1_15)) (at_0_15))
)

(:action arrive_at_1_15_2_15
 :parameters ()
 :precondition (and (near_1_15) (near_2_15))
 :poss-precondition (and (found))
 :effect (and (not (near_1_15)) (at_2_15))
)

(:action arrive_at_1_15_1_14
 :parameters ()
 :precondition (and (near_1_15) (near_1_14))
 :poss-precondition (and (found))
 :effect (and (not (near_1_15)) (at_1_14))
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

(:action arrive_at_2_7_2_8
 :parameters ()
 :precondition (and (near_2_7) (near_2_8))
 :poss-precondition (and (found))
 :effect (and (not (near_2_7)) (at_2_8))
)

(:action arrive_at_2_8_1_8
 :parameters ()
 :precondition (and (near_2_8) (near_1_8))
 :poss-precondition (and (found))
 :effect (and (not (near_2_8)) (at_1_8))
)

(:action arrive_at_2_8_3_8
 :parameters ()
 :precondition (and (near_2_8) (near_3_8))
 :poss-precondition (and (found))
 :effect (and (not (near_2_8)) (at_3_8))
)

(:action arrive_at_2_8_2_7
 :parameters ()
 :precondition (and (near_2_8) (near_2_7))
 :poss-precondition (and (found))
 :effect (and (not (near_2_8)) (at_2_7))
)

(:action arrive_at_2_8_2_9
 :parameters ()
 :precondition (and (near_2_8) (near_2_9))
 :poss-precondition (and (found))
 :effect (and (not (near_2_8)) (at_2_9))
)

(:action arrive_at_2_9_1_9
 :parameters ()
 :precondition (and (near_2_9) (near_1_9))
 :poss-precondition (and (found))
 :effect (and (not (near_2_9)) (at_1_9))
)

(:action arrive_at_2_9_3_9
 :parameters ()
 :precondition (and (near_2_9) (near_3_9))
 :poss-precondition (and (found))
 :effect (and (not (near_2_9)) (at_3_9))
)

(:action arrive_at_2_9_2_8
 :parameters ()
 :precondition (and (near_2_9) (near_2_8))
 :poss-precondition (and (found))
 :effect (and (not (near_2_9)) (at_2_8))
)

(:action arrive_at_2_9_2_10
 :parameters ()
 :precondition (and (near_2_9) (near_2_10))
 :poss-precondition (and (found))
 :effect (and (not (near_2_9)) (at_2_10))
)

(:action arrive_at_2_10_1_10
 :parameters ()
 :precondition (and (near_2_10) (near_1_10))
 :poss-precondition (and (found))
 :effect (and (not (near_2_10)) (at_1_10))
)

(:action arrive_at_2_10_3_10
 :parameters ()
 :precondition (and (near_2_10) (near_3_10))
 :poss-precondition (and (found))
 :effect (and (not (near_2_10)) (at_3_10))
)

(:action arrive_at_2_10_2_9
 :parameters ()
 :precondition (and (near_2_10) (near_2_9))
 :poss-precondition (and (found))
 :effect (and (not (near_2_10)) (at_2_9))
)

(:action arrive_at_2_10_2_11
 :parameters ()
 :precondition (and (near_2_10) (near_2_11))
 :poss-precondition (and (found))
 :effect (and (not (near_2_10)) (at_2_11))
)

(:action arrive_at_2_11_1_11
 :parameters ()
 :precondition (and (near_2_11) (near_1_11))
 :poss-precondition (and (found))
 :effect (and (not (near_2_11)) (at_1_11))
)

(:action arrive_at_2_11_3_11
 :parameters ()
 :precondition (and (near_2_11) (near_3_11))
 :poss-precondition (and (found))
 :effect (and (not (near_2_11)) (at_3_11))
)

(:action arrive_at_2_11_2_10
 :parameters ()
 :precondition (and (near_2_11) (near_2_10))
 :poss-precondition (and (found))
 :effect (and (not (near_2_11)) (at_2_10))
)

(:action arrive_at_2_11_2_12
 :parameters ()
 :precondition (and (near_2_11) (near_2_12))
 :poss-precondition (and (found))
 :effect (and (not (near_2_11)) (at_2_12))
)

(:action arrive_at_2_12_1_12
 :parameters ()
 :precondition (and (near_2_12) (near_1_12))
 :poss-precondition (and (found))
 :effect (and (not (near_2_12)) (at_1_12))
)

(:action arrive_at_2_12_3_12
 :parameters ()
 :precondition (and (near_2_12) (near_3_12))
 :poss-precondition (and (found))
 :effect (and (not (near_2_12)) (at_3_12))
)

(:action arrive_at_2_12_2_11
 :parameters ()
 :precondition (and (near_2_12) (near_2_11))
 :poss-precondition (and (found))
 :effect (and (not (near_2_12)) (at_2_11))
)

(:action arrive_at_2_12_2_13
 :parameters ()
 :precondition (and (near_2_12) (near_2_13))
 :poss-precondition (and (found))
 :effect (and (not (near_2_12)) (at_2_13))
)

(:action arrive_at_2_13_1_13
 :parameters ()
 :precondition (and (near_2_13) (near_1_13))
 :poss-precondition (and (found))
 :effect (and (not (near_2_13)) (at_1_13))
)

(:action arrive_at_2_13_3_13
 :parameters ()
 :precondition (and (near_2_13) (near_3_13))
 :poss-precondition (and (found))
 :effect (and (not (near_2_13)) (at_3_13))
)

(:action arrive_at_2_13_2_12
 :parameters ()
 :precondition (and (near_2_13) (near_2_12))
 :poss-precondition (and (found))
 :effect (and (not (near_2_13)) (at_2_12))
)

(:action arrive_at_2_13_2_14
 :parameters ()
 :precondition (and (near_2_13) (near_2_14))
 :poss-precondition (and (found))
 :effect (and (not (near_2_13)) (at_2_14))
)

(:action arrive_at_2_14_1_14
 :parameters ()
 :precondition (and (near_2_14) (near_1_14))
 :poss-precondition (and (found))
 :effect (and (not (near_2_14)) (at_1_14))
)

(:action arrive_at_2_14_3_14
 :parameters ()
 :precondition (and (near_2_14) (near_3_14))
 :poss-precondition (and (found))
 :effect (and (not (near_2_14)) (at_3_14))
)

(:action arrive_at_2_14_2_13
 :parameters ()
 :precondition (and (near_2_14) (near_2_13))
 :poss-precondition (and (found))
 :effect (and (not (near_2_14)) (at_2_13))
)

(:action arrive_at_2_14_2_15
 :parameters ()
 :precondition (and (near_2_14) (near_2_15))
 :poss-precondition (and (found))
 :effect (and (not (near_2_14)) (at_2_15))
)

(:action arrive_at_2_15_1_15
 :parameters ()
 :precondition (and (near_2_15) (near_1_15))
 :poss-precondition (and (found))
 :effect (and (not (near_2_15)) (at_1_15))
)

(:action arrive_at_2_15_3_15
 :parameters ()
 :precondition (and (near_2_15) (near_3_15))
 :poss-precondition (and (found))
 :effect (and (not (near_2_15)) (at_3_15))
)

(:action arrive_at_2_15_2_14
 :parameters ()
 :precondition (and (near_2_15) (near_2_14))
 :poss-precondition (and (found))
 :effect (and (not (near_2_15)) (at_2_14))
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

(:action arrive_at_3_7_3_8
 :parameters ()
 :precondition (and (near_3_7) (near_3_8))
 :poss-precondition (and (found))
 :effect (and (not (near_3_7)) (at_3_8))
)

(:action arrive_at_3_8_2_8
 :parameters ()
 :precondition (and (near_3_8) (near_2_8))
 :poss-precondition (and (found))
 :effect (and (not (near_3_8)) (at_2_8))
)

(:action arrive_at_3_8_4_8
 :parameters ()
 :precondition (and (near_3_8) (near_4_8))
 :poss-precondition (and (found))
 :effect (and (not (near_3_8)) (at_4_8))
)

(:action arrive_at_3_8_3_7
 :parameters ()
 :precondition (and (near_3_8) (near_3_7))
 :poss-precondition (and (found))
 :effect (and (not (near_3_8)) (at_3_7))
)

(:action arrive_at_3_8_3_9
 :parameters ()
 :precondition (and (near_3_8) (near_3_9))
 :poss-precondition (and (found))
 :effect (and (not (near_3_8)) (at_3_9))
)

(:action arrive_at_3_9_2_9
 :parameters ()
 :precondition (and (near_3_9) (near_2_9))
 :poss-precondition (and (found))
 :effect (and (not (near_3_9)) (at_2_9))
)

(:action arrive_at_3_9_4_9
 :parameters ()
 :precondition (and (near_3_9) (near_4_9))
 :poss-precondition (and (found))
 :effect (and (not (near_3_9)) (at_4_9))
)

(:action arrive_at_3_9_3_8
 :parameters ()
 :precondition (and (near_3_9) (near_3_8))
 :poss-precondition (and (found))
 :effect (and (not (near_3_9)) (at_3_8))
)

(:action arrive_at_3_9_3_10
 :parameters ()
 :precondition (and (near_3_9) (near_3_10))
 :poss-precondition (and (found))
 :effect (and (not (near_3_9)) (at_3_10))
)

(:action arrive_at_3_10_2_10
 :parameters ()
 :precondition (and (near_3_10) (near_2_10))
 :poss-precondition (and (found))
 :effect (and (not (near_3_10)) (at_2_10))
)

(:action arrive_at_3_10_4_10
 :parameters ()
 :precondition (and (near_3_10) (near_4_10))
 :poss-precondition (and (found))
 :effect (and (not (near_3_10)) (at_4_10))
)

(:action arrive_at_3_10_3_9
 :parameters ()
 :precondition (and (near_3_10) (near_3_9))
 :poss-precondition (and (found))
 :effect (and (not (near_3_10)) (at_3_9))
)

(:action arrive_at_3_10_3_11
 :parameters ()
 :precondition (and (near_3_10) (near_3_11))
 :poss-precondition (and (found))
 :effect (and (not (near_3_10)) (at_3_11))
)

(:action arrive_at_3_11_2_11
 :parameters ()
 :precondition (and (near_3_11) (near_2_11))
 :poss-precondition (and (found))
 :effect (and (not (near_3_11)) (at_2_11))
)

(:action arrive_at_3_11_4_11
 :parameters ()
 :precondition (and (near_3_11) (near_4_11))
 :poss-precondition (and (found))
 :effect (and (not (near_3_11)) (at_4_11))
)

(:action arrive_at_3_11_3_10
 :parameters ()
 :precondition (and (near_3_11) (near_3_10))
 :poss-precondition (and (found))
 :effect (and (not (near_3_11)) (at_3_10))
)

(:action arrive_at_3_11_3_12
 :parameters ()
 :precondition (and (near_3_11) (near_3_12))
 :poss-precondition (and (found))
 :effect (and (not (near_3_11)) (at_3_12))
)

(:action arrive_at_3_12_2_12
 :parameters ()
 :precondition (and (near_3_12) (near_2_12))
 :poss-precondition (and (found))
 :effect (and (not (near_3_12)) (at_2_12))
)

(:action arrive_at_3_12_4_12
 :parameters ()
 :precondition (and (near_3_12) (near_4_12))
 :poss-precondition (and (found))
 :effect (and (not (near_3_12)) (at_4_12))
)

(:action arrive_at_3_12_3_11
 :parameters ()
 :precondition (and (near_3_12) (near_3_11))
 :poss-precondition (and (found))
 :effect (and (not (near_3_12)) (at_3_11))
)

(:action arrive_at_3_12_3_13
 :parameters ()
 :precondition (and (near_3_12) (near_3_13))
 :poss-precondition (and (found))
 :effect (and (not (near_3_12)) (at_3_13))
)

(:action arrive_at_3_13_2_13
 :parameters ()
 :precondition (and (near_3_13) (near_2_13))
 :poss-precondition (and (found))
 :effect (and (not (near_3_13)) (at_2_13))
)

(:action arrive_at_3_13_4_13
 :parameters ()
 :precondition (and (near_3_13) (near_4_13))
 :poss-precondition (and (found))
 :effect (and (not (near_3_13)) (at_4_13))
)

(:action arrive_at_3_13_3_12
 :parameters ()
 :precondition (and (near_3_13) (near_3_12))
 :poss-precondition (and (found))
 :effect (and (not (near_3_13)) (at_3_12))
)

(:action arrive_at_3_13_3_14
 :parameters ()
 :precondition (and (near_3_13) (near_3_14))
 :poss-precondition (and (found))
 :effect (and (not (near_3_13)) (at_3_14))
)

(:action arrive_at_3_14_2_14
 :parameters ()
 :precondition (and (near_3_14) (near_2_14))
 :poss-precondition (and (found))
 :effect (and (not (near_3_14)) (at_2_14))
)

(:action arrive_at_3_14_4_14
 :parameters ()
 :precondition (and (near_3_14) (near_4_14))
 :poss-precondition (and (found))
 :effect (and (not (near_3_14)) (at_4_14))
)

(:action arrive_at_3_14_3_13
 :parameters ()
 :precondition (and (near_3_14) (near_3_13))
 :poss-precondition (and (found))
 :effect (and (not (near_3_14)) (at_3_13))
)

(:action arrive_at_3_14_3_15
 :parameters ()
 :precondition (and (near_3_14) (near_3_15))
 :poss-precondition (and (found))
 :effect (and (not (near_3_14)) (at_3_15))
)

(:action arrive_at_3_15_2_15
 :parameters ()
 :precondition (and (near_3_15) (near_2_15))
 :poss-precondition (and (found))
 :effect (and (not (near_3_15)) (at_2_15))
)

(:action arrive_at_3_15_4_15
 :parameters ()
 :precondition (and (near_3_15) (near_4_15))
 :poss-precondition (and (found))
 :effect (and (not (near_3_15)) (at_4_15))
)

(:action arrive_at_3_15_3_14
 :parameters ()
 :precondition (and (near_3_15) (near_3_14))
 :poss-precondition (and (found))
 :effect (and (not (near_3_15)) (at_3_14))
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

(:action arrive_at_4_7_4_8
 :parameters ()
 :precondition (and (near_4_7) (near_4_8))
 :poss-precondition (and (found))
 :effect (and (not (near_4_7)) (at_4_8))
)

(:action arrive_at_4_8_3_8
 :parameters ()
 :precondition (and (near_4_8) (near_3_8))
 :poss-precondition (and (found))
 :effect (and (not (near_4_8)) (at_3_8))
)

(:action arrive_at_4_8_5_8
 :parameters ()
 :precondition (and (near_4_8) (near_5_8))
 :poss-precondition (and (found))
 :effect (and (not (near_4_8)) (at_5_8))
)

(:action arrive_at_4_8_4_7
 :parameters ()
 :precondition (and (near_4_8) (near_4_7))
 :poss-precondition (and (found))
 :effect (and (not (near_4_8)) (at_4_7))
)

(:action arrive_at_4_8_4_9
 :parameters ()
 :precondition (and (near_4_8) (near_4_9))
 :poss-precondition (and (found))
 :effect (and (not (near_4_8)) (at_4_9))
)

(:action arrive_at_4_9_3_9
 :parameters ()
 :precondition (and (near_4_9) (near_3_9))
 :poss-precondition (and (found))
 :effect (and (not (near_4_9)) (at_3_9))
)

(:action arrive_at_4_9_5_9
 :parameters ()
 :precondition (and (near_4_9) (near_5_9))
 :poss-precondition (and (found))
 :effect (and (not (near_4_9)) (at_5_9))
)

(:action arrive_at_4_9_4_8
 :parameters ()
 :precondition (and (near_4_9) (near_4_8))
 :poss-precondition (and (found))
 :effect (and (not (near_4_9)) (at_4_8))
)

(:action arrive_at_4_9_4_10
 :parameters ()
 :precondition (and (near_4_9) (near_4_10))
 :poss-precondition (and (found))
 :effect (and (not (near_4_9)) (at_4_10))
)

(:action arrive_at_4_10_3_10
 :parameters ()
 :precondition (and (near_4_10) (near_3_10))
 :poss-precondition (and (found))
 :effect (and (not (near_4_10)) (at_3_10))
)

(:action arrive_at_4_10_5_10
 :parameters ()
 :precondition (and (near_4_10) (near_5_10))
 :poss-precondition (and (found))
 :effect (and (not (near_4_10)) (at_5_10))
)

(:action arrive_at_4_10_4_9
 :parameters ()
 :precondition (and (near_4_10) (near_4_9))
 :poss-precondition (and (found))
 :effect (and (not (near_4_10)) (at_4_9))
)

(:action arrive_at_4_10_4_11
 :parameters ()
 :precondition (and (near_4_10) (near_4_11))
 :poss-precondition (and (found))
 :effect (and (not (near_4_10)) (at_4_11))
)

(:action arrive_at_4_11_3_11
 :parameters ()
 :precondition (and (near_4_11) (near_3_11))
 :poss-precondition (and (found))
 :effect (and (not (near_4_11)) (at_3_11))
)

(:action arrive_at_4_11_5_11
 :parameters ()
 :precondition (and (near_4_11) (near_5_11))
 :poss-precondition (and (found))
 :effect (and (not (near_4_11)) (at_5_11))
)

(:action arrive_at_4_11_4_10
 :parameters ()
 :precondition (and (near_4_11) (near_4_10))
 :poss-precondition (and (found))
 :effect (and (not (near_4_11)) (at_4_10))
)

(:action arrive_at_4_11_4_12
 :parameters ()
 :precondition (and (near_4_11) (near_4_12))
 :poss-precondition (and (found))
 :effect (and (not (near_4_11)) (at_4_12))
)

(:action arrive_at_4_12_3_12
 :parameters ()
 :precondition (and (near_4_12) (near_3_12))
 :poss-precondition (and (found))
 :effect (and (not (near_4_12)) (at_3_12))
)

(:action arrive_at_4_12_5_12
 :parameters ()
 :precondition (and (near_4_12) (near_5_12))
 :poss-precondition (and (found))
 :effect (and (not (near_4_12)) (at_5_12))
)

(:action arrive_at_4_12_4_11
 :parameters ()
 :precondition (and (near_4_12) (near_4_11))
 :poss-precondition (and (found))
 :effect (and (not (near_4_12)) (at_4_11))
)

(:action arrive_at_4_12_4_13
 :parameters ()
 :precondition (and (near_4_12) (near_4_13))
 :poss-precondition (and (found))
 :effect (and (not (near_4_12)) (at_4_13))
)

(:action arrive_at_4_13_3_13
 :parameters ()
 :precondition (and (near_4_13) (near_3_13))
 :poss-precondition (and (found))
 :effect (and (not (near_4_13)) (at_3_13))
)

(:action arrive_at_4_13_5_13
 :parameters ()
 :precondition (and (near_4_13) (near_5_13))
 :poss-precondition (and (found))
 :effect (and (not (near_4_13)) (at_5_13))
)

(:action arrive_at_4_13_4_12
 :parameters ()
 :precondition (and (near_4_13) (near_4_12))
 :poss-precondition (and (found))
 :effect (and (not (near_4_13)) (at_4_12))
)

(:action arrive_at_4_13_4_14
 :parameters ()
 :precondition (and (near_4_13) (near_4_14))
 :poss-precondition (and (found))
 :effect (and (not (near_4_13)) (at_4_14))
)

(:action arrive_at_4_14_3_14
 :parameters ()
 :precondition (and (near_4_14) (near_3_14))
 :poss-precondition (and (found))
 :effect (and (not (near_4_14)) (at_3_14))
)

(:action arrive_at_4_14_5_14
 :parameters ()
 :precondition (and (near_4_14) (near_5_14))
 :poss-precondition (and (found))
 :effect (and (not (near_4_14)) (at_5_14))
)

(:action arrive_at_4_14_4_13
 :parameters ()
 :precondition (and (near_4_14) (near_4_13))
 :poss-precondition (and (found))
 :effect (and (not (near_4_14)) (at_4_13))
)

(:action arrive_at_4_14_4_15
 :parameters ()
 :precondition (and (near_4_14) (near_4_15))
 :poss-precondition (and (found))
 :effect (and (not (near_4_14)) (at_4_15))
)

(:action arrive_at_4_15_3_15
 :parameters ()
 :precondition (and (near_4_15) (near_3_15))
 :poss-precondition (and (found))
 :effect (and (not (near_4_15)) (at_3_15))
)

(:action arrive_at_4_15_5_15
 :parameters ()
 :precondition (and (near_4_15) (near_5_15))
 :poss-precondition (and (found))
 :effect (and (not (near_4_15)) (at_5_15))
)

(:action arrive_at_4_15_4_14
 :parameters ()
 :precondition (and (near_4_15) (near_4_14))
 :poss-precondition (and (found))
 :effect (and (not (near_4_15)) (at_4_14))
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

(:action arrive_at_5_7_5_8
 :parameters ()
 :precondition (and (near_5_7) (near_5_8))
 :poss-precondition (and (found))
 :effect (and (not (near_5_7)) (at_5_8))
)

(:action arrive_at_5_8_4_8
 :parameters ()
 :precondition (and (near_5_8) (near_4_8))
 :poss-precondition (and (found))
 :effect (and (not (near_5_8)) (at_4_8))
)

(:action arrive_at_5_8_6_8
 :parameters ()
 :precondition (and (near_5_8) (near_6_8))
 :poss-precondition (and (found))
 :effect (and (not (near_5_8)) (at_6_8))
)

(:action arrive_at_5_8_5_7
 :parameters ()
 :precondition (and (near_5_8) (near_5_7))
 :poss-precondition (and (found))
 :effect (and (not (near_5_8)) (at_5_7))
)

(:action arrive_at_5_8_5_9
 :parameters ()
 :precondition (and (near_5_8) (near_5_9))
 :poss-precondition (and (found))
 :effect (and (not (near_5_8)) (at_5_9))
)

(:action arrive_at_5_9_4_9
 :parameters ()
 :precondition (and (near_5_9) (near_4_9))
 :poss-precondition (and (found))
 :effect (and (not (near_5_9)) (at_4_9))
)

(:action arrive_at_5_9_6_9
 :parameters ()
 :precondition (and (near_5_9) (near_6_9))
 :poss-precondition (and (found))
 :effect (and (not (near_5_9)) (at_6_9))
)

(:action arrive_at_5_9_5_8
 :parameters ()
 :precondition (and (near_5_9) (near_5_8))
 :poss-precondition (and (found))
 :effect (and (not (near_5_9)) (at_5_8))
)

(:action arrive_at_5_9_5_10
 :parameters ()
 :precondition (and (near_5_9) (near_5_10))
 :poss-precondition (and (found))
 :effect (and (not (near_5_9)) (at_5_10))
)

(:action arrive_at_5_10_4_10
 :parameters ()
 :precondition (and (near_5_10) (near_4_10))
 :poss-precondition (and (found))
 :effect (and (not (near_5_10)) (at_4_10))
)

(:action arrive_at_5_10_6_10
 :parameters ()
 :precondition (and (near_5_10) (near_6_10))
 :poss-precondition (and (found))
 :effect (and (not (near_5_10)) (at_6_10))
)

(:action arrive_at_5_10_5_9
 :parameters ()
 :precondition (and (near_5_10) (near_5_9))
 :poss-precondition (and (found))
 :effect (and (not (near_5_10)) (at_5_9))
)

(:action arrive_at_5_10_5_11
 :parameters ()
 :precondition (and (near_5_10) (near_5_11))
 :poss-precondition (and (found))
 :effect (and (not (near_5_10)) (at_5_11))
)

(:action arrive_at_5_11_4_11
 :parameters ()
 :precondition (and (near_5_11) (near_4_11))
 :poss-precondition (and (found))
 :effect (and (not (near_5_11)) (at_4_11))
)

(:action arrive_at_5_11_6_11
 :parameters ()
 :precondition (and (near_5_11) (near_6_11))
 :poss-precondition (and (found))
 :effect (and (not (near_5_11)) (at_6_11))
)

(:action arrive_at_5_11_5_10
 :parameters ()
 :precondition (and (near_5_11) (near_5_10))
 :poss-precondition (and (found))
 :effect (and (not (near_5_11)) (at_5_10))
)

(:action arrive_at_5_11_5_12
 :parameters ()
 :precondition (and (near_5_11) (near_5_12))
 :poss-precondition (and (found))
 :effect (and (not (near_5_11)) (at_5_12))
)

(:action arrive_at_5_12_4_12
 :parameters ()
 :precondition (and (near_5_12) (near_4_12))
 :poss-precondition (and (found))
 :effect (and (not (near_5_12)) (at_4_12))
)

(:action arrive_at_5_12_6_12
 :parameters ()
 :precondition (and (near_5_12) (near_6_12))
 :poss-precondition (and (found))
 :effect (and (not (near_5_12)) (at_6_12))
)

(:action arrive_at_5_12_5_11
 :parameters ()
 :precondition (and (near_5_12) (near_5_11))
 :poss-precondition (and (found))
 :effect (and (not (near_5_12)) (at_5_11))
)

(:action arrive_at_5_12_5_13
 :parameters ()
 :precondition (and (near_5_12) (near_5_13))
 :poss-precondition (and (found))
 :effect (and (not (near_5_12)) (at_5_13))
)

(:action arrive_at_5_13_4_13
 :parameters ()
 :precondition (and (near_5_13) (near_4_13))
 :poss-precondition (and (found))
 :effect (and (not (near_5_13)) (at_4_13))
)

(:action arrive_at_5_13_6_13
 :parameters ()
 :precondition (and (near_5_13) (near_6_13))
 :poss-precondition (and (found))
 :effect (and (not (near_5_13)) (at_6_13))
)

(:action arrive_at_5_13_5_12
 :parameters ()
 :precondition (and (near_5_13) (near_5_12))
 :poss-precondition (and (found))
 :effect (and (not (near_5_13)) (at_5_12))
)

(:action arrive_at_5_13_5_14
 :parameters ()
 :precondition (and (near_5_13) (near_5_14))
 :poss-precondition (and (found))
 :effect (and (not (near_5_13)) (at_5_14))
)

(:action arrive_at_5_14_4_14
 :parameters ()
 :precondition (and (near_5_14) (near_4_14))
 :poss-precondition (and (found))
 :effect (and (not (near_5_14)) (at_4_14))
)

(:action arrive_at_5_14_6_14
 :parameters ()
 :precondition (and (near_5_14) (near_6_14))
 :poss-precondition (and (found))
 :effect (and (not (near_5_14)) (at_6_14))
)

(:action arrive_at_5_14_5_13
 :parameters ()
 :precondition (and (near_5_14) (near_5_13))
 :poss-precondition (and (found))
 :effect (and (not (near_5_14)) (at_5_13))
)

(:action arrive_at_5_14_5_15
 :parameters ()
 :precondition (and (near_5_14) (near_5_15))
 :poss-precondition (and (found))
 :effect (and (not (near_5_14)) (at_5_15))
)

(:action arrive_at_5_15_4_15
 :parameters ()
 :precondition (and (near_5_15) (near_4_15))
 :poss-precondition (and (found))
 :effect (and (not (near_5_15)) (at_4_15))
)

(:action arrive_at_5_15_6_15
 :parameters ()
 :precondition (and (near_5_15) (near_6_15))
 :poss-precondition (and (found))
 :effect (and (not (near_5_15)) (at_6_15))
)

(:action arrive_at_5_15_5_14
 :parameters ()
 :precondition (and (near_5_15) (near_5_14))
 :poss-precondition (and (found))
 :effect (and (not (near_5_15)) (at_5_14))
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

(:action arrive_at_6_7_6_8
 :parameters ()
 :precondition (and (near_6_7) (near_6_8))
 :poss-precondition (and (found))
 :effect (and (not (near_6_7)) (at_6_8))
)

(:action arrive_at_6_8_5_8
 :parameters ()
 :precondition (and (near_6_8) (near_5_8))
 :poss-precondition (and (found))
 :effect (and (not (near_6_8)) (at_5_8))
)

(:action arrive_at_6_8_7_8
 :parameters ()
 :precondition (and (near_6_8) (near_7_8))
 :poss-precondition (and (found))
 :effect (and (not (near_6_8)) (at_7_8))
)

(:action arrive_at_6_8_6_7
 :parameters ()
 :precondition (and (near_6_8) (near_6_7))
 :poss-precondition (and (found))
 :effect (and (not (near_6_8)) (at_6_7))
)

(:action arrive_at_6_8_6_9
 :parameters ()
 :precondition (and (near_6_8) (near_6_9))
 :poss-precondition (and (found))
 :effect (and (not (near_6_8)) (at_6_9))
)

(:action arrive_at_6_9_5_9
 :parameters ()
 :precondition (and (near_6_9) (near_5_9))
 :poss-precondition (and (found))
 :effect (and (not (near_6_9)) (at_5_9))
)

(:action arrive_at_6_9_7_9
 :parameters ()
 :precondition (and (near_6_9) (near_7_9))
 :poss-precondition (and (found))
 :effect (and (not (near_6_9)) (at_7_9))
)

(:action arrive_at_6_9_6_8
 :parameters ()
 :precondition (and (near_6_9) (near_6_8))
 :poss-precondition (and (found))
 :effect (and (not (near_6_9)) (at_6_8))
)

(:action arrive_at_6_9_6_10
 :parameters ()
 :precondition (and (near_6_9) (near_6_10))
 :poss-precondition (and (found))
 :effect (and (not (near_6_9)) (at_6_10))
)

(:action arrive_at_6_10_5_10
 :parameters ()
 :precondition (and (near_6_10) (near_5_10))
 :poss-precondition (and (found))
 :effect (and (not (near_6_10)) (at_5_10))
)

(:action arrive_at_6_10_7_10
 :parameters ()
 :precondition (and (near_6_10) (near_7_10))
 :poss-precondition (and (found))
 :effect (and (not (near_6_10)) (at_7_10))
)

(:action arrive_at_6_10_6_9
 :parameters ()
 :precondition (and (near_6_10) (near_6_9))
 :poss-precondition (and (found))
 :effect (and (not (near_6_10)) (at_6_9))
)

(:action arrive_at_6_10_6_11
 :parameters ()
 :precondition (and (near_6_10) (near_6_11))
 :poss-precondition (and (found))
 :effect (and (not (near_6_10)) (at_6_11))
)

(:action arrive_at_6_11_5_11
 :parameters ()
 :precondition (and (near_6_11) (near_5_11))
 :poss-precondition (and (found))
 :effect (and (not (near_6_11)) (at_5_11))
)

(:action arrive_at_6_11_7_11
 :parameters ()
 :precondition (and (near_6_11) (near_7_11))
 :poss-precondition (and (found))
 :effect (and (not (near_6_11)) (at_7_11))
)

(:action arrive_at_6_11_6_10
 :parameters ()
 :precondition (and (near_6_11) (near_6_10))
 :poss-precondition (and (found))
 :effect (and (not (near_6_11)) (at_6_10))
)

(:action arrive_at_6_11_6_12
 :parameters ()
 :precondition (and (near_6_11) (near_6_12))
 :poss-precondition (and (found))
 :effect (and (not (near_6_11)) (at_6_12))
)

(:action arrive_at_6_12_5_12
 :parameters ()
 :precondition (and (near_6_12) (near_5_12))
 :poss-precondition (and (found))
 :effect (and (not (near_6_12)) (at_5_12))
)

(:action arrive_at_6_12_7_12
 :parameters ()
 :precondition (and (near_6_12) (near_7_12))
 :poss-precondition (and (found))
 :effect (and (not (near_6_12)) (at_7_12))
)

(:action arrive_at_6_12_6_11
 :parameters ()
 :precondition (and (near_6_12) (near_6_11))
 :poss-precondition (and (found))
 :effect (and (not (near_6_12)) (at_6_11))
)

(:action arrive_at_6_12_6_13
 :parameters ()
 :precondition (and (near_6_12) (near_6_13))
 :poss-precondition (and (found))
 :effect (and (not (near_6_12)) (at_6_13))
)

(:action arrive_at_6_13_5_13
 :parameters ()
 :precondition (and (near_6_13) (near_5_13))
 :poss-precondition (and (found))
 :effect (and (not (near_6_13)) (at_5_13))
)

(:action arrive_at_6_13_7_13
 :parameters ()
 :precondition (and (near_6_13) (near_7_13))
 :poss-precondition (and (found))
 :effect (and (not (near_6_13)) (at_7_13))
)

(:action arrive_at_6_13_6_12
 :parameters ()
 :precondition (and (near_6_13) (near_6_12))
 :poss-precondition (and (found))
 :effect (and (not (near_6_13)) (at_6_12))
)

(:action arrive_at_6_13_6_14
 :parameters ()
 :precondition (and (near_6_13) (near_6_14))
 :poss-precondition (and (found))
 :effect (and (not (near_6_13)) (at_6_14))
)

(:action arrive_at_6_14_5_14
 :parameters ()
 :precondition (and (near_6_14) (near_5_14))
 :poss-precondition (and (found))
 :effect (and (not (near_6_14)) (at_5_14))
)

(:action arrive_at_6_14_7_14
 :parameters ()
 :precondition (and (near_6_14) (near_7_14))
 :poss-precondition (and (found))
 :effect (and (not (near_6_14)) (at_7_14))
)

(:action arrive_at_6_14_6_13
 :parameters ()
 :precondition (and (near_6_14) (near_6_13))
 :poss-precondition (and (found))
 :effect (and (not (near_6_14)) (at_6_13))
)

(:action arrive_at_6_14_6_15
 :parameters ()
 :precondition (and (near_6_14) (near_6_15))
 :poss-precondition (and (found))
 :effect (and (not (near_6_14)) (at_6_15))
)

(:action arrive_at_6_15_5_15
 :parameters ()
 :precondition (and (near_6_15) (near_5_15))
 :poss-precondition (and (found))
 :effect (and (not (near_6_15)) (at_5_15))
)

(:action arrive_at_6_15_7_15
 :parameters ()
 :precondition (and (near_6_15) (near_7_15))
 :poss-precondition (and (found))
 :effect (and (not (near_6_15)) (at_7_15))
)

(:action arrive_at_6_15_6_14
 :parameters ()
 :precondition (and (near_6_15) (near_6_14))
 :poss-precondition (and (found))
 :effect (and (not (near_6_15)) (at_6_14))
)

(:action arrive_at_7_0_6_0
 :parameters ()
 :precondition (and (near_7_0) (near_6_0))
 :poss-precondition (and (found))
 :effect (and (not (near_7_0)) (at_6_0))
)

(:action arrive_at_7_0_8_0
 :parameters ()
 :precondition (and (near_7_0) (near_8_0))
 :poss-precondition (and (found))
 :effect (and (not (near_7_0)) (at_8_0))
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

(:action arrive_at_7_1_8_1
 :parameters ()
 :precondition (and (near_7_1) (near_8_1))
 :poss-precondition (and (found))
 :effect (and (not (near_7_1)) (at_8_1))
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

(:action arrive_at_7_2_8_2
 :parameters ()
 :precondition (and (near_7_2) (near_8_2))
 :poss-precondition (and (found))
 :effect (and (not (near_7_2)) (at_8_2))
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

(:action arrive_at_7_3_8_3
 :parameters ()
 :precondition (and (near_7_3) (near_8_3))
 :poss-precondition (and (found))
 :effect (and (not (near_7_3)) (at_8_3))
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

(:action arrive_at_7_4_8_4
 :parameters ()
 :precondition (and (near_7_4) (near_8_4))
 :poss-precondition (and (found))
 :effect (and (not (near_7_4)) (at_8_4))
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

(:action arrive_at_7_5_8_5
 :parameters ()
 :precondition (and (near_7_5) (near_8_5))
 :poss-precondition (and (found))
 :effect (and (not (near_7_5)) (at_8_5))
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

(:action arrive_at_7_6_8_6
 :parameters ()
 :precondition (and (near_7_6) (near_8_6))
 :poss-precondition (and (found))
 :effect (and (not (near_7_6)) (at_8_6))
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

(:action arrive_at_7_7_8_7
 :parameters ()
 :precondition (and (near_7_7) (near_8_7))
 :poss-precondition (and (found))
 :effect (and (not (near_7_7)) (at_8_7))
)

(:action arrive_at_7_7_7_6
 :parameters ()
 :precondition (and (near_7_7) (near_7_6))
 :poss-precondition (and (found))
 :effect (and (not (near_7_7)) (at_7_6))
)

(:action arrive_at_7_7_7_8
 :parameters ()
 :precondition (and (near_7_7) (near_7_8))
 :poss-precondition (and (found))
 :effect (and (not (near_7_7)) (at_7_8))
)

(:action arrive_at_7_8_6_8
 :parameters ()
 :precondition (and (near_7_8) (near_6_8))
 :poss-precondition (and (found))
 :effect (and (not (near_7_8)) (at_6_8))
)

(:action arrive_at_7_8_8_8
 :parameters ()
 :precondition (and (near_7_8) (near_8_8))
 :poss-precondition (and (found))
 :effect (and (not (near_7_8)) (at_8_8))
)

(:action arrive_at_7_8_7_7
 :parameters ()
 :precondition (and (near_7_8) (near_7_7))
 :poss-precondition (and (found))
 :effect (and (not (near_7_8)) (at_7_7))
)

(:action arrive_at_7_8_7_9
 :parameters ()
 :precondition (and (near_7_8) (near_7_9))
 :poss-precondition (and (found))
 :effect (and (not (near_7_8)) (at_7_9))
)

(:action arrive_at_7_9_6_9
 :parameters ()
 :precondition (and (near_7_9) (near_6_9))
 :poss-precondition (and (found))
 :effect (and (not (near_7_9)) (at_6_9))
)

(:action arrive_at_7_9_8_9
 :parameters ()
 :precondition (and (near_7_9) (near_8_9))
 :poss-precondition (and (found))
 :effect (and (not (near_7_9)) (at_8_9))
)

(:action arrive_at_7_9_7_8
 :parameters ()
 :precondition (and (near_7_9) (near_7_8))
 :poss-precondition (and (found))
 :effect (and (not (near_7_9)) (at_7_8))
)

(:action arrive_at_7_9_7_10
 :parameters ()
 :precondition (and (near_7_9) (near_7_10))
 :poss-precondition (and (found))
 :effect (and (not (near_7_9)) (at_7_10))
)

(:action arrive_at_7_10_6_10
 :parameters ()
 :precondition (and (near_7_10) (near_6_10))
 :poss-precondition (and (found))
 :effect (and (not (near_7_10)) (at_6_10))
)

(:action arrive_at_7_10_8_10
 :parameters ()
 :precondition (and (near_7_10) (near_8_10))
 :poss-precondition (and (found))
 :effect (and (not (near_7_10)) (at_8_10))
)

(:action arrive_at_7_10_7_9
 :parameters ()
 :precondition (and (near_7_10) (near_7_9))
 :poss-precondition (and (found))
 :effect (and (not (near_7_10)) (at_7_9))
)

(:action arrive_at_7_10_7_11
 :parameters ()
 :precondition (and (near_7_10) (near_7_11))
 :poss-precondition (and (found))
 :effect (and (not (near_7_10)) (at_7_11))
)

(:action arrive_at_7_11_6_11
 :parameters ()
 :precondition (and (near_7_11) (near_6_11))
 :poss-precondition (and (found))
 :effect (and (not (near_7_11)) (at_6_11))
)

(:action arrive_at_7_11_8_11
 :parameters ()
 :precondition (and (near_7_11) (near_8_11))
 :poss-precondition (and (found))
 :effect (and (not (near_7_11)) (at_8_11))
)

(:action arrive_at_7_11_7_10
 :parameters ()
 :precondition (and (near_7_11) (near_7_10))
 :poss-precondition (and (found))
 :effect (and (not (near_7_11)) (at_7_10))
)

(:action arrive_at_7_11_7_12
 :parameters ()
 :precondition (and (near_7_11) (near_7_12))
 :poss-precondition (and (found))
 :effect (and (not (near_7_11)) (at_7_12))
)

(:action arrive_at_7_12_6_12
 :parameters ()
 :precondition (and (near_7_12) (near_6_12))
 :poss-precondition (and (found))
 :effect (and (not (near_7_12)) (at_6_12))
)

(:action arrive_at_7_12_8_12
 :parameters ()
 :precondition (and (near_7_12) (near_8_12))
 :poss-precondition (and (found))
 :effect (and (not (near_7_12)) (at_8_12))
)

(:action arrive_at_7_12_7_11
 :parameters ()
 :precondition (and (near_7_12) (near_7_11))
 :poss-precondition (and (found))
 :effect (and (not (near_7_12)) (at_7_11))
)

(:action arrive_at_7_12_7_13
 :parameters ()
 :precondition (and (near_7_12) (near_7_13))
 :poss-precondition (and (found))
 :effect (and (not (near_7_12)) (at_7_13))
)

(:action arrive_at_7_13_6_13
 :parameters ()
 :precondition (and (near_7_13) (near_6_13))
 :poss-precondition (and (found))
 :effect (and (not (near_7_13)) (at_6_13))
)

(:action arrive_at_7_13_8_13
 :parameters ()
 :precondition (and (near_7_13) (near_8_13))
 :poss-precondition (and (found))
 :effect (and (not (near_7_13)) (at_8_13))
)

(:action arrive_at_7_13_7_12
 :parameters ()
 :precondition (and (near_7_13) (near_7_12))
 :poss-precondition (and (found))
 :effect (and (not (near_7_13)) (at_7_12))
)

(:action arrive_at_7_13_7_14
 :parameters ()
 :precondition (and (near_7_13) (near_7_14))
 :poss-precondition (and (found))
 :effect (and (not (near_7_13)) (at_7_14))
)

(:action arrive_at_7_14_6_14
 :parameters ()
 :precondition (and (near_7_14) (near_6_14))
 :poss-precondition (and (found))
 :effect (and (not (near_7_14)) (at_6_14))
)

(:action arrive_at_7_14_8_14
 :parameters ()
 :precondition (and (near_7_14) (near_8_14))
 :poss-precondition (and (found))
 :effect (and (not (near_7_14)) (at_8_14))
)

(:action arrive_at_7_14_7_13
 :parameters ()
 :precondition (and (near_7_14) (near_7_13))
 :poss-precondition (and (found))
 :effect (and (not (near_7_14)) (at_7_13))
)

(:action arrive_at_7_14_7_15
 :parameters ()
 :precondition (and (near_7_14) (near_7_15))
 :poss-precondition (and (found))
 :effect (and (not (near_7_14)) (at_7_15))
)

(:action arrive_at_7_15_6_15
 :parameters ()
 :precondition (and (near_7_15) (near_6_15))
 :poss-precondition (and (found))
 :effect (and (not (near_7_15)) (at_6_15))
)

(:action arrive_at_7_15_8_15
 :parameters ()
 :precondition (and (near_7_15) (near_8_15))
 :poss-precondition (and (found))
 :effect (and (not (near_7_15)) (at_8_15))
)

(:action arrive_at_7_15_7_14
 :parameters ()
 :precondition (and (near_7_15) (near_7_14))
 :poss-precondition (and (found))
 :effect (and (not (near_7_15)) (at_7_14))
)

(:action arrive_at_8_0_7_0
 :parameters ()
 :precondition (and (near_8_0) (near_7_0))
 :poss-precondition (and (found))
 :effect (and (not (near_8_0)) (at_7_0))
)

(:action arrive_at_8_0_9_0
 :parameters ()
 :precondition (and (near_8_0) (near_9_0))
 :poss-precondition (and (found))
 :effect (and (not (near_8_0)) (at_9_0))
)

(:action arrive_at_8_0_8_1
 :parameters ()
 :precondition (and (near_8_0) (near_8_1))
 :poss-precondition (and (found))
 :effect (and (not (near_8_0)) (at_8_1))
)

(:action arrive_at_8_1_7_1
 :parameters ()
 :precondition (and (near_8_1) (near_7_1))
 :poss-precondition (and (found))
 :effect (and (not (near_8_1)) (at_7_1))
)

(:action arrive_at_8_1_9_1
 :parameters ()
 :precondition (and (near_8_1) (near_9_1))
 :poss-precondition (and (found))
 :effect (and (not (near_8_1)) (at_9_1))
)

(:action arrive_at_8_1_8_0
 :parameters ()
 :precondition (and (near_8_1) (near_8_0))
 :poss-precondition (and (found))
 :effect (and (not (near_8_1)) (at_8_0))
)

(:action arrive_at_8_1_8_2
 :parameters ()
 :precondition (and (near_8_1) (near_8_2))
 :poss-precondition (and (found))
 :effect (and (not (near_8_1)) (at_8_2))
)

(:action arrive_at_8_2_7_2
 :parameters ()
 :precondition (and (near_8_2) (near_7_2))
 :poss-precondition (and (found))
 :effect (and (not (near_8_2)) (at_7_2))
)

(:action arrive_at_8_2_9_2
 :parameters ()
 :precondition (and (near_8_2) (near_9_2))
 :poss-precondition (and (found))
 :effect (and (not (near_8_2)) (at_9_2))
)

(:action arrive_at_8_2_8_1
 :parameters ()
 :precondition (and (near_8_2) (near_8_1))
 :poss-precondition (and (found))
 :effect (and (not (near_8_2)) (at_8_1))
)

(:action arrive_at_8_2_8_3
 :parameters ()
 :precondition (and (near_8_2) (near_8_3))
 :poss-precondition (and (found))
 :effect (and (not (near_8_2)) (at_8_3))
)

(:action arrive_at_8_3_7_3
 :parameters ()
 :precondition (and (near_8_3) (near_7_3))
 :poss-precondition (and (found))
 :effect (and (not (near_8_3)) (at_7_3))
)

(:action arrive_at_8_3_9_3
 :parameters ()
 :precondition (and (near_8_3) (near_9_3))
 :poss-precondition (and (found))
 :effect (and (not (near_8_3)) (at_9_3))
)

(:action arrive_at_8_3_8_2
 :parameters ()
 :precondition (and (near_8_3) (near_8_2))
 :poss-precondition (and (found))
 :effect (and (not (near_8_3)) (at_8_2))
)

(:action arrive_at_8_3_8_4
 :parameters ()
 :precondition (and (near_8_3) (near_8_4))
 :poss-precondition (and (found))
 :effect (and (not (near_8_3)) (at_8_4))
)

(:action arrive_at_8_4_7_4
 :parameters ()
 :precondition (and (near_8_4) (near_7_4))
 :poss-precondition (and (found))
 :effect (and (not (near_8_4)) (at_7_4))
)

(:action arrive_at_8_4_9_4
 :parameters ()
 :precondition (and (near_8_4) (near_9_4))
 :poss-precondition (and (found))
 :effect (and (not (near_8_4)) (at_9_4))
)

(:action arrive_at_8_4_8_3
 :parameters ()
 :precondition (and (near_8_4) (near_8_3))
 :poss-precondition (and (found))
 :effect (and (not (near_8_4)) (at_8_3))
)

(:action arrive_at_8_4_8_5
 :parameters ()
 :precondition (and (near_8_4) (near_8_5))
 :poss-precondition (and (found))
 :effect (and (not (near_8_4)) (at_8_5))
)

(:action arrive_at_8_5_7_5
 :parameters ()
 :precondition (and (near_8_5) (near_7_5))
 :poss-precondition (and (found))
 :effect (and (not (near_8_5)) (at_7_5))
)

(:action arrive_at_8_5_9_5
 :parameters ()
 :precondition (and (near_8_5) (near_9_5))
 :poss-precondition (and (found))
 :effect (and (not (near_8_5)) (at_9_5))
)

(:action arrive_at_8_5_8_4
 :parameters ()
 :precondition (and (near_8_5) (near_8_4))
 :poss-precondition (and (found))
 :effect (and (not (near_8_5)) (at_8_4))
)

(:action arrive_at_8_5_8_6
 :parameters ()
 :precondition (and (near_8_5) (near_8_6))
 :poss-precondition (and (found))
 :effect (and (not (near_8_5)) (at_8_6))
)

(:action arrive_at_8_6_7_6
 :parameters ()
 :precondition (and (near_8_6) (near_7_6))
 :poss-precondition (and (found))
 :effect (and (not (near_8_6)) (at_7_6))
)

(:action arrive_at_8_6_9_6
 :parameters ()
 :precondition (and (near_8_6) (near_9_6))
 :poss-precondition (and (found))
 :effect (and (not (near_8_6)) (at_9_6))
)

(:action arrive_at_8_6_8_5
 :parameters ()
 :precondition (and (near_8_6) (near_8_5))
 :poss-precondition (and (found))
 :effect (and (not (near_8_6)) (at_8_5))
)

(:action arrive_at_8_6_8_7
 :parameters ()
 :precondition (and (near_8_6) (near_8_7))
 :poss-precondition (and (found))
 :effect (and (not (near_8_6)) (at_8_7))
)

(:action arrive_at_8_7_7_7
 :parameters ()
 :precondition (and (near_8_7) (near_7_7))
 :poss-precondition (and (found))
 :effect (and (not (near_8_7)) (at_7_7))
)

(:action arrive_at_8_7_9_7
 :parameters ()
 :precondition (and (near_8_7) (near_9_7))
 :poss-precondition (and (found))
 :effect (and (not (near_8_7)) (at_9_7))
)

(:action arrive_at_8_7_8_6
 :parameters ()
 :precondition (and (near_8_7) (near_8_6))
 :poss-precondition (and (found))
 :effect (and (not (near_8_7)) (at_8_6))
)

(:action arrive_at_8_7_8_8
 :parameters ()
 :precondition (and (near_8_7) (near_8_8))
 :poss-precondition (and (found))
 :effect (and (not (near_8_7)) (at_8_8))
)

(:action arrive_at_8_8_7_8
 :parameters ()
 :precondition (and (near_8_8) (near_7_8))
 :poss-precondition (and (found))
 :effect (and (not (near_8_8)) (at_7_8))
)

(:action arrive_at_8_8_9_8
 :parameters ()
 :precondition (and (near_8_8) (near_9_8))
 :poss-precondition (and (found))
 :effect (and (not (near_8_8)) (at_9_8))
)

(:action arrive_at_8_8_8_7
 :parameters ()
 :precondition (and (near_8_8) (near_8_7))
 :poss-precondition (and (found))
 :effect (and (not (near_8_8)) (at_8_7))
)

(:action arrive_at_8_8_8_9
 :parameters ()
 :precondition (and (near_8_8) (near_8_9))
 :poss-precondition (and (found))
 :effect (and (not (near_8_8)) (at_8_9))
)

(:action arrive_at_8_9_7_9
 :parameters ()
 :precondition (and (near_8_9) (near_7_9))
 :poss-precondition (and (found))
 :effect (and (not (near_8_9)) (at_7_9))
)

(:action arrive_at_8_9_9_9
 :parameters ()
 :precondition (and (near_8_9) (near_9_9))
 :poss-precondition (and (found))
 :effect (and (not (near_8_9)) (at_9_9))
)

(:action arrive_at_8_9_8_8
 :parameters ()
 :precondition (and (near_8_9) (near_8_8))
 :poss-precondition (and (found))
 :effect (and (not (near_8_9)) (at_8_8))
)

(:action arrive_at_8_9_8_10
 :parameters ()
 :precondition (and (near_8_9) (near_8_10))
 :poss-precondition (and (found))
 :effect (and (not (near_8_9)) (at_8_10))
)

(:action arrive_at_8_10_7_10
 :parameters ()
 :precondition (and (near_8_10) (near_7_10))
 :poss-precondition (and (found))
 :effect (and (not (near_8_10)) (at_7_10))
)

(:action arrive_at_8_10_9_10
 :parameters ()
 :precondition (and (near_8_10) (near_9_10))
 :poss-precondition (and (found))
 :effect (and (not (near_8_10)) (at_9_10))
)

(:action arrive_at_8_10_8_9
 :parameters ()
 :precondition (and (near_8_10) (near_8_9))
 :poss-precondition (and (found))
 :effect (and (not (near_8_10)) (at_8_9))
)

(:action arrive_at_8_10_8_11
 :parameters ()
 :precondition (and (near_8_10) (near_8_11))
 :poss-precondition (and (found))
 :effect (and (not (near_8_10)) (at_8_11))
)

(:action arrive_at_8_11_7_11
 :parameters ()
 :precondition (and (near_8_11) (near_7_11))
 :poss-precondition (and (found))
 :effect (and (not (near_8_11)) (at_7_11))
)

(:action arrive_at_8_11_9_11
 :parameters ()
 :precondition (and (near_8_11) (near_9_11))
 :poss-precondition (and (found))
 :effect (and (not (near_8_11)) (at_9_11))
)

(:action arrive_at_8_11_8_10
 :parameters ()
 :precondition (and (near_8_11) (near_8_10))
 :poss-precondition (and (found))
 :effect (and (not (near_8_11)) (at_8_10))
)

(:action arrive_at_8_11_8_12
 :parameters ()
 :precondition (and (near_8_11) (near_8_12))
 :poss-precondition (and (found))
 :effect (and (not (near_8_11)) (at_8_12))
)

(:action arrive_at_8_12_7_12
 :parameters ()
 :precondition (and (near_8_12) (near_7_12))
 :poss-precondition (and (found))
 :effect (and (not (near_8_12)) (at_7_12))
)

(:action arrive_at_8_12_9_12
 :parameters ()
 :precondition (and (near_8_12) (near_9_12))
 :poss-precondition (and (found))
 :effect (and (not (near_8_12)) (at_9_12))
)

(:action arrive_at_8_12_8_11
 :parameters ()
 :precondition (and (near_8_12) (near_8_11))
 :poss-precondition (and (found))
 :effect (and (not (near_8_12)) (at_8_11))
)

(:action arrive_at_8_12_8_13
 :parameters ()
 :precondition (and (near_8_12) (near_8_13))
 :poss-precondition (and (found))
 :effect (and (not (near_8_12)) (at_8_13))
)

(:action arrive_at_8_13_7_13
 :parameters ()
 :precondition (and (near_8_13) (near_7_13))
 :poss-precondition (and (found))
 :effect (and (not (near_8_13)) (at_7_13))
)

(:action arrive_at_8_13_9_13
 :parameters ()
 :precondition (and (near_8_13) (near_9_13))
 :poss-precondition (and (found))
 :effect (and (not (near_8_13)) (at_9_13))
)

(:action arrive_at_8_13_8_12
 :parameters ()
 :precondition (and (near_8_13) (near_8_12))
 :poss-precondition (and (found))
 :effect (and (not (near_8_13)) (at_8_12))
)

(:action arrive_at_8_13_8_14
 :parameters ()
 :precondition (and (near_8_13) (near_8_14))
 :poss-precondition (and (found))
 :effect (and (not (near_8_13)) (at_8_14))
)

(:action arrive_at_8_14_7_14
 :parameters ()
 :precondition (and (near_8_14) (near_7_14))
 :poss-precondition (and (found))
 :effect (and (not (near_8_14)) (at_7_14))
)

(:action arrive_at_8_14_9_14
 :parameters ()
 :precondition (and (near_8_14) (near_9_14))
 :poss-precondition (and (found))
 :effect (and (not (near_8_14)) (at_9_14))
)

(:action arrive_at_8_14_8_13
 :parameters ()
 :precondition (and (near_8_14) (near_8_13))
 :poss-precondition (and (found))
 :effect (and (not (near_8_14)) (at_8_13))
)

(:action arrive_at_8_14_8_15
 :parameters ()
 :precondition (and (near_8_14) (near_8_15))
 :poss-precondition (and (found))
 :effect (and (not (near_8_14)) (at_8_15))
)

(:action arrive_at_8_15_7_15
 :parameters ()
 :precondition (and (near_8_15) (near_7_15))
 :poss-precondition (and (found))
 :effect (and (not (near_8_15)) (at_7_15))
)

(:action arrive_at_8_15_9_15
 :parameters ()
 :precondition (and (near_8_15) (near_9_15))
 :poss-precondition (and (found))
 :effect (and (not (near_8_15)) (at_9_15))
)

(:action arrive_at_8_15_8_14
 :parameters ()
 :precondition (and (near_8_15) (near_8_14))
 :poss-precondition (and (found))
 :effect (and (not (near_8_15)) (at_8_14))
)

(:action arrive_at_9_0_8_0
 :parameters ()
 :precondition (and (near_9_0) (near_8_0))
 :poss-precondition (and (found))
 :effect (and (not (near_9_0)) (at_8_0))
)

(:action arrive_at_9_0_10_0
 :parameters ()
 :precondition (and (near_9_0) (near_10_0))
 :poss-precondition (and (found))
 :effect (and (not (near_9_0)) (at_10_0))
)

(:action arrive_at_9_0_9_1
 :parameters ()
 :precondition (and (near_9_0) (near_9_1))
 :poss-precondition (and (found))
 :effect (and (not (near_9_0)) (at_9_1))
)

(:action arrive_at_9_1_8_1
 :parameters ()
 :precondition (and (near_9_1) (near_8_1))
 :poss-precondition (and (found))
 :effect (and (not (near_9_1)) (at_8_1))
)

(:action arrive_at_9_1_10_1
 :parameters ()
 :precondition (and (near_9_1) (near_10_1))
 :poss-precondition (and (found))
 :effect (and (not (near_9_1)) (at_10_1))
)

(:action arrive_at_9_1_9_0
 :parameters ()
 :precondition (and (near_9_1) (near_9_0))
 :poss-precondition (and (found))
 :effect (and (not (near_9_1)) (at_9_0))
)

(:action arrive_at_9_1_9_2
 :parameters ()
 :precondition (and (near_9_1) (near_9_2))
 :poss-precondition (and (found))
 :effect (and (not (near_9_1)) (at_9_2))
)

(:action arrive_at_9_2_8_2
 :parameters ()
 :precondition (and (near_9_2) (near_8_2))
 :poss-precondition (and (found))
 :effect (and (not (near_9_2)) (at_8_2))
)

(:action arrive_at_9_2_10_2
 :parameters ()
 :precondition (and (near_9_2) (near_10_2))
 :poss-precondition (and (found))
 :effect (and (not (near_9_2)) (at_10_2))
)

(:action arrive_at_9_2_9_1
 :parameters ()
 :precondition (and (near_9_2) (near_9_1))
 :poss-precondition (and (found))
 :effect (and (not (near_9_2)) (at_9_1))
)

(:action arrive_at_9_2_9_3
 :parameters ()
 :precondition (and (near_9_2) (near_9_3))
 :poss-precondition (and (found))
 :effect (and (not (near_9_2)) (at_9_3))
)

(:action arrive_at_9_3_8_3
 :parameters ()
 :precondition (and (near_9_3) (near_8_3))
 :poss-precondition (and (found))
 :effect (and (not (near_9_3)) (at_8_3))
)

(:action arrive_at_9_3_10_3
 :parameters ()
 :precondition (and (near_9_3) (near_10_3))
 :poss-precondition (and (found))
 :effect (and (not (near_9_3)) (at_10_3))
)

(:action arrive_at_9_3_9_2
 :parameters ()
 :precondition (and (near_9_3) (near_9_2))
 :poss-precondition (and (found))
 :effect (and (not (near_9_3)) (at_9_2))
)

(:action arrive_at_9_3_9_4
 :parameters ()
 :precondition (and (near_9_3) (near_9_4))
 :poss-precondition (and (found))
 :effect (and (not (near_9_3)) (at_9_4))
)

(:action arrive_at_9_4_8_4
 :parameters ()
 :precondition (and (near_9_4) (near_8_4))
 :poss-precondition (and (found))
 :effect (and (not (near_9_4)) (at_8_4))
)

(:action arrive_at_9_4_10_4
 :parameters ()
 :precondition (and (near_9_4) (near_10_4))
 :poss-precondition (and (found))
 :effect (and (not (near_9_4)) (at_10_4))
)

(:action arrive_at_9_4_9_3
 :parameters ()
 :precondition (and (near_9_4) (near_9_3))
 :poss-precondition (and (found))
 :effect (and (not (near_9_4)) (at_9_3))
)

(:action arrive_at_9_4_9_5
 :parameters ()
 :precondition (and (near_9_4) (near_9_5))
 :poss-precondition (and (found))
 :effect (and (not (near_9_4)) (at_9_5))
)

(:action arrive_at_9_5_8_5
 :parameters ()
 :precondition (and (near_9_5) (near_8_5))
 :poss-precondition (and (found))
 :effect (and (not (near_9_5)) (at_8_5))
)

(:action arrive_at_9_5_10_5
 :parameters ()
 :precondition (and (near_9_5) (near_10_5))
 :poss-precondition (and (found))
 :effect (and (not (near_9_5)) (at_10_5))
)

(:action arrive_at_9_5_9_4
 :parameters ()
 :precondition (and (near_9_5) (near_9_4))
 :poss-precondition (and (found))
 :effect (and (not (near_9_5)) (at_9_4))
)

(:action arrive_at_9_5_9_6
 :parameters ()
 :precondition (and (near_9_5) (near_9_6))
 :poss-precondition (and (found))
 :effect (and (not (near_9_5)) (at_9_6))
)

(:action arrive_at_9_6_8_6
 :parameters ()
 :precondition (and (near_9_6) (near_8_6))
 :poss-precondition (and (found))
 :effect (and (not (near_9_6)) (at_8_6))
)

(:action arrive_at_9_6_10_6
 :parameters ()
 :precondition (and (near_9_6) (near_10_6))
 :poss-precondition (and (found))
 :effect (and (not (near_9_6)) (at_10_6))
)

(:action arrive_at_9_6_9_5
 :parameters ()
 :precondition (and (near_9_6) (near_9_5))
 :poss-precondition (and (found))
 :effect (and (not (near_9_6)) (at_9_5))
)

(:action arrive_at_9_6_9_7
 :parameters ()
 :precondition (and (near_9_6) (near_9_7))
 :poss-precondition (and (found))
 :effect (and (not (near_9_6)) (at_9_7))
)

(:action arrive_at_9_7_8_7
 :parameters ()
 :precondition (and (near_9_7) (near_8_7))
 :poss-precondition (and (found))
 :effect (and (not (near_9_7)) (at_8_7))
)

(:action arrive_at_9_7_10_7
 :parameters ()
 :precondition (and (near_9_7) (near_10_7))
 :poss-precondition (and (found))
 :effect (and (not (near_9_7)) (at_10_7))
)

(:action arrive_at_9_7_9_6
 :parameters ()
 :precondition (and (near_9_7) (near_9_6))
 :poss-precondition (and (found))
 :effect (and (not (near_9_7)) (at_9_6))
)

(:action arrive_at_9_7_9_8
 :parameters ()
 :precondition (and (near_9_7) (near_9_8))
 :poss-precondition (and (found))
 :effect (and (not (near_9_7)) (at_9_8))
)

(:action arrive_at_9_8_8_8
 :parameters ()
 :precondition (and (near_9_8) (near_8_8))
 :poss-precondition (and (found))
 :effect (and (not (near_9_8)) (at_8_8))
)

(:action arrive_at_9_8_10_8
 :parameters ()
 :precondition (and (near_9_8) (near_10_8))
 :poss-precondition (and (found))
 :effect (and (not (near_9_8)) (at_10_8))
)

(:action arrive_at_9_8_9_7
 :parameters ()
 :precondition (and (near_9_8) (near_9_7))
 :poss-precondition (and (found))
 :effect (and (not (near_9_8)) (at_9_7))
)

(:action arrive_at_9_8_9_9
 :parameters ()
 :precondition (and (near_9_8) (near_9_9))
 :poss-precondition (and (found))
 :effect (and (not (near_9_8)) (at_9_9))
)

(:action arrive_at_9_9_8_9
 :parameters ()
 :precondition (and (near_9_9) (near_8_9))
 :poss-precondition (and (found))
 :effect (and (not (near_9_9)) (at_8_9))
)

(:action arrive_at_9_9_10_9
 :parameters ()
 :precondition (and (near_9_9) (near_10_9))
 :poss-precondition (and (found))
 :effect (and (not (near_9_9)) (at_10_9))
)

(:action arrive_at_9_9_9_8
 :parameters ()
 :precondition (and (near_9_9) (near_9_8))
 :poss-precondition (and (found))
 :effect (and (not (near_9_9)) (at_9_8))
)

(:action arrive_at_9_9_9_10
 :parameters ()
 :precondition (and (near_9_9) (near_9_10))
 :poss-precondition (and (found))
 :effect (and (not (near_9_9)) (at_9_10))
)

(:action arrive_at_9_10_8_10
 :parameters ()
 :precondition (and (near_9_10) (near_8_10))
 :poss-precondition (and (found))
 :effect (and (not (near_9_10)) (at_8_10))
)

(:action arrive_at_9_10_10_10
 :parameters ()
 :precondition (and (near_9_10) (near_10_10))
 :poss-precondition (and (found))
 :effect (and (not (near_9_10)) (at_10_10))
)

(:action arrive_at_9_10_9_9
 :parameters ()
 :precondition (and (near_9_10) (near_9_9))
 :poss-precondition (and (found))
 :effect (and (not (near_9_10)) (at_9_9))
)

(:action arrive_at_9_10_9_11
 :parameters ()
 :precondition (and (near_9_10) (near_9_11))
 :poss-precondition (and (found))
 :effect (and (not (near_9_10)) (at_9_11))
)

(:action arrive_at_9_11_8_11
 :parameters ()
 :precondition (and (near_9_11) (near_8_11))
 :poss-precondition (and (found))
 :effect (and (not (near_9_11)) (at_8_11))
)

(:action arrive_at_9_11_10_11
 :parameters ()
 :precondition (and (near_9_11) (near_10_11))
 :poss-precondition (and (found))
 :effect (and (not (near_9_11)) (at_10_11))
)

(:action arrive_at_9_11_9_10
 :parameters ()
 :precondition (and (near_9_11) (near_9_10))
 :poss-precondition (and (found))
 :effect (and (not (near_9_11)) (at_9_10))
)

(:action arrive_at_9_11_9_12
 :parameters ()
 :precondition (and (near_9_11) (near_9_12))
 :poss-precondition (and (found))
 :effect (and (not (near_9_11)) (at_9_12))
)

(:action arrive_at_9_12_8_12
 :parameters ()
 :precondition (and (near_9_12) (near_8_12))
 :poss-precondition (and (found))
 :effect (and (not (near_9_12)) (at_8_12))
)

(:action arrive_at_9_12_10_12
 :parameters ()
 :precondition (and (near_9_12) (near_10_12))
 :poss-precondition (and (found))
 :effect (and (not (near_9_12)) (at_10_12))
)

(:action arrive_at_9_12_9_11
 :parameters ()
 :precondition (and (near_9_12) (near_9_11))
 :poss-precondition (and (found))
 :effect (and (not (near_9_12)) (at_9_11))
)

(:action arrive_at_9_12_9_13
 :parameters ()
 :precondition (and (near_9_12) (near_9_13))
 :poss-precondition (and (found))
 :effect (and (not (near_9_12)) (at_9_13))
)

(:action arrive_at_9_13_8_13
 :parameters ()
 :precondition (and (near_9_13) (near_8_13))
 :poss-precondition (and (found))
 :effect (and (not (near_9_13)) (at_8_13))
)

(:action arrive_at_9_13_10_13
 :parameters ()
 :precondition (and (near_9_13) (near_10_13))
 :poss-precondition (and (found))
 :effect (and (not (near_9_13)) (at_10_13))
)

(:action arrive_at_9_13_9_12
 :parameters ()
 :precondition (and (near_9_13) (near_9_12))
 :poss-precondition (and (found))
 :effect (and (not (near_9_13)) (at_9_12))
)

(:action arrive_at_9_13_9_14
 :parameters ()
 :precondition (and (near_9_13) (near_9_14))
 :poss-precondition (and (found))
 :effect (and (not (near_9_13)) (at_9_14))
)

(:action arrive_at_9_14_8_14
 :parameters ()
 :precondition (and (near_9_14) (near_8_14))
 :poss-precondition (and (found))
 :effect (and (not (near_9_14)) (at_8_14))
)

(:action arrive_at_9_14_10_14
 :parameters ()
 :precondition (and (near_9_14) (near_10_14))
 :poss-precondition (and (found))
 :effect (and (not (near_9_14)) (at_10_14))
)

(:action arrive_at_9_14_9_13
 :parameters ()
 :precondition (and (near_9_14) (near_9_13))
 :poss-precondition (and (found))
 :effect (and (not (near_9_14)) (at_9_13))
)

(:action arrive_at_9_14_9_15
 :parameters ()
 :precondition (and (near_9_14) (near_9_15))
 :poss-precondition (and (found))
 :effect (and (not (near_9_14)) (at_9_15))
)

(:action arrive_at_9_15_8_15
 :parameters ()
 :precondition (and (near_9_15) (near_8_15))
 :poss-precondition (and (found))
 :effect (and (not (near_9_15)) (at_8_15))
)

(:action arrive_at_9_15_10_15
 :parameters ()
 :precondition (and (near_9_15) (near_10_15))
 :poss-precondition (and (found))
 :effect (and (not (near_9_15)) (at_10_15))
)

(:action arrive_at_9_15_9_14
 :parameters ()
 :precondition (and (near_9_15) (near_9_14))
 :poss-precondition (and (found))
 :effect (and (not (near_9_15)) (at_9_14))
)

(:action arrive_at_10_0_9_0
 :parameters ()
 :precondition (and (near_10_0) (near_9_0))
 :poss-precondition (and (found))
 :effect (and (not (near_10_0)) (at_9_0))
)

(:action arrive_at_10_0_11_0
 :parameters ()
 :precondition (and (near_10_0) (near_11_0))
 :poss-precondition (and (found))
 :effect (and (not (near_10_0)) (at_11_0))
)

(:action arrive_at_10_0_10_1
 :parameters ()
 :precondition (and (near_10_0) (near_10_1))
 :poss-precondition (and (found))
 :effect (and (not (near_10_0)) (at_10_1))
)

(:action arrive_at_10_1_9_1
 :parameters ()
 :precondition (and (near_10_1) (near_9_1))
 :poss-precondition (and (found))
 :effect (and (not (near_10_1)) (at_9_1))
)

(:action arrive_at_10_1_11_1
 :parameters ()
 :precondition (and (near_10_1) (near_11_1))
 :poss-precondition (and (found))
 :effect (and (not (near_10_1)) (at_11_1))
)

(:action arrive_at_10_1_10_0
 :parameters ()
 :precondition (and (near_10_1) (near_10_0))
 :poss-precondition (and (found))
 :effect (and (not (near_10_1)) (at_10_0))
)

(:action arrive_at_10_1_10_2
 :parameters ()
 :precondition (and (near_10_1) (near_10_2))
 :poss-precondition (and (found))
 :effect (and (not (near_10_1)) (at_10_2))
)

(:action arrive_at_10_2_9_2
 :parameters ()
 :precondition (and (near_10_2) (near_9_2))
 :poss-precondition (and (found))
 :effect (and (not (near_10_2)) (at_9_2))
)

(:action arrive_at_10_2_11_2
 :parameters ()
 :precondition (and (near_10_2) (near_11_2))
 :poss-precondition (and (found))
 :effect (and (not (near_10_2)) (at_11_2))
)

(:action arrive_at_10_2_10_1
 :parameters ()
 :precondition (and (near_10_2) (near_10_1))
 :poss-precondition (and (found))
 :effect (and (not (near_10_2)) (at_10_1))
)

(:action arrive_at_10_2_10_3
 :parameters ()
 :precondition (and (near_10_2) (near_10_3))
 :poss-precondition (and (found))
 :effect (and (not (near_10_2)) (at_10_3))
)

(:action arrive_at_10_3_9_3
 :parameters ()
 :precondition (and (near_10_3) (near_9_3))
 :poss-precondition (and (found))
 :effect (and (not (near_10_3)) (at_9_3))
)

(:action arrive_at_10_3_11_3
 :parameters ()
 :precondition (and (near_10_3) (near_11_3))
 :poss-precondition (and (found))
 :effect (and (not (near_10_3)) (at_11_3))
)

(:action arrive_at_10_3_10_2
 :parameters ()
 :precondition (and (near_10_3) (near_10_2))
 :poss-precondition (and (found))
 :effect (and (not (near_10_3)) (at_10_2))
)

(:action arrive_at_10_3_10_4
 :parameters ()
 :precondition (and (near_10_3) (near_10_4))
 :poss-precondition (and (found))
 :effect (and (not (near_10_3)) (at_10_4))
)

(:action arrive_at_10_4_9_4
 :parameters ()
 :precondition (and (near_10_4) (near_9_4))
 :poss-precondition (and (found))
 :effect (and (not (near_10_4)) (at_9_4))
)

(:action arrive_at_10_4_11_4
 :parameters ()
 :precondition (and (near_10_4) (near_11_4))
 :poss-precondition (and (found))
 :effect (and (not (near_10_4)) (at_11_4))
)

(:action arrive_at_10_4_10_3
 :parameters ()
 :precondition (and (near_10_4) (near_10_3))
 :poss-precondition (and (found))
 :effect (and (not (near_10_4)) (at_10_3))
)

(:action arrive_at_10_4_10_5
 :parameters ()
 :precondition (and (near_10_4) (near_10_5))
 :poss-precondition (and (found))
 :effect (and (not (near_10_4)) (at_10_5))
)

(:action arrive_at_10_5_9_5
 :parameters ()
 :precondition (and (near_10_5) (near_9_5))
 :poss-precondition (and (found))
 :effect (and (not (near_10_5)) (at_9_5))
)

(:action arrive_at_10_5_11_5
 :parameters ()
 :precondition (and (near_10_5) (near_11_5))
 :poss-precondition (and (found))
 :effect (and (not (near_10_5)) (at_11_5))
)

(:action arrive_at_10_5_10_4
 :parameters ()
 :precondition (and (near_10_5) (near_10_4))
 :poss-precondition (and (found))
 :effect (and (not (near_10_5)) (at_10_4))
)

(:action arrive_at_10_5_10_6
 :parameters ()
 :precondition (and (near_10_5) (near_10_6))
 :poss-precondition (and (found))
 :effect (and (not (near_10_5)) (at_10_6))
)

(:action arrive_at_10_6_9_6
 :parameters ()
 :precondition (and (near_10_6) (near_9_6))
 :poss-precondition (and (found))
 :effect (and (not (near_10_6)) (at_9_6))
)

(:action arrive_at_10_6_11_6
 :parameters ()
 :precondition (and (near_10_6) (near_11_6))
 :poss-precondition (and (found))
 :effect (and (not (near_10_6)) (at_11_6))
)

(:action arrive_at_10_6_10_5
 :parameters ()
 :precondition (and (near_10_6) (near_10_5))
 :poss-precondition (and (found))
 :effect (and (not (near_10_6)) (at_10_5))
)

(:action arrive_at_10_6_10_7
 :parameters ()
 :precondition (and (near_10_6) (near_10_7))
 :poss-precondition (and (found))
 :effect (and (not (near_10_6)) (at_10_7))
)

(:action arrive_at_10_7_9_7
 :parameters ()
 :precondition (and (near_10_7) (near_9_7))
 :poss-precondition (and (found))
 :effect (and (not (near_10_7)) (at_9_7))
)

(:action arrive_at_10_7_11_7
 :parameters ()
 :precondition (and (near_10_7) (near_11_7))
 :poss-precondition (and (found))
 :effect (and (not (near_10_7)) (at_11_7))
)

(:action arrive_at_10_7_10_6
 :parameters ()
 :precondition (and (near_10_7) (near_10_6))
 :poss-precondition (and (found))
 :effect (and (not (near_10_7)) (at_10_6))
)

(:action arrive_at_10_7_10_8
 :parameters ()
 :precondition (and (near_10_7) (near_10_8))
 :poss-precondition (and (found))
 :effect (and (not (near_10_7)) (at_10_8))
)

(:action arrive_at_10_8_9_8
 :parameters ()
 :precondition (and (near_10_8) (near_9_8))
 :poss-precondition (and (found))
 :effect (and (not (near_10_8)) (at_9_8))
)

(:action arrive_at_10_8_11_8
 :parameters ()
 :precondition (and (near_10_8) (near_11_8))
 :poss-precondition (and (found))
 :effect (and (not (near_10_8)) (at_11_8))
)

(:action arrive_at_10_8_10_7
 :parameters ()
 :precondition (and (near_10_8) (near_10_7))
 :poss-precondition (and (found))
 :effect (and (not (near_10_8)) (at_10_7))
)

(:action arrive_at_10_8_10_9
 :parameters ()
 :precondition (and (near_10_8) (near_10_9))
 :poss-precondition (and (found))
 :effect (and (not (near_10_8)) (at_10_9))
)

(:action arrive_at_10_9_9_9
 :parameters ()
 :precondition (and (near_10_9) (near_9_9))
 :poss-precondition (and (found))
 :effect (and (not (near_10_9)) (at_9_9))
)

(:action arrive_at_10_9_11_9
 :parameters ()
 :precondition (and (near_10_9) (near_11_9))
 :poss-precondition (and (found))
 :effect (and (not (near_10_9)) (at_11_9))
)

(:action arrive_at_10_9_10_8
 :parameters ()
 :precondition (and (near_10_9) (near_10_8))
 :poss-precondition (and (found))
 :effect (and (not (near_10_9)) (at_10_8))
)

(:action arrive_at_10_9_10_10
 :parameters ()
 :precondition (and (near_10_9) (near_10_10))
 :poss-precondition (and (found))
 :effect (and (not (near_10_9)) (at_10_10))
)

(:action arrive_at_10_10_9_10
 :parameters ()
 :precondition (and (near_10_10) (near_9_10))
 :poss-precondition (and (found))
 :effect (and (not (near_10_10)) (at_9_10))
)

(:action arrive_at_10_10_11_10
 :parameters ()
 :precondition (and (near_10_10) (near_11_10))
 :poss-precondition (and (found))
 :effect (and (not (near_10_10)) (at_11_10))
)

(:action arrive_at_10_10_10_9
 :parameters ()
 :precondition (and (near_10_10) (near_10_9))
 :poss-precondition (and (found))
 :effect (and (not (near_10_10)) (at_10_9))
)

(:action arrive_at_10_10_10_11
 :parameters ()
 :precondition (and (near_10_10) (near_10_11))
 :poss-precondition (and (found))
 :effect (and (not (near_10_10)) (at_10_11))
)

(:action arrive_at_10_11_9_11
 :parameters ()
 :precondition (and (near_10_11) (near_9_11))
 :poss-precondition (and (found))
 :effect (and (not (near_10_11)) (at_9_11))
)

(:action arrive_at_10_11_11_11
 :parameters ()
 :precondition (and (near_10_11) (near_11_11))
 :poss-precondition (and (found))
 :effect (and (not (near_10_11)) (at_11_11))
)

(:action arrive_at_10_11_10_10
 :parameters ()
 :precondition (and (near_10_11) (near_10_10))
 :poss-precondition (and (found))
 :effect (and (not (near_10_11)) (at_10_10))
)

(:action arrive_at_10_11_10_12
 :parameters ()
 :precondition (and (near_10_11) (near_10_12))
 :poss-precondition (and (found))
 :effect (and (not (near_10_11)) (at_10_12))
)

(:action arrive_at_10_12_9_12
 :parameters ()
 :precondition (and (near_10_12) (near_9_12))
 :poss-precondition (and (found))
 :effect (and (not (near_10_12)) (at_9_12))
)

(:action arrive_at_10_12_11_12
 :parameters ()
 :precondition (and (near_10_12) (near_11_12))
 :poss-precondition (and (found))
 :effect (and (not (near_10_12)) (at_11_12))
)

(:action arrive_at_10_12_10_11
 :parameters ()
 :precondition (and (near_10_12) (near_10_11))
 :poss-precondition (and (found))
 :effect (and (not (near_10_12)) (at_10_11))
)

(:action arrive_at_10_12_10_13
 :parameters ()
 :precondition (and (near_10_12) (near_10_13))
 :poss-precondition (and (found))
 :effect (and (not (near_10_12)) (at_10_13))
)

(:action arrive_at_10_13_9_13
 :parameters ()
 :precondition (and (near_10_13) (near_9_13))
 :poss-precondition (and (found))
 :effect (and (not (near_10_13)) (at_9_13))
)

(:action arrive_at_10_13_11_13
 :parameters ()
 :precondition (and (near_10_13) (near_11_13))
 :poss-precondition (and (found))
 :effect (and (not (near_10_13)) (at_11_13))
)

(:action arrive_at_10_13_10_12
 :parameters ()
 :precondition (and (near_10_13) (near_10_12))
 :poss-precondition (and (found))
 :effect (and (not (near_10_13)) (at_10_12))
)

(:action arrive_at_10_13_10_14
 :parameters ()
 :precondition (and (near_10_13) (near_10_14))
 :poss-precondition (and (found))
 :effect (and (not (near_10_13)) (at_10_14))
)

(:action arrive_at_10_14_9_14
 :parameters ()
 :precondition (and (near_10_14) (near_9_14))
 :poss-precondition (and (found))
 :effect (and (not (near_10_14)) (at_9_14))
)

(:action arrive_at_10_14_11_14
 :parameters ()
 :precondition (and (near_10_14) (near_11_14))
 :poss-precondition (and (found))
 :effect (and (not (near_10_14)) (at_11_14))
)

(:action arrive_at_10_14_10_13
 :parameters ()
 :precondition (and (near_10_14) (near_10_13))
 :poss-precondition (and (found))
 :effect (and (not (near_10_14)) (at_10_13))
)

(:action arrive_at_10_14_10_15
 :parameters ()
 :precondition (and (near_10_14) (near_10_15))
 :poss-precondition (and (found))
 :effect (and (not (near_10_14)) (at_10_15))
)

(:action arrive_at_10_15_9_15
 :parameters ()
 :precondition (and (near_10_15) (near_9_15))
 :poss-precondition (and (found))
 :effect (and (not (near_10_15)) (at_9_15))
)

(:action arrive_at_10_15_11_15
 :parameters ()
 :precondition (and (near_10_15) (near_11_15))
 :poss-precondition (and (found))
 :effect (and (not (near_10_15)) (at_11_15))
)

(:action arrive_at_10_15_10_14
 :parameters ()
 :precondition (and (near_10_15) (near_10_14))
 :poss-precondition (and (found))
 :effect (and (not (near_10_15)) (at_10_14))
)

(:action arrive_at_11_0_10_0
 :parameters ()
 :precondition (and (near_11_0) (near_10_0))
 :poss-precondition (and (found))
 :effect (and (not (near_11_0)) (at_10_0))
)

(:action arrive_at_11_0_12_0
 :parameters ()
 :precondition (and (near_11_0) (near_12_0))
 :poss-precondition (and (found))
 :effect (and (not (near_11_0)) (at_12_0))
)

(:action arrive_at_11_0_11_1
 :parameters ()
 :precondition (and (near_11_0) (near_11_1))
 :poss-precondition (and (found))
 :effect (and (not (near_11_0)) (at_11_1))
)

(:action arrive_at_11_1_10_1
 :parameters ()
 :precondition (and (near_11_1) (near_10_1))
 :poss-precondition (and (found))
 :effect (and (not (near_11_1)) (at_10_1))
)

(:action arrive_at_11_1_12_1
 :parameters ()
 :precondition (and (near_11_1) (near_12_1))
 :poss-precondition (and (found))
 :effect (and (not (near_11_1)) (at_12_1))
)

(:action arrive_at_11_1_11_0
 :parameters ()
 :precondition (and (near_11_1) (near_11_0))
 :poss-precondition (and (found))
 :effect (and (not (near_11_1)) (at_11_0))
)

(:action arrive_at_11_1_11_2
 :parameters ()
 :precondition (and (near_11_1) (near_11_2))
 :poss-precondition (and (found))
 :effect (and (not (near_11_1)) (at_11_2))
)

(:action arrive_at_11_2_10_2
 :parameters ()
 :precondition (and (near_11_2) (near_10_2))
 :poss-precondition (and (found))
 :effect (and (not (near_11_2)) (at_10_2))
)

(:action arrive_at_11_2_12_2
 :parameters ()
 :precondition (and (near_11_2) (near_12_2))
 :poss-precondition (and (found))
 :effect (and (not (near_11_2)) (at_12_2))
)

(:action arrive_at_11_2_11_1
 :parameters ()
 :precondition (and (near_11_2) (near_11_1))
 :poss-precondition (and (found))
 :effect (and (not (near_11_2)) (at_11_1))
)

(:action arrive_at_11_2_11_3
 :parameters ()
 :precondition (and (near_11_2) (near_11_3))
 :poss-precondition (and (found))
 :effect (and (not (near_11_2)) (at_11_3))
)

(:action arrive_at_11_3_10_3
 :parameters ()
 :precondition (and (near_11_3) (near_10_3))
 :poss-precondition (and (found))
 :effect (and (not (near_11_3)) (at_10_3))
)

(:action arrive_at_11_3_12_3
 :parameters ()
 :precondition (and (near_11_3) (near_12_3))
 :poss-precondition (and (found))
 :effect (and (not (near_11_3)) (at_12_3))
)

(:action arrive_at_11_3_11_2
 :parameters ()
 :precondition (and (near_11_3) (near_11_2))
 :poss-precondition (and (found))
 :effect (and (not (near_11_3)) (at_11_2))
)

(:action arrive_at_11_3_11_4
 :parameters ()
 :precondition (and (near_11_3) (near_11_4))
 :poss-precondition (and (found))
 :effect (and (not (near_11_3)) (at_11_4))
)

(:action arrive_at_11_4_10_4
 :parameters ()
 :precondition (and (near_11_4) (near_10_4))
 :poss-precondition (and (found))
 :effect (and (not (near_11_4)) (at_10_4))
)

(:action arrive_at_11_4_12_4
 :parameters ()
 :precondition (and (near_11_4) (near_12_4))
 :poss-precondition (and (found))
 :effect (and (not (near_11_4)) (at_12_4))
)

(:action arrive_at_11_4_11_3
 :parameters ()
 :precondition (and (near_11_4) (near_11_3))
 :poss-precondition (and (found))
 :effect (and (not (near_11_4)) (at_11_3))
)

(:action arrive_at_11_4_11_5
 :parameters ()
 :precondition (and (near_11_4) (near_11_5))
 :poss-precondition (and (found))
 :effect (and (not (near_11_4)) (at_11_5))
)

(:action arrive_at_11_5_10_5
 :parameters ()
 :precondition (and (near_11_5) (near_10_5))
 :poss-precondition (and (found))
 :effect (and (not (near_11_5)) (at_10_5))
)

(:action arrive_at_11_5_12_5
 :parameters ()
 :precondition (and (near_11_5) (near_12_5))
 :poss-precondition (and (found))
 :effect (and (not (near_11_5)) (at_12_5))
)

(:action arrive_at_11_5_11_4
 :parameters ()
 :precondition (and (near_11_5) (near_11_4))
 :poss-precondition (and (found))
 :effect (and (not (near_11_5)) (at_11_4))
)

(:action arrive_at_11_5_11_6
 :parameters ()
 :precondition (and (near_11_5) (near_11_6))
 :poss-precondition (and (found))
 :effect (and (not (near_11_5)) (at_11_6))
)

(:action arrive_at_11_6_10_6
 :parameters ()
 :precondition (and (near_11_6) (near_10_6))
 :poss-precondition (and (found))
 :effect (and (not (near_11_6)) (at_10_6))
)

(:action arrive_at_11_6_12_6
 :parameters ()
 :precondition (and (near_11_6) (near_12_6))
 :poss-precondition (and (found))
 :effect (and (not (near_11_6)) (at_12_6))
)

(:action arrive_at_11_6_11_5
 :parameters ()
 :precondition (and (near_11_6) (near_11_5))
 :poss-precondition (and (found))
 :effect (and (not (near_11_6)) (at_11_5))
)

(:action arrive_at_11_6_11_7
 :parameters ()
 :precondition (and (near_11_6) (near_11_7))
 :poss-precondition (and (found))
 :effect (and (not (near_11_6)) (at_11_7))
)

(:action arrive_at_11_7_10_7
 :parameters ()
 :precondition (and (near_11_7) (near_10_7))
 :poss-precondition (and (found))
 :effect (and (not (near_11_7)) (at_10_7))
)

(:action arrive_at_11_7_12_7
 :parameters ()
 :precondition (and (near_11_7) (near_12_7))
 :poss-precondition (and (found))
 :effect (and (not (near_11_7)) (at_12_7))
)

(:action arrive_at_11_7_11_6
 :parameters ()
 :precondition (and (near_11_7) (near_11_6))
 :poss-precondition (and (found))
 :effect (and (not (near_11_7)) (at_11_6))
)

(:action arrive_at_11_7_11_8
 :parameters ()
 :precondition (and (near_11_7) (near_11_8))
 :poss-precondition (and (found))
 :effect (and (not (near_11_7)) (at_11_8))
)

(:action arrive_at_11_8_10_8
 :parameters ()
 :precondition (and (near_11_8) (near_10_8))
 :poss-precondition (and (found))
 :effect (and (not (near_11_8)) (at_10_8))
)

(:action arrive_at_11_8_12_8
 :parameters ()
 :precondition (and (near_11_8) (near_12_8))
 :poss-precondition (and (found))
 :effect (and (not (near_11_8)) (at_12_8))
)

(:action arrive_at_11_8_11_7
 :parameters ()
 :precondition (and (near_11_8) (near_11_7))
 :poss-precondition (and (found))
 :effect (and (not (near_11_8)) (at_11_7))
)

(:action arrive_at_11_8_11_9
 :parameters ()
 :precondition (and (near_11_8) (near_11_9))
 :poss-precondition (and (found))
 :effect (and (not (near_11_8)) (at_11_9))
)

(:action arrive_at_11_9_10_9
 :parameters ()
 :precondition (and (near_11_9) (near_10_9))
 :poss-precondition (and (found))
 :effect (and (not (near_11_9)) (at_10_9))
)

(:action arrive_at_11_9_12_9
 :parameters ()
 :precondition (and (near_11_9) (near_12_9))
 :poss-precondition (and (found))
 :effect (and (not (near_11_9)) (at_12_9))
)

(:action arrive_at_11_9_11_8
 :parameters ()
 :precondition (and (near_11_9) (near_11_8))
 :poss-precondition (and (found))
 :effect (and (not (near_11_9)) (at_11_8))
)

(:action arrive_at_11_9_11_10
 :parameters ()
 :precondition (and (near_11_9) (near_11_10))
 :poss-precondition (and (found))
 :effect (and (not (near_11_9)) (at_11_10))
)

(:action arrive_at_11_10_10_10
 :parameters ()
 :precondition (and (near_11_10) (near_10_10))
 :poss-precondition (and (found))
 :effect (and (not (near_11_10)) (at_10_10))
)

(:action arrive_at_11_10_12_10
 :parameters ()
 :precondition (and (near_11_10) (near_12_10))
 :poss-precondition (and (found))
 :effect (and (not (near_11_10)) (at_12_10))
)

(:action arrive_at_11_10_11_9
 :parameters ()
 :precondition (and (near_11_10) (near_11_9))
 :poss-precondition (and (found))
 :effect (and (not (near_11_10)) (at_11_9))
)

(:action arrive_at_11_10_11_11
 :parameters ()
 :precondition (and (near_11_10) (near_11_11))
 :poss-precondition (and (found))
 :effect (and (not (near_11_10)) (at_11_11))
)

(:action arrive_at_11_11_10_11
 :parameters ()
 :precondition (and (near_11_11) (near_10_11))
 :poss-precondition (and (found))
 :effect (and (not (near_11_11)) (at_10_11))
)

(:action arrive_at_11_11_12_11
 :parameters ()
 :precondition (and (near_11_11) (near_12_11))
 :poss-precondition (and (found))
 :effect (and (not (near_11_11)) (at_12_11))
)

(:action arrive_at_11_11_11_10
 :parameters ()
 :precondition (and (near_11_11) (near_11_10))
 :poss-precondition (and (found))
 :effect (and (not (near_11_11)) (at_11_10))
)

(:action arrive_at_11_11_11_12
 :parameters ()
 :precondition (and (near_11_11) (near_11_12))
 :poss-precondition (and (found))
 :effect (and (not (near_11_11)) (at_11_12))
)

(:action arrive_at_11_12_10_12
 :parameters ()
 :precondition (and (near_11_12) (near_10_12))
 :poss-precondition (and (found))
 :effect (and (not (near_11_12)) (at_10_12))
)

(:action arrive_at_11_12_12_12
 :parameters ()
 :precondition (and (near_11_12) (near_12_12))
 :poss-precondition (and (found))
 :effect (and (not (near_11_12)) (at_12_12))
)

(:action arrive_at_11_12_11_11
 :parameters ()
 :precondition (and (near_11_12) (near_11_11))
 :poss-precondition (and (found))
 :effect (and (not (near_11_12)) (at_11_11))
)

(:action arrive_at_11_12_11_13
 :parameters ()
 :precondition (and (near_11_12) (near_11_13))
 :poss-precondition (and (found))
 :effect (and (not (near_11_12)) (at_11_13))
)

(:action arrive_at_11_13_10_13
 :parameters ()
 :precondition (and (near_11_13) (near_10_13))
 :poss-precondition (and (found))
 :effect (and (not (near_11_13)) (at_10_13))
)

(:action arrive_at_11_13_12_13
 :parameters ()
 :precondition (and (near_11_13) (near_12_13))
 :poss-precondition (and (found))
 :effect (and (not (near_11_13)) (at_12_13))
)

(:action arrive_at_11_13_11_12
 :parameters ()
 :precondition (and (near_11_13) (near_11_12))
 :poss-precondition (and (found))
 :effect (and (not (near_11_13)) (at_11_12))
)

(:action arrive_at_11_13_11_14
 :parameters ()
 :precondition (and (near_11_13) (near_11_14))
 :poss-precondition (and (found))
 :effect (and (not (near_11_13)) (at_11_14))
)

(:action arrive_at_11_14_10_14
 :parameters ()
 :precondition (and (near_11_14) (near_10_14))
 :poss-precondition (and (found))
 :effect (and (not (near_11_14)) (at_10_14))
)

(:action arrive_at_11_14_12_14
 :parameters ()
 :precondition (and (near_11_14) (near_12_14))
 :poss-precondition (and (found))
 :effect (and (not (near_11_14)) (at_12_14))
)

(:action arrive_at_11_14_11_13
 :parameters ()
 :precondition (and (near_11_14) (near_11_13))
 :poss-precondition (and (found))
 :effect (and (not (near_11_14)) (at_11_13))
)

(:action arrive_at_11_14_11_15
 :parameters ()
 :precondition (and (near_11_14) (near_11_15))
 :poss-precondition (and (found))
 :effect (and (not (near_11_14)) (at_11_15))
)

(:action arrive_at_11_15_10_15
 :parameters ()
 :precondition (and (near_11_15) (near_10_15))
 :poss-precondition (and (found))
 :effect (and (not (near_11_15)) (at_10_15))
)

(:action arrive_at_11_15_12_15
 :parameters ()
 :precondition (and (near_11_15) (near_12_15))
 :poss-precondition (and (found))
 :effect (and (not (near_11_15)) (at_12_15))
)

(:action arrive_at_11_15_11_14
 :parameters ()
 :precondition (and (near_11_15) (near_11_14))
 :poss-precondition (and (found))
 :effect (and (not (near_11_15)) (at_11_14))
)

(:action arrive_at_12_0_11_0
 :parameters ()
 :precondition (and (near_12_0) (near_11_0))
 :poss-precondition (and (found))
 :effect (and (not (near_12_0)) (at_11_0))
)

(:action arrive_at_12_0_13_0
 :parameters ()
 :precondition (and (near_12_0) (near_13_0))
 :poss-precondition (and (found))
 :effect (and (not (near_12_0)) (at_13_0))
)

(:action arrive_at_12_0_12_1
 :parameters ()
 :precondition (and (near_12_0) (near_12_1))
 :poss-precondition (and (found))
 :effect (and (not (near_12_0)) (at_12_1))
)

(:action arrive_at_12_1_11_1
 :parameters ()
 :precondition (and (near_12_1) (near_11_1))
 :poss-precondition (and (found))
 :effect (and (not (near_12_1)) (at_11_1))
)

(:action arrive_at_12_1_13_1
 :parameters ()
 :precondition (and (near_12_1) (near_13_1))
 :poss-precondition (and (found))
 :effect (and (not (near_12_1)) (at_13_1))
)

(:action arrive_at_12_1_12_0
 :parameters ()
 :precondition (and (near_12_1) (near_12_0))
 :poss-precondition (and (found))
 :effect (and (not (near_12_1)) (at_12_0))
)

(:action arrive_at_12_1_12_2
 :parameters ()
 :precondition (and (near_12_1) (near_12_2))
 :poss-precondition (and (found))
 :effect (and (not (near_12_1)) (at_12_2))
)

(:action arrive_at_12_2_11_2
 :parameters ()
 :precondition (and (near_12_2) (near_11_2))
 :poss-precondition (and (found))
 :effect (and (not (near_12_2)) (at_11_2))
)

(:action arrive_at_12_2_13_2
 :parameters ()
 :precondition (and (near_12_2) (near_13_2))
 :poss-precondition (and (found))
 :effect (and (not (near_12_2)) (at_13_2))
)

(:action arrive_at_12_2_12_1
 :parameters ()
 :precondition (and (near_12_2) (near_12_1))
 :poss-precondition (and (found))
 :effect (and (not (near_12_2)) (at_12_1))
)

(:action arrive_at_12_2_12_3
 :parameters ()
 :precondition (and (near_12_2) (near_12_3))
 :poss-precondition (and (found))
 :effect (and (not (near_12_2)) (at_12_3))
)

(:action arrive_at_12_3_11_3
 :parameters ()
 :precondition (and (near_12_3) (near_11_3))
 :poss-precondition (and (found))
 :effect (and (not (near_12_3)) (at_11_3))
)

(:action arrive_at_12_3_13_3
 :parameters ()
 :precondition (and (near_12_3) (near_13_3))
 :poss-precondition (and (found))
 :effect (and (not (near_12_3)) (at_13_3))
)

(:action arrive_at_12_3_12_2
 :parameters ()
 :precondition (and (near_12_3) (near_12_2))
 :poss-precondition (and (found))
 :effect (and (not (near_12_3)) (at_12_2))
)

(:action arrive_at_12_3_12_4
 :parameters ()
 :precondition (and (near_12_3) (near_12_4))
 :poss-precondition (and (found))
 :effect (and (not (near_12_3)) (at_12_4))
)

(:action arrive_at_12_4_11_4
 :parameters ()
 :precondition (and (near_12_4) (near_11_4))
 :poss-precondition (and (found))
 :effect (and (not (near_12_4)) (at_11_4))
)

(:action arrive_at_12_4_13_4
 :parameters ()
 :precondition (and (near_12_4) (near_13_4))
 :poss-precondition (and (found))
 :effect (and (not (near_12_4)) (at_13_4))
)

(:action arrive_at_12_4_12_3
 :parameters ()
 :precondition (and (near_12_4) (near_12_3))
 :poss-precondition (and (found))
 :effect (and (not (near_12_4)) (at_12_3))
)

(:action arrive_at_12_4_12_5
 :parameters ()
 :precondition (and (near_12_4) (near_12_5))
 :poss-precondition (and (found))
 :effect (and (not (near_12_4)) (at_12_5))
)

(:action arrive_at_12_5_11_5
 :parameters ()
 :precondition (and (near_12_5) (near_11_5))
 :poss-precondition (and (found))
 :effect (and (not (near_12_5)) (at_11_5))
)

(:action arrive_at_12_5_13_5
 :parameters ()
 :precondition (and (near_12_5) (near_13_5))
 :poss-precondition (and (found))
 :effect (and (not (near_12_5)) (at_13_5))
)

(:action arrive_at_12_5_12_4
 :parameters ()
 :precondition (and (near_12_5) (near_12_4))
 :poss-precondition (and (found))
 :effect (and (not (near_12_5)) (at_12_4))
)

(:action arrive_at_12_5_12_6
 :parameters ()
 :precondition (and (near_12_5) (near_12_6))
 :poss-precondition (and (found))
 :effect (and (not (near_12_5)) (at_12_6))
)

(:action arrive_at_12_6_11_6
 :parameters ()
 :precondition (and (near_12_6) (near_11_6))
 :poss-precondition (and (found))
 :effect (and (not (near_12_6)) (at_11_6))
)

(:action arrive_at_12_6_13_6
 :parameters ()
 :precondition (and (near_12_6) (near_13_6))
 :poss-precondition (and (found))
 :effect (and (not (near_12_6)) (at_13_6))
)

(:action arrive_at_12_6_12_5
 :parameters ()
 :precondition (and (near_12_6) (near_12_5))
 :poss-precondition (and (found))
 :effect (and (not (near_12_6)) (at_12_5))
)

(:action arrive_at_12_6_12_7
 :parameters ()
 :precondition (and (near_12_6) (near_12_7))
 :poss-precondition (and (found))
 :effect (and (not (near_12_6)) (at_12_7))
)

(:action arrive_at_12_7_11_7
 :parameters ()
 :precondition (and (near_12_7) (near_11_7))
 :poss-precondition (and (found))
 :effect (and (not (near_12_7)) (at_11_7))
)

(:action arrive_at_12_7_13_7
 :parameters ()
 :precondition (and (near_12_7) (near_13_7))
 :poss-precondition (and (found))
 :effect (and (not (near_12_7)) (at_13_7))
)

(:action arrive_at_12_7_12_6
 :parameters ()
 :precondition (and (near_12_7) (near_12_6))
 :poss-precondition (and (found))
 :effect (and (not (near_12_7)) (at_12_6))
)

(:action arrive_at_12_7_12_8
 :parameters ()
 :precondition (and (near_12_7) (near_12_8))
 :poss-precondition (and (found))
 :effect (and (not (near_12_7)) (at_12_8))
)

(:action arrive_at_12_8_11_8
 :parameters ()
 :precondition (and (near_12_8) (near_11_8))
 :poss-precondition (and (found))
 :effect (and (not (near_12_8)) (at_11_8))
)

(:action arrive_at_12_8_13_8
 :parameters ()
 :precondition (and (near_12_8) (near_13_8))
 :poss-precondition (and (found))
 :effect (and (not (near_12_8)) (at_13_8))
)

(:action arrive_at_12_8_12_7
 :parameters ()
 :precondition (and (near_12_8) (near_12_7))
 :poss-precondition (and (found))
 :effect (and (not (near_12_8)) (at_12_7))
)

(:action arrive_at_12_8_12_9
 :parameters ()
 :precondition (and (near_12_8) (near_12_9))
 :poss-precondition (and (found))
 :effect (and (not (near_12_8)) (at_12_9))
)

(:action arrive_at_12_9_11_9
 :parameters ()
 :precondition (and (near_12_9) (near_11_9))
 :poss-precondition (and (found))
 :effect (and (not (near_12_9)) (at_11_9))
)

(:action arrive_at_12_9_13_9
 :parameters ()
 :precondition (and (near_12_9) (near_13_9))
 :poss-precondition (and (found))
 :effect (and (not (near_12_9)) (at_13_9))
)

(:action arrive_at_12_9_12_8
 :parameters ()
 :precondition (and (near_12_9) (near_12_8))
 :poss-precondition (and (found))
 :effect (and (not (near_12_9)) (at_12_8))
)

(:action arrive_at_12_9_12_10
 :parameters ()
 :precondition (and (near_12_9) (near_12_10))
 :poss-precondition (and (found))
 :effect (and (not (near_12_9)) (at_12_10))
)

(:action arrive_at_12_10_11_10
 :parameters ()
 :precondition (and (near_12_10) (near_11_10))
 :poss-precondition (and (found))
 :effect (and (not (near_12_10)) (at_11_10))
)

(:action arrive_at_12_10_13_10
 :parameters ()
 :precondition (and (near_12_10) (near_13_10))
 :poss-precondition (and (found))
 :effect (and (not (near_12_10)) (at_13_10))
)

(:action arrive_at_12_10_12_9
 :parameters ()
 :precondition (and (near_12_10) (near_12_9))
 :poss-precondition (and (found))
 :effect (and (not (near_12_10)) (at_12_9))
)

(:action arrive_at_12_10_12_11
 :parameters ()
 :precondition (and (near_12_10) (near_12_11))
 :poss-precondition (and (found))
 :effect (and (not (near_12_10)) (at_12_11))
)

(:action arrive_at_12_11_11_11
 :parameters ()
 :precondition (and (near_12_11) (near_11_11))
 :poss-precondition (and (found))
 :effect (and (not (near_12_11)) (at_11_11))
)

(:action arrive_at_12_11_13_11
 :parameters ()
 :precondition (and (near_12_11) (near_13_11))
 :poss-precondition (and (found))
 :effect (and (not (near_12_11)) (at_13_11))
)

(:action arrive_at_12_11_12_10
 :parameters ()
 :precondition (and (near_12_11) (near_12_10))
 :poss-precondition (and (found))
 :effect (and (not (near_12_11)) (at_12_10))
)

(:action arrive_at_12_11_12_12
 :parameters ()
 :precondition (and (near_12_11) (near_12_12))
 :poss-precondition (and (found))
 :effect (and (not (near_12_11)) (at_12_12))
)

(:action arrive_at_12_12_11_12
 :parameters ()
 :precondition (and (near_12_12) (near_11_12))
 :poss-precondition (and (found))
 :effect (and (not (near_12_12)) (at_11_12))
)

(:action arrive_at_12_12_13_12
 :parameters ()
 :precondition (and (near_12_12) (near_13_12))
 :poss-precondition (and (found))
 :effect (and (not (near_12_12)) (at_13_12))
)

(:action arrive_at_12_12_12_11
 :parameters ()
 :precondition (and (near_12_12) (near_12_11))
 :poss-precondition (and (found))
 :effect (and (not (near_12_12)) (at_12_11))
)

(:action arrive_at_12_12_12_13
 :parameters ()
 :precondition (and (near_12_12) (near_12_13))
 :poss-precondition (and (found))
 :effect (and (not (near_12_12)) (at_12_13))
)

(:action arrive_at_12_13_11_13
 :parameters ()
 :precondition (and (near_12_13) (near_11_13))
 :poss-precondition (and (found))
 :effect (and (not (near_12_13)) (at_11_13))
)

(:action arrive_at_12_13_13_13
 :parameters ()
 :precondition (and (near_12_13) (near_13_13))
 :poss-precondition (and (found))
 :effect (and (not (near_12_13)) (at_13_13))
)

(:action arrive_at_12_13_12_12
 :parameters ()
 :precondition (and (near_12_13) (near_12_12))
 :poss-precondition (and (found))
 :effect (and (not (near_12_13)) (at_12_12))
)

(:action arrive_at_12_13_12_14
 :parameters ()
 :precondition (and (near_12_13) (near_12_14))
 :poss-precondition (and (found))
 :effect (and (not (near_12_13)) (at_12_14))
)

(:action arrive_at_12_14_11_14
 :parameters ()
 :precondition (and (near_12_14) (near_11_14))
 :poss-precondition (and (found))
 :effect (and (not (near_12_14)) (at_11_14))
)

(:action arrive_at_12_14_13_14
 :parameters ()
 :precondition (and (near_12_14) (near_13_14))
 :poss-precondition (and (found))
 :effect (and (not (near_12_14)) (at_13_14))
)

(:action arrive_at_12_14_12_13
 :parameters ()
 :precondition (and (near_12_14) (near_12_13))
 :poss-precondition (and (found))
 :effect (and (not (near_12_14)) (at_12_13))
)

(:action arrive_at_12_14_12_15
 :parameters ()
 :precondition (and (near_12_14) (near_12_15))
 :poss-precondition (and (found))
 :effect (and (not (near_12_14)) (at_12_15))
)

(:action arrive_at_12_15_11_15
 :parameters ()
 :precondition (and (near_12_15) (near_11_15))
 :poss-precondition (and (found))
 :effect (and (not (near_12_15)) (at_11_15))
)

(:action arrive_at_12_15_13_15
 :parameters ()
 :precondition (and (near_12_15) (near_13_15))
 :poss-precondition (and (found))
 :effect (and (not (near_12_15)) (at_13_15))
)

(:action arrive_at_12_15_12_14
 :parameters ()
 :precondition (and (near_12_15) (near_12_14))
 :poss-precondition (and (found))
 :effect (and (not (near_12_15)) (at_12_14))
)

(:action arrive_at_13_0_12_0
 :parameters ()
 :precondition (and (near_13_0) (near_12_0))
 :poss-precondition (and (found))
 :effect (and (not (near_13_0)) (at_12_0))
)

(:action arrive_at_13_0_14_0
 :parameters ()
 :precondition (and (near_13_0) (near_14_0))
 :poss-precondition (and (found))
 :effect (and (not (near_13_0)) (at_14_0))
)

(:action arrive_at_13_0_13_1
 :parameters ()
 :precondition (and (near_13_0) (near_13_1))
 :poss-precondition (and (found))
 :effect (and (not (near_13_0)) (at_13_1))
)

(:action arrive_at_13_1_12_1
 :parameters ()
 :precondition (and (near_13_1) (near_12_1))
 :poss-precondition (and (found))
 :effect (and (not (near_13_1)) (at_12_1))
)

(:action arrive_at_13_1_14_1
 :parameters ()
 :precondition (and (near_13_1) (near_14_1))
 :poss-precondition (and (found))
 :effect (and (not (near_13_1)) (at_14_1))
)

(:action arrive_at_13_1_13_0
 :parameters ()
 :precondition (and (near_13_1) (near_13_0))
 :poss-precondition (and (found))
 :effect (and (not (near_13_1)) (at_13_0))
)

(:action arrive_at_13_1_13_2
 :parameters ()
 :precondition (and (near_13_1) (near_13_2))
 :poss-precondition (and (found))
 :effect (and (not (near_13_1)) (at_13_2))
)

(:action arrive_at_13_2_12_2
 :parameters ()
 :precondition (and (near_13_2) (near_12_2))
 :poss-precondition (and (found))
 :effect (and (not (near_13_2)) (at_12_2))
)

(:action arrive_at_13_2_14_2
 :parameters ()
 :precondition (and (near_13_2) (near_14_2))
 :poss-precondition (and (found))
 :effect (and (not (near_13_2)) (at_14_2))
)

(:action arrive_at_13_2_13_1
 :parameters ()
 :precondition (and (near_13_2) (near_13_1))
 :poss-precondition (and (found))
 :effect (and (not (near_13_2)) (at_13_1))
)

(:action arrive_at_13_2_13_3
 :parameters ()
 :precondition (and (near_13_2) (near_13_3))
 :poss-precondition (and (found))
 :effect (and (not (near_13_2)) (at_13_3))
)

(:action arrive_at_13_3_12_3
 :parameters ()
 :precondition (and (near_13_3) (near_12_3))
 :poss-precondition (and (found))
 :effect (and (not (near_13_3)) (at_12_3))
)

(:action arrive_at_13_3_14_3
 :parameters ()
 :precondition (and (near_13_3) (near_14_3))
 :poss-precondition (and (found))
 :effect (and (not (near_13_3)) (at_14_3))
)

(:action arrive_at_13_3_13_2
 :parameters ()
 :precondition (and (near_13_3) (near_13_2))
 :poss-precondition (and (found))
 :effect (and (not (near_13_3)) (at_13_2))
)

(:action arrive_at_13_3_13_4
 :parameters ()
 :precondition (and (near_13_3) (near_13_4))
 :poss-precondition (and (found))
 :effect (and (not (near_13_3)) (at_13_4))
)

(:action arrive_at_13_4_12_4
 :parameters ()
 :precondition (and (near_13_4) (near_12_4))
 :poss-precondition (and (found))
 :effect (and (not (near_13_4)) (at_12_4))
)

(:action arrive_at_13_4_14_4
 :parameters ()
 :precondition (and (near_13_4) (near_14_4))
 :poss-precondition (and (found))
 :effect (and (not (near_13_4)) (at_14_4))
)

(:action arrive_at_13_4_13_3
 :parameters ()
 :precondition (and (near_13_4) (near_13_3))
 :poss-precondition (and (found))
 :effect (and (not (near_13_4)) (at_13_3))
)

(:action arrive_at_13_4_13_5
 :parameters ()
 :precondition (and (near_13_4) (near_13_5))
 :poss-precondition (and (found))
 :effect (and (not (near_13_4)) (at_13_5))
)

(:action arrive_at_13_5_12_5
 :parameters ()
 :precondition (and (near_13_5) (near_12_5))
 :poss-precondition (and (found))
 :effect (and (not (near_13_5)) (at_12_5))
)

(:action arrive_at_13_5_14_5
 :parameters ()
 :precondition (and (near_13_5) (near_14_5))
 :poss-precondition (and (found))
 :effect (and (not (near_13_5)) (at_14_5))
)

(:action arrive_at_13_5_13_4
 :parameters ()
 :precondition (and (near_13_5) (near_13_4))
 :poss-precondition (and (found))
 :effect (and (not (near_13_5)) (at_13_4))
)

(:action arrive_at_13_5_13_6
 :parameters ()
 :precondition (and (near_13_5) (near_13_6))
 :poss-precondition (and (found))
 :effect (and (not (near_13_5)) (at_13_6))
)

(:action arrive_at_13_6_12_6
 :parameters ()
 :precondition (and (near_13_6) (near_12_6))
 :poss-precondition (and (found))
 :effect (and (not (near_13_6)) (at_12_6))
)

(:action arrive_at_13_6_14_6
 :parameters ()
 :precondition (and (near_13_6) (near_14_6))
 :poss-precondition (and (found))
 :effect (and (not (near_13_6)) (at_14_6))
)

(:action arrive_at_13_6_13_5
 :parameters ()
 :precondition (and (near_13_6) (near_13_5))
 :poss-precondition (and (found))
 :effect (and (not (near_13_6)) (at_13_5))
)

(:action arrive_at_13_6_13_7
 :parameters ()
 :precondition (and (near_13_6) (near_13_7))
 :poss-precondition (and (found))
 :effect (and (not (near_13_6)) (at_13_7))
)

(:action arrive_at_13_7_12_7
 :parameters ()
 :precondition (and (near_13_7) (near_12_7))
 :poss-precondition (and (found))
 :effect (and (not (near_13_7)) (at_12_7))
)

(:action arrive_at_13_7_14_7
 :parameters ()
 :precondition (and (near_13_7) (near_14_7))
 :poss-precondition (and (found))
 :effect (and (not (near_13_7)) (at_14_7))
)

(:action arrive_at_13_7_13_6
 :parameters ()
 :precondition (and (near_13_7) (near_13_6))
 :poss-precondition (and (found))
 :effect (and (not (near_13_7)) (at_13_6))
)

(:action arrive_at_13_7_13_8
 :parameters ()
 :precondition (and (near_13_7) (near_13_8))
 :poss-precondition (and (found))
 :effect (and (not (near_13_7)) (at_13_8))
)

(:action arrive_at_13_8_12_8
 :parameters ()
 :precondition (and (near_13_8) (near_12_8))
 :poss-precondition (and (found))
 :effect (and (not (near_13_8)) (at_12_8))
)

(:action arrive_at_13_8_14_8
 :parameters ()
 :precondition (and (near_13_8) (near_14_8))
 :poss-precondition (and (found))
 :effect (and (not (near_13_8)) (at_14_8))
)

(:action arrive_at_13_8_13_7
 :parameters ()
 :precondition (and (near_13_8) (near_13_7))
 :poss-precondition (and (found))
 :effect (and (not (near_13_8)) (at_13_7))
)

(:action arrive_at_13_8_13_9
 :parameters ()
 :precondition (and (near_13_8) (near_13_9))
 :poss-precondition (and (found))
 :effect (and (not (near_13_8)) (at_13_9))
)

(:action arrive_at_13_9_12_9
 :parameters ()
 :precondition (and (near_13_9) (near_12_9))
 :poss-precondition (and (found))
 :effect (and (not (near_13_9)) (at_12_9))
)

(:action arrive_at_13_9_14_9
 :parameters ()
 :precondition (and (near_13_9) (near_14_9))
 :poss-precondition (and (found))
 :effect (and (not (near_13_9)) (at_14_9))
)

(:action arrive_at_13_9_13_8
 :parameters ()
 :precondition (and (near_13_9) (near_13_8))
 :poss-precondition (and (found))
 :effect (and (not (near_13_9)) (at_13_8))
)

(:action arrive_at_13_9_13_10
 :parameters ()
 :precondition (and (near_13_9) (near_13_10))
 :poss-precondition (and (found))
 :effect (and (not (near_13_9)) (at_13_10))
)

(:action arrive_at_13_10_12_10
 :parameters ()
 :precondition (and (near_13_10) (near_12_10))
 :poss-precondition (and (found))
 :effect (and (not (near_13_10)) (at_12_10))
)

(:action arrive_at_13_10_14_10
 :parameters ()
 :precondition (and (near_13_10) (near_14_10))
 :poss-precondition (and (found))
 :effect (and (not (near_13_10)) (at_14_10))
)

(:action arrive_at_13_10_13_9
 :parameters ()
 :precondition (and (near_13_10) (near_13_9))
 :poss-precondition (and (found))
 :effect (and (not (near_13_10)) (at_13_9))
)

(:action arrive_at_13_10_13_11
 :parameters ()
 :precondition (and (near_13_10) (near_13_11))
 :poss-precondition (and (found))
 :effect (and (not (near_13_10)) (at_13_11))
)

(:action arrive_at_13_11_12_11
 :parameters ()
 :precondition (and (near_13_11) (near_12_11))
 :poss-precondition (and (found))
 :effect (and (not (near_13_11)) (at_12_11))
)

(:action arrive_at_13_11_14_11
 :parameters ()
 :precondition (and (near_13_11) (near_14_11))
 :poss-precondition (and (found))
 :effect (and (not (near_13_11)) (at_14_11))
)

(:action arrive_at_13_11_13_10
 :parameters ()
 :precondition (and (near_13_11) (near_13_10))
 :poss-precondition (and (found))
 :effect (and (not (near_13_11)) (at_13_10))
)

(:action arrive_at_13_11_13_12
 :parameters ()
 :precondition (and (near_13_11) (near_13_12))
 :poss-precondition (and (found))
 :effect (and (not (near_13_11)) (at_13_12))
)

(:action arrive_at_13_12_12_12
 :parameters ()
 :precondition (and (near_13_12) (near_12_12))
 :poss-precondition (and (found))
 :effect (and (not (near_13_12)) (at_12_12))
)

(:action arrive_at_13_12_14_12
 :parameters ()
 :precondition (and (near_13_12) (near_14_12))
 :poss-precondition (and (found))
 :effect (and (not (near_13_12)) (at_14_12))
)

(:action arrive_at_13_12_13_11
 :parameters ()
 :precondition (and (near_13_12) (near_13_11))
 :poss-precondition (and (found))
 :effect (and (not (near_13_12)) (at_13_11))
)

(:action arrive_at_13_12_13_13
 :parameters ()
 :precondition (and (near_13_12) (near_13_13))
 :poss-precondition (and (found))
 :effect (and (not (near_13_12)) (at_13_13))
)

(:action arrive_at_13_13_12_13
 :parameters ()
 :precondition (and (near_13_13) (near_12_13))
 :poss-precondition (and (found))
 :effect (and (not (near_13_13)) (at_12_13))
)

(:action arrive_at_13_13_14_13
 :parameters ()
 :precondition (and (near_13_13) (near_14_13))
 :poss-precondition (and (found))
 :effect (and (not (near_13_13)) (at_14_13))
)

(:action arrive_at_13_13_13_12
 :parameters ()
 :precondition (and (near_13_13) (near_13_12))
 :poss-precondition (and (found))
 :effect (and (not (near_13_13)) (at_13_12))
)

(:action arrive_at_13_13_13_14
 :parameters ()
 :precondition (and (near_13_13) (near_13_14))
 :poss-precondition (and (found))
 :effect (and (not (near_13_13)) (at_13_14))
)

(:action arrive_at_13_14_12_14
 :parameters ()
 :precondition (and (near_13_14) (near_12_14))
 :poss-precondition (and (found))
 :effect (and (not (near_13_14)) (at_12_14))
)

(:action arrive_at_13_14_14_14
 :parameters ()
 :precondition (and (near_13_14) (near_14_14))
 :poss-precondition (and (found))
 :effect (and (not (near_13_14)) (at_14_14))
)

(:action arrive_at_13_14_13_13
 :parameters ()
 :precondition (and (near_13_14) (near_13_13))
 :poss-precondition (and (found))
 :effect (and (not (near_13_14)) (at_13_13))
)

(:action arrive_at_13_14_13_15
 :parameters ()
 :precondition (and (near_13_14) (near_13_15))
 :poss-precondition (and (found))
 :effect (and (not (near_13_14)) (at_13_15))
)

(:action arrive_at_13_15_12_15
 :parameters ()
 :precondition (and (near_13_15) (near_12_15))
 :poss-precondition (and (found))
 :effect (and (not (near_13_15)) (at_12_15))
)

(:action arrive_at_13_15_14_15
 :parameters ()
 :precondition (and (near_13_15) (near_14_15))
 :poss-precondition (and (found))
 :effect (and (not (near_13_15)) (at_14_15))
)

(:action arrive_at_13_15_13_14
 :parameters ()
 :precondition (and (near_13_15) (near_13_14))
 :poss-precondition (and (found))
 :effect (and (not (near_13_15)) (at_13_14))
)

(:action arrive_at_14_0_13_0
 :parameters ()
 :precondition (and (near_14_0) (near_13_0))
 :poss-precondition (and (found))
 :effect (and (not (near_14_0)) (at_13_0))
)

(:action arrive_at_14_0_15_0
 :parameters ()
 :precondition (and (near_14_0) (near_15_0))
 :poss-precondition (and (found))
 :effect (and (not (near_14_0)) (at_15_0))
)

(:action arrive_at_14_0_14_1
 :parameters ()
 :precondition (and (near_14_0) (near_14_1))
 :poss-precondition (and (found))
 :effect (and (not (near_14_0)) (at_14_1))
)

(:action arrive_at_14_1_13_1
 :parameters ()
 :precondition (and (near_14_1) (near_13_1))
 :poss-precondition (and (found))
 :effect (and (not (near_14_1)) (at_13_1))
)

(:action arrive_at_14_1_15_1
 :parameters ()
 :precondition (and (near_14_1) (near_15_1))
 :poss-precondition (and (found))
 :effect (and (not (near_14_1)) (at_15_1))
)

(:action arrive_at_14_1_14_0
 :parameters ()
 :precondition (and (near_14_1) (near_14_0))
 :poss-precondition (and (found))
 :effect (and (not (near_14_1)) (at_14_0))
)

(:action arrive_at_14_1_14_2
 :parameters ()
 :precondition (and (near_14_1) (near_14_2))
 :poss-precondition (and (found))
 :effect (and (not (near_14_1)) (at_14_2))
)

(:action arrive_at_14_2_13_2
 :parameters ()
 :precondition (and (near_14_2) (near_13_2))
 :poss-precondition (and (found))
 :effect (and (not (near_14_2)) (at_13_2))
)

(:action arrive_at_14_2_15_2
 :parameters ()
 :precondition (and (near_14_2) (near_15_2))
 :poss-precondition (and (found))
 :effect (and (not (near_14_2)) (at_15_2))
)

(:action arrive_at_14_2_14_1
 :parameters ()
 :precondition (and (near_14_2) (near_14_1))
 :poss-precondition (and (found))
 :effect (and (not (near_14_2)) (at_14_1))
)

(:action arrive_at_14_2_14_3
 :parameters ()
 :precondition (and (near_14_2) (near_14_3))
 :poss-precondition (and (found))
 :effect (and (not (near_14_2)) (at_14_3))
)

(:action arrive_at_14_3_13_3
 :parameters ()
 :precondition (and (near_14_3) (near_13_3))
 :poss-precondition (and (found))
 :effect (and (not (near_14_3)) (at_13_3))
)

(:action arrive_at_14_3_15_3
 :parameters ()
 :precondition (and (near_14_3) (near_15_3))
 :poss-precondition (and (found))
 :effect (and (not (near_14_3)) (at_15_3))
)

(:action arrive_at_14_3_14_2
 :parameters ()
 :precondition (and (near_14_3) (near_14_2))
 :poss-precondition (and (found))
 :effect (and (not (near_14_3)) (at_14_2))
)

(:action arrive_at_14_3_14_4
 :parameters ()
 :precondition (and (near_14_3) (near_14_4))
 :poss-precondition (and (found))
 :effect (and (not (near_14_3)) (at_14_4))
)

(:action arrive_at_14_4_13_4
 :parameters ()
 :precondition (and (near_14_4) (near_13_4))
 :poss-precondition (and (found))
 :effect (and (not (near_14_4)) (at_13_4))
)

(:action arrive_at_14_4_15_4
 :parameters ()
 :precondition (and (near_14_4) (near_15_4))
 :poss-precondition (and (found))
 :effect (and (not (near_14_4)) (at_15_4))
)

(:action arrive_at_14_4_14_3
 :parameters ()
 :precondition (and (near_14_4) (near_14_3))
 :poss-precondition (and (found))
 :effect (and (not (near_14_4)) (at_14_3))
)

(:action arrive_at_14_4_14_5
 :parameters ()
 :precondition (and (near_14_4) (near_14_5))
 :poss-precondition (and (found))
 :effect (and (not (near_14_4)) (at_14_5))
)

(:action arrive_at_14_5_13_5
 :parameters ()
 :precondition (and (near_14_5) (near_13_5))
 :poss-precondition (and (found))
 :effect (and (not (near_14_5)) (at_13_5))
)

(:action arrive_at_14_5_15_5
 :parameters ()
 :precondition (and (near_14_5) (near_15_5))
 :poss-precondition (and (found))
 :effect (and (not (near_14_5)) (at_15_5))
)

(:action arrive_at_14_5_14_4
 :parameters ()
 :precondition (and (near_14_5) (near_14_4))
 :poss-precondition (and (found))
 :effect (and (not (near_14_5)) (at_14_4))
)

(:action arrive_at_14_5_14_6
 :parameters ()
 :precondition (and (near_14_5) (near_14_6))
 :poss-precondition (and (found))
 :effect (and (not (near_14_5)) (at_14_6))
)

(:action arrive_at_14_6_13_6
 :parameters ()
 :precondition (and (near_14_6) (near_13_6))
 :poss-precondition (and (found))
 :effect (and (not (near_14_6)) (at_13_6))
)

(:action arrive_at_14_6_15_6
 :parameters ()
 :precondition (and (near_14_6) (near_15_6))
 :poss-precondition (and (found))
 :effect (and (not (near_14_6)) (at_15_6))
)

(:action arrive_at_14_6_14_5
 :parameters ()
 :precondition (and (near_14_6) (near_14_5))
 :poss-precondition (and (found))
 :effect (and (not (near_14_6)) (at_14_5))
)

(:action arrive_at_14_6_14_7
 :parameters ()
 :precondition (and (near_14_6) (near_14_7))
 :poss-precondition (and (found))
 :effect (and (not (near_14_6)) (at_14_7))
)

(:action arrive_at_14_7_13_7
 :parameters ()
 :precondition (and (near_14_7) (near_13_7))
 :poss-precondition (and (found))
 :effect (and (not (near_14_7)) (at_13_7))
)

(:action arrive_at_14_7_15_7
 :parameters ()
 :precondition (and (near_14_7) (near_15_7))
 :poss-precondition (and (found))
 :effect (and (not (near_14_7)) (at_15_7))
)

(:action arrive_at_14_7_14_6
 :parameters ()
 :precondition (and (near_14_7) (near_14_6))
 :poss-precondition (and (found))
 :effect (and (not (near_14_7)) (at_14_6))
)

(:action arrive_at_14_7_14_8
 :parameters ()
 :precondition (and (near_14_7) (near_14_8))
 :poss-precondition (and (found))
 :effect (and (not (near_14_7)) (at_14_8))
)

(:action arrive_at_14_8_13_8
 :parameters ()
 :precondition (and (near_14_8) (near_13_8))
 :poss-precondition (and (found))
 :effect (and (not (near_14_8)) (at_13_8))
)

(:action arrive_at_14_8_15_8
 :parameters ()
 :precondition (and (near_14_8) (near_15_8))
 :poss-precondition (and (found))
 :effect (and (not (near_14_8)) (at_15_8))
)

(:action arrive_at_14_8_14_7
 :parameters ()
 :precondition (and (near_14_8) (near_14_7))
 :poss-precondition (and (found))
 :effect (and (not (near_14_8)) (at_14_7))
)

(:action arrive_at_14_8_14_9
 :parameters ()
 :precondition (and (near_14_8) (near_14_9))
 :poss-precondition (and (found))
 :effect (and (not (near_14_8)) (at_14_9))
)

(:action arrive_at_14_9_13_9
 :parameters ()
 :precondition (and (near_14_9) (near_13_9))
 :poss-precondition (and (found))
 :effect (and (not (near_14_9)) (at_13_9))
)

(:action arrive_at_14_9_15_9
 :parameters ()
 :precondition (and (near_14_9) (near_15_9))
 :poss-precondition (and (found))
 :effect (and (not (near_14_9)) (at_15_9))
)

(:action arrive_at_14_9_14_8
 :parameters ()
 :precondition (and (near_14_9) (near_14_8))
 :poss-precondition (and (found))
 :effect (and (not (near_14_9)) (at_14_8))
)

(:action arrive_at_14_9_14_10
 :parameters ()
 :precondition (and (near_14_9) (near_14_10))
 :poss-precondition (and (found))
 :effect (and (not (near_14_9)) (at_14_10))
)

(:action arrive_at_14_10_13_10
 :parameters ()
 :precondition (and (near_14_10) (near_13_10))
 :poss-precondition (and (found))
 :effect (and (not (near_14_10)) (at_13_10))
)

(:action arrive_at_14_10_15_10
 :parameters ()
 :precondition (and (near_14_10) (near_15_10))
 :poss-precondition (and (found))
 :effect (and (not (near_14_10)) (at_15_10))
)

(:action arrive_at_14_10_14_9
 :parameters ()
 :precondition (and (near_14_10) (near_14_9))
 :poss-precondition (and (found))
 :effect (and (not (near_14_10)) (at_14_9))
)

(:action arrive_at_14_10_14_11
 :parameters ()
 :precondition (and (near_14_10) (near_14_11))
 :poss-precondition (and (found))
 :effect (and (not (near_14_10)) (at_14_11))
)

(:action arrive_at_14_11_13_11
 :parameters ()
 :precondition (and (near_14_11) (near_13_11))
 :poss-precondition (and (found))
 :effect (and (not (near_14_11)) (at_13_11))
)

(:action arrive_at_14_11_15_11
 :parameters ()
 :precondition (and (near_14_11) (near_15_11))
 :poss-precondition (and (found))
 :effect (and (not (near_14_11)) (at_15_11))
)

(:action arrive_at_14_11_14_10
 :parameters ()
 :precondition (and (near_14_11) (near_14_10))
 :poss-precondition (and (found))
 :effect (and (not (near_14_11)) (at_14_10))
)

(:action arrive_at_14_11_14_12
 :parameters ()
 :precondition (and (near_14_11) (near_14_12))
 :poss-precondition (and (found))
 :effect (and (not (near_14_11)) (at_14_12))
)

(:action arrive_at_14_12_13_12
 :parameters ()
 :precondition (and (near_14_12) (near_13_12))
 :poss-precondition (and (found))
 :effect (and (not (near_14_12)) (at_13_12))
)

(:action arrive_at_14_12_15_12
 :parameters ()
 :precondition (and (near_14_12) (near_15_12))
 :poss-precondition (and (found))
 :effect (and (not (near_14_12)) (at_15_12))
)

(:action arrive_at_14_12_14_11
 :parameters ()
 :precondition (and (near_14_12) (near_14_11))
 :poss-precondition (and (found))
 :effect (and (not (near_14_12)) (at_14_11))
)

(:action arrive_at_14_12_14_13
 :parameters ()
 :precondition (and (near_14_12) (near_14_13))
 :poss-precondition (and (found))
 :effect (and (not (near_14_12)) (at_14_13))
)

(:action arrive_at_14_13_13_13
 :parameters ()
 :precondition (and (near_14_13) (near_13_13))
 :poss-precondition (and (found))
 :effect (and (not (near_14_13)) (at_13_13))
)

(:action arrive_at_14_13_15_13
 :parameters ()
 :precondition (and (near_14_13) (near_15_13))
 :poss-precondition (and (found))
 :effect (and (not (near_14_13)) (at_15_13))
)

(:action arrive_at_14_13_14_12
 :parameters ()
 :precondition (and (near_14_13) (near_14_12))
 :poss-precondition (and (found))
 :effect (and (not (near_14_13)) (at_14_12))
)

(:action arrive_at_14_13_14_14
 :parameters ()
 :precondition (and (near_14_13) (near_14_14))
 :poss-precondition (and (found))
 :effect (and (not (near_14_13)) (at_14_14))
)

(:action arrive_at_14_14_13_14
 :parameters ()
 :precondition (and (near_14_14) (near_13_14))
 :poss-precondition (and (found))
 :effect (and (not (near_14_14)) (at_13_14))
)

(:action arrive_at_14_14_15_14
 :parameters ()
 :precondition (and (near_14_14) (near_15_14))
 :poss-precondition (and (found))
 :effect (and (not (near_14_14)) (at_15_14))
)

(:action arrive_at_14_14_14_13
 :parameters ()
 :precondition (and (near_14_14) (near_14_13))
 :poss-precondition (and (found))
 :effect (and (not (near_14_14)) (at_14_13))
)

(:action arrive_at_14_14_14_15
 :parameters ()
 :precondition (and (near_14_14) (near_14_15))
 :poss-precondition (and (found))
 :effect (and (not (near_14_14)) (at_14_15))
)

(:action arrive_at_14_15_13_15
 :parameters ()
 :precondition (and (near_14_15) (near_13_15))
 :poss-precondition (and (found))
 :effect (and (not (near_14_15)) (at_13_15))
)

(:action arrive_at_14_15_15_15
 :parameters ()
 :precondition (and (near_14_15) (near_15_15))
 :poss-precondition (and (found))
 :effect (and (not (near_14_15)) (at_15_15))
)

(:action arrive_at_14_15_14_14
 :parameters ()
 :precondition (and (near_14_15) (near_14_14))
 :poss-precondition (and (found))
 :effect (and (not (near_14_15)) (at_14_14))
)

(:action arrive_at_15_0_14_0
 :parameters ()
 :precondition (and (near_15_0) (near_14_0))
 :poss-precondition (and (found))
 :effect (and (not (near_15_0)) (at_14_0))
)

(:action arrive_at_15_0_15_1
 :parameters ()
 :precondition (and (near_15_0) (near_15_1))
 :poss-precondition (and (found))
 :effect (and (not (near_15_0)) (at_15_1))
)

(:action arrive_at_15_1_14_1
 :parameters ()
 :precondition (and (near_15_1) (near_14_1))
 :poss-precondition (and (found))
 :effect (and (not (near_15_1)) (at_14_1))
)

(:action arrive_at_15_1_15_0
 :parameters ()
 :precondition (and (near_15_1) (near_15_0))
 :poss-precondition (and (found))
 :effect (and (not (near_15_1)) (at_15_0))
)

(:action arrive_at_15_1_15_2
 :parameters ()
 :precondition (and (near_15_1) (near_15_2))
 :poss-precondition (and (found))
 :effect (and (not (near_15_1)) (at_15_2))
)

(:action arrive_at_15_2_14_2
 :parameters ()
 :precondition (and (near_15_2) (near_14_2))
 :poss-precondition (and (found))
 :effect (and (not (near_15_2)) (at_14_2))
)

(:action arrive_at_15_2_15_1
 :parameters ()
 :precondition (and (near_15_2) (near_15_1))
 :poss-precondition (and (found))
 :effect (and (not (near_15_2)) (at_15_1))
)

(:action arrive_at_15_2_15_3
 :parameters ()
 :precondition (and (near_15_2) (near_15_3))
 :poss-precondition (and (found))
 :effect (and (not (near_15_2)) (at_15_3))
)

(:action arrive_at_15_3_14_3
 :parameters ()
 :precondition (and (near_15_3) (near_14_3))
 :poss-precondition (and (found))
 :effect (and (not (near_15_3)) (at_14_3))
)

(:action arrive_at_15_3_15_2
 :parameters ()
 :precondition (and (near_15_3) (near_15_2))
 :poss-precondition (and (found))
 :effect (and (not (near_15_3)) (at_15_2))
)

(:action arrive_at_15_3_15_4
 :parameters ()
 :precondition (and (near_15_3) (near_15_4))
 :poss-precondition (and (found))
 :effect (and (not (near_15_3)) (at_15_4))
)

(:action arrive_at_15_4_14_4
 :parameters ()
 :precondition (and (near_15_4) (near_14_4))
 :poss-precondition (and (found))
 :effect (and (not (near_15_4)) (at_14_4))
)

(:action arrive_at_15_4_15_3
 :parameters ()
 :precondition (and (near_15_4) (near_15_3))
 :poss-precondition (and (found))
 :effect (and (not (near_15_4)) (at_15_3))
)

(:action arrive_at_15_4_15_5
 :parameters ()
 :precondition (and (near_15_4) (near_15_5))
 :poss-precondition (and (found))
 :effect (and (not (near_15_4)) (at_15_5))
)

(:action arrive_at_15_5_14_5
 :parameters ()
 :precondition (and (near_15_5) (near_14_5))
 :poss-precondition (and (found))
 :effect (and (not (near_15_5)) (at_14_5))
)

(:action arrive_at_15_5_15_4
 :parameters ()
 :precondition (and (near_15_5) (near_15_4))
 :poss-precondition (and (found))
 :effect (and (not (near_15_5)) (at_15_4))
)

(:action arrive_at_15_5_15_6
 :parameters ()
 :precondition (and (near_15_5) (near_15_6))
 :poss-precondition (and (found))
 :effect (and (not (near_15_5)) (at_15_6))
)

(:action arrive_at_15_6_14_6
 :parameters ()
 :precondition (and (near_15_6) (near_14_6))
 :poss-precondition (and (found))
 :effect (and (not (near_15_6)) (at_14_6))
)

(:action arrive_at_15_6_15_5
 :parameters ()
 :precondition (and (near_15_6) (near_15_5))
 :poss-precondition (and (found))
 :effect (and (not (near_15_6)) (at_15_5))
)

(:action arrive_at_15_6_15_7
 :parameters ()
 :precondition (and (near_15_6) (near_15_7))
 :poss-precondition (and (found))
 :effect (and (not (near_15_6)) (at_15_7))
)

(:action arrive_at_15_7_14_7
 :parameters ()
 :precondition (and (near_15_7) (near_14_7))
 :poss-precondition (and (found))
 :effect (and (not (near_15_7)) (at_14_7))
)

(:action arrive_at_15_7_15_6
 :parameters ()
 :precondition (and (near_15_7) (near_15_6))
 :poss-precondition (and (found))
 :effect (and (not (near_15_7)) (at_15_6))
)

(:action arrive_at_15_7_15_8
 :parameters ()
 :precondition (and (near_15_7) (near_15_8))
 :poss-precondition (and (found))
 :effect (and (not (near_15_7)) (at_15_8))
)

(:action arrive_at_15_8_14_8
 :parameters ()
 :precondition (and (near_15_8) (near_14_8))
 :poss-precondition (and (found))
 :effect (and (not (near_15_8)) (at_14_8))
)

(:action arrive_at_15_8_15_7
 :parameters ()
 :precondition (and (near_15_8) (near_15_7))
 :poss-precondition (and (found))
 :effect (and (not (near_15_8)) (at_15_7))
)

(:action arrive_at_15_8_15_9
 :parameters ()
 :precondition (and (near_15_8) (near_15_9))
 :poss-precondition (and (found))
 :effect (and (not (near_15_8)) (at_15_9))
)

(:action arrive_at_15_9_14_9
 :parameters ()
 :precondition (and (near_15_9) (near_14_9))
 :poss-precondition (and (found))
 :effect (and (not (near_15_9)) (at_14_9))
)

(:action arrive_at_15_9_15_8
 :parameters ()
 :precondition (and (near_15_9) (near_15_8))
 :poss-precondition (and (found))
 :effect (and (not (near_15_9)) (at_15_8))
)

(:action arrive_at_15_9_15_10
 :parameters ()
 :precondition (and (near_15_9) (near_15_10))
 :poss-precondition (and (found))
 :effect (and (not (near_15_9)) (at_15_10))
)

(:action arrive_at_15_10_14_10
 :parameters ()
 :precondition (and (near_15_10) (near_14_10))
 :poss-precondition (and (found))
 :effect (and (not (near_15_10)) (at_14_10))
)

(:action arrive_at_15_10_15_9
 :parameters ()
 :precondition (and (near_15_10) (near_15_9))
 :poss-precondition (and (found))
 :effect (and (not (near_15_10)) (at_15_9))
)

(:action arrive_at_15_10_15_11
 :parameters ()
 :precondition (and (near_15_10) (near_15_11))
 :poss-precondition (and (found))
 :effect (and (not (near_15_10)) (at_15_11))
)

(:action arrive_at_15_11_14_11
 :parameters ()
 :precondition (and (near_15_11) (near_14_11))
 :poss-precondition (and (found))
 :effect (and (not (near_15_11)) (at_14_11))
)

(:action arrive_at_15_11_15_10
 :parameters ()
 :precondition (and (near_15_11) (near_15_10))
 :poss-precondition (and (found))
 :effect (and (not (near_15_11)) (at_15_10))
)

(:action arrive_at_15_11_15_12
 :parameters ()
 :precondition (and (near_15_11) (near_15_12))
 :poss-precondition (and (found))
 :effect (and (not (near_15_11)) (at_15_12))
)

(:action arrive_at_15_12_14_12
 :parameters ()
 :precondition (and (near_15_12) (near_14_12))
 :poss-precondition (and (found))
 :effect (and (not (near_15_12)) (at_14_12))
)

(:action arrive_at_15_12_15_11
 :parameters ()
 :precondition (and (near_15_12) (near_15_11))
 :poss-precondition (and (found))
 :effect (and (not (near_15_12)) (at_15_11))
)

(:action arrive_at_15_12_15_13
 :parameters ()
 :precondition (and (near_15_12) (near_15_13))
 :poss-precondition (and (found))
 :effect (and (not (near_15_12)) (at_15_13))
)

(:action arrive_at_15_13_14_13
 :parameters ()
 :precondition (and (near_15_13) (near_14_13))
 :poss-precondition (and (found))
 :effect (and (not (near_15_13)) (at_14_13))
)

(:action arrive_at_15_13_15_12
 :parameters ()
 :precondition (and (near_15_13) (near_15_12))
 :poss-precondition (and (found))
 :effect (and (not (near_15_13)) (at_15_12))
)

(:action arrive_at_15_13_15_14
 :parameters ()
 :precondition (and (near_15_13) (near_15_14))
 :poss-precondition (and (found))
 :effect (and (not (near_15_13)) (at_15_14))
)

(:action arrive_at_15_14_14_14
 :parameters ()
 :precondition (and (near_15_14) (near_14_14))
 :poss-precondition (and (found))
 :effect (and (not (near_15_14)) (at_14_14))
)

(:action arrive_at_15_14_15_13
 :parameters ()
 :precondition (and (near_15_14) (near_15_13))
 :poss-precondition (and (found))
 :effect (and (not (near_15_14)) (at_15_13))
)

(:action arrive_at_15_14_15_15
 :parameters ()
 :precondition (and (near_15_14) (near_15_15))
 :poss-precondition (and (found))
 :effect (and (not (near_15_14)) (at_15_15))
)

(:action arrive_at_15_15_14_15
 :parameters ()
 :precondition (and (near_15_15) (near_14_15))
 :poss-precondition (and (found))
 :effect (and (not (near_15_15)) (at_14_15))
)

(:action arrive_at_15_15_15_14
 :parameters ()
 :precondition (and (near_15_15) (near_15_14))
 :poss-precondition (and (found))
 :effect (and (not (near_15_15)) (at_15_14))
)

(:action observe_low_0_0_1_0_1
 :parameters ()
 :precondition (and (near_0_0) (near_1_0))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_0_0_1_0_2
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

(:action observe_low_0_0_0_1_2
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

(:action observe_low_0_1_0_2_1
 :parameters ()
 :precondition (and (near_0_1) (near_0_2))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_0_1_0_2_2
 :parameters ()
 :precondition (and (near_0_1) (near_0_2))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_0_2_1_2_1
 :parameters ()
 :precondition (and (near_0_2) (near_1_2))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_0_2_1_2_2
 :parameters ()
 :precondition (and (near_0_2) (near_1_2))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_0_2_0_3_1
 :parameters ()
 :precondition (and (near_0_2) (near_0_3))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_0_2_0_3_2
 :parameters ()
 :precondition (and (near_0_2) (near_0_3))
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

(:action observe_high_0_4_1_4
 :parameters ()
 :precondition (and (near_0_4) (near_1_4))
 :effect (and (found))
)

(:action observe_high_0_4_0_5
 :parameters ()
 :precondition (and (near_0_4) (near_0_5))
 :effect (and (found))
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

(:action observe_low_0_6_1_6_1
 :parameters ()
 :precondition (and (near_0_6) (near_1_6))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_0_6_0_7_1
 :parameters ()
 :precondition (and (near_0_6) (near_0_7))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_0_7_1_7_1
 :parameters ()
 :precondition (and (near_0_7) (near_1_7))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_0_7_1_7_2
 :parameters ()
 :precondition (and (near_0_7) (near_1_7))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_0_7_0_8_1
 :parameters ()
 :precondition (and (near_0_7) (near_0_8))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_0_7_0_8_2
 :parameters ()
 :precondition (and (near_0_7) (near_0_8))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_0_8_1_8_1
 :parameters ()
 :precondition (and (near_0_8) (near_1_8))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_0_8_0_9_1
 :parameters ()
 :precondition (and (near_0_8) (near_0_9))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_high_0_9_1_9
 :parameters ()
 :precondition (and (near_0_9) (near_1_9))
 :effect (and (found))
)

(:action observe_high_0_9_0_10
 :parameters ()
 :precondition (and (near_0_9) (near_0_10))
 :effect (and (found))
)

(:action observe_low_0_10_1_10_1
 :parameters ()
 :precondition (and (near_0_10) (near_1_10))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_0_10_1_10_2
 :parameters ()
 :precondition (and (near_0_10) (near_1_10))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_0_10_0_11_1
 :parameters ()
 :precondition (and (near_0_10) (near_0_11))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_0_10_0_11_2
 :parameters ()
 :precondition (and (near_0_10) (near_0_11))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_0_12_1_12_1
 :parameters ()
 :precondition (and (near_0_12) (near_1_12))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_0_12_1_12_2
 :parameters ()
 :precondition (and (near_0_12) (near_1_12))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_0_12_0_13_1
 :parameters ()
 :precondition (and (near_0_12) (near_0_13))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_0_12_0_13_2
 :parameters ()
 :precondition (and (near_0_12) (near_0_13))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_0_15_1_15_1
 :parameters ()
 :precondition (and (near_0_15) (near_1_15))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_0_15_1_15_2
 :parameters ()
 :precondition (and (near_0_15) (near_1_15))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_1_0_2_0_1
 :parameters ()
 :precondition (and (near_1_0) (near_2_0))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_1_0_2_0_2
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

(:action observe_low_1_0_1_1_2
 :parameters ()
 :precondition (and (near_1_0) (near_1_1))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_high_1_1_2_1
 :parameters ()
 :precondition (and (near_1_1) (near_2_1))
 :effect (and (found))
)

(:action observe_high_1_1_1_2
 :parameters ()
 :precondition (and (near_1_1) (near_1_2))
 :effect (and (found))
)

(:action observe_low_1_2_2_2_1
 :parameters ()
 :precondition (and (near_1_2) (near_2_2))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_1_2_2_2_2
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

(:action observe_low_1_2_1_3_2
 :parameters ()
 :precondition (and (near_1_2) (near_1_3))
 :effect (and )
 :poss-effect (and (found))
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

(:action observe_low_1_6_2_6_1
 :parameters ()
 :precondition (and (near_1_6) (near_2_6))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_1_6_1_7_1
 :parameters ()
 :precondition (and (near_1_6) (near_1_7))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_1_7_2_7_1
 :parameters ()
 :precondition (and (near_1_7) (near_2_7))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_1_7_2_7_2
 :parameters ()
 :precondition (and (near_1_7) (near_2_7))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_1_7_1_8_1
 :parameters ()
 :precondition (and (near_1_7) (near_1_8))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_1_7_1_8_2
 :parameters ()
 :precondition (and (near_1_7) (near_1_8))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_1_9_2_9_1
 :parameters ()
 :precondition (and (near_1_9) (near_2_9))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_1_9_1_10_1
 :parameters ()
 :precondition (and (near_1_9) (near_1_10))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_1_10_2_10_1
 :parameters ()
 :precondition (and (near_1_10) (near_2_10))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_1_10_1_11_1
 :parameters ()
 :precondition (and (near_1_10) (near_1_11))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_1_11_2_11_1
 :parameters ()
 :precondition (and (near_1_11) (near_2_11))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_1_11_2_11_2
 :parameters ()
 :precondition (and (near_1_11) (near_2_11))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_1_11_1_12_1
 :parameters ()
 :precondition (and (near_1_11) (near_1_12))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_1_11_1_12_2
 :parameters ()
 :precondition (and (near_1_11) (near_1_12))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_1_12_2_12_1
 :parameters ()
 :precondition (and (near_1_12) (near_2_12))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_1_12_2_12_2
 :parameters ()
 :precondition (and (near_1_12) (near_2_12))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_1_12_1_13_1
 :parameters ()
 :precondition (and (near_1_12) (near_1_13))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_1_12_1_13_2
 :parameters ()
 :precondition (and (near_1_12) (near_1_13))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_1_15_2_15_1
 :parameters ()
 :precondition (and (near_1_15) (near_2_15))
 :effect (and )
 :poss-effect (and (found))
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

(:action observe_high_2_1_3_1
 :parameters ()
 :precondition (and (near_2_1) (near_3_1))
 :effect (and (found))
)

(:action observe_high_2_1_2_2
 :parameters ()
 :precondition (and (near_2_1) (near_2_2))
 :effect (and (found))
)

(:action observe_low_2_2_3_2_1
 :parameters ()
 :precondition (and (near_2_2) (near_3_2))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_2_2_2_3_1
 :parameters ()
 :precondition (and (near_2_2) (near_2_3))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_2_4_3_4_1
 :parameters ()
 :precondition (and (near_2_4) (near_3_4))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_2_4_3_4_2
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

(:action observe_low_2_4_2_5_2
 :parameters ()
 :precondition (and (near_2_4) (near_2_5))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_2_5_3_5_1
 :parameters ()
 :precondition (and (near_2_5) (near_3_5))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_2_5_2_6_1
 :parameters ()
 :precondition (and (near_2_5) (near_2_6))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_2_7_3_7_1
 :parameters ()
 :precondition (and (near_2_7) (near_3_7))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_2_7_3_7_2
 :parameters ()
 :precondition (and (near_2_7) (near_3_7))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_2_7_2_8_1
 :parameters ()
 :precondition (and (near_2_7) (near_2_8))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_2_7_2_8_2
 :parameters ()
 :precondition (and (near_2_7) (near_2_8))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_2_8_3_8_1
 :parameters ()
 :precondition (and (near_2_8) (near_3_8))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_2_8_3_8_2
 :parameters ()
 :precondition (and (near_2_8) (near_3_8))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_2_8_2_9_1
 :parameters ()
 :precondition (and (near_2_8) (near_2_9))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_2_8_2_9_2
 :parameters ()
 :precondition (and (near_2_8) (near_2_9))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_high_2_9_3_9
 :parameters ()
 :precondition (and (near_2_9) (near_3_9))
 :effect (and (found))
)

(:action observe_high_2_9_2_10
 :parameters ()
 :precondition (and (near_2_9) (near_2_10))
 :effect (and (found))
)

(:action observe_low_2_11_3_11_1
 :parameters ()
 :precondition (and (near_2_11) (near_3_11))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_2_11_2_12_1
 :parameters ()
 :precondition (and (near_2_11) (near_2_12))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_2_13_3_13_1
 :parameters ()
 :precondition (and (near_2_13) (near_3_13))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_2_13_3_13_2
 :parameters ()
 :precondition (and (near_2_13) (near_3_13))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_2_13_2_14_1
 :parameters ()
 :precondition (and (near_2_13) (near_2_14))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_2_13_2_14_2
 :parameters ()
 :precondition (and (near_2_13) (near_2_14))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_high_2_14_3_14
 :parameters ()
 :precondition (and (near_2_14) (near_3_14))
 :effect (and (found))
)

(:action observe_high_2_14_2_15
 :parameters ()
 :precondition (and (near_2_14) (near_2_15))
 :effect (and (found))
)

(:action observe_low_3_0_4_0_1
 :parameters ()
 :precondition (and (near_3_0) (near_4_0))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_3_0_4_0_2
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

(:action observe_low_3_0_3_1_2
 :parameters ()
 :precondition (and (near_3_0) (near_3_1))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_high_3_1_4_1
 :parameters ()
 :precondition (and (near_3_1) (near_4_1))
 :effect (and (found))
)

(:action observe_high_3_1_3_2
 :parameters ()
 :precondition (and (near_3_1) (near_3_2))
 :effect (and (found))
)

(:action observe_low_3_3_4_3_1
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

(:action observe_low_3_6_4_6_1
 :parameters ()
 :precondition (and (near_3_6) (near_4_6))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_3_6_4_6_2
 :parameters ()
 :precondition (and (near_3_6) (near_4_6))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_3_6_3_7_1
 :parameters ()
 :precondition (and (near_3_6) (near_3_7))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_3_6_3_7_2
 :parameters ()
 :precondition (and (near_3_6) (near_3_7))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_3_8_4_8_1
 :parameters ()
 :precondition (and (near_3_8) (near_4_8))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_3_8_3_9_1
 :parameters ()
 :precondition (and (near_3_8) (near_3_9))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_3_9_4_9_1
 :parameters ()
 :precondition (and (near_3_9) (near_4_9))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_3_9_3_10_1
 :parameters ()
 :precondition (and (near_3_9) (near_3_10))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_3_10_4_10_1
 :parameters ()
 :precondition (and (near_3_10) (near_4_10))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_3_10_3_11_1
 :parameters ()
 :precondition (and (near_3_10) (near_3_11))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_3_11_4_11_1
 :parameters ()
 :precondition (and (near_3_11) (near_4_11))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_3_11_3_12_1
 :parameters ()
 :precondition (and (near_3_11) (near_3_12))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_3_13_4_13_1
 :parameters ()
 :precondition (and (near_3_13) (near_4_13))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_3_13_4_13_2
 :parameters ()
 :precondition (and (near_3_13) (near_4_13))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_3_13_3_14_1
 :parameters ()
 :precondition (and (near_3_13) (near_3_14))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_3_13_3_14_2
 :parameters ()
 :precondition (and (near_3_13) (near_3_14))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_3_14_4_14_1
 :parameters ()
 :precondition (and (near_3_14) (near_4_14))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_3_14_4_14_2
 :parameters ()
 :precondition (and (near_3_14) (near_4_14))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_3_14_3_15_1
 :parameters ()
 :precondition (and (near_3_14) (near_3_15))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_3_14_3_15_2
 :parameters ()
 :precondition (and (near_3_14) (near_3_15))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_high_4_0_5_0
 :parameters ()
 :precondition (and (near_4_0) (near_5_0))
 :effect (and (found))
)

(:action observe_high_4_0_4_1
 :parameters ()
 :precondition (and (near_4_0) (near_4_1))
 :effect (and (found))
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

(:action observe_low_4_2_5_2_1
 :parameters ()
 :precondition (and (near_4_2) (near_5_2))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_4_2_5_2_2
 :parameters ()
 :precondition (and (near_4_2) (near_5_2))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_4_2_4_3_1
 :parameters ()
 :precondition (and (near_4_2) (near_4_3))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_4_2_4_3_2
 :parameters ()
 :precondition (and (near_4_2) (near_4_3))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_4_5_5_5_1
 :parameters ()
 :precondition (and (near_4_5) (near_5_5))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_4_5_4_6_1
 :parameters ()
 :precondition (and (near_4_5) (near_4_6))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_high_4_6_5_6
 :parameters ()
 :precondition (and (near_4_6) (near_5_6))
 :effect (and (found))
)

(:action observe_high_4_6_4_7
 :parameters ()
 :precondition (and (near_4_6) (near_4_7))
 :effect (and (found))
)

(:action observe_low_4_7_5_7_1
 :parameters ()
 :precondition (and (near_4_7) (near_5_7))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_4_7_4_8_1
 :parameters ()
 :precondition (and (near_4_7) (near_4_8))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_4_9_5_9_1
 :parameters ()
 :precondition (and (near_4_9) (near_5_9))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_4_9_5_9_2
 :parameters ()
 :precondition (and (near_4_9) (near_5_9))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_4_9_4_10_1
 :parameters ()
 :precondition (and (near_4_9) (near_4_10))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_4_9_4_10_2
 :parameters ()
 :precondition (and (near_4_9) (near_4_10))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_4_11_5_11_1
 :parameters ()
 :precondition (and (near_4_11) (near_5_11))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_4_11_4_12_1
 :parameters ()
 :precondition (and (near_4_11) (near_4_12))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_high_4_12_5_12
 :parameters ()
 :precondition (and (near_4_12) (near_5_12))
 :effect (and (found))
)

(:action observe_high_4_12_4_13
 :parameters ()
 :precondition (and (near_4_12) (near_4_13))
 :effect (and (found))
)

(:action observe_high_4_13_5_13
 :parameters ()
 :precondition (and (near_4_13) (near_5_13))
 :effect (and (found))
)

(:action observe_high_4_13_4_14
 :parameters ()
 :precondition (and (near_4_13) (near_4_14))
 :effect (and (found))
)

(:action observe_low_4_14_5_14_1
 :parameters ()
 :precondition (and (near_4_14) (near_5_14))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_4_14_4_15_1
 :parameters ()
 :precondition (and (near_4_14) (near_4_15))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_high_4_15_5_15
 :parameters ()
 :precondition (and (near_4_15) (near_5_15))
 :effect (and (found))
)

(:action observe_high_5_0_6_0
 :parameters ()
 :precondition (and (near_5_0) (near_6_0))
 :effect (and (found))
)

(:action observe_high_5_0_5_1
 :parameters ()
 :precondition (and (near_5_0) (near_5_1))
 :effect (and (found))
)

(:action observe_low_5_1_6_1_1
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

(:action observe_low_5_3_6_3_1
 :parameters ()
 :precondition (and (near_5_3) (near_6_3))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_5_3_5_4_1
 :parameters ()
 :precondition (and (near_5_3) (near_5_4))
 :effect (and )
 :poss-effect (and (found))
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

(:action observe_low_5_6_6_6_1
 :parameters ()
 :precondition (and (near_5_6) (near_6_6))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_5_6_5_7_1
 :parameters ()
 :precondition (and (near_5_6) (near_5_7))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_5_8_6_8_1
 :parameters ()
 :precondition (and (near_5_8) (near_6_8))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_5_8_5_9_1
 :parameters ()
 :precondition (and (near_5_8) (near_5_9))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_5_9_6_9_1
 :parameters ()
 :precondition (and (near_5_9) (near_6_9))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_5_9_6_9_2
 :parameters ()
 :precondition (and (near_5_9) (near_6_9))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_5_9_5_10_1
 :parameters ()
 :precondition (and (near_5_9) (near_5_10))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_5_9_5_10_2
 :parameters ()
 :precondition (and (near_5_9) (near_5_10))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_high_5_10_6_10
 :parameters ()
 :precondition (and (near_5_10) (near_6_10))
 :effect (and (found))
)

(:action observe_high_5_10_5_11
 :parameters ()
 :precondition (and (near_5_10) (near_5_11))
 :effect (and (found))
)

(:action observe_low_5_11_6_11_1
 :parameters ()
 :precondition (and (near_5_11) (near_6_11))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_5_11_6_11_2
 :parameters ()
 :precondition (and (near_5_11) (near_6_11))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_5_11_5_12_1
 :parameters ()
 :precondition (and (near_5_11) (near_5_12))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_5_11_5_12_2
 :parameters ()
 :precondition (and (near_5_11) (near_5_12))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_5_12_6_12_1
 :parameters ()
 :precondition (and (near_5_12) (near_6_12))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_5_12_5_13_1
 :parameters ()
 :precondition (and (near_5_12) (near_5_13))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_6_0_7_0_1
 :parameters ()
 :precondition (and (near_6_0) (near_7_0))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_6_0_7_0_2
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

(:action observe_low_6_0_6_1_2
 :parameters ()
 :precondition (and (near_6_0) (near_6_1))
 :effect (and )
 :poss-effect (and (found))
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

(:action observe_low_6_5_7_5_1
 :parameters ()
 :precondition (and (near_6_5) (near_7_5))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_6_5_6_6_1
 :parameters ()
 :precondition (and (near_6_5) (near_6_6))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_high_6_6_7_6
 :parameters ()
 :precondition (and (near_6_6) (near_7_6))
 :effect (and (found))
)

(:action observe_high_6_6_6_7
 :parameters ()
 :precondition (and (near_6_6) (near_6_7))
 :effect (and (found))
)

(:action observe_high_6_7_7_7
 :parameters ()
 :precondition (and (near_6_7) (near_7_7))
 :effect (and (found))
)

(:action observe_high_6_7_6_8
 :parameters ()
 :precondition (and (near_6_7) (near_6_8))
 :effect (and (found))
)

(:action observe_high_6_8_7_8
 :parameters ()
 :precondition (and (near_6_8) (near_7_8))
 :effect (and (found))
)

(:action observe_high_6_8_6_9
 :parameters ()
 :precondition (and (near_6_8) (near_6_9))
 :effect (and (found))
)

(:action observe_high_6_9_7_9
 :parameters ()
 :precondition (and (near_6_9) (near_7_9))
 :effect (and (found))
)

(:action observe_high_6_9_6_10
 :parameters ()
 :precondition (and (near_6_9) (near_6_10))
 :effect (and (found))
)

(:action observe_low_6_10_7_10_1
 :parameters ()
 :precondition (and (near_6_10) (near_7_10))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_6_10_6_11_1
 :parameters ()
 :precondition (and (near_6_10) (near_6_11))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_6_11_7_11_1
 :parameters ()
 :precondition (and (near_6_11) (near_7_11))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_6_11_7_11_2
 :parameters ()
 :precondition (and (near_6_11) (near_7_11))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_6_11_6_12_1
 :parameters ()
 :precondition (and (near_6_11) (near_6_12))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_6_11_6_12_2
 :parameters ()
 :precondition (and (near_6_11) (near_6_12))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_6_12_7_12_1
 :parameters ()
 :precondition (and (near_6_12) (near_7_12))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_6_12_7_12_2
 :parameters ()
 :precondition (and (near_6_12) (near_7_12))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_6_12_6_13_1
 :parameters ()
 :precondition (and (near_6_12) (near_6_13))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_6_12_6_13_2
 :parameters ()
 :precondition (and (near_6_12) (near_6_13))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_6_13_7_13_1
 :parameters ()
 :precondition (and (near_6_13) (near_7_13))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_6_13_6_14_1
 :parameters ()
 :precondition (and (near_6_13) (near_6_14))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_high_6_14_7_14
 :parameters ()
 :precondition (and (near_6_14) (near_7_14))
 :effect (and (found))
)

(:action observe_high_6_14_6_15
 :parameters ()
 :precondition (and (near_6_14) (near_6_15))
 :effect (and (found))
)

(:action observe_low_6_15_7_15_1
 :parameters ()
 :precondition (and (near_6_15) (near_7_15))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_7_0_8_0_1
 :parameters ()
 :precondition (and (near_7_0) (near_8_0))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_7_0_7_1_1
 :parameters ()
 :precondition (and (near_7_0) (near_7_1))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_7_1_8_1_1
 :parameters ()
 :precondition (and (near_7_1) (near_8_1))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_7_1_7_2_1
 :parameters ()
 :precondition (and (near_7_1) (near_7_2))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_high_7_3_8_3
 :parameters ()
 :precondition (and (near_7_3) (near_8_3))
 :effect (and (found))
)

(:action observe_high_7_3_7_4
 :parameters ()
 :precondition (and (near_7_3) (near_7_4))
 :effect (and (found))
)

(:action observe_low_7_6_8_6_1
 :parameters ()
 :precondition (and (near_7_6) (near_8_6))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_7_6_7_7_1
 :parameters ()
 :precondition (and (near_7_6) (near_7_7))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_high_7_7_8_7
 :parameters ()
 :precondition (and (near_7_7) (near_8_7))
 :effect (and (found))
)

(:action observe_high_7_7_7_8
 :parameters ()
 :precondition (and (near_7_7) (near_7_8))
 :effect (and (found))
)

(:action observe_low_7_8_8_8_1
 :parameters ()
 :precondition (and (near_7_8) (near_8_8))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_7_8_7_9_1
 :parameters ()
 :precondition (and (near_7_8) (near_7_9))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_high_7_9_8_9
 :parameters ()
 :precondition (and (near_7_9) (near_8_9))
 :effect (and (found))
)

(:action observe_high_7_9_7_10
 :parameters ()
 :precondition (and (near_7_9) (near_7_10))
 :effect (and (found))
)

(:action observe_high_7_11_8_11
 :parameters ()
 :precondition (and (near_7_11) (near_8_11))
 :effect (and (found))
)

(:action observe_high_7_11_7_12
 :parameters ()
 :precondition (and (near_7_11) (near_7_12))
 :effect (and (found))
)

(:action observe_low_7_12_8_12_1
 :parameters ()
 :precondition (and (near_7_12) (near_8_12))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_7_12_7_13_1
 :parameters ()
 :precondition (and (near_7_12) (near_7_13))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_high_7_13_8_13
 :parameters ()
 :precondition (and (near_7_13) (near_8_13))
 :effect (and (found))
)

(:action observe_high_7_13_7_14
 :parameters ()
 :precondition (and (near_7_13) (near_7_14))
 :effect (and (found))
)

(:action observe_low_7_14_8_14_1
 :parameters ()
 :precondition (and (near_7_14) (near_8_14))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_7_14_7_15_1
 :parameters ()
 :precondition (and (near_7_14) (near_7_15))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_8_0_9_0_1
 :parameters ()
 :precondition (and (near_8_0) (near_9_0))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_8_0_8_1_1
 :parameters ()
 :precondition (and (near_8_0) (near_8_1))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_8_1_9_1_1
 :parameters ()
 :precondition (and (near_8_1) (near_9_1))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_8_1_9_1_2
 :parameters ()
 :precondition (and (near_8_1) (near_9_1))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_8_1_8_2_1
 :parameters ()
 :precondition (and (near_8_1) (near_8_2))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_8_1_8_2_2
 :parameters ()
 :precondition (and (near_8_1) (near_8_2))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_8_2_9_2_1
 :parameters ()
 :precondition (and (near_8_2) (near_9_2))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_8_2_8_3_1
 :parameters ()
 :precondition (and (near_8_2) (near_8_3))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_high_8_3_9_3
 :parameters ()
 :precondition (and (near_8_3) (near_9_3))
 :effect (and (found))
)

(:action observe_high_8_3_8_4
 :parameters ()
 :precondition (and (near_8_3) (near_8_4))
 :effect (and (found))
)

(:action observe_high_8_4_9_4
 :parameters ()
 :precondition (and (near_8_4) (near_9_4))
 :effect (and (found))
)

(:action observe_high_8_4_8_5
 :parameters ()
 :precondition (and (near_8_4) (near_8_5))
 :effect (and (found))
)

(:action observe_high_8_5_9_5
 :parameters ()
 :precondition (and (near_8_5) (near_9_5))
 :effect (and (found))
)

(:action observe_high_8_5_8_6
 :parameters ()
 :precondition (and (near_8_5) (near_8_6))
 :effect (and (found))
)

(:action observe_low_8_6_9_6_1
 :parameters ()
 :precondition (and (near_8_6) (near_9_6))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_8_6_8_7_1
 :parameters ()
 :precondition (and (near_8_6) (near_8_7))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_8_7_9_7_1
 :parameters ()
 :precondition (and (near_8_7) (near_9_7))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_8_7_9_7_2
 :parameters ()
 :precondition (and (near_8_7) (near_9_7))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_8_7_8_8_1
 :parameters ()
 :precondition (and (near_8_7) (near_8_8))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_8_7_8_8_2
 :parameters ()
 :precondition (and (near_8_7) (near_8_8))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_8_8_9_8_1
 :parameters ()
 :precondition (and (near_8_8) (near_9_8))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_8_8_8_9_1
 :parameters ()
 :precondition (and (near_8_8) (near_8_9))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_8_9_9_9_1
 :parameters ()
 :precondition (and (near_8_9) (near_9_9))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_8_9_8_10_1
 :parameters ()
 :precondition (and (near_8_9) (near_8_10))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_8_10_9_10_1
 :parameters ()
 :precondition (and (near_8_10) (near_9_10))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_8_10_8_11_1
 :parameters ()
 :precondition (and (near_8_10) (near_8_11))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_8_11_9_11_1
 :parameters ()
 :precondition (and (near_8_11) (near_9_11))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_8_11_9_11_2
 :parameters ()
 :precondition (and (near_8_11) (near_9_11))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_8_11_8_12_1
 :parameters ()
 :precondition (and (near_8_11) (near_8_12))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_8_11_8_12_2
 :parameters ()
 :precondition (and (near_8_11) (near_8_12))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_8_12_9_12_1
 :parameters ()
 :precondition (and (near_8_12) (near_9_12))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_8_12_9_12_2
 :parameters ()
 :precondition (and (near_8_12) (near_9_12))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_8_12_8_13_1
 :parameters ()
 :precondition (and (near_8_12) (near_8_13))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_8_12_8_13_2
 :parameters ()
 :precondition (and (near_8_12) (near_8_13))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_high_8_13_9_13
 :parameters ()
 :precondition (and (near_8_13) (near_9_13))
 :effect (and (found))
)

(:action observe_high_8_13_8_14
 :parameters ()
 :precondition (and (near_8_13) (near_8_14))
 :effect (and (found))
)

(:action observe_high_8_14_9_14
 :parameters ()
 :precondition (and (near_8_14) (near_9_14))
 :effect (and (found))
)

(:action observe_high_8_14_8_15
 :parameters ()
 :precondition (and (near_8_14) (near_8_15))
 :effect (and (found))
)

(:action observe_low_8_15_9_15_1
 :parameters ()
 :precondition (and (near_8_15) (near_9_15))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_high_9_0_10_0
 :parameters ()
 :precondition (and (near_9_0) (near_10_0))
 :effect (and (found))
)

(:action observe_high_9_0_9_1
 :parameters ()
 :precondition (and (near_9_0) (near_9_1))
 :effect (and (found))
)

(:action observe_high_9_1_10_1
 :parameters ()
 :precondition (and (near_9_1) (near_10_1))
 :effect (and (found))
)

(:action observe_high_9_1_9_2
 :parameters ()
 :precondition (and (near_9_1) (near_9_2))
 :effect (and (found))
)

(:action observe_high_9_3_10_3
 :parameters ()
 :precondition (and (near_9_3) (near_10_3))
 :effect (and (found))
)

(:action observe_high_9_3_9_4
 :parameters ()
 :precondition (and (near_9_3) (near_9_4))
 :effect (and (found))
)

(:action observe_high_9_4_10_4
 :parameters ()
 :precondition (and (near_9_4) (near_10_4))
 :effect (and (found))
)

(:action observe_high_9_4_9_5
 :parameters ()
 :precondition (and (near_9_4) (near_9_5))
 :effect (and (found))
)

(:action observe_low_9_7_10_7_1
 :parameters ()
 :precondition (and (near_9_7) (near_10_7))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_9_7_9_8_1
 :parameters ()
 :precondition (and (near_9_7) (near_9_8))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_high_9_8_10_8
 :parameters ()
 :precondition (and (near_9_8) (near_10_8))
 :effect (and (found))
)

(:action observe_high_9_8_9_9
 :parameters ()
 :precondition (and (near_9_8) (near_9_9))
 :effect (and (found))
)

(:action observe_low_9_9_10_9_1
 :parameters ()
 :precondition (and (near_9_9) (near_10_9))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_9_9_9_10_1
 :parameters ()
 :precondition (and (near_9_9) (near_9_10))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_9_10_10_10_1
 :parameters ()
 :precondition (and (near_9_10) (near_10_10))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_9_10_9_11_1
 :parameters ()
 :precondition (and (near_9_10) (near_9_11))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_9_11_10_11_1
 :parameters ()
 :precondition (and (near_9_11) (near_10_11))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_9_11_10_11_2
 :parameters ()
 :precondition (and (near_9_11) (near_10_11))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_9_11_9_12_1
 :parameters ()
 :precondition (and (near_9_11) (near_9_12))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_9_11_9_12_2
 :parameters ()
 :precondition (and (near_9_11) (near_9_12))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_9_12_10_12_1
 :parameters ()
 :precondition (and (near_9_12) (near_10_12))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_9_12_9_13_1
 :parameters ()
 :precondition (and (near_9_12) (near_9_13))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_9_13_10_13_1
 :parameters ()
 :precondition (and (near_9_13) (near_10_13))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_9_13_9_14_1
 :parameters ()
 :precondition (and (near_9_13) (near_9_14))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_9_14_10_14_1
 :parameters ()
 :precondition (and (near_9_14) (near_10_14))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_9_14_10_14_2
 :parameters ()
 :precondition (and (near_9_14) (near_10_14))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_9_14_9_15_1
 :parameters ()
 :precondition (and (near_9_14) (near_9_15))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_9_14_9_15_2
 :parameters ()
 :precondition (and (near_9_14) (near_9_15))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_high_10_0_11_0
 :parameters ()
 :precondition (and (near_10_0) (near_11_0))
 :effect (and (found))
)

(:action observe_high_10_0_10_1
 :parameters ()
 :precondition (and (near_10_0) (near_10_1))
 :effect (and (found))
)

(:action observe_low_10_3_11_3_1
 :parameters ()
 :precondition (and (near_10_3) (near_11_3))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_10_3_10_4_1
 :parameters ()
 :precondition (and (near_10_3) (near_10_4))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_10_4_11_4_1
 :parameters ()
 :precondition (and (near_10_4) (near_11_4))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_10_4_10_5_1
 :parameters ()
 :precondition (and (near_10_4) (near_10_5))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_10_5_11_5_1
 :parameters ()
 :precondition (and (near_10_5) (near_11_5))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_10_5_11_5_2
 :parameters ()
 :precondition (and (near_10_5) (near_11_5))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_10_5_10_6_1
 :parameters ()
 :precondition (and (near_10_5) (near_10_6))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_10_5_10_6_2
 :parameters ()
 :precondition (and (near_10_5) (near_10_6))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_high_10_6_11_6
 :parameters ()
 :precondition (and (near_10_6) (near_11_6))
 :effect (and (found))
)

(:action observe_high_10_6_10_7
 :parameters ()
 :precondition (and (near_10_6) (near_10_7))
 :effect (and (found))
)

(:action observe_low_10_7_11_7_1
 :parameters ()
 :precondition (and (near_10_7) (near_11_7))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_10_7_11_7_2
 :parameters ()
 :precondition (and (near_10_7) (near_11_7))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_10_7_10_8_1
 :parameters ()
 :precondition (and (near_10_7) (near_10_8))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_10_7_10_8_2
 :parameters ()
 :precondition (and (near_10_7) (near_10_8))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_10_8_11_8_1
 :parameters ()
 :precondition (and (near_10_8) (near_11_8))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_10_8_11_8_2
 :parameters ()
 :precondition (and (near_10_8) (near_11_8))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_10_8_10_9_1
 :parameters ()
 :precondition (and (near_10_8) (near_10_9))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_10_8_10_9_2
 :parameters ()
 :precondition (and (near_10_8) (near_10_9))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_high_10_9_11_9
 :parameters ()
 :precondition (and (near_10_9) (near_11_9))
 :effect (and (found))
)

(:action observe_high_10_9_10_10
 :parameters ()
 :precondition (and (near_10_9) (near_10_10))
 :effect (and (found))
)

(:action observe_low_10_10_11_10_1
 :parameters ()
 :precondition (and (near_10_10) (near_11_10))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_10_10_10_11_1
 :parameters ()
 :precondition (and (near_10_10) (near_10_11))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_10_11_11_11_1
 :parameters ()
 :precondition (and (near_10_11) (near_11_11))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_10_11_11_11_2
 :parameters ()
 :precondition (and (near_10_11) (near_11_11))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_10_11_10_12_1
 :parameters ()
 :precondition (and (near_10_11) (near_10_12))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_10_11_10_12_2
 :parameters ()
 :precondition (and (near_10_11) (near_10_12))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_10_13_11_13_1
 :parameters ()
 :precondition (and (near_10_13) (near_11_13))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_10_13_11_13_2
 :parameters ()
 :precondition (and (near_10_13) (near_11_13))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_10_13_10_14_1
 :parameters ()
 :precondition (and (near_10_13) (near_10_14))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_10_13_10_14_2
 :parameters ()
 :precondition (and (near_10_13) (near_10_14))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_10_15_11_15_1
 :parameters ()
 :precondition (and (near_10_15) (near_11_15))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_10_15_11_15_2
 :parameters ()
 :precondition (and (near_10_15) (near_11_15))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_11_0_12_0_1
 :parameters ()
 :precondition (and (near_11_0) (near_12_0))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_11_0_12_0_2
 :parameters ()
 :precondition (and (near_11_0) (near_12_0))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_11_0_11_1_1
 :parameters ()
 :precondition (and (near_11_0) (near_11_1))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_11_0_11_1_2
 :parameters ()
 :precondition (and (near_11_0) (near_11_1))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_high_11_1_12_1
 :parameters ()
 :precondition (and (near_11_1) (near_12_1))
 :effect (and (found))
)

(:action observe_high_11_1_11_2
 :parameters ()
 :precondition (and (near_11_1) (near_11_2))
 :effect (and (found))
)

(:action observe_low_11_4_12_4_1
 :parameters ()
 :precondition (and (near_11_4) (near_12_4))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_11_4_11_5_1
 :parameters ()
 :precondition (and (near_11_4) (near_11_5))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_11_5_12_5_1
 :parameters ()
 :precondition (and (near_11_5) (near_12_5))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_11_5_11_6_1
 :parameters ()
 :precondition (and (near_11_5) (near_11_6))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_11_6_12_6_1
 :parameters ()
 :precondition (and (near_11_6) (near_12_6))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_11_6_12_6_2
 :parameters ()
 :precondition (and (near_11_6) (near_12_6))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_11_6_11_7_1
 :parameters ()
 :precondition (and (near_11_6) (near_11_7))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_11_6_11_7_2
 :parameters ()
 :precondition (and (near_11_6) (near_11_7))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_high_11_7_12_7
 :parameters ()
 :precondition (and (near_11_7) (near_12_7))
 :effect (and (found))
)

(:action observe_high_11_7_11_8
 :parameters ()
 :precondition (and (near_11_7) (near_11_8))
 :effect (and (found))
)

(:action observe_high_11_8_12_8
 :parameters ()
 :precondition (and (near_11_8) (near_12_8))
 :effect (and (found))
)

(:action observe_high_11_8_11_9
 :parameters ()
 :precondition (and (near_11_8) (near_11_9))
 :effect (and (found))
)

(:action observe_low_11_9_12_9_1
 :parameters ()
 :precondition (and (near_11_9) (near_12_9))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_11_9_12_9_2
 :parameters ()
 :precondition (and (near_11_9) (near_12_9))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_11_9_11_10_1
 :parameters ()
 :precondition (and (near_11_9) (near_11_10))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_11_9_11_10_2
 :parameters ()
 :precondition (and (near_11_9) (near_11_10))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_11_10_12_10_1
 :parameters ()
 :precondition (and (near_11_10) (near_12_10))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_11_10_12_10_2
 :parameters ()
 :precondition (and (near_11_10) (near_12_10))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_11_10_11_11_1
 :parameters ()
 :precondition (and (near_11_10) (near_11_11))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_11_10_11_11_2
 :parameters ()
 :precondition (and (near_11_10) (near_11_11))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_11_12_12_12_1
 :parameters ()
 :precondition (and (near_11_12) (near_12_12))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_11_12_11_13_1
 :parameters ()
 :precondition (and (near_11_12) (near_11_13))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_11_13_12_13_1
 :parameters ()
 :precondition (and (near_11_13) (near_12_13))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_11_13_11_14_1
 :parameters ()
 :precondition (and (near_11_13) (near_11_14))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_high_11_14_12_14
 :parameters ()
 :precondition (and (near_11_14) (near_12_14))
 :effect (and (found))
)

(:action observe_high_11_14_11_15
 :parameters ()
 :precondition (and (near_11_14) (near_11_15))
 :effect (and (found))
)

(:action observe_low_11_15_12_15_1
 :parameters ()
 :precondition (and (near_11_15) (near_12_15))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_12_2_13_2_1
 :parameters ()
 :precondition (and (near_12_2) (near_13_2))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_12_2_12_3_1
 :parameters ()
 :precondition (and (near_12_2) (near_12_3))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_12_3_13_3_1
 :parameters ()
 :precondition (and (near_12_3) (near_13_3))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_12_3_13_3_2
 :parameters ()
 :precondition (and (near_12_3) (near_13_3))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_12_3_12_4_1
 :parameters ()
 :precondition (and (near_12_3) (near_12_4))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_12_3_12_4_2
 :parameters ()
 :precondition (and (near_12_3) (near_12_4))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_12_4_13_4_1
 :parameters ()
 :precondition (and (near_12_4) (near_13_4))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_12_4_12_5_1
 :parameters ()
 :precondition (and (near_12_4) (near_12_5))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_12_5_13_5_1
 :parameters ()
 :precondition (and (near_12_5) (near_13_5))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_12_5_12_6_1
 :parameters ()
 :precondition (and (near_12_5) (near_12_6))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_12_6_13_6_1
 :parameters ()
 :precondition (and (near_12_6) (near_13_6))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_12_6_12_7_1
 :parameters ()
 :precondition (and (near_12_6) (near_12_7))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_12_7_13_7_1
 :parameters ()
 :precondition (and (near_12_7) (near_13_7))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_12_7_12_8_1
 :parameters ()
 :precondition (and (near_12_7) (near_12_8))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_12_9_13_9_1
 :parameters ()
 :precondition (and (near_12_9) (near_13_9))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_12_9_13_9_2
 :parameters ()
 :precondition (and (near_12_9) (near_13_9))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_12_9_12_10_1
 :parameters ()
 :precondition (and (near_12_9) (near_12_10))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_12_9_12_10_2
 :parameters ()
 :precondition (and (near_12_9) (near_12_10))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_12_12_13_12_1
 :parameters ()
 :precondition (and (near_12_12) (near_13_12))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_12_12_13_12_2
 :parameters ()
 :precondition (and (near_12_12) (near_13_12))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_12_12_12_13_1
 :parameters ()
 :precondition (and (near_12_12) (near_12_13))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_12_12_12_13_2
 :parameters ()
 :precondition (and (near_12_12) (near_12_13))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_12_13_13_13_1
 :parameters ()
 :precondition (and (near_12_13) (near_13_13))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_12_13_12_14_1
 :parameters ()
 :precondition (and (near_12_13) (near_12_14))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_high_12_14_13_14
 :parameters ()
 :precondition (and (near_12_14) (near_13_14))
 :effect (and (found))
)

(:action observe_high_12_14_12_15
 :parameters ()
 :precondition (and (near_12_14) (near_12_15))
 :effect (and (found))
)

(:action observe_low_12_15_13_15_1
 :parameters ()
 :precondition (and (near_12_15) (near_13_15))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_13_1_14_1_1
 :parameters ()
 :precondition (and (near_13_1) (near_14_1))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_13_1_13_2_1
 :parameters ()
 :precondition (and (near_13_1) (near_13_2))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_13_3_14_3_1
 :parameters ()
 :precondition (and (near_13_3) (near_14_3))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_13_3_13_4_1
 :parameters ()
 :precondition (and (near_13_3) (near_13_4))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_13_5_14_5_1
 :parameters ()
 :precondition (and (near_13_5) (near_14_5))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_13_5_13_6_1
 :parameters ()
 :precondition (and (near_13_5) (near_13_6))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_13_6_14_6_1
 :parameters ()
 :precondition (and (near_13_6) (near_14_6))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_13_6_13_7_1
 :parameters ()
 :precondition (and (near_13_6) (near_13_7))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_13_7_14_7_1
 :parameters ()
 :precondition (and (near_13_7) (near_14_7))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_13_7_14_7_2
 :parameters ()
 :precondition (and (near_13_7) (near_14_7))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_13_7_13_8_1
 :parameters ()
 :precondition (and (near_13_7) (near_13_8))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_13_7_13_8_2
 :parameters ()
 :precondition (and (near_13_7) (near_13_8))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_high_13_8_14_8
 :parameters ()
 :precondition (and (near_13_8) (near_14_8))
 :effect (and (found))
)

(:action observe_high_13_8_13_9
 :parameters ()
 :precondition (and (near_13_8) (near_13_9))
 :effect (and (found))
)

(:action observe_low_13_10_14_10_1
 :parameters ()
 :precondition (and (near_13_10) (near_14_10))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_13_10_14_10_2
 :parameters ()
 :precondition (and (near_13_10) (near_14_10))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_13_10_13_11_1
 :parameters ()
 :precondition (and (near_13_10) (near_13_11))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_13_10_13_11_2
 :parameters ()
 :precondition (and (near_13_10) (near_13_11))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_high_13_12_14_12
 :parameters ()
 :precondition (and (near_13_12) (near_14_12))
 :effect (and (found))
)

(:action observe_high_13_12_13_13
 :parameters ()
 :precondition (and (near_13_12) (near_13_13))
 :effect (and (found))
)

(:action observe_low_13_13_14_13_1
 :parameters ()
 :precondition (and (near_13_13) (near_14_13))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_13_13_14_13_2
 :parameters ()
 :precondition (and (near_13_13) (near_14_13))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_13_13_13_14_1
 :parameters ()
 :precondition (and (near_13_13) (near_13_14))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_13_13_13_14_2
 :parameters ()
 :precondition (and (near_13_13) (near_13_14))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_high_13_14_14_14
 :parameters ()
 :precondition (and (near_13_14) (near_14_14))
 :effect (and (found))
)

(:action observe_high_13_14_13_15
 :parameters ()
 :precondition (and (near_13_14) (near_13_15))
 :effect (and (found))
)

(:action observe_high_13_15_14_15
 :parameters ()
 :precondition (and (near_13_15) (near_14_15))
 :effect (and (found))
)

(:action observe_high_14_0_15_0
 :parameters ()
 :precondition (and (near_14_0) (near_15_0))
 :effect (and (found))
)

(:action observe_high_14_0_14_1
 :parameters ()
 :precondition (and (near_14_0) (near_14_1))
 :effect (and (found))
)

(:action observe_high_14_1_15_1
 :parameters ()
 :precondition (and (near_14_1) (near_15_1))
 :effect (and (found))
)

(:action observe_high_14_1_14_2
 :parameters ()
 :precondition (and (near_14_1) (near_14_2))
 :effect (and (found))
)

(:action observe_low_14_2_15_2_1
 :parameters ()
 :precondition (and (near_14_2) (near_15_2))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_14_2_15_2_2
 :parameters ()
 :precondition (and (near_14_2) (near_15_2))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_14_2_14_3_1
 :parameters ()
 :precondition (and (near_14_2) (near_14_3))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_14_2_14_3_2
 :parameters ()
 :precondition (and (near_14_2) (near_14_3))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_high_14_3_15_3
 :parameters ()
 :precondition (and (near_14_3) (near_15_3))
 :effect (and (found))
)

(:action observe_high_14_3_14_4
 :parameters ()
 :precondition (and (near_14_3) (near_14_4))
 :effect (and (found))
)

(:action observe_low_14_4_15_4_1
 :parameters ()
 :precondition (and (near_14_4) (near_15_4))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_14_4_15_4_2
 :parameters ()
 :precondition (and (near_14_4) (near_15_4))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_14_4_14_5_1
 :parameters ()
 :precondition (and (near_14_4) (near_14_5))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_14_4_14_5_2
 :parameters ()
 :precondition (and (near_14_4) (near_14_5))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_14_5_15_5_1
 :parameters ()
 :precondition (and (near_14_5) (near_15_5))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_14_5_15_5_2
 :parameters ()
 :precondition (and (near_14_5) (near_15_5))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_14_5_14_6_1
 :parameters ()
 :precondition (and (near_14_5) (near_14_6))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_14_5_14_6_2
 :parameters ()
 :precondition (and (near_14_5) (near_14_6))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_14_6_15_6_1
 :parameters ()
 :precondition (and (near_14_6) (near_15_6))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_14_6_15_6_2
 :parameters ()
 :precondition (and (near_14_6) (near_15_6))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_14_6_14_7_1
 :parameters ()
 :precondition (and (near_14_6) (near_14_7))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_14_6_14_7_2
 :parameters ()
 :precondition (and (near_14_6) (near_14_7))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_14_7_15_7_1
 :parameters ()
 :precondition (and (near_14_7) (near_15_7))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_14_7_14_8_1
 :parameters ()
 :precondition (and (near_14_7) (near_14_8))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_14_8_15_8_1
 :parameters ()
 :precondition (and (near_14_8) (near_15_8))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_14_8_15_8_2
 :parameters ()
 :precondition (and (near_14_8) (near_15_8))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_14_8_14_9_1
 :parameters ()
 :precondition (and (near_14_8) (near_14_9))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_14_8_14_9_2
 :parameters ()
 :precondition (and (near_14_8) (near_14_9))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_high_14_9_15_9
 :parameters ()
 :precondition (and (near_14_9) (near_15_9))
 :effect (and (found))
)

(:action observe_high_14_9_14_10
 :parameters ()
 :precondition (and (near_14_9) (near_14_10))
 :effect (and (found))
)

(:action observe_high_14_10_15_10
 :parameters ()
 :precondition (and (near_14_10) (near_15_10))
 :effect (and (found))
)

(:action observe_high_14_10_14_11
 :parameters ()
 :precondition (and (near_14_10) (near_14_11))
 :effect (and (found))
)

(:action observe_high_14_11_15_11
 :parameters ()
 :precondition (and (near_14_11) (near_15_11))
 :effect (and (found))
)

(:action observe_high_14_11_14_12
 :parameters ()
 :precondition (and (near_14_11) (near_14_12))
 :effect (and (found))
)

(:action observe_low_14_13_15_13_1
 :parameters ()
 :precondition (and (near_14_13) (near_15_13))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_14_13_14_14_1
 :parameters ()
 :precondition (and (near_14_13) (near_14_14))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_14_14_15_14_1
 :parameters ()
 :precondition (and (near_14_14) (near_15_14))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_14_14_14_15_1
 :parameters ()
 :precondition (and (near_14_14) (near_14_15))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_14_15_15_15_1
 :parameters ()
 :precondition (and (near_14_15) (near_15_15))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_high_15_0_15_1
 :parameters ()
 :precondition (and (near_15_0) (near_15_1))
 :effect (and (found))
)

(:action observe_low_15_1_15_2_1
 :parameters ()
 :precondition (and (near_15_1) (near_15_2))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_15_1_15_2_2
 :parameters ()
 :precondition (and (near_15_1) (near_15_2))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_high_15_2_15_3
 :parameters ()
 :precondition (and (near_15_2) (near_15_3))
 :effect (and (found))
)

(:action observe_high_15_3_15_4
 :parameters ()
 :precondition (and (near_15_3) (near_15_4))
 :effect (and (found))
)

(:action observe_low_15_4_15_5_1
 :parameters ()
 :precondition (and (near_15_4) (near_15_5))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_15_4_15_5_2
 :parameters ()
 :precondition (and (near_15_4) (near_15_5))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_15_5_15_6_1
 :parameters ()
 :precondition (and (near_15_5) (near_15_6))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_15_5_15_6_2
 :parameters ()
 :precondition (and (near_15_5) (near_15_6))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_15_6_15_7_1
 :parameters ()
 :precondition (and (near_15_6) (near_15_7))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_15_6_15_7_2
 :parameters ()
 :precondition (and (near_15_6) (near_15_7))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_15_9_15_10_1
 :parameters ()
 :precondition (and (near_15_9) (near_15_10))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_low_15_9_15_10_2
 :parameters ()
 :precondition (and (near_15_9) (near_15_10))
 :effect (and )
 :poss-effect (and (found))
)

(:action observe_high_15_12_15_13
 :parameters ()
 :precondition (and (near_15_12) (near_15_13))
 :effect (and (found))
)

(:action observe_high_15_13_15_14
 :parameters ()
 :precondition (and (near_15_13) (near_15_14))
 :effect (and (found))
)

(:action observe_high_15_14_15_15
 :parameters ()
 :precondition (and (near_15_14) (near_15_15))
 :effect (and (found))
)

(:action move_bus_stop
 :parameters ()
 :precondition (and (at_15_15))
 :effect (and (not (at_15_15)) (at_bus_stop))
)

)