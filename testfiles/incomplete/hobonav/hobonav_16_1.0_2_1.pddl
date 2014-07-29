(define (domain HoboNav)
(:requirements :fluents :incomplete-domain)

(:predicates
 (at_x0) (at_y0) (at_x1) (at_y1) (at_x2) (at_y2) (at_x3) (at_y3) (at_x4) (at_y4) (at_x5) (at_y5) (at_x6) (at_y6) (at_x7) (at_y7) (at_x8) (at_y8) (at_x9) (at_y9) (at_x10) (at_y10) (at_x11) (at_y11) (at_x12) (at_y12) (at_x13) (at_y13) (at_x14) (at_y14) (at_x15) (at_y15)
 (have_item0) (have_item1)
)

(:action move_0_0_1_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x0)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_1_0_0_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x1)) (at_x0))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_0_0_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y0)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_0_1_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y1)) (at_y0))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_0_1_1_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x0)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_1_1_0_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x1)) (at_x0))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_0_1_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y1)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_0_2_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y2)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_0_2_1_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x0)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_1_2_0_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x1)) (at_x0))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_0_2_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y2)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_0_3_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y3)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_0_3_1_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x0)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_1_3_0_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x1)) (at_x0))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_0_3_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y3)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_0_4_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y4)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_0_4_1_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x0)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_1_4_0_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x1)) (at_x0))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_0_4_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y4)) (at_y5))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_0_5_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y5)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_0_5_1_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x0)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_1_5_0_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x1)) (at_x0))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_0_5_0_6
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y5)) (at_y6))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_0_6_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y6))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y6)) (at_y5))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_0_6_1_6
 :parameters ()
 :precondition (and (at_x0) (at_y6))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x0)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_1_6_0_6
 :parameters ()
 :precondition (and (at_x1) (at_y6))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x1)) (at_x0))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_0_6_0_7
 :parameters ()
 :precondition (and (at_x0) (at_y6))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y6)) (at_y7))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_0_7_0_6
 :parameters ()
 :precondition (and (at_x0) (at_y7))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y7)) (at_y6))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_0_7_1_7
 :parameters ()
 :precondition (and (at_x0) (at_y7))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x0)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_1_7_0_7
 :parameters ()
 :precondition (and (at_x1) (at_y7))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x1)) (at_x0))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_0_7_0_8
 :parameters ()
 :precondition (and (at_x0) (at_y7))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y7)) (at_y8))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_0_8_0_7
 :parameters ()
 :precondition (and (at_x0) (at_y8))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y8)) (at_y7))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_0_8_1_8
 :parameters ()
 :precondition (and (at_x0) (at_y8))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x0)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_1_8_0_8
 :parameters ()
 :precondition (and (at_x1) (at_y8))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x1)) (at_x0))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_0_8_0_9
 :parameters ()
 :precondition (and (at_x0) (at_y8))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y8)) (at_y9))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_0_9_0_8
 :parameters ()
 :precondition (and (at_x0) (at_y9))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y9)) (at_y8))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_0_9_1_9
 :parameters ()
 :precondition (and (at_x0) (at_y9))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x0)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_1_9_0_9
 :parameters ()
 :precondition (and (at_x1) (at_y9))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x1)) (at_x0))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_0_9_0_10
 :parameters ()
 :precondition (and (at_x0) (at_y9))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y9)) (at_y10))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_0_10_0_9
 :parameters ()
 :precondition (and (at_x0) (at_y10))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y10)) (at_y9))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_0_10_1_10
 :parameters ()
 :precondition (and (at_x0) (at_y10))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x0)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_1_10_0_10
 :parameters ()
 :precondition (and (at_x1) (at_y10))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x1)) (at_x0))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_0_10_0_11
 :parameters ()
 :precondition (and (at_x0) (at_y10))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y10)) (at_y11))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_0_11_0_10
 :parameters ()
 :precondition (and (at_x0) (at_y11))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y11)) (at_y10))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_0_11_1_11
 :parameters ()
 :precondition (and (at_x0) (at_y11))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x0)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_1_11_0_11
 :parameters ()
 :precondition (and (at_x1) (at_y11))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x1)) (at_x0))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_0_11_0_12
 :parameters ()
 :precondition (and (at_x0) (at_y11))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y11)) (at_y12))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_0_12_0_11
 :parameters ()
 :precondition (and (at_x0) (at_y12))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y12)) (at_y11))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_0_12_1_12
 :parameters ()
 :precondition (and (at_x0) (at_y12))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x0)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_1_12_0_12
 :parameters ()
 :precondition (and (at_x1) (at_y12))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x1)) (at_x0))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_0_12_0_13
 :parameters ()
 :precondition (and (at_x0) (at_y12))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y12)) (at_y13))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_0_13_0_12
 :parameters ()
 :precondition (and (at_x0) (at_y13))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y13)) (at_y12))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_0_13_1_13
 :parameters ()
 :precondition (and (at_x0) (at_y13))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x0)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_1_13_0_13
 :parameters ()
 :precondition (and (at_x1) (at_y13))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x1)) (at_x0))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_0_13_0_14
 :parameters ()
 :precondition (and (at_x0) (at_y13))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y13)) (at_y14))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_0_14_0_13
 :parameters ()
 :precondition (and (at_x0) (at_y14))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y14)) (at_y13))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_0_14_1_14
 :parameters ()
 :precondition (and (at_x0) (at_y14))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x0)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_1_14_0_14
 :parameters ()
 :precondition (and (at_x1) (at_y14))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x1)) (at_x0))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_0_14_0_15
 :parameters ()
 :precondition (and (at_x0) (at_y14))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y14)) (at_y15))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_0_15_0_14
 :parameters ()
 :precondition (and (at_x0) (at_y15))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y15)) (at_y14))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_0_15_1_15
 :parameters ()
 :precondition (and (at_x0) (at_y15))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x0)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_1_15_0_15
 :parameters ()
 :precondition (and (at_x1) (at_y15))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x1)) (at_x0))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_1_0_2_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x1)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_2_0_1_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x2)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_1_0_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y0)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_1_1_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y1)) (at_y0))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_1_1_2_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x1)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_2_1_1_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x2)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_1_1_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y1)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_1_2_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y2)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_1_2_2_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x1)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_2_2_1_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x2)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_1_2_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y2)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_1_3_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y3)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_1_3_2_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x1)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_2_3_1_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x2)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_1_3_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y3)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_1_4_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y4)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_1_4_2_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x1)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_2_4_1_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x2)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_1_4_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y4)) (at_y5))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_1_5_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y5)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_1_5_2_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x1)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_2_5_1_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x2)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_1_5_1_6
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y5)) (at_y6))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_1_6_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y6))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y6)) (at_y5))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_1_6_2_6
 :parameters ()
 :precondition (and (at_x1) (at_y6))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x1)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_2_6_1_6
 :parameters ()
 :precondition (and (at_x2) (at_y6))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x2)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_1_6_1_7
 :parameters ()
 :precondition (and (at_x1) (at_y6))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y6)) (at_y7))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_1_7_1_6
 :parameters ()
 :precondition (and (at_x1) (at_y7))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y7)) (at_y6))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_1_7_2_7
 :parameters ()
 :precondition (and (at_x1) (at_y7))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x1)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_2_7_1_7
 :parameters ()
 :precondition (and (at_x2) (at_y7))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x2)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_1_7_1_8
 :parameters ()
 :precondition (and (at_x1) (at_y7))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y7)) (at_y8))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_1_8_1_7
 :parameters ()
 :precondition (and (at_x1) (at_y8))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y8)) (at_y7))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_1_8_2_8
 :parameters ()
 :precondition (and (at_x1) (at_y8))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x1)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_2_8_1_8
 :parameters ()
 :precondition (and (at_x2) (at_y8))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x2)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_1_8_1_9
 :parameters ()
 :precondition (and (at_x1) (at_y8))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y8)) (at_y9))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_1_9_1_8
 :parameters ()
 :precondition (and (at_x1) (at_y9))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y9)) (at_y8))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_1_9_2_9
 :parameters ()
 :precondition (and (at_x1) (at_y9))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x1)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_2_9_1_9
 :parameters ()
 :precondition (and (at_x2) (at_y9))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x2)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_1_9_1_10
 :parameters ()
 :precondition (and (at_x1) (at_y9))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y9)) (at_y10))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_1_10_1_9
 :parameters ()
 :precondition (and (at_x1) (at_y10))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y10)) (at_y9))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_1_10_2_10
 :parameters ()
 :precondition (and (at_x1) (at_y10))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x1)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_2_10_1_10
 :parameters ()
 :precondition (and (at_x2) (at_y10))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x2)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_1_10_1_11
 :parameters ()
 :precondition (and (at_x1) (at_y10))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y10)) (at_y11))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_1_11_1_10
 :parameters ()
 :precondition (and (at_x1) (at_y11))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y11)) (at_y10))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_1_11_2_11
 :parameters ()
 :precondition (and (at_x1) (at_y11))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x1)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_2_11_1_11
 :parameters ()
 :precondition (and (at_x2) (at_y11))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x2)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_1_11_1_12
 :parameters ()
 :precondition (and (at_x1) (at_y11))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y11)) (at_y12))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_1_12_1_11
 :parameters ()
 :precondition (and (at_x1) (at_y12))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y12)) (at_y11))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_1_12_2_12
 :parameters ()
 :precondition (and (at_x1) (at_y12))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x1)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_2_12_1_12
 :parameters ()
 :precondition (and (at_x2) (at_y12))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x2)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_1_12_1_13
 :parameters ()
 :precondition (and (at_x1) (at_y12))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y12)) (at_y13))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_1_13_1_12
 :parameters ()
 :precondition (and (at_x1) (at_y13))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y13)) (at_y12))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_1_13_2_13
 :parameters ()
 :precondition (and (at_x1) (at_y13))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x1)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_2_13_1_13
 :parameters ()
 :precondition (and (at_x2) (at_y13))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x2)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_1_13_1_14
 :parameters ()
 :precondition (and (at_x1) (at_y13))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y13)) (at_y14))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_1_14_1_13
 :parameters ()
 :precondition (and (at_x1) (at_y14))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y14)) (at_y13))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_1_14_2_14
 :parameters ()
 :precondition (and (at_x1) (at_y14))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x1)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_2_14_1_14
 :parameters ()
 :precondition (and (at_x2) (at_y14))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x2)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_1_14_1_15
 :parameters ()
 :precondition (and (at_x1) (at_y14))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y14)) (at_y15))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_1_15_1_14
 :parameters ()
 :precondition (and (at_x1) (at_y15))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y15)) (at_y14))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_1_15_2_15
 :parameters ()
 :precondition (and (at_x1) (at_y15))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x1)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_2_15_1_15
 :parameters ()
 :precondition (and (at_x2) (at_y15))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x2)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_2_0_3_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x2)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_3_0_2_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x3)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_2_0_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y0)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_2_1_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y1)) (at_y0))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_2_1_3_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x2)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_3_1_2_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x3)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_2_1_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y1)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_2_2_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y2)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_2_2_3_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x2)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_3_2_2_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x3)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_2_2_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y2)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_2_3_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y3)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_2_3_3_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x2)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_3_3_2_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x3)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_2_3_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y3)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_2_4_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y4)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_2_4_3_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x2)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_3_4_2_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x3)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_2_4_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y4)) (at_y5))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_2_5_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y5)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_2_5_3_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x2)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_3_5_2_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x3)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_2_5_2_6
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y5)) (at_y6))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_2_6_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y6))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y6)) (at_y5))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_2_6_3_6
 :parameters ()
 :precondition (and (at_x2) (at_y6))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x2)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_3_6_2_6
 :parameters ()
 :precondition (and (at_x3) (at_y6))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x3)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_2_6_2_7
 :parameters ()
 :precondition (and (at_x2) (at_y6))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y6)) (at_y7))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_2_7_2_6
 :parameters ()
 :precondition (and (at_x2) (at_y7))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y7)) (at_y6))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_2_7_3_7
 :parameters ()
 :precondition (and (at_x2) (at_y7))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x2)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_3_7_2_7
 :parameters ()
 :precondition (and (at_x3) (at_y7))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x3)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_2_7_2_8
 :parameters ()
 :precondition (and (at_x2) (at_y7))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y7)) (at_y8))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_2_8_2_7
 :parameters ()
 :precondition (and (at_x2) (at_y8))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y8)) (at_y7))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_2_8_3_8
 :parameters ()
 :precondition (and (at_x2) (at_y8))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x2)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_3_8_2_8
 :parameters ()
 :precondition (and (at_x3) (at_y8))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x3)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_2_8_2_9
 :parameters ()
 :precondition (and (at_x2) (at_y8))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y8)) (at_y9))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_2_9_2_8
 :parameters ()
 :precondition (and (at_x2) (at_y9))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y9)) (at_y8))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_2_9_3_9
 :parameters ()
 :precondition (and (at_x2) (at_y9))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x2)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_3_9_2_9
 :parameters ()
 :precondition (and (at_x3) (at_y9))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x3)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_2_9_2_10
 :parameters ()
 :precondition (and (at_x2) (at_y9))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y9)) (at_y10))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_2_10_2_9
 :parameters ()
 :precondition (and (at_x2) (at_y10))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y10)) (at_y9))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_2_10_3_10
 :parameters ()
 :precondition (and (at_x2) (at_y10))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x2)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_3_10_2_10
 :parameters ()
 :precondition (and (at_x3) (at_y10))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x3)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_2_10_2_11
 :parameters ()
 :precondition (and (at_x2) (at_y10))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y10)) (at_y11))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_2_11_2_10
 :parameters ()
 :precondition (and (at_x2) (at_y11))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y11)) (at_y10))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_2_11_3_11
 :parameters ()
 :precondition (and (at_x2) (at_y11))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x2)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_3_11_2_11
 :parameters ()
 :precondition (and (at_x3) (at_y11))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x3)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_2_11_2_12
 :parameters ()
 :precondition (and (at_x2) (at_y11))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y11)) (at_y12))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_2_12_2_11
 :parameters ()
 :precondition (and (at_x2) (at_y12))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y12)) (at_y11))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_2_12_3_12
 :parameters ()
 :precondition (and (at_x2) (at_y12))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x2)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_3_12_2_12
 :parameters ()
 :precondition (and (at_x3) (at_y12))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x3)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_2_12_2_13
 :parameters ()
 :precondition (and (at_x2) (at_y12))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y12)) (at_y13))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_2_13_2_12
 :parameters ()
 :precondition (and (at_x2) (at_y13))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y13)) (at_y12))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_2_13_3_13
 :parameters ()
 :precondition (and (at_x2) (at_y13))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x2)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_3_13_2_13
 :parameters ()
 :precondition (and (at_x3) (at_y13))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x3)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_2_13_2_14
 :parameters ()
 :precondition (and (at_x2) (at_y13))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y13)) (at_y14))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_2_14_2_13
 :parameters ()
 :precondition (and (at_x2) (at_y14))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y14)) (at_y13))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_2_14_3_14
 :parameters ()
 :precondition (and (at_x2) (at_y14))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x2)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_3_14_2_14
 :parameters ()
 :precondition (and (at_x3) (at_y14))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x3)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_2_14_2_15
 :parameters ()
 :precondition (and (at_x2) (at_y14))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y14)) (at_y15))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_2_15_2_14
 :parameters ()
 :precondition (and (at_x2) (at_y15))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y15)) (at_y14))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_2_15_3_15
 :parameters ()
 :precondition (and (at_x2) (at_y15))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x2)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_3_15_2_15
 :parameters ()
 :precondition (and (at_x3) (at_y15))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x3)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_3_0_4_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x3)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_4_0_3_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x4)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_3_0_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y0)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_3_1_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y1)) (at_y0))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_3_1_4_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x3)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_4_1_3_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x4)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_3_1_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y1)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_3_2_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y2)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_3_2_4_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x3)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_4_2_3_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x4)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_3_2_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y2)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_3_3_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y3)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_3_3_4_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x3)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_4_3_3_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x4)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_3_3_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y3)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_3_4_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y4)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_3_4_4_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x3)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_4_4_3_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x4)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_3_4_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y4)) (at_y5))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_3_5_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y5)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_3_5_4_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x3)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_4_5_3_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x4)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_3_5_3_6
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y5)) (at_y6))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_3_6_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y6))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y6)) (at_y5))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_3_6_4_6
 :parameters ()
 :precondition (and (at_x3) (at_y6))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x3)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_4_6_3_6
 :parameters ()
 :precondition (and (at_x4) (at_y6))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x4)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_3_6_3_7
 :parameters ()
 :precondition (and (at_x3) (at_y6))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y6)) (at_y7))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_3_7_3_6
 :parameters ()
 :precondition (and (at_x3) (at_y7))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y7)) (at_y6))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_3_7_4_7
 :parameters ()
 :precondition (and (at_x3) (at_y7))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x3)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_4_7_3_7
 :parameters ()
 :precondition (and (at_x4) (at_y7))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x4)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_3_7_3_8
 :parameters ()
 :precondition (and (at_x3) (at_y7))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y7)) (at_y8))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_3_8_3_7
 :parameters ()
 :precondition (and (at_x3) (at_y8))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y8)) (at_y7))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_3_8_4_8
 :parameters ()
 :precondition (and (at_x3) (at_y8))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x3)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_4_8_3_8
 :parameters ()
 :precondition (and (at_x4) (at_y8))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x4)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_3_8_3_9
 :parameters ()
 :precondition (and (at_x3) (at_y8))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y8)) (at_y9))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_3_9_3_8
 :parameters ()
 :precondition (and (at_x3) (at_y9))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y9)) (at_y8))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_3_9_4_9
 :parameters ()
 :precondition (and (at_x3) (at_y9))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x3)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_4_9_3_9
 :parameters ()
 :precondition (and (at_x4) (at_y9))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x4)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_3_9_3_10
 :parameters ()
 :precondition (and (at_x3) (at_y9))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y9)) (at_y10))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_3_10_3_9
 :parameters ()
 :precondition (and (at_x3) (at_y10))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y10)) (at_y9))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_3_10_4_10
 :parameters ()
 :precondition (and (at_x3) (at_y10))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x3)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_4_10_3_10
 :parameters ()
 :precondition (and (at_x4) (at_y10))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x4)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_3_10_3_11
 :parameters ()
 :precondition (and (at_x3) (at_y10))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y10)) (at_y11))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_3_11_3_10
 :parameters ()
 :precondition (and (at_x3) (at_y11))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y11)) (at_y10))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_3_11_4_11
 :parameters ()
 :precondition (and (at_x3) (at_y11))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x3)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_4_11_3_11
 :parameters ()
 :precondition (and (at_x4) (at_y11))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x4)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_3_11_3_12
 :parameters ()
 :precondition (and (at_x3) (at_y11))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y11)) (at_y12))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_3_12_3_11
 :parameters ()
 :precondition (and (at_x3) (at_y12))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y12)) (at_y11))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_3_12_4_12
 :parameters ()
 :precondition (and (at_x3) (at_y12))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x3)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_4_12_3_12
 :parameters ()
 :precondition (and (at_x4) (at_y12))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x4)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_3_12_3_13
 :parameters ()
 :precondition (and (at_x3) (at_y12))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y12)) (at_y13))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_3_13_3_12
 :parameters ()
 :precondition (and (at_x3) (at_y13))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y13)) (at_y12))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_3_13_4_13
 :parameters ()
 :precondition (and (at_x3) (at_y13))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x3)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_4_13_3_13
 :parameters ()
 :precondition (and (at_x4) (at_y13))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x4)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_3_13_3_14
 :parameters ()
 :precondition (and (at_x3) (at_y13))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y13)) (at_y14))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_3_14_3_13
 :parameters ()
 :precondition (and (at_x3) (at_y14))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y14)) (at_y13))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_3_14_4_14
 :parameters ()
 :precondition (and (at_x3) (at_y14))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x3)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_4_14_3_14
 :parameters ()
 :precondition (and (at_x4) (at_y14))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x4)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_3_14_3_15
 :parameters ()
 :precondition (and (at_x3) (at_y14))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y14)) (at_y15))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_3_15_3_14
 :parameters ()
 :precondition (and (at_x3) (at_y15))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y15)) (at_y14))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_3_15_4_15
 :parameters ()
 :precondition (and (at_x3) (at_y15))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x3)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_4_15_3_15
 :parameters ()
 :precondition (and (at_x4) (at_y15))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x4)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_4_0_5_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x4)) (at_x5))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_5_0_4_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x5)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_4_0_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y0)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_4_1_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y1)) (at_y0))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_4_1_5_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x4)) (at_x5))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_5_1_4_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x5)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_4_1_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y1)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_4_2_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y2)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_4_2_5_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x4)) (at_x5))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_5_2_4_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x5)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_4_2_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y2)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_4_3_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y3)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_4_3_5_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x4)) (at_x5))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_5_3_4_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x5)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_4_3_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y3)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_4_4_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y4)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_4_4_5_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x4)) (at_x5))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_5_4_4_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x5)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_4_4_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y4)) (at_y5))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_4_5_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y5)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_4_5_5_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x4)) (at_x5))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_5_5_4_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x5)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_4_5_4_6
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y5)) (at_y6))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_4_6_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y6))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y6)) (at_y5))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_4_6_5_6
 :parameters ()
 :precondition (and (at_x4) (at_y6))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x4)) (at_x5))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_5_6_4_6
 :parameters ()
 :precondition (and (at_x5) (at_y6))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x5)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_4_6_4_7
 :parameters ()
 :precondition (and (at_x4) (at_y6))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y6)) (at_y7))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_4_7_4_6
 :parameters ()
 :precondition (and (at_x4) (at_y7))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y7)) (at_y6))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_4_7_5_7
 :parameters ()
 :precondition (and (at_x4) (at_y7))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x4)) (at_x5))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_5_7_4_7
 :parameters ()
 :precondition (and (at_x5) (at_y7))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x5)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_4_7_4_8
 :parameters ()
 :precondition (and (at_x4) (at_y7))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y7)) (at_y8))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_4_8_4_7
 :parameters ()
 :precondition (and (at_x4) (at_y8))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y8)) (at_y7))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_4_8_5_8
 :parameters ()
 :precondition (and (at_x4) (at_y8))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x4)) (at_x5))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_5_8_4_8
 :parameters ()
 :precondition (and (at_x5) (at_y8))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x5)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_4_8_4_9
 :parameters ()
 :precondition (and (at_x4) (at_y8))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y8)) (at_y9))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_4_9_4_8
 :parameters ()
 :precondition (and (at_x4) (at_y9))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y9)) (at_y8))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_4_9_5_9
 :parameters ()
 :precondition (and (at_x4) (at_y9))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x4)) (at_x5))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_5_9_4_9
 :parameters ()
 :precondition (and (at_x5) (at_y9))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x5)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_4_9_4_10
 :parameters ()
 :precondition (and (at_x4) (at_y9))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y9)) (at_y10))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_4_10_4_9
 :parameters ()
 :precondition (and (at_x4) (at_y10))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y10)) (at_y9))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_4_10_5_10
 :parameters ()
 :precondition (and (at_x4) (at_y10))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x4)) (at_x5))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_5_10_4_10
 :parameters ()
 :precondition (and (at_x5) (at_y10))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x5)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_4_10_4_11
 :parameters ()
 :precondition (and (at_x4) (at_y10))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y10)) (at_y11))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_4_11_4_10
 :parameters ()
 :precondition (and (at_x4) (at_y11))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y11)) (at_y10))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_4_11_5_11
 :parameters ()
 :precondition (and (at_x4) (at_y11))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x4)) (at_x5))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_5_11_4_11
 :parameters ()
 :precondition (and (at_x5) (at_y11))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x5)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_4_11_4_12
 :parameters ()
 :precondition (and (at_x4) (at_y11))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y11)) (at_y12))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_4_12_4_11
 :parameters ()
 :precondition (and (at_x4) (at_y12))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y12)) (at_y11))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_4_12_5_12
 :parameters ()
 :precondition (and (at_x4) (at_y12))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x4)) (at_x5))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_5_12_4_12
 :parameters ()
 :precondition (and (at_x5) (at_y12))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x5)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_4_12_4_13
 :parameters ()
 :precondition (and (at_x4) (at_y12))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y12)) (at_y13))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_4_13_4_12
 :parameters ()
 :precondition (and (at_x4) (at_y13))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y13)) (at_y12))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_4_13_5_13
 :parameters ()
 :precondition (and (at_x4) (at_y13))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x4)) (at_x5))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_5_13_4_13
 :parameters ()
 :precondition (and (at_x5) (at_y13))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x5)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_4_13_4_14
 :parameters ()
 :precondition (and (at_x4) (at_y13))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y13)) (at_y14))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_4_14_4_13
 :parameters ()
 :precondition (and (at_x4) (at_y14))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y14)) (at_y13))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_4_14_5_14
 :parameters ()
 :precondition (and (at_x4) (at_y14))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x4)) (at_x5))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_5_14_4_14
 :parameters ()
 :precondition (and (at_x5) (at_y14))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x5)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_4_14_4_15
 :parameters ()
 :precondition (and (at_x4) (at_y14))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y14)) (at_y15))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_4_15_4_14
 :parameters ()
 :precondition (and (at_x4) (at_y15))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y15)) (at_y14))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_4_15_5_15
 :parameters ()
 :precondition (and (at_x4) (at_y15))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x4)) (at_x5))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_5_15_4_15
 :parameters ()
 :precondition (and (at_x5) (at_y15))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x5)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_5_0_6_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x5)) (at_x6))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_6_0_5_0
 :parameters ()
 :precondition (and (at_x6) (at_y0))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x6)) (at_x5))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_5_0_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y0)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_5_1_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y1)) (at_y0))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_5_1_6_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x5)) (at_x6))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_6_1_5_1
 :parameters ()
 :precondition (and (at_x6) (at_y1))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x6)) (at_x5))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_5_1_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y1)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_5_2_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y2)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_5_2_6_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x5)) (at_x6))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_6_2_5_2
 :parameters ()
 :precondition (and (at_x6) (at_y2))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x6)) (at_x5))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_5_2_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y2)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_5_3_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y3)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_5_3_6_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x5)) (at_x6))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_6_3_5_3
 :parameters ()
 :precondition (and (at_x6) (at_y3))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x6)) (at_x5))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_5_3_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y3)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_5_4_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y4)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_5_4_6_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x5)) (at_x6))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_6_4_5_4
 :parameters ()
 :precondition (and (at_x6) (at_y4))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x6)) (at_x5))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_5_4_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y4)) (at_y5))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_5_5_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y5)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_5_5_6_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x5)) (at_x6))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_6_5_5_5
 :parameters ()
 :precondition (and (at_x6) (at_y5))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x6)) (at_x5))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_5_5_5_6
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y5)) (at_y6))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_5_6_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y6))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y6)) (at_y5))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_5_6_6_6
 :parameters ()
 :precondition (and (at_x5) (at_y6))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x5)) (at_x6))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_6_6_5_6
 :parameters ()
 :precondition (and (at_x6) (at_y6))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x6)) (at_x5))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_5_6_5_7
 :parameters ()
 :precondition (and (at_x5) (at_y6))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y6)) (at_y7))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_5_7_5_6
 :parameters ()
 :precondition (and (at_x5) (at_y7))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y7)) (at_y6))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_5_7_6_7
 :parameters ()
 :precondition (and (at_x5) (at_y7))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x5)) (at_x6))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_6_7_5_7
 :parameters ()
 :precondition (and (at_x6) (at_y7))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x6)) (at_x5))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_5_7_5_8
 :parameters ()
 :precondition (and (at_x5) (at_y7))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y7)) (at_y8))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_5_8_5_7
 :parameters ()
 :precondition (and (at_x5) (at_y8))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y8)) (at_y7))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_5_8_6_8
 :parameters ()
 :precondition (and (at_x5) (at_y8))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x5)) (at_x6))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_6_8_5_8
 :parameters ()
 :precondition (and (at_x6) (at_y8))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x6)) (at_x5))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_5_8_5_9
 :parameters ()
 :precondition (and (at_x5) (at_y8))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y8)) (at_y9))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_5_9_5_8
 :parameters ()
 :precondition (and (at_x5) (at_y9))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y9)) (at_y8))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_5_9_6_9
 :parameters ()
 :precondition (and (at_x5) (at_y9))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x5)) (at_x6))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_6_9_5_9
 :parameters ()
 :precondition (and (at_x6) (at_y9))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x6)) (at_x5))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_5_9_5_10
 :parameters ()
 :precondition (and (at_x5) (at_y9))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y9)) (at_y10))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_5_10_5_9
 :parameters ()
 :precondition (and (at_x5) (at_y10))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y10)) (at_y9))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_5_10_6_10
 :parameters ()
 :precondition (and (at_x5) (at_y10))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x5)) (at_x6))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_6_10_5_10
 :parameters ()
 :precondition (and (at_x6) (at_y10))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x6)) (at_x5))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_5_10_5_11
 :parameters ()
 :precondition (and (at_x5) (at_y10))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y10)) (at_y11))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_5_11_5_10
 :parameters ()
 :precondition (and (at_x5) (at_y11))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y11)) (at_y10))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_5_11_6_11
 :parameters ()
 :precondition (and (at_x5) (at_y11))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x5)) (at_x6))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_6_11_5_11
 :parameters ()
 :precondition (and (at_x6) (at_y11))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x6)) (at_x5))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_5_11_5_12
 :parameters ()
 :precondition (and (at_x5) (at_y11))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y11)) (at_y12))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_5_12_5_11
 :parameters ()
 :precondition (and (at_x5) (at_y12))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y12)) (at_y11))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_5_12_6_12
 :parameters ()
 :precondition (and (at_x5) (at_y12))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x5)) (at_x6))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_6_12_5_12
 :parameters ()
 :precondition (and (at_x6) (at_y12))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x6)) (at_x5))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_5_12_5_13
 :parameters ()
 :precondition (and (at_x5) (at_y12))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y12)) (at_y13))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_5_13_5_12
 :parameters ()
 :precondition (and (at_x5) (at_y13))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y13)) (at_y12))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_5_13_6_13
 :parameters ()
 :precondition (and (at_x5) (at_y13))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x5)) (at_x6))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_6_13_5_13
 :parameters ()
 :precondition (and (at_x6) (at_y13))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x6)) (at_x5))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_5_13_5_14
 :parameters ()
 :precondition (and (at_x5) (at_y13))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y13)) (at_y14))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_5_14_5_13
 :parameters ()
 :precondition (and (at_x5) (at_y14))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y14)) (at_y13))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_5_14_6_14
 :parameters ()
 :precondition (and (at_x5) (at_y14))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x5)) (at_x6))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_6_14_5_14
 :parameters ()
 :precondition (and (at_x6) (at_y14))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x6)) (at_x5))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_5_14_5_15
 :parameters ()
 :precondition (and (at_x5) (at_y14))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y14)) (at_y15))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_5_15_5_14
 :parameters ()
 :precondition (and (at_x5) (at_y15))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y15)) (at_y14))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_5_15_6_15
 :parameters ()
 :precondition (and (at_x5) (at_y15))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x5)) (at_x6))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_6_15_5_15
 :parameters ()
 :precondition (and (at_x6) (at_y15))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x6)) (at_x5))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_6_0_7_0
 :parameters ()
 :precondition (and (at_x6) (at_y0))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x6)) (at_x7))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_7_0_6_0
 :parameters ()
 :precondition (and (at_x7) (at_y0))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x7)) (at_x6))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_6_0_6_1
 :parameters ()
 :precondition (and (at_x6) (at_y0))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y0)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_6_1_6_0
 :parameters ()
 :precondition (and (at_x6) (at_y1))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y1)) (at_y0))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_6_1_7_1
 :parameters ()
 :precondition (and (at_x6) (at_y1))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x6)) (at_x7))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_7_1_6_1
 :parameters ()
 :precondition (and (at_x7) (at_y1))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x7)) (at_x6))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_6_1_6_2
 :parameters ()
 :precondition (and (at_x6) (at_y1))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y1)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_6_2_6_1
 :parameters ()
 :precondition (and (at_x6) (at_y2))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y2)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_6_2_7_2
 :parameters ()
 :precondition (and (at_x6) (at_y2))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x6)) (at_x7))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_7_2_6_2
 :parameters ()
 :precondition (and (at_x7) (at_y2))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x7)) (at_x6))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_6_2_6_3
 :parameters ()
 :precondition (and (at_x6) (at_y2))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y2)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_6_3_6_2
 :parameters ()
 :precondition (and (at_x6) (at_y3))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y3)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_6_3_7_3
 :parameters ()
 :precondition (and (at_x6) (at_y3))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x6)) (at_x7))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_7_3_6_3
 :parameters ()
 :precondition (and (at_x7) (at_y3))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x7)) (at_x6))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_6_3_6_4
 :parameters ()
 :precondition (and (at_x6) (at_y3))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y3)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_6_4_6_3
 :parameters ()
 :precondition (and (at_x6) (at_y4))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y4)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_6_4_7_4
 :parameters ()
 :precondition (and (at_x6) (at_y4))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x6)) (at_x7))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_7_4_6_4
 :parameters ()
 :precondition (and (at_x7) (at_y4))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x7)) (at_x6))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_6_4_6_5
 :parameters ()
 :precondition (and (at_x6) (at_y4))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y4)) (at_y5))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_6_5_6_4
 :parameters ()
 :precondition (and (at_x6) (at_y5))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y5)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_6_5_7_5
 :parameters ()
 :precondition (and (at_x6) (at_y5))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x6)) (at_x7))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_7_5_6_5
 :parameters ()
 :precondition (and (at_x7) (at_y5))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x7)) (at_x6))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_6_5_6_6
 :parameters ()
 :precondition (and (at_x6) (at_y5))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y5)) (at_y6))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_6_6_6_5
 :parameters ()
 :precondition (and (at_x6) (at_y6))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y6)) (at_y5))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_6_6_7_6
 :parameters ()
 :precondition (and (at_x6) (at_y6))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x6)) (at_x7))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_7_6_6_6
 :parameters ()
 :precondition (and (at_x7) (at_y6))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x7)) (at_x6))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_6_6_6_7
 :parameters ()
 :precondition (and (at_x6) (at_y6))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y6)) (at_y7))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_6_7_6_6
 :parameters ()
 :precondition (and (at_x6) (at_y7))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y7)) (at_y6))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_6_7_7_7
 :parameters ()
 :precondition (and (at_x6) (at_y7))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x6)) (at_x7))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_7_7_6_7
 :parameters ()
 :precondition (and (at_x7) (at_y7))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x7)) (at_x6))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_6_7_6_8
 :parameters ()
 :precondition (and (at_x6) (at_y7))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y7)) (at_y8))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_6_8_6_7
 :parameters ()
 :precondition (and (at_x6) (at_y8))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y8)) (at_y7))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_6_8_7_8
 :parameters ()
 :precondition (and (at_x6) (at_y8))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x6)) (at_x7))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_7_8_6_8
 :parameters ()
 :precondition (and (at_x7) (at_y8))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x7)) (at_x6))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_6_8_6_9
 :parameters ()
 :precondition (and (at_x6) (at_y8))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y8)) (at_y9))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_6_9_6_8
 :parameters ()
 :precondition (and (at_x6) (at_y9))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y9)) (at_y8))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_6_9_7_9
 :parameters ()
 :precondition (and (at_x6) (at_y9))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x6)) (at_x7))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_7_9_6_9
 :parameters ()
 :precondition (and (at_x7) (at_y9))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x7)) (at_x6))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_6_9_6_10
 :parameters ()
 :precondition (and (at_x6) (at_y9))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y9)) (at_y10))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_6_10_6_9
 :parameters ()
 :precondition (and (at_x6) (at_y10))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y10)) (at_y9))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_6_10_7_10
 :parameters ()
 :precondition (and (at_x6) (at_y10))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x6)) (at_x7))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_7_10_6_10
 :parameters ()
 :precondition (and (at_x7) (at_y10))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x7)) (at_x6))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_6_10_6_11
 :parameters ()
 :precondition (and (at_x6) (at_y10))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y10)) (at_y11))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_6_11_6_10
 :parameters ()
 :precondition (and (at_x6) (at_y11))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y11)) (at_y10))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_6_11_7_11
 :parameters ()
 :precondition (and (at_x6) (at_y11))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x6)) (at_x7))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_7_11_6_11
 :parameters ()
 :precondition (and (at_x7) (at_y11))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x7)) (at_x6))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_6_11_6_12
 :parameters ()
 :precondition (and (at_x6) (at_y11))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y11)) (at_y12))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_6_12_6_11
 :parameters ()
 :precondition (and (at_x6) (at_y12))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y12)) (at_y11))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_6_12_7_12
 :parameters ()
 :precondition (and (at_x6) (at_y12))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x6)) (at_x7))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_7_12_6_12
 :parameters ()
 :precondition (and (at_x7) (at_y12))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x7)) (at_x6))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_6_12_6_13
 :parameters ()
 :precondition (and (at_x6) (at_y12))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y12)) (at_y13))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_6_13_6_12
 :parameters ()
 :precondition (and (at_x6) (at_y13))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y13)) (at_y12))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_6_13_7_13
 :parameters ()
 :precondition (and (at_x6) (at_y13))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x6)) (at_x7))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_7_13_6_13
 :parameters ()
 :precondition (and (at_x7) (at_y13))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x7)) (at_x6))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_6_13_6_14
 :parameters ()
 :precondition (and (at_x6) (at_y13))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y13)) (at_y14))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_6_14_6_13
 :parameters ()
 :precondition (and (at_x6) (at_y14))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y14)) (at_y13))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_6_14_7_14
 :parameters ()
 :precondition (and (at_x6) (at_y14))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x6)) (at_x7))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_7_14_6_14
 :parameters ()
 :precondition (and (at_x7) (at_y14))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x7)) (at_x6))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_6_14_6_15
 :parameters ()
 :precondition (and (at_x6) (at_y14))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y14)) (at_y15))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_6_15_6_14
 :parameters ()
 :precondition (and (at_x6) (at_y15))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y15)) (at_y14))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_6_15_7_15
 :parameters ()
 :precondition (and (at_x6) (at_y15))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x6)) (at_x7))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_7_15_6_15
 :parameters ()
 :precondition (and (at_x7) (at_y15))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x7)) (at_x6))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_7_0_8_0
 :parameters ()
 :precondition (and (at_x7) (at_y0))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x7)) (at_x8))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_8_0_7_0
 :parameters ()
 :precondition (and (at_x8) (at_y0))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x8)) (at_x7))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_7_0_7_1
 :parameters ()
 :precondition (and (at_x7) (at_y0))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y0)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_7_1_7_0
 :parameters ()
 :precondition (and (at_x7) (at_y1))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y1)) (at_y0))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_7_1_8_1
 :parameters ()
 :precondition (and (at_x7) (at_y1))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x7)) (at_x8))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_8_1_7_1
 :parameters ()
 :precondition (and (at_x8) (at_y1))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x8)) (at_x7))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_7_1_7_2
 :parameters ()
 :precondition (and (at_x7) (at_y1))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y1)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_7_2_7_1
 :parameters ()
 :precondition (and (at_x7) (at_y2))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y2)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_7_2_8_2
 :parameters ()
 :precondition (and (at_x7) (at_y2))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x7)) (at_x8))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_8_2_7_2
 :parameters ()
 :precondition (and (at_x8) (at_y2))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x8)) (at_x7))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_7_2_7_3
 :parameters ()
 :precondition (and (at_x7) (at_y2))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y2)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_7_3_7_2
 :parameters ()
 :precondition (and (at_x7) (at_y3))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y3)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_7_3_8_3
 :parameters ()
 :precondition (and (at_x7) (at_y3))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x7)) (at_x8))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_8_3_7_3
 :parameters ()
 :precondition (and (at_x8) (at_y3))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x8)) (at_x7))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_7_3_7_4
 :parameters ()
 :precondition (and (at_x7) (at_y3))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y3)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_7_4_7_3
 :parameters ()
 :precondition (and (at_x7) (at_y4))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y4)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_7_4_8_4
 :parameters ()
 :precondition (and (at_x7) (at_y4))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x7)) (at_x8))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_8_4_7_4
 :parameters ()
 :precondition (and (at_x8) (at_y4))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x8)) (at_x7))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_7_4_7_5
 :parameters ()
 :precondition (and (at_x7) (at_y4))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y4)) (at_y5))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_7_5_7_4
 :parameters ()
 :precondition (and (at_x7) (at_y5))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y5)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_7_5_8_5
 :parameters ()
 :precondition (and (at_x7) (at_y5))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x7)) (at_x8))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_8_5_7_5
 :parameters ()
 :precondition (and (at_x8) (at_y5))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x8)) (at_x7))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_7_5_7_6
 :parameters ()
 :precondition (and (at_x7) (at_y5))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y5)) (at_y6))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_7_6_7_5
 :parameters ()
 :precondition (and (at_x7) (at_y6))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y6)) (at_y5))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_7_6_8_6
 :parameters ()
 :precondition (and (at_x7) (at_y6))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x7)) (at_x8))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_8_6_7_6
 :parameters ()
 :precondition (and (at_x8) (at_y6))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x8)) (at_x7))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_7_6_7_7
 :parameters ()
 :precondition (and (at_x7) (at_y6))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y6)) (at_y7))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_7_7_7_6
 :parameters ()
 :precondition (and (at_x7) (at_y7))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y7)) (at_y6))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_7_7_8_7
 :parameters ()
 :precondition (and (at_x7) (at_y7))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x7)) (at_x8))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_8_7_7_7
 :parameters ()
 :precondition (and (at_x8) (at_y7))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x8)) (at_x7))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_7_7_7_8
 :parameters ()
 :precondition (and (at_x7) (at_y7))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y7)) (at_y8))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_7_8_7_7
 :parameters ()
 :precondition (and (at_x7) (at_y8))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y8)) (at_y7))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_7_8_8_8
 :parameters ()
 :precondition (and (at_x7) (at_y8))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x7)) (at_x8))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_8_8_7_8
 :parameters ()
 :precondition (and (at_x8) (at_y8))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x8)) (at_x7))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_7_8_7_9
 :parameters ()
 :precondition (and (at_x7) (at_y8))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y8)) (at_y9))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_7_9_7_8
 :parameters ()
 :precondition (and (at_x7) (at_y9))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y9)) (at_y8))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_7_9_8_9
 :parameters ()
 :precondition (and (at_x7) (at_y9))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x7)) (at_x8))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_8_9_7_9
 :parameters ()
 :precondition (and (at_x8) (at_y9))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x8)) (at_x7))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_7_9_7_10
 :parameters ()
 :precondition (and (at_x7) (at_y9))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y9)) (at_y10))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_7_10_7_9
 :parameters ()
 :precondition (and (at_x7) (at_y10))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y10)) (at_y9))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_7_10_8_10
 :parameters ()
 :precondition (and (at_x7) (at_y10))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x7)) (at_x8))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_8_10_7_10
 :parameters ()
 :precondition (and (at_x8) (at_y10))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x8)) (at_x7))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_7_10_7_11
 :parameters ()
 :precondition (and (at_x7) (at_y10))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y10)) (at_y11))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_7_11_7_10
 :parameters ()
 :precondition (and (at_x7) (at_y11))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y11)) (at_y10))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_7_11_8_11
 :parameters ()
 :precondition (and (at_x7) (at_y11))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x7)) (at_x8))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_8_11_7_11
 :parameters ()
 :precondition (and (at_x8) (at_y11))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x8)) (at_x7))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_7_11_7_12
 :parameters ()
 :precondition (and (at_x7) (at_y11))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y11)) (at_y12))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_7_12_7_11
 :parameters ()
 :precondition (and (at_x7) (at_y12))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y12)) (at_y11))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_7_12_8_12
 :parameters ()
 :precondition (and (at_x7) (at_y12))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x7)) (at_x8))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_8_12_7_12
 :parameters ()
 :precondition (and (at_x8) (at_y12))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x8)) (at_x7))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_7_12_7_13
 :parameters ()
 :precondition (and (at_x7) (at_y12))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y12)) (at_y13))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_7_13_7_12
 :parameters ()
 :precondition (and (at_x7) (at_y13))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y13)) (at_y12))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_7_13_8_13
 :parameters ()
 :precondition (and (at_x7) (at_y13))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x7)) (at_x8))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_8_13_7_13
 :parameters ()
 :precondition (and (at_x8) (at_y13))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x8)) (at_x7))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_7_13_7_14
 :parameters ()
 :precondition (and (at_x7) (at_y13))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y13)) (at_y14))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_7_14_7_13
 :parameters ()
 :precondition (and (at_x7) (at_y14))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y14)) (at_y13))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_7_14_8_14
 :parameters ()
 :precondition (and (at_x7) (at_y14))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x7)) (at_x8))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_8_14_7_14
 :parameters ()
 :precondition (and (at_x8) (at_y14))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x8)) (at_x7))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_7_14_7_15
 :parameters ()
 :precondition (and (at_x7) (at_y14))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y14)) (at_y15))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_7_15_7_14
 :parameters ()
 :precondition (and (at_x7) (at_y15))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y15)) (at_y14))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_7_15_8_15
 :parameters ()
 :precondition (and (at_x7) (at_y15))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x7)) (at_x8))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_8_15_7_15
 :parameters ()
 :precondition (and (at_x8) (at_y15))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x8)) (at_x7))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_8_0_9_0
 :parameters ()
 :precondition (and (at_x8) (at_y0))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x8)) (at_x9))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_9_0_8_0
 :parameters ()
 :precondition (and (at_x9) (at_y0))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x9)) (at_x8))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_8_0_8_1
 :parameters ()
 :precondition (and (at_x8) (at_y0))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y0)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_8_1_8_0
 :parameters ()
 :precondition (and (at_x8) (at_y1))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y1)) (at_y0))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_8_1_9_1
 :parameters ()
 :precondition (and (at_x8) (at_y1))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x8)) (at_x9))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_9_1_8_1
 :parameters ()
 :precondition (and (at_x9) (at_y1))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x9)) (at_x8))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_8_1_8_2
 :parameters ()
 :precondition (and (at_x8) (at_y1))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y1)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_8_2_8_1
 :parameters ()
 :precondition (and (at_x8) (at_y2))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y2)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_8_2_9_2
 :parameters ()
 :precondition (and (at_x8) (at_y2))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x8)) (at_x9))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_9_2_8_2
 :parameters ()
 :precondition (and (at_x9) (at_y2))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x9)) (at_x8))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_8_2_8_3
 :parameters ()
 :precondition (and (at_x8) (at_y2))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y2)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_8_3_8_2
 :parameters ()
 :precondition (and (at_x8) (at_y3))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y3)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_8_3_9_3
 :parameters ()
 :precondition (and (at_x8) (at_y3))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x8)) (at_x9))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_9_3_8_3
 :parameters ()
 :precondition (and (at_x9) (at_y3))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x9)) (at_x8))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_8_3_8_4
 :parameters ()
 :precondition (and (at_x8) (at_y3))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y3)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_8_4_8_3
 :parameters ()
 :precondition (and (at_x8) (at_y4))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y4)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_8_4_9_4
 :parameters ()
 :precondition (and (at_x8) (at_y4))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x8)) (at_x9))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_9_4_8_4
 :parameters ()
 :precondition (and (at_x9) (at_y4))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x9)) (at_x8))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_8_4_8_5
 :parameters ()
 :precondition (and (at_x8) (at_y4))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y4)) (at_y5))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_8_5_8_4
 :parameters ()
 :precondition (and (at_x8) (at_y5))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y5)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_8_5_9_5
 :parameters ()
 :precondition (and (at_x8) (at_y5))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x8)) (at_x9))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_9_5_8_5
 :parameters ()
 :precondition (and (at_x9) (at_y5))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x9)) (at_x8))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_8_5_8_6
 :parameters ()
 :precondition (and (at_x8) (at_y5))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y5)) (at_y6))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_8_6_8_5
 :parameters ()
 :precondition (and (at_x8) (at_y6))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y6)) (at_y5))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_8_6_9_6
 :parameters ()
 :precondition (and (at_x8) (at_y6))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x8)) (at_x9))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_9_6_8_6
 :parameters ()
 :precondition (and (at_x9) (at_y6))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x9)) (at_x8))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_8_6_8_7
 :parameters ()
 :precondition (and (at_x8) (at_y6))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y6)) (at_y7))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_8_7_8_6
 :parameters ()
 :precondition (and (at_x8) (at_y7))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y7)) (at_y6))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_8_7_9_7
 :parameters ()
 :precondition (and (at_x8) (at_y7))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x8)) (at_x9))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_9_7_8_7
 :parameters ()
 :precondition (and (at_x9) (at_y7))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x9)) (at_x8))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_8_7_8_8
 :parameters ()
 :precondition (and (at_x8) (at_y7))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y7)) (at_y8))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_8_8_8_7
 :parameters ()
 :precondition (and (at_x8) (at_y8))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y8)) (at_y7))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_8_8_9_8
 :parameters ()
 :precondition (and (at_x8) (at_y8))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x8)) (at_x9))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_9_8_8_8
 :parameters ()
 :precondition (and (at_x9) (at_y8))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x9)) (at_x8))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_8_8_8_9
 :parameters ()
 :precondition (and (at_x8) (at_y8))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y8)) (at_y9))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_8_9_8_8
 :parameters ()
 :precondition (and (at_x8) (at_y9))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y9)) (at_y8))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_8_9_9_9
 :parameters ()
 :precondition (and (at_x8) (at_y9))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x8)) (at_x9))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_9_9_8_9
 :parameters ()
 :precondition (and (at_x9) (at_y9))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x9)) (at_x8))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_8_9_8_10
 :parameters ()
 :precondition (and (at_x8) (at_y9))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y9)) (at_y10))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_8_10_8_9
 :parameters ()
 :precondition (and (at_x8) (at_y10))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y10)) (at_y9))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_8_10_9_10
 :parameters ()
 :precondition (and (at_x8) (at_y10))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x8)) (at_x9))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_9_10_8_10
 :parameters ()
 :precondition (and (at_x9) (at_y10))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x9)) (at_x8))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_8_10_8_11
 :parameters ()
 :precondition (and (at_x8) (at_y10))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y10)) (at_y11))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_8_11_8_10
 :parameters ()
 :precondition (and (at_x8) (at_y11))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y11)) (at_y10))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_8_11_9_11
 :parameters ()
 :precondition (and (at_x8) (at_y11))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x8)) (at_x9))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_9_11_8_11
 :parameters ()
 :precondition (and (at_x9) (at_y11))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x9)) (at_x8))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_8_11_8_12
 :parameters ()
 :precondition (and (at_x8) (at_y11))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y11)) (at_y12))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_8_12_8_11
 :parameters ()
 :precondition (and (at_x8) (at_y12))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y12)) (at_y11))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_8_12_9_12
 :parameters ()
 :precondition (and (at_x8) (at_y12))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x8)) (at_x9))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_9_12_8_12
 :parameters ()
 :precondition (and (at_x9) (at_y12))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x9)) (at_x8))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_8_12_8_13
 :parameters ()
 :precondition (and (at_x8) (at_y12))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y12)) (at_y13))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_8_13_8_12
 :parameters ()
 :precondition (and (at_x8) (at_y13))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y13)) (at_y12))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_8_13_9_13
 :parameters ()
 :precondition (and (at_x8) (at_y13))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x8)) (at_x9))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_9_13_8_13
 :parameters ()
 :precondition (and (at_x9) (at_y13))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x9)) (at_x8))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_8_13_8_14
 :parameters ()
 :precondition (and (at_x8) (at_y13))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y13)) (at_y14))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_8_14_8_13
 :parameters ()
 :precondition (and (at_x8) (at_y14))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y14)) (at_y13))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_8_14_9_14
 :parameters ()
 :precondition (and (at_x8) (at_y14))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x8)) (at_x9))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_9_14_8_14
 :parameters ()
 :precondition (and (at_x9) (at_y14))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x9)) (at_x8))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_8_14_8_15
 :parameters ()
 :precondition (and (at_x8) (at_y14))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y14)) (at_y15))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_8_15_8_14
 :parameters ()
 :precondition (and (at_x8) (at_y15))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y15)) (at_y14))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_8_15_9_15
 :parameters ()
 :precondition (and (at_x8) (at_y15))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x8)) (at_x9))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_9_15_8_15
 :parameters ()
 :precondition (and (at_x9) (at_y15))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x9)) (at_x8))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_9_0_10_0
 :parameters ()
 :precondition (and (at_x9) (at_y0))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x9)) (at_x10))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_10_0_9_0
 :parameters ()
 :precondition (and (at_x10) (at_y0))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x10)) (at_x9))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_9_0_9_1
 :parameters ()
 :precondition (and (at_x9) (at_y0))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y0)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_9_1_9_0
 :parameters ()
 :precondition (and (at_x9) (at_y1))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y1)) (at_y0))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_9_1_10_1
 :parameters ()
 :precondition (and (at_x9) (at_y1))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x9)) (at_x10))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_10_1_9_1
 :parameters ()
 :precondition (and (at_x10) (at_y1))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x10)) (at_x9))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_9_1_9_2
 :parameters ()
 :precondition (and (at_x9) (at_y1))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y1)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_9_2_9_1
 :parameters ()
 :precondition (and (at_x9) (at_y2))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y2)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_9_2_10_2
 :parameters ()
 :precondition (and (at_x9) (at_y2))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x9)) (at_x10))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_10_2_9_2
 :parameters ()
 :precondition (and (at_x10) (at_y2))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x10)) (at_x9))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_9_2_9_3
 :parameters ()
 :precondition (and (at_x9) (at_y2))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y2)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_9_3_9_2
 :parameters ()
 :precondition (and (at_x9) (at_y3))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y3)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_9_3_10_3
 :parameters ()
 :precondition (and (at_x9) (at_y3))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x9)) (at_x10))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_10_3_9_3
 :parameters ()
 :precondition (and (at_x10) (at_y3))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x10)) (at_x9))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_9_3_9_4
 :parameters ()
 :precondition (and (at_x9) (at_y3))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y3)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_9_4_9_3
 :parameters ()
 :precondition (and (at_x9) (at_y4))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y4)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_9_4_10_4
 :parameters ()
 :precondition (and (at_x9) (at_y4))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x9)) (at_x10))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_10_4_9_4
 :parameters ()
 :precondition (and (at_x10) (at_y4))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x10)) (at_x9))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_9_4_9_5
 :parameters ()
 :precondition (and (at_x9) (at_y4))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y4)) (at_y5))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_9_5_9_4
 :parameters ()
 :precondition (and (at_x9) (at_y5))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y5)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_9_5_10_5
 :parameters ()
 :precondition (and (at_x9) (at_y5))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x9)) (at_x10))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_10_5_9_5
 :parameters ()
 :precondition (and (at_x10) (at_y5))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x10)) (at_x9))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_9_5_9_6
 :parameters ()
 :precondition (and (at_x9) (at_y5))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y5)) (at_y6))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_9_6_9_5
 :parameters ()
 :precondition (and (at_x9) (at_y6))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y6)) (at_y5))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_9_6_10_6
 :parameters ()
 :precondition (and (at_x9) (at_y6))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x9)) (at_x10))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_10_6_9_6
 :parameters ()
 :precondition (and (at_x10) (at_y6))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x10)) (at_x9))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_9_6_9_7
 :parameters ()
 :precondition (and (at_x9) (at_y6))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y6)) (at_y7))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_9_7_9_6
 :parameters ()
 :precondition (and (at_x9) (at_y7))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y7)) (at_y6))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_9_7_10_7
 :parameters ()
 :precondition (and (at_x9) (at_y7))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x9)) (at_x10))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_10_7_9_7
 :parameters ()
 :precondition (and (at_x10) (at_y7))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x10)) (at_x9))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_9_7_9_8
 :parameters ()
 :precondition (and (at_x9) (at_y7))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y7)) (at_y8))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_9_8_9_7
 :parameters ()
 :precondition (and (at_x9) (at_y8))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y8)) (at_y7))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_9_8_10_8
 :parameters ()
 :precondition (and (at_x9) (at_y8))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x9)) (at_x10))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_10_8_9_8
 :parameters ()
 :precondition (and (at_x10) (at_y8))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x10)) (at_x9))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_9_8_9_9
 :parameters ()
 :precondition (and (at_x9) (at_y8))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y8)) (at_y9))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_9_9_9_8
 :parameters ()
 :precondition (and (at_x9) (at_y9))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y9)) (at_y8))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_9_9_10_9
 :parameters ()
 :precondition (and (at_x9) (at_y9))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x9)) (at_x10))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_10_9_9_9
 :parameters ()
 :precondition (and (at_x10) (at_y9))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x10)) (at_x9))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_9_9_9_10
 :parameters ()
 :precondition (and (at_x9) (at_y9))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y9)) (at_y10))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_9_10_9_9
 :parameters ()
 :precondition (and (at_x9) (at_y10))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y10)) (at_y9))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_9_10_10_10
 :parameters ()
 :precondition (and (at_x9) (at_y10))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x9)) (at_x10))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_10_10_9_10
 :parameters ()
 :precondition (and (at_x10) (at_y10))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x10)) (at_x9))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_9_10_9_11
 :parameters ()
 :precondition (and (at_x9) (at_y10))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y10)) (at_y11))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_9_11_9_10
 :parameters ()
 :precondition (and (at_x9) (at_y11))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y11)) (at_y10))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_9_11_10_11
 :parameters ()
 :precondition (and (at_x9) (at_y11))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x9)) (at_x10))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_10_11_9_11
 :parameters ()
 :precondition (and (at_x10) (at_y11))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x10)) (at_x9))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_9_11_9_12
 :parameters ()
 :precondition (and (at_x9) (at_y11))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y11)) (at_y12))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_9_12_9_11
 :parameters ()
 :precondition (and (at_x9) (at_y12))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y12)) (at_y11))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_9_12_10_12
 :parameters ()
 :precondition (and (at_x9) (at_y12))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x9)) (at_x10))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_10_12_9_12
 :parameters ()
 :precondition (and (at_x10) (at_y12))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x10)) (at_x9))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_9_12_9_13
 :parameters ()
 :precondition (and (at_x9) (at_y12))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y12)) (at_y13))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_9_13_9_12
 :parameters ()
 :precondition (and (at_x9) (at_y13))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y13)) (at_y12))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_9_13_10_13
 :parameters ()
 :precondition (and (at_x9) (at_y13))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x9)) (at_x10))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_10_13_9_13
 :parameters ()
 :precondition (and (at_x10) (at_y13))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x10)) (at_x9))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_9_13_9_14
 :parameters ()
 :precondition (and (at_x9) (at_y13))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y13)) (at_y14))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_9_14_9_13
 :parameters ()
 :precondition (and (at_x9) (at_y14))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y14)) (at_y13))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_9_14_10_14
 :parameters ()
 :precondition (and (at_x9) (at_y14))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x9)) (at_x10))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_10_14_9_14
 :parameters ()
 :precondition (and (at_x10) (at_y14))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x10)) (at_x9))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_9_14_9_15
 :parameters ()
 :precondition (and (at_x9) (at_y14))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y14)) (at_y15))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_9_15_9_14
 :parameters ()
 :precondition (and (at_x9) (at_y15))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y15)) (at_y14))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_9_15_10_15
 :parameters ()
 :precondition (and (at_x9) (at_y15))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x9)) (at_x10))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_10_15_9_15
 :parameters ()
 :precondition (and (at_x10) (at_y15))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x10)) (at_x9))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_10_0_11_0
 :parameters ()
 :precondition (and (at_x10) (at_y0))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x10)) (at_x11))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_11_0_10_0
 :parameters ()
 :precondition (and (at_x11) (at_y0))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x11)) (at_x10))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_10_0_10_1
 :parameters ()
 :precondition (and (at_x10) (at_y0))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y0)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_10_1_10_0
 :parameters ()
 :precondition (and (at_x10) (at_y1))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y1)) (at_y0))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_10_1_11_1
 :parameters ()
 :precondition (and (at_x10) (at_y1))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x10)) (at_x11))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_11_1_10_1
 :parameters ()
 :precondition (and (at_x11) (at_y1))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x11)) (at_x10))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_10_1_10_2
 :parameters ()
 :precondition (and (at_x10) (at_y1))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y1)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_10_2_10_1
 :parameters ()
 :precondition (and (at_x10) (at_y2))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y2)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_10_2_11_2
 :parameters ()
 :precondition (and (at_x10) (at_y2))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x10)) (at_x11))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_11_2_10_2
 :parameters ()
 :precondition (and (at_x11) (at_y2))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x11)) (at_x10))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_10_2_10_3
 :parameters ()
 :precondition (and (at_x10) (at_y2))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y2)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_10_3_10_2
 :parameters ()
 :precondition (and (at_x10) (at_y3))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y3)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_10_3_11_3
 :parameters ()
 :precondition (and (at_x10) (at_y3))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x10)) (at_x11))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_11_3_10_3
 :parameters ()
 :precondition (and (at_x11) (at_y3))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x11)) (at_x10))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_10_3_10_4
 :parameters ()
 :precondition (and (at_x10) (at_y3))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y3)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_10_4_10_3
 :parameters ()
 :precondition (and (at_x10) (at_y4))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y4)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_10_4_11_4
 :parameters ()
 :precondition (and (at_x10) (at_y4))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x10)) (at_x11))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_11_4_10_4
 :parameters ()
 :precondition (and (at_x11) (at_y4))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x11)) (at_x10))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_10_4_10_5
 :parameters ()
 :precondition (and (at_x10) (at_y4))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y4)) (at_y5))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_10_5_10_4
 :parameters ()
 :precondition (and (at_x10) (at_y5))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y5)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_10_5_11_5
 :parameters ()
 :precondition (and (at_x10) (at_y5))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x10)) (at_x11))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_11_5_10_5
 :parameters ()
 :precondition (and (at_x11) (at_y5))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x11)) (at_x10))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_10_5_10_6
 :parameters ()
 :precondition (and (at_x10) (at_y5))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y5)) (at_y6))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_10_6_10_5
 :parameters ()
 :precondition (and (at_x10) (at_y6))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y6)) (at_y5))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_10_6_11_6
 :parameters ()
 :precondition (and (at_x10) (at_y6))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x10)) (at_x11))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_11_6_10_6
 :parameters ()
 :precondition (and (at_x11) (at_y6))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x11)) (at_x10))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_10_6_10_7
 :parameters ()
 :precondition (and (at_x10) (at_y6))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y6)) (at_y7))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_10_7_10_6
 :parameters ()
 :precondition (and (at_x10) (at_y7))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y7)) (at_y6))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_10_7_11_7
 :parameters ()
 :precondition (and (at_x10) (at_y7))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x10)) (at_x11))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_11_7_10_7
 :parameters ()
 :precondition (and (at_x11) (at_y7))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x11)) (at_x10))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_10_7_10_8
 :parameters ()
 :precondition (and (at_x10) (at_y7))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y7)) (at_y8))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_10_8_10_7
 :parameters ()
 :precondition (and (at_x10) (at_y8))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y8)) (at_y7))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_10_8_11_8
 :parameters ()
 :precondition (and (at_x10) (at_y8))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x10)) (at_x11))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_11_8_10_8
 :parameters ()
 :precondition (and (at_x11) (at_y8))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x11)) (at_x10))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_10_8_10_9
 :parameters ()
 :precondition (and (at_x10) (at_y8))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y8)) (at_y9))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_10_9_10_8
 :parameters ()
 :precondition (and (at_x10) (at_y9))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y9)) (at_y8))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_10_9_11_9
 :parameters ()
 :precondition (and (at_x10) (at_y9))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x10)) (at_x11))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_11_9_10_9
 :parameters ()
 :precondition (and (at_x11) (at_y9))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x11)) (at_x10))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_10_9_10_10
 :parameters ()
 :precondition (and (at_x10) (at_y9))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y9)) (at_y10))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_10_10_10_9
 :parameters ()
 :precondition (and (at_x10) (at_y10))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y10)) (at_y9))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_10_10_11_10
 :parameters ()
 :precondition (and (at_x10) (at_y10))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x10)) (at_x11))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_11_10_10_10
 :parameters ()
 :precondition (and (at_x11) (at_y10))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x11)) (at_x10))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_10_10_10_11
 :parameters ()
 :precondition (and (at_x10) (at_y10))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y10)) (at_y11))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_10_11_10_10
 :parameters ()
 :precondition (and (at_x10) (at_y11))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y11)) (at_y10))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_10_11_11_11
 :parameters ()
 :precondition (and (at_x10) (at_y11))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x10)) (at_x11))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_11_11_10_11
 :parameters ()
 :precondition (and (at_x11) (at_y11))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x11)) (at_x10))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_10_11_10_12
 :parameters ()
 :precondition (and (at_x10) (at_y11))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y11)) (at_y12))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_10_12_10_11
 :parameters ()
 :precondition (and (at_x10) (at_y12))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y12)) (at_y11))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_10_12_11_12
 :parameters ()
 :precondition (and (at_x10) (at_y12))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x10)) (at_x11))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_11_12_10_12
 :parameters ()
 :precondition (and (at_x11) (at_y12))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x11)) (at_x10))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_10_12_10_13
 :parameters ()
 :precondition (and (at_x10) (at_y12))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y12)) (at_y13))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_10_13_10_12
 :parameters ()
 :precondition (and (at_x10) (at_y13))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y13)) (at_y12))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_10_13_11_13
 :parameters ()
 :precondition (and (at_x10) (at_y13))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x10)) (at_x11))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_11_13_10_13
 :parameters ()
 :precondition (and (at_x11) (at_y13))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x11)) (at_x10))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_10_13_10_14
 :parameters ()
 :precondition (and (at_x10) (at_y13))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y13)) (at_y14))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_10_14_10_13
 :parameters ()
 :precondition (and (at_x10) (at_y14))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y14)) (at_y13))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_10_14_11_14
 :parameters ()
 :precondition (and (at_x10) (at_y14))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x10)) (at_x11))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_11_14_10_14
 :parameters ()
 :precondition (and (at_x11) (at_y14))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x11)) (at_x10))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_10_14_10_15
 :parameters ()
 :precondition (and (at_x10) (at_y14))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y14)) (at_y15))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_10_15_10_14
 :parameters ()
 :precondition (and (at_x10) (at_y15))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y15)) (at_y14))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_10_15_11_15
 :parameters ()
 :precondition (and (at_x10) (at_y15))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x10)) (at_x11))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_11_15_10_15
 :parameters ()
 :precondition (and (at_x11) (at_y15))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x11)) (at_x10))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_11_0_12_0
 :parameters ()
 :precondition (and (at_x11) (at_y0))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x11)) (at_x12))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_12_0_11_0
 :parameters ()
 :precondition (and (at_x12) (at_y0))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x12)) (at_x11))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_11_0_11_1
 :parameters ()
 :precondition (and (at_x11) (at_y0))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y0)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_11_1_11_0
 :parameters ()
 :precondition (and (at_x11) (at_y1))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y1)) (at_y0))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_11_1_12_1
 :parameters ()
 :precondition (and (at_x11) (at_y1))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x11)) (at_x12))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_12_1_11_1
 :parameters ()
 :precondition (and (at_x12) (at_y1))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x12)) (at_x11))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_11_1_11_2
 :parameters ()
 :precondition (and (at_x11) (at_y1))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y1)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_11_2_11_1
 :parameters ()
 :precondition (and (at_x11) (at_y2))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y2)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_11_2_12_2
 :parameters ()
 :precondition (and (at_x11) (at_y2))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x11)) (at_x12))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_12_2_11_2
 :parameters ()
 :precondition (and (at_x12) (at_y2))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x12)) (at_x11))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_11_2_11_3
 :parameters ()
 :precondition (and (at_x11) (at_y2))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y2)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_11_3_11_2
 :parameters ()
 :precondition (and (at_x11) (at_y3))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y3)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_11_3_12_3
 :parameters ()
 :precondition (and (at_x11) (at_y3))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x11)) (at_x12))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_12_3_11_3
 :parameters ()
 :precondition (and (at_x12) (at_y3))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x12)) (at_x11))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_11_3_11_4
 :parameters ()
 :precondition (and (at_x11) (at_y3))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y3)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_11_4_11_3
 :parameters ()
 :precondition (and (at_x11) (at_y4))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y4)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_11_4_12_4
 :parameters ()
 :precondition (and (at_x11) (at_y4))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x11)) (at_x12))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_12_4_11_4
 :parameters ()
 :precondition (and (at_x12) (at_y4))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x12)) (at_x11))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_11_4_11_5
 :parameters ()
 :precondition (and (at_x11) (at_y4))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y4)) (at_y5))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_11_5_11_4
 :parameters ()
 :precondition (and (at_x11) (at_y5))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y5)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_11_5_12_5
 :parameters ()
 :precondition (and (at_x11) (at_y5))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x11)) (at_x12))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_12_5_11_5
 :parameters ()
 :precondition (and (at_x12) (at_y5))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x12)) (at_x11))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_11_5_11_6
 :parameters ()
 :precondition (and (at_x11) (at_y5))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y5)) (at_y6))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_11_6_11_5
 :parameters ()
 :precondition (and (at_x11) (at_y6))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y6)) (at_y5))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_11_6_12_6
 :parameters ()
 :precondition (and (at_x11) (at_y6))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x11)) (at_x12))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_12_6_11_6
 :parameters ()
 :precondition (and (at_x12) (at_y6))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x12)) (at_x11))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_11_6_11_7
 :parameters ()
 :precondition (and (at_x11) (at_y6))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y6)) (at_y7))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_11_7_11_6
 :parameters ()
 :precondition (and (at_x11) (at_y7))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y7)) (at_y6))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_11_7_12_7
 :parameters ()
 :precondition (and (at_x11) (at_y7))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x11)) (at_x12))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_12_7_11_7
 :parameters ()
 :precondition (and (at_x12) (at_y7))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x12)) (at_x11))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_11_7_11_8
 :parameters ()
 :precondition (and (at_x11) (at_y7))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y7)) (at_y8))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_11_8_11_7
 :parameters ()
 :precondition (and (at_x11) (at_y8))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y8)) (at_y7))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_11_8_12_8
 :parameters ()
 :precondition (and (at_x11) (at_y8))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x11)) (at_x12))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_12_8_11_8
 :parameters ()
 :precondition (and (at_x12) (at_y8))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x12)) (at_x11))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_11_8_11_9
 :parameters ()
 :precondition (and (at_x11) (at_y8))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y8)) (at_y9))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_11_9_11_8
 :parameters ()
 :precondition (and (at_x11) (at_y9))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y9)) (at_y8))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_11_9_12_9
 :parameters ()
 :precondition (and (at_x11) (at_y9))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x11)) (at_x12))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_12_9_11_9
 :parameters ()
 :precondition (and (at_x12) (at_y9))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x12)) (at_x11))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_11_9_11_10
 :parameters ()
 :precondition (and (at_x11) (at_y9))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y9)) (at_y10))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_11_10_11_9
 :parameters ()
 :precondition (and (at_x11) (at_y10))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y10)) (at_y9))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_11_10_12_10
 :parameters ()
 :precondition (and (at_x11) (at_y10))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x11)) (at_x12))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_12_10_11_10
 :parameters ()
 :precondition (and (at_x12) (at_y10))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x12)) (at_x11))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_11_10_11_11
 :parameters ()
 :precondition (and (at_x11) (at_y10))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y10)) (at_y11))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_11_11_11_10
 :parameters ()
 :precondition (and (at_x11) (at_y11))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y11)) (at_y10))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_11_11_12_11
 :parameters ()
 :precondition (and (at_x11) (at_y11))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x11)) (at_x12))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_12_11_11_11
 :parameters ()
 :precondition (and (at_x12) (at_y11))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x12)) (at_x11))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_11_11_11_12
 :parameters ()
 :precondition (and (at_x11) (at_y11))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y11)) (at_y12))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_11_12_11_11
 :parameters ()
 :precondition (and (at_x11) (at_y12))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y12)) (at_y11))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_11_12_12_12
 :parameters ()
 :precondition (and (at_x11) (at_y12))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x11)) (at_x12))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_12_12_11_12
 :parameters ()
 :precondition (and (at_x12) (at_y12))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x12)) (at_x11))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_11_12_11_13
 :parameters ()
 :precondition (and (at_x11) (at_y12))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y12)) (at_y13))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_11_13_11_12
 :parameters ()
 :precondition (and (at_x11) (at_y13))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y13)) (at_y12))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_11_13_12_13
 :parameters ()
 :precondition (and (at_x11) (at_y13))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x11)) (at_x12))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_12_13_11_13
 :parameters ()
 :precondition (and (at_x12) (at_y13))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x12)) (at_x11))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_11_13_11_14
 :parameters ()
 :precondition (and (at_x11) (at_y13))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y13)) (at_y14))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_11_14_11_13
 :parameters ()
 :precondition (and (at_x11) (at_y14))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y14)) (at_y13))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_11_14_12_14
 :parameters ()
 :precondition (and (at_x11) (at_y14))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x11)) (at_x12))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_12_14_11_14
 :parameters ()
 :precondition (and (at_x12) (at_y14))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x12)) (at_x11))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_11_14_11_15
 :parameters ()
 :precondition (and (at_x11) (at_y14))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y14)) (at_y15))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_11_15_11_14
 :parameters ()
 :precondition (and (at_x11) (at_y15))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y15)) (at_y14))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_11_15_12_15
 :parameters ()
 :precondition (and (at_x11) (at_y15))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x11)) (at_x12))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_12_15_11_15
 :parameters ()
 :precondition (and (at_x12) (at_y15))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x12)) (at_x11))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_12_0_13_0
 :parameters ()
 :precondition (and (at_x12) (at_y0))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x12)) (at_x13))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_13_0_12_0
 :parameters ()
 :precondition (and (at_x13) (at_y0))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x13)) (at_x12))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_12_0_12_1
 :parameters ()
 :precondition (and (at_x12) (at_y0))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y0)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_12_1_12_0
 :parameters ()
 :precondition (and (at_x12) (at_y1))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y1)) (at_y0))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_12_1_13_1
 :parameters ()
 :precondition (and (at_x12) (at_y1))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x12)) (at_x13))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_13_1_12_1
 :parameters ()
 :precondition (and (at_x13) (at_y1))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x13)) (at_x12))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_12_1_12_2
 :parameters ()
 :precondition (and (at_x12) (at_y1))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y1)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_12_2_12_1
 :parameters ()
 :precondition (and (at_x12) (at_y2))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y2)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_12_2_13_2
 :parameters ()
 :precondition (and (at_x12) (at_y2))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x12)) (at_x13))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_13_2_12_2
 :parameters ()
 :precondition (and (at_x13) (at_y2))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x13)) (at_x12))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_12_2_12_3
 :parameters ()
 :precondition (and (at_x12) (at_y2))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y2)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_12_3_12_2
 :parameters ()
 :precondition (and (at_x12) (at_y3))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y3)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_12_3_13_3
 :parameters ()
 :precondition (and (at_x12) (at_y3))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x12)) (at_x13))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_13_3_12_3
 :parameters ()
 :precondition (and (at_x13) (at_y3))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x13)) (at_x12))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_12_3_12_4
 :parameters ()
 :precondition (and (at_x12) (at_y3))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y3)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_12_4_12_3
 :parameters ()
 :precondition (and (at_x12) (at_y4))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y4)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_12_4_13_4
 :parameters ()
 :precondition (and (at_x12) (at_y4))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x12)) (at_x13))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_13_4_12_4
 :parameters ()
 :precondition (and (at_x13) (at_y4))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x13)) (at_x12))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_12_4_12_5
 :parameters ()
 :precondition (and (at_x12) (at_y4))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y4)) (at_y5))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_12_5_12_4
 :parameters ()
 :precondition (and (at_x12) (at_y5))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y5)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_12_5_13_5
 :parameters ()
 :precondition (and (at_x12) (at_y5))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x12)) (at_x13))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_13_5_12_5
 :parameters ()
 :precondition (and (at_x13) (at_y5))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x13)) (at_x12))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_12_5_12_6
 :parameters ()
 :precondition (and (at_x12) (at_y5))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y5)) (at_y6))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_12_6_12_5
 :parameters ()
 :precondition (and (at_x12) (at_y6))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y6)) (at_y5))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_12_6_13_6
 :parameters ()
 :precondition (and (at_x12) (at_y6))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x12)) (at_x13))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_13_6_12_6
 :parameters ()
 :precondition (and (at_x13) (at_y6))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x13)) (at_x12))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_12_6_12_7
 :parameters ()
 :precondition (and (at_x12) (at_y6))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y6)) (at_y7))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_12_7_12_6
 :parameters ()
 :precondition (and (at_x12) (at_y7))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y7)) (at_y6))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_12_7_13_7
 :parameters ()
 :precondition (and (at_x12) (at_y7))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x12)) (at_x13))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_13_7_12_7
 :parameters ()
 :precondition (and (at_x13) (at_y7))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x13)) (at_x12))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_12_7_12_8
 :parameters ()
 :precondition (and (at_x12) (at_y7))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y7)) (at_y8))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_12_8_12_7
 :parameters ()
 :precondition (and (at_x12) (at_y8))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y8)) (at_y7))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_12_8_13_8
 :parameters ()
 :precondition (and (at_x12) (at_y8))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x12)) (at_x13))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_13_8_12_8
 :parameters ()
 :precondition (and (at_x13) (at_y8))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x13)) (at_x12))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_12_8_12_9
 :parameters ()
 :precondition (and (at_x12) (at_y8))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y8)) (at_y9))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_12_9_12_8
 :parameters ()
 :precondition (and (at_x12) (at_y9))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y9)) (at_y8))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_12_9_13_9
 :parameters ()
 :precondition (and (at_x12) (at_y9))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x12)) (at_x13))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_13_9_12_9
 :parameters ()
 :precondition (and (at_x13) (at_y9))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x13)) (at_x12))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_12_9_12_10
 :parameters ()
 :precondition (and (at_x12) (at_y9))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y9)) (at_y10))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_12_10_12_9
 :parameters ()
 :precondition (and (at_x12) (at_y10))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y10)) (at_y9))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_12_10_13_10
 :parameters ()
 :precondition (and (at_x12) (at_y10))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x12)) (at_x13))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_13_10_12_10
 :parameters ()
 :precondition (and (at_x13) (at_y10))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x13)) (at_x12))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_12_10_12_11
 :parameters ()
 :precondition (and (at_x12) (at_y10))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y10)) (at_y11))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_12_11_12_10
 :parameters ()
 :precondition (and (at_x12) (at_y11))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y11)) (at_y10))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_12_11_13_11
 :parameters ()
 :precondition (and (at_x12) (at_y11))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x12)) (at_x13))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_13_11_12_11
 :parameters ()
 :precondition (and (at_x13) (at_y11))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x13)) (at_x12))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_12_11_12_12
 :parameters ()
 :precondition (and (at_x12) (at_y11))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y11)) (at_y12))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_12_12_12_11
 :parameters ()
 :precondition (and (at_x12) (at_y12))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y12)) (at_y11))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_12_12_13_12
 :parameters ()
 :precondition (and (at_x12) (at_y12))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x12)) (at_x13))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_13_12_12_12
 :parameters ()
 :precondition (and (at_x13) (at_y12))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x13)) (at_x12))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_12_12_12_13
 :parameters ()
 :precondition (and (at_x12) (at_y12))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y12)) (at_y13))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_12_13_12_12
 :parameters ()
 :precondition (and (at_x12) (at_y13))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y13)) (at_y12))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_12_13_13_13
 :parameters ()
 :precondition (and (at_x12) (at_y13))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x12)) (at_x13))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_13_13_12_13
 :parameters ()
 :precondition (and (at_x13) (at_y13))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x13)) (at_x12))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_12_13_12_14
 :parameters ()
 :precondition (and (at_x12) (at_y13))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y13)) (at_y14))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_12_14_12_13
 :parameters ()
 :precondition (and (at_x12) (at_y14))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y14)) (at_y13))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_12_14_13_14
 :parameters ()
 :precondition (and (at_x12) (at_y14))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x12)) (at_x13))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_13_14_12_14
 :parameters ()
 :precondition (and (at_x13) (at_y14))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x13)) (at_x12))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_12_14_12_15
 :parameters ()
 :precondition (and (at_x12) (at_y14))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y14)) (at_y15))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_12_15_12_14
 :parameters ()
 :precondition (and (at_x12) (at_y15))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y15)) (at_y14))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_12_15_13_15
 :parameters ()
 :precondition (and (at_x12) (at_y15))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x12)) (at_x13))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_13_15_12_15
 :parameters ()
 :precondition (and (at_x13) (at_y15))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x13)) (at_x12))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_13_0_14_0
 :parameters ()
 :precondition (and (at_x13) (at_y0))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x13)) (at_x14))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_14_0_13_0
 :parameters ()
 :precondition (and (at_x14) (at_y0))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x14)) (at_x13))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_13_0_13_1
 :parameters ()
 :precondition (and (at_x13) (at_y0))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y0)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_13_1_13_0
 :parameters ()
 :precondition (and (at_x13) (at_y1))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y1)) (at_y0))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_13_1_14_1
 :parameters ()
 :precondition (and (at_x13) (at_y1))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x13)) (at_x14))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_14_1_13_1
 :parameters ()
 :precondition (and (at_x14) (at_y1))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x14)) (at_x13))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_13_1_13_2
 :parameters ()
 :precondition (and (at_x13) (at_y1))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y1)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_13_2_13_1
 :parameters ()
 :precondition (and (at_x13) (at_y2))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y2)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_13_2_14_2
 :parameters ()
 :precondition (and (at_x13) (at_y2))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x13)) (at_x14))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_14_2_13_2
 :parameters ()
 :precondition (and (at_x14) (at_y2))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x14)) (at_x13))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_13_2_13_3
 :parameters ()
 :precondition (and (at_x13) (at_y2))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y2)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_13_3_13_2
 :parameters ()
 :precondition (and (at_x13) (at_y3))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y3)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_13_3_14_3
 :parameters ()
 :precondition (and (at_x13) (at_y3))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x13)) (at_x14))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_14_3_13_3
 :parameters ()
 :precondition (and (at_x14) (at_y3))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x14)) (at_x13))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_13_3_13_4
 :parameters ()
 :precondition (and (at_x13) (at_y3))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y3)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_13_4_13_3
 :parameters ()
 :precondition (and (at_x13) (at_y4))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y4)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_13_4_14_4
 :parameters ()
 :precondition (and (at_x13) (at_y4))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x13)) (at_x14))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_14_4_13_4
 :parameters ()
 :precondition (and (at_x14) (at_y4))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x14)) (at_x13))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_13_4_13_5
 :parameters ()
 :precondition (and (at_x13) (at_y4))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y4)) (at_y5))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_13_5_13_4
 :parameters ()
 :precondition (and (at_x13) (at_y5))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y5)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_13_5_14_5
 :parameters ()
 :precondition (and (at_x13) (at_y5))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x13)) (at_x14))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_14_5_13_5
 :parameters ()
 :precondition (and (at_x14) (at_y5))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x14)) (at_x13))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_13_5_13_6
 :parameters ()
 :precondition (and (at_x13) (at_y5))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y5)) (at_y6))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_13_6_13_5
 :parameters ()
 :precondition (and (at_x13) (at_y6))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y6)) (at_y5))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_13_6_14_6
 :parameters ()
 :precondition (and (at_x13) (at_y6))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x13)) (at_x14))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_14_6_13_6
 :parameters ()
 :precondition (and (at_x14) (at_y6))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x14)) (at_x13))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_13_6_13_7
 :parameters ()
 :precondition (and (at_x13) (at_y6))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y6)) (at_y7))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_13_7_13_6
 :parameters ()
 :precondition (and (at_x13) (at_y7))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y7)) (at_y6))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_13_7_14_7
 :parameters ()
 :precondition (and (at_x13) (at_y7))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x13)) (at_x14))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_14_7_13_7
 :parameters ()
 :precondition (and (at_x14) (at_y7))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x14)) (at_x13))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_13_7_13_8
 :parameters ()
 :precondition (and (at_x13) (at_y7))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y7)) (at_y8))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_13_8_13_7
 :parameters ()
 :precondition (and (at_x13) (at_y8))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y8)) (at_y7))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_13_8_14_8
 :parameters ()
 :precondition (and (at_x13) (at_y8))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x13)) (at_x14))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_14_8_13_8
 :parameters ()
 :precondition (and (at_x14) (at_y8))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x14)) (at_x13))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_13_8_13_9
 :parameters ()
 :precondition (and (at_x13) (at_y8))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y8)) (at_y9))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_13_9_13_8
 :parameters ()
 :precondition (and (at_x13) (at_y9))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y9)) (at_y8))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_13_9_14_9
 :parameters ()
 :precondition (and (at_x13) (at_y9))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x13)) (at_x14))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_14_9_13_9
 :parameters ()
 :precondition (and (at_x14) (at_y9))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x14)) (at_x13))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_13_9_13_10
 :parameters ()
 :precondition (and (at_x13) (at_y9))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y9)) (at_y10))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_13_10_13_9
 :parameters ()
 :precondition (and (at_x13) (at_y10))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y10)) (at_y9))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_13_10_14_10
 :parameters ()
 :precondition (and (at_x13) (at_y10))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x13)) (at_x14))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_14_10_13_10
 :parameters ()
 :precondition (and (at_x14) (at_y10))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x14)) (at_x13))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_13_10_13_11
 :parameters ()
 :precondition (and (at_x13) (at_y10))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y10)) (at_y11))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_13_11_13_10
 :parameters ()
 :precondition (and (at_x13) (at_y11))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y11)) (at_y10))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_13_11_14_11
 :parameters ()
 :precondition (and (at_x13) (at_y11))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x13)) (at_x14))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_14_11_13_11
 :parameters ()
 :precondition (and (at_x14) (at_y11))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x14)) (at_x13))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_13_11_13_12
 :parameters ()
 :precondition (and (at_x13) (at_y11))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y11)) (at_y12))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_13_12_13_11
 :parameters ()
 :precondition (and (at_x13) (at_y12))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y12)) (at_y11))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_13_12_14_12
 :parameters ()
 :precondition (and (at_x13) (at_y12))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x13)) (at_x14))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_14_12_13_12
 :parameters ()
 :precondition (and (at_x14) (at_y12))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x14)) (at_x13))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_13_12_13_13
 :parameters ()
 :precondition (and (at_x13) (at_y12))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y12)) (at_y13))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_13_13_13_12
 :parameters ()
 :precondition (and (at_x13) (at_y13))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y13)) (at_y12))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_13_13_14_13
 :parameters ()
 :precondition (and (at_x13) (at_y13))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x13)) (at_x14))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_14_13_13_13
 :parameters ()
 :precondition (and (at_x14) (at_y13))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x14)) (at_x13))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_13_13_13_14
 :parameters ()
 :precondition (and (at_x13) (at_y13))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y13)) (at_y14))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_13_14_13_13
 :parameters ()
 :precondition (and (at_x13) (at_y14))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y14)) (at_y13))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_13_14_14_14
 :parameters ()
 :precondition (and (at_x13) (at_y14))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x13)) (at_x14))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_14_14_13_14
 :parameters ()
 :precondition (and (at_x14) (at_y14))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x14)) (at_x13))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_13_14_13_15
 :parameters ()
 :precondition (and (at_x13) (at_y14))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y14)) (at_y15))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_13_15_13_14
 :parameters ()
 :precondition (and (at_x13) (at_y15))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y15)) (at_y14))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_13_15_14_15
 :parameters ()
 :precondition (and (at_x13) (at_y15))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x13)) (at_x14))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_14_15_13_15
 :parameters ()
 :precondition (and (at_x14) (at_y15))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x14)) (at_x13))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_14_0_15_0
 :parameters ()
 :precondition (and (at_x14) (at_y0))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x14)) (at_x15))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_15_0_14_0
 :parameters ()
 :precondition (and (at_x15) (at_y0))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x15)) (at_x14))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_14_0_14_1
 :parameters ()
 :precondition (and (at_x14) (at_y0))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y0)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_14_1_14_0
 :parameters ()
 :precondition (and (at_x14) (at_y1))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y1)) (at_y0))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_14_1_15_1
 :parameters ()
 :precondition (and (at_x14) (at_y1))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x14)) (at_x15))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_15_1_14_1
 :parameters ()
 :precondition (and (at_x15) (at_y1))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x15)) (at_x14))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_14_1_14_2
 :parameters ()
 :precondition (and (at_x14) (at_y1))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y1)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_14_2_14_1
 :parameters ()
 :precondition (and (at_x14) (at_y2))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y2)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_14_2_15_2
 :parameters ()
 :precondition (and (at_x14) (at_y2))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x14)) (at_x15))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_15_2_14_2
 :parameters ()
 :precondition (and (at_x15) (at_y2))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x15)) (at_x14))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_14_2_14_3
 :parameters ()
 :precondition (and (at_x14) (at_y2))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y2)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_14_3_14_2
 :parameters ()
 :precondition (and (at_x14) (at_y3))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y3)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_14_3_15_3
 :parameters ()
 :precondition (and (at_x14) (at_y3))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x14)) (at_x15))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_15_3_14_3
 :parameters ()
 :precondition (and (at_x15) (at_y3))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x15)) (at_x14))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_14_3_14_4
 :parameters ()
 :precondition (and (at_x14) (at_y3))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y3)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_14_4_14_3
 :parameters ()
 :precondition (and (at_x14) (at_y4))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y4)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_14_4_15_4
 :parameters ()
 :precondition (and (at_x14) (at_y4))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x14)) (at_x15))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_15_4_14_4
 :parameters ()
 :precondition (and (at_x15) (at_y4))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x15)) (at_x14))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_14_4_14_5
 :parameters ()
 :precondition (and (at_x14) (at_y4))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y4)) (at_y5))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_14_5_14_4
 :parameters ()
 :precondition (and (at_x14) (at_y5))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y5)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_14_5_15_5
 :parameters ()
 :precondition (and (at_x14) (at_y5))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x14)) (at_x15))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_15_5_14_5
 :parameters ()
 :precondition (and (at_x15) (at_y5))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x15)) (at_x14))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_14_5_14_6
 :parameters ()
 :precondition (and (at_x14) (at_y5))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y5)) (at_y6))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_14_6_14_5
 :parameters ()
 :precondition (and (at_x14) (at_y6))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y6)) (at_y5))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_14_6_15_6
 :parameters ()
 :precondition (and (at_x14) (at_y6))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x14)) (at_x15))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_15_6_14_6
 :parameters ()
 :precondition (and (at_x15) (at_y6))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x15)) (at_x14))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_14_6_14_7
 :parameters ()
 :precondition (and (at_x14) (at_y6))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y6)) (at_y7))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_14_7_14_6
 :parameters ()
 :precondition (and (at_x14) (at_y7))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y7)) (at_y6))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_14_7_15_7
 :parameters ()
 :precondition (and (at_x14) (at_y7))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x14)) (at_x15))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_15_7_14_7
 :parameters ()
 :precondition (and (at_x15) (at_y7))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x15)) (at_x14))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_14_7_14_8
 :parameters ()
 :precondition (and (at_x14) (at_y7))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y7)) (at_y8))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_14_8_14_7
 :parameters ()
 :precondition (and (at_x14) (at_y8))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y8)) (at_y7))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_14_8_15_8
 :parameters ()
 :precondition (and (at_x14) (at_y8))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x14)) (at_x15))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_15_8_14_8
 :parameters ()
 :precondition (and (at_x15) (at_y8))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x15)) (at_x14))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_14_8_14_9
 :parameters ()
 :precondition (and (at_x14) (at_y8))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y8)) (at_y9))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_14_9_14_8
 :parameters ()
 :precondition (and (at_x14) (at_y9))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y9)) (at_y8))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_14_9_15_9
 :parameters ()
 :precondition (and (at_x14) (at_y9))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x14)) (at_x15))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_15_9_14_9
 :parameters ()
 :precondition (and (at_x15) (at_y9))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x15)) (at_x14))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_14_9_14_10
 :parameters ()
 :precondition (and (at_x14) (at_y9))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y9)) (at_y10))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_14_10_14_9
 :parameters ()
 :precondition (and (at_x14) (at_y10))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y10)) (at_y9))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_14_10_15_10
 :parameters ()
 :precondition (and (at_x14) (at_y10))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x14)) (at_x15))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_15_10_14_10
 :parameters ()
 :precondition (and (at_x15) (at_y10))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x15)) (at_x14))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_14_10_14_11
 :parameters ()
 :precondition (and (at_x14) (at_y10))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y10)) (at_y11))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_14_11_14_10
 :parameters ()
 :precondition (and (at_x14) (at_y11))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y11)) (at_y10))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_14_11_15_11
 :parameters ()
 :precondition (and (at_x14) (at_y11))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x14)) (at_x15))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_15_11_14_11
 :parameters ()
 :precondition (and (at_x15) (at_y11))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x15)) (at_x14))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_14_11_14_12
 :parameters ()
 :precondition (and (at_x14) (at_y11))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y11)) (at_y12))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_14_12_14_11
 :parameters ()
 :precondition (and (at_x14) (at_y12))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y12)) (at_y11))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_14_12_15_12
 :parameters ()
 :precondition (and (at_x14) (at_y12))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x14)) (at_x15))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_15_12_14_12
 :parameters ()
 :precondition (and (at_x15) (at_y12))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x15)) (at_x14))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_14_12_14_13
 :parameters ()
 :precondition (and (at_x14) (at_y12))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y12)) (at_y13))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_14_13_14_12
 :parameters ()
 :precondition (and (at_x14) (at_y13))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y13)) (at_y12))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_14_13_15_13
 :parameters ()
 :precondition (and (at_x14) (at_y13))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x14)) (at_x15))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_15_13_14_13
 :parameters ()
 :precondition (and (at_x15) (at_y13))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x15)) (at_x14))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_14_13_14_14
 :parameters ()
 :precondition (and (at_x14) (at_y13))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y13)) (at_y14))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_14_14_14_13
 :parameters ()
 :precondition (and (at_x14) (at_y14))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y14)) (at_y13))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_14_14_15_14
 :parameters ()
 :precondition (and (at_x14) (at_y14))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x14)) (at_x15))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_15_14_14_14
 :parameters ()
 :precondition (and (at_x15) (at_y14))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x15)) (at_x14))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_14_14_14_15
 :parameters ()
 :precondition (and (at_x14) (at_y14))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y14)) (at_y15))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_14_15_14_14
 :parameters ()
 :precondition (and (at_x14) (at_y15))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y15)) (at_y14))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_14_15_15_15
 :parameters ()
 :precondition (and (at_x14) (at_y15))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x14)) (at_x15))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_15_15_14_15
 :parameters ()
 :precondition (and (at_x15) (at_y15))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_x15)) (at_x14))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_15_0_15_1
 :parameters ()
 :precondition (and (at_x15) (at_y0))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y0)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_15_1_15_0
 :parameters ()
 :precondition (and (at_x15) (at_y1))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y1)) (at_y0))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_15_1_15_2
 :parameters ()
 :precondition (and (at_x15) (at_y1))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y1)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_15_2_15_1
 :parameters ()
 :precondition (and (at_x15) (at_y2))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y2)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_15_2_15_3
 :parameters ()
 :precondition (and (at_x15) (at_y2))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y2)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_15_3_15_2
 :parameters ()
 :precondition (and (at_x15) (at_y3))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y3)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_15_3_15_4
 :parameters ()
 :precondition (and (at_x15) (at_y3))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y3)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_15_4_15_3
 :parameters ()
 :precondition (and (at_x15) (at_y4))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y4)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_15_4_15_5
 :parameters ()
 :precondition (and (at_x15) (at_y4))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y4)) (at_y5))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_15_5_15_4
 :parameters ()
 :precondition (and (at_x15) (at_y5))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y5)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_15_5_15_6
 :parameters ()
 :precondition (and (at_x15) (at_y5))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y5)) (at_y6))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_15_6_15_5
 :parameters ()
 :precondition (and (at_x15) (at_y6))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y6)) (at_y5))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_15_6_15_7
 :parameters ()
 :precondition (and (at_x15) (at_y6))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y6)) (at_y7))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_15_7_15_6
 :parameters ()
 :precondition (and (at_x15) (at_y7))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y7)) (at_y6))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_15_7_15_8
 :parameters ()
 :precondition (and (at_x15) (at_y7))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y7)) (at_y8))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_15_8_15_7
 :parameters ()
 :precondition (and (at_x15) (at_y8))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y8)) (at_y7))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_15_8_15_9
 :parameters ()
 :precondition (and (at_x15) (at_y8))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y8)) (at_y9))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_15_9_15_8
 :parameters ()
 :precondition (and (at_x15) (at_y9))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y9)) (at_y8))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_15_9_15_10
 :parameters ()
 :precondition (and (at_x15) (at_y9))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y9)) (at_y10))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_15_10_15_9
 :parameters ()
 :precondition (and (at_x15) (at_y10))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y10)) (at_y9))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_15_10_15_11
 :parameters ()
 :precondition (and (at_x15) (at_y10))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y10)) (at_y11))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_15_11_15_10
 :parameters ()
 :precondition (and (at_x15) (at_y11))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y11)) (at_y10))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_15_11_15_12
 :parameters ()
 :precondition (and (at_x15) (at_y11))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y11)) (at_y12))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_15_12_15_11
 :parameters ()
 :precondition (and (at_x15) (at_y12))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y12)) (at_y11))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_15_12_15_13
 :parameters ()
 :precondition (and (at_x15) (at_y12))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y12)) (at_y13))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_15_13_15_12
 :parameters ()
 :precondition (and (at_x15) (at_y13))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y13)) (at_y12))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_15_13_15_14
 :parameters ()
 :precondition (and (at_x15) (at_y13))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y13)) (at_y14))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_15_14_15_13
 :parameters ()
 :precondition (and (at_x15) (at_y14))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y14)) (at_y13))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_15_14_15_15
 :parameters ()
 :precondition (and (at_x15) (at_y14))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y14)) (at_y15))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action move_15_15_15_14
 :parameters ()
 :precondition (and (at_x15) (at_y15))
 :poss-precondition (and (have_item0) (have_item1))
 :effect (and (not (at_y15)) (at_y14))
 :poss-effect (and (not (have_item0)) (not (have_item1)))
)

