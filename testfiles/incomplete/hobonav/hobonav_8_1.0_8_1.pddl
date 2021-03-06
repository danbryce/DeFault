(define (domain HoboNav)
(:requirements :fluents :incomplete-domain)

(:predicates
 (at_x0) (at_y0) (at_x1) (at_y1) (at_x2) (at_y2) (at_x3) (at_y3) (at_x4) (at_y4) (at_x5) (at_y5) (at_x6) (at_y6) (at_x7) (at_y7)
 (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7)
)

(:action move_0_0_1_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x0)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_1_0_0_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x1)) (at_x0))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_0_0_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y0)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_0_1_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y1)) (at_y0))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_0_1_1_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x0)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_1_1_0_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x1)) (at_x0))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_0_1_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y1)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_0_2_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y2)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_0_2_1_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x0)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_1_2_0_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x1)) (at_x0))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_0_2_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y2)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_0_3_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y3)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_0_3_1_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x0)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_1_3_0_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x1)) (at_x0))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_0_3_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y3)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_0_4_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y4)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_0_4_1_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x0)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_1_4_0_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x1)) (at_x0))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_0_4_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y4)) (at_y5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_0_5_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y5)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_0_5_1_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x0)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_1_5_0_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x1)) (at_x0))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_0_5_0_6
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y5)) (at_y6))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_0_6_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y6))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y6)) (at_y5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_0_6_1_6
 :parameters ()
 :precondition (and (at_x0) (at_y6))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x0)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_1_6_0_6
 :parameters ()
 :precondition (and (at_x1) (at_y6))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x1)) (at_x0))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_0_6_0_7
 :parameters ()
 :precondition (and (at_x0) (at_y6))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y6)) (at_y7))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_0_7_0_6
 :parameters ()
 :precondition (and (at_x0) (at_y7))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y7)) (at_y6))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_0_7_1_7
 :parameters ()
 :precondition (and (at_x0) (at_y7))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x0)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_1_7_0_7
 :parameters ()
 :precondition (and (at_x1) (at_y7))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x1)) (at_x0))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_1_0_2_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x1)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_2_0_1_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x2)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_1_0_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y0)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_1_1_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y1)) (at_y0))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_1_1_2_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x1)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_2_1_1_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x2)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_1_1_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y1)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_1_2_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y2)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_1_2_2_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x1)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_2_2_1_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x2)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_1_2_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y2)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_1_3_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y3)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_1_3_2_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x1)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_2_3_1_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x2)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_1_3_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y3)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_1_4_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y4)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_1_4_2_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x1)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_2_4_1_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x2)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_1_4_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y4)) (at_y5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_1_5_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y5)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_1_5_2_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x1)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_2_5_1_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x2)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_1_5_1_6
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y5)) (at_y6))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_1_6_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y6))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y6)) (at_y5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_1_6_2_6
 :parameters ()
 :precondition (and (at_x1) (at_y6))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x1)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_2_6_1_6
 :parameters ()
 :precondition (and (at_x2) (at_y6))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x2)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_1_6_1_7
 :parameters ()
 :precondition (and (at_x1) (at_y6))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y6)) (at_y7))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_1_7_1_6
 :parameters ()
 :precondition (and (at_x1) (at_y7))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y7)) (at_y6))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_1_7_2_7
 :parameters ()
 :precondition (and (at_x1) (at_y7))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x1)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_2_7_1_7
 :parameters ()
 :precondition (and (at_x2) (at_y7))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x2)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_2_0_3_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x2)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_3_0_2_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x3)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_2_0_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y0)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_2_1_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y1)) (at_y0))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_2_1_3_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x2)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_3_1_2_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x3)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_2_1_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y1)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_2_2_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y2)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_2_2_3_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x2)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_3_2_2_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x3)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_2_2_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y2)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_2_3_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y3)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_2_3_3_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x2)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_3_3_2_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x3)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_2_3_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y3)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_2_4_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y4)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_2_4_3_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x2)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_3_4_2_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x3)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_2_4_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y4)) (at_y5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_2_5_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y5)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_2_5_3_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x2)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_3_5_2_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x3)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_2_5_2_6
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y5)) (at_y6))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_2_6_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y6))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y6)) (at_y5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_2_6_3_6
 :parameters ()
 :precondition (and (at_x2) (at_y6))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x2)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_3_6_2_6
 :parameters ()
 :precondition (and (at_x3) (at_y6))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x3)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_2_6_2_7
 :parameters ()
 :precondition (and (at_x2) (at_y6))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y6)) (at_y7))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_2_7_2_6
 :parameters ()
 :precondition (and (at_x2) (at_y7))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y7)) (at_y6))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_2_7_3_7
 :parameters ()
 :precondition (and (at_x2) (at_y7))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x2)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_3_7_2_7
 :parameters ()
 :precondition (and (at_x3) (at_y7))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x3)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_3_0_4_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x3)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_4_0_3_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x4)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_3_0_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y0)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_3_1_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y1)) (at_y0))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_3_1_4_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x3)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_4_1_3_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x4)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_3_1_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y1)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_3_2_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y2)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_3_2_4_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x3)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_4_2_3_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x4)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_3_2_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y2)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_3_3_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y3)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_3_3_4_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x3)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_4_3_3_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x4)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_3_3_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y3)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_3_4_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y4)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_3_4_4_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x3)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_4_4_3_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x4)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_3_4_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y4)) (at_y5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_3_5_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y5)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_3_5_4_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x3)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_4_5_3_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x4)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_3_5_3_6
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y5)) (at_y6))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_3_6_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y6))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y6)) (at_y5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_3_6_4_6
 :parameters ()
 :precondition (and (at_x3) (at_y6))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x3)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_4_6_3_6
 :parameters ()
 :precondition (and (at_x4) (at_y6))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x4)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_3_6_3_7
 :parameters ()
 :precondition (and (at_x3) (at_y6))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y6)) (at_y7))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_3_7_3_6
 :parameters ()
 :precondition (and (at_x3) (at_y7))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y7)) (at_y6))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_3_7_4_7
 :parameters ()
 :precondition (and (at_x3) (at_y7))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x3)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_4_7_3_7
 :parameters ()
 :precondition (and (at_x4) (at_y7))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x4)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_4_0_5_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x4)) (at_x5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_5_0_4_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x5)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_4_0_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y0)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_4_1_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y1)) (at_y0))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_4_1_5_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x4)) (at_x5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_5_1_4_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x5)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_4_1_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y1)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_4_2_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y2)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_4_2_5_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x4)) (at_x5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_5_2_4_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x5)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_4_2_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y2)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_4_3_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y3)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_4_3_5_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x4)) (at_x5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_5_3_4_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x5)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_4_3_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y3)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_4_4_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y4)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_4_4_5_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x4)) (at_x5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_5_4_4_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x5)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_4_4_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y4)) (at_y5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_4_5_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y5)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_4_5_5_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x4)) (at_x5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_5_5_4_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x5)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_4_5_4_6
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y5)) (at_y6))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_4_6_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y6))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y6)) (at_y5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_4_6_5_6
 :parameters ()
 :precondition (and (at_x4) (at_y6))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x4)) (at_x5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_5_6_4_6
 :parameters ()
 :precondition (and (at_x5) (at_y6))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x5)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_4_6_4_7
 :parameters ()
 :precondition (and (at_x4) (at_y6))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y6)) (at_y7))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_4_7_4_6
 :parameters ()
 :precondition (and (at_x4) (at_y7))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y7)) (at_y6))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_4_7_5_7
 :parameters ()
 :precondition (and (at_x4) (at_y7))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x4)) (at_x5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_5_7_4_7
 :parameters ()
 :precondition (and (at_x5) (at_y7))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x5)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_5_0_6_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x5)) (at_x6))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_6_0_5_0
 :parameters ()
 :precondition (and (at_x6) (at_y0))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x6)) (at_x5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_5_0_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y0)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_5_1_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y1)) (at_y0))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_5_1_6_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x5)) (at_x6))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_6_1_5_1
 :parameters ()
 :precondition (and (at_x6) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x6)) (at_x5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_5_1_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y1)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_5_2_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y2)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_5_2_6_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x5)) (at_x6))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_6_2_5_2
 :parameters ()
 :precondition (and (at_x6) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x6)) (at_x5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_5_2_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y2)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_5_3_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y3)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_5_3_6_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x5)) (at_x6))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_6_3_5_3
 :parameters ()
 :precondition (and (at_x6) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x6)) (at_x5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_5_3_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y3)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_5_4_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y4)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_5_4_6_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x5)) (at_x6))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_6_4_5_4
 :parameters ()
 :precondition (and (at_x6) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x6)) (at_x5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_5_4_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y4)) (at_y5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_5_5_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y5)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_5_5_6_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x5)) (at_x6))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_6_5_5_5
 :parameters ()
 :precondition (and (at_x6) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x6)) (at_x5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_5_5_5_6
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y5)) (at_y6))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_5_6_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y6))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y6)) (at_y5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_5_6_6_6
 :parameters ()
 :precondition (and (at_x5) (at_y6))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x5)) (at_x6))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_6_6_5_6
 :parameters ()
 :precondition (and (at_x6) (at_y6))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x6)) (at_x5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_5_6_5_7
 :parameters ()
 :precondition (and (at_x5) (at_y6))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y6)) (at_y7))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_5_7_5_6
 :parameters ()
 :precondition (and (at_x5) (at_y7))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y7)) (at_y6))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_5_7_6_7
 :parameters ()
 :precondition (and (at_x5) (at_y7))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x5)) (at_x6))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_6_7_5_7
 :parameters ()
 :precondition (and (at_x6) (at_y7))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x6)) (at_x5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_6_0_7_0
 :parameters ()
 :precondition (and (at_x6) (at_y0))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x6)) (at_x7))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_7_0_6_0
 :parameters ()
 :precondition (and (at_x7) (at_y0))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x7)) (at_x6))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_6_0_6_1
 :parameters ()
 :precondition (and (at_x6) (at_y0))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y0)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_6_1_6_0
 :parameters ()
 :precondition (and (at_x6) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y1)) (at_y0))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_6_1_7_1
 :parameters ()
 :precondition (and (at_x6) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x6)) (at_x7))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_7_1_6_1
 :parameters ()
 :precondition (and (at_x7) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x7)) (at_x6))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_6_1_6_2
 :parameters ()
 :precondition (and (at_x6) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y1)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_6_2_6_1
 :parameters ()
 :precondition (and (at_x6) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y2)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_6_2_7_2
 :parameters ()
 :precondition (and (at_x6) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x6)) (at_x7))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_7_2_6_2
 :parameters ()
 :precondition (and (at_x7) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x7)) (at_x6))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_6_2_6_3
 :parameters ()
 :precondition (and (at_x6) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y2)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_6_3_6_2
 :parameters ()
 :precondition (and (at_x6) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y3)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_6_3_7_3
 :parameters ()
 :precondition (and (at_x6) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x6)) (at_x7))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_7_3_6_3
 :parameters ()
 :precondition (and (at_x7) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x7)) (at_x6))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_6_3_6_4
 :parameters ()
 :precondition (and (at_x6) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y3)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_6_4_6_3
 :parameters ()
 :precondition (and (at_x6) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y4)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_6_4_7_4
 :parameters ()
 :precondition (and (at_x6) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x6)) (at_x7))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_7_4_6_4
 :parameters ()
 :precondition (and (at_x7) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x7)) (at_x6))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_6_4_6_5
 :parameters ()
 :precondition (and (at_x6) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y4)) (at_y5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_6_5_6_4
 :parameters ()
 :precondition (and (at_x6) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y5)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_6_5_7_5
 :parameters ()
 :precondition (and (at_x6) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x6)) (at_x7))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_7_5_6_5
 :parameters ()
 :precondition (and (at_x7) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x7)) (at_x6))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_6_5_6_6
 :parameters ()
 :precondition (and (at_x6) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y5)) (at_y6))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_6_6_6_5
 :parameters ()
 :precondition (and (at_x6) (at_y6))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y6)) (at_y5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_6_6_7_6
 :parameters ()
 :precondition (and (at_x6) (at_y6))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x6)) (at_x7))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_7_6_6_6
 :parameters ()
 :precondition (and (at_x7) (at_y6))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x7)) (at_x6))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_6_6_6_7
 :parameters ()
 :precondition (and (at_x6) (at_y6))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y6)) (at_y7))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_6_7_6_6
 :parameters ()
 :precondition (and (at_x6) (at_y7))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y7)) (at_y6))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_6_7_7_7
 :parameters ()
 :precondition (and (at_x6) (at_y7))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x6)) (at_x7))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_7_7_6_7
 :parameters ()
 :precondition (and (at_x7) (at_y7))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_x7)) (at_x6))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_7_0_7_1
 :parameters ()
 :precondition (and (at_x7) (at_y0))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y0)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_7_1_7_0
 :parameters ()
 :precondition (and (at_x7) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y1)) (at_y0))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_7_1_7_2
 :parameters ()
 :precondition (and (at_x7) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y1)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_7_2_7_1
 :parameters ()
 :precondition (and (at_x7) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y2)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_7_2_7_3
 :parameters ()
 :precondition (and (at_x7) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y2)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_7_3_7_2
 :parameters ()
 :precondition (and (at_x7) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y3)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_7_3_7_4
 :parameters ()
 :precondition (and (at_x7) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y3)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_7_4_7_3
 :parameters ()
 :precondition (and (at_x7) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y4)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_7_4_7_5
 :parameters ()
 :precondition (and (at_x7) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y4)) (at_y5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_7_5_7_4
 :parameters ()
 :precondition (and (at_x7) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y5)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_7_5_7_6
 :parameters ()
 :precondition (and (at_x7) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y5)) (at_y6))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_7_6_7_5
 :parameters ()
 :precondition (and (at_x7) (at_y6))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y6)) (at_y5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_7_6_7_7
 :parameters ()
 :precondition (and (at_x7) (at_y6))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y6)) (at_y7))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
)

