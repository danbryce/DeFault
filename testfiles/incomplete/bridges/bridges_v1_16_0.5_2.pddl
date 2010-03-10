(define (domain Bridges)
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
 (bridge_1_12_1_13) (bridge_13_12_14_12) (bridge_9_1_10_1) (bridge_0_13_0_14) (bridge_12_7_12_8) (bridge_10_7_11_7) (bridge_2_1_2_2) (bridge_13_13_14_13) (bridge_14_10_14_11) (bridge_6_5_7_5) (bridge_13_7_14_7) (bridge_4_7_5_7) (bridge_11_12_11_13) (bridge_12_6_13_6) (bridge_11_0_11_1) (bridge_12_10_12_11) (bridge_10_9_11_9) (bridge_2_11_2_12) (bridge_7_7_7_8) (bridge_0_9_1_9) (bridge_13_14_13_15) (bridge_14_15_15_15) (bridge_0_1_1_1) (bridge_15_8_15_9) (bridge_11_1_11_2) (bridge_0_8_1_8) (bridge_4_6_4_7) (bridge_9_3_10_3) (bridge_2_14_2_15) (bridge_1_6_2_6) (bridge_9_6_9_7) (bridge_0_8_0_9) (bridge_4_6_5_6) (bridge_2_7_2_8) (bridge_3_1_4_1) (bridge_4_12_4_13) (bridge_1_1_2_1) (bridge_6_7_7_7) (bridge_6_13_6_14) (bridge_14_14_14_15) (bridge_12_13_12_14) (bridge_0_12_1_12) (bridge_0_4_1_4) (bridge_1_4_2_4) (bridge_10_12_11_12) (bridge_4_12_5_12) (bridge_4_9_4_10) (bridge_3_9_4_9) (bridge_6_6_6_7) (bridge_6_13_7_13) (bridge_3_8_3_9) (bridge_2_0_3_0) (bridge_11_4_11_5) (bridge_3_8_4_8) (bridge_13_8_14_8) (bridge_5_14_6_14) (bridge_4_10_5_10) (bridge_14_9_15_9) (bridge_8_11_8_12) (bridge_13_15_14_15) (bridge_13_10_14_10) (bridge_12_9_13_9) (bridge_0_15_1_15) (bridge_9_0_9_1) (bridge_7_7_8_7) (bridge_2_9_3_9) (bridge_2_8_2_9) (bridge_12_10_13_10) (bridge_0_5_1_5) (bridge_11_11_11_12) (bridge_1_5_1_6) (bridge_12_12_13_12) (bridge_8_6_8_7) (bridge_10_10_10_11) (bridge_0_13_1_13) (bridge_12_9_12_10) (bridge_6_5_6_6) (bridge_12_7_13_7) (bridge_9_14_9_15) (bridge_12_8_12_9) (bridge_8_0_9_0) (bridge_4_11_5_11) (bridge_7_1_8_1) (bridge_6_8_7_8) (bridge_1_13_1_14) (bridge_5_11_5_12) (bridge_3_3_3_4) (bridge_14_4_14_5) (bridge_7_4_8_4) (bridge_2_11_3_11) (bridge_5_0_6_0) (bridge_8_10_9_10) (bridge_14_3_15_3) (bridge_8_8_9_8) (bridge_3_12_4_12) (bridge_9_8_10_8) (bridge_7_5_8_5) (bridge_5_0_5_1) (bridge_5_2_5_3) (bridge_2_15_3_15) (bridge_9_13_10_13) (bridge_12_0_12_1) (bridge_0_4_0_5) (bridge_5_2_6_2) (bridge_9_9_9_10) (bridge_3_4_3_5) (bridge_10_8_11_8) (bridge_6_7_6_8) (bridge_1_3_1_4) (bridge_14_1_14_2) (bridge_3_4_4_4) (bridge_8_12_8_13) (bridge_8_1_8_2) (bridge_3_14_3_15) (bridge_2_13_3_13) (bridge_1_15_2_15) (bridge_12_5_13_5) (bridge_9_3_9_4) (bridge_9_11_9_12) (bridge_5_12_6_12) (bridge_5_1_5_2) (bridge_11_14_12_14) (bridge_10_0_10_1) (bridge_5_1_6_1) (bridge_12_6_12_7) (bridge_1_14_2_14) (bridge_11_7_12_7) (bridge_15_6_15_7) (bridge_14_7_14_8) (bridge_6_15_7_15) (bridge_3_5_4_5) (bridge_10_2_11_2) (bridge_4_0_5_0) (bridge_3_12_3_13) (bridge_4_14_4_15) (bridge_2_5_3_5) (bridge_14_5_14_6) (bridge_2_5_2_6) (bridge_0_2_1_2) (bridge_4_10_4_11) (bridge_10_3_11_3) (bridge_12_8_13_8) (bridge_10_15_11_15) (bridge_8_4_9_4) (bridge_13_11_13_12) (bridge_4_11_4_12) (bridge_5_15_6_15) (bridge_12_12_12_13) (bridge_14_12_14_13) (bridge_3_11_4_11) (bridge_7_0_8_0) (bridge_5_3_5_4) (bridge_9_5_10_5) (bridge_8_7_9_7) (bridge_10_10_11_10) (bridge_14_6_14_7) (bridge_4_4_5_4) (bridge_11_2_12_2) (bridge_13_0_13_1) (bridge_2_2_3_2) (bridge_4_2_5_2) (bridge_0_6_0_7) (bridge_14_11_14_12) (bridge_4_2_4_3) (bridge_14_13_15_13) (bridge_15_0_15_1) (bridge_14_13_14_14) (bridge_14_8_15_8) (bridge_0_11_0_12) (bridge_1_2_2_2) (bridge_3_9_3_10) (bridge_11_13_12_13) (bridge_6_11_6_12) (bridge_11_5_12_5) (bridge_5_13_5_14) (bridge_13_4_13_5) (bridge_15_10_15_11) (bridge_9_7_9_8) (bridge_13_9_13_10) (bridge_0_2_0_3) (bridge_11_8_12_8) (bridge_14_7_15_7) (bridge_8_2_8_3) (bridge_8_12_9_12) (bridge_2_10_2_11) (bridge_0_11_1_11) (bridge_14_5_15_5) (bridge_8_13_8_14) (bridge_0_12_0_13) (bridge_1_7_2_7) (bridge_4_3_4_4) (bridge_2_2_2_3) (bridge_13_11_14_11) (bridge_11_11_12_11) (bridge_1_7_1_8) (bridge_9_8_9_9) (bridge_11_3_12_3) (bridge_9_10_10_10) (bridge_12_11_12_12) (bridge_11_2_11_3) (bridge_13_0_14_0) (bridge_1_1_1_2) (bridge_3_0_4_0) (bridge_3_1_3_2) (bridge_1_2_1_3) (bridge_3_7_4_7) (bridge_10_14_10_15) (bridge_0_0_0_1) (bridge_12_5_12_6) (bridge_8_14_9_14) (bridge_6_9_6_10) (bridge_9_5_9_6) (bridge_13_10_13_11) (bridge_2_14_3_14) (bridge_13_5_13_6) (bridge_3_7_3_8) (bridge_5_8_6_8) (bridge_15_5_15_6) (bridge_0_6_1_6) (bridge_15_4_15_5) (bridge_4_15_5_15) (bridge_6_6_7_6) (bridge_10_8_10_9) (bridge_13_1_13_2) (bridge_13_6_13_7) (bridge_5_9_5_10) (bridge_5_13_6_13) (bridge_10_1_10_2) (bridge_8_3_8_4) (bridge_13_14_14_14) (bridge_6_10_7_10) (bridge_9_7_10_7) (bridge_1_5_2_5) (bridge_2_12_3_12) (bridge_9_0_10_0) (bridge_4_5_4_6) (bridge_4_8_4_9) (bridge_2_1_3_1) (bridge_4_5_5_5) (bridge_7_10_7_11)
 (holding_treasure_2) (holding_treasure_3) (holding_treasure_1))

(:action move_0_0_1_0
 :parameters ()
 :precondition (and (at_0_0))
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
 :effect (and (not (at_0_1)) (at_0_2))
)

(:action move_0_2_1_2
 :parameters ()
 :precondition (and (at_0_2))
 :poss-precondition (and (bridge_0_2_1_2))
 :effect (and (not (at_0_2)) (at_1_2))
)

(:action move_0_2_0_1
 :parameters ()
 :precondition (and (at_0_2))
 :effect (and (not (at_0_2)) (at_0_1))
)

(:action move_0_2_0_3
 :parameters ()
 :precondition (and (at_0_2))
 :poss-precondition (and (bridge_0_2_0_3))
 :effect (and (not (at_0_2)) (at_0_3))
)

(:action move_0_3_1_3
 :parameters ()
 :precondition (and (at_0_3))
 :effect (and (not (at_0_3)) (at_1_3))
)

(:action move_0_3_0_2
 :parameters ()
 :precondition (and (at_0_3))
 :poss-precondition (and (bridge_0_2_0_3))
 :effect (and (not (at_0_3)) (at_0_2))
)

(:action move_0_3_0_4
 :parameters ()
 :precondition (and (at_0_3))
 :effect (and (not (at_0_3)) (at_0_4))
)

(:action move_0_4_1_4
 :parameters ()
 :precondition (and (at_0_4))
 :poss-precondition (and (bridge_0_4_1_4))
 :effect (and (not (at_0_4)) (at_1_4))
)

(:action move_0_4_0_3
 :parameters ()
 :precondition (and (at_0_4))
 :effect (and (not (at_0_4)) (at_0_3))
)

(:action move_0_4_0_5
 :parameters ()
 :precondition (and (at_0_4))
 :poss-precondition (and (bridge_0_4_0_5))
 :effect (and (not (at_0_4)) (at_0_5))
)

(:action move_0_5_1_5
 :parameters ()
 :precondition (and (at_0_5))
 :poss-precondition (and (bridge_0_5_1_5))
 :effect (and (not (at_0_5)) (at_1_5))
)

(:action move_0_5_0_4
 :parameters ()
 :precondition (and (at_0_5))
 :poss-precondition (and (bridge_0_4_0_5))
 :effect (and (not (at_0_5)) (at_0_4))
)

(:action move_0_5_0_6
 :parameters ()
 :precondition (and (at_0_5))
 :effect (and (not (at_0_5)) (at_0_6))
)

(:action move_0_6_1_6
 :parameters ()
 :precondition (and (at_0_6))
 :poss-precondition (and (bridge_0_6_1_6))
 :effect (and (not (at_0_6)) (at_1_6))
)

(:action move_0_6_0_5
 :parameters ()
 :precondition (and (at_0_6))
 :effect (and (not (at_0_6)) (at_0_5))
)

(:action move_0_6_0_7
 :parameters ()
 :precondition (and (at_0_6))
 :poss-precondition (and (bridge_0_6_0_7))
 :effect (and (not (at_0_6)) (at_0_7))
)

(:action move_0_7_1_7
 :parameters ()
 :precondition (and (at_0_7))
 :effect (and (not (at_0_7)) (at_1_7))
)

(:action move_0_7_0_6
 :parameters ()
 :precondition (and (at_0_7))
 :poss-precondition (and (bridge_0_6_0_7))
 :effect (and (not (at_0_7)) (at_0_6))
)

(:action move_0_7_0_8
 :parameters ()
 :precondition (and (at_0_7))
 :effect (and (not (at_0_7)) (at_0_8))
)

(:action move_0_8_1_8
 :parameters ()
 :precondition (and (at_0_8))
 :poss-precondition (and (bridge_0_8_1_8))
 :effect (and (not (at_0_8)) (at_1_8))
)

(:action move_0_8_0_7
 :parameters ()
 :precondition (and (at_0_8))
 :effect (and (not (at_0_8)) (at_0_7))
)

(:action move_0_8_0_9
 :parameters ()
 :precondition (and (at_0_8))
 :poss-precondition (and (bridge_0_8_0_9))
 :effect (and (not (at_0_8)) (at_0_9))
)

(:action move_0_9_1_9
 :parameters ()
 :precondition (and (at_0_9))
 :poss-precondition (and (bridge_0_9_1_9))
 :effect (and (not (at_0_9)) (at_1_9))
)

(:action move_0_9_0_8
 :parameters ()
 :precondition (and (at_0_9))
 :poss-precondition (and (bridge_0_8_0_9))
 :effect (and (not (at_0_9)) (at_0_8))
)

(:action move_0_9_0_10
 :parameters ()
 :precondition (and (at_0_9))
 :effect (and (not (at_0_9)) (at_0_10))
)

(:action move_0_10_1_10
 :parameters ()
 :precondition (and (at_0_10))
 :effect (and (not (at_0_10)) (at_1_10))
)

(:action move_0_10_0_9
 :parameters ()
 :precondition (and (at_0_10))
 :effect (and (not (at_0_10)) (at_0_9))
)

(:action move_0_10_0_11
 :parameters ()
 :precondition (and (at_0_10))
 :effect (and (not (at_0_10)) (at_0_11))
)

(:action move_0_11_1_11
 :parameters ()
 :precondition (and (at_0_11))
 :poss-precondition (and (bridge_0_11_1_11))
 :effect (and (not (at_0_11)) (at_1_11))
)

(:action move_0_11_0_10
 :parameters ()
 :precondition (and (at_0_11))
 :effect (and (not (at_0_11)) (at_0_10))
)

(:action move_0_11_0_12
 :parameters ()
 :precondition (and (at_0_11))
 :poss-precondition (and (bridge_0_11_0_12))
 :effect (and (not (at_0_11)) (at_0_12))
)

(:action move_0_12_1_12
 :parameters ()
 :precondition (and (at_0_12))
 :poss-precondition (and (bridge_0_12_1_12))
 :effect (and (not (at_0_12)) (at_1_12))
)

(:action move_0_12_0_11
 :parameters ()
 :precondition (and (at_0_12))
 :poss-precondition (and (bridge_0_11_0_12))
 :effect (and (not (at_0_12)) (at_0_11))
)

(:action move_0_12_0_13
 :parameters ()
 :precondition (and (at_0_12))
 :poss-precondition (and (bridge_0_12_0_13))
 :effect (and (not (at_0_12)) (at_0_13))
)

(:action move_0_13_1_13
 :parameters ()
 :precondition (and (at_0_13))
 :poss-precondition (and (bridge_0_13_1_13))
 :effect (and (not (at_0_13)) (at_1_13))
)

(:action move_0_13_0_12
 :parameters ()
 :precondition (and (at_0_13))
 :poss-precondition (and (bridge_0_12_0_13))
 :effect (and (not (at_0_13)) (at_0_12))
)

(:action move_0_13_0_14
 :parameters ()
 :precondition (and (at_0_13))
 :poss-precondition (and (bridge_0_13_0_14))
 :effect (and (not (at_0_13)) (at_0_14))
)

(:action move_0_14_1_14
 :parameters ()
 :precondition (and (at_0_14))
 :effect (and (not (at_0_14)) (at_1_14))
)

(:action move_0_14_0_13
 :parameters ()
 :precondition (and (at_0_14))
 :poss-precondition (and (bridge_0_13_0_14))
 :effect (and (not (at_0_14)) (at_0_13))
)

(:action move_0_14_0_15
 :parameters ()
 :precondition (and (at_0_14))
 :effect (and (not (at_0_14)) (at_0_15))
)

(:action move_0_15_1_15
 :parameters ()
 :precondition (and (at_0_15))
 :poss-precondition (and (bridge_0_15_1_15))
 :effect (and (not (at_0_15)) (at_1_15))
)

(:action move_0_15_0_14
 :parameters ()
 :precondition (and (at_0_15))
 :effect (and (not (at_0_15)) (at_0_14))
)

(:action move_1_0_0_0
 :parameters ()
 :precondition (and (at_1_0))
 :effect (and (not (at_1_0)) (at_0_0))
)

(:action move_1_0_2_0
 :parameters ()
 :precondition (and (at_1_0))
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
 :poss-precondition (and (bridge_0_2_1_2))
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
 :effect (and (not (at_1_3)) (at_0_3))
)

(:action move_1_3_2_3
 :parameters ()
 :precondition (and (at_1_3))
 :effect (and (not (at_1_3)) (at_2_3))
)

(:action move_1_3_1_2
 :parameters ()
 :precondition (and (at_1_3))
 :poss-precondition (and (bridge_1_2_1_3))
 :effect (and (not (at_1_3)) (at_1_2))
)

(:action move_1_3_1_4
 :parameters ()
 :precondition (and (at_1_3))
 :poss-precondition (and (bridge_1_3_1_4))
 :effect (and (not (at_1_3)) (at_1_4))
)

(:action move_1_4_0_4
 :parameters ()
 :precondition (and (at_1_4))
 :poss-precondition (and (bridge_0_4_1_4))
 :effect (and (not (at_1_4)) (at_0_4))
)

(:action move_1_4_2_4
 :parameters ()
 :precondition (and (at_1_4))
 :poss-precondition (and (bridge_1_4_2_4))
 :effect (and (not (at_1_4)) (at_2_4))
)

(:action move_1_4_1_3
 :parameters ()
 :precondition (and (at_1_4))
 :poss-precondition (and (bridge_1_3_1_4))
 :effect (and (not (at_1_4)) (at_1_3))
)

(:action move_1_4_1_5
 :parameters ()
 :precondition (and (at_1_4))
 :effect (and (not (at_1_4)) (at_1_5))
)

(:action move_1_5_0_5
 :parameters ()
 :precondition (and (at_1_5))
 :poss-precondition (and (bridge_0_5_1_5))
 :effect (and (not (at_1_5)) (at_0_5))
)

(:action move_1_5_2_5
 :parameters ()
 :precondition (and (at_1_5))
 :poss-precondition (and (bridge_1_5_2_5))
 :effect (and (not (at_1_5)) (at_2_5))
)

(:action move_1_5_1_4
 :parameters ()
 :precondition (and (at_1_5))
 :effect (and (not (at_1_5)) (at_1_4))
)

(:action move_1_5_1_6
 :parameters ()
 :precondition (and (at_1_5))
 :poss-precondition (and (bridge_1_5_1_6))
 :effect (and (not (at_1_5)) (at_1_6))
)

(:action move_1_6_0_6
 :parameters ()
 :precondition (and (at_1_6))
 :poss-precondition (and (bridge_0_6_1_6))
 :effect (and (not (at_1_6)) (at_0_6))
)

(:action move_1_6_2_6
 :parameters ()
 :precondition (and (at_1_6))
 :poss-precondition (and (bridge_1_6_2_6))
 :effect (and (not (at_1_6)) (at_2_6))
)

(:action move_1_6_1_5
 :parameters ()
 :precondition (and (at_1_6))
 :poss-precondition (and (bridge_1_5_1_6))
 :effect (and (not (at_1_6)) (at_1_5))
)

(:action move_1_6_1_7
 :parameters ()
 :precondition (and (at_1_6))
 :effect (and (not (at_1_6)) (at_1_7))
)

(:action move_1_7_0_7
 :parameters ()
 :precondition (and (at_1_7))
 :effect (and (not (at_1_7)) (at_0_7))
)

(:action move_1_7_2_7
 :parameters ()
 :precondition (and (at_1_7))
 :poss-precondition (and (bridge_1_7_2_7))
 :effect (and (not (at_1_7)) (at_2_7))
)

(:action move_1_7_1_6
 :parameters ()
 :precondition (and (at_1_7))
 :effect (and (not (at_1_7)) (at_1_6))
)

(:action move_1_7_1_8
 :parameters ()
 :precondition (and (at_1_7))
 :poss-precondition (and (bridge_1_7_1_8))
 :effect (and (not (at_1_7)) (at_1_8))
)

(:action move_1_8_0_8
 :parameters ()
 :precondition (and (at_1_8))
 :poss-precondition (and (bridge_0_8_1_8))
 :effect (and (not (at_1_8)) (at_0_8))
)

(:action move_1_8_2_8
 :parameters ()
 :precondition (and (at_1_8))
 :effect (and (not (at_1_8)) (at_2_8))
)

(:action move_1_8_1_7
 :parameters ()
 :precondition (and (at_1_8))
 :poss-precondition (and (bridge_1_7_1_8))
 :effect (and (not (at_1_8)) (at_1_7))
)

(:action move_1_8_1_9
 :parameters ()
 :precondition (and (at_1_8))
 :effect (and (not (at_1_8)) (at_1_9))
)

(:action move_1_9_0_9
 :parameters ()
 :precondition (and (at_1_9))
 :poss-precondition (and (bridge_0_9_1_9))
 :effect (and (not (at_1_9)) (at_0_9))
)

(:action move_1_9_2_9
 :parameters ()
 :precondition (and (at_1_9))
 :effect (and (not (at_1_9)) (at_2_9))
)

(:action move_1_9_1_8
 :parameters ()
 :precondition (and (at_1_9))
 :effect (and (not (at_1_9)) (at_1_8))
)

(:action move_1_9_1_10
 :parameters ()
 :precondition (and (at_1_9))
 :effect (and (not (at_1_9)) (at_1_10))
)

(:action move_1_10_0_10
 :parameters ()
 :precondition (and (at_1_10))
 :effect (and (not (at_1_10)) (at_0_10))
)

(:action move_1_10_2_10
 :parameters ()
 :precondition (and (at_1_10))
 :effect (and (not (at_1_10)) (at_2_10))
)

(:action move_1_10_1_9
 :parameters ()
 :precondition (and (at_1_10))
 :effect (and (not (at_1_10)) (at_1_9))
)

(:action move_1_10_1_11
 :parameters ()
 :precondition (and (at_1_10))
 :effect (and (not (at_1_10)) (at_1_11))
)

(:action move_1_11_0_11
 :parameters ()
 :precondition (and (at_1_11))
 :poss-precondition (and (bridge_0_11_1_11))
 :effect (and (not (at_1_11)) (at_0_11))
)

(:action move_1_11_2_11
 :parameters ()
 :precondition (and (at_1_11))
 :effect (and (not (at_1_11)) (at_2_11))
)

(:action move_1_11_1_10
 :parameters ()
 :precondition (and (at_1_11))
 :effect (and (not (at_1_11)) (at_1_10))
)

