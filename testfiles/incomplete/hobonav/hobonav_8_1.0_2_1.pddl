(define (domain HoboNav)
(:requirements :fluents :incomplete-domain)

(:predicates
 (at_x0) (at_y0) (at_x1) (at_y1) (at_x2) (at_y2) (at_x3) (at_y3) (at_x4) (at_y4) (at_x5) (at_y5) (at_x6) (at_y6) (at_x7) (at_y7)
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

(:action easymark_item0_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and (have_item0))
)

(:action easymark_item1_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and (have_item1))
)

(:action easymark_item0_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and (have_item0))
)

(:action easymark_item0_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and (have_item0))
)

(:action easymark_item0_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :effect (and (have_item0))
)

(:action easymark_item0_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and (have_item0))
)

(:action easymark_item0_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :effect (and (have_item0))
)

(:action easymark_item1_5_7
 :parameters ()
 :precondition (and (at_x5) (at_y7))
 :effect (and (have_item1))
)

(:action easymark_item1_6_1
 :parameters ()
 :precondition (and (at_x6) (at_y1))
 :effect (and (have_item1))
)

(:action easymark_item0_6_6
 :parameters ()
 :precondition (and (at_x6) (at_y6))
 :effect (and (have_item0))
)

(:action easymark_item0_6_7
 :parameters ()
 :precondition (and (at_x6) (at_y7))
 :effect (and (have_item0))
)

(:action easymark_item0_7_1
 :parameters ()
 :precondition (and (at_x7) (at_y1))
 :effect (and (have_item0))
)

(:action easymark_item0_7_2
 :parameters ()
 :precondition (and (at_x7) (at_y2))
 :effect (and (have_item0))
)

(:action easymark_item0_7_3
 :parameters ()
 :precondition (and (at_x7) (at_y3))
 :effect (and (have_item0))
)

(:action easymark_item0_7_4
 :parameters ()
 :precondition (and (at_x7) (at_y4))
 :effect (and (have_item0))
)

(:action easymark_item0_7_5
 :parameters ()
 :precondition (and (at_x7) (at_y5))
 :effect (and (have_item0))
)
)