(:action gamble_item0_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_0_6
 :parameters ()
 :precondition (and (at_x0) (at_y6))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_0_6
 :parameters ()
 :precondition (and (at_x0) (at_y6))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_0_7
 :parameters ()
 :precondition (and (at_x0) (at_y7))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_0_7
 :parameters ()
 :precondition (and (at_x0) (at_y7))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_0_8
 :parameters ()
 :precondition (and (at_x0) (at_y8))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_0_8
 :parameters ()
 :precondition (and (at_x0) (at_y8))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_0_9
 :parameters ()
 :precondition (and (at_x0) (at_y9))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_0_9
 :parameters ()
 :precondition (and (at_x0) (at_y9))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_0_10
 :parameters ()
 :precondition (and (at_x0) (at_y10))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_0_10
 :parameters ()
 :precondition (and (at_x0) (at_y10))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_0_11
 :parameters ()
 :precondition (and (at_x0) (at_y11))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_0_11
 :parameters ()
 :precondition (and (at_x0) (at_y11))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_0_12
 :parameters ()
 :precondition (and (at_x0) (at_y12))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_0_12
 :parameters ()
 :precondition (and (at_x0) (at_y12))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_0_13
 :parameters ()
 :precondition (and (at_x0) (at_y13))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_0_13
 :parameters ()
 :precondition (and (at_x0) (at_y13))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_0_14
 :parameters ()
 :precondition (and (at_x0) (at_y14))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_0_14
 :parameters ()
 :precondition (and (at_x0) (at_y14))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_0_15
 :parameters ()
 :precondition (and (at_x0) (at_y15))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_0_15
 :parameters ()
 :precondition (and (at_x0) (at_y15))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_1_6
 :parameters ()
 :precondition (and (at_x1) (at_y6))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_1_6
 :parameters ()
 :precondition (and (at_x1) (at_y6))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_1_7
 :parameters ()
 :precondition (and (at_x1) (at_y7))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_1_7
 :parameters ()
 :precondition (and (at_x1) (at_y7))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_1_8
 :parameters ()
 :precondition (and (at_x1) (at_y8))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_1_8
 :parameters ()
 :precondition (and (at_x1) (at_y8))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_1_9
 :parameters ()
 :precondition (and (at_x1) (at_y9))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_1_9
 :parameters ()
 :precondition (and (at_x1) (at_y9))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_1_10
 :parameters ()
 :precondition (and (at_x1) (at_y10))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_1_10
 :parameters ()
 :precondition (and (at_x1) (at_y10))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_1_11
 :parameters ()
 :precondition (and (at_x1) (at_y11))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_1_11
 :parameters ()
 :precondition (and (at_x1) (at_y11))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_1_12
 :parameters ()
 :precondition (and (at_x1) (at_y12))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_1_12
 :parameters ()
 :precondition (and (at_x1) (at_y12))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_1_13
 :parameters ()
 :precondition (and (at_x1) (at_y13))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_1_13
 :parameters ()
 :precondition (and (at_x1) (at_y13))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_1_14
 :parameters ()
 :precondition (and (at_x1) (at_y14))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_1_14
 :parameters ()
 :precondition (and (at_x1) (at_y14))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_1_15
 :parameters ()
 :precondition (and (at_x1) (at_y15))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_1_15
 :parameters ()
 :precondition (and (at_x1) (at_y15))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_2_6
 :parameters ()
 :precondition (and (at_x2) (at_y6))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_2_6
 :parameters ()
 :precondition (and (at_x2) (at_y6))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_2_7
 :parameters ()
 :precondition (and (at_x2) (at_y7))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_2_7
 :parameters ()
 :precondition (and (at_x2) (at_y7))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_2_8
 :parameters ()
 :precondition (and (at_x2) (at_y8))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_2_8
 :parameters ()
 :precondition (and (at_x2) (at_y8))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_2_9
 :parameters ()
 :precondition (and (at_x2) (at_y9))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_2_9
 :parameters ()
 :precondition (and (at_x2) (at_y9))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_2_10
 :parameters ()
 :precondition (and (at_x2) (at_y10))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_2_10
 :parameters ()
 :precondition (and (at_x2) (at_y10))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_2_11
 :parameters ()
 :precondition (and (at_x2) (at_y11))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_2_11
 :parameters ()
 :precondition (and (at_x2) (at_y11))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_2_12
 :parameters ()
 :precondition (and (at_x2) (at_y12))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_2_12
 :parameters ()
 :precondition (and (at_x2) (at_y12))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_2_13
 :parameters ()
 :precondition (and (at_x2) (at_y13))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_2_13
 :parameters ()
 :precondition (and (at_x2) (at_y13))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_2_14
 :parameters ()
 :precondition (and (at_x2) (at_y14))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_2_14
 :parameters ()
 :precondition (and (at_x2) (at_y14))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_2_15
 :parameters ()
 :precondition (and (at_x2) (at_y15))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_2_15
 :parameters ()
 :precondition (and (at_x2) (at_y15))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_3_6
 :parameters ()
 :precondition (and (at_x3) (at_y6))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_3_6
 :parameters ()
 :precondition (and (at_x3) (at_y6))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_3_7
 :parameters ()
 :precondition (and (at_x3) (at_y7))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_3_7
 :parameters ()
 :precondition (and (at_x3) (at_y7))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_3_8
 :parameters ()
 :precondition (and (at_x3) (at_y8))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_3_8
 :parameters ()
 :precondition (and (at_x3) (at_y8))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_3_9
 :parameters ()
 :precondition (and (at_x3) (at_y9))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_3_9
 :parameters ()
 :precondition (and (at_x3) (at_y9))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_3_10
 :parameters ()
 :precondition (and (at_x3) (at_y10))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_3_10
 :parameters ()
 :precondition (and (at_x3) (at_y10))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_3_11
 :parameters ()
 :precondition (and (at_x3) (at_y11))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_3_11
 :parameters ()
 :precondition (and (at_x3) (at_y11))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_3_12
 :parameters ()
 :precondition (and (at_x3) (at_y12))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_3_12
 :parameters ()
 :precondition (and (at_x3) (at_y12))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_3_13
 :parameters ()
 :precondition (and (at_x3) (at_y13))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_3_13
 :parameters ()
 :precondition (and (at_x3) (at_y13))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_3_14
 :parameters ()
 :precondition (and (at_x3) (at_y14))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_3_14
 :parameters ()
 :precondition (and (at_x3) (at_y14))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_3_15
 :parameters ()
 :precondition (and (at_x3) (at_y15))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_3_15
 :parameters ()
 :precondition (and (at_x3) (at_y15))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_4_6
 :parameters ()
 :precondition (and (at_x4) (at_y6))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_4_6
 :parameters ()
 :precondition (and (at_x4) (at_y6))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_4_7
 :parameters ()
 :precondition (and (at_x4) (at_y7))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_4_7
 :parameters ()
 :precondition (and (at_x4) (at_y7))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_4_8
 :parameters ()
 :precondition (and (at_x4) (at_y8))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_4_8
 :parameters ()
 :precondition (and (at_x4) (at_y8))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_4_9
 :parameters ()
 :precondition (and (at_x4) (at_y9))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_4_9
 :parameters ()
 :precondition (and (at_x4) (at_y9))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_4_10
 :parameters ()
 :precondition (and (at_x4) (at_y10))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_4_10
 :parameters ()
 :precondition (and (at_x4) (at_y10))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_4_11
 :parameters ()
 :precondition (and (at_x4) (at_y11))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_4_11
 :parameters ()
 :precondition (and (at_x4) (at_y11))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_4_12
 :parameters ()
 :precondition (and (at_x4) (at_y12))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_4_12
 :parameters ()
 :precondition (and (at_x4) (at_y12))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_4_13
 :parameters ()
 :precondition (and (at_x4) (at_y13))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_4_13
 :parameters ()
 :precondition (and (at_x4) (at_y13))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_4_14
 :parameters ()
 :precondition (and (at_x4) (at_y14))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_4_14
 :parameters ()
 :precondition (and (at_x4) (at_y14))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_4_15
 :parameters ()
 :precondition (and (at_x4) (at_y15))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_4_15
 :parameters ()
 :precondition (and (at_x4) (at_y15))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_5_6
 :parameters ()
 :precondition (and (at_x5) (at_y6))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_5_6
 :parameters ()
 :precondition (and (at_x5) (at_y6))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_5_7
 :parameters ()
 :precondition (and (at_x5) (at_y7))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_5_7
 :parameters ()
 :precondition (and (at_x5) (at_y7))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_5_8
 :parameters ()
 :precondition (and (at_x5) (at_y8))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_5_8
 :parameters ()
 :precondition (and (at_x5) (at_y8))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_5_9
 :parameters ()
 :precondition (and (at_x5) (at_y9))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_5_9
 :parameters ()
 :precondition (and (at_x5) (at_y9))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_5_10
 :parameters ()
 :precondition (and (at_x5) (at_y10))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_5_10
 :parameters ()
 :precondition (and (at_x5) (at_y10))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_5_11
 :parameters ()
 :precondition (and (at_x5) (at_y11))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_5_11
 :parameters ()
 :precondition (and (at_x5) (at_y11))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_5_12
 :parameters ()
 :precondition (and (at_x5) (at_y12))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_5_12
 :parameters ()
 :precondition (and (at_x5) (at_y12))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_5_13
 :parameters ()
 :precondition (and (at_x5) (at_y13))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_5_13
 :parameters ()
 :precondition (and (at_x5) (at_y13))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_5_14
 :parameters ()
 :precondition (and (at_x5) (at_y14))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_5_14
 :parameters ()
 :precondition (and (at_x5) (at_y14))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_5_15
 :parameters ()
 :precondition (and (at_x5) (at_y15))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_5_15
 :parameters ()
 :precondition (and (at_x5) (at_y15))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_6_0
 :parameters ()
 :precondition (and (at_x6) (at_y0))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_6_0
 :parameters ()
 :precondition (and (at_x6) (at_y0))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_6_1
 :parameters ()
 :precondition (and (at_x6) (at_y1))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_6_1
 :parameters ()
 :precondition (and (at_x6) (at_y1))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_6_2
 :parameters ()
 :precondition (and (at_x6) (at_y2))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_6_2
 :parameters ()
 :precondition (and (at_x6) (at_y2))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_6_3
 :parameters ()
 :precondition (and (at_x6) (at_y3))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_6_3
 :parameters ()
 :precondition (and (at_x6) (at_y3))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_6_4
 :parameters ()
 :precondition (and (at_x6) (at_y4))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_6_4
 :parameters ()
 :precondition (and (at_x6) (at_y4))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_6_5
 :parameters ()
 :precondition (and (at_x6) (at_y5))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_6_5
 :parameters ()
 :precondition (and (at_x6) (at_y5))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_6_6
 :parameters ()
 :precondition (and (at_x6) (at_y6))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_6_6
 :parameters ()
 :precondition (and (at_x6) (at_y6))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_6_7
 :parameters ()
 :precondition (and (at_x6) (at_y7))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_6_7
 :parameters ()
 :precondition (and (at_x6) (at_y7))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_6_8
 :parameters ()
 :precondition (and (at_x6) (at_y8))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_6_8
 :parameters ()
 :precondition (and (at_x6) (at_y8))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_6_9
 :parameters ()
 :precondition (and (at_x6) (at_y9))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_6_9
 :parameters ()
 :precondition (and (at_x6) (at_y9))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_6_10
 :parameters ()
 :precondition (and (at_x6) (at_y10))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_6_10
 :parameters ()
 :precondition (and (at_x6) (at_y10))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_6_11
 :parameters ()
 :precondition (and (at_x6) (at_y11))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_6_11
 :parameters ()
 :precondition (and (at_x6) (at_y11))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_6_12
 :parameters ()
 :precondition (and (at_x6) (at_y12))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_6_12
 :parameters ()
 :precondition (and (at_x6) (at_y12))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_6_13
 :parameters ()
 :precondition (and (at_x6) (at_y13))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_6_13
 :parameters ()
 :precondition (and (at_x6) (at_y13))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_6_14
 :parameters ()
 :precondition (and (at_x6) (at_y14))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_6_14
 :parameters ()
 :precondition (and (at_x6) (at_y14))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_6_15
 :parameters ()
 :precondition (and (at_x6) (at_y15))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_6_15
 :parameters ()
 :precondition (and (at_x6) (at_y15))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_7_0
 :parameters ()
 :precondition (and (at_x7) (at_y0))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_7_0
 :parameters ()
 :precondition (and (at_x7) (at_y0))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_7_1
 :parameters ()
 :precondition (and (at_x7) (at_y1))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_7_1
 :parameters ()
 :precondition (and (at_x7) (at_y1))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_7_2
 :parameters ()
 :precondition (and (at_x7) (at_y2))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_7_2
 :parameters ()
 :precondition (and (at_x7) (at_y2))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_7_3
 :parameters ()
 :precondition (and (at_x7) (at_y3))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_7_3
 :parameters ()
 :precondition (and (at_x7) (at_y3))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_7_4
 :parameters ()
 :precondition (and (at_x7) (at_y4))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_7_4
 :parameters ()
 :precondition (and (at_x7) (at_y4))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_7_5
 :parameters ()
 :precondition (and (at_x7) (at_y5))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_7_5
 :parameters ()
 :precondition (and (at_x7) (at_y5))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_7_6
 :parameters ()
 :precondition (and (at_x7) (at_y6))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_7_6
 :parameters ()
 :precondition (and (at_x7) (at_y6))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_7_7
 :parameters ()
 :precondition (and (at_x7) (at_y7))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_7_7
 :parameters ()
 :precondition (and (at_x7) (at_y7))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_7_8
 :parameters ()
 :precondition (and (at_x7) (at_y8))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_7_8
 :parameters ()
 :precondition (and (at_x7) (at_y8))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_7_9
 :parameters ()
 :precondition (and (at_x7) (at_y9))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_7_9
 :parameters ()
 :precondition (and (at_x7) (at_y9))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_7_10
 :parameters ()
 :precondition (and (at_x7) (at_y10))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_7_10
 :parameters ()
 :precondition (and (at_x7) (at_y10))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_7_11
 :parameters ()
 :precondition (and (at_x7) (at_y11))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_7_11
 :parameters ()
 :precondition (and (at_x7) (at_y11))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_7_12
 :parameters ()
 :precondition (and (at_x7) (at_y12))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_7_12
 :parameters ()
 :precondition (and (at_x7) (at_y12))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_7_13
 :parameters ()
 :precondition (and (at_x7) (at_y13))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_7_13
 :parameters ()
 :precondition (and (at_x7) (at_y13))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_7_14
 :parameters ()
 :precondition (and (at_x7) (at_y14))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_7_14
 :parameters ()
 :precondition (and (at_x7) (at_y14))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_7_15
 :parameters ()
 :precondition (and (at_x7) (at_y15))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_7_15
 :parameters ()
 :precondition (and (at_x7) (at_y15))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_8_0
 :parameters ()
 :precondition (and (at_x8) (at_y0))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_8_0
 :parameters ()
 :precondition (and (at_x8) (at_y0))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_8_1
 :parameters ()
 :precondition (and (at_x8) (at_y1))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_8_1
 :parameters ()
 :precondition (and (at_x8) (at_y1))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_8_2
 :parameters ()
 :precondition (and (at_x8) (at_y2))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_8_2
 :parameters ()
 :precondition (and (at_x8) (at_y2))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_8_3
 :parameters ()
 :precondition (and (at_x8) (at_y3))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_8_3
 :parameters ()
 :precondition (and (at_x8) (at_y3))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_8_4
 :parameters ()
 :precondition (and (at_x8) (at_y4))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_8_4
 :parameters ()
 :precondition (and (at_x8) (at_y4))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_8_5
 :parameters ()
 :precondition (and (at_x8) (at_y5))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_8_5
 :parameters ()
 :precondition (and (at_x8) (at_y5))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_8_6
 :parameters ()
 :precondition (and (at_x8) (at_y6))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_8_6
 :parameters ()
 :precondition (and (at_x8) (at_y6))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_8_7
 :parameters ()
 :precondition (and (at_x8) (at_y7))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_8_7
 :parameters ()
 :precondition (and (at_x8) (at_y7))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_8_8
 :parameters ()
 :precondition (and (at_x8) (at_y8))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_8_8
 :parameters ()
 :precondition (and (at_x8) (at_y8))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_8_9
 :parameters ()
 :precondition (and (at_x8) (at_y9))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_8_9
 :parameters ()
 :precondition (and (at_x8) (at_y9))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_8_10
 :parameters ()
 :precondition (and (at_x8) (at_y10))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_8_10
 :parameters ()
 :precondition (and (at_x8) (at_y10))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_8_11
 :parameters ()
 :precondition (and (at_x8) (at_y11))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_8_11
 :parameters ()
 :precondition (and (at_x8) (at_y11))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_8_12
 :parameters ()
 :precondition (and (at_x8) (at_y12))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_8_12
 :parameters ()
 :precondition (and (at_x8) (at_y12))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_8_13
 :parameters ()
 :precondition (and (at_x8) (at_y13))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_8_13
 :parameters ()
 :precondition (and (at_x8) (at_y13))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_8_14
 :parameters ()
 :precondition (and (at_x8) (at_y14))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_8_14
 :parameters ()
 :precondition (and (at_x8) (at_y14))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_8_15
 :parameters ()
 :precondition (and (at_x8) (at_y15))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_8_15
 :parameters ()
 :precondition (and (at_x8) (at_y15))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_9_0
 :parameters ()
 :precondition (and (at_x9) (at_y0))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_9_0
 :parameters ()
 :precondition (and (at_x9) (at_y0))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_9_1
 :parameters ()
 :precondition (and (at_x9) (at_y1))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_9_1
 :parameters ()
 :precondition (and (at_x9) (at_y1))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_9_2
 :parameters ()
 :precondition (and (at_x9) (at_y2))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_9_2
 :parameters ()
 :precondition (and (at_x9) (at_y2))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_9_3
 :parameters ()
 :precondition (and (at_x9) (at_y3))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_9_3
 :parameters ()
 :precondition (and (at_x9) (at_y3))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_9_4
 :parameters ()
 :precondition (and (at_x9) (at_y4))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_9_4
 :parameters ()
 :precondition (and (at_x9) (at_y4))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_9_5
 :parameters ()
 :precondition (and (at_x9) (at_y5))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_9_5
 :parameters ()
 :precondition (and (at_x9) (at_y5))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_9_6
 :parameters ()
 :precondition (and (at_x9) (at_y6))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_9_6
 :parameters ()
 :precondition (and (at_x9) (at_y6))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_9_7
 :parameters ()
 :precondition (and (at_x9) (at_y7))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_9_7
 :parameters ()
 :precondition (and (at_x9) (at_y7))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_9_8
 :parameters ()
 :precondition (and (at_x9) (at_y8))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_9_8
 :parameters ()
 :precondition (and (at_x9) (at_y8))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_9_9
 :parameters ()
 :precondition (and (at_x9) (at_y9))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_9_9
 :parameters ()
 :precondition (and (at_x9) (at_y9))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_9_10
 :parameters ()
 :precondition (and (at_x9) (at_y10))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_9_10
 :parameters ()
 :precondition (and (at_x9) (at_y10))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_9_11
 :parameters ()
 :precondition (and (at_x9) (at_y11))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_9_11
 :parameters ()
 :precondition (and (at_x9) (at_y11))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_9_12
 :parameters ()
 :precondition (and (at_x9) (at_y12))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_9_12
 :parameters ()
 :precondition (and (at_x9) (at_y12))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_9_13
 :parameters ()
 :precondition (and (at_x9) (at_y13))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_9_13
 :parameters ()
 :precondition (and (at_x9) (at_y13))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_9_14
 :parameters ()
 :precondition (and (at_x9) (at_y14))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_9_14
 :parameters ()
 :precondition (and (at_x9) (at_y14))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_9_15
 :parameters ()
 :precondition (and (at_x9) (at_y15))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_9_15
 :parameters ()
 :precondition (and (at_x9) (at_y15))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_10_0
 :parameters ()
 :precondition (and (at_x10) (at_y0))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_10_0
 :parameters ()
 :precondition (and (at_x10) (at_y0))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_10_1
 :parameters ()
 :precondition (and (at_x10) (at_y1))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_10_1
 :parameters ()
 :precondition (and (at_x10) (at_y1))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_10_2
 :parameters ()
 :precondition (and (at_x10) (at_y2))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_10_2
 :parameters ()
 :precondition (and (at_x10) (at_y2))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_10_3
 :parameters ()
 :precondition (and (at_x10) (at_y3))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_10_3
 :parameters ()
 :precondition (and (at_x10) (at_y3))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_10_4
 :parameters ()
 :precondition (and (at_x10) (at_y4))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_10_4
 :parameters ()
 :precondition (and (at_x10) (at_y4))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_10_5
 :parameters ()
 :precondition (and (at_x10) (at_y5))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_10_5
 :parameters ()
 :precondition (and (at_x10) (at_y5))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_10_6
 :parameters ()
 :precondition (and (at_x10) (at_y6))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_10_6
 :parameters ()
 :precondition (and (at_x10) (at_y6))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_10_7
 :parameters ()
 :precondition (and (at_x10) (at_y7))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_10_7
 :parameters ()
 :precondition (and (at_x10) (at_y7))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_10_8
 :parameters ()
 :precondition (and (at_x10) (at_y8))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_10_8
 :parameters ()
 :precondition (and (at_x10) (at_y8))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_10_9
 :parameters ()
 :precondition (and (at_x10) (at_y9))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_10_9
 :parameters ()
 :precondition (and (at_x10) (at_y9))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_10_10
 :parameters ()
 :precondition (and (at_x10) (at_y10))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_10_10
 :parameters ()
 :precondition (and (at_x10) (at_y10))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_10_11
 :parameters ()
 :precondition (and (at_x10) (at_y11))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_10_11
 :parameters ()
 :precondition (and (at_x10) (at_y11))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_10_12
 :parameters ()
 :precondition (and (at_x10) (at_y12))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_10_12
 :parameters ()
 :precondition (and (at_x10) (at_y12))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_10_13
 :parameters ()
 :precondition (and (at_x10) (at_y13))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_10_13
 :parameters ()
 :precondition (and (at_x10) (at_y13))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_10_14
 :parameters ()
 :precondition (and (at_x10) (at_y14))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_10_14
 :parameters ()
 :precondition (and (at_x10) (at_y14))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_10_15
 :parameters ()
 :precondition (and (at_x10) (at_y15))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_10_15
 :parameters ()
 :precondition (and (at_x10) (at_y15))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_11_0
 :parameters ()
 :precondition (and (at_x11) (at_y0))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_11_0
 :parameters ()
 :precondition (and (at_x11) (at_y0))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_11_1
 :parameters ()
 :precondition (and (at_x11) (at_y1))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_11_1
 :parameters ()
 :precondition (and (at_x11) (at_y1))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_11_2
 :parameters ()
 :precondition (and (at_x11) (at_y2))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_11_2
 :parameters ()
 :precondition (and (at_x11) (at_y2))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_11_3
 :parameters ()
 :precondition (and (at_x11) (at_y3))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_11_3
 :parameters ()
 :precondition (and (at_x11) (at_y3))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_11_4
 :parameters ()
 :precondition (and (at_x11) (at_y4))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_11_4
 :parameters ()
 :precondition (and (at_x11) (at_y4))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_11_5
 :parameters ()
 :precondition (and (at_x11) (at_y5))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_11_5
 :parameters ()
 :precondition (and (at_x11) (at_y5))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_11_6
 :parameters ()
 :precondition (and (at_x11) (at_y6))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_11_6
 :parameters ()
 :precondition (and (at_x11) (at_y6))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_11_7
 :parameters ()
 :precondition (and (at_x11) (at_y7))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_11_7
 :parameters ()
 :precondition (and (at_x11) (at_y7))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_11_8
 :parameters ()
 :precondition (and (at_x11) (at_y8))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_11_8
 :parameters ()
 :precondition (and (at_x11) (at_y8))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_11_9
 :parameters ()
 :precondition (and (at_x11) (at_y9))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_11_9
 :parameters ()
 :precondition (and (at_x11) (at_y9))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_11_10
 :parameters ()
 :precondition (and (at_x11) (at_y10))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_11_10
 :parameters ()
 :precondition (and (at_x11) (at_y10))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_11_11
 :parameters ()
 :precondition (and (at_x11) (at_y11))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_11_11
 :parameters ()
 :precondition (and (at_x11) (at_y11))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_11_12
 :parameters ()
 :precondition (and (at_x11) (at_y12))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_11_12
 :parameters ()
 :precondition (and (at_x11) (at_y12))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_11_13
 :parameters ()
 :precondition (and (at_x11) (at_y13))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_11_13
 :parameters ()
 :precondition (and (at_x11) (at_y13))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_11_14
 :parameters ()
 :precondition (and (at_x11) (at_y14))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_11_14
 :parameters ()
 :precondition (and (at_x11) (at_y14))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_11_15
 :parameters ()
 :precondition (and (at_x11) (at_y15))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_11_15
 :parameters ()
 :precondition (and (at_x11) (at_y15))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_12_0
 :parameters ()
 :precondition (and (at_x12) (at_y0))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_12_0
 :parameters ()
 :precondition (and (at_x12) (at_y0))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_12_1
 :parameters ()
 :precondition (and (at_x12) (at_y1))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_12_1
 :parameters ()
 :precondition (and (at_x12) (at_y1))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_12_2
 :parameters ()
 :precondition (and (at_x12) (at_y2))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_12_2
 :parameters ()
 :precondition (and (at_x12) (at_y2))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_12_3
 :parameters ()
 :precondition (and (at_x12) (at_y3))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_12_3
 :parameters ()
 :precondition (and (at_x12) (at_y3))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_12_4
 :parameters ()
 :precondition (and (at_x12) (at_y4))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_12_4
 :parameters ()
 :precondition (and (at_x12) (at_y4))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_12_5
 :parameters ()
 :precondition (and (at_x12) (at_y5))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_12_5
 :parameters ()
 :precondition (and (at_x12) (at_y5))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_12_6
 :parameters ()
 :precondition (and (at_x12) (at_y6))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_12_6
 :parameters ()
 :precondition (and (at_x12) (at_y6))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_12_7
 :parameters ()
 :precondition (and (at_x12) (at_y7))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_12_7
 :parameters ()
 :precondition (and (at_x12) (at_y7))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_12_8
 :parameters ()
 :precondition (and (at_x12) (at_y8))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_12_8
 :parameters ()
 :precondition (and (at_x12) (at_y8))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_12_9
 :parameters ()
 :precondition (and (at_x12) (at_y9))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_12_9
 :parameters ()
 :precondition (and (at_x12) (at_y9))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_12_10
 :parameters ()
 :precondition (and (at_x12) (at_y10))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_12_10
 :parameters ()
 :precondition (and (at_x12) (at_y10))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_12_11
 :parameters ()
 :precondition (and (at_x12) (at_y11))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_12_11
 :parameters ()
 :precondition (and (at_x12) (at_y11))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_12_12
 :parameters ()
 :precondition (and (at_x12) (at_y12))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_12_12
 :parameters ()
 :precondition (and (at_x12) (at_y12))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_12_13
 :parameters ()
 :precondition (and (at_x12) (at_y13))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_12_13
 :parameters ()
 :precondition (and (at_x12) (at_y13))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_12_14
 :parameters ()
 :precondition (and (at_x12) (at_y14))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_12_14
 :parameters ()
 :precondition (and (at_x12) (at_y14))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_12_15
 :parameters ()
 :precondition (and (at_x12) (at_y15))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_12_15
 :parameters ()
 :precondition (and (at_x12) (at_y15))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_13_0
 :parameters ()
 :precondition (and (at_x13) (at_y0))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_13_0
 :parameters ()
 :precondition (and (at_x13) (at_y0))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_13_1
 :parameters ()
 :precondition (and (at_x13) (at_y1))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_13_1
 :parameters ()
 :precondition (and (at_x13) (at_y1))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_13_2
 :parameters ()
 :precondition (and (at_x13) (at_y2))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_13_2
 :parameters ()
 :precondition (and (at_x13) (at_y2))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_13_3
 :parameters ()
 :precondition (and (at_x13) (at_y3))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_13_3
 :parameters ()
 :precondition (and (at_x13) (at_y3))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_13_4
 :parameters ()
 :precondition (and (at_x13) (at_y4))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_13_4
 :parameters ()
 :precondition (and (at_x13) (at_y4))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_13_5
 :parameters ()
 :precondition (and (at_x13) (at_y5))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_13_5
 :parameters ()
 :precondition (and (at_x13) (at_y5))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_13_6
 :parameters ()
 :precondition (and (at_x13) (at_y6))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_13_6
 :parameters ()
 :precondition (and (at_x13) (at_y6))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_13_7
 :parameters ()
 :precondition (and (at_x13) (at_y7))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_13_7
 :parameters ()
 :precondition (and (at_x13) (at_y7))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_13_8
 :parameters ()
 :precondition (and (at_x13) (at_y8))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_13_8
 :parameters ()
 :precondition (and (at_x13) (at_y8))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_13_9
 :parameters ()
 :precondition (and (at_x13) (at_y9))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_13_9
 :parameters ()
 :precondition (and (at_x13) (at_y9))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_13_10
 :parameters ()
 :precondition (and (at_x13) (at_y10))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_13_10
 :parameters ()
 :precondition (and (at_x13) (at_y10))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_13_11
 :parameters ()
 :precondition (and (at_x13) (at_y11))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_13_11
 :parameters ()
 :precondition (and (at_x13) (at_y11))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_13_12
 :parameters ()
 :precondition (and (at_x13) (at_y12))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_13_12
 :parameters ()
 :precondition (and (at_x13) (at_y12))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_13_13
 :parameters ()
 :precondition (and (at_x13) (at_y13))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_13_13
 :parameters ()
 :precondition (and (at_x13) (at_y13))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_13_14
 :parameters ()
 :precondition (and (at_x13) (at_y14))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_13_14
 :parameters ()
 :precondition (and (at_x13) (at_y14))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_13_15
 :parameters ()
 :precondition (and (at_x13) (at_y15))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_13_15
 :parameters ()
 :precondition (and (at_x13) (at_y15))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_14_0
 :parameters ()
 :precondition (and (at_x14) (at_y0))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_14_0
 :parameters ()
 :precondition (and (at_x14) (at_y0))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_14_1
 :parameters ()
 :precondition (and (at_x14) (at_y1))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_14_1
 :parameters ()
 :precondition (and (at_x14) (at_y1))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_14_2
 :parameters ()
 :precondition (and (at_x14) (at_y2))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_14_2
 :parameters ()
 :precondition (and (at_x14) (at_y2))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_14_3
 :parameters ()
 :precondition (and (at_x14) (at_y3))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_14_3
 :parameters ()
 :precondition (and (at_x14) (at_y3))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_14_4
 :parameters ()
 :precondition (and (at_x14) (at_y4))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_14_4
 :parameters ()
 :precondition (and (at_x14) (at_y4))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_14_5
 :parameters ()
 :precondition (and (at_x14) (at_y5))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_14_5
 :parameters ()
 :precondition (and (at_x14) (at_y5))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_14_6
 :parameters ()
 :precondition (and (at_x14) (at_y6))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_14_6
 :parameters ()
 :precondition (and (at_x14) (at_y6))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_14_7
 :parameters ()
 :precondition (and (at_x14) (at_y7))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_14_7
 :parameters ()
 :precondition (and (at_x14) (at_y7))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_14_8
 :parameters ()
 :precondition (and (at_x14) (at_y8))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_14_8
 :parameters ()
 :precondition (and (at_x14) (at_y8))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_14_9
 :parameters ()
 :precondition (and (at_x14) (at_y9))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_14_9
 :parameters ()
 :precondition (and (at_x14) (at_y9))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_14_10
 :parameters ()
 :precondition (and (at_x14) (at_y10))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_14_10
 :parameters ()
 :precondition (and (at_x14) (at_y10))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_14_11
 :parameters ()
 :precondition (and (at_x14) (at_y11))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_14_11
 :parameters ()
 :precondition (and (at_x14) (at_y11))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_14_12
 :parameters ()
 :precondition (and (at_x14) (at_y12))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_14_12
 :parameters ()
 :precondition (and (at_x14) (at_y12))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_14_13
 :parameters ()
 :precondition (and (at_x14) (at_y13))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_14_13
 :parameters ()
 :precondition (and (at_x14) (at_y13))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_14_14
 :parameters ()
 :precondition (and (at_x14) (at_y14))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_14_14
 :parameters ()
 :precondition (and (at_x14) (at_y14))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_14_15
 :parameters ()
 :precondition (and (at_x14) (at_y15))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_14_15
 :parameters ()
 :precondition (and (at_x14) (at_y15))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_15_0
 :parameters ()
 :precondition (and (at_x15) (at_y0))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_15_0
 :parameters ()
 :precondition (and (at_x15) (at_y0))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_15_1
 :parameters ()
 :precondition (and (at_x15) (at_y1))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_15_1
 :parameters ()
 :precondition (and (at_x15) (at_y1))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_15_2
 :parameters ()
 :precondition (and (at_x15) (at_y2))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_15_2
 :parameters ()
 :precondition (and (at_x15) (at_y2))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_15_3
 :parameters ()
 :precondition (and (at_x15) (at_y3))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_15_3
 :parameters ()
 :precondition (and (at_x15) (at_y3))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_15_4
 :parameters ()
 :precondition (and (at_x15) (at_y4))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_15_4
 :parameters ()
 :precondition (and (at_x15) (at_y4))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_15_5
 :parameters ()
 :precondition (and (at_x15) (at_y5))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_15_5
 :parameters ()
 :precondition (and (at_x15) (at_y5))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_15_6
 :parameters ()
 :precondition (and (at_x15) (at_y6))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_15_6
 :parameters ()
 :precondition (and (at_x15) (at_y6))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_15_7
 :parameters ()
 :precondition (and (at_x15) (at_y7))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_15_7
 :parameters ()
 :precondition (and (at_x15) (at_y7))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_15_8
 :parameters ()
 :precondition (and (at_x15) (at_y8))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_15_8
 :parameters ()
 :precondition (and (at_x15) (at_y8))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_15_9
 :parameters ()
 :precondition (and (at_x15) (at_y9))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_15_9
 :parameters ()
 :precondition (and (at_x15) (at_y9))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_15_10
 :parameters ()
 :precondition (and (at_x15) (at_y10))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_15_10
 :parameters ()
 :precondition (and (at_x15) (at_y10))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_15_11
 :parameters ()
 :precondition (and (at_x15) (at_y11))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_15_11
 :parameters ()
 :precondition (and (at_x15) (at_y11))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_15_12
 :parameters ()
 :precondition (and (at_x15) (at_y12))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_15_12
 :parameters ()
 :precondition (and (at_x15) (at_y12))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_15_13
 :parameters ()
 :precondition (and (at_x15) (at_y13))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_15_13
 :parameters ()
 :precondition (and (at_x15) (at_y13))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_15_14
 :parameters ()
 :precondition (and (at_x15) (at_y14))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_15_14
 :parameters ()
 :precondition (and (at_x15) (at_y14))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action gamble_item0_15_15
 :parameters ()
 :precondition (and (at_x15) (at_y15))
 :effect (and )
 :poss-effect (and (have_item0))
)