(:action move_1_11_1_12
 :parameters ()
 :precondition (and (at_1_11))
 :effect (and (not (at_1_11)) (at_1_12))
)

(:action move_1_12_0_12
 :parameters ()
 :precondition (and (at_1_12))
 :poss-precondition (and (bridge_0_12_1_12))
 :effect (and (not (at_1_12)) (at_0_12))
)

(:action move_1_12_2_12
 :parameters ()
 :precondition (and (at_1_12))
 :effect (and (not (at_1_12)) (at_2_12))
)

(:action move_1_12_1_11
 :parameters ()
 :precondition (and (at_1_12))
 :effect (and (not (at_1_12)) (at_1_11))
)

(:action move_1_12_1_13
 :parameters ()
 :precondition (and (at_1_12))
 :poss-precondition (and (bridge_1_12_1_13))
 :effect (and (not (at_1_12)) (at_1_13))
)

(:action move_1_13_0_13
 :parameters ()
 :precondition (and (at_1_13))
 :poss-precondition (and (bridge_0_13_1_13))
 :effect (and (not (at_1_13)) (at_0_13))
)

(:action move_1_13_2_13
 :parameters ()
 :precondition (and (at_1_13))
 :effect (and (not (at_1_13)) (at_2_13))
)

(:action move_1_13_1_12
 :parameters ()
 :precondition (and (at_1_13))
 :poss-precondition (and (bridge_1_12_1_13))
 :effect (and (not (at_1_13)) (at_1_12))
)

(:action move_1_13_1_14
 :parameters ()
 :precondition (and (at_1_13))
 :poss-precondition (and (bridge_1_13_1_14))
 :effect (and (not (at_1_13)) (at_1_14))
)

(:action move_1_14_0_14
 :parameters ()
 :precondition (and (at_1_14))
 :effect (and (not (at_1_14)) (at_0_14))
)

(:action move_1_14_2_14
 :parameters ()
 :precondition (and (at_1_14))
 :poss-precondition (and (bridge_1_14_2_14))
 :effect (and (not (at_1_14)) (at_2_14))
)

(:action move_1_14_1_13
 :parameters ()
 :precondition (and (at_1_14))
 :poss-precondition (and (bridge_1_13_1_14))
 :effect (and (not (at_1_14)) (at_1_13))
)

(:action move_1_14_1_15
 :parameters ()
 :precondition (and (at_1_14))
 :effect (and (not (at_1_14)) (at_1_15))
)

(:action move_1_15_0_15
 :parameters ()
 :precondition (and (at_1_15))
 :poss-precondition (and (bridge_0_15_1_15))
 :effect (and (not (at_1_15)) (at_0_15))
)

(:action move_1_15_2_15
 :parameters ()
 :precondition (and (at_1_15))
 :poss-precondition (and (bridge_1_15_2_15))
 :effect (and (not (at_1_15)) (at_2_15))
)

(:action move_1_15_1_14
 :parameters ()
 :precondition (and (at_1_15))
 :effect (and (not (at_1_15)) (at_1_14))
)

(:action move_2_0_1_0
 :parameters ()
 :precondition (and (at_2_0))
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
 :effect (and (not (at_2_3)) (at_1_3))
)

(:action move_2_3_3_3
 :parameters ()
 :precondition (and (at_2_3))
 :effect (and (not (at_2_3)) (at_3_3))
)

(:action move_2_3_2_2
 :parameters ()
 :precondition (and (at_2_3))
 :poss-precondition (and (bridge_2_2_2_3))
 :effect (and (not (at_2_3)) (at_2_2))
)

(:action move_2_3_2_4
 :parameters ()
 :precondition (and (at_2_3))
 :effect (and (not (at_2_3)) (at_2_4))
)

(:action move_2_4_1_4
 :parameters ()
 :precondition (and (at_2_4))
 :poss-precondition (and (bridge_1_4_2_4))
 :effect (and (not (at_2_4)) (at_1_4))
)

(:action move_2_4_3_4
 :parameters ()
 :precondition (and (at_2_4))
 :effect (and (not (at_2_4)) (at_3_4))
)

(:action move_2_4_2_3
 :parameters ()
 :precondition (and (at_2_4))
 :effect (and (not (at_2_4)) (at_2_3))
)

(:action move_2_4_2_5
 :parameters ()
 :precondition (and (at_2_4))
 :effect (and (not (at_2_4)) (at_2_5))
)

(:action move_2_5_1_5
 :parameters ()
 :precondition (and (at_2_5))
 :poss-precondition (and (bridge_1_5_2_5))
 :effect (and (not (at_2_5)) (at_1_5))
)

(:action move_2_5_3_5
 :parameters ()
 :precondition (and (at_2_5))
 :poss-precondition (and (bridge_2_5_3_5))
 :effect (and (not (at_2_5)) (at_3_5))
)

(:action move_2_5_2_4
 :parameters ()
 :precondition (and (at_2_5))
 :effect (and (not (at_2_5)) (at_2_4))
)

(:action move_2_5_2_6
 :parameters ()
 :precondition (and (at_2_5))
 :poss-precondition (and (bridge_2_5_2_6))
 :effect (and (not (at_2_5)) (at_2_6))
)

(:action move_2_6_1_6
 :parameters ()
 :precondition (and (at_2_6))
 :poss-precondition (and (bridge_1_6_2_6))
 :effect (and (not (at_2_6)) (at_1_6))
)

(:action move_2_6_3_6
 :parameters ()
 :precondition (and (at_2_6))
 :effect (and (not (at_2_6)) (at_3_6))
)

(:action move_2_6_2_5
 :parameters ()
 :precondition (and (at_2_6))
 :poss-precondition (and (bridge_2_5_2_6))
 :effect (and (not (at_2_6)) (at_2_5))
)

(:action move_2_6_2_7
 :parameters ()
 :precondition (and (at_2_6))
 :effect (and (not (at_2_6)) (at_2_7))
)

(:action move_2_7_1_7
 :parameters ()
 :precondition (and (at_2_7))
 :poss-precondition (and (bridge_1_7_2_7))
 :effect (and (not (at_2_7)) (at_1_7))
)

(:action move_2_7_3_7
 :parameters ()
 :precondition (and (at_2_7))
 :effect (and (not (at_2_7)) (at_3_7))
)

(:action move_2_7_2_6
 :parameters ()
 :precondition (and (at_2_7))
 :effect (and (not (at_2_7)) (at_2_6))
)

(:action move_2_7_2_8
 :parameters ()
 :precondition (and (at_2_7))
 :poss-precondition (and (bridge_2_7_2_8))
 :effect (and (not (at_2_7)) (at_2_8))
)

(:action move_2_8_1_8
 :parameters ()
 :precondition (and (at_2_8))
 :effect (and (not (at_2_8)) (at_1_8))
)

(:action move_2_8_3_8
 :parameters ()
 :precondition (and (at_2_8))
 :effect (and (not (at_2_8)) (at_3_8))
)

(:action move_2_8_2_7
 :parameters ()
 :precondition (and (at_2_8))
 :poss-precondition (and (bridge_2_7_2_8))
 :effect (and (not (at_2_8)) (at_2_7))
)

(:action move_2_8_2_9
 :parameters ()
 :precondition (and (at_2_8))
 :poss-precondition (and (bridge_2_8_2_9))
 :effect (and (not (at_2_8)) (at_2_9))
)

(:action move_2_9_1_9
 :parameters ()
 :precondition (and (at_2_9))
 :effect (and (not (at_2_9)) (at_1_9))
)

(:action move_2_9_3_9
 :parameters ()
 :precondition (and (at_2_9))
 :poss-precondition (and (bridge_2_9_3_9))
 :effect (and (not (at_2_9)) (at_3_9))
)

(:action move_2_9_2_8
 :parameters ()
 :precondition (and (at_2_9))
 :poss-precondition (and (bridge_2_8_2_9))
 :effect (and (not (at_2_9)) (at_2_8))
)

(:action move_2_9_2_10
 :parameters ()
 :precondition (and (at_2_9))
 :effect (and (not (at_2_9)) (at_2_10))
)

(:action move_2_10_1_10
 :parameters ()
 :precondition (and (at_2_10))
 :effect (and (not (at_2_10)) (at_1_10))
)

(:action move_2_10_3_10
 :parameters ()
 :precondition (and (at_2_10))
 :effect (and (not (at_2_10)) (at_3_10))
)

(:action move_2_10_2_9
 :parameters ()
 :precondition (and (at_2_10))
 :effect (and (not (at_2_10)) (at_2_9))
)

(:action move_2_10_2_11
 :parameters ()
 :precondition (and (at_2_10))
 :poss-precondition (and (bridge_2_10_2_11))
 :effect (and (not (at_2_10)) (at_2_11))
)

(:action move_2_11_1_11
 :parameters ()
 :precondition (and (at_2_11))
 :effect (and (not (at_2_11)) (at_1_11))
)

(:action move_2_11_3_11
 :parameters ()
 :precondition (and (at_2_11))
 :poss-precondition (and (bridge_2_11_3_11))
 :effect (and (not (at_2_11)) (at_3_11))
)

(:action move_2_11_2_10
 :parameters ()
 :precondition (and (at_2_11))
 :poss-precondition (and (bridge_2_10_2_11))
 :effect (and (not (at_2_11)) (at_2_10))
)

(:action move_2_11_2_12
 :parameters ()
 :precondition (and (at_2_11))
 :poss-precondition (and (bridge_2_11_2_12))
 :effect (and (not (at_2_11)) (at_2_12))
)

(:action move_2_12_1_12
 :parameters ()
 :precondition (and (at_2_12))
 :effect (and (not (at_2_12)) (at_1_12))
)

(:action move_2_12_3_12
 :parameters ()
 :precondition (and (at_2_12))
 :poss-precondition (and (bridge_2_12_3_12))
 :effect (and (not (at_2_12)) (at_3_12))
)

(:action move_2_12_2_11
 :parameters ()
 :precondition (and (at_2_12))
 :poss-precondition (and (bridge_2_11_2_12))
 :effect (and (not (at_2_12)) (at_2_11))
)

(:action move_2_12_2_13
 :parameters ()
 :precondition (and (at_2_12))
 :effect (and (not (at_2_12)) (at_2_13))
)

(:action move_2_13_1_13
 :parameters ()
 :precondition (and (at_2_13))
 :effect (and (not (at_2_13)) (at_1_13))
)

(:action move_2_13_3_13
 :parameters ()
 :precondition (and (at_2_13))
 :poss-precondition (and (bridge_2_13_3_13))
 :effect (and (not (at_2_13)) (at_3_13))
)

(:action move_2_13_2_12
 :parameters ()
 :precondition (and (at_2_13))
 :effect (and (not (at_2_13)) (at_2_12))
)

(:action move_2_13_2_14
 :parameters ()
 :precondition (and (at_2_13))
 :effect (and (not (at_2_13)) (at_2_14))
)

(:action move_2_14_1_14
 :parameters ()
 :precondition (and (at_2_14))
 :poss-precondition (and (bridge_1_14_2_14))
 :effect (and (not (at_2_14)) (at_1_14))
)

(:action move_2_14_3_14
 :parameters ()
 :precondition (and (at_2_14))
 :poss-precondition (and (bridge_2_14_3_14))
 :effect (and (not (at_2_14)) (at_3_14))
)

(:action move_2_14_2_13
 :parameters ()
 :precondition (and (at_2_14))
 :effect (and (not (at_2_14)) (at_2_13))
)

(:action move_2_14_2_15
 :parameters ()
 :precondition (and (at_2_14))
 :poss-precondition (and (bridge_2_14_2_15))
 :effect (and (not (at_2_14)) (at_2_15))
)

(:action move_2_15_1_15
 :parameters ()
 :precondition (and (at_2_15))
 :poss-precondition (and (bridge_1_15_2_15))
 :effect (and (not (at_2_15)) (at_1_15))
)

(:action move_2_15_3_15
 :parameters ()
 :precondition (and (at_2_15))
 :poss-precondition (and (bridge_2_15_3_15))
 :effect (and (not (at_2_15)) (at_3_15))
)

(:action move_2_15_2_14
 :parameters ()
 :precondition (and (at_2_15))
 :poss-precondition (and (bridge_2_14_2_15))
 :effect (and (not (at_2_15)) (at_2_14))
)

(:action move_3_0_2_0
 :parameters ()
 :precondition (and (at_3_0))
 :poss-precondition (and (bridge_2_0_3_0))
 :effect (and (not (at_3_0)) (at_2_0))
)

(:action move_3_0_4_0
 :parameters ()
 :precondition (and (at_3_0))
 :poss-precondition (and (bridge_3_0_4_0))
 :effect (and (not (at_3_0)) (at_4_0))
)

(:action move_3_0_3_1
 :parameters ()
 :precondition (and (at_3_0))
 :effect (and (not (at_3_0)) (at_3_1))
)

(:action move_3_1_2_1
 :parameters ()
 :precondition (and (at_3_1))
 :poss-precondition (and (bridge_2_1_3_1))
 :effect (and (not (at_3_1)) (at_2_1))
)

(:action move_3_1_4_1
 :parameters ()
 :precondition (and (at_3_1))
 :poss-precondition (and (bridge_3_1_4_1))
 :effect (and (not (at_3_1)) (at_4_1))
)

(:action move_3_1_3_0
 :parameters ()
 :precondition (and (at_3_1))
 :effect (and (not (at_3_1)) (at_3_0))
)

(:action move_3_1_3_2
 :parameters ()
 :precondition (and (at_3_1))
 :poss-precondition (and (bridge_3_1_3_2))
 :effect (and (not (at_3_1)) (at_3_2))
)

(:action move_3_2_2_2
 :parameters ()
 :precondition (and (at_3_2))
 :poss-precondition (and (bridge_2_2_3_2))
 :effect (and (not (at_3_2)) (at_2_2))
)

(:action move_3_2_4_2
 :parameters ()
 :precondition (and (at_3_2))
 :effect (and (not (at_3_2)) (at_4_2))
)

(:action move_3_2_3_1
 :parameters ()
 :precondition (and (at_3_2))
 :poss-precondition (and (bridge_3_1_3_2))
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
 :effect (and (not (at_3_3)) (at_2_3))
)

(:action move_3_3_4_3
 :parameters ()
 :precondition (and (at_3_3))
 :effect (and (not (at_3_3)) (at_4_3))
)

(:action move_3_3_3_2
 :parameters ()
 :precondition (and (at_3_3))
 :effect (and (not (at_3_3)) (at_3_2))
)

(:action move_3_3_3_4
 :parameters ()
 :precondition (and (at_3_3))
 :poss-precondition (and (bridge_3_3_3_4))
 :effect (and (not (at_3_3)) (at_3_4))
)

(:action move_3_4_2_4
 :parameters ()
 :precondition (and (at_3_4))
 :effect (and (not (at_3_4)) (at_2_4))
)

(:action move_3_4_4_4
 :parameters ()
 :precondition (and (at_3_4))
 :poss-precondition (and (bridge_3_4_4_4))
 :effect (and (not (at_3_4)) (at_4_4))
)

(:action move_3_4_3_3
 :parameters ()
 :precondition (and (at_3_4))
 :poss-precondition (and (bridge_3_3_3_4))
 :effect (and (not (at_3_4)) (at_3_3))
)

(:action move_3_4_3_5
 :parameters ()
 :precondition (and (at_3_4))
 :poss-precondition (and (bridge_3_4_3_5))
 :effect (and (not (at_3_4)) (at_3_5))
)

(:action move_3_5_2_5
 :parameters ()
 :precondition (and (at_3_5))
 :poss-precondition (and (bridge_2_5_3_5))
 :effect (and (not (at_3_5)) (at_2_5))
)

(:action move_3_5_4_5
 :parameters ()
 :precondition (and (at_3_5))
 :poss-precondition (and (bridge_3_5_4_5))
 :effect (and (not (at_3_5)) (at_4_5))
)

(:action move_3_5_3_4
 :parameters ()
 :precondition (and (at_3_5))
 :poss-precondition (and (bridge_3_4_3_5))
 :effect (and (not (at_3_5)) (at_3_4))
)

(:action move_3_5_3_6
 :parameters ()
 :precondition (and (at_3_5))
 :effect (and (not (at_3_5)) (at_3_6))
)

(:action move_3_6_2_6
 :parameters ()
 :precondition (and (at_3_6))
 :effect (and (not (at_3_6)) (at_2_6))
)

(:action move_3_6_4_6
 :parameters ()
 :precondition (and (at_3_6))
 :effect (and (not (at_3_6)) (at_4_6))
)

(:action move_3_6_3_5
 :parameters ()
 :precondition (and (at_3_6))
 :effect (and (not (at_3_6)) (at_3_5))
)

(:action move_3_6_3_7
 :parameters ()
 :precondition (and (at_3_6))
 :effect (and (not (at_3_6)) (at_3_7))
)

(:action move_3_7_2_7
 :parameters ()
 :precondition (and (at_3_7))
 :effect (and (not (at_3_7)) (at_2_7))
)

(:action move_3_7_4_7
 :parameters ()
 :precondition (and (at_3_7))
 :poss-precondition (and (bridge_3_7_4_7))
 :effect (and (not (at_3_7)) (at_4_7))
)

(:action move_3_7_3_6
 :parameters ()
 :precondition (and (at_3_7))
 :effect (and (not (at_3_7)) (at_3_6))
)

(:action move_3_7_3_8
 :parameters ()
 :precondition (and (at_3_7))
 :poss-precondition (and (bridge_3_7_3_8))
 :effect (and (not (at_3_7)) (at_3_8))
)

(:action move_3_8_2_8
 :parameters ()
 :precondition (and (at_3_8))
 :effect (and (not (at_3_8)) (at_2_8))
)

(:action move_3_8_4_8
 :parameters ()
 :precondition (and (at_3_8))
 :poss-precondition (and (bridge_3_8_4_8))
 :effect (and (not (at_3_8)) (at_4_8))
)

(:action move_3_8_3_7
 :parameters ()
 :precondition (and (at_3_8))
 :poss-precondition (and (bridge_3_7_3_8))
 :effect (and (not (at_3_8)) (at_3_7))
)

(:action move_3_8_3_9
 :parameters ()
 :precondition (and (at_3_8))
 :poss-precondition (and (bridge_3_8_3_9))
 :effect (and (not (at_3_8)) (at_3_9))
)

(:action move_3_9_2_9
 :parameters ()
 :precondition (and (at_3_9))
 :poss-precondition (and (bridge_2_9_3_9))
 :effect (and (not (at_3_9)) (at_2_9))
)

(:action move_3_9_4_9
 :parameters ()
 :precondition (and (at_3_9))
 :poss-precondition (and (bridge_3_9_4_9))
 :effect (and (not (at_3_9)) (at_4_9))
)

(:action move_3_9_3_8
 :parameters ()
 :precondition (and (at_3_9))
 :poss-precondition (and (bridge_3_8_3_9))
 :effect (and (not (at_3_9)) (at_3_8))
)

(:action move_3_9_3_10
 :parameters ()
 :precondition (and (at_3_9))
 :poss-precondition (and (bridge_3_9_3_10))
 :effect (and (not (at_3_9)) (at_3_10))
)

(:action move_3_10_2_10
 :parameters ()
 :precondition (and (at_3_10))
 :effect (and (not (at_3_10)) (at_2_10))
)

(:action move_3_10_4_10
 :parameters ()
 :precondition (and (at_3_10))
 :effect (and (not (at_3_10)) (at_4_10))
)

(:action move_3_10_3_9
 :parameters ()
 :precondition (and (at_3_10))
 :poss-precondition (and (bridge_3_9_3_10))
 :effect (and (not (at_3_10)) (at_3_9))
)

(:action move_3_10_3_11
 :parameters ()
 :precondition (and (at_3_10))
 :effect (and (not (at_3_10)) (at_3_11))
)

(:action move_3_11_2_11
 :parameters ()
 :precondition (and (at_3_11))
 :poss-precondition (and (bridge_2_11_3_11))
 :effect (and (not (at_3_11)) (at_2_11))
)

(:action move_3_11_4_11
 :parameters ()
 :precondition (and (at_3_11))
 :poss-precondition (and (bridge_3_11_4_11))
 :effect (and (not (at_3_11)) (at_4_11))
)

(:action move_3_11_3_10
 :parameters ()
 :precondition (and (at_3_11))
 :effect (and (not (at_3_11)) (at_3_10))
)

(:action move_3_11_3_12
 :parameters ()
 :precondition (and (at_3_11))
 :effect (and (not (at_3_11)) (at_3_12))
)

(:action move_3_12_2_12
 :parameters ()
 :precondition (and (at_3_12))
 :poss-precondition (and (bridge_2_12_3_12))
 :effect (and (not (at_3_12)) (at_2_12))
)

(:action move_3_12_4_12
 :parameters ()
 :precondition (and (at_3_12))
 :poss-precondition (and (bridge_3_12_4_12))
 :effect (and (not (at_3_12)) (at_4_12))
)

(:action move_3_12_3_11
 :parameters ()
 :precondition (and (at_3_12))
 :effect (and (not (at_3_12)) (at_3_11))
)

(:action move_3_12_3_13
 :parameters ()
 :precondition (and (at_3_12))
 :poss-precondition (and (bridge_3_12_3_13))
 :effect (and (not (at_3_12)) (at_3_13))
)

(:action move_3_13_2_13
 :parameters ()
 :precondition (and (at_3_13))
 :poss-precondition (and (bridge_2_13_3_13))
 :effect (and (not (at_3_13)) (at_2_13))
)

(:action move_3_13_4_13
 :parameters ()
 :precondition (and (at_3_13))
 :effect (and (not (at_3_13)) (at_4_13))
)

(:action move_3_13_3_12
 :parameters ()
 :precondition (and (at_3_13))
 :poss-precondition (and (bridge_3_12_3_13))
 :effect (and (not (at_3_13)) (at_3_12))
)

(:action move_3_13_3_14
 :parameters ()
 :precondition (and (at_3_13))
 :effect (and (not (at_3_13)) (at_3_14))
)