(:action move_7_7_7_6
 :parameters ()
 :precondition (and (at_x7) (at_y7))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7))
 :effect (and (not (at_y7)) (at_y6))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)))
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

(:action gamble_item2_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item2))
)

(:action gamble_item3_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item3))
)

(:action gamble_item4_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item4))
)

(:action gamble_item5_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item5))
)

(:action gamble_item6_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item6))
)

(:action gamble_item7_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item7))
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

(:action gamble_item2_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item2))
)

(:action gamble_item3_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item3))
)

(:action gamble_item4_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item4))
)

(:action gamble_item5_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item5))
)

(:action gamble_item6_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item6))
)

(:action gamble_item7_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item7))
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

(:action gamble_item2_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item2))
)

(:action gamble_item3_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item3))
)

(:action gamble_item4_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item4))
)

(:action gamble_item5_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item5))
)

(:action gamble_item6_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item6))
)

(:action gamble_item7_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item7))
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

(:action gamble_item2_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item2))
)

(:action gamble_item3_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item3))
)

(:action gamble_item4_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item4))
)

(:action gamble_item5_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item5))
)

(:action gamble_item6_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item6))
)

(:action gamble_item7_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item7))
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

(:action gamble_item2_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and )
 :poss-effect (and (have_item2))
)

(:action gamble_item3_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and )
 :poss-effect (and (have_item3))
)