(:action gamble_item1_15_15
 :parameters ()
 :precondition (and (at_x15) (at_y15))
 :effect (and )
 :poss-effect (and (have_item1))
)

(:action easymark_item1_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and (have_item1))
)

(:action easymark_item1_0_12
 :parameters ()
 :precondition (and (at_x0) (at_y12))
 :effect (and (have_item1))
)

(:action easymark_item0_0_14
 :parameters ()
 :precondition (and (at_x0) (at_y14))
 :effect (and (have_item0))
)

(:action easymark_item1_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and (have_item1))
)

(:action easymark_item0_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and (have_item0))
)

(:action easymark_item0_1_8
 :parameters ()
 :precondition (and (at_x1) (at_y8))
 :effect (and (have_item0))
)

(:action easymark_item0_1_9
 :parameters ()
 :precondition (and (at_x1) (at_y9))
 :effect (and (have_item0))
)

(:action easymark_item0_1_12
 :parameters ()
 :precondition (and (at_x1) (at_y12))
 :effect (and (have_item0))
)

(:action easymark_item1_1_12
 :parameters ()
 :precondition (and (at_x1) (at_y12))
 :effect (and (have_item1))
)

(:action easymark_item0_1_13
 :parameters ()
 :precondition (and (at_x1) (at_y13))
 :effect (and (have_item0))
)