(:action move_3_14_2_14
 :parameters ()
 :precondition (and (at_3_14))
 :poss-precondition (and (bridge_2_14_3_14))
 :effect (and (not (at_3_14)) (at_2_14))
)

(:action move_3_14_4_14
 :parameters ()
 :precondition (and (at_3_14))
 :effect (and (not (at_3_14)) (at_4_14))
)

(:action move_3_14_3_13
 :parameters ()
 :precondition (and (at_3_14))
 :effect (and (not (at_3_14)) (at_3_13))
)

(:action move_3_14_3_15
 :parameters ()
 :precondition (and (at_3_14))
 :poss-precondition (and (bridge_3_14_3_15))
 :effect (and (not (at_3_14)) (at_3_15))
)

(:action move_3_15_2_15
 :parameters ()
 :precondition (and (at_3_15))
 :poss-precondition (and (bridge_2_15_3_15))
 :effect (and (not (at_3_15)) (at_2_15))
)

(:action move_3_15_4_15
 :parameters ()
 :precondition (and (at_3_15))
 :effect (and (not (at_3_15)) (at_4_15))
)

(:action move_3_15_3_14
 :parameters ()
 :precondition (and (at_3_15))
 :poss-precondition (and (bridge_3_14_3_15))
 :effect (and (not (at_3_15)) (at_3_14))
)

(:action move_4_0_3_0
 :parameters ()
 :precondition (and (at_4_0))
 :poss-precondition (and (bridge_3_0_4_0))
 :effect (and (not (at_4_0)) (at_3_0))
)

(:action move_4_0_5_0
 :parameters ()
 :precondition (and (at_4_0))
 :poss-precondition (and (bridge_4_0_5_0))
 :effect (and (not (at_4_0)) (at_5_0))
)

(:action move_4_0_4_1
 :parameters ()
 :precondition (and (at_4_0))
 :effect (and (not (at_4_0)) (at_4_1))
)

(:action move_4_1_3_1
 :parameters ()
 :precondition (and (at_4_1))
 :poss-precondition (and (bridge_3_1_4_1))
 :effect (and (not (at_4_1)) (at_3_1))
)

(:action move_4_1_5_1
 :parameters ()
 :precondition (and (at_4_1))
 :effect (and (not (at_4_1)) (at_5_1))
)

(:action move_4_1_4_0
 :parameters ()
 :precondition (and (at_4_1))
 :effect (and (not (at_4_1)) (at_4_0))
)

(:action move_4_1_4_2
 :parameters ()
 :precondition (and (at_4_1))
 :effect (and (not (at_4_1)) (at_4_2))
)

(:action move_4_2_3_2
 :parameters ()
 :precondition (and (at_4_2))
 :effect (and (not (at_4_2)) (at_3_2))
)

(:action move_4_2_5_2
 :parameters ()
 :precondition (and (at_4_2))
 :poss-precondition (and (bridge_4_2_5_2))
 :effect (and (not (at_4_2)) (at_5_2))
)

(:action move_4_2_4_1
 :parameters ()
 :precondition (and (at_4_2))
 :effect (and (not (at_4_2)) (at_4_1))
)

(:action move_4_2_4_3
 :parameters ()
 :precondition (and (at_4_2))
 :poss-precondition (and (bridge_4_2_4_3))
 :effect (and (not (at_4_2)) (at_4_3))
)

(:action move_4_3_3_3
 :parameters ()
 :precondition (and (at_4_3))
 :effect (and (not (at_4_3)) (at_3_3))
)

(:action move_4_3_5_3
 :parameters ()
 :precondition (and (at_4_3))
 :effect (and (not (at_4_3)) (at_5_3))
)

(:action move_4_3_4_2
 :parameters ()
 :precondition (and (at_4_3))
 :poss-precondition (and (bridge_4_2_4_3))
 :effect (and (not (at_4_3)) (at_4_2))
)

(:action move_4_3_4_4
 :parameters ()
 :precondition (and (at_4_3))
 :poss-precondition (and (bridge_4_3_4_4))
 :effect (and (not (at_4_3)) (at_4_4))
)

(:action move_4_4_3_4
 :parameters ()
 :precondition (and (at_4_4))
 :poss-precondition (and (bridge_3_4_4_4))
 :effect (and (not (at_4_4)) (at_3_4))
)

(:action move_4_4_5_4
 :parameters ()
 :precondition (and (at_4_4))
 :poss-precondition (and (bridge_4_4_5_4))
 :effect (and (not (at_4_4)) (at_5_4))
)

(:action move_4_4_4_3
 :parameters ()
 :precondition (and (at_4_4))
 :poss-precondition (and (bridge_4_3_4_4))
 :effect (and (not (at_4_4)) (at_4_3))
)

(:action move_4_4_4_5
 :parameters ()
 :precondition (and (at_4_4))
 :effect (and (not (at_4_4)) (at_4_5))
)

(:action move_4_5_3_5
 :parameters ()
 :precondition (and (at_4_5))
 :poss-precondition (and (bridge_3_5_4_5))
 :effect (and (not (at_4_5)) (at_3_5))
)

(:action move_4_5_5_5
 :parameters ()
 :precondition (and (at_4_5))
 :poss-precondition (and (bridge_4_5_5_5))
 :effect (and (not (at_4_5)) (at_5_5))
)

(:action move_4_5_4_4
 :parameters ()
 :precondition (and (at_4_5))
 :effect (and (not (at_4_5)) (at_4_4))
)

(:action move_4_5_4_6
 :parameters ()
 :precondition (and (at_4_5))
 :poss-precondition (and (bridge_4_5_4_6))
 :effect (and (not (at_4_5)) (at_4_6))
)

(:action move_4_6_3_6
 :parameters ()
 :precondition (and (at_4_6))
 :effect (and (not (at_4_6)) (at_3_6))
)

(:action move_4_6_5_6
 :parameters ()
 :precondition (and (at_4_6))
 :poss-precondition (and (bridge_4_6_5_6))
 :effect (and (not (at_4_6)) (at_5_6))
)

(:action move_4_6_4_5
 :parameters ()
 :precondition (and (at_4_6))
 :poss-precondition (and (bridge_4_5_4_6))
 :effect (and (not (at_4_6)) (at_4_5))
)

(:action move_4_6_4_7
 :parameters ()
 :precondition (and (at_4_6))
 :poss-precondition (and (bridge_4_6_4_7))
 :effect (and (not (at_4_6)) (at_4_7))
)

(:action move_4_7_3_7
 :parameters ()
 :precondition (and (at_4_7))
 :poss-precondition (and (bridge_3_7_4_7))
 :effect (and (not (at_4_7)) (at_3_7))
)

(:action move_4_7_5_7
 :parameters ()
 :precondition (and (at_4_7))
 :poss-precondition (and (bridge_4_7_5_7))
 :effect (and (not (at_4_7)) (at_5_7))
)

(:action move_4_7_4_6
 :parameters ()
 :precondition (and (at_4_7))
 :poss-precondition (and (bridge_4_6_4_7))
 :effect (and (not (at_4_7)) (at_4_6))
)

(:action move_4_7_4_8
 :parameters ()
 :precondition (and (at_4_7))
 :effect (and (not (at_4_7)) (at_4_8))
)

(:action move_4_8_3_8
 :parameters ()
 :precondition (and (at_4_8))
 :poss-precondition (and (bridge_3_8_4_8))
 :effect (and (not (at_4_8)) (at_3_8))
)

(:action move_4_8_5_8
 :parameters ()
 :precondition (and (at_4_8))
 :effect (and (not (at_4_8)) (at_5_8))
)

(:action move_4_8_4_7
 :parameters ()
 :precondition (and (at_4_8))
 :effect (and (not (at_4_8)) (at_4_7))
)

(:action move_4_8_4_9
 :parameters ()
 :precondition (and (at_4_8))
 :poss-precondition (and (bridge_4_8_4_9))
 :effect (and (not (at_4_8)) (at_4_9))
)

(:action move_4_9_3_9
 :parameters ()
 :precondition (and (at_4_9))
 :poss-precondition (and (bridge_3_9_4_9))
 :effect (and (not (at_4_9)) (at_3_9))
)

(:action move_4_9_5_9
 :parameters ()
 :precondition (and (at_4_9))
 :effect (and (not (at_4_9)) (at_5_9))
)

(:action move_4_9_4_8
 :parameters ()
 :precondition (and (at_4_9))
 :poss-precondition (and (bridge_4_8_4_9))
 :effect (and (not (at_4_9)) (at_4_8))
)

(:action move_4_9_4_10
 :parameters ()
 :precondition (and (at_4_9))
 :poss-precondition (and (bridge_4_9_4_10))
 :effect (and (not (at_4_9)) (at_4_10))
)

(:action move_4_10_3_10
 :parameters ()
 :precondition (and (at_4_10))
 :effect (and (not (at_4_10)) (at_3_10))
)

(:action move_4_10_5_10
 :parameters ()
 :precondition (and (at_4_10))
 :poss-precondition (and (bridge_4_10_5_10))
 :effect (and (not (at_4_10)) (at_5_10))
)

(:action move_4_10_4_9
 :parameters ()
 :precondition (and (at_4_10))
 :poss-precondition (and (bridge_4_9_4_10))
 :effect (and (not (at_4_10)) (at_4_9))
)

(:action move_4_10_4_11
 :parameters ()
 :precondition (and (at_4_10))
 :poss-precondition (and (bridge_4_10_4_11))
 :effect (and (not (at_4_10)) (at_4_11))
)

(:action move_4_11_3_11
 :parameters ()
 :precondition (and (at_4_11))
 :poss-precondition (and (bridge_3_11_4_11))
 :effect (and (not (at_4_11)) (at_3_11))
)

(:action move_4_11_5_11
 :parameters ()
 :precondition (and (at_4_11))
 :poss-precondition (and (bridge_4_11_5_11))
 :effect (and (not (at_4_11)) (at_5_11))
)

(:action move_4_11_4_10
 :parameters ()
 :precondition (and (at_4_11))
 :poss-precondition (and (bridge_4_10_4_11))
 :effect (and (not (at_4_11)) (at_4_10))
)

(:action move_4_11_4_12
 :parameters ()
 :precondition (and (at_4_11))
 :poss-precondition (and (bridge_4_11_4_12))
 :effect (and (not (at_4_11)) (at_4_12))
)

(:action move_4_12_3_12
 :parameters ()
 :precondition (and (at_4_12))
 :poss-precondition (and (bridge_3_12_4_12))
 :effect (and (not (at_4_12)) (at_3_12))
)

(:action move_4_12_5_12
 :parameters ()
 :precondition (and (at_4_12))
 :poss-precondition (and (bridge_4_12_5_12))
 :effect (and (not (at_4_12)) (at_5_12))
)

(:action move_4_12_4_11
 :parameters ()
 :precondition (and (at_4_12))
 :poss-precondition (and (bridge_4_11_4_12))
 :effect (and (not (at_4_12)) (at_4_11))
)

(:action move_4_12_4_13
 :parameters ()
 :precondition (and (at_4_12))
 :poss-precondition (and (bridge_4_12_4_13))
 :effect (and (not (at_4_12)) (at_4_13))
)

(:action move_4_13_3_13
 :parameters ()
 :precondition (and (at_4_13))
 :effect (and (not (at_4_13)) (at_3_13))
)

(:action move_4_13_5_13
 :parameters ()
 :precondition (and (at_4_13))
 :effect (and (not (at_4_13)) (at_5_13))
)

(:action move_4_13_4_12
 :parameters ()
 :precondition (and (at_4_13))
 :poss-precondition (and (bridge_4_12_4_13))
 :effect (and (not (at_4_13)) (at_4_12))
)

(:action move_4_13_4_14
 :parameters ()
 :precondition (and (at_4_13))
 :effect (and (not (at_4_13)) (at_4_14))
)

(:action move_4_14_3_14
 :parameters ()
 :precondition (and (at_4_14))
 :effect (and (not (at_4_14)) (at_3_14))
)

(:action move_4_14_5_14
 :parameters ()
 :precondition (and (at_4_14))
 :effect (and (not (at_4_14)) (at_5_14))
)

(:action move_4_14_4_13
 :parameters ()
 :precondition (and (at_4_14))
 :effect (and (not (at_4_14)) (at_4_13))
)

(:action move_4_14_4_15
 :parameters ()
 :precondition (and (at_4_14))
 :poss-precondition (and (bridge_4_14_4_15))
 :effect (and (not (at_4_14)) (at_4_15))
)

(:action move_4_15_3_15
 :parameters ()
 :precondition (and (at_4_15))
 :effect (and (not (at_4_15)) (at_3_15))
)

(:action move_4_15_5_15
 :parameters ()
 :precondition (and (at_4_15))
 :poss-precondition (and (bridge_4_15_5_15))
 :effect (and (not (at_4_15)) (at_5_15))
)

(:action move_4_15_4_14
 :parameters ()
 :precondition (and (at_4_15))
 :poss-precondition (and (bridge_4_14_4_15))
 :effect (and (not (at_4_15)) (at_4_14))
)

(:action move_5_0_4_0
 :parameters ()
 :precondition (and (at_5_0))
 :poss-precondition (and (bridge_4_0_5_0))
 :effect (and (not (at_5_0)) (at_4_0))
)

(:action move_5_0_6_0
 :parameters ()
 :precondition (and (at_5_0))
 :poss-precondition (and (bridge_5_0_6_0))
 :effect (and (not (at_5_0)) (at_6_0))
)

(:action move_5_0_5_1
 :parameters ()
 :precondition (and (at_5_0))
 :poss-precondition (and (bridge_5_0_5_1))
 :effect (and (not (at_5_0)) (at_5_1))
)

(:action move_5_1_4_1
 :parameters ()
 :precondition (and (at_5_1))
 :effect (and (not (at_5_1)) (at_4_1))
)

(:action move_5_1_6_1
 :parameters ()
 :precondition (and (at_5_1))
 :poss-precondition (and (bridge_5_1_6_1))
 :effect (and (not (at_5_1)) (at_6_1))
)

(:action move_5_1_5_0
 :parameters ()
 :precondition (and (at_5_1))
 :poss-precondition (and (bridge_5_0_5_1))
 :effect (and (not (at_5_1)) (at_5_0))
)

(:action move_5_1_5_2
 :parameters ()
 :precondition (and (at_5_1))
 :poss-precondition (and (bridge_5_1_5_2))
 :effect (and (not (at_5_1)) (at_5_2))
)

(:action move_5_2_4_2
 :parameters ()
 :precondition (and (at_5_2))
 :poss-precondition (and (bridge_4_2_5_2))
 :effect (and (not (at_5_2)) (at_4_2))
)

(:action move_5_2_6_2
 :parameters ()
 :precondition (and (at_5_2))
 :poss-precondition (and (bridge_5_2_6_2))
 :effect (and (not (at_5_2)) (at_6_2))
)

(:action move_5_2_5_1
 :parameters ()
 :precondition (and (at_5_2))
 :poss-precondition (and (bridge_5_1_5_2))
 :effect (and (not (at_5_2)) (at_5_1))
)

(:action move_5_2_5_3
 :parameters ()
 :precondition (and (at_5_2))
 :poss-precondition (and (bridge_5_2_5_3))
 :effect (and (not (at_5_2)) (at_5_3))
)

(:action move_5_3_4_3
 :parameters ()
 :precondition (and (at_5_3))
 :effect (and (not (at_5_3)) (at_4_3))
)

(:action move_5_3_6_3
 :parameters ()
 :precondition (and (at_5_3))
 :effect (and (not (at_5_3)) (at_6_3))
)

(:action move_5_3_5_2
 :parameters ()
 :precondition (and (at_5_3))
 :poss-precondition (and (bridge_5_2_5_3))
 :effect (and (not (at_5_3)) (at_5_2))
)

(:action move_5_3_5_4
 :parameters ()
 :precondition (and (at_5_3))
 :poss-precondition (and (bridge_5_3_5_4))
 :effect (and (not (at_5_3)) (at_5_4))
)

(:action move_5_4_4_4
 :parameters ()
 :precondition (and (at_5_4))
 :poss-precondition (and (bridge_4_4_5_4))
 :effect (and (not (at_5_4)) (at_4_4))
)

(:action move_5_4_6_4
 :parameters ()
 :precondition (and (at_5_4))
 :effect (and (not (at_5_4)) (at_6_4))
)

(:action move_5_4_5_3
 :parameters ()
 :precondition (and (at_5_4))
 :poss-precondition (and (bridge_5_3_5_4))
 :effect (and (not (at_5_4)) (at_5_3))
)

(:action move_5_4_5_5
 :parameters ()
 :precondition (and (at_5_4))
 :effect (and (not (at_5_4)) (at_5_5))
)

(:action move_5_5_4_5
 :parameters ()
 :precondition (and (at_5_5))
 :poss-precondition (and (bridge_4_5_5_5))
 :effect (and (not (at_5_5)) (at_4_5))
)

(:action move_5_5_6_5
 :parameters ()
 :precondition (and (at_5_5))
 :effect (and (not (at_5_5)) (at_6_5))
)

(:action move_5_5_5_4
 :parameters ()
 :precondition (and (at_5_5))
 :effect (and (not (at_5_5)) (at_5_4))
)

(:action move_5_5_5_6
 :parameters ()
 :precondition (and (at_5_5))
 :effect (and (not (at_5_5)) (at_5_6))
)

(:action move_5_6_4_6
 :parameters ()
 :precondition (and (at_5_6))
 :poss-precondition (and (bridge_4_6_5_6))
 :effect (and (not (at_5_6)) (at_4_6))
)

(:action move_5_6_6_6
 :parameters ()
 :precondition (and (at_5_6))
 :effect (and (not (at_5_6)) (at_6_6))
)

(:action move_5_6_5_5
 :parameters ()
 :precondition (and (at_5_6))
 :effect (and (not (at_5_6)) (at_5_5))
)

(:action move_5_6_5_7
 :parameters ()
 :precondition (and (at_5_6))
 :effect (and (not (at_5_6)) (at_5_7))
)

(:action move_5_7_4_7
 :parameters ()
 :precondition (and (at_5_7))
 :poss-precondition (and (bridge_4_7_5_7))
 :effect (and (not (at_5_7)) (at_4_7))
)

(:action move_5_7_6_7
 :parameters ()
 :precondition (and (at_5_7))
 :effect (and (not (at_5_7)) (at_6_7))
)

(:action move_5_7_5_6
 :parameters ()
 :precondition (and (at_5_7))
 :effect (and (not (at_5_7)) (at_5_6))
)

(:action move_5_7_5_8
 :parameters ()
 :precondition (and (at_5_7))
 :effect (and (not (at_5_7)) (at_5_8))
)

(:action move_5_8_4_8
 :parameters ()
 :precondition (and (at_5_8))
 :effect (and (not (at_5_8)) (at_4_8))
)

(:action move_5_8_6_8
 :parameters ()
 :precondition (and (at_5_8))
 :poss-precondition (and (bridge_5_8_6_8))
 :effect (and (not (at_5_8)) (at_6_8))
)

(:action move_5_8_5_7
 :parameters ()
 :precondition (and (at_5_8))
 :effect (and (not (at_5_8)) (at_5_7))
)

(:action move_5_8_5_9
 :parameters ()
 :precondition (and (at_5_8))
 :effect (and (not (at_5_8)) (at_5_9))
)

(:action move_5_9_4_9
 :parameters ()
 :precondition (and (at_5_9))
 :effect (and (not (at_5_9)) (at_4_9))
)

(:action move_5_9_6_9
 :parameters ()
 :precondition (and (at_5_9))
 :effect (and (not (at_5_9)) (at_6_9))
)

(:action move_5_9_5_8
 :parameters ()
 :precondition (and (at_5_9))
 :effect (and (not (at_5_9)) (at_5_8))
)

(:action move_5_9_5_10
 :parameters ()
 :precondition (and (at_5_9))
 :poss-precondition (and (bridge_5_9_5_10))
 :effect (and (not (at_5_9)) (at_5_10))
)

(:action move_5_10_4_10
 :parameters ()
 :precondition (and (at_5_10))
 :poss-precondition (and (bridge_4_10_5_10))
 :effect (and (not (at_5_10)) (at_4_10))
)

(:action move_5_10_6_10
 :parameters ()
 :precondition (and (at_5_10))
 :effect (and (not (at_5_10)) (at_6_10))
)

(:action move_5_10_5_9
 :parameters ()
 :precondition (and (at_5_10))
 :poss-precondition (and (bridge_5_9_5_10))
 :effect (and (not (at_5_10)) (at_5_9))
)

(:action move_5_10_5_11
 :parameters ()
 :precondition (and (at_5_10))
 :effect (and (not (at_5_10)) (at_5_11))
)

(:action move_5_11_4_11
 :parameters ()
 :precondition (and (at_5_11))
 :poss-precondition (and (bridge_4_11_5_11))
 :effect (and (not (at_5_11)) (at_4_11))
)

(:action move_5_11_6_11
 :parameters ()
 :precondition (and (at_5_11))
 :effect (and (not (at_5_11)) (at_6_11))
)

(:action move_5_11_5_10
 :parameters ()
 :precondition (and (at_5_11))
 :effect (and (not (at_5_11)) (at_5_10))
)

(:action move_5_11_5_12
 :parameters ()
 :precondition (and (at_5_11))
 :poss-precondition (and (bridge_5_11_5_12))
 :effect (and (not (at_5_11)) (at_5_12))
)

(:action move_5_12_4_12
 :parameters ()
 :precondition (and (at_5_12))
 :poss-precondition (and (bridge_4_12_5_12))
 :effect (and (not (at_5_12)) (at_4_12))
)

(:action move_5_12_6_12
 :parameters ()
 :precondition (and (at_5_12))
 :poss-precondition (and (bridge_5_12_6_12))
 :effect (and (not (at_5_12)) (at_6_12))
)

(:action move_5_12_5_11
 :parameters ()
 :precondition (and (at_5_12))
 :poss-precondition (and (bridge_5_11_5_12))
 :effect (and (not (at_5_12)) (at_5_11))
)