(:action gamble_item4_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and )
 :poss-effect (and (have_item4))
)

(:action gamble_item5_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and )
 :poss-effect (and (have_item5))
)

(:action gamble_item6_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and )
 :poss-effect (and (have_item6))
)

(:action gamble_item7_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and )
 :poss-effect (and (have_item7))
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

(:action gamble_item2_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and )
 :poss-effect (and (have_item2))
)

(:action gamble_item3_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and )
 :poss-effect (and (have_item3))
)

(:action gamble_item4_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and )
 :poss-effect (and (have_item4))
)

(:action gamble_item5_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and )
 :poss-effect (and (have_item5))
)

(:action gamble_item6_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and )
 :poss-effect (and (have_item6))
)

(:action gamble_item7_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and )
 :poss-effect (and (have_item7))
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

(:action gamble_item2_0_6
 :parameters ()
 :precondition (and (at_x0) (at_y6))
 :effect (and )
 :poss-effect (and (have_item2))
)

(:action gamble_item3_0_6
 :parameters ()
 :precondition (and (at_x0) (at_y6))
 :effect (and )
 :poss-effect (and (have_item3))
)

(:action gamble_item4_0_6
 :parameters ()
 :precondition (and (at_x0) (at_y6))
 :effect (and )
 :poss-effect (and (have_item4))
)

(:action gamble_item5_0_6
 :parameters ()
 :precondition (and (at_x0) (at_y6))
 :effect (and )
 :poss-effect (and (have_item5))
)

(:action gamble_item6_0_6
 :parameters ()
 :precondition (and (at_x0) (at_y6))
 :effect (and )
 :poss-effect (and (have_item6))
)

(:action gamble_item7_0_6
 :parameters ()
 :precondition (and (at_x0) (at_y6))
 :effect (and )
 :poss-effect (and (have_item7))
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

(:action gamble_item2_0_7
 :parameters ()
 :precondition (and (at_x0) (at_y7))
 :effect (and )
 :poss-effect (and (have_item2))
)

(:action gamble_item3_0_7
 :parameters ()
 :precondition (and (at_x0) (at_y7))
 :effect (and )
 :poss-effect (and (have_item3))
)

(:action gamble_item4_0_7
 :parameters ()
 :precondition (and (at_x0) (at_y7))
 :effect (and )
 :poss-effect (and (have_item4))
)

(:action gamble_item5_0_7
 :parameters ()
 :precondition (and (at_x0) (at_y7))
 :effect (and )
 :poss-effect (and (have_item5))
)

(:action gamble_item6_0_7
 :parameters ()
 :precondition (and (at_x0) (at_y7))
 :effect (and )
 :poss-effect (and (have_item6))
)

(:action gamble_item7_0_7
 :parameters ()
 :precondition (and (at_x0) (at_y7))
 :effect (and )
 :poss-effect (and (have_item7))
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

(:action gamble_item2_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item2))
)

(:action gamble_item3_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item3))
)

(:action gamble_item4_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item4))
)

(:action gamble_item5_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item5))
)

(:action gamble_item6_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item6))
)

(:action gamble_item7_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item7))
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

(:action gamble_item2_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item2))
)

(:action gamble_item3_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item3))
)

(:action gamble_item4_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item4))
)

(:action gamble_item5_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item5))
)

(:action gamble_item6_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item6))
)

(:action gamble_item7_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item7))
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

(:action gamble_item2_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item2))
)

(:action gamble_item3_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item3))
)

(:action gamble_item4_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item4))
)

(:action gamble_item5_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item5))
)

(:action gamble_item6_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item6))
)

(:action gamble_item7_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item7))
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

(:action gamble_item2_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item2))
)

(:action gamble_item3_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item3))
)

(:action gamble_item4_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item4))
)

(:action gamble_item5_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item5))
)

(:action gamble_item6_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item6))
)

(:action gamble_item7_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item7))
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

(:action gamble_item2_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and )
 :poss-effect (and (have_item2))
)

(:action gamble_item3_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and )
 :poss-effect (and (have_item3))
)

(:action gamble_item4_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and )
 :poss-effect (and (have_item4))
)

(:action gamble_item5_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and )
 :poss-effect (and (have_item5))
)

(:action gamble_item6_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and )
 :poss-effect (and (have_item6))
)

(:action gamble_item7_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and )
 :poss-effect (and (have_item7))
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

(:action gamble_item2_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and )
 :poss-effect (and (have_item2))
)

(:action gamble_item3_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and )
 :poss-effect (and (have_item3))
)

(:action gamble_item4_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and )
 :poss-effect (and (have_item4))
)

(:action gamble_item5_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and )
 :poss-effect (and (have_item5))
)

(:action gamble_item6_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and )
 :poss-effect (and (have_item6))
)

(:action gamble_item7_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and )
 :poss-effect (and (have_item7))
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

(:action gamble_item2_1_6
 :parameters ()
 :precondition (and (at_x1) (at_y6))
 :effect (and )
 :poss-effect (and (have_item2))
)

(:action gamble_item3_1_6
 :parameters ()
 :precondition (and (at_x1) (at_y6))
 :effect (and )
 :poss-effect (and (have_item3))
)

(:action gamble_item4_1_6
 :parameters ()
 :precondition (and (at_x1) (at_y6))
 :effect (and )
 :poss-effect (and (have_item4))
)

(:action gamble_item5_1_6
 :parameters ()
 :precondition (and (at_x1) (at_y6))
 :effect (and )
 :poss-effect (and (have_item5))
)

(:action gamble_item6_1_6
 :parameters ()
 :precondition (and (at_x1) (at_y6))
 :effect (and )
 :poss-effect (and (have_item6))
)

(:action gamble_item7_1_6
 :parameters ()
 :precondition (and (at_x1) (at_y6))
 :effect (and )
 :poss-effect (and (have_item7))
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

(:action gamble_item2_1_7
 :parameters ()
 :precondition (and (at_x1) (at_y7))
 :effect (and )
 :poss-effect (and (have_item2))
)

(:action gamble_item3_1_7
 :parameters ()
 :precondition (and (at_x1) (at_y7))
 :effect (and )
 :poss-effect (and (have_item3))
)

(:action gamble_item4_1_7
 :parameters ()
 :precondition (and (at_x1) (at_y7))
 :effect (and )
 :poss-effect (and (have_item4))
)

(:action gamble_item5_1_7
 :parameters ()
 :precondition (and (at_x1) (at_y7))
 :effect (and )
 :poss-effect (and (have_item5))
)

(:action gamble_item6_1_7
 :parameters ()
 :precondition (and (at_x1) (at_y7))
 :effect (and )
 :poss-effect (and (have_item6))
)

(:action gamble_item7_1_7
 :parameters ()
 :precondition (and (at_x1) (at_y7))
 :effect (and )
 :poss-effect (and (have_item7))
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

(:action gamble_item2_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item2))
)

(:action gamble_item3_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item3))
)

(:action gamble_item4_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item4))
)

(:action gamble_item5_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item5))
)

(:action gamble_item6_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item6))
)

(:action gamble_item7_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item7))
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

(:action gamble_item2_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item2))
)

(:action gamble_item3_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item3))
)

(:action gamble_item4_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item4))
)

(:action gamble_item5_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item5))
)

(:action gamble_item6_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item6))
)

(:action gamble_item7_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item7))
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

(:action gamble_item2_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item2))
)

(:action gamble_item3_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item3))
)

(:action gamble_item4_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item4))
)

(:action gamble_item5_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item5))
)