(:action easymark_item1_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and (have_item1))
)

(:action easymark_item0_2_12
 :parameters ()
 :precondition (and (at_x2) (at_y12))
 :effect (and (have_item0))
)

(:action easymark_item1_2_13
 :parameters ()
 :precondition (and (at_x2) (at_y13))
 :effect (and (have_item1))
)

(:action easymark_item1_2_14
 :parameters ()
 :precondition (and (at_x2) (at_y14))
 :effect (and (have_item1))
)

(:action easymark_item1_3_6
 :parameters ()
 :precondition (and (at_x3) (at_y6))
 :effect (and (have_item1))
)

(:action easymark_item0_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :effect (and (have_item0))
)

(:action easymark_item1_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and (have_item1))
)

(:action easymark_item1_4_7
 :parameters ()
 :precondition (and (at_x4) (at_y7))
 :effect (and (have_item1))
)

(:action easymark_item0_4_8
 :parameters ()
 :precondition (and (at_x4) (at_y8))
 :effect (and (have_item0))
)

(:action easymark_item1_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and (have_item1))
)

(:action easymark_item0_5_12
 :parameters ()
 :precondition (and (at_x5) (at_y12))
 :effect (and (have_item0))
)

(:action easymark_item1_5_15
 :parameters ()
 :precondition (and (at_x5) (at_y15))
 :effect (and (have_item1))
)