(:action move_5_12_5_13
 :parameters ()
 :precondition (and (at_5_12))
 :effect (and (not (at_5_12)) (at_5_13))
)

(:action move_5_13_4_13
 :parameters ()
 :precondition (and (at_5_13))
 :effect (and (not (at_5_13)) (at_4_13))
)

(:action move_5_13_6_13
 :parameters ()
 :precondition (and (at_5_13))
 :poss-precondition (and (bridge_5_13_6_13))
 :effect (and (not (at_5_13)) (at_6_13))
)

(:action move_5_13_5_12
 :parameters ()
 :precondition (and (at_5_13))
 :effect (and (not (at_5_13)) (at_5_12))
)

(:action move_5_13_5_14
 :parameters ()
 :precondition (and (at_5_13))
 :poss-precondition (and (bridge_5_13_5_14))
 :effect (and (not (at_5_13)) (at_5_14))
)

(:action move_5_14_4_14
 :parameters ()
 :precondition (and (at_5_14))
 :effect (and (not (at_5_14)) (at_4_14))
)

(:action move_5_14_6_14
 :parameters ()
 :precondition (and (at_5_14))
 :poss-precondition (and (bridge_5_14_6_14))
 :effect (and (not (at_5_14)) (at_6_14))
)

(:action move_5_14_5_13
 :parameters ()
 :precondition (and (at_5_14))
 :poss-precondition (and (bridge_5_13_5_14))
 :effect (and (not (at_5_14)) (at_5_13))
)

(:action move_5_14_5_15
 :parameters ()
 :precondition (and (at_5_14))
 :effect (and (not (at_5_14)) (at_5_15))
)

(:action move_5_15_4_15
 :parameters ()
 :precondition (and (at_5_15))
 :poss-precondition (and (bridge_4_15_5_15))
 :effect (and (not (at_5_15)) (at_4_15))
)

(:action move_5_15_6_15
 :parameters ()
 :precondition (and (at_5_15))
 :poss-precondition (and (bridge_5_15_6_15))
 :effect (and (not (at_5_15)) (at_6_15))
)

(:action move_5_15_5_14
 :parameters ()
 :precondition (and (at_5_15))
 :effect (and (not (at_5_15)) (at_5_14))
)

(:action move_6_0_5_0
 :parameters ()
 :precondition (and (at_6_0))
 :poss-precondition (and (bridge_5_0_6_0))
 :effect (and (not (at_6_0)) (at_5_0))
)

(:action move_6_0_7_0
 :parameters ()
 :precondition (and (at_6_0))
 :effect (and (not (at_6_0)) (at_7_0))
)

(:action move_6_0_6_1
 :parameters ()
 :precondition (and (at_6_0))
 :effect (and (not (at_6_0)) (at_6_1))
)

(:action move_6_1_5_1
 :parameters ()
 :precondition (and (at_6_1))
 :poss-precondition (and (bridge_5_1_6_1))
 :effect (and (not (at_6_1)) (at_5_1))
)

(:action move_6_1_7_1
 :parameters ()
 :precondition (and (at_6_1))
 :effect (and (not (at_6_1)) (at_7_1))
)

(:action move_6_1_6_0
 :parameters ()
 :precondition (and (at_6_1))
 :effect (and (not (at_6_1)) (at_6_0))
)

(:action move_6_1_6_2
 :parameters ()
 :precondition (and (at_6_1))
 :effect (and (not (at_6_1)) (at_6_2))
)

(:action move_6_2_5_2
 :parameters ()
 :precondition (and (at_6_2))
 :poss-precondition (and (bridge_5_2_6_2))
 :effect (and (not (at_6_2)) (at_5_2))
)

(:action move_6_2_7_2
 :parameters ()
 :precondition (and (at_6_2))
 :effect (and (not (at_6_2)) (at_7_2))
)

(:action move_6_2_6_1
 :parameters ()
 :precondition (and (at_6_2))
 :effect (and (not (at_6_2)) (at_6_1))
)

(:action move_6_2_6_3
 :parameters ()
 :precondition (and (at_6_2))
 :effect (and (not (at_6_2)) (at_6_3))
)

(:action move_6_3_5_3
 :parameters ()
 :precondition (and (at_6_3))
 :effect (and (not (at_6_3)) (at_5_3))
)

(:action move_6_3_7_3
 :parameters ()
 :precondition (and (at_6_3))
 :effect (and (not (at_6_3)) (at_7_3))
)

(:action move_6_3_6_2
 :parameters ()
 :precondition (and (at_6_3))
 :effect (and (not (at_6_3)) (at_6_2))
)

(:action move_6_3_6_4
 :parameters ()
 :precondition (and (at_6_3))
 :effect (and (not (at_6_3)) (at_6_4))
)

(:action move_6_4_5_4
 :parameters ()
 :precondition (and (at_6_4))
 :effect (and (not (at_6_4)) (at_5_4))
)

(:action move_6_4_7_4
 :parameters ()
 :precondition (and (at_6_4))
 :effect (and (not (at_6_4)) (at_7_4))
)

(:action move_6_4_6_3
 :parameters ()
 :precondition (and (at_6_4))
 :effect (and (not (at_6_4)) (at_6_3))
)

(:action move_6_4_6_5
 :parameters ()
 :precondition (and (at_6_4))
 :effect (and (not (at_6_4)) (at_6_5))
)

(:action move_6_5_5_5
 :parameters ()
 :precondition (and (at_6_5))
 :effect (and (not (at_6_5)) (at_5_5))
)

(:action move_6_5_7_5
 :parameters ()
 :precondition (and (at_6_5))
 :poss-precondition (and (bridge_6_5_7_5))
 :effect (and (not (at_6_5)) (at_7_5))
)

(:action move_6_5_6_4
 :parameters ()
 :precondition (and (at_6_5))
 :effect (and (not (at_6_5)) (at_6_4))
)

(:action move_6_5_6_6
 :parameters ()
 :precondition (and (at_6_5))
 :poss-precondition (and (bridge_6_5_6_6))
 :effect (and (not (at_6_5)) (at_6_6))
)

(:action move_6_6_5_6
 :parameters ()
 :precondition (and (at_6_6))
 :effect (and (not (at_6_6)) (at_5_6))
)

(:action move_6_6_7_6
 :parameters ()
 :precondition (and (at_6_6))
 :poss-precondition (and (bridge_6_6_7_6))
 :effect (and (not (at_6_6)) (at_7_6))
)

(:action move_6_6_6_5
 :parameters ()
 :precondition (and (at_6_6))
 :poss-precondition (and (bridge_6_5_6_6))
 :effect (and (not (at_6_6)) (at_6_5))
)

(:action move_6_6_6_7
 :parameters ()
 :precondition (and (at_6_6))
 :poss-precondition (and (bridge_6_6_6_7))
 :effect (and (not (at_6_6)) (at_6_7))
)

(:action move_6_7_5_7
 :parameters ()
 :precondition (and (at_6_7))
 :effect (and (not (at_6_7)) (at_5_7))
)

(:action move_6_7_7_7
 :parameters ()
 :precondition (and (at_6_7))
 :poss-precondition (and (bridge_6_7_7_7))
 :effect (and (not (at_6_7)) (at_7_7))
)

(:action move_6_7_6_6
 :parameters ()
 :precondition (and (at_6_7))
 :poss-precondition (and (bridge_6_6_6_7))
 :effect (and (not (at_6_7)) (at_6_6))
)

(:action move_6_7_6_8
 :parameters ()
 :precondition (and (at_6_7))
 :poss-precondition (and (bridge_6_7_6_8))
 :effect (and (not (at_6_7)) (at_6_8))
)

(:action move_6_8_5_8
 :parameters ()
 :precondition (and (at_6_8))
 :poss-precondition (and (bridge_5_8_6_8))
 :effect (and (not (at_6_8)) (at_5_8))
)

(:action move_6_8_7_8
 :parameters ()
 :precondition (and (at_6_8))
 :poss-precondition (and (bridge_6_8_7_8))
 :effect (and (not (at_6_8)) (at_7_8))
)

(:action move_6_8_6_7
 :parameters ()
 :precondition (and (at_6_8))
 :poss-precondition (and (bridge_6_7_6_8))
 :effect (and (not (at_6_8)) (at_6_7))
)

(:action move_6_8_6_9
 :parameters ()
 :precondition (and (at_6_8))
 :effect (and (not (at_6_8)) (at_6_9))
)

(:action move_6_9_5_9
 :parameters ()
 :precondition (and (at_6_9))
 :effect (and (not (at_6_9)) (at_5_9))
)

(:action move_6_9_7_9
 :parameters ()
 :precondition (and (at_6_9))
 :effect (and (not (at_6_9)) (at_7_9))
)

(:action move_6_9_6_8
 :parameters ()
 :precondition (and (at_6_9))
 :effect (and (not (at_6_9)) (at_6_8))
)

(:action move_6_9_6_10
 :parameters ()
 :precondition (and (at_6_9))
 :poss-precondition (and (bridge_6_9_6_10))
 :effect (and (not (at_6_9)) (at_6_10))
)

(:action move_6_10_5_10
 :parameters ()
 :precondition (and (at_6_10))
 :effect (and (not (at_6_10)) (at_5_10))
)

(:action move_6_10_7_10
 :parameters ()
 :precondition (and (at_6_10))
 :poss-precondition (and (bridge_6_10_7_10))
 :effect (and (not (at_6_10)) (at_7_10))
)

(:action move_6_10_6_9
 :parameters ()
 :precondition (and (at_6_10))
 :poss-precondition (and (bridge_6_9_6_10))
 :effect (and (not (at_6_10)) (at_6_9))
)

(:action move_6_10_6_11
 :parameters ()
 :precondition (and (at_6_10))
 :effect (and (not (at_6_10)) (at_6_11))
)

(:action move_6_11_5_11
 :parameters ()
 :precondition (and (at_6_11))
 :effect (and (not (at_6_11)) (at_5_11))
)

(:action move_6_11_7_11
 :parameters ()
 :precondition (and (at_6_11))
 :effect (and (not (at_6_11)) (at_7_11))
)

(:action move_6_11_6_10
 :parameters ()
 :precondition (and (at_6_11))
 :effect (and (not (at_6_11)) (at_6_10))
)

(:action move_6_11_6_12
 :parameters ()
 :precondition (and (at_6_11))
 :poss-precondition (and (bridge_6_11_6_12))
 :effect (and (not (at_6_11)) (at_6_12))
)

(:action move_6_12_5_12
 :parameters ()
 :precondition (and (at_6_12))
 :poss-precondition (and (bridge_5_12_6_12))
 :effect (and (not (at_6_12)) (at_5_12))
)

(:action move_6_12_7_12
 :parameters ()
 :precondition (and (at_6_12))
 :effect (and (not (at_6_12)) (at_7_12))
)

(:action move_6_12_6_11
 :parameters ()
 :precondition (and (at_6_12))
 :poss-precondition (and (bridge_6_11_6_12))
 :effect (and (not (at_6_12)) (at_6_11))
)

(:action move_6_12_6_13
 :parameters ()
 :precondition (and (at_6_12))
 :effect (and (not (at_6_12)) (at_6_13))
)

(:action move_6_13_5_13
 :parameters ()
 :precondition (and (at_6_13))
 :poss-precondition (and (bridge_5_13_6_13))
 :effect (and (not (at_6_13)) (at_5_13))
)

(:action move_6_13_7_13
 :parameters ()
 :precondition (and (at_6_13))
 :poss-precondition (and (bridge_6_13_7_13))
 :effect (and (not (at_6_13)) (at_7_13))
)

(:action move_6_13_6_12
 :parameters ()
 :precondition (and (at_6_13))
 :effect (and (not (at_6_13)) (at_6_12))
)

(:action move_6_13_6_14
 :parameters ()
 :precondition (and (at_6_13))
 :poss-precondition (and (bridge_6_13_6_14))
 :effect (and (not (at_6_13)) (at_6_14))
)

(:action move_6_14_5_14
 :parameters ()
 :precondition (and (at_6_14))
 :poss-precondition (and (bridge_5_14_6_14))
 :effect (and (not (at_6_14)) (at_5_14))
)

(:action move_6_14_7_14
 :parameters ()
 :precondition (and (at_6_14))
 :effect (and (not (at_6_14)) (at_7_14))
)

(:action move_6_14_6_13
 :parameters ()
 :precondition (and (at_6_14))
 :poss-precondition (and (bridge_6_13_6_14))
 :effect (and (not (at_6_14)) (at_6_13))
)

(:action move_6_14_6_15
 :parameters ()
 :precondition (and (at_6_14))
 :effect (and (not (at_6_14)) (at_6_15))
)

(:action move_6_15_5_15
 :parameters ()
 :precondition (and (at_6_15))
 :poss-precondition (and (bridge_5_15_6_15))
 :effect (and (not (at_6_15)) (at_5_15))
)

(:action move_6_15_7_15
 :parameters ()
 :precondition (and (at_6_15))
 :poss-precondition (and (bridge_6_15_7_15))
 :effect (and (not (at_6_15)) (at_7_15))
)

(:action move_6_15_6_14
 :parameters ()
 :precondition (and (at_6_15))
 :effect (and (not (at_6_15)) (at_6_14))
)

(:action move_7_0_6_0
 :parameters ()
 :precondition (and (at_7_0))
 :effect (and (not (at_7_0)) (at_6_0))
)

(:action move_7_0_8_0
 :parameters ()
 :precondition (and (at_7_0))
 :poss-precondition (and (bridge_7_0_8_0))
 :effect (and (not (at_7_0)) (at_8_0))
)

(:action move_7_0_7_1
 :parameters ()
 :precondition (and (at_7_0))
 :effect (and (not (at_7_0)) (at_7_1))
)

(:action move_7_1_6_1
 :parameters ()
 :precondition (and (at_7_1))
 :effect (and (not (at_7_1)) (at_6_1))
)

(:action move_7_1_8_1
 :parameters ()
 :precondition (and (at_7_1))
 :poss-precondition (and (bridge_7_1_8_1))
 :effect (and (not (at_7_1)) (at_8_1))
)

(:action move_7_1_7_0
 :parameters ()
 :precondition (and (at_7_1))
 :effect (and (not (at_7_1)) (at_7_0))
)

(:action move_7_1_7_2
 :parameters ()
 :precondition (and (at_7_1))
 :effect (and (not (at_7_1)) (at_7_2))
)

(:action move_7_2_6_2
 :parameters ()
 :precondition (and (at_7_2))
 :effect (and (not (at_7_2)) (at_6_2))
)

(:action move_7_2_8_2
 :parameters ()
 :precondition (and (at_7_2))
 :effect (and (not (at_7_2)) (at_8_2))
)

(:action move_7_2_7_1
 :parameters ()
 :precondition (and (at_7_2))
 :effect (and (not (at_7_2)) (at_7_1))
)

(:action move_7_2_7_3
 :parameters ()
 :precondition (and (at_7_2))
 :effect (and (not (at_7_2)) (at_7_3))
)

(:action move_7_3_6_3
 :parameters ()
 :precondition (and (at_7_3))
 :effect (and (not (at_7_3)) (at_6_3))
)

(:action move_7_3_8_3
 :parameters ()
 :precondition (and (at_7_3))
 :effect (and (not (at_7_3)) (at_8_3))
)

(:action move_7_3_7_2
 :parameters ()
 :precondition (and (at_7_3))
 :effect (and (not (at_7_3)) (at_7_2))
)

(:action move_7_3_7_4
 :parameters ()
 :precondition (and (at_7_3))
 :effect (and (not (at_7_3)) (at_7_4))
)

(:action move_7_4_6_4
 :parameters ()
 :precondition (and (at_7_4))
 :effect (and (not (at_7_4)) (at_6_4))
)

(:action move_7_4_8_4
 :parameters ()
 :precondition (and (at_7_4))
 :poss-precondition (and (bridge_7_4_8_4))
 :effect (and (not (at_7_4)) (at_8_4))
)

(:action move_7_4_7_3
 :parameters ()
 :precondition (and (at_7_4))
 :effect (and (not (at_7_4)) (at_7_3))
)

(:action move_7_4_7_5
 :parameters ()
 :precondition (and (at_7_4))
 :effect (and (not (at_7_4)) (at_7_5))
)

(:action move_7_5_6_5
 :parameters ()
 :precondition (and (at_7_5))
 :poss-precondition (and (bridge_6_5_7_5))
 :effect (and (not (at_7_5)) (at_6_5))
)

(:action move_7_5_8_5
 :parameters ()
 :precondition (and (at_7_5))
 :poss-precondition (and (bridge_7_5_8_5))
 :effect (and (not (at_7_5)) (at_8_5))
)

(:action move_7_5_7_4
 :parameters ()
 :precondition (and (at_7_5))
 :effect (and (not (at_7_5)) (at_7_4))
)

(:action move_7_5_7_6
 :parameters ()
 :precondition (and (at_7_5))
 :effect (and (not (at_7_5)) (at_7_6))
)

(:action move_7_6_6_6
 :parameters ()
 :precondition (and (at_7_6))
 :poss-precondition (and (bridge_6_6_7_6))
 :effect (and (not (at_7_6)) (at_6_6))
)

(:action move_7_6_8_6
 :parameters ()
 :precondition (and (at_7_6))
 :effect (and (not (at_7_6)) (at_8_6))
)

(:action move_7_6_7_5
 :parameters ()
 :precondition (and (at_7_6))
 :effect (and (not (at_7_6)) (at_7_5))
)

(:action move_7_6_7_7
 :parameters ()
 :precondition (and (at_7_6))
 :effect (and (not (at_7_6)) (at_7_7))
)

(:action move_7_7_6_7
 :parameters ()
 :precondition (and (at_7_7))
 :poss-precondition (and (bridge_6_7_7_7))
 :effect (and (not (at_7_7)) (at_6_7))
)

(:action move_7_7_8_7
 :parameters ()
 :precondition (and (at_7_7))
 :poss-precondition (and (bridge_7_7_8_7))
 :effect (and (not (at_7_7)) (at_8_7))
)

(:action move_7_7_7_6
 :parameters ()
 :precondition (and (at_7_7))
 :effect (and (not (at_7_7)) (at_7_6))
)

(:action move_7_7_7_8
 :parameters ()
 :precondition (and (at_7_7))
 :poss-precondition (and (bridge_7_7_7_8))
 :effect (and (not (at_7_7)) (at_7_8))
)

(:action move_7_8_6_8
 :parameters ()
 :precondition (and (at_7_8))
 :poss-precondition (and (bridge_6_8_7_8))
 :effect (and (not (at_7_8)) (at_6_8))
)

(:action move_7_8_8_8
 :parameters ()
 :precondition (and (at_7_8))
 :effect (and (not (at_7_8)) (at_8_8))
)

(:action move_7_8_7_7
 :parameters ()
 :precondition (and (at_7_8))
 :poss-precondition (and (bridge_7_7_7_8))
 :effect (and (not (at_7_8)) (at_7_7))
)

(:action move_7_8_7_9
 :parameters ()
 :precondition (and (at_7_8))
 :effect (and (not (at_7_8)) (at_7_9))
)

(:action move_7_9_6_9
 :parameters ()
 :precondition (and (at_7_9))
 :effect (and (not (at_7_9)) (at_6_9))
)

(:action move_7_9_8_9
 :parameters ()
 :precondition (and (at_7_9))
 :effect (and (not (at_7_9)) (at_8_9))
)

(:action move_7_9_7_8
 :parameters ()
 :precondition (and (at_7_9))
 :effect (and (not (at_7_9)) (at_7_8))
)

(:action move_7_9_7_10
 :parameters ()
 :precondition (and (at_7_9))
 :effect (and (not (at_7_9)) (at_7_10))
)

(:action move_7_10_6_10
 :parameters ()
 :precondition (and (at_7_10))
 :poss-precondition (and (bridge_6_10_7_10))
 :effect (and (not (at_7_10)) (at_6_10))
)

(:action move_7_10_8_10
 :parameters ()
 :precondition (and (at_7_10))
 :effect (and (not (at_7_10)) (at_8_10))
)

(:action move_7_10_7_9
 :parameters ()
 :precondition (and (at_7_10))
 :effect (and (not (at_7_10)) (at_7_9))
)

(:action move_7_10_7_11
 :parameters ()
 :precondition (and (at_7_10))
 :poss-precondition (and (bridge_7_10_7_11))
 :effect (and (not (at_7_10)) (at_7_11))
)

(:action move_7_11_6_11
 :parameters ()
 :precondition (and (at_7_11))
 :effect (and (not (at_7_11)) (at_6_11))
)

(:action move_7_11_8_11
 :parameters ()
 :precondition (and (at_7_11))
 :effect (and (not (at_7_11)) (at_8_11))
)

(:action move_7_11_7_10
 :parameters ()
 :precondition (and (at_7_11))
 :poss-precondition (and (bridge_7_10_7_11))
 :effect (and (not (at_7_11)) (at_7_10))
)

(:action move_7_11_7_12
 :parameters ()
 :precondition (and (at_7_11))
 :effect (and (not (at_7_11)) (at_7_12))
)

(:action move_7_12_6_12
 :parameters ()
 :precondition (and (at_7_12))
 :effect (and (not (at_7_12)) (at_6_12))
)

(:action move_7_12_8_12
 :parameters ()
 :precondition (and (at_7_12))
 :effect (and (not (at_7_12)) (at_8_12))
)

(:action move_7_12_7_11
 :parameters ()
 :precondition (and (at_7_12))
 :effect (and (not (at_7_12)) (at_7_11))
)

(:action move_7_12_7_13
 :parameters ()
 :precondition (and (at_7_12))
 :effect (and (not (at_7_12)) (at_7_13))
)

(:action move_7_13_6_13
 :parameters ()
 :precondition (and (at_7_13))
 :poss-precondition (and (bridge_6_13_7_13))
 :effect (and (not (at_7_13)) (at_6_13))
)

(:action move_7_13_8_13
 :parameters ()
 :precondition (and (at_7_13))
 :effect (and (not (at_7_13)) (at_8_13))
)