(:action gamble_item6_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item6))
)

(:action gamble_item7_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item7))
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

(:action gamble_item2_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item2))
)

(:action gamble_item3_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item3))
)

(:action gamble_item4_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item4))
)

(:action gamble_item5_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item5))
)

(:action gamble_item6_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item6))
)

(:action gamble_item7_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item7))
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

(:action gamble_item2_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and )
 :poss-effect (and (have_item2))
)

(:action gamble_item3_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and )
 :poss-effect (and (have_item3))
)

(:action gamble_item4_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and )
 :poss-effect (and (have_item4))
)

(:action gamble_item5_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and )
 :poss-effect (and (have_item5))
)

(:action gamble_item6_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and )
 :poss-effect (and (have_item6))
)

(:action gamble_item7_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and )
 :poss-effect (and (have_item7))
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

(:action gamble_item2_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :effect (and )
 :poss-effect (and (have_item2))
)

(:action gamble_item3_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :effect (and )
 :poss-effect (and (have_item3))
)

(:action gamble_item4_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :effect (and )
 :poss-effect (and (have_item4))
)

(:action gamble_item5_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :effect (and )
 :poss-effect (and (have_item5))
)

(:action gamble_item6_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :effect (and )
 :poss-effect (and (have_item6))
)

(:action gamble_item7_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :effect (and )
 :poss-effect (and (have_item7))
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

(:action gamble_item2_2_6
 :parameters ()
 :precondition (and (at_x2) (at_y6))
 :effect (and )
 :poss-effect (and (have_item2))
)

(:action gamble_item3_2_6
 :parameters ()
 :precondition (and (at_x2) (at_y6))
 :effect (and )
 :poss-effect (and (have_item3))
)

(:action gamble_item4_2_6
 :parameters ()
 :precondition (and (at_x2) (at_y6))
 :effect (and )
 :poss-effect (and (have_item4))
)

(:action gamble_item5_2_6
 :parameters ()
 :precondition (and (at_x2) (at_y6))
 :effect (and )
 :poss-effect (and (have_item5))
)

(:action gamble_item6_2_6
 :parameters ()
 :precondition (and (at_x2) (at_y6))
 :effect (and )
 :poss-effect (and (have_item6))
)

(:action gamble_item7_2_6
 :parameters ()
 :precondition (and (at_x2) (at_y6))
 :effect (and )
 :poss-effect (and (have_item7))
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

(:action gamble_item2_2_7
 :parameters ()
 :precondition (and (at_x2) (at_y7))
 :effect (and )
 :poss-effect (and (have_item2))
)

(:action gamble_item3_2_7
 :parameters ()
 :precondition (and (at_x2) (at_y7))
 :effect (and )
 :poss-effect (and (have_item3))
)

(:action gamble_item4_2_7
 :parameters ()
 :precondition (and (at_x2) (at_y7))
 :effect (and )
 :poss-effect (and (have_item4))
)

(:action gamble_item5_2_7
 :parameters ()
 :precondition (and (at_x2) (at_y7))
 :effect (and )
 :poss-effect (and (have_item5))
)

(:action gamble_item6_2_7
 :parameters ()
 :precondition (and (at_x2) (at_y7))
 :effect (and )
 :poss-effect (and (have_item6))
)

(:action gamble_item7_2_7
 :parameters ()
 :precondition (and (at_x2) (at_y7))
 :effect (and )
 :poss-effect (and (have_item7))
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

(:action gamble_item2_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item2))
)

(:action gamble_item3_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item3))
)

(:action gamble_item4_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item4))
)

(:action gamble_item5_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item5))
)

(:action gamble_item6_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item6))
)

(:action gamble_item7_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item7))
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

(:action gamble_item2_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item2))
)

(:action gamble_item3_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item3))
)

(:action gamble_item4_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item4))
)

(:action gamble_item5_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item5))
)

(:action gamble_item6_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item6))
)

(:action gamble_item7_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item7))
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

(:action gamble_item2_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item2))
)

(:action gamble_item3_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item3))
)

(:action gamble_item4_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item4))
)

(:action gamble_item5_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item5))
)

(:action gamble_item6_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item6))
)

(:action gamble_item7_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item7))
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

(:action gamble_item2_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item2))
)

(:action gamble_item3_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item3))
)

(:action gamble_item4_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item4))
)

(:action gamble_item5_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item5))
)

(:action gamble_item6_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item6))
)

(:action gamble_item7_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item7))
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

(:action gamble_item2_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and )
 :poss-effect (and (have_item2))
)

(:action gamble_item3_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and )
 :poss-effect (and (have_item3))
)

(:action gamble_item4_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and )
 :poss-effect (and (have_item4))
)

(:action gamble_item5_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and )
 :poss-effect (and (have_item5))
)

(:action gamble_item6_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and )
 :poss-effect (and (have_item6))
)

(:action gamble_item7_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and )
 :poss-effect (and (have_item7))
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

(:action gamble_item2_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and )
 :poss-effect (and (have_item2))
)

(:action gamble_item3_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and )
 :poss-effect (and (have_item3))
)

(:action gamble_item4_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and )
 :poss-effect (and (have_item4))
)

(:action gamble_item5_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and )
 :poss-effect (and (have_item5))
)

(:action gamble_item6_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and )
 :poss-effect (and (have_item6))
)

(:action gamble_item7_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and )
 :poss-effect (and (have_item7))
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

(:action gamble_item2_3_6
 :parameters ()
 :precondition (and (at_x3) (at_y6))
 :effect (and )
 :poss-effect (and (have_item2))
)

(:action gamble_item3_3_6
 :parameters ()
 :precondition (and (at_x3) (at_y6))
 :effect (and )
 :poss-effect (and (have_item3))
)

(:action gamble_item4_3_6
 :parameters ()
 :precondition (and (at_x3) (at_y6))
 :effect (and )
 :poss-effect (and (have_item4))
)

(:action gamble_item5_3_6
 :parameters ()
 :precondition (and (at_x3) (at_y6))
 :effect (and )
 :poss-effect (and (have_item5))
)

(:action gamble_item6_3_6
 :parameters ()
 :precondition (and (at_x3) (at_y6))
 :effect (and )
 :poss-effect (and (have_item6))
)

(:action gamble_item7_3_6
 :parameters ()
 :precondition (and (at_x3) (at_y6))
 :effect (and )
 :poss-effect (and (have_item7))
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

(:action gamble_item2_3_7
 :parameters ()
 :precondition (and (at_x3) (at_y7))
 :effect (and )
 :poss-effect (and (have_item2))
)

(:action gamble_item3_3_7
 :parameters ()
 :precondition (and (at_x3) (at_y7))
 :effect (and )
 :poss-effect (and (have_item3))
)

(:action gamble_item4_3_7
 :parameters ()
 :precondition (and (at_x3) (at_y7))
 :effect (and )
 :poss-effect (and (have_item4))
)

(:action gamble_item5_3_7
 :parameters ()
 :precondition (and (at_x3) (at_y7))
 :effect (and )
 :poss-effect (and (have_item5))
)

(:action gamble_item6_3_7
 :parameters ()
 :precondition (and (at_x3) (at_y7))
 :effect (and )
 :poss-effect (and (have_item6))
)

(:action gamble_item7_3_7
 :parameters ()
 :precondition (and (at_x3) (at_y7))
 :effect (and )
 :poss-effect (and (have_item7))
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

(:action gamble_item2_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and )
 :poss-effect (and (have_item2))
)

(:action gamble_item3_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and )
 :poss-effect (and (have_item3))
)

(:action gamble_item4_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and )
 :poss-effect (and (have_item4))
)

