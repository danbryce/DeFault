(define (domain Bridges)
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

 (holding_treasure_2) (holding_treasure_3) (holding_treasure_1))

(:action move_0_0_1_0
 :parameters ()
 :precondition (and (at_0_0))
 :effect (and (not (at_0_0)) (at_1_0))
)

(:action move_0_0_0_1
 :parameters ()
 :precondition (and (at_0_0))
 :effect (and (not (at_0_0)) (at_0_1))
)

(:action move_0_1_1_1
 :parameters ()
 :precondition (and (at_0_1))
 :effect (and (not (at_0_1)) (at_1_1))
)

(:action move_0_1_0_0
 :parameters ()
 :precondition (and (at_0_1))
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
 :effect (and (not (at_0_4)) (at_0_5))
)

(:action move_0_5_1_5
 :parameters ()
 :precondition (and (at_0_5))
 :effect (and (not (at_0_5)) (at_1_5))
)

(:action move_0_5_0_4
 :parameters ()
 :precondition (and (at_0_5))
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
 :effect (and (not (at_0_7)) (at_0_6))
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
 :effect (and (not (at_1_1)) (at_0_1))
)

(:action move_1_1_2_1
 :parameters ()
 :precondition (and (at_1_1))
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
 :effect (and (not (at_1_1)) (at_1_2))
)

(:action move_1_2_0_2
 :parameters ()
 :precondition (and (at_1_2))
 :effect (and (not (at_1_2)) (at_0_2))
)

(:action move_1_2_2_2
 :parameters ()
 :precondition (and (at_1_2))
 :effect (and (not (at_1_2)) (at_2_2))
)

(:action move_1_2_1_1
 :parameters ()
 :precondition (and (at_1_2))
 :effect (and (not (at_1_2)) (at_1_1))
)

(:action move_1_2_1_3
 :parameters ()
 :precondition (and (at_1_2))
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
 :effect (and (not (at_1_3)) (at_1_2))
)

(:action move_1_3_1_4
 :parameters ()
 :precondition (and (at_1_3))
 :effect (and (not (at_1_3)) (at_1_4))
)

(:action move_1_4_0_4
 :parameters ()
 :precondition (and (at_1_4))
 :effect (and (not (at_1_4)) (at_0_4))
)

(:action move_1_4_2_4
 :parameters ()
 :precondition (and (at_1_4))
 :effect (and (not (at_1_4)) (at_2_4))
)

(:action move_1_4_1_3
 :parameters ()
 :precondition (and (at_1_4))
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
 :effect (and (not (at_1_5)) (at_0_5))
)

(:action move_1_5_2_5
 :parameters ()
 :precondition (and (at_1_5))
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
 :effect (and (not (at_1_5)) (at_1_6))
)

(:action move_1_6_0_6
 :parameters ()
 :precondition (and (at_1_6))
 :effect (and (not (at_1_6)) (at_0_6))
)

(:action move_1_6_2_6
 :parameters ()
 :precondition (and (at_1_6))
 :effect (and (not (at_1_6)) (at_2_6))
)

(:action move_1_6_1_5
 :parameters ()
 :precondition (and (at_1_6))
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
 :effect (and (not (at_1_7)) (at_2_7))
)

(:action move_1_7_1_6
 :parameters ()
 :precondition (and (at_1_7))
 :effect (and (not (at_1_7)) (at_1_6))
)

(:action move_2_0_1_0
 :parameters ()
 :precondition (and (at_2_0))
 :effect (and (not (at_2_0)) (at_1_0))
)

(:action move_2_0_3_0
 :parameters ()
 :precondition (and (at_2_0))
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
 :effect (and (not (at_2_1)) (at_1_1))
)

(:action move_2_1_3_1
 :parameters ()
 :precondition (and (at_2_1))
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
 :effect (and (not (at_2_1)) (at_2_2))
)

(:action move_2_2_1_2
 :parameters ()
 :precondition (and (at_2_2))
 :effect (and (not (at_2_2)) (at_1_2))
)

(:action move_2_2_3_2
 :parameters ()
 :precondition (and (at_2_2))
 :effect (and (not (at_2_2)) (at_3_2))
)

(:action move_2_2_2_1
 :parameters ()
 :precondition (and (at_2_2))
 :effect (and (not (at_2_2)) (at_2_1))
)

(:action move_2_2_2_3
 :parameters ()
 :precondition (and (at_2_2))
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
 :effect (and (not (at_2_5)) (at_1_5))
)

(:action move_2_5_3_5
 :parameters ()
 :precondition (and (at_2_5))
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
 :effect (and (not (at_2_5)) (at_2_6))
)