(:action easymark_item0_6_0
 :parameters ()
 :precondition (and (at_x6) (at_y0))
 :effect (and (have_item0))
)

(:action easymark_item0_6_1
 :parameters ()
 :precondition (and (at_x6) (at_y1))
 :effect (and (have_item0))
)

(:action easymark_item1_6_2
 :parameters ()
 :precondition (and (at_x6) (at_y2))
 :effect (and (have_item1))
)

(:action easymark_item1_6_5
 :parameters ()
 :precondition (and (at_x6) (at_y5))
 :effect (and (have_item1))
)

(:action easymark_item0_7_12
 :parameters ()
 :precondition (and (at_x7) (at_y12))
 :effect (and (have_item0))
)

(:action easymark_item0_8_0
 :parameters ()
 :precondition (and (at_x8) (at_y0))
 :effect (and (have_item0))
)

(:action easymark_item1_8_3
 :parameters ()
 :precondition (and (at_x8) (at_y3))
 :effect (and (have_item1))
)

(:action easymark_item0_8_4
 :parameters ()
 :precondition (and (at_x8) (at_y4))
 :effect (and (have_item0))
)

(:action easymark_item1_8_4
 :parameters ()
 :precondition (and (at_x8) (at_y4))
 :effect (and (have_item1))
)