(:action gamble_item5_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and )
 :poss-effect (and (have_item5))
)

(:action gamble_item6_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and )
 :poss-effect (and (have_item6))
)

(:action gamble_item7_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and )
 :poss-effect (and (have_item7))
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

(:action gamble_item2_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :effect (and )
 :poss-effect (and (have_item2))
)

(:action gamble_item3_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :effect (and )
 :poss-effect (and (have_item3))
)

(:action gamble_item4_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :effect (and )
 :poss-effect (and (have_item4))
)

(:action gamble_item5_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :effect (and )
 :poss-effect (and (have_item5))
)

(:action gamble_item6_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :effect (and )
 :poss-effect (and (have_item6))
)

(:action gamble_item7_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :effect (and )
 :poss-effect (and (have_item7))
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

(:action gamble_item2_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and )
 :poss-effect (and (have_item2))
)

(:action gamble_item3_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and )
 :poss-effect (and (have_item3))
)

(:action gamble_item4_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and )
 :poss-effect (and (have_item4))
)

(:action gamble_item5_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and )
 :poss-effect (and (have_item5))
)

(:action gamble_item6_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and )
 :poss-effect (and (have_item6))
)

(:action gamble_item7_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and )
 :poss-effect (and (have_item7))
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

(:action gamble_item2_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :effect (and )
 :poss-effect (and (have_item2))
)

(:action gamble_item3_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :effect (and )
 :poss-effect (and (have_item3))
)

(:action gamble_item4_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :effect (and )
 :poss-effect (and (have_item4))
)

(:action gamble_item5_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :effect (and )
 :poss-effect (and (have_item5))
)

(:action gamble_item6_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :effect (and )
 :poss-effect (and (have_item6))
)

(:action gamble_item7_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :effect (and )
 :poss-effect (and (have_item7))
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

(:action gamble_item2_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and )
 :poss-effect (and (have_item2))
)

(:action gamble_item3_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and )
 :poss-effect (and (have_item3))
)

(:action gamble_item4_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and )
 :poss-effect (and (have_item4))
)

(:action gamble_item5_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and )
 :poss-effect (and (have_item5))
)

(:action gamble_item6_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and )
 :poss-effect (and (have_item6))
)

(:action gamble_item7_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and )
 :poss-effect (and (have_item7))
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

(:action gamble_item2_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and )
 :poss-effect (and (have_item2))
)

(:action gamble_item3_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and )
 :poss-effect (and (have_item3))
)

(:action gamble_item4_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and )
 :poss-effect (and (have_item4))
)

(:action gamble_item5_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and )
 :poss-effect (and (have_item5))
)

(:action gamble_item6_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and )
 :poss-effect (and (have_item6))
)

(:action gamble_item7_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and )
 :poss-effect (and (have_item7))
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

(:action gamble_item2_4_6
 :parameters ()
 :precondition (and (at_x4) (at_y6))
 :effect (and )
 :poss-effect (and (have_item2))
)

(:action gamble_item3_4_6
 :parameters ()
 :precondition (and (at_x4) (at_y6))
 :effect (and )
 :poss-effect (and (have_item3))
)

(:action gamble_item4_4_6
 :parameters ()
 :precondition (and (at_x4) (at_y6))
 :effect (and )
 :poss-effect (and (have_item4))
)

(:action gamble_item5_4_6
 :parameters ()
 :precondition (and (at_x4) (at_y6))
 :effect (and )
 :poss-effect (and (have_item5))
)

(:action gamble_item6_4_6
 :parameters ()
 :precondition (and (at_x4) (at_y6))
 :effect (and )
 :poss-effect (and (have_item6))
)

(:action gamble_item7_4_6
 :parameters ()
 :precondition (and (at_x4) (at_y6))
 :effect (and )
 :poss-effect (and (have_item7))
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

(:action gamble_item2_4_7
 :parameters ()
 :precondition (and (at_x4) (at_y7))
 :effect (and )
 :poss-effect (and (have_item2))
)

(:action gamble_item3_4_7
 :parameters ()
 :precondition (and (at_x4) (at_y7))
 :effect (and )
 :poss-effect (and (have_item3))
)

(:action gamble_item4_4_7
 :parameters ()
 :precondition (and (at_x4) (at_y7))
 :effect (and )
 :poss-effect (and (have_item4))
)

(:action gamble_item5_4_7
 :parameters ()
 :precondition (and (at_x4) (at_y7))
 :effect (and )
 :poss-effect (and (have_item5))
)

(:action gamble_item6_4_7
 :parameters ()
 :precondition (and (at_x4) (at_y7))
 :effect (and )
 :poss-effect (and (have_item6))
)

(:action gamble_item7_4_7
 :parameters ()
 :precondition (and (at_x4) (at_y7))
 :effect (and )
 :poss-effect (and (have_item7))
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

(:action gamble_item2_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and )
 :poss-effect (and (have_item2))
)

(:action gamble_item3_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and )
 :poss-effect (and (have_item3))
)

(:action gamble_item4_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and )
 :poss-effect (and (have_item4))
)

(:action gamble_item5_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and )
 :poss-effect (and (have_item5))
)

(:action gamble_item6_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and )
 :poss-effect (and (have_item6))
)

(:action gamble_item7_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and )
 :poss-effect (and (have_item7))
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

(:action gamble_item2_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :effect (and )
 :poss-effect (and (have_item2))
)

(:action gamble_item3_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :effect (and )
 :poss-effect (and (have_item3))
)

(:action gamble_item4_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :effect (and )
 :poss-effect (and (have_item4))
)

(:action gamble_item5_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :effect (and )
 :poss-effect (and (have_item5))
)

(:action gamble_item6_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :effect (and )
 :poss-effect (and (have_item6))
)

(:action gamble_item7_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :effect (and )
 :poss-effect (and (have_item7))
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

(:action gamble_item2_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and )
 :poss-effect (and (have_item2))
)

(:action gamble_item3_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and )
 :poss-effect (and (have_item3))
)

(:action gamble_item4_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and )
 :poss-effect (and (have_item4))
)

(:action gamble_item5_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and )
 :poss-effect (and (have_item5))
)

(:action gamble_item6_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and )
 :poss-effect (and (have_item6))
)

(:action gamble_item7_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and )
 :poss-effect (and (have_item7))
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

(:action gamble_item2_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and )
 :poss-effect (and (have_item2))
)

(:action gamble_item3_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and )
 :poss-effect (and (have_item3))
)

(:action gamble_item4_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and )
 :poss-effect (and (have_item4))
)

(:action gamble_item5_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and )
 :poss-effect (and (have_item5))
)

(:action gamble_item6_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and )
 :poss-effect (and (have_item6))
)

(:action gamble_item7_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and )
 :poss-effect (and (have_item7))
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

(:action gamble_item2_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and )
 :poss-effect (and (have_item2))
)

(:action gamble_item3_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and )
 :poss-effect (and (have_item3))
)

(:action gamble_item4_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and )
 :poss-effect (and (have_item4))
)

(:action gamble_item5_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and )
 :poss-effect (and (have_item5))
)

(:action gamble_item6_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and )
 :poss-effect (and (have_item6))
)

(:action gamble_item7_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and )
 :poss-effect (and (have_item7))
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

(:action gamble_item2_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :effect (and )
 :poss-effect (and (have_item2))
)

(:action gamble_item3_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :effect (and )
 :poss-effect (and (have_item3))
)

(:action gamble_item4_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :effect (and )
 :poss-effect (and (have_item4))
)

(:action gamble_item5_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :effect (and )
 :poss-effect (and (have_item5))
)

(:action gamble_item6_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :effect (and )
 :poss-effect (and (have_item6))
)