(:action move_2_6_1_6
 :parameters ()
 :precondition (and (at_2_6))
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

(:action move_3_0_2_0
 :parameters ()
 :precondition (and (at_3_0))
 :effect (and (not (at_3_0)) (at_2_0))
)

(:action move_3_0_4_0
 :parameters ()
 :precondition (and (at_3_0))
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
 :effect (and (not (at_3_1)) (at_2_1))
)

(:action move_3_1_4_1
 :parameters ()
 :precondition (and (at_3_1))
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
 :effect (and (not (at_3_1)) (at_3_2))
)

(:action move_3_2_2_2
 :parameters ()
 :precondition (and (at_3_2))
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
 :effect (and (not (at_3_4)) (at_4_4))
)

(:action move_3_4_3_3
 :parameters ()
 :precondition (and (at_3_4))
 :effect (and (not (at_3_4)) (at_3_3))
)

(:action move_3_4_3_5
 :parameters ()
 :precondition (and (at_3_4))
 :effect (and (not (at_3_4)) (at_3_5))
)

(:action move_3_5_2_5
 :parameters ()
 :precondition (and (at_3_5))
 :effect (and (not (at_3_5)) (at_2_5))
)

(:action move_3_5_4_5
 :parameters ()
 :precondition (and (at_3_5))
 :effect (and (not (at_3_5)) (at_4_5))
)

(:action move_3_5_3_4
 :parameters ()
 :precondition (and (at_3_5))
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
 :effect (and (not (at_3_7)) (at_4_7))
)

(:action move_3_7_3_6
 :parameters ()
 :precondition (and (at_3_7))
 :effect (and (not (at_3_7)) (at_3_6))
)

(:action move_4_0_3_0
 :parameters ()
 :precondition (and (at_4_0))
 :effect (and (not (at_4_0)) (at_3_0))
)

(:action move_4_0_5_0
 :parameters ()
 :precondition (and (at_4_0))
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
 :effect (and (not (at_4_3)) (at_4_2))
)

(:action move_4_3_4_4
 :parameters ()
 :precondition (and (at_4_3))
 :effect (and (not (at_4_3)) (at_4_4))
)

(:action move_4_4_3_4
 :parameters ()
 :precondition (and (at_4_4))
 :effect (and (not (at_4_4)) (at_3_4))
)

(:action move_4_4_5_4
 :parameters ()
 :precondition (and (at_4_4))
 :effect (and (not (at_4_4)) (at_5_4))
)

(:action move_4_4_4_3
 :parameters ()
 :precondition (and (at_4_4))
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
 :effect (and (not (at_4_5)) (at_3_5))
)

(:action move_4_5_5_5
 :parameters ()
 :precondition (and (at_4_5))
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
 :effect (and (not (at_4_6)) (at_5_6))
)

(:action move_4_6_4_5
 :parameters ()
 :precondition (and (at_4_6))
 :effect (and (not (at_4_6)) (at_4_5))
)

(:action move_4_6_4_7
 :parameters ()
 :precondition (and (at_4_6))
 :effect (and (not (at_4_6)) (at_4_7))
)

(:action move_4_7_3_7
 :parameters ()
 :precondition (and (at_4_7))
 :effect (and (not (at_4_7)) (at_3_7))
)

(:action move_4_7_5_7
 :parameters ()
 :precondition (and (at_4_7))
 :effect (and (not (at_4_7)) (at_5_7))
)

(:action move_4_7_4_6
 :parameters ()
 :precondition (and (at_4_7))
 :effect (and (not (at_4_7)) (at_4_6))
)

(:action move_5_0_4_0
 :parameters ()
 :precondition (and (at_5_0))
 :effect (and (not (at_5_0)) (at_4_0))
)

(:action move_5_0_6_0
 :parameters ()
 :precondition (and (at_5_0))
 :effect (and (not (at_5_0)) (at_6_0))
)

(:action move_5_0_5_1
 :parameters ()
 :precondition (and (at_5_0))
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
 :effect (and (not (at_5_1)) (at_6_1))
)

(:action move_5_1_5_0
 :parameters ()
 :precondition (and (at_5_1))
 :effect (and (not (at_5_1)) (at_5_0))
)

(:action move_5_1_5_2
 :parameters ()
 :precondition (and (at_5_1))
 :effect (and (not (at_5_1)) (at_5_2))
)

(:action move_5_2_4_2
 :parameters ()
 :precondition (and (at_5_2))
 :effect (and (not (at_5_2)) (at_4_2))
)

(:action move_5_2_6_2
 :parameters ()
 :precondition (and (at_5_2))
 :effect (and (not (at_5_2)) (at_6_2))
)

(:action move_5_2_5_1
 :parameters ()
 :precondition (and (at_5_2))
 :effect (and (not (at_5_2)) (at_5_1))
)

(:action move_5_2_5_3
 :parameters ()
 :precondition (and (at_5_2))
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
 :effect (and (not (at_5_3)) (at_5_2))
)

(:action move_5_3_5_4
 :parameters ()
 :precondition (and (at_5_3))
 :effect (and (not (at_5_3)) (at_5_4))
)

(:action move_5_4_4_4
 :parameters ()
 :precondition (and (at_5_4))
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

(:action move_6_0_5_0
 :parameters ()
 :precondition (and (at_6_0))
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
 :effect (and (not (at_6_6)) (at_7_6))
)

(:action move_6_6_6_5
 :parameters ()
 :precondition (and (at_6_6))
 :effect (and (not (at_6_6)) (at_6_5))
)

(:action move_6_6_6_7
 :parameters ()
 :precondition (and (at_6_6))
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
 :effect (and (not (at_6_7)) (at_7_7))
)

(:action move_6_7_6_6
 :parameters ()
 :precondition (and (at_6_7))
 :effect (and (not (at_6_7)) (at_6_6))
)

(:action move_7_0_6_0
 :parameters ()
 :precondition (and (at_7_0))
 :effect (and (not (at_7_0)) (at_6_0))
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
 :effect (and (not (at_7_5)) (at_6_5))
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
 :effect (and (not (at_7_6)) (at_6_6))
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
 :effect (and (not (at_7_7)) (at_6_7))
)

(:action move_7_7_7_6
 :parameters ()
 :precondition (and (at_7_7))
 :effect (and (not (at_7_7)) (at_7_6))
)

(:action pickup_treasure1
 :parameters ()
 :precondition (and (at_7_0))
 :effect (and (holding_treasure_1))
 :poss-effect (and (holding_treasure_2))
)

(:action pickup_treasure2
 :parameters ()
 :precondition (and (at_7_7))
 :effect (and (holding_treasure_2))
)

(:action pickup_treasure3
 :parameters ()
 :precondition (and (at_0_7))
 :effect (and (holding_treasure_3))
 :poss-effect (and (holding_treasure_1))
)

)