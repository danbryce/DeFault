(define (domain HoboNav)
(:requirements :fluents :incomplete-domain)

(:predicates
 (at_x0) (at_y0) (at_x1) (at_y1)
 (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31)
)

(:action move_0_0_1_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x0)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_1_0_0_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x1)) (at_x0))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_0_0_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y0)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_0_1_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y1)) (at_y0))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_0_1_1_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x0)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_1_1_0_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x1)) (at_x0))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_1_0_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y0)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_1_1_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y1)) (at_y0))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
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

(:action gamble_item8_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item8))
)

(:action gamble_item9_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item9))
)

(:action gamble_item10_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item10))
)

(:action gamble_item11_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item11))
)

(:action gamble_item12_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item12))
)

(:action gamble_item13_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item13))
)

(:action gamble_item14_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item14))
)

(:action gamble_item15_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item15))
)

(:action gamble_item16_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item16))
)

(:action gamble_item17_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item17))
)

(:action gamble_item18_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item18))
)

(:action gamble_item19_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item19))
)

(:action gamble_item20_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item20))
)

(:action gamble_item21_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item21))
)

(:action gamble_item22_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item22))
)

(:action gamble_item23_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item23))
)

(:action gamble_item24_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item24))
)

(:action gamble_item25_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item25))
)

(:action gamble_item26_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item26))
)

(:action gamble_item27_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item27))
)

(:action gamble_item28_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item28))
)

(:action gamble_item29_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item29))
)

(:action gamble_item30_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item30))
)

(:action gamble_item31_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item31))
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

(:action gamble_item8_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item8))
)

(:action gamble_item9_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item9))
)

(:action gamble_item10_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item10))
)

(:action gamble_item11_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item11))
)

(:action gamble_item12_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item12))
)

(:action gamble_item13_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item13))
)

(:action gamble_item14_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item14))
)

(:action gamble_item15_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item15))
)

(:action gamble_item16_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item16))
)

(:action gamble_item17_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item17))
)

(:action gamble_item18_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item18))
)

(:action gamble_item19_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item19))
)

(:action gamble_item20_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item20))
)

(:action gamble_item21_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item21))
)

(:action gamble_item22_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item22))
)

(:action gamble_item23_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item23))
)

(:action gamble_item24_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item24))
)

(:action gamble_item25_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item25))
)

(:action gamble_item26_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item26))
)

(:action gamble_item27_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item27))
)

(:action gamble_item28_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item28))
)

(:action gamble_item29_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item29))
)

(:action gamble_item30_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item30))
)

(:action gamble_item31_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item31))
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

(:action gamble_item8_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item8))
)

(:action gamble_item9_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item9))
)

(:action gamble_item10_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item10))
)

(:action gamble_item11_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item11))
)

(:action gamble_item12_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item12))
)

(:action gamble_item13_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item13))
)

(:action gamble_item14_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item14))
)

(:action gamble_item15_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item15))
)

(:action gamble_item16_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item16))
)

(:action gamble_item17_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item17))
)

(:action gamble_item18_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item18))
)

(:action gamble_item19_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item19))
)

(:action gamble_item20_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item20))
)

(:action gamble_item21_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item21))
)

(:action gamble_item22_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item22))
)

(:action gamble_item23_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item23))
)

(:action gamble_item24_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item24))
)

(:action gamble_item25_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item25))
)

(:action gamble_item26_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item26))
)

(:action gamble_item27_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item27))
)

(:action gamble_item28_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item28))
)

(:action gamble_item29_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item29))
)

(:action gamble_item30_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item30))
)

(:action gamble_item31_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item31))
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

(:action gamble_item8_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item8))
)

(:action gamble_item9_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item9))
)

(:action gamble_item10_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item10))
)

(:action gamble_item11_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item11))
)

(:action gamble_item12_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item12))
)

(:action gamble_item13_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item13))
)

(:action gamble_item14_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item14))
)

(:action gamble_item15_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item15))
)

(:action gamble_item16_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item16))
)

(:action gamble_item17_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item17))
)

(:action gamble_item18_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item18))
)

(:action gamble_item19_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item19))
)

(:action gamble_item20_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item20))
)

(:action gamble_item21_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item21))
)

(:action gamble_item22_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item22))
)

(:action gamble_item23_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item23))
)

(:action gamble_item24_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item24))
)

(:action gamble_item25_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item25))
)

(:action gamble_item26_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item26))
)

(:action gamble_item27_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item27))
)

(:action gamble_item28_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item28))
)

(:action gamble_item29_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item29))
)

(:action gamble_item30_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item30))
)

(:action gamble_item31_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item31))
)

(:action easymark_item3_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and (have_item3))
)

(:action easymark_item19_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and (have_item19))
)

(:action easymark_item25_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and (have_item25))
)

(:action easymark_item29_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and (have_item29))
)

(:action easymark_item2_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and (have_item2))
)

(:action easymark_item10_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and (have_item10))
)

(:action easymark_item23_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and (have_item23))
)

(:action easymark_item10_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and (have_item10))
)

(:action easymark_item11_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and (have_item11))
)

(:action easymark_item15_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and (have_item15))
)

(:action easymark_item1_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and (have_item1))
)

(:action easymark_item21_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and (have_item21))
)

(:action easymark_item23_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and (have_item23))
)
)