(:action gamble_item7_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :effect (and )
 :poss-effect (and (have_item7))
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

(:action gamble_item2_5_6
 :parameters ()
 :precondition (and (at_x5) (at_y6))
 :effect (and )
 :poss-effect (and (have_item2))
)

(:action gamble_item3_5_6
 :parameters ()
 :precondition (and (at_x5) (at_y6))
 :effect (and )
 :poss-effect (and (have_item3))
)

(:action gamble_item4_5_6
 :parameters ()
 :precondition (and (at_x5) (at_y6))
 :effect (and )
 :poss-effect (and (have_item4))
)

(:action gamble_item5_5_6
 :parameters ()
 :precondition (and (at_x5) (at_y6))
 :effect (and )
 :poss-effect (and (have_item5))
)

(:action gamble_item6_5_6
 :parameters ()
 :precondition (and (at_x5) (at_y6))
 :effect (and )
 :poss-effect (and (have_item6))
)

(:action gamble_item7_5_6
 :parameters ()
 :precondition (and (at_x5) (at_y6))
 :effect (and )
 :poss-effect (and (have_item7))
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

(:action gamble_item2_5_7
 :parameters ()
 :precondition (and (at_x5) (at_y7))
 :effect (and )
 :poss-effect (and (have_item2))
)

(:action gamble_item3_5_7
 :parameters ()
 :precondition (and (at_x5) (at_y7))
 :effect (and )
 :poss-effect (and (have_item3))
)

(:action gamble_item4_5_7
 :parameters ()
 :precondition (and (at_x5) (at_y7))
 :effect (and )
 :poss-effect (and (have_item4))
)

(:action gamble_item5_5_7
 :parameters ()
 :precondition (and (at_x5) (at_y7))
 :effect (and )
 :poss-effect (and (have_item5))
)

(:action gamble_item6_5_7
 :parameters ()
 :precondition (and (at_x5) (at_y7))
 :effect (and )
 :poss-effect (and (have_item6))
)

(:action gamble_item7_5_7
 :parameters ()
 :precondition (and (at_x5) (at_y7))
 :effect (and )
 :poss-effect (and (have_item7))
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

(:action gamble_item2_6_0
 :parameters ()
 :precondition (and (at_x6) (at_y0))
 :effect (and )
 :poss-effect (and (have_item2))
)

(:action gamble_item3_6_0
 :parameters ()
 :precondition (and (at_x6) (at_y0))
 :effect (and )
 :poss-effect (and (have_item3))
)

(:action gamble_item4_6_0
 :parameters ()
 :precondition (and (at_x6) (at_y0))
 :effect (and )
 :poss-effect (and (have_item4))
)

(:action gamble_item5_6_0
 :parameters ()
 :precondition (and (at_x6) (at_y0))
 :effect (and )
 :poss-effect (and (have_item5))
)

(:action gamble_item6_6_0
 :parameters ()
 :precondition (and (at_x6) (at_y0))
 :effect (and )
 :poss-effect (and (have_item6))
)

(:action gamble_item7_6_0
 :parameters ()
 :precondition (and (at_x6) (at_y0))
 :effect (and )
 :poss-effect (and (have_item7))
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

(:action gamble_item2_6_1
 :parameters ()
 :precondition (and (at_x6) (at_y1))
 :effect (and )
 :poss-effect (and (have_item2))
)

(:action gamble_item3_6_1
 :parameters ()
 :precondition (and (at_x6) (at_y1))
 :effect (and )
 :poss-effect (and (have_item3))
)

(:action gamble_item4_6_1
 :parameters ()
 :precondition (and (at_x6) (at_y1))
 :effect (and )
 :poss-effect (and (have_item4))
)

(:action gamble_item5_6_1
 :parameters ()
 :precondition (and (at_x6) (at_y1))
 :effect (and )
 :poss-effect (and (have_item5))
)

(:action gamble_item6_6_1
 :parameters ()
 :precondition (and (at_x6) (at_y1))
 :effect (and )
 :poss-effect (and (have_item6))
)

(:action gamble_item7_6_1
 :parameters ()
 :precondition (and (at_x6) (at_y1))
 :effect (and )
 :poss-effect (and (have_item7))
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

(:action gamble_item2_6_2
 :parameters ()
 :precondition (and (at_x6) (at_y2))
 :effect (and )
 :poss-effect (and (have_item2))
)

(:action gamble_item3_6_2
 :parameters ()
 :precondition (and (at_x6) (at_y2))
 :effect (and )
 :poss-effect (and (have_item3))
)

(:action gamble_item4_6_2
 :parameters ()
 :precondition (and (at_x6) (at_y2))
 :effect (and )
 :poss-effect (and (have_item4))
)

(:action gamble_item5_6_2
 :parameters ()
 :precondition (and (at_x6) (at_y2))
 :effect (and )
 :poss-effect (and (have_item5))
)

(:action gamble_item6_6_2
 :parameters ()
 :precondition (and (at_x6) (at_y2))
 :effect (and )
 :poss-effect (and (have_item6))
)

(:action gamble_item7_6_2
 :parameters ()
 :precondition (and (at_x6) (at_y2))
 :effect (and )
 :poss-effect (and (have_item7))
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

(:action gamble_item2_6_3
 :parameters ()
 :precondition (and (at_x6) (at_y3))
 :effect (and )
 :poss-effect (and (have_item2))
)

(:action gamble_item3_6_3
 :parameters ()
 :precondition (and (at_x6) (at_y3))
 :effect (and )
 :poss-effect (and (have_item3))
)

(:action gamble_item4_6_3
 :parameters ()
 :precondition (and (at_x6) (at_y3))
 :effect (and )
 :poss-effect (and (have_item4))
)

(:action gamble_item5_6_3
 :parameters ()
 :precondition (and (at_x6) (at_y3))
 :effect (and )
 :poss-effect (and (have_item5))
)

(:action gamble_item6_6_3
 :parameters ()
 :precondition (and (at_x6) (at_y3))
 :effect (and )
 :poss-effect (and (have_item6))
)

(:action gamble_item7_6_3
 :parameters ()
 :precondition (and (at_x6) (at_y3))
 :effect (and )
 :poss-effect (and (have_item7))
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

(:action gamble_item2_6_4
 :parameters ()
 :precondition (and (at_x6) (at_y4))
 :effect (and )
 :poss-effect (and (have_item2))
)

(:action gamble_item3_6_4
 :parameters ()
 :precondition (and (at_x6) (at_y4))
 :effect (and )
 :poss-effect (and (have_item3))
)

(:action gamble_item4_6_4
 :parameters ()
 :precondition (and (at_x6) (at_y4))
 :effect (and )
 :poss-effect (and (have_item4))
)

(:action gamble_item5_6_4
 :parameters ()
 :precondition (and (at_x6) (at_y4))
 :effect (and )
 :poss-effect (and (have_item5))
)

(:action gamble_item6_6_4
 :parameters ()
 :precondition (and (at_x6) (at_y4))
 :effect (and )
 :poss-effect (and (have_item6))
)

(:action gamble_item7_6_4
 :parameters ()
 :precondition (and (at_x6) (at_y4))
 :effect (and )
 :poss-effect (and (have_item7))
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

(:action gamble_item2_6_5
 :parameters ()
 :precondition (and (at_x6) (at_y5))
 :effect (and )
 :poss-effect (and (have_item2))
)

(:action gamble_item3_6_5
 :parameters ()
 :precondition (and (at_x6) (at_y5))
 :effect (and )
 :poss-effect (and (have_item3))
)

(:action gamble_item4_6_5
 :parameters ()
 :precondition (and (at_x6) (at_y5))
 :effect (and )
 :poss-effect (and (have_item4))
)

(:action gamble_item5_6_5
 :parameters ()
 :precondition (and (at_x6) (at_y5))
 :effect (and )
 :poss-effect (and (have_item5))
)

(:action gamble_item6_6_5
 :parameters ()
 :precondition (and (at_x6) (at_y5))
 :effect (and )
 :poss-effect (and (have_item6))
)

(:action gamble_item7_6_5
 :parameters ()
 :precondition (and (at_x6) (at_y5))
 :effect (and )
 :poss-effect (and (have_item7))
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

(:action gamble_item2_6_6
 :parameters ()
 :precondition (and (at_x6) (at_y6))
 :effect (and )
 :poss-effect (and (have_item2))
)

(:action gamble_item3_6_6
 :parameters ()
 :precondition (and (at_x6) (at_y6))
 :effect (and )
 :poss-effect (and (have_item3))
)

(:action gamble_item4_6_6
 :parameters ()
 :precondition (and (at_x6) (at_y6))
 :effect (and )
 :poss-effect (and (have_item4))
)

(:action gamble_item5_6_6
 :parameters ()
 :precondition (and (at_x6) (at_y6))
 :effect (and )
 :poss-effect (and (have_item5))
)

(:action gamble_item6_6_6
 :parameters ()
 :precondition (and (at_x6) (at_y6))
 :effect (and )
 :poss-effect (and (have_item6))
)

(:action gamble_item7_6_6
 :parameters ()
 :precondition (and (at_x6) (at_y6))
 :effect (and )
 :poss-effect (and (have_item7))
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

(:action gamble_item2_6_7
 :parameters ()
 :precondition (and (at_x6) (at_y7))
 :effect (and )
 :poss-effect (and (have_item2))
)

(:action gamble_item3_6_7
 :parameters ()
 :precondition (and (at_x6) (at_y7))
 :effect (and )
 :poss-effect (and (have_item3))
)

(:action gamble_item4_6_7
 :parameters ()
 :precondition (and (at_x6) (at_y7))
 :effect (and )
 :poss-effect (and (have_item4))
)

(:action gamble_item5_6_7
 :parameters ()
 :precondition (and (at_x6) (at_y7))
 :effect (and )
 :poss-effect (and (have_item5))
)

(:action gamble_item6_6_7
 :parameters ()
 :precondition (and (at_x6) (at_y7))
 :effect (and )
 :poss-effect (and (have_item6))
)

(:action gamble_item7_6_7
 :parameters ()
 :precondition (and (at_x6) (at_y7))
 :effect (and )
 :poss-effect (and (have_item7))
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

(:action gamble_item2_7_0
 :parameters ()
 :precondition (and (at_x7) (at_y0))
 :effect (and )
 :poss-effect (and (have_item2))
)

(:action gamble_item3_7_0
 :parameters ()
 :precondition (and (at_x7) (at_y0))
 :effect (and )
 :poss-effect (and (have_item3))
)

(:action gamble_item4_7_0
 :parameters ()
 :precondition (and (at_x7) (at_y0))
 :effect (and )
 :poss-effect (and (have_item4))
)

(:action gamble_item5_7_0
 :parameters ()
 :precondition (and (at_x7) (at_y0))
 :effect (and )
 :poss-effect (and (have_item5))
)

(:action gamble_item6_7_0
 :parameters ()
 :precondition (and (at_x7) (at_y0))
 :effect (and )
 :poss-effect (and (have_item6))
)

(:action gamble_item7_7_0
 :parameters ()
 :precondition (and (at_x7) (at_y0))
 :effect (and )
 :poss-effect (and (have_item7))
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

(:action gamble_item2_7_1
 :parameters ()
 :precondition (and (at_x7) (at_y1))
 :effect (and )
 :poss-effect (and (have_item2))
)

(:action gamble_item3_7_1
 :parameters ()
 :precondition (and (at_x7) (at_y1))
 :effect (and )
 :poss-effect (and (have_item3))
)

(:action gamble_item4_7_1
 :parameters ()
 :precondition (and (at_x7) (at_y1))
 :effect (and )
 :poss-effect (and (have_item4))
)

(:action gamble_item5_7_1
 :parameters ()
 :precondition (and (at_x7) (at_y1))
 :effect (and )
 :poss-effect (and (have_item5))
)

(:action gamble_item6_7_1
 :parameters ()
 :precondition (and (at_x7) (at_y1))
 :effect (and )
 :poss-effect (and (have_item6))
)

(:action gamble_item7_7_1
 :parameters ()
 :precondition (and (at_x7) (at_y1))
 :effect (and )
 :poss-effect (and (have_item7))
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

(:action gamble_item2_7_2
 :parameters ()
 :precondition (and (at_x7) (at_y2))
 :effect (and )
 :poss-effect (and (have_item2))
)

(:action gamble_item3_7_2
 :parameters ()
 :precondition (and (at_x7) (at_y2))
 :effect (and )
 :poss-effect (and (have_item3))
)

(:action gamble_item4_7_2
 :parameters ()
 :precondition (and (at_x7) (at_y2))
 :effect (and )
 :poss-effect (and (have_item4))
)

(:action gamble_item5_7_2
 :parameters ()
 :precondition (and (at_x7) (at_y2))
 :effect (and )
 :poss-effect (and (have_item5))
)

(:action gamble_item6_7_2
 :parameters ()
 :precondition (and (at_x7) (at_y2))
 :effect (and )
 :poss-effect (and (have_item6))
)

(:action gamble_item7_7_2
 :parameters ()
 :precondition (and (at_x7) (at_y2))
 :effect (and )
 :poss-effect (and (have_item7))
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

(:action gamble_item2_7_3
 :parameters ()
 :precondition (and (at_x7) (at_y3))
 :effect (and )
 :poss-effect (and (have_item2))
)

(:action gamble_item3_7_3
 :parameters ()
 :precondition (and (at_x7) (at_y3))
 :effect (and )
 :poss-effect (and (have_item3))
)

(:action gamble_item4_7_3
 :parameters ()
 :precondition (and (at_x7) (at_y3))
 :effect (and )
 :poss-effect (and (have_item4))
)

(:action gamble_item5_7_3
 :parameters ()
 :precondition (and (at_x7) (at_y3))
 :effect (and )
 :poss-effect (and (have_item5))
)

(:action gamble_item6_7_3
 :parameters ()
 :precondition (and (at_x7) (at_y3))
 :effect (and )
 :poss-effect (and (have_item6))
)

(:action gamble_item7_7_3
 :parameters ()
 :precondition (and (at_x7) (at_y3))
 :effect (and )
 :poss-effect (and (have_item7))
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

(:action gamble_item2_7_4
 :parameters ()
 :precondition (and (at_x7) (at_y4))
 :effect (and )
 :poss-effect (and (have_item2))
)

(:action gamble_item3_7_4
 :parameters ()
 :precondition (and (at_x7) (at_y4))
 :effect (and )
 :poss-effect (and (have_item3))
)

(:action gamble_item4_7_4
 :parameters ()
 :precondition (and (at_x7) (at_y4))
 :effect (and )
 :poss-effect (and (have_item4))
)

(:action gamble_item5_7_4
 :parameters ()
 :precondition (and (at_x7) (at_y4))
 :effect (and )
 :poss-effect (and (have_item5))
)

(:action gamble_item6_7_4
 :parameters ()
 :precondition (and (at_x7) (at_y4))
 :effect (and )
 :poss-effect (and (have_item6))
)

(:action gamble_item7_7_4
 :parameters ()
 :precondition (and (at_x7) (at_y4))
 :effect (and )
 :poss-effect (and (have_item7))
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

(:action gamble_item2_7_5
 :parameters ()
 :precondition (and (at_x7) (at_y5))
 :effect (and )
 :poss-effect (and (have_item2))
)

(:action gamble_item3_7_5
 :parameters ()
 :precondition (and (at_x7) (at_y5))
 :effect (and )
 :poss-effect (and (have_item3))
)

(:action gamble_item4_7_5
 :parameters ()
 :precondition (and (at_x7) (at_y5))
 :effect (and )
 :poss-effect (and (have_item4))
)

(:action gamble_item5_7_5
 :parameters ()
 :precondition (and (at_x7) (at_y5))
 :effect (and )
 :poss-effect (and (have_item5))
)

(:action gamble_item6_7_5
 :parameters ()
 :precondition (and (at_x7) (at_y5))
 :effect (and )
 :poss-effect (and (have_item6))
)

(:action gamble_item7_7_5
 :parameters ()
 :precondition (and (at_x7) (at_y5))
 :effect (and )
 :poss-effect (and (have_item7))
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

(:action gamble_item2_7_6
 :parameters ()
 :precondition (and (at_x7) (at_y6))
 :effect (and )
 :poss-effect (and (have_item2))
)

(:action gamble_item3_7_6
 :parameters ()
 :precondition (and (at_x7) (at_y6))
 :effect (and )
 :poss-effect (and (have_item3))
)

(:action gamble_item4_7_6
 :parameters ()
 :precondition (and (at_x7) (at_y6))
 :effect (and )
 :poss-effect (and (have_item4))
)

(:action gamble_item5_7_6
 :parameters ()
 :precondition (and (at_x7) (at_y6))
 :effect (and )
 :poss-effect (and (have_item5))
)

(:action gamble_item6_7_6
 :parameters ()
 :precondition (and (at_x7) (at_y6))
 :effect (and )
 :poss-effect (and (have_item6))
)

(:action gamble_item7_7_6
 :parameters ()
 :precondition (and (at_x7) (at_y6))
 :effect (and )
 :poss-effect (and (have_item7))
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

(:action gamble_item2_7_7
 :parameters ()
 :precondition (and (at_x7) (at_y7))
 :effect (and )
 :poss-effect (and (have_item2))
)

(:action gamble_item3_7_7
 :parameters ()
 :precondition (and (at_x7) (at_y7))
 :effect (and )
 :poss-effect (and (have_item3))
)

(:action gamble_item4_7_7
 :parameters ()
 :precondition (and (at_x7) (at_y7))
 :effect (and )
 :poss-effect (and (have_item4))
)

(:action gamble_item5_7_7
 :parameters ()
 :precondition (and (at_x7) (at_y7))
 :effect (and )
 :poss-effect (and (have_item5))
)

(:action gamble_item6_7_7
 :parameters ()
 :precondition (and (at_x7) (at_y7))
 :effect (and )
 :poss-effect (and (have_item6))
)

(:action gamble_item7_7_7
 :parameters ()
 :precondition (and (at_x7) (at_y7))
 :effect (and )
 :poss-effect (and (have_item7))
)

(:action easymark_item7_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and (have_item7))
)

(:action easymark_item1_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and (have_item1))
)

(:action easymark_item2_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and (have_item2))
)

(:action easymark_item7_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and (have_item7))
)

(:action easymark_item0_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and (have_item0))
)

(:action easymark_item1_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and (have_item1))
)

(:action easymark_item3_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and (have_item3))
)

(:action easymark_item0_0_6
 :parameters ()
 :precondition (and (at_x0) (at_y6))
 :effect (and (have_item0))
)

(:action easymark_item2_0_7
 :parameters ()
 :precondition (and (at_x0) (at_y7))
 :effect (and (have_item2))
)

(:action easymark_item3_0_7
 :parameters ()
 :precondition (and (at_x0) (at_y7))
 :effect (and (have_item3))
)

(:action easymark_item5_0_7
 :parameters ()
 :precondition (and (at_x0) (at_y7))
 :effect (and (have_item5))
)

(:action easymark_item4_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and (have_item4))
)

(:action easymark_item0_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and (have_item0))
)

(:action easymark_item5_1_6
 :parameters ()
 :precondition (and (at_x1) (at_y6))
 :effect (and (have_item5))
)

(:action easymark_item0_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and (have_item0))
)

(:action easymark_item0_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and (have_item0))
)

(:action easymark_item1_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and (have_item1))
)

(:action easymark_item7_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and (have_item7))
)

(:action easymark_item5_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and (have_item5))
)

(:action easymark_item1_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and (have_item1))
)

(:action easymark_item3_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and (have_item3))
)

(:action easymark_item3_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and (have_item3))
)

(:action easymark_item5_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and (have_item5))
)