(:action move_7_13_7_12
 :parameters ()
 :precondition (and (at_7_13))
 :effect (and (not (at_7_13)) (at_7_12))
)

(:action move_7_13_7_14
 :parameters ()
 :precondition (and (at_7_13))
 :effect (and (not (at_7_13)) (at_7_14))
)

(:action move_7_14_6_14
 :parameters ()
 :precondition (and (at_7_14))
 :effect (and (not (at_7_14)) (at_6_14))
)

(:action move_7_14_8_14
 :parameters ()
 :precondition (and (at_7_14))
 :effect (and (not (at_7_14)) (at_8_14))
)

(:action move_7_14_7_13
 :parameters ()
 :precondition (and (at_7_14))
 :effect (and (not (at_7_14)) (at_7_13))
)

(:action move_7_14_7_15
 :parameters ()
 :precondition (and (at_7_14))
 :effect (and (not (at_7_14)) (at_7_15))
)

(:action move_7_15_6_15
 :parameters ()
 :precondition (and (at_7_15))
 :poss-precondition (and (bridge_6_15_7_15))
 :effect (and (not (at_7_15)) (at_6_15))
)

(:action move_7_15_8_15
 :parameters ()
 :precondition (and (at_7_15))
 :effect (and (not (at_7_15)) (at_8_15))
)

(:action move_7_15_7_14
 :parameters ()
 :precondition (and (at_7_15))
 :effect (and (not (at_7_15)) (at_7_14))
)

(:action move_8_0_7_0
 :parameters ()
 :precondition (and (at_8_0))
 :poss-precondition (and (bridge_7_0_8_0))
 :effect (and (not (at_8_0)) (at_7_0))
)

(:action move_8_0_9_0
 :parameters ()
 :precondition (and (at_8_0))
 :poss-precondition (and (bridge_8_0_9_0))
 :effect (and (not (at_8_0)) (at_9_0))
)

(:action move_8_0_8_1
 :parameters ()
 :precondition (and (at_8_0))
 :effect (and (not (at_8_0)) (at_8_1))
)

(:action move_8_1_7_1
 :parameters ()
 :precondition (and (at_8_1))
 :poss-precondition (and (bridge_7_1_8_1))
 :effect (and (not (at_8_1)) (at_7_1))
)

(:action move_8_1_9_1
 :parameters ()
 :precondition (and (at_8_1))
 :effect (and (not (at_8_1)) (at_9_1))
)

(:action move_8_1_8_0
 :parameters ()
 :precondition (and (at_8_1))
 :effect (and (not (at_8_1)) (at_8_0))
)

(:action move_8_1_8_2
 :parameters ()
 :precondition (and (at_8_1))
 :poss-precondition (and (bridge_8_1_8_2))
 :effect (and (not (at_8_1)) (at_8_2))
)

(:action move_8_2_7_2
 :parameters ()
 :precondition (and (at_8_2))
 :effect (and (not (at_8_2)) (at_7_2))
)

(:action move_8_2_9_2
 :parameters ()
 :precondition (and (at_8_2))
 :effect (and (not (at_8_2)) (at_9_2))
)

(:action move_8_2_8_1
 :parameters ()
 :precondition (and (at_8_2))
 :poss-precondition (and (bridge_8_1_8_2))
 :effect (and (not (at_8_2)) (at_8_1))
)

(:action move_8_2_8_3
 :parameters ()
 :precondition (and (at_8_2))
 :poss-precondition (and (bridge_8_2_8_3))
 :effect (and (not (at_8_2)) (at_8_3))
)

(:action move_8_3_7_3
 :parameters ()
 :precondition (and (at_8_3))
 :effect (and (not (at_8_3)) (at_7_3))
)

(:action move_8_3_9_3
 :parameters ()
 :precondition (and (at_8_3))
 :effect (and (not (at_8_3)) (at_9_3))
)

(:action move_8_3_8_2
 :parameters ()
 :precondition (and (at_8_3))
 :poss-precondition (and (bridge_8_2_8_3))
 :effect (and (not (at_8_3)) (at_8_2))
)

(:action move_8_3_8_4
 :parameters ()
 :precondition (and (at_8_3))
 :poss-precondition (and (bridge_8_3_8_4))
 :effect (and (not (at_8_3)) (at_8_4))
)

(:action move_8_4_7_4
 :parameters ()
 :precondition (and (at_8_4))
 :poss-precondition (and (bridge_7_4_8_4))
 :effect (and (not (at_8_4)) (at_7_4))
)

(:action move_8_4_9_4
 :parameters ()
 :precondition (and (at_8_4))
 :poss-precondition (and (bridge_8_4_9_4))
 :effect (and (not (at_8_4)) (at_9_4))
)

(:action move_8_4_8_3
 :parameters ()
 :precondition (and (at_8_4))
 :poss-precondition (and (bridge_8_3_8_4))
 :effect (and (not (at_8_4)) (at_8_3))
)

(:action move_8_4_8_5
 :parameters ()
 :precondition (and (at_8_4))
 :effect (and (not (at_8_4)) (at_8_5))
)

(:action move_8_5_7_5
 :parameters ()
 :precondition (and (at_8_5))
 :poss-precondition (and (bridge_7_5_8_5))
 :effect (and (not (at_8_5)) (at_7_5))
)

(:action move_8_5_9_5
 :parameters ()
 :precondition (and (at_8_5))
 :effect (and (not (at_8_5)) (at_9_5))
)

(:action move_8_5_8_4
 :parameters ()
 :precondition (and (at_8_5))
 :effect (and (not (at_8_5)) (at_8_4))
)

(:action move_8_5_8_6
 :parameters ()
 :precondition (and (at_8_5))
 :effect (and (not (at_8_5)) (at_8_6))
)

(:action move_8_6_7_6
 :parameters ()
 :precondition (and (at_8_6))
 :effect (and (not (at_8_6)) (at_7_6))
)

(:action move_8_6_9_6
 :parameters ()
 :precondition (and (at_8_6))
 :effect (and (not (at_8_6)) (at_9_6))
)

(:action move_8_6_8_5
 :parameters ()
 :precondition (and (at_8_6))
 :effect (and (not (at_8_6)) (at_8_5))
)

(:action move_8_6_8_7
 :parameters ()
 :precondition (and (at_8_6))
 :poss-precondition (and (bridge_8_6_8_7))
 :effect (and (not (at_8_6)) (at_8_7))
)

(:action move_8_7_7_7
 :parameters ()
 :precondition (and (at_8_7))
 :poss-precondition (and (bridge_7_7_8_7))
 :effect (and (not (at_8_7)) (at_7_7))
)

(:action move_8_7_9_7
 :parameters ()
 :precondition (and (at_8_7))
 :poss-precondition (and (bridge_8_7_9_7))
 :effect (and (not (at_8_7)) (at_9_7))
)

(:action move_8_7_8_6
 :parameters ()
 :precondition (and (at_8_7))
 :poss-precondition (and (bridge_8_6_8_7))
 :effect (and (not (at_8_7)) (at_8_6))
)

(:action move_8_7_8_8
 :parameters ()
 :precondition (and (at_8_7))
 :effect (and (not (at_8_7)) (at_8_8))
)

(:action move_8_8_7_8
 :parameters ()
 :precondition (and (at_8_8))
 :effect (and (not (at_8_8)) (at_7_8))
)

(:action move_8_8_9_8
 :parameters ()
 :precondition (and (at_8_8))
 :poss-precondition (and (bridge_8_8_9_8))
 :effect (and (not (at_8_8)) (at_9_8))
)

(:action move_8_8_8_7
 :parameters ()
 :precondition (and (at_8_8))
 :effect (and (not (at_8_8)) (at_8_7))
)

(:action move_8_8_8_9
 :parameters ()
 :precondition (and (at_8_8))
 :effect (and (not (at_8_8)) (at_8_9))
)

(:action move_8_9_7_9
 :parameters ()
 :precondition (and (at_8_9))
 :effect (and (not (at_8_9)) (at_7_9))
)

(:action move_8_9_9_9
 :parameters ()
 :precondition (and (at_8_9))
 :effect (and (not (at_8_9)) (at_9_9))
)

(:action move_8_9_8_8
 :parameters ()
 :precondition (and (at_8_9))
 :effect (and (not (at_8_9)) (at_8_8))
)

(:action move_8_9_8_10
 :parameters ()
 :precondition (and (at_8_9))
 :effect (and (not (at_8_9)) (at_8_10))
)

(:action move_8_10_7_10
 :parameters ()
 :precondition (and (at_8_10))
 :effect (and (not (at_8_10)) (at_7_10))
)

(:action move_8_10_9_10
 :parameters ()
 :precondition (and (at_8_10))
 :poss-precondition (and (bridge_8_10_9_10))
 :effect (and (not (at_8_10)) (at_9_10))
)

(:action move_8_10_8_9
 :parameters ()
 :precondition (and (at_8_10))
 :effect (and (not (at_8_10)) (at_8_9))
)

(:action move_8_10_8_11
 :parameters ()
 :precondition (and (at_8_10))
 :effect (and (not (at_8_10)) (at_8_11))
)

(:action move_8_11_7_11
 :parameters ()
 :precondition (and (at_8_11))
 :effect (and (not (at_8_11)) (at_7_11))
)

(:action move_8_11_9_11
 :parameters ()
 :precondition (and (at_8_11))
 :effect (and (not (at_8_11)) (at_9_11))
)

(:action move_8_11_8_10
 :parameters ()
 :precondition (and (at_8_11))
 :effect (and (not (at_8_11)) (at_8_10))
)

(:action move_8_11_8_12
 :parameters ()
 :precondition (and (at_8_11))
 :poss-precondition (and (bridge_8_11_8_12))
 :effect (and (not (at_8_11)) (at_8_12))
)

(:action move_8_12_7_12
 :parameters ()
 :precondition (and (at_8_12))
 :effect (and (not (at_8_12)) (at_7_12))
)

(:action move_8_12_9_12
 :parameters ()
 :precondition (and (at_8_12))
 :poss-precondition (and (bridge_8_12_9_12))
 :effect (and (not (at_8_12)) (at_9_12))
)

(:action move_8_12_8_11
 :parameters ()
 :precondition (and (at_8_12))
 :poss-precondition (and (bridge_8_11_8_12))
 :effect (and (not (at_8_12)) (at_8_11))
)

(:action move_8_12_8_13
 :parameters ()
 :precondition (and (at_8_12))
 :poss-precondition (and (bridge_8_12_8_13))
 :effect (and (not (at_8_12)) (at_8_13))
)

(:action move_8_13_7_13
 :parameters ()
 :precondition (and (at_8_13))
 :effect (and (not (at_8_13)) (at_7_13))
)

(:action move_8_13_9_13
 :parameters ()
 :precondition (and (at_8_13))
 :effect (and (not (at_8_13)) (at_9_13))
)

(:action move_8_13_8_12
 :parameters ()
 :precondition (and (at_8_13))
 :poss-precondition (and (bridge_8_12_8_13))
 :effect (and (not (at_8_13)) (at_8_12))
)

(:action move_8_13_8_14
 :parameters ()
 :precondition (and (at_8_13))
 :poss-precondition (and (bridge_8_13_8_14))
 :effect (and (not (at_8_13)) (at_8_14))
)

(:action move_8_14_7_14
 :parameters ()
 :precondition (and (at_8_14))
 :effect (and (not (at_8_14)) (at_7_14))
)

(:action move_8_14_9_14
 :parameters ()
 :precondition (and (at_8_14))
 :poss-precondition (and (bridge_8_14_9_14))
 :effect (and (not (at_8_14)) (at_9_14))
)

(:action move_8_14_8_13
 :parameters ()
 :precondition (and (at_8_14))
 :poss-precondition (and (bridge_8_13_8_14))
 :effect (and (not (at_8_14)) (at_8_13))
)

(:action move_8_14_8_15
 :parameters ()
 :precondition (and (at_8_14))
 :effect (and (not (at_8_14)) (at_8_15))
)

(:action move_8_15_7_15
 :parameters ()
 :precondition (and (at_8_15))
 :effect (and (not (at_8_15)) (at_7_15))
)

(:action move_8_15_9_15
 :parameters ()
 :precondition (and (at_8_15))
 :effect (and (not (at_8_15)) (at_9_15))
)

(:action move_8_15_8_14
 :parameters ()
 :precondition (and (at_8_15))
 :effect (and (not (at_8_15)) (at_8_14))
)

(:action move_9_0_8_0
 :parameters ()
 :precondition (and (at_9_0))
 :poss-precondition (and (bridge_8_0_9_0))
 :effect (and (not (at_9_0)) (at_8_0))
)

(:action move_9_0_10_0
 :parameters ()
 :precondition (and (at_9_0))
 :poss-precondition (and (bridge_9_0_10_0))
 :effect (and (not (at_9_0)) (at_10_0))
)

(:action move_9_0_9_1
 :parameters ()
 :precondition (and (at_9_0))
 :poss-precondition (and (bridge_9_0_9_1))
 :effect (and (not (at_9_0)) (at_9_1))
)

(:action move_9_1_8_1
 :parameters ()
 :precondition (and (at_9_1))
 :effect (and (not (at_9_1)) (at_8_1))
)

(:action move_9_1_10_1
 :parameters ()
 :precondition (and (at_9_1))
 :poss-precondition (and (bridge_9_1_10_1))
 :effect (and (not (at_9_1)) (at_10_1))
)

(:action move_9_1_9_0
 :parameters ()
 :precondition (and (at_9_1))
 :poss-precondition (and (bridge_9_0_9_1))
 :effect (and (not (at_9_1)) (at_9_0))
)

(:action move_9_1_9_2
 :parameters ()
 :precondition (and (at_9_1))
 :effect (and (not (at_9_1)) (at_9_2))
)

(:action move_9_2_8_2
 :parameters ()
 :precondition (and (at_9_2))
 :effect (and (not (at_9_2)) (at_8_2))
)

(:action move_9_2_10_2
 :parameters ()
 :precondition (and (at_9_2))
 :effect (and (not (at_9_2)) (at_10_2))
)

(:action move_9_2_9_1
 :parameters ()
 :precondition (and (at_9_2))
 :effect (and (not (at_9_2)) (at_9_1))
)

(:action move_9_2_9_3
 :parameters ()
 :precondition (and (at_9_2))
 :effect (and (not (at_9_2)) (at_9_3))
)

(:action move_9_3_8_3
 :parameters ()
 :precondition (and (at_9_3))
 :effect (and (not (at_9_3)) (at_8_3))
)

(:action move_9_3_10_3
 :parameters ()
 :precondition (and (at_9_3))
 :poss-precondition (and (bridge_9_3_10_3))
 :effect (and (not (at_9_3)) (at_10_3))
)

(:action move_9_3_9_2
 :parameters ()
 :precondition (and (at_9_3))
 :effect (and (not (at_9_3)) (at_9_2))
)

(:action move_9_3_9_4
 :parameters ()
 :precondition (and (at_9_3))
 :poss-precondition (and (bridge_9_3_9_4))
 :effect (and (not (at_9_3)) (at_9_4))
)

(:action move_9_4_8_4
 :parameters ()
 :precondition (and (at_9_4))
 :poss-precondition (and (bridge_8_4_9_4))
 :effect (and (not (at_9_4)) (at_8_4))
)

(:action move_9_4_10_4
 :parameters ()
 :precondition (and (at_9_4))
 :effect (and (not (at_9_4)) (at_10_4))
)

(:action move_9_4_9_3
 :parameters ()
 :precondition (and (at_9_4))
 :poss-precondition (and (bridge_9_3_9_4))
 :effect (and (not (at_9_4)) (at_9_3))
)

(:action move_9_4_9_5
 :parameters ()
 :precondition (and (at_9_4))
 :effect (and (not (at_9_4)) (at_9_5))
)

(:action move_9_5_8_5
 :parameters ()
 :precondition (and (at_9_5))
 :effect (and (not (at_9_5)) (at_8_5))
)

(:action move_9_5_10_5
 :parameters ()
 :precondition (and (at_9_5))
 :poss-precondition (and (bridge_9_5_10_5))
 :effect (and (not (at_9_5)) (at_10_5))
)

(:action move_9_5_9_4
 :parameters ()
 :precondition (and (at_9_5))
 :effect (and (not (at_9_5)) (at_9_4))
)

(:action move_9_5_9_6
 :parameters ()
 :precondition (and (at_9_5))
 :poss-precondition (and (bridge_9_5_9_6))
 :effect (and (not (at_9_5)) (at_9_6))
)

(:action move_9_6_8_6
 :parameters ()
 :precondition (and (at_9_6))
 :effect (and (not (at_9_6)) (at_8_6))
)

(:action move_9_6_10_6
 :parameters ()
 :precondition (and (at_9_6))
 :effect (and (not (at_9_6)) (at_10_6))
)

(:action move_9_6_9_5
 :parameters ()
 :precondition (and (at_9_6))
 :poss-precondition (and (bridge_9_5_9_6))
 :effect (and (not (at_9_6)) (at_9_5))
)

(:action move_9_6_9_7
 :parameters ()
 :precondition (and (at_9_6))
 :poss-precondition (and (bridge_9_6_9_7))
 :effect (and (not (at_9_6)) (at_9_7))
)

(:action move_9_7_8_7
 :parameters ()
 :precondition (and (at_9_7))
 :poss-precondition (and (bridge_8_7_9_7))
 :effect (and (not (at_9_7)) (at_8_7))
)

(:action move_9_7_10_7
 :parameters ()
 :precondition (and (at_9_7))
 :poss-precondition (and (bridge_9_7_10_7))
 :effect (and (not (at_9_7)) (at_10_7))
)

(:action move_9_7_9_6
 :parameters ()
 :precondition (and (at_9_7))
 :poss-precondition (and (bridge_9_6_9_7))
 :effect (and (not (at_9_7)) (at_9_6))
)

(:action move_9_7_9_8
 :parameters ()
 :precondition (and (at_9_7))
 :poss-precondition (and (bridge_9_7_9_8))
 :effect (and (not (at_9_7)) (at_9_8))
)

(:action move_9_8_8_8
 :parameters ()
 :precondition (and (at_9_8))
 :poss-precondition (and (bridge_8_8_9_8))
 :effect (and (not (at_9_8)) (at_8_8))
)

(:action move_9_8_10_8
 :parameters ()
 :precondition (and (at_9_8))
 :poss-precondition (and (bridge_9_8_10_8))
 :effect (and (not (at_9_8)) (at_10_8))
)

(:action move_9_8_9_7
 :parameters ()
 :precondition (and (at_9_8))
 :poss-precondition (and (bridge_9_7_9_8))
 :effect (and (not (at_9_8)) (at_9_7))
)

(:action move_9_8_9_9
 :parameters ()
 :precondition (and (at_9_8))
 :poss-precondition (and (bridge_9_8_9_9))
 :effect (and (not (at_9_8)) (at_9_9))
)

(:action move_9_9_8_9
 :parameters ()
 :precondition (and (at_9_9))
 :effect (and (not (at_9_9)) (at_8_9))
)

(:action move_9_9_10_9
 :parameters ()
 :precondition (and (at_9_9))
 :effect (and (not (at_9_9)) (at_10_9))
)

(:action move_9_9_9_8
 :parameters ()
 :precondition (and (at_9_9))
 :poss-precondition (and (bridge_9_8_9_9))
 :effect (and (not (at_9_9)) (at_9_8))
)

(:action move_9_9_9_10
 :parameters ()
 :precondition (and (at_9_9))
 :poss-precondition (and (bridge_9_9_9_10))
 :effect (and (not (at_9_9)) (at_9_10))
)

(:action move_9_10_8_10
 :parameters ()
 :precondition (and (at_9_10))
 :poss-precondition (and (bridge_8_10_9_10))
 :effect (and (not (at_9_10)) (at_8_10))
)

(:action move_9_10_10_10
 :parameters ()
 :precondition (and (at_9_10))
 :poss-precondition (and (bridge_9_10_10_10))
 :effect (and (not (at_9_10)) (at_10_10))
)

(:action move_9_10_9_9
 :parameters ()
 :precondition (and (at_9_10))
 :poss-precondition (and (bridge_9_9_9_10))
 :effect (and (not (at_9_10)) (at_9_9))
)

(:action move_9_10_9_11
 :parameters ()
 :precondition (and (at_9_10))
 :effect (and (not (at_9_10)) (at_9_11))
)

(:action move_9_11_8_11
 :parameters ()
 :precondition (and (at_9_11))
 :effect (and (not (at_9_11)) (at_8_11))
)

(:action move_9_11_10_11
 :parameters ()
 :precondition (and (at_9_11))
 :effect (and (not (at_9_11)) (at_10_11))
)

(:action move_9_11_9_10
 :parameters ()
 :precondition (and (at_9_11))
 :effect (and (not (at_9_11)) (at_9_10))
)

(:action move_9_11_9_12
 :parameters ()
 :precondition (and (at_9_11))
 :poss-precondition (and (bridge_9_11_9_12))
 :effect (and (not (at_9_11)) (at_9_12))
)

(:action move_9_12_8_12
 :parameters ()
 :precondition (and (at_9_12))
 :poss-precondition (and (bridge_8_12_9_12))
 :effect (and (not (at_9_12)) (at_8_12))
)

(:action move_9_12_10_12
 :parameters ()
 :precondition (and (at_9_12))
 :effect (and (not (at_9_12)) (at_10_12))
)

(:action move_9_12_9_11
 :parameters ()
 :precondition (and (at_9_12))
 :poss-precondition (and (bridge_9_11_9_12))
 :effect (and (not (at_9_12)) (at_9_11))
)

(:action move_9_12_9_13
 :parameters ()
 :precondition (and (at_9_12))
 :effect (and (not (at_9_12)) (at_9_13))
)

(:action move_9_13_8_13
 :parameters ()
 :precondition (and (at_9_13))
 :effect (and (not (at_9_13)) (at_8_13))
)

(:action move_9_13_10_13
 :parameters ()
 :precondition (and (at_9_13))
 :poss-precondition (and (bridge_9_13_10_13))
 :effect (and (not (at_9_13)) (at_10_13))
)