(:action easymark_item1_8_11
 :parameters ()
 :precondition (and (at_x8) (at_y11))
 :effect (and (have_item1))
)

(:action easymark_item0_9_2
 :parameters ()
 :precondition (and (at_x9) (at_y2))
 :effect (and (have_item0))
)

(:action easymark_item1_9_5
 :parameters ()
 :precondition (and (at_x9) (at_y5))
 :effect (and (have_item1))
)

(:action easymark_item1_9_6
 :parameters ()
 :precondition (and (at_x9) (at_y6))
 :effect (and (have_item1))
)

(:action easymark_item1_9_11
 :parameters ()
 :precondition (and (at_x9) (at_y11))
 :effect (and (have_item1))
)

(:action easymark_item1_10_10
 :parameters ()
 :precondition (and (at_x10) (at_y10))
 :effect (and (have_item1))
)

(:action easymark_item0_10_13
 :parameters ()
 :precondition (and (at_x10) (at_y13))
 :effect (and (have_item0))
)

(:action easymark_item1_11_12
 :parameters ()
 :precondition (and (at_x11) (at_y12))
 :effect (and (have_item1))
)

(:action easymark_item1_11_14
 :parameters ()
 :precondition (and (at_x11) (at_y14))
 :effect (and (have_item1))
)