(:action easymark_item1_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and (have_item1))
)

(:action easymark_item6_3_6
 :parameters ()
 :precondition (and (at_x3) (at_y6))
 :effect (and (have_item6))
)

(:action easymark_item3_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and (have_item3))
)

(:action easymark_item4_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :effect (and (have_item4))
)

(:action easymark_item6_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and (have_item6))
)

(:action easymark_item0_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :effect (and (have_item0))
)

(:action easymark_item0_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and (have_item0))
)

(:action easymark_item5_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and (have_item5))
)

(:action easymark_item6_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and (have_item6))
)

(:action easymark_item7_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and (have_item7))
)

(:action easymark_item6_4_7
 :parameters ()
 :precondition (and (at_x4) (at_y7))
 :effect (and (have_item6))
)

(:action easymark_item2_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :effect (and (have_item2))
)

(:action easymark_item6_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and (have_item6))
)

(:action easymark_item3_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and (have_item3))
)

(:action easymark_item6_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :effect (and (have_item6))
)

(:action easymark_item7_5_6
 :parameters ()
 :precondition (and (at_x5) (at_y6))
 :effect (and (have_item7))
)

(:action easymark_item3_6_1
 :parameters ()
 :precondition (and (at_x6) (at_y1))
 :effect (and (have_item3))
)