(:action move_9_13_9_12
 :parameters ()
 :precondition (and (at_9_13))
 :effect (and (not (at_9_13)) (at_9_12))
)

(:action move_9_13_9_14
 :parameters ()
 :precondition (and (at_9_13))
 :effect (and (not (at_9_13)) (at_9_14))
)

(:action move_9_14_8_14
 :parameters ()
 :precondition (and (at_9_14))
 :poss-precondition (and (bridge_8_14_9_14))
 :effect (and (not (at_9_14)) (at_8_14))
)

(:action move_9_14_10_14
 :parameters ()
 :precondition (and (at_9_14))
 :effect (and (not (at_9_14)) (at_10_14))
)

(:action move_9_14_9_13
 :parameters ()
 :precondition (and (at_9_14))
 :effect (and (not (at_9_14)) (at_9_13))
)

(:action move_9_14_9_15
 :parameters ()
 :precondition (and (at_9_14))
 :poss-precondition (and (bridge_9_14_9_15))
 :effect (and (not (at_9_14)) (at_9_15))
)

(:action move_9_15_8_15
 :parameters ()
 :precondition (and (at_9_15))
 :effect (and (not (at_9_15)) (at_8_15))
)

(:action move_9_15_10_15
 :parameters ()
 :precondition (and (at_9_15))
 :effect (and (not (at_9_15)) (at_10_15))
)

(:action move_9_15_9_14
 :parameters ()
 :precondition (and (at_9_15))
 :poss-precondition (and (bridge_9_14_9_15))
 :effect (and (not (at_9_15)) (at_9_14))
)

(:action move_10_0_9_0
 :parameters ()
 :precondition (and (at_10_0))
 :poss-precondition (and (bridge_9_0_10_0))
 :effect (and (not (at_10_0)) (at_9_0))
)

(:action move_10_0_11_0
 :parameters ()
 :precondition (and (at_10_0))
 :effect (and (not (at_10_0)) (at_11_0))
)

(:action move_10_0_10_1
 :parameters ()
 :precondition (and (at_10_0))
 :poss-precondition (and (bridge_10_0_10_1))
 :effect (and (not (at_10_0)) (at_10_1))
)

(:action move_10_1_9_1
 :parameters ()
 :precondition (and (at_10_1))
 :poss-precondition (and (bridge_9_1_10_1))
 :effect (and (not (at_10_1)) (at_9_1))
)

(:action move_10_1_11_1
 :parameters ()
 :precondition (and (at_10_1))
 :effect (and (not (at_10_1)) (at_11_1))
)

(:action move_10_1_10_0
 :parameters ()
 :precondition (and (at_10_1))
 :poss-precondition (and (bridge_10_0_10_1))
 :effect (and (not (at_10_1)) (at_10_0))
)

(:action move_10_1_10_2
 :parameters ()
 :precondition (and (at_10_1))
 :poss-precondition (and (bridge_10_1_10_2))
 :effect (and (not (at_10_1)) (at_10_2))
)

(:action move_10_2_9_2
 :parameters ()
 :precondition (and (at_10_2))
 :effect (and (not (at_10_2)) (at_9_2))
)

(:action move_10_2_11_2
 :parameters ()
 :precondition (and (at_10_2))
 :poss-precondition (and (bridge_10_2_11_2))
 :effect (and (not (at_10_2)) (at_11_2))
)

(:action move_10_2_10_1
 :parameters ()
 :precondition (and (at_10_2))
 :poss-precondition (and (bridge_10_1_10_2))
 :effect (and (not (at_10_2)) (at_10_1))
)

(:action move_10_2_10_3
 :parameters ()
 :precondition (and (at_10_2))
 :effect (and (not (at_10_2)) (at_10_3))
)

(:action move_10_3_9_3
 :parameters ()
 :precondition (and (at_10_3))
 :poss-precondition (and (bridge_9_3_10_3))
 :effect (and (not (at_10_3)) (at_9_3))
)

(:action move_10_3_11_3
 :parameters ()
 :precondition (and (at_10_3))
 :poss-precondition (and (bridge_10_3_11_3))
 :effect (and (not (at_10_3)) (at_11_3))
)

(:action move_10_3_10_2
 :parameters ()
 :precondition (and (at_10_3))
 :effect (and (not (at_10_3)) (at_10_2))
)

(:action move_10_3_10_4
 :parameters ()
 :precondition (and (at_10_3))
 :effect (and (not (at_10_3)) (at_10_4))
)

(:action move_10_4_9_4
 :parameters ()
 :precondition (and (at_10_4))
 :effect (and (not (at_10_4)) (at_9_4))
)

(:action move_10_4_11_4
 :parameters ()
 :precondition (and (at_10_4))
 :effect (and (not (at_10_4)) (at_11_4))
)

(:action move_10_4_10_3
 :parameters ()
 :precondition (and (at_10_4))
 :effect (and (not (at_10_4)) (at_10_3))
)

(:action move_10_4_10_5
 :parameters ()
 :precondition (and (at_10_4))
 :effect (and (not (at_10_4)) (at_10_5))
)

(:action move_10_5_9_5
 :parameters ()
 :precondition (and (at_10_5))
 :poss-precondition (and (bridge_9_5_10_5))
 :effect (and (not (at_10_5)) (at_9_5))
)

(:action move_10_5_11_5
 :parameters ()
 :precondition (and (at_10_5))
 :effect (and (not (at_10_5)) (at_11_5))
)

(:action move_10_5_10_4
 :parameters ()
 :precondition (and (at_10_5))
 :effect (and (not (at_10_5)) (at_10_4))
)

(:action move_10_5_10_6
 :parameters ()
 :precondition (and (at_10_5))
 :effect (and (not (at_10_5)) (at_10_6))
)

(:action move_10_6_9_6
 :parameters ()
 :precondition (and (at_10_6))
 :effect (and (not (at_10_6)) (at_9_6))
)

(:action move_10_6_11_6
 :parameters ()
 :precondition (and (at_10_6))
 :effect (and (not (at_10_6)) (at_11_6))
)

(:action move_10_6_10_5
 :parameters ()
 :precondition (and (at_10_6))
 :effect (and (not (at_10_6)) (at_10_5))
)

(:action move_10_6_10_7
 :parameters ()
 :precondition (and (at_10_6))
 :effect (and (not (at_10_6)) (at_10_7))
)

(:action move_10_7_9_7
 :parameters ()
 :precondition (and (at_10_7))
 :poss-precondition (and (bridge_9_7_10_7))
 :effect (and (not (at_10_7)) (at_9_7))
)

(:action move_10_7_11_7
 :parameters ()
 :precondition (and (at_10_7))
 :poss-precondition (and (bridge_10_7_11_7))
 :effect (and (not (at_10_7)) (at_11_7))
)

(:action move_10_7_10_6
 :parameters ()
 :precondition (and (at_10_7))
 :effect (and (not (at_10_7)) (at_10_6))
)

(:action move_10_7_10_8
 :parameters ()
 :precondition (and (at_10_7))
 :effect (and (not (at_10_7)) (at_10_8))
)

(:action move_10_8_9_8
 :parameters ()
 :precondition (and (at_10_8))
 :poss-precondition (and (bridge_9_8_10_8))
 :effect (and (not (at_10_8)) (at_9_8))
)

(:action move_10_8_11_8
 :parameters ()
 :precondition (and (at_10_8))
 :poss-precondition (and (bridge_10_8_11_8))
 :effect (and (not (at_10_8)) (at_11_8))
)

(:action move_10_8_10_7
 :parameters ()
 :precondition (and (at_10_8))
 :effect (and (not (at_10_8)) (at_10_7))
)

(:action move_10_8_10_9
 :parameters ()
 :precondition (and (at_10_8))
 :poss-precondition (and (bridge_10_8_10_9))
 :effect (and (not (at_10_8)) (at_10_9))
)

(:action move_10_9_9_9
 :parameters ()
 :precondition (and (at_10_9))
 :effect (and (not (at_10_9)) (at_9_9))
)

(:action move_10_9_11_9
 :parameters ()
 :precondition (and (at_10_9))
 :poss-precondition (and (bridge_10_9_11_9))
 :effect (and (not (at_10_9)) (at_11_9))
)

(:action move_10_9_10_8
 :parameters ()
 :precondition (and (at_10_9))
 :poss-precondition (and (bridge_10_8_10_9))
 :effect (and (not (at_10_9)) (at_10_8))
)

(:action move_10_9_10_10
 :parameters ()
 :precondition (and (at_10_9))
 :effect (and (not (at_10_9)) (at_10_10))
)

(:action move_10_10_9_10
 :parameters ()
 :precondition (and (at_10_10))
 :poss-precondition (and (bridge_9_10_10_10))
 :effect (and (not (at_10_10)) (at_9_10))
)

(:action move_10_10_11_10
 :parameters ()
 :precondition (and (at_10_10))
 :poss-precondition (and (bridge_10_10_11_10))
 :effect (and (not (at_10_10)) (at_11_10))
)

(:action move_10_10_10_9
 :parameters ()
 :precondition (and (at_10_10))
 :effect (and (not (at_10_10)) (at_10_9))
)

(:action move_10_10_10_11
 :parameters ()
 :precondition (and (at_10_10))
 :poss-precondition (and (bridge_10_10_10_11))
 :effect (and (not (at_10_10)) (at_10_11))
)

(:action move_10_11_9_11
 :parameters ()
 :precondition (and (at_10_11))
 :effect (and (not (at_10_11)) (at_9_11))
)

(:action move_10_11_11_11
 :parameters ()
 :precondition (and (at_10_11))
 :effect (and (not (at_10_11)) (at_11_11))
)

(:action move_10_11_10_10
 :parameters ()
 :precondition (and (at_10_11))
 :poss-precondition (and (bridge_10_10_10_11))
 :effect (and (not (at_10_11)) (at_10_10))
)

(:action move_10_11_10_12
 :parameters ()
 :precondition (and (at_10_11))
 :effect (and (not (at_10_11)) (at_10_12))
)

(:action move_10_12_9_12
 :parameters ()
 :precondition (and (at_10_12))
 :effect (and (not (at_10_12)) (at_9_12))
)

(:action move_10_12_11_12
 :parameters ()
 :precondition (and (at_10_12))
 :poss-precondition (and (bridge_10_12_11_12))
 :effect (and (not (at_10_12)) (at_11_12))
)

(:action move_10_12_10_11
 :parameters ()
 :precondition (and (at_10_12))
 :effect (and (not (at_10_12)) (at_10_11))
)

(:action move_10_12_10_13
 :parameters ()
 :precondition (and (at_10_12))
 :effect (and (not (at_10_12)) (at_10_13))
)

(:action move_10_13_9_13
 :parameters ()
 :precondition (and (at_10_13))
 :poss-precondition (and (bridge_9_13_10_13))
 :effect (and (not (at_10_13)) (at_9_13))
)

(:action move_10_13_11_13
 :parameters ()
 :precondition (and (at_10_13))
 :effect (and (not (at_10_13)) (at_11_13))
)

(:action move_10_13_10_12
 :parameters ()
 :precondition (and (at_10_13))
 :effect (and (not (at_10_13)) (at_10_12))
)

(:action move_10_13_10_14
 :parameters ()
 :precondition (and (at_10_13))
 :effect (and (not (at_10_13)) (at_10_14))
)

(:action move_10_14_9_14
 :parameters ()
 :precondition (and (at_10_14))
 :effect (and (not (at_10_14)) (at_9_14))
)

(:action move_10_14_11_14
 :parameters ()
 :precondition (and (at_10_14))
 :effect (and (not (at_10_14)) (at_11_14))
)

(:action move_10_14_10_13
 :parameters ()
 :precondition (and (at_10_14))
 :effect (and (not (at_10_14)) (at_10_13))
)

(:action move_10_14_10_15
 :parameters ()
 :precondition (and (at_10_14))
 :poss-precondition (and (bridge_10_14_10_15))
 :effect (and (not (at_10_14)) (at_10_15))
)

(:action move_10_15_9_15
 :parameters ()
 :precondition (and (at_10_15))
 :effect (and (not (at_10_15)) (at_9_15))
)

(:action move_10_15_11_15
 :parameters ()
 :precondition (and (at_10_15))
 :poss-precondition (and (bridge_10_15_11_15))
 :effect (and (not (at_10_15)) (at_11_15))
)

(:action move_10_15_10_14
 :parameters ()
 :precondition (and (at_10_15))
 :poss-precondition (and (bridge_10_14_10_15))
 :effect (and (not (at_10_15)) (at_10_14))
)

(:action move_11_0_10_0
 :parameters ()
 :precondition (and (at_11_0))
 :effect (and (not (at_11_0)) (at_10_0))
)

(:action move_11_0_12_0
 :parameters ()
 :precondition (and (at_11_0))
 :effect (and (not (at_11_0)) (at_12_0))
)

(:action move_11_0_11_1
 :parameters ()
 :precondition (and (at_11_0))
 :poss-precondition (and (bridge_11_0_11_1))
 :effect (and (not (at_11_0)) (at_11_1))
)

(:action move_11_1_10_1
 :parameters ()
 :precondition (and (at_11_1))
 :effect (and (not (at_11_1)) (at_10_1))
)

(:action move_11_1_12_1
 :parameters ()
 :precondition (and (at_11_1))
 :effect (and (not (at_11_1)) (at_12_1))
)

(:action move_11_1_11_0
 :parameters ()
 :precondition (and (at_11_1))
 :poss-precondition (and (bridge_11_0_11_1))
 :effect (and (not (at_11_1)) (at_11_0))
)

(:action move_11_1_11_2
 :parameters ()
 :precondition (and (at_11_1))
 :poss-precondition (and (bridge_11_1_11_2))
 :effect (and (not (at_11_1)) (at_11_2))
)

(:action move_11_2_10_2
 :parameters ()
 :precondition (and (at_11_2))
 :poss-precondition (and (bridge_10_2_11_2))
 :effect (and (not (at_11_2)) (at_10_2))
)

(:action move_11_2_12_2
 :parameters ()
 :precondition (and (at_11_2))
 :poss-precondition (and (bridge_11_2_12_2))
 :effect (and (not (at_11_2)) (at_12_2))
)

(:action move_11_2_11_1
 :parameters ()
 :precondition (and (at_11_2))
 :poss-precondition (and (bridge_11_1_11_2))
 :effect (and (not (at_11_2)) (at_11_1))
)

(:action move_11_2_11_3
 :parameters ()
 :precondition (and (at_11_2))
 :poss-precondition (and (bridge_11_2_11_3))
 :effect (and (not (at_11_2)) (at_11_3))
)

(:action move_11_3_10_3
 :parameters ()
 :precondition (and (at_11_3))
 :poss-precondition (and (bridge_10_3_11_3))
 :effect (and (not (at_11_3)) (at_10_3))
)

(:action move_11_3_12_3
 :parameters ()
 :precondition (and (at_11_3))
 :poss-precondition (and (bridge_11_3_12_3))
 :effect (and (not (at_11_3)) (at_12_3))
)

(:action move_11_3_11_2
 :parameters ()
 :precondition (and (at_11_3))
 :poss-precondition (and (bridge_11_2_11_3))
 :effect (and (not (at_11_3)) (at_11_2))
)

(:action move_11_3_11_4
 :parameters ()
 :precondition (and (at_11_3))
 :effect (and (not (at_11_3)) (at_11_4))
)

(:action move_11_4_10_4
 :parameters ()
 :precondition (and (at_11_4))
 :effect (and (not (at_11_4)) (at_10_4))
)

(:action move_11_4_12_4
 :parameters ()
 :precondition (and (at_11_4))
 :effect (and (not (at_11_4)) (at_12_4))
)

(:action move_11_4_11_3
 :parameters ()
 :precondition (and (at_11_4))
 :effect (and (not (at_11_4)) (at_11_3))
)

(:action move_11_4_11_5
 :parameters ()
 :precondition (and (at_11_4))
 :poss-precondition (and (bridge_11_4_11_5))
 :effect (and (not (at_11_4)) (at_11_5))
)

(:action move_11_5_10_5
 :parameters ()
 :precondition (and (at_11_5))
 :effect (and (not (at_11_5)) (at_10_5))
)

(:action move_11_5_12_5
 :parameters ()
 :precondition (and (at_11_5))
 :poss-precondition (and (bridge_11_5_12_5))
 :effect (and (not (at_11_5)) (at_12_5))
)

(:action move_11_5_11_4
 :parameters ()
 :precondition (and (at_11_5))
 :poss-precondition (and (bridge_11_4_11_5))
 :effect (and (not (at_11_5)) (at_11_4))
)

(:action move_11_5_11_6
 :parameters ()
 :precondition (and (at_11_5))
 :effect (and (not (at_11_5)) (at_11_6))
)

(:action move_11_6_10_6
 :parameters ()
 :precondition (and (at_11_6))
 :effect (and (not (at_11_6)) (at_10_6))
)

(:action move_11_6_12_6
 :parameters ()
 :precondition (and (at_11_6))
 :effect (and (not (at_11_6)) (at_12_6))
)

(:action move_11_6_11_5
 :parameters ()
 :precondition (and (at_11_6))
 :effect (and (not (at_11_6)) (at_11_5))
)

(:action move_11_6_11_7
 :parameters ()
 :precondition (and (at_11_6))
 :effect (and (not (at_11_6)) (at_11_7))
)

(:action move_11_7_10_7
 :parameters ()
 :precondition (and (at_11_7))
 :poss-precondition (and (bridge_10_7_11_7))
 :effect (and (not (at_11_7)) (at_10_7))
)

(:action move_11_7_12_7
 :parameters ()
 :precondition (and (at_11_7))
 :poss-precondition (and (bridge_11_7_12_7))
 :effect (and (not (at_11_7)) (at_12_7))
)

(:action move_11_7_11_6
 :parameters ()
 :precondition (and (at_11_7))
 :effect (and (not (at_11_7)) (at_11_6))
)

(:action move_11_7_11_8
 :parameters ()
 :precondition (and (at_11_7))
 :effect (and (not (at_11_7)) (at_11_8))
)

(:action move_11_8_10_8
 :parameters ()
 :precondition (and (at_11_8))
 :poss-precondition (and (bridge_10_8_11_8))
 :effect (and (not (at_11_8)) (at_10_8))
)

(:action move_11_8_12_8
 :parameters ()
 :precondition (and (at_11_8))
 :poss-precondition (and (bridge_11_8_12_8))
 :effect (and (not (at_11_8)) (at_12_8))
)

(:action move_11_8_11_7
 :parameters ()
 :precondition (and (at_11_8))
 :effect (and (not (at_11_8)) (at_11_7))
)

(:action move_11_8_11_9
 :parameters ()
 :precondition (and (at_11_8))
 :effect (and (not (at_11_8)) (at_11_9))
)

(:action move_11_9_10_9
 :parameters ()
 :precondition (and (at_11_9))
 :poss-precondition (and (bridge_10_9_11_9))
 :effect (and (not (at_11_9)) (at_10_9))
)

(:action move_11_9_12_9
 :parameters ()
 :precondition (and (at_11_9))
 :effect (and (not (at_11_9)) (at_12_9))
)

(:action move_11_9_11_8
 :parameters ()
 :precondition (and (at_11_9))
 :effect (and (not (at_11_9)) (at_11_8))
)

(:action move_11_9_11_10
 :parameters ()
 :precondition (and (at_11_9))
 :effect (and (not (at_11_9)) (at_11_10))
)

(:action move_11_10_10_10
 :parameters ()
 :precondition (and (at_11_10))
 :poss-precondition (and (bridge_10_10_11_10))
 :effect (and (not (at_11_10)) (at_10_10))
)

(:action move_11_10_12_10
 :parameters ()
 :precondition (and (at_11_10))
 :effect (and (not (at_11_10)) (at_12_10))
)

(:action move_11_10_11_9
 :parameters ()
 :precondition (and (at_11_10))
 :effect (and (not (at_11_10)) (at_11_9))
)

(:action move_11_10_11_11
 :parameters ()
 :precondition (and (at_11_10))
 :effect (and (not (at_11_10)) (at_11_11))
)

(:action move_11_11_10_11
 :parameters ()
 :precondition (and (at_11_11))
 :effect (and (not (at_11_11)) (at_10_11))
)

(:action move_11_11_12_11
 :parameters ()
 :precondition (and (at_11_11))
 :poss-precondition (and (bridge_11_11_12_11))
 :effect (and (not (at_11_11)) (at_12_11))
)

(:action move_11_11_11_10
 :parameters ()
 :precondition (and (at_11_11))
 :effect (and (not (at_11_11)) (at_11_10))
)

(:action move_11_11_11_12
 :parameters ()
 :precondition (and (at_11_11))
 :poss-precondition (and (bridge_11_11_11_12))
 :effect (and (not (at_11_11)) (at_11_12))
)

(:action move_11_12_10_12
 :parameters ()
 :precondition (and (at_11_12))
 :poss-precondition (and (bridge_10_12_11_12))
 :effect (and (not (at_11_12)) (at_10_12))
)

(:action move_11_12_12_12
 :parameters ()
 :precondition (and (at_11_12))
 :effect (and (not (at_11_12)) (at_12_12))
)

(:action move_11_12_11_11
 :parameters ()
 :precondition (and (at_11_12))
 :poss-precondition (and (bridge_11_11_11_12))
 :effect (and (not (at_11_12)) (at_11_11))
)

(:action move_11_12_11_13
 :parameters ()
 :precondition (and (at_11_12))
 :poss-precondition (and (bridge_11_12_11_13))
 :effect (and (not (at_11_12)) (at_11_13))
)

(:action move_11_13_10_13
 :parameters ()
 :precondition (and (at_11_13))
 :effect (and (not (at_11_13)) (at_10_13))
)

(:action move_11_13_12_13
 :parameters ()
 :precondition (and (at_11_13))
 :poss-precondition (and (bridge_11_13_12_13))
 :effect (and (not (at_11_13)) (at_12_13))
)

(:action move_11_13_11_12
 :parameters ()
 :precondition (and (at_11_13))
 :poss-precondition (and (bridge_11_12_11_13))
 :effect (and (not (at_11_13)) (at_11_12))
)