(:action easymark_item1_11_15
 :parameters ()
 :precondition (and (at_x11) (at_y15))
 :effect (and (have_item1))
)

(:action easymark_item1_12_15
 :parameters ()
 :precondition (and (at_x12) (at_y15))
 :effect (and (have_item1))
)

(:action easymark_item1_13_5
 :parameters ()
 :precondition (and (at_x13) (at_y5))
 :effect (and (have_item1))
)

(:action easymark_item1_14_1
 :parameters ()
 :precondition (and (at_x14) (at_y1))
 :effect (and (have_item1))
)

(:action easymark_item0_14_7
 :parameters ()
 :precondition (and (at_x14) (at_y7))
 :effect (and (have_item0))
)

(:action easymark_item1_15_0
 :parameters ()
 :precondition (and (at_x15) (at_y0))
 :effect (and (have_item1))
)

(:action easymark_item0_15_1
 :parameters ()
 :precondition (and (at_x15) (at_y1))
 :effect (and (have_item0))
)

(:action easymark_item1_15_3
 :parameters ()
 :precondition (and (at_x15) (at_y3))
 :effect (and (have_item1))
)

(:action easymark_item1_15_4
 :parameters ()
 :precondition (and (at_x15) (at_y4))
 :effect (and (have_item1))
)

(:action easymark_item0_15_7
 :parameters ()
 :precondition (and (at_x15) (at_y7))
 :effect (and (have_item0))
)

(:action easymark_item1_15_8
 :parameters ()
 :precondition (and (at_x15) (at_y8))
 :effect (and (have_item1))
)

(:action easymark_item1_15_9
 :parameters ()
 :precondition (and (at_x15) (at_y9))
 :effect (and (have_item1))
)

(:action easymark_item0_15_10
 :parameters ()
 :precondition (and (at_x15) (at_y10))
 :effect (and (have_item0))
)
)