(:action easymark_item3_6_3
 :parameters ()
 :precondition (and (at_x6) (at_y3))
 :effect (and (have_item3))
)

(:action easymark_item0_6_5
 :parameters ()
 :precondition (and (at_x6) (at_y5))
 :effect (and (have_item0))
)

(:action easymark_item1_6_5
 :parameters ()
 :precondition (and (at_x6) (at_y5))
 :effect (and (have_item1))
)

(:action easymark_item2_6_6
 :parameters ()
 :precondition (and (at_x6) (at_y6))
 :effect (and (have_item2))
)

(:action easymark_item4_6_6
 :parameters ()
 :precondition (and (at_x6) (at_y6))
 :effect (and (have_item4))
)

(:action easymark_item0_6_7
 :parameters ()
 :precondition (and (at_x6) (at_y7))
 :effect (and (have_item0))
)

(:action easymark_item2_6_7
 :parameters ()
 :precondition (and (at_x6) (at_y7))
 :effect (and (have_item2))
)

(:action easymark_item1_7_0
 :parameters ()
 :precondition (and (at_x7) (at_y0))
 :effect (and (have_item1))
)

(:action easymark_item2_7_0
 :parameters ()
 :precondition (and (at_x7) (at_y0))
 :effect (and (have_item2))
)

(:action easymark_item6_7_3
 :parameters ()
 :precondition (and (at_x7) (at_y3))
 :effect (and (have_item6))
)

(:action easymark_item4_7_4
 :parameters ()
 :precondition (and (at_x7) (at_y4))
 :effect (and (have_item4))
)

(:action easymark_item5_7_7
 :parameters ()
 :precondition (and (at_x7) (at_y7))
 :effect (and (have_item5))
)
)