(:action move_11_13_11_14
 :parameters ()
 :precondition (and (at_11_13))
 :effect (and (not (at_11_13)) (at_11_14))
)

(:action move_11_14_10_14
 :parameters ()
 :precondition (and (at_11_14))
 :effect (and (not (at_11_14)) (at_10_14))
)

(:action move_11_14_12_14
 :parameters ()
 :precondition (and (at_11_14))
 :poss-precondition (and (bridge_11_14_12_14))
 :effect (and (not (at_11_14)) (at_12_14))
)

(:action move_11_14_11_13
 :parameters ()
 :precondition (and (at_11_14))
 :effect (and (not (at_11_14)) (at_11_13))
)

(:action move_11_14_11_15
 :parameters ()
 :precondition (and (at_11_14))
 :effect (and (not (at_11_14)) (at_11_15))
)

(:action move_11_15_10_15
 :parameters ()
 :precondition (and (at_11_15))
 :poss-precondition (and (bridge_10_15_11_15))
 :effect (and (not (at_11_15)) (at_10_15))
)

(:action move_11_15_12_15
 :parameters ()
 :precondition (and (at_11_15))
 :effect (and (not (at_11_15)) (at_12_15))
)

(:action move_11_15_11_14
 :parameters ()
 :precondition (and (at_11_15))
 :effect (and (not (at_11_15)) (at_11_14))
)

(:action move_12_0_11_0
 :parameters ()
 :precondition (and (at_12_0))
 :effect (and (not (at_12_0)) (at_11_0))
)

(:action move_12_0_13_0
 :parameters ()
 :precondition (and (at_12_0))
 :effect (and (not (at_12_0)) (at_13_0))
)

(:action move_12_0_12_1
 :parameters ()
 :precondition (and (at_12_0))
 :poss-precondition (and (bridge_12_0_12_1))
 :effect (and (not (at_12_0)) (at_12_1))
)

(:action move_12_1_11_1
 :parameters ()
 :precondition (and (at_12_1))
 :effect (and (not (at_12_1)) (at_11_1))
)

(:action move_12_1_13_1
 :parameters ()
 :precondition (and (at_12_1))
 :effect (and (not (at_12_1)) (at_13_1))
)

(:action move_12_1_12_0
 :parameters ()
 :precondition (and (at_12_1))
 :poss-precondition (and (bridge_12_0_12_1))
 :effect (and (not (at_12_1)) (at_12_0))
)

(:action move_12_1_12_2
 :parameters ()
 :precondition (and (at_12_1))
 :effect (and (not (at_12_1)) (at_12_2))
)

(:action move_12_2_11_2
 :parameters ()
 :precondition (and (at_12_2))
 :poss-precondition (and (bridge_11_2_12_2))
 :effect (and (not (at_12_2)) (at_11_2))
)

(:action move_12_2_13_2
 :parameters ()
 :precondition (and (at_12_2))
 :effect (and (not (at_12_2)) (at_13_2))
)

(:action move_12_2_12_1
 :parameters ()
 :precondition (and (at_12_2))
 :effect (and (not (at_12_2)) (at_12_1))
)

(:action move_12_2_12_3
 :parameters ()
 :precondition (and (at_12_2))
 :effect (and (not (at_12_2)) (at_12_3))
)

(:action move_12_3_11_3
 :parameters ()
 :precondition (and (at_12_3))
 :poss-precondition (and (bridge_11_3_12_3))
 :effect (and (not (at_12_3)) (at_11_3))
)

(:action move_12_3_13_3
 :parameters ()
 :precondition (and (at_12_3))
 :effect (and (not (at_12_3)) (at_13_3))
)

(:action move_12_3_12_2
 :parameters ()
 :precondition (and (at_12_3))
 :effect (and (not (at_12_3)) (at_12_2))
)

(:action move_12_3_12_4
 :parameters ()
 :precondition (and (at_12_3))
 :effect (and (not (at_12_3)) (at_12_4))
)

(:action move_12_4_11_4
 :parameters ()
 :precondition (and (at_12_4))
 :effect (and (not (at_12_4)) (at_11_4))
)

(:action move_12_4_13_4
 :parameters ()
 :precondition (and (at_12_4))
 :effect (and (not (at_12_4)) (at_13_4))
)

(:action move_12_4_12_3
 :parameters ()
 :precondition (and (at_12_4))
 :effect (and (not (at_12_4)) (at_12_3))
)

(:action move_12_4_12_5
 :parameters ()
 :precondition (and (at_12_4))
 :effect (and (not (at_12_4)) (at_12_5))
)

(:action move_12_5_11_5
 :parameters ()
 :precondition (and (at_12_5))
 :poss-precondition (and (bridge_11_5_12_5))
 :effect (and (not (at_12_5)) (at_11_5))
)

(:action move_12_5_13_5
 :parameters ()
 :precondition (and (at_12_5))
 :poss-precondition (and (bridge_12_5_13_5))
 :effect (and (not (at_12_5)) (at_13_5))
)

(:action move_12_5_12_4
 :parameters ()
 :precondition (and (at_12_5))
 :effect (and (not (at_12_5)) (at_12_4))
)

(:action move_12_5_12_6
 :parameters ()
 :precondition (and (at_12_5))
 :poss-precondition (and (bridge_12_5_12_6))
 :effect (and (not (at_12_5)) (at_12_6))
)

(:action move_12_6_11_6
 :parameters ()
 :precondition (and (at_12_6))
 :effect (and (not (at_12_6)) (at_11_6))
)

(:action move_12_6_13_6
 :parameters ()
 :precondition (and (at_12_6))
 :poss-precondition (and (bridge_12_6_13_6))
 :effect (and (not (at_12_6)) (at_13_6))
)

(:action move_12_6_12_5
 :parameters ()
 :precondition (and (at_12_6))
 :poss-precondition (and (bridge_12_5_12_6))
 :effect (and (not (at_12_6)) (at_12_5))
)

(:action move_12_6_12_7
 :parameters ()
 :precondition (and (at_12_6))
 :poss-precondition (and (bridge_12_6_12_7))
 :effect (and (not (at_12_6)) (at_12_7))
)

(:action move_12_7_11_7
 :parameters ()
 :precondition (and (at_12_7))
 :poss-precondition (and (bridge_11_7_12_7))
 :effect (and (not (at_12_7)) (at_11_7))
)

(:action move_12_7_13_7
 :parameters ()
 :precondition (and (at_12_7))
 :poss-precondition (and (bridge_12_7_13_7))
 :effect (and (not (at_12_7)) (at_13_7))
)

(:action move_12_7_12_6
 :parameters ()
 :precondition (and (at_12_7))
 :poss-precondition (and (bridge_12_6_12_7))
 :effect (and (not (at_12_7)) (at_12_6))
)

(:action move_12_7_12_8
 :parameters ()
 :precondition (and (at_12_7))
 :poss-precondition (and (bridge_12_7_12_8))
 :effect (and (not (at_12_7)) (at_12_8))
)

(:action move_12_8_11_8
 :parameters ()
 :precondition (and (at_12_8))
 :poss-precondition (and (bridge_11_8_12_8))
 :effect (and (not (at_12_8)) (at_11_8))
)

(:action move_12_8_13_8
 :parameters ()
 :precondition (and (at_12_8))
 :poss-precondition (and (bridge_12_8_13_8))
 :effect (and (not (at_12_8)) (at_13_8))
)

(:action move_12_8_12_7
 :parameters ()
 :precondition (and (at_12_8))
 :poss-precondition (and (bridge_12_7_12_8))
 :effect (and (not (at_12_8)) (at_12_7))
)

(:action move_12_8_12_9
 :parameters ()
 :precondition (and (at_12_8))
 :poss-precondition (and (bridge_12_8_12_9))
 :effect (and (not (at_12_8)) (at_12_9))
)

(:action move_12_9_11_9
 :parameters ()
 :precondition (and (at_12_9))
 :effect (and (not (at_12_9)) (at_11_9))
)

(:action move_12_9_13_9
 :parameters ()
 :precondition (and (at_12_9))
 :poss-precondition (and (bridge_12_9_13_9))
 :effect (and (not (at_12_9)) (at_13_9))
)

(:action move_12_9_12_8
 :parameters ()
 :precondition (and (at_12_9))
 :poss-precondition (and (bridge_12_8_12_9))
 :effect (and (not (at_12_9)) (at_12_8))
)

(:action move_12_9_12_10
 :parameters ()
 :precondition (and (at_12_9))
 :poss-precondition (and (bridge_12_9_12_10))
 :effect (and (not (at_12_9)) (at_12_10))
)

(:action move_12_10_11_10
 :parameters ()
 :precondition (and (at_12_10))
 :effect (and (not (at_12_10)) (at_11_10))
)

(:action move_12_10_13_10
 :parameters ()
 :precondition (and (at_12_10))
 :poss-precondition (and (bridge_12_10_13_10))
 :effect (and (not (at_12_10)) (at_13_10))
)

(:action move_12_10_12_9
 :parameters ()
 :precondition (and (at_12_10))
 :poss-precondition (and (bridge_12_9_12_10))
 :effect (and (not (at_12_10)) (at_12_9))
)

(:action move_12_10_12_11
 :parameters ()
 :precondition (and (at_12_10))
 :poss-precondition (and (bridge_12_10_12_11))
 :effect (and (not (at_12_10)) (at_12_11))
)

(:action move_12_11_11_11
 :parameters ()
 :precondition (and (at_12_11))
 :poss-precondition (and (bridge_11_11_12_11))
 :effect (and (not (at_12_11)) (at_11_11))
)

(:action move_12_11_13_11
 :parameters ()
 :precondition (and (at_12_11))
 :effect (and (not (at_12_11)) (at_13_11))
)

(:action move_12_11_12_10
 :parameters ()
 :precondition (and (at_12_11))
 :poss-precondition (and (bridge_12_10_12_11))
 :effect (and (not (at_12_11)) (at_12_10))
)

(:action move_12_11_12_12
 :parameters ()
 :precondition (and (at_12_11))
 :poss-precondition (and (bridge_12_11_12_12))
 :effect (and (not (at_12_11)) (at_12_12))
)

(:action move_12_12_11_12
 :parameters ()
 :precondition (and (at_12_12))
 :effect (and (not (at_12_12)) (at_11_12))
)

(:action move_12_12_13_12
 :parameters ()
 :precondition (and (at_12_12))
 :poss-precondition (and (bridge_12_12_13_12))
 :effect (and (not (at_12_12)) (at_13_12))
)

(:action move_12_12_12_11
 :parameters ()
 :precondition (and (at_12_12))
 :poss-precondition (and (bridge_12_11_12_12))
 :effect (and (not (at_12_12)) (at_12_11))
)

(:action move_12_12_12_13
 :parameters ()
 :precondition (and (at_12_12))
 :poss-precondition (and (bridge_12_12_12_13))
 :effect (and (not (at_12_12)) (at_12_13))
)

(:action move_12_13_11_13
 :parameters ()
 :precondition (and (at_12_13))
 :poss-precondition (and (bridge_11_13_12_13))
 :effect (and (not (at_12_13)) (at_11_13))
)

(:action move_12_13_13_13
 :parameters ()
 :precondition (and (at_12_13))
 :effect (and (not (at_12_13)) (at_13_13))
)

(:action move_12_13_12_12
 :parameters ()
 :precondition (and (at_12_13))
 :poss-precondition (and (bridge_12_12_12_13))
 :effect (and (not (at_12_13)) (at_12_12))
)

(:action move_12_13_12_14
 :parameters ()
 :precondition (and (at_12_13))
 :poss-precondition (and (bridge_12_13_12_14))
 :effect (and (not (at_12_13)) (at_12_14))
)

(:action move_12_14_11_14
 :parameters ()
 :precondition (and (at_12_14))
 :poss-precondition (and (bridge_11_14_12_14))
 :effect (and (not (at_12_14)) (at_11_14))
)

(:action move_12_14_13_14
 :parameters ()
 :precondition (and (at_12_14))
 :effect (and (not (at_12_14)) (at_13_14))
)

(:action move_12_14_12_13
 :parameters ()
 :precondition (and (at_12_14))
 :poss-precondition (and (bridge_12_13_12_14))
 :effect (and (not (at_12_14)) (at_12_13))
)

(:action move_12_14_12_15
 :parameters ()
 :precondition (and (at_12_14))
 :effect (and (not (at_12_14)) (at_12_15))
)

(:action move_12_15_11_15
 :parameters ()
 :precondition (and (at_12_15))
 :effect (and (not (at_12_15)) (at_11_15))
)

(:action move_12_15_13_15
 :parameters ()
 :precondition (and (at_12_15))
 :effect (and (not (at_12_15)) (at_13_15))
)

(:action move_12_15_12_14
 :parameters ()
 :precondition (and (at_12_15))
 :effect (and (not (at_12_15)) (at_12_14))
)

(:action move_13_0_12_0
 :parameters ()
 :precondition (and (at_13_0))
 :effect (and (not (at_13_0)) (at_12_0))
)

(:action move_13_0_14_0
 :parameters ()
 :precondition (and (at_13_0))
 :poss-precondition (and (bridge_13_0_14_0))
 :effect (and (not (at_13_0)) (at_14_0))
)

(:action move_13_0_13_1
 :parameters ()
 :precondition (and (at_13_0))
 :poss-precondition (and (bridge_13_0_13_1))
 :effect (and (not (at_13_0)) (at_13_1))
)

(:action move_13_1_12_1
 :parameters ()
 :precondition (and (at_13_1))
 :effect (and (not (at_13_1)) (at_12_1))
)

(:action move_13_1_14_1
 :parameters ()
 :precondition (and (at_13_1))
 :effect (and (not (at_13_1)) (at_14_1))
)

(:action move_13_1_13_0
 :parameters ()
 :precondition (and (at_13_1))
 :poss-precondition (and (bridge_13_0_13_1))
 :effect (and (not (at_13_1)) (at_13_0))
)

(:action move_13_1_13_2
 :parameters ()
 :precondition (and (at_13_1))
 :poss-precondition (and (bridge_13_1_13_2))
 :effect (and (not (at_13_1)) (at_13_2))
)

(:action move_13_2_12_2
 :parameters ()
 :precondition (and (at_13_2))
 :effect (and (not (at_13_2)) (at_12_2))
)

(:action move_13_2_14_2
 :parameters ()
 :precondition (and (at_13_2))
 :effect (and (not (at_13_2)) (at_14_2))
)

(:action move_13_2_13_1
 :parameters ()
 :precondition (and (at_13_2))
 :poss-precondition (and (bridge_13_1_13_2))
 :effect (and (not (at_13_2)) (at_13_1))
)

(:action move_13_2_13_3
 :parameters ()
 :precondition (and (at_13_2))
 :effect (and (not (at_13_2)) (at_13_3))
)

(:action move_13_3_12_3
 :parameters ()
 :precondition (and (at_13_3))
 :effect (and (not (at_13_3)) (at_12_3))
)

(:action move_13_3_14_3
 :parameters ()
 :precondition (and (at_13_3))
 :effect (and (not (at_13_3)) (at_14_3))
)

(:action move_13_3_13_2
 :parameters ()
 :precondition (and (at_13_3))
 :effect (and (not (at_13_3)) (at_13_2))
)

(:action move_13_3_13_4
 :parameters ()
 :precondition (and (at_13_3))
 :effect (and (not (at_13_3)) (at_13_4))
)

(:action move_13_4_12_4
 :parameters ()
 :precondition (and (at_13_4))
 :effect (and (not (at_13_4)) (at_12_4))
)

(:action move_13_4_14_4
 :parameters ()
 :precondition (and (at_13_4))
 :effect (and (not (at_13_4)) (at_14_4))
)

(:action move_13_4_13_3
 :parameters ()
 :precondition (and (at_13_4))
 :effect (and (not (at_13_4)) (at_13_3))
)

(:action move_13_4_13_5
 :parameters ()
 :precondition (and (at_13_4))
 :poss-precondition (and (bridge_13_4_13_5))
 :effect (and (not (at_13_4)) (at_13_5))
)

(:action move_13_5_12_5
 :parameters ()
 :precondition (and (at_13_5))
 :poss-precondition (and (bridge_12_5_13_5))
 :effect (and (not (at_13_5)) (at_12_5))
)

(:action move_13_5_14_5
 :parameters ()
 :precondition (and (at_13_5))
 :effect (and (not (at_13_5)) (at_14_5))
)

(:action move_13_5_13_4
 :parameters ()
 :precondition (and (at_13_5))
 :poss-precondition (and (bridge_13_4_13_5))
 :effect (and (not (at_13_5)) (at_13_4))
)

(:action move_13_5_13_6
 :parameters ()
 :precondition (and (at_13_5))
 :poss-precondition (and (bridge_13_5_13_6))
 :effect (and (not (at_13_5)) (at_13_6))
)

(:action move_13_6_12_6
 :parameters ()
 :precondition (and (at_13_6))
 :poss-precondition (and (bridge_12_6_13_6))
 :effect (and (not (at_13_6)) (at_12_6))
)

(:action move_13_6_14_6
 :parameters ()
 :precondition (and (at_13_6))
 :effect (and (not (at_13_6)) (at_14_6))
)

(:action move_13_6_13_5
 :parameters ()
 :precondition (and (at_13_6))
 :poss-precondition (and (bridge_13_5_13_6))
 :effect (and (not (at_13_6)) (at_13_5))
)

(:action move_13_6_13_7
 :parameters ()
 :precondition (and (at_13_6))
 :poss-precondition (and (bridge_13_6_13_7))
 :effect (and (not (at_13_6)) (at_13_7))
)

(:action move_13_7_12_7
 :parameters ()
 :precondition (and (at_13_7))
 :poss-precondition (and (bridge_12_7_13_7))
 :effect (and (not (at_13_7)) (at_12_7))
)

(:action move_13_7_14_7
 :parameters ()
 :precondition (and (at_13_7))
 :poss-precondition (and (bridge_13_7_14_7))
 :effect (and (not (at_13_7)) (at_14_7))
)

(:action move_13_7_13_6
 :parameters ()
 :precondition (and (at_13_7))
 :poss-precondition (and (bridge_13_6_13_7))
 :effect (and (not (at_13_7)) (at_13_6))
)

(:action move_13_7_13_8
 :parameters ()
 :precondition (and (at_13_7))
 :effect (and (not (at_13_7)) (at_13_8))
)

(:action move_13_8_12_8
 :parameters ()
 :precondition (and (at_13_8))
 :poss-precondition (and (bridge_12_8_13_8))
 :effect (and (not (at_13_8)) (at_12_8))
)

(:action move_13_8_14_8
 :parameters ()
 :precondition (and (at_13_8))
 :poss-precondition (and (bridge_13_8_14_8))
 :effect (and (not (at_13_8)) (at_14_8))
)

(:action move_13_8_13_7
 :parameters ()
 :precondition (and (at_13_8))
 :effect (and (not (at_13_8)) (at_13_7))
)

(:action move_13_8_13_9
 :parameters ()
 :precondition (and (at_13_8))
 :effect (and (not (at_13_8)) (at_13_9))
)

(:action move_13_9_12_9
 :parameters ()
 :precondition (and (at_13_9))
 :poss-precondition (and (bridge_12_9_13_9))
 :effect (and (not (at_13_9)) (at_12_9))
)

(:action move_13_9_14_9
 :parameters ()
 :precondition (and (at_13_9))
 :effect (and (not (at_13_9)) (at_14_9))
)

(:action move_13_9_13_8
 :parameters ()
 :precondition (and (at_13_9))
 :effect (and (not (at_13_9)) (at_13_8))
)

(:action move_13_9_13_10
 :parameters ()
 :precondition (and (at_13_9))
 :poss-precondition (and (bridge_13_9_13_10))
 :effect (and (not (at_13_9)) (at_13_10))
)

(:action move_13_10_12_10
 :parameters ()
 :precondition (and (at_13_10))
 :poss-precondition (and (bridge_12_10_13_10))
 :effect (and (not (at_13_10)) (at_12_10))
)

(:action move_13_10_14_10
 :parameters ()
 :precondition (and (at_13_10))
 :poss-precondition (and (bridge_13_10_14_10))
 :effect (and (not (at_13_10)) (at_14_10))
)

(:action move_13_10_13_9
 :parameters ()
 :precondition (and (at_13_10))
 :poss-precondition (and (bridge_13_9_13_10))
 :effect (and (not (at_13_10)) (at_13_9))
)

(:action move_13_10_13_11
 :parameters ()
 :precondition (and (at_13_10))
 :poss-precondition (and (bridge_13_10_13_11))
 :effect (and (not (at_13_10)) (at_13_11))
)

(:action move_13_11_12_11
 :parameters ()
 :precondition (and (at_13_11))
 :effect (and (not (at_13_11)) (at_12_11))
)

(:action move_13_11_14_11
 :parameters ()
 :precondition (and (at_13_11))
 :poss-precondition (and (bridge_13_11_14_11))
 :effect (and (not (at_13_11)) (at_14_11))
)

(:action move_13_11_13_10
 :parameters ()
 :precondition (and (at_13_11))
 :poss-precondition (and (bridge_13_10_13_11))
 :effect (and (not (at_13_11)) (at_13_10))
)

(:action move_13_11_13_12
 :parameters ()
 :precondition (and (at_13_11))
 :poss-precondition (and (bridge_13_11_13_12))
 :effect (and (not (at_13_11)) (at_13_12))
)

(:action move_13_12_12_12
 :parameters ()
 :precondition (and (at_13_12))
 :poss-precondition (and (bridge_12_12_13_12))
 :effect (and (not (at_13_12)) (at_12_12))
)

(:action move_13_12_14_12
 :parameters ()
 :precondition (and (at_13_12))
 :poss-precondition (and (bridge_13_12_14_12))
 :effect (and (not (at_13_12)) (at_14_12))
)

(:action move_13_12_13_11
 :parameters ()
 :precondition (and (at_13_12))
 :poss-precondition (and (bridge_13_11_13_12))
 :effect (and (not (at_13_12)) (at_13_11))
)

(:action move_13_12_13_13
 :parameters ()
 :precondition (and (at_13_12))
 :effect (and (not (at_13_12)) (at_13_13))
)

(:action move_13_13_12_13
 :parameters ()
 :precondition (and (at_13_13))
 :effect (and (not (at_13_13)) (at_12_13))
)

(:action move_13_13_14_13
 :parameters ()
 :precondition (and (at_13_13))
 :poss-precondition (and (bridge_13_13_14_13))
 :effect (and (not (at_13_13)) (at_14_13))
)

(:action move_13_13_13_12
 :parameters ()
 :precondition (and (at_13_13))
 :effect (and (not (at_13_13)) (at_13_12))
)

(:action move_13_13_13_14
 :parameters ()
 :precondition (and (at_13_13))
 :effect (and (not (at_13_13)) (at_13_14))
)

(:action move_13_14_12_14
 :parameters ()
 :precondition (and (at_13_14))
 :effect (and (not (at_13_14)) (at_12_14))
)

(:action move_13_14_14_14
 :parameters ()
 :precondition (and (at_13_14))
 :poss-precondition (and (bridge_13_14_14_14))
 :effect (and (not (at_13_14)) (at_14_14))
)

(:action move_13_14_13_13
 :parameters ()
 :precondition (and (at_13_14))
 :effect (and (not (at_13_14)) (at_13_13))
)

(:action move_13_14_13_15
 :parameters ()
 :precondition (and (at_13_14))
 :poss-precondition (and (bridge_13_14_13_15))
 :effect (and (not (at_13_14)) (at_13_15))
)

(:action move_13_15_12_15
 :parameters ()
 :precondition (and (at_13_15))
 :effect (and (not (at_13_15)) (at_12_15))
)

(:action move_13_15_14_15
 :parameters ()
 :precondition (and (at_13_15))
 :poss-precondition (and (bridge_13_15_14_15))
 :effect (and (not (at_13_15)) (at_14_15))
)

(:action move_13_15_13_14
 :parameters ()
 :precondition (and (at_13_15))
 :poss-precondition (and (bridge_13_14_13_15))
 :effect (and (not (at_13_15)) (at_13_14))
)

(:action move_14_0_13_0
 :parameters ()
 :precondition (and (at_14_0))
 :poss-precondition (and (bridge_13_0_14_0))
 :effect (and (not (at_14_0)) (at_13_0))
)

(:action move_14_0_15_0
 :parameters ()
 :precondition (and (at_14_0))
 :effect (and (not (at_14_0)) (at_15_0))
)

(:action move_14_0_14_1
 :parameters ()
 :precondition (and (at_14_0))
 :effect (and (not (at_14_0)) (at_14_1))
)

(:action move_14_1_13_1
 :parameters ()
 :precondition (and (at_14_1))
 :effect (and (not (at_14_1)) (at_13_1))
)

(:action move_14_1_15_1
 :parameters ()
 :precondition (and (at_14_1))
 :effect (and (not (at_14_1)) (at_15_1))
)

(:action move_14_1_14_0
 :parameters ()
 :precondition (and (at_14_1))
 :effect (and (not (at_14_1)) (at_14_0))
)

(:action move_14_1_14_2
 :parameters ()
 :precondition (and (at_14_1))
 :poss-precondition (and (bridge_14_1_14_2))
 :effect (and (not (at_14_1)) (at_14_2))
)

(:action move_14_2_13_2
 :parameters ()
 :precondition (and (at_14_2))
 :effect (and (not (at_14_2)) (at_13_2))
)

(:action move_14_2_15_2
 :parameters ()
 :precondition (and (at_14_2))
 :effect (and (not (at_14_2)) (at_15_2))
)

(:action move_14_2_14_1
 :parameters ()
 :precondition (and (at_14_2))
 :poss-precondition (and (bridge_14_1_14_2))
 :effect (and (not (at_14_2)) (at_14_1))
)

(:action move_14_2_14_3
 :parameters ()
 :precondition (and (at_14_2))
 :effect (and (not (at_14_2)) (at_14_3))
)

(:action move_14_3_13_3
 :parameters ()
 :precondition (and (at_14_3))
 :effect (and (not (at_14_3)) (at_13_3))
)

(:action move_14_3_15_3
 :parameters ()
 :precondition (and (at_14_3))
 :poss-precondition (and (bridge_14_3_15_3))
 :effect (and (not (at_14_3)) (at_15_3))
)

(:action move_14_3_14_2
 :parameters ()
 :precondition (and (at_14_3))
 :effect (and (not (at_14_3)) (at_14_2))
)

(:action move_14_3_14_4
 :parameters ()
 :precondition (and (at_14_3))
 :effect (and (not (at_14_3)) (at_14_4))
)

(:action move_14_4_13_4
 :parameters ()
 :precondition (and (at_14_4))
 :effect (and (not (at_14_4)) (at_13_4))
)

(:action move_14_4_15_4
 :parameters ()
 :precondition (and (at_14_4))
 :effect (and (not (at_14_4)) (at_15_4))
)

(:action move_14_4_14_3
 :parameters ()
 :precondition (and (at_14_4))
 :effect (and (not (at_14_4)) (at_14_3))
)

(:action move_14_4_14_5
 :parameters ()
 :precondition (and (at_14_4))
 :poss-precondition (and (bridge_14_4_14_5))
 :effect (and (not (at_14_4)) (at_14_5))
)

(:action move_14_5_13_5
 :parameters ()
 :precondition (and (at_14_5))
 :effect (and (not (at_14_5)) (at_13_5))
)

(:action move_14_5_15_5
 :parameters ()
 :precondition (and (at_14_5))
 :poss-precondition (and (bridge_14_5_15_5))
 :effect (and (not (at_14_5)) (at_15_5))
)

(:action move_14_5_14_4
 :parameters ()
 :precondition (and (at_14_5))
 :poss-precondition (and (bridge_14_4_14_5))
 :effect (and (not (at_14_5)) (at_14_4))
)

(:action move_14_5_14_6
 :parameters ()
 :precondition (and (at_14_5))
 :poss-precondition (and (bridge_14_5_14_6))
 :effect (and (not (at_14_5)) (at_14_6))
)

(:action move_14_6_13_6
 :parameters ()
 :precondition (and (at_14_6))
 :effect (and (not (at_14_6)) (at_13_6))
)

(:action move_14_6_15_6
 :parameters ()
 :precondition (and (at_14_6))
 :effect (and (not (at_14_6)) (at_15_6))
)

(:action move_14_6_14_5
 :parameters ()
 :precondition (and (at_14_6))
 :poss-precondition (and (bridge_14_5_14_6))
 :effect (and (not (at_14_6)) (at_14_5))
)

(:action move_14_6_14_7
 :parameters ()
 :precondition (and (at_14_6))
 :poss-precondition (and (bridge_14_6_14_7))
 :effect (and (not (at_14_6)) (at_14_7))
)

(:action move_14_7_13_7
 :parameters ()
 :precondition (and (at_14_7))
 :poss-precondition (and (bridge_13_7_14_7))
 :effect (and (not (at_14_7)) (at_13_7))
)

(:action move_14_7_15_7
 :parameters ()
 :precondition (and (at_14_7))
 :poss-precondition (and (bridge_14_7_15_7))
 :effect (and (not (at_14_7)) (at_15_7))
)

(:action move_14_7_14_6
 :parameters ()
 :precondition (and (at_14_7))
 :poss-precondition (and (bridge_14_6_14_7))
 :effect (and (not (at_14_7)) (at_14_6))
)

(:action move_14_7_14_8
 :parameters ()
 :precondition (and (at_14_7))
 :poss-precondition (and (bridge_14_7_14_8))
 :effect (and (not (at_14_7)) (at_14_8))
)

(:action move_14_8_13_8
 :parameters ()
 :precondition (and (at_14_8))
 :poss-precondition (and (bridge_13_8_14_8))
 :effect (and (not (at_14_8)) (at_13_8))
)

(:action move_14_8_15_8
 :parameters ()
 :precondition (and (at_14_8))
 :poss-precondition (and (bridge_14_8_15_8))
 :effect (and (not (at_14_8)) (at_15_8))
)

(:action move_14_8_14_7
 :parameters ()
 :precondition (and (at_14_8))
 :poss-precondition (and (bridge_14_7_14_8))
 :effect (and (not (at_14_8)) (at_14_7))
)

(:action move_14_8_14_9
 :parameters ()
 :precondition (and (at_14_8))
 :effect (and (not (at_14_8)) (at_14_9))
)

(:action move_14_9_13_9
 :parameters ()
 :precondition (and (at_14_9))
 :effect (and (not (at_14_9)) (at_13_9))
)

(:action move_14_9_15_9
 :parameters ()
 :precondition (and (at_14_9))
 :poss-precondition (and (bridge_14_9_15_9))
 :effect (and (not (at_14_9)) (at_15_9))
)

(:action move_14_9_14_8
 :parameters ()
 :precondition (and (at_14_9))
 :effect (and (not (at_14_9)) (at_14_8))
)

(:action move_14_9_14_10
 :parameters ()
 :precondition (and (at_14_9))
 :effect (and (not (at_14_9)) (at_14_10))
)

(:action move_14_10_13_10
 :parameters ()
 :precondition (and (at_14_10))
 :poss-precondition (and (bridge_13_10_14_10))
 :effect (and (not (at_14_10)) (at_13_10))
)

(:action move_14_10_15_10
 :parameters ()
 :precondition (and (at_14_10))
 :effect (and (not (at_14_10)) (at_15_10))
)

(:action move_14_10_14_9
 :parameters ()
 :precondition (and (at_14_10))
 :effect (and (not (at_14_10)) (at_14_9))
)

(:action move_14_10_14_11
 :parameters ()
 :precondition (and (at_14_10))
 :poss-precondition (and (bridge_14_10_14_11))
 :effect (and (not (at_14_10)) (at_14_11))
)

(:action move_14_11_13_11
 :parameters ()
 :precondition (and (at_14_11))
 :poss-precondition (and (bridge_13_11_14_11))
 :effect (and (not (at_14_11)) (at_13_11))
)

(:action move_14_11_15_11
 :parameters ()
 :precondition (and (at_14_11))
 :effect (and (not (at_14_11)) (at_15_11))
)

(:action move_14_11_14_10
 :parameters ()
 :precondition (and (at_14_11))
 :poss-precondition (and (bridge_14_10_14_11))
 :effect (and (not (at_14_11)) (at_14_10))
)

(:action move_14_11_14_12
 :parameters ()
 :precondition (and (at_14_11))
 :poss-precondition (and (bridge_14_11_14_12))
 :effect (and (not (at_14_11)) (at_14_12))
)

(:action move_14_12_13_12
 :parameters ()
 :precondition (and (at_14_12))
 :poss-precondition (and (bridge_13_12_14_12))
 :effect (and (not (at_14_12)) (at_13_12))
)

(:action move_14_12_15_12
 :parameters ()
 :precondition (and (at_14_12))
 :effect (and (not (at_14_12)) (at_15_12))
)

(:action move_14_12_14_11
 :parameters ()
 :precondition (and (at_14_12))
 :poss-precondition (and (bridge_14_11_14_12))
 :effect (and (not (at_14_12)) (at_14_11))
)

(:action move_14_12_14_13
 :parameters ()
 :precondition (and (at_14_12))
 :poss-precondition (and (bridge_14_12_14_13))
 :effect (and (not (at_14_12)) (at_14_13))
)

(:action move_14_13_13_13
 :parameters ()
 :precondition (and (at_14_13))
 :poss-precondition (and (bridge_13_13_14_13))
 :effect (and (not (at_14_13)) (at_13_13))
)

(:action move_14_13_15_13
 :parameters ()
 :precondition (and (at_14_13))
 :poss-precondition (and (bridge_14_13_15_13))
 :effect (and (not (at_14_13)) (at_15_13))
)

(:action move_14_13_14_12
 :parameters ()
 :precondition (and (at_14_13))
 :poss-precondition (and (bridge_14_12_14_13))
 :effect (and (not (at_14_13)) (at_14_12))
)

(:action move_14_13_14_14
 :parameters ()
 :precondition (and (at_14_13))
 :poss-precondition (and (bridge_14_13_14_14))
 :effect (and (not (at_14_13)) (at_14_14))
)

(:action move_14_14_13_14
 :parameters ()
 :precondition (and (at_14_14))
 :poss-precondition (and (bridge_13_14_14_14))
 :effect (and (not (at_14_14)) (at_13_14))
)

(:action move_14_14_15_14
 :parameters ()
 :precondition (and (at_14_14))
 :effect (and (not (at_14_14)) (at_15_14))
)

(:action move_14_14_14_13
 :parameters ()
 :precondition (and (at_14_14))
 :poss-precondition (and (bridge_14_13_14_14))
 :effect (and (not (at_14_14)) (at_14_13))
)

(:action move_14_14_14_15
 :parameters ()
 :precondition (and (at_14_14))
 :poss-precondition (and (bridge_14_14_14_15))
 :effect (and (not (at_14_14)) (at_14_15))
)

(:action move_14_15_13_15
 :parameters ()
 :precondition (and (at_14_15))
 :poss-precondition (and (bridge_13_15_14_15))
 :effect (and (not (at_14_15)) (at_13_15))
)

(:action move_14_15_15_15
 :parameters ()
 :precondition (and (at_14_15))
 :poss-precondition (and (bridge_14_15_15_15))
 :effect (and (not (at_14_15)) (at_15_15))
)

(:action move_14_15_14_14
 :parameters ()
 :precondition (and (at_14_15))
 :poss-precondition (and (bridge_14_14_14_15))
 :effect (and (not (at_14_15)) (at_14_14))
)

(:action move_15_0_14_0
 :parameters ()
 :precondition (and (at_15_0))
 :effect (and (not (at_15_0)) (at_14_0))
)

(:action move_15_0_15_1
 :parameters ()
 :precondition (and (at_15_0))
 :poss-precondition (and (bridge_15_0_15_1))
 :effect (and (not (at_15_0)) (at_15_1))
)

(:action move_15_1_14_1
 :parameters ()
 :precondition (and (at_15_1))
 :effect (and (not (at_15_1)) (at_14_1))
)

(:action move_15_1_15_0
 :parameters ()
 :precondition (and (at_15_1))
 :poss-precondition (and (bridge_15_0_15_1))
 :effect (and (not (at_15_1)) (at_15_0))
)

(:action move_15_1_15_2
 :parameters ()
 :precondition (and (at_15_1))
 :effect (and (not (at_15_1)) (at_15_2))
)

(:action move_15_2_14_2
 :parameters ()
 :precondition (and (at_15_2))
 :effect (and (not (at_15_2)) (at_14_2))
)

(:action move_15_2_15_1
 :parameters ()
 :precondition (and (at_15_2))
 :effect (and (not (at_15_2)) (at_15_1))
)

(:action move_15_2_15_3
 :parameters ()
 :precondition (and (at_15_2))
 :effect (and (not (at_15_2)) (at_15_3))
)

(:action move_15_3_14_3
 :parameters ()
 :precondition (and (at_15_3))
 :poss-precondition (and (bridge_14_3_15_3))
 :effect (and (not (at_15_3)) (at_14_3))
)

(:action move_15_3_15_2
 :parameters ()
 :precondition (and (at_15_3))
 :effect (and (not (at_15_3)) (at_15_2))
)

(:action move_15_3_15_4
 :parameters ()
 :precondition (and (at_15_3))
 :effect (and (not (at_15_3)) (at_15_4))
)

(:action move_15_4_14_4
 :parameters ()
 :precondition (and (at_15_4))
 :effect (and (not (at_15_4)) (at_14_4))
)

(:action move_15_4_15_3
 :parameters ()
 :precondition (and (at_15_4))
 :effect (and (not (at_15_4)) (at_15_3))
)

(:action move_15_4_15_5
 :parameters ()
 :precondition (and (at_15_4))
 :poss-precondition (and (bridge_15_4_15_5))
 :effect (and (not (at_15_4)) (at_15_5))
)

(:action move_15_5_14_5
 :parameters ()
 :precondition (and (at_15_5))
 :poss-precondition (and (bridge_14_5_15_5))
 :effect (and (not (at_15_5)) (at_14_5))
)

(:action move_15_5_15_4
 :parameters ()
 :precondition (and (at_15_5))
 :poss-precondition (and (bridge_15_4_15_5))
 :effect (and (not (at_15_5)) (at_15_4))
)

(:action move_15_5_15_6
 :parameters ()
 :precondition (and (at_15_5))
 :poss-precondition (and (bridge_15_5_15_6))
 :effect (and (not (at_15_5)) (at_15_6))
)

(:action move_15_6_14_6
 :parameters ()
 :precondition (and (at_15_6))
 :effect (and (not (at_15_6)) (at_14_6))
)

(:action move_15_6_15_5
 :parameters ()
 :precondition (and (at_15_6))
 :poss-precondition (and (bridge_15_5_15_6))
 :effect (and (not (at_15_6)) (at_15_5))
)

(:action move_15_6_15_7
 :parameters ()
 :precondition (and (at_15_6))
 :poss-precondition (and (bridge_15_6_15_7))
 :effect (and (not (at_15_6)) (at_15_7))
)

(:action move_15_7_14_7
 :parameters ()
 :precondition (and (at_15_7))
 :poss-precondition (and (bridge_14_7_15_7))
 :effect (and (not (at_15_7)) (at_14_7))
)

(:action move_15_7_15_6
 :parameters ()
 :precondition (and (at_15_7))
 :poss-precondition (and (bridge_15_6_15_7))
 :effect (and (not (at_15_7)) (at_15_6))
)

(:action move_15_7_15_8
 :parameters ()
 :precondition (and (at_15_7))
 :effect (and (not (at_15_7)) (at_15_8))
)

(:action move_15_8_14_8
 :parameters ()
 :precondition (and (at_15_8))
 :poss-precondition (and (bridge_14_8_15_8))
 :effect (and (not (at_15_8)) (at_14_8))
)

(:action move_15_8_15_7
 :parameters ()
 :precondition (and (at_15_8))
 :effect (and (not (at_15_8)) (at_15_7))
)

(:action move_15_8_15_9
 :parameters ()
 :precondition (and (at_15_8))
 :poss-precondition (and (bridge_15_8_15_9))
 :effect (and (not (at_15_8)) (at_15_9))
)

(:action move_15_9_14_9
 :parameters ()
 :precondition (and (at_15_9))
 :poss-precondition (and (bridge_14_9_15_9))
 :effect (and (not (at_15_9)) (at_14_9))
)

(:action move_15_9_15_8
 :parameters ()
 :precondition (and (at_15_9))
 :poss-precondition (and (bridge_15_8_15_9))
 :effect (and (not (at_15_9)) (at_15_8))
)

(:action move_15_9_15_10
 :parameters ()
 :precondition (and (at_15_9))
 :effect (and (not (at_15_9)) (at_15_10))
)

(:action move_15_10_14_10
 :parameters ()
 :precondition (and (at_15_10))
 :effect (and (not (at_15_10)) (at_14_10))
)

(:action move_15_10_15_9
 :parameters ()
 :precondition (and (at_15_10))
 :effect (and (not (at_15_10)) (at_15_9))
)

(:action move_15_10_15_11
 :parameters ()
 :precondition (and (at_15_10))
 :poss-precondition (and (bridge_15_10_15_11))
 :effect (and (not (at_15_10)) (at_15_11))
)

(:action move_15_11_14_11
 :parameters ()
 :precondition (and (at_15_11))
 :effect (and (not (at_15_11)) (at_14_11))
)

(:action move_15_11_15_10
 :parameters ()
 :precondition (and (at_15_11))
 :poss-precondition (and (bridge_15_10_15_11))
 :effect (and (not (at_15_11)) (at_15_10))
)

(:action move_15_11_15_12
 :parameters ()
 :precondition (and (at_15_11))
 :effect (and (not (at_15_11)) (at_15_12))
)

(:action move_15_12_14_12
 :parameters ()
 :precondition (and (at_15_12))
 :effect (and (not (at_15_12)) (at_14_12))
)

(:action move_15_12_15_11
 :parameters ()
 :precondition (and (at_15_12))
 :effect (and (not (at_15_12)) (at_15_11))
)

(:action move_15_12_15_13
 :parameters ()
 :precondition (and (at_15_12))
 :effect (and (not (at_15_12)) (at_15_13))
)

(:action move_15_13_14_13
 :parameters ()
 :precondition (and (at_15_13))
 :poss-precondition (and (bridge_14_13_15_13))
 :effect (and (not (at_15_13)) (at_14_13))
)

(:action move_15_13_15_12
 :parameters ()
 :precondition (and (at_15_13))
 :effect (and (not (at_15_13)) (at_15_12))
)

(:action move_15_13_15_14
 :parameters ()
 :precondition (and (at_15_13))
 :effect (and (not (at_15_13)) (at_15_14))
)

(:action move_15_14_14_14
 :parameters ()
 :precondition (and (at_15_14))
 :effect (and (not (at_15_14)) (at_14_14))
)

(:action move_15_14_15_13
 :parameters ()
 :precondition (and (at_15_14))
 :effect (and (not (at_15_14)) (at_15_13))
)

(:action move_15_14_15_15
 :parameters ()
 :precondition (and (at_15_14))
 :effect (and (not (at_15_14)) (at_15_15))
)

(:action move_15_15_14_15
 :parameters ()
 :precondition (and (at_15_15))
 :poss-precondition (and (bridge_14_15_15_15))
 :effect (and (not (at_15_15)) (at_14_15))
)

(:action move_15_15_15_14
 :parameters ()
 :precondition (and (at_15_15))
 :effect (and (not (at_15_15)) (at_15_14))
)

(:action pickup_treasure1
 :parameters ()
 :precondition (and (at_15_0))
 :effect (and (holding_treasure_1))
)

(:action pickup_treasure2
 :parameters ()
 :precondition (and (at_15_15))
 :effect (and (holding_treasure_2))
)

(:action pickup_treasure3
 :parameters ()
 :precondition (and (at_0_15))
 :effect (and (holding_treasure_3))
)

)