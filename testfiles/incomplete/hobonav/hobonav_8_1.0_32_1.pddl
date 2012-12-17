(define (domain HoboNav)
(:requirements :fluents :incomplete-domain)

(:predicates
 (at_x0) (at_y0) (at_x1) (at_y1) (at_x2) (at_y2) (at_x3) (at_y3) (at_x4) (at_y4) (at_x5) (at_y5) (at_x6) (at_y6) (at_x7) (at_y7)
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

(:action move_0_1_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y1)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_0_2_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y2)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_0_2_1_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x0)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_1_2_0_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x1)) (at_x0))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_0_2_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y2)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_0_3_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y3)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_0_3_1_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x0)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_1_3_0_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x1)) (at_x0))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_0_3_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y3)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_0_4_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y4)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_0_4_1_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x0)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_1_4_0_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x1)) (at_x0))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_0_4_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y4)) (at_y5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_0_5_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y5)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_0_5_1_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x0)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_1_5_0_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x1)) (at_x0))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_0_5_0_6
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y5)) (at_y6))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_0_6_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y6))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y6)) (at_y5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_0_6_1_6
 :parameters ()
 :precondition (and (at_x0) (at_y6))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x0)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_1_6_0_6
 :parameters ()
 :precondition (and (at_x1) (at_y6))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x1)) (at_x0))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_0_6_0_7
 :parameters ()
 :precondition (and (at_x0) (at_y6))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y6)) (at_y7))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_0_7_0_6
 :parameters ()
 :precondition (and (at_x0) (at_y7))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y7)) (at_y6))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_0_7_1_7
 :parameters ()
 :precondition (and (at_x0) (at_y7))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x0)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_1_7_0_7
 :parameters ()
 :precondition (and (at_x1) (at_y7))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x1)) (at_x0))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_1_0_2_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x1)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_2_0_1_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x2)) (at_x1))
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

(:action move_1_1_2_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x1)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_2_1_1_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x2)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_1_1_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y1)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_1_2_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y2)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_1_2_2_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x1)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_2_2_1_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x2)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_1_2_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y2)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_1_3_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y3)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_1_3_2_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x1)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_2_3_1_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x2)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_1_3_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y3)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_1_4_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y4)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_1_4_2_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x1)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_2_4_1_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x2)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_1_4_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y4)) (at_y5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_1_5_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y5)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_1_5_2_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x1)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_2_5_1_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x2)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_1_5_1_6
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y5)) (at_y6))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_1_6_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y6))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y6)) (at_y5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_1_6_2_6
 :parameters ()
 :precondition (and (at_x1) (at_y6))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x1)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_2_6_1_6
 :parameters ()
 :precondition (and (at_x2) (at_y6))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x2)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_1_6_1_7
 :parameters ()
 :precondition (and (at_x1) (at_y6))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y6)) (at_y7))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_1_7_1_6
 :parameters ()
 :precondition (and (at_x1) (at_y7))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y7)) (at_y6))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_1_7_2_7
 :parameters ()
 :precondition (and (at_x1) (at_y7))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x1)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_2_7_1_7
 :parameters ()
 :precondition (and (at_x2) (at_y7))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x2)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_2_0_3_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x2)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_3_0_2_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x3)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_2_0_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y0)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_2_1_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y1)) (at_y0))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_2_1_3_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x2)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_3_1_2_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x3)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_2_1_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y1)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_2_2_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y2)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_2_2_3_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x2)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_3_2_2_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x3)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_2_2_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y2)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_2_3_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y3)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_2_3_3_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x2)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_3_3_2_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x3)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_2_3_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y3)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_2_4_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y4)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_2_4_3_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x2)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_3_4_2_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x3)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_2_4_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y4)) (at_y5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_2_5_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y5)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_2_5_3_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x2)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_3_5_2_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x3)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_2_5_2_6
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y5)) (at_y6))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_2_6_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y6))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y6)) (at_y5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_2_6_3_6
 :parameters ()
 :precondition (and (at_x2) (at_y6))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x2)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_3_6_2_6
 :parameters ()
 :precondition (and (at_x3) (at_y6))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x3)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_2_6_2_7
 :parameters ()
 :precondition (and (at_x2) (at_y6))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y6)) (at_y7))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_2_7_2_6
 :parameters ()
 :precondition (and (at_x2) (at_y7))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y7)) (at_y6))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_2_7_3_7
 :parameters ()
 :precondition (and (at_x2) (at_y7))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x2)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_3_7_2_7
 :parameters ()
 :precondition (and (at_x3) (at_y7))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x3)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_3_0_4_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x3)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_4_0_3_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x4)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_3_0_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y0)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_3_1_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y1)) (at_y0))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_3_1_4_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x3)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_4_1_3_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x4)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_3_1_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y1)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_3_2_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y2)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_3_2_4_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x3)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_4_2_3_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x4)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_3_2_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y2)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_3_3_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y3)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_3_3_4_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x3)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_4_3_3_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x4)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_3_3_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y3)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_3_4_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y4)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_3_4_4_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x3)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_4_4_3_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x4)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_3_4_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y4)) (at_y5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_3_5_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y5)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_3_5_4_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x3)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_4_5_3_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x4)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_3_5_3_6
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y5)) (at_y6))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_3_6_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y6))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y6)) (at_y5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_3_6_4_6
 :parameters ()
 :precondition (and (at_x3) (at_y6))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x3)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_4_6_3_6
 :parameters ()
 :precondition (and (at_x4) (at_y6))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x4)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_3_6_3_7
 :parameters ()
 :precondition (and (at_x3) (at_y6))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y6)) (at_y7))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_3_7_3_6
 :parameters ()
 :precondition (and (at_x3) (at_y7))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y7)) (at_y6))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_3_7_4_7
 :parameters ()
 :precondition (and (at_x3) (at_y7))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x3)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_4_7_3_7
 :parameters ()
 :precondition (and (at_x4) (at_y7))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x4)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_4_0_5_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x4)) (at_x5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_5_0_4_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x5)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_4_0_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y0)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_4_1_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y1)) (at_y0))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_4_1_5_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x4)) (at_x5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_5_1_4_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x5)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_4_1_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y1)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_4_2_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y2)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_4_2_5_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x4)) (at_x5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_5_2_4_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x5)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_4_2_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y2)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_4_3_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y3)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_4_3_5_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x4)) (at_x5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_5_3_4_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x5)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_4_3_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y3)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_4_4_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y4)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_4_4_5_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x4)) (at_x5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_5_4_4_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x5)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_4_4_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y4)) (at_y5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_4_5_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y5)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_4_5_5_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x4)) (at_x5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_5_5_4_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x5)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_4_5_4_6
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y5)) (at_y6))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_4_6_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y6))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y6)) (at_y5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_4_6_5_6
 :parameters ()
 :precondition (and (at_x4) (at_y6))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x4)) (at_x5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_5_6_4_6
 :parameters ()
 :precondition (and (at_x5) (at_y6))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x5)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_4_6_4_7
 :parameters ()
 :precondition (and (at_x4) (at_y6))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y6)) (at_y7))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_4_7_4_6
 :parameters ()
 :precondition (and (at_x4) (at_y7))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y7)) (at_y6))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_4_7_5_7
 :parameters ()
 :precondition (and (at_x4) (at_y7))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x4)) (at_x5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_5_7_4_7
 :parameters ()
 :precondition (and (at_x5) (at_y7))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x5)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_5_0_6_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x5)) (at_x6))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_6_0_5_0
 :parameters ()
 :precondition (and (at_x6) (at_y0))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x6)) (at_x5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_5_0_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y0)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_5_1_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y1)) (at_y0))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_5_1_6_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x5)) (at_x6))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_6_1_5_1
 :parameters ()
 :precondition (and (at_x6) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x6)) (at_x5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_5_1_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y1)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_5_2_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y2)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_5_2_6_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x5)) (at_x6))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_6_2_5_2
 :parameters ()
 :precondition (and (at_x6) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x6)) (at_x5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_5_2_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y2)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_5_3_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y3)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_5_3_6_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x5)) (at_x6))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_6_3_5_3
 :parameters ()
 :precondition (and (at_x6) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x6)) (at_x5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_5_3_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y3)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_5_4_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y4)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_5_4_6_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x5)) (at_x6))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_6_4_5_4
 :parameters ()
 :precondition (and (at_x6) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x6)) (at_x5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_5_4_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y4)) (at_y5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_5_5_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y5)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_5_5_6_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x5)) (at_x6))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_6_5_5_5
 :parameters ()
 :precondition (and (at_x6) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x6)) (at_x5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_5_5_5_6
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y5)) (at_y6))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_5_6_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y6))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y6)) (at_y5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_5_6_6_6
 :parameters ()
 :precondition (and (at_x5) (at_y6))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x5)) (at_x6))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_6_6_5_6
 :parameters ()
 :precondition (and (at_x6) (at_y6))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x6)) (at_x5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_5_6_5_7
 :parameters ()
 :precondition (and (at_x5) (at_y6))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y6)) (at_y7))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_5_7_5_6
 :parameters ()
 :precondition (and (at_x5) (at_y7))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y7)) (at_y6))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_5_7_6_7
 :parameters ()
 :precondition (and (at_x5) (at_y7))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x5)) (at_x6))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_6_7_5_7
 :parameters ()
 :precondition (and (at_x6) (at_y7))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x6)) (at_x5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_6_0_7_0
 :parameters ()
 :precondition (and (at_x6) (at_y0))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x6)) (at_x7))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_7_0_6_0
 :parameters ()
 :precondition (and (at_x7) (at_y0))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x7)) (at_x6))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_6_0_6_1
 :parameters ()
 :precondition (and (at_x6) (at_y0))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y0)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_6_1_6_0
 :parameters ()
 :precondition (and (at_x6) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y1)) (at_y0))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_6_1_7_1
 :parameters ()
 :precondition (and (at_x6) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x6)) (at_x7))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_7_1_6_1
 :parameters ()
 :precondition (and (at_x7) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x7)) (at_x6))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_6_1_6_2
 :parameters ()
 :precondition (and (at_x6) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y1)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_6_2_6_1
 :parameters ()
 :precondition (and (at_x6) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y2)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_6_2_7_2
 :parameters ()
 :precondition (and (at_x6) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x6)) (at_x7))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_7_2_6_2
 :parameters ()
 :precondition (and (at_x7) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x7)) (at_x6))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_6_2_6_3
 :parameters ()
 :precondition (and (at_x6) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y2)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_6_3_6_2
 :parameters ()
 :precondition (and (at_x6) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y3)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_6_3_7_3
 :parameters ()
 :precondition (and (at_x6) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x6)) (at_x7))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_7_3_6_3
 :parameters ()
 :precondition (and (at_x7) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x7)) (at_x6))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_6_3_6_4
 :parameters ()
 :precondition (and (at_x6) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y3)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_6_4_6_3
 :parameters ()
 :precondition (and (at_x6) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y4)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_6_4_7_4
 :parameters ()
 :precondition (and (at_x6) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x6)) (at_x7))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_7_4_6_4
 :parameters ()
 :precondition (and (at_x7) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x7)) (at_x6))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_6_4_6_5
 :parameters ()
 :precondition (and (at_x6) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y4)) (at_y5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_6_5_6_4
 :parameters ()
 :precondition (and (at_x6) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y5)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_6_5_7_5
 :parameters ()
 :precondition (and (at_x6) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x6)) (at_x7))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_7_5_6_5
 :parameters ()
 :precondition (and (at_x7) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x7)) (at_x6))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_6_5_6_6
 :parameters ()
 :precondition (and (at_x6) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y5)) (at_y6))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_6_6_6_5
 :parameters ()
 :precondition (and (at_x6) (at_y6))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y6)) (at_y5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_6_6_7_6
 :parameters ()
 :precondition (and (at_x6) (at_y6))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x6)) (at_x7))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_7_6_6_6
 :parameters ()
 :precondition (and (at_x7) (at_y6))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x7)) (at_x6))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_6_6_6_7
 :parameters ()
 :precondition (and (at_x6) (at_y6))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y6)) (at_y7))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_6_7_6_6
 :parameters ()
 :precondition (and (at_x6) (at_y7))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y7)) (at_y6))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_6_7_7_7
 :parameters ()
 :precondition (and (at_x6) (at_y7))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x6)) (at_x7))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_7_7_6_7
 :parameters ()
 :precondition (and (at_x7) (at_y7))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_x7)) (at_x6))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_7_0_7_1
 :parameters ()
 :precondition (and (at_x7) (at_y0))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y0)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_7_1_7_0
 :parameters ()
 :precondition (and (at_x7) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y1)) (at_y0))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_7_1_7_2
 :parameters ()
 :precondition (and (at_x7) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y1)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_7_2_7_1
 :parameters ()
 :precondition (and (at_x7) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y2)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_7_2_7_3
 :parameters ()
 :precondition (and (at_x7) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y2)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_7_3_7_2
 :parameters ()
 :precondition (and (at_x7) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y3)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_7_3_7_4
 :parameters ()
 :precondition (and (at_x7) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y3)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_7_4_7_3
 :parameters ()
 :precondition (and (at_x7) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y4)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_7_4_7_5
 :parameters ()
 :precondition (and (at_x7) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y4)) (at_y5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_7_5_7_4
 :parameters ()
 :precondition (and (at_x7) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y5)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_7_5_7_6
 :parameters ()
 :precondition (and (at_x7) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y5)) (at_y6))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_7_6_7_5
 :parameters ()
 :precondition (and (at_x7) (at_y6))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y6)) (at_y5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_7_6_7_7
 :parameters ()
 :precondition (and (at_x7) (at_y6))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y6)) (at_y7))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)))
)

(:action move_7_7_7_6
 :parameters ()
 :precondition (and (at_x7) (at_y7))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31))
 :effect (and (not (at_y7)) (at_y6))
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

(:action gamble_item8_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item8))
)

(:action gamble_item9_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item9))
)

(:action gamble_item10_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item10))
)

(:action gamble_item11_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item11))
)

(:action gamble_item12_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item12))
)

(:action gamble_item13_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item13))
)

(:action gamble_item14_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item14))
)

(:action gamble_item15_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item15))
)

(:action gamble_item16_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item16))
)

(:action gamble_item17_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item17))
)

(:action gamble_item18_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item18))
)

(:action gamble_item19_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item19))
)

(:action gamble_item20_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item20))
)

(:action gamble_item21_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item21))
)

(:action gamble_item22_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item22))
)

(:action gamble_item23_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item23))
)

(:action gamble_item24_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item24))
)

(:action gamble_item25_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item25))
)

(:action gamble_item26_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item26))
)

(:action gamble_item27_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item27))
)

(:action gamble_item28_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item28))
)

(:action gamble_item29_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item29))
)

(:action gamble_item30_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item30))
)

(:action gamble_item31_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item31))
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

(:action gamble_item8_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item8))
)

(:action gamble_item9_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item9))
)

(:action gamble_item10_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item10))
)

(:action gamble_item11_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item11))
)

(:action gamble_item12_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item12))
)

(:action gamble_item13_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item13))
)

(:action gamble_item14_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item14))
)

(:action gamble_item15_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item15))
)

(:action gamble_item16_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item16))
)

(:action gamble_item17_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item17))
)

(:action gamble_item18_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item18))
)

(:action gamble_item19_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item19))
)

(:action gamble_item20_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item20))
)

(:action gamble_item21_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item21))
)

(:action gamble_item22_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item22))
)

(:action gamble_item23_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item23))
)

(:action gamble_item24_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item24))
)

(:action gamble_item25_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item25))
)

(:action gamble_item26_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item26))
)

(:action gamble_item27_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item27))
)

(:action gamble_item28_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item28))
)

(:action gamble_item29_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item29))
)

(:action gamble_item30_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item30))
)

(:action gamble_item31_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item31))
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

(:action gamble_item8_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and )
 :poss-effect (and (have_item8))
)

(:action gamble_item9_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and )
 :poss-effect (and (have_item9))
)

(:action gamble_item10_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and )
 :poss-effect (and (have_item10))
)

(:action gamble_item11_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and )
 :poss-effect (and (have_item11))
)

(:action gamble_item12_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and )
 :poss-effect (and (have_item12))
)

(:action gamble_item13_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and )
 :poss-effect (and (have_item13))
)

(:action gamble_item14_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and )
 :poss-effect (and (have_item14))
)

(:action gamble_item15_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and )
 :poss-effect (and (have_item15))
)

(:action gamble_item16_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and )
 :poss-effect (and (have_item16))
)

(:action gamble_item17_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and )
 :poss-effect (and (have_item17))
)

(:action gamble_item18_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and )
 :poss-effect (and (have_item18))
)

(:action gamble_item19_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and )
 :poss-effect (and (have_item19))
)

(:action gamble_item20_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and )
 :poss-effect (and (have_item20))
)

(:action gamble_item21_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and )
 :poss-effect (and (have_item21))
)

(:action gamble_item22_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and )
 :poss-effect (and (have_item22))
)

(:action gamble_item23_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and )
 :poss-effect (and (have_item23))
)

(:action gamble_item24_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and )
 :poss-effect (and (have_item24))
)

(:action gamble_item25_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and )
 :poss-effect (and (have_item25))
)

(:action gamble_item26_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and )
 :poss-effect (and (have_item26))
)

(:action gamble_item27_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and )
 :poss-effect (and (have_item27))
)

(:action gamble_item28_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and )
 :poss-effect (and (have_item28))
)

(:action gamble_item29_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and )
 :poss-effect (and (have_item29))
)

(:action gamble_item30_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and )
 :poss-effect (and (have_item30))
)

(:action gamble_item31_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and )
 :poss-effect (and (have_item31))
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

(:action gamble_item8_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and )
 :poss-effect (and (have_item8))
)

(:action gamble_item9_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and )
 :poss-effect (and (have_item9))
)

(:action gamble_item10_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and )
 :poss-effect (and (have_item10))
)

(:action gamble_item11_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and )
 :poss-effect (and (have_item11))
)

(:action gamble_item12_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and )
 :poss-effect (and (have_item12))
)

(:action gamble_item13_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and )
 :poss-effect (and (have_item13))
)

(:action gamble_item14_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and )
 :poss-effect (and (have_item14))
)

(:action gamble_item15_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and )
 :poss-effect (and (have_item15))
)

(:action gamble_item16_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and )
 :poss-effect (and (have_item16))
)

(:action gamble_item17_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and )
 :poss-effect (and (have_item17))
)

(:action gamble_item18_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and )
 :poss-effect (and (have_item18))
)

(:action gamble_item19_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and )
 :poss-effect (and (have_item19))
)

(:action gamble_item20_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and )
 :poss-effect (and (have_item20))
)

(:action gamble_item21_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and )
 :poss-effect (and (have_item21))
)

(:action gamble_item22_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and )
 :poss-effect (and (have_item22))
)

(:action gamble_item23_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and )
 :poss-effect (and (have_item23))
)

(:action gamble_item24_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and )
 :poss-effect (and (have_item24))
)

(:action gamble_item25_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and )
 :poss-effect (and (have_item25))
)

(:action gamble_item26_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and )
 :poss-effect (and (have_item26))
)

(:action gamble_item27_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and )
 :poss-effect (and (have_item27))
)

(:action gamble_item28_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and )
 :poss-effect (and (have_item28))
)

(:action gamble_item29_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and )
 :poss-effect (and (have_item29))
)

(:action gamble_item30_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and )
 :poss-effect (and (have_item30))
)

(:action gamble_item31_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and )
 :poss-effect (and (have_item31))
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

(:action gamble_item8_0_6
 :parameters ()
 :precondition (and (at_x0) (at_y6))
 :effect (and )
 :poss-effect (and (have_item8))
)

(:action gamble_item9_0_6
 :parameters ()
 :precondition (and (at_x0) (at_y6))
 :effect (and )
 :poss-effect (and (have_item9))
)

(:action gamble_item10_0_6
 :parameters ()
 :precondition (and (at_x0) (at_y6))
 :effect (and )
 :poss-effect (and (have_item10))
)

(:action gamble_item11_0_6
 :parameters ()
 :precondition (and (at_x0) (at_y6))
 :effect (and )
 :poss-effect (and (have_item11))
)

(:action gamble_item12_0_6
 :parameters ()
 :precondition (and (at_x0) (at_y6))
 :effect (and )
 :poss-effect (and (have_item12))
)

(:action gamble_item13_0_6
 :parameters ()
 :precondition (and (at_x0) (at_y6))
 :effect (and )
 :poss-effect (and (have_item13))
)

(:action gamble_item14_0_6
 :parameters ()
 :precondition (and (at_x0) (at_y6))
 :effect (and )
 :poss-effect (and (have_item14))
)

(:action gamble_item15_0_6
 :parameters ()
 :precondition (and (at_x0) (at_y6))
 :effect (and )
 :poss-effect (and (have_item15))
)

(:action gamble_item16_0_6
 :parameters ()
 :precondition (and (at_x0) (at_y6))
 :effect (and )
 :poss-effect (and (have_item16))
)

(:action gamble_item17_0_6
 :parameters ()
 :precondition (and (at_x0) (at_y6))
 :effect (and )
 :poss-effect (and (have_item17))
)

(:action gamble_item18_0_6
 :parameters ()
 :precondition (and (at_x0) (at_y6))
 :effect (and )
 :poss-effect (and (have_item18))
)

(:action gamble_item19_0_6
 :parameters ()
 :precondition (and (at_x0) (at_y6))
 :effect (and )
 :poss-effect (and (have_item19))
)

(:action gamble_item20_0_6
 :parameters ()
 :precondition (and (at_x0) (at_y6))
 :effect (and )
 :poss-effect (and (have_item20))
)

(:action gamble_item21_0_6
 :parameters ()
 :precondition (and (at_x0) (at_y6))
 :effect (and )
 :poss-effect (and (have_item21))
)

(:action gamble_item22_0_6
 :parameters ()
 :precondition (and (at_x0) (at_y6))
 :effect (and )
 :poss-effect (and (have_item22))
)

(:action gamble_item23_0_6
 :parameters ()
 :precondition (and (at_x0) (at_y6))
 :effect (and )
 :poss-effect (and (have_item23))
)

(:action gamble_item24_0_6
 :parameters ()
 :precondition (and (at_x0) (at_y6))
 :effect (and )
 :poss-effect (and (have_item24))
)

(:action gamble_item25_0_6
 :parameters ()
 :precondition (and (at_x0) (at_y6))
 :effect (and )
 :poss-effect (and (have_item25))
)

(:action gamble_item26_0_6
 :parameters ()
 :precondition (and (at_x0) (at_y6))
 :effect (and )
 :poss-effect (and (have_item26))
)

(:action gamble_item27_0_6
 :parameters ()
 :precondition (and (at_x0) (at_y6))
 :effect (and )
 :poss-effect (and (have_item27))
)

(:action gamble_item28_0_6
 :parameters ()
 :precondition (and (at_x0) (at_y6))
 :effect (and )
 :poss-effect (and (have_item28))
)

(:action gamble_item29_0_6
 :parameters ()
 :precondition (and (at_x0) (at_y6))
 :effect (and )
 :poss-effect (and (have_item29))
)

(:action gamble_item30_0_6
 :parameters ()
 :precondition (and (at_x0) (at_y6))
 :effect (and )
 :poss-effect (and (have_item30))
)

(:action gamble_item31_0_6
 :parameters ()
 :precondition (and (at_x0) (at_y6))
 :effect (and )
 :poss-effect (and (have_item31))
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

(:action gamble_item8_0_7
 :parameters ()
 :precondition (and (at_x0) (at_y7))
 :effect (and )
 :poss-effect (and (have_item8))
)

(:action gamble_item9_0_7
 :parameters ()
 :precondition (and (at_x0) (at_y7))
 :effect (and )
 :poss-effect (and (have_item9))
)

(:action gamble_item10_0_7
 :parameters ()
 :precondition (and (at_x0) (at_y7))
 :effect (and )
 :poss-effect (and (have_item10))
)

(:action gamble_item11_0_7
 :parameters ()
 :precondition (and (at_x0) (at_y7))
 :effect (and )
 :poss-effect (and (have_item11))
)

(:action gamble_item12_0_7
 :parameters ()
 :precondition (and (at_x0) (at_y7))
 :effect (and )
 :poss-effect (and (have_item12))
)

(:action gamble_item13_0_7
 :parameters ()
 :precondition (and (at_x0) (at_y7))
 :effect (and )
 :poss-effect (and (have_item13))
)

(:action gamble_item14_0_7
 :parameters ()
 :precondition (and (at_x0) (at_y7))
 :effect (and )
 :poss-effect (and (have_item14))
)

(:action gamble_item15_0_7
 :parameters ()
 :precondition (and (at_x0) (at_y7))
 :effect (and )
 :poss-effect (and (have_item15))
)

(:action gamble_item16_0_7
 :parameters ()
 :precondition (and (at_x0) (at_y7))
 :effect (and )
 :poss-effect (and (have_item16))
)

(:action gamble_item17_0_7
 :parameters ()
 :precondition (and (at_x0) (at_y7))
 :effect (and )
 :poss-effect (and (have_item17))
)

(:action gamble_item18_0_7
 :parameters ()
 :precondition (and (at_x0) (at_y7))
 :effect (and )
 :poss-effect (and (have_item18))
)

(:action gamble_item19_0_7
 :parameters ()
 :precondition (and (at_x0) (at_y7))
 :effect (and )
 :poss-effect (and (have_item19))
)

(:action gamble_item20_0_7
 :parameters ()
 :precondition (and (at_x0) (at_y7))
 :effect (and )
 :poss-effect (and (have_item20))
)

(:action gamble_item21_0_7
 :parameters ()
 :precondition (and (at_x0) (at_y7))
 :effect (and )
 :poss-effect (and (have_item21))
)

(:action gamble_item22_0_7
 :parameters ()
 :precondition (and (at_x0) (at_y7))
 :effect (and )
 :poss-effect (and (have_item22))
)

(:action gamble_item23_0_7
 :parameters ()
 :precondition (and (at_x0) (at_y7))
 :effect (and )
 :poss-effect (and (have_item23))
)

(:action gamble_item24_0_7
 :parameters ()
 :precondition (and (at_x0) (at_y7))
 :effect (and )
 :poss-effect (and (have_item24))
)

(:action gamble_item25_0_7
 :parameters ()
 :precondition (and (at_x0) (at_y7))
 :effect (and )
 :poss-effect (and (have_item25))
)

(:action gamble_item26_0_7
 :parameters ()
 :precondition (and (at_x0) (at_y7))
 :effect (and )
 :poss-effect (and (have_item26))
)

(:action gamble_item27_0_7
 :parameters ()
 :precondition (and (at_x0) (at_y7))
 :effect (and )
 :poss-effect (and (have_item27))
)

(:action gamble_item28_0_7
 :parameters ()
 :precondition (and (at_x0) (at_y7))
 :effect (and )
 :poss-effect (and (have_item28))
)

(:action gamble_item29_0_7
 :parameters ()
 :precondition (and (at_x0) (at_y7))
 :effect (and )
 :poss-effect (and (have_item29))
)

(:action gamble_item30_0_7
 :parameters ()
 :precondition (and (at_x0) (at_y7))
 :effect (and )
 :poss-effect (and (have_item30))
)

(:action gamble_item31_0_7
 :parameters ()
 :precondition (and (at_x0) (at_y7))
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

(:action gamble_item8_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item8))
)

(:action gamble_item9_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item9))
)

(:action gamble_item10_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item10))
)

(:action gamble_item11_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item11))
)

(:action gamble_item12_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item12))
)

(:action gamble_item13_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item13))
)

(:action gamble_item14_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item14))
)

(:action gamble_item15_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item15))
)

(:action gamble_item16_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item16))
)

(:action gamble_item17_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item17))
)

(:action gamble_item18_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item18))
)

(:action gamble_item19_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item19))
)

(:action gamble_item20_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item20))
)

(:action gamble_item21_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item21))
)

(:action gamble_item22_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item22))
)

(:action gamble_item23_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item23))
)

(:action gamble_item24_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item24))
)

(:action gamble_item25_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item25))
)

(:action gamble_item26_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item26))
)

(:action gamble_item27_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item27))
)

(:action gamble_item28_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item28))
)

(:action gamble_item29_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item29))
)

(:action gamble_item30_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item30))
)

(:action gamble_item31_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item31))
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

(:action gamble_item8_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item8))
)

(:action gamble_item9_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item9))
)

(:action gamble_item10_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item10))
)

(:action gamble_item11_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item11))
)

(:action gamble_item12_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item12))
)

(:action gamble_item13_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item13))
)

(:action gamble_item14_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item14))
)

(:action gamble_item15_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item15))
)

(:action gamble_item16_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item16))
)

(:action gamble_item17_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item17))
)

(:action gamble_item18_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item18))
)

(:action gamble_item19_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item19))
)

(:action gamble_item20_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item20))
)

(:action gamble_item21_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item21))
)

(:action gamble_item22_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item22))
)

(:action gamble_item23_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item23))
)

(:action gamble_item24_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item24))
)

(:action gamble_item25_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item25))
)

(:action gamble_item26_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item26))
)

(:action gamble_item27_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item27))
)

(:action gamble_item28_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item28))
)

(:action gamble_item29_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item29))
)

(:action gamble_item30_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item30))
)

(:action gamble_item31_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item31))
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

(:action gamble_item8_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and )
 :poss-effect (and (have_item8))
)

(:action gamble_item9_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and )
 :poss-effect (and (have_item9))
)

(:action gamble_item10_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and )
 :poss-effect (and (have_item10))
)

(:action gamble_item11_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and )
 :poss-effect (and (have_item11))
)

(:action gamble_item12_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and )
 :poss-effect (and (have_item12))
)

(:action gamble_item13_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and )
 :poss-effect (and (have_item13))
)

(:action gamble_item14_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and )
 :poss-effect (and (have_item14))
)

(:action gamble_item15_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and )
 :poss-effect (and (have_item15))
)

(:action gamble_item16_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and )
 :poss-effect (and (have_item16))
)

(:action gamble_item17_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and )
 :poss-effect (and (have_item17))
)

(:action gamble_item18_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and )
 :poss-effect (and (have_item18))
)

(:action gamble_item19_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and )
 :poss-effect (and (have_item19))
)

(:action gamble_item20_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and )
 :poss-effect (and (have_item20))
)

(:action gamble_item21_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and )
 :poss-effect (and (have_item21))
)

(:action gamble_item22_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and )
 :poss-effect (and (have_item22))
)

(:action gamble_item23_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and )
 :poss-effect (and (have_item23))
)

(:action gamble_item24_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and )
 :poss-effect (and (have_item24))
)

(:action gamble_item25_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and )
 :poss-effect (and (have_item25))
)

(:action gamble_item26_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and )
 :poss-effect (and (have_item26))
)

(:action gamble_item27_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and )
 :poss-effect (and (have_item27))
)

(:action gamble_item28_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and )
 :poss-effect (and (have_item28))
)

(:action gamble_item29_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and )
 :poss-effect (and (have_item29))
)

(:action gamble_item30_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and )
 :poss-effect (and (have_item30))
)

(:action gamble_item31_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and )
 :poss-effect (and (have_item31))
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

(:action gamble_item8_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and )
 :poss-effect (and (have_item8))
)

(:action gamble_item9_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and )
 :poss-effect (and (have_item9))
)

(:action gamble_item10_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and )
 :poss-effect (and (have_item10))
)

(:action gamble_item11_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and )
 :poss-effect (and (have_item11))
)

(:action gamble_item12_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and )
 :poss-effect (and (have_item12))
)

(:action gamble_item13_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and )
 :poss-effect (and (have_item13))
)

(:action gamble_item14_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and )
 :poss-effect (and (have_item14))
)

(:action gamble_item15_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and )
 :poss-effect (and (have_item15))
)

(:action gamble_item16_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and )
 :poss-effect (and (have_item16))
)

(:action gamble_item17_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and )
 :poss-effect (and (have_item17))
)

(:action gamble_item18_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and )
 :poss-effect (and (have_item18))
)

(:action gamble_item19_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and )
 :poss-effect (and (have_item19))
)

(:action gamble_item20_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and )
 :poss-effect (and (have_item20))
)

(:action gamble_item21_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and )
 :poss-effect (and (have_item21))
)

(:action gamble_item22_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and )
 :poss-effect (and (have_item22))
)

(:action gamble_item23_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and )
 :poss-effect (and (have_item23))
)

(:action gamble_item24_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and )
 :poss-effect (and (have_item24))
)

(:action gamble_item25_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and )
 :poss-effect (and (have_item25))
)

(:action gamble_item26_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and )
 :poss-effect (and (have_item26))
)

(:action gamble_item27_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and )
 :poss-effect (and (have_item27))
)

(:action gamble_item28_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and )
 :poss-effect (and (have_item28))
)

(:action gamble_item29_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and )
 :poss-effect (and (have_item29))
)

(:action gamble_item30_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and )
 :poss-effect (and (have_item30))
)

(:action gamble_item31_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and )
 :poss-effect (and (have_item31))
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

(:action gamble_item8_1_6
 :parameters ()
 :precondition (and (at_x1) (at_y6))
 :effect (and )
 :poss-effect (and (have_item8))
)

(:action gamble_item9_1_6
 :parameters ()
 :precondition (and (at_x1) (at_y6))
 :effect (and )
 :poss-effect (and (have_item9))
)

(:action gamble_item10_1_6
 :parameters ()
 :precondition (and (at_x1) (at_y6))
 :effect (and )
 :poss-effect (and (have_item10))
)

(:action gamble_item11_1_6
 :parameters ()
 :precondition (and (at_x1) (at_y6))
 :effect (and )
 :poss-effect (and (have_item11))
)

(:action gamble_item12_1_6
 :parameters ()
 :precondition (and (at_x1) (at_y6))
 :effect (and )
 :poss-effect (and (have_item12))
)

(:action gamble_item13_1_6
 :parameters ()
 :precondition (and (at_x1) (at_y6))
 :effect (and )
 :poss-effect (and (have_item13))
)

(:action gamble_item14_1_6
 :parameters ()
 :precondition (and (at_x1) (at_y6))
 :effect (and )
 :poss-effect (and (have_item14))
)

(:action gamble_item15_1_6
 :parameters ()
 :precondition (and (at_x1) (at_y6))
 :effect (and )
 :poss-effect (and (have_item15))
)

(:action gamble_item16_1_6
 :parameters ()
 :precondition (and (at_x1) (at_y6))
 :effect (and )
 :poss-effect (and (have_item16))
)

(:action gamble_item17_1_6
 :parameters ()
 :precondition (and (at_x1) (at_y6))
 :effect (and )
 :poss-effect (and (have_item17))
)

(:action gamble_item18_1_6
 :parameters ()
 :precondition (and (at_x1) (at_y6))
 :effect (and )
 :poss-effect (and (have_item18))
)

(:action gamble_item19_1_6
 :parameters ()
 :precondition (and (at_x1) (at_y6))
 :effect (and )
 :poss-effect (and (have_item19))
)

(:action gamble_item20_1_6
 :parameters ()
 :precondition (and (at_x1) (at_y6))
 :effect (and )
 :poss-effect (and (have_item20))
)

(:action gamble_item21_1_6
 :parameters ()
 :precondition (and (at_x1) (at_y6))
 :effect (and )
 :poss-effect (and (have_item21))
)

(:action gamble_item22_1_6
 :parameters ()
 :precondition (and (at_x1) (at_y6))
 :effect (and )
 :poss-effect (and (have_item22))
)

(:action gamble_item23_1_6
 :parameters ()
 :precondition (and (at_x1) (at_y6))
 :effect (and )
 :poss-effect (and (have_item23))
)

(:action gamble_item24_1_6
 :parameters ()
 :precondition (and (at_x1) (at_y6))
 :effect (and )
 :poss-effect (and (have_item24))
)

(:action gamble_item25_1_6
 :parameters ()
 :precondition (and (at_x1) (at_y6))
 :effect (and )
 :poss-effect (and (have_item25))
)

(:action gamble_item26_1_6
 :parameters ()
 :precondition (and (at_x1) (at_y6))
 :effect (and )
 :poss-effect (and (have_item26))
)

(:action gamble_item27_1_6
 :parameters ()
 :precondition (and (at_x1) (at_y6))
 :effect (and )
 :poss-effect (and (have_item27))
)

(:action gamble_item28_1_6
 :parameters ()
 :precondition (and (at_x1) (at_y6))
 :effect (and )
 :poss-effect (and (have_item28))
)

(:action gamble_item29_1_6
 :parameters ()
 :precondition (and (at_x1) (at_y6))
 :effect (and )
 :poss-effect (and (have_item29))
)

(:action gamble_item30_1_6
 :parameters ()
 :precondition (and (at_x1) (at_y6))
 :effect (and )
 :poss-effect (and (have_item30))
)

(:action gamble_item31_1_6
 :parameters ()
 :precondition (and (at_x1) (at_y6))
 :effect (and )
 :poss-effect (and (have_item31))
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

(:action gamble_item8_1_7
 :parameters ()
 :precondition (and (at_x1) (at_y7))
 :effect (and )
 :poss-effect (and (have_item8))
)

(:action gamble_item9_1_7
 :parameters ()
 :precondition (and (at_x1) (at_y7))
 :effect (and )
 :poss-effect (and (have_item9))
)

(:action gamble_item10_1_7
 :parameters ()
 :precondition (and (at_x1) (at_y7))
 :effect (and )
 :poss-effect (and (have_item10))
)

(:action gamble_item11_1_7
 :parameters ()
 :precondition (and (at_x1) (at_y7))
 :effect (and )
 :poss-effect (and (have_item11))
)

(:action gamble_item12_1_7
 :parameters ()
 :precondition (and (at_x1) (at_y7))
 :effect (and )
 :poss-effect (and (have_item12))
)

(:action gamble_item13_1_7
 :parameters ()
 :precondition (and (at_x1) (at_y7))
 :effect (and )
 :poss-effect (and (have_item13))
)

(:action gamble_item14_1_7
 :parameters ()
 :precondition (and (at_x1) (at_y7))
 :effect (and )
 :poss-effect (and (have_item14))
)

(:action gamble_item15_1_7
 :parameters ()
 :precondition (and (at_x1) (at_y7))
 :effect (and )
 :poss-effect (and (have_item15))
)

(:action gamble_item16_1_7
 :parameters ()
 :precondition (and (at_x1) (at_y7))
 :effect (and )
 :poss-effect (and (have_item16))
)

(:action gamble_item17_1_7
 :parameters ()
 :precondition (and (at_x1) (at_y7))
 :effect (and )
 :poss-effect (and (have_item17))
)

(:action gamble_item18_1_7
 :parameters ()
 :precondition (and (at_x1) (at_y7))
 :effect (and )
 :poss-effect (and (have_item18))
)

(:action gamble_item19_1_7
 :parameters ()
 :precondition (and (at_x1) (at_y7))
 :effect (and )
 :poss-effect (and (have_item19))
)

(:action gamble_item20_1_7
 :parameters ()
 :precondition (and (at_x1) (at_y7))
 :effect (and )
 :poss-effect (and (have_item20))
)

(:action gamble_item21_1_7
 :parameters ()
 :precondition (and (at_x1) (at_y7))
 :effect (and )
 :poss-effect (and (have_item21))
)

(:action gamble_item22_1_7
 :parameters ()
 :precondition (and (at_x1) (at_y7))
 :effect (and )
 :poss-effect (and (have_item22))
)

(:action gamble_item23_1_7
 :parameters ()
 :precondition (and (at_x1) (at_y7))
 :effect (and )
 :poss-effect (and (have_item23))
)

(:action gamble_item24_1_7
 :parameters ()
 :precondition (and (at_x1) (at_y7))
 :effect (and )
 :poss-effect (and (have_item24))
)

(:action gamble_item25_1_7
 :parameters ()
 :precondition (and (at_x1) (at_y7))
 :effect (and )
 :poss-effect (and (have_item25))
)

(:action gamble_item26_1_7
 :parameters ()
 :precondition (and (at_x1) (at_y7))
 :effect (and )
 :poss-effect (and (have_item26))
)

(:action gamble_item27_1_7
 :parameters ()
 :precondition (and (at_x1) (at_y7))
 :effect (and )
 :poss-effect (and (have_item27))
)

(:action gamble_item28_1_7
 :parameters ()
 :precondition (and (at_x1) (at_y7))
 :effect (and )
 :poss-effect (and (have_item28))
)

(:action gamble_item29_1_7
 :parameters ()
 :precondition (and (at_x1) (at_y7))
 :effect (and )
 :poss-effect (and (have_item29))
)

(:action gamble_item30_1_7
 :parameters ()
 :precondition (and (at_x1) (at_y7))
 :effect (and )
 :poss-effect (and (have_item30))
)

(:action gamble_item31_1_7
 :parameters ()
 :precondition (and (at_x1) (at_y7))
 :effect (and )
 :poss-effect (and (have_item31))
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

(:action gamble_item8_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item8))
)

(:action gamble_item9_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item9))
)

(:action gamble_item10_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item10))
)

(:action gamble_item11_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item11))
)

(:action gamble_item12_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item12))
)

(:action gamble_item13_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item13))
)

(:action gamble_item14_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item14))
)

(:action gamble_item15_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item15))
)

(:action gamble_item16_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item16))
)

(:action gamble_item17_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item17))
)

(:action gamble_item18_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item18))
)

(:action gamble_item19_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item19))
)

(:action gamble_item20_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item20))
)

(:action gamble_item21_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item21))
)

(:action gamble_item22_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item22))
)

(:action gamble_item23_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item23))
)

(:action gamble_item24_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item24))
)

(:action gamble_item25_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item25))
)

(:action gamble_item26_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item26))
)

(:action gamble_item27_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item27))
)

(:action gamble_item28_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item28))
)

(:action gamble_item29_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item29))
)

(:action gamble_item30_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item30))
)

(:action gamble_item31_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item31))
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

(:action gamble_item8_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item8))
)

(:action gamble_item9_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item9))
)

(:action gamble_item10_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item10))
)

(:action gamble_item11_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item11))
)

(:action gamble_item12_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item12))
)

(:action gamble_item13_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item13))
)

(:action gamble_item14_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item14))
)

(:action gamble_item15_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item15))
)

(:action gamble_item16_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item16))
)

(:action gamble_item17_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item17))
)

(:action gamble_item18_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item18))
)

(:action gamble_item19_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item19))
)

(:action gamble_item20_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item20))
)

(:action gamble_item21_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item21))
)

(:action gamble_item22_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item22))
)

(:action gamble_item23_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item23))
)

(:action gamble_item24_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item24))
)

(:action gamble_item25_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item25))
)

(:action gamble_item26_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item26))
)

(:action gamble_item27_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item27))
)

(:action gamble_item28_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item28))
)

(:action gamble_item29_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item29))
)

(:action gamble_item30_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item30))
)

(:action gamble_item31_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item31))
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

(:action gamble_item8_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item8))
)

(:action gamble_item9_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item9))
)

(:action gamble_item10_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item10))
)

(:action gamble_item11_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item11))
)

(:action gamble_item12_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item12))
)

(:action gamble_item13_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item13))
)

(:action gamble_item14_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item14))
)

(:action gamble_item15_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item15))
)

(:action gamble_item16_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item16))
)

(:action gamble_item17_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item17))
)

(:action gamble_item18_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item18))
)

(:action gamble_item19_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item19))
)

(:action gamble_item20_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item20))
)

(:action gamble_item21_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item21))
)

(:action gamble_item22_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item22))
)

(:action gamble_item23_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item23))
)

(:action gamble_item24_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item24))
)

(:action gamble_item25_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item25))
)

(:action gamble_item26_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item26))
)

(:action gamble_item27_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item27))
)

(:action gamble_item28_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item28))
)

(:action gamble_item29_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item29))
)

(:action gamble_item30_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item30))
)

(:action gamble_item31_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item31))
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

(:action gamble_item8_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item8))
)

(:action gamble_item9_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item9))
)

(:action gamble_item10_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item10))
)

(:action gamble_item11_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item11))
)

(:action gamble_item12_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item12))
)

(:action gamble_item13_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item13))
)

(:action gamble_item14_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item14))
)

(:action gamble_item15_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item15))
)

(:action gamble_item16_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item16))
)

(:action gamble_item17_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item17))
)

(:action gamble_item18_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item18))
)

(:action gamble_item19_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item19))
)

(:action gamble_item20_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item20))
)

(:action gamble_item21_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item21))
)

(:action gamble_item22_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item22))
)

(:action gamble_item23_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item23))
)

(:action gamble_item24_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item24))
)

(:action gamble_item25_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item25))
)

(:action gamble_item26_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item26))
)

(:action gamble_item27_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item27))
)

(:action gamble_item28_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item28))
)

(:action gamble_item29_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item29))
)

(:action gamble_item30_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item30))
)

(:action gamble_item31_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item31))
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

(:action gamble_item8_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and )
 :poss-effect (and (have_item8))
)

(:action gamble_item9_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and )
 :poss-effect (and (have_item9))
)

(:action gamble_item10_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and )
 :poss-effect (and (have_item10))
)

(:action gamble_item11_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and )
 :poss-effect (and (have_item11))
)

(:action gamble_item12_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and )
 :poss-effect (and (have_item12))
)

(:action gamble_item13_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and )
 :poss-effect (and (have_item13))
)

(:action gamble_item14_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and )
 :poss-effect (and (have_item14))
)

(:action gamble_item15_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and )
 :poss-effect (and (have_item15))
)

(:action gamble_item16_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and )
 :poss-effect (and (have_item16))
)

(:action gamble_item17_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and )
 :poss-effect (and (have_item17))
)

(:action gamble_item18_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and )
 :poss-effect (and (have_item18))
)

(:action gamble_item19_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and )
 :poss-effect (and (have_item19))
)

(:action gamble_item20_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and )
 :poss-effect (and (have_item20))
)

(:action gamble_item21_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and )
 :poss-effect (and (have_item21))
)

(:action gamble_item22_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and )
 :poss-effect (and (have_item22))
)

(:action gamble_item23_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and )
 :poss-effect (and (have_item23))
)

(:action gamble_item24_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and )
 :poss-effect (and (have_item24))
)

(:action gamble_item25_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and )
 :poss-effect (and (have_item25))
)

(:action gamble_item26_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and )
 :poss-effect (and (have_item26))
)

(:action gamble_item27_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and )
 :poss-effect (and (have_item27))
)

(:action gamble_item28_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and )
 :poss-effect (and (have_item28))
)

(:action gamble_item29_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and )
 :poss-effect (and (have_item29))
)

(:action gamble_item30_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and )
 :poss-effect (and (have_item30))
)

(:action gamble_item31_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and )
 :poss-effect (and (have_item31))
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

(:action gamble_item8_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :effect (and )
 :poss-effect (and (have_item8))
)

(:action gamble_item9_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :effect (and )
 :poss-effect (and (have_item9))
)

(:action gamble_item10_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :effect (and )
 :poss-effect (and (have_item10))
)

(:action gamble_item11_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :effect (and )
 :poss-effect (and (have_item11))
)

(:action gamble_item12_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :effect (and )
 :poss-effect (and (have_item12))
)

(:action gamble_item13_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :effect (and )
 :poss-effect (and (have_item13))
)

(:action gamble_item14_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :effect (and )
 :poss-effect (and (have_item14))
)

(:action gamble_item15_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :effect (and )
 :poss-effect (and (have_item15))
)

(:action gamble_item16_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :effect (and )
 :poss-effect (and (have_item16))
)

(:action gamble_item17_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :effect (and )
 :poss-effect (and (have_item17))
)

(:action gamble_item18_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :effect (and )
 :poss-effect (and (have_item18))
)

(:action gamble_item19_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :effect (and )
 :poss-effect (and (have_item19))
)

(:action gamble_item20_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :effect (and )
 :poss-effect (and (have_item20))
)

(:action gamble_item21_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :effect (and )
 :poss-effect (and (have_item21))
)

(:action gamble_item22_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :effect (and )
 :poss-effect (and (have_item22))
)

(:action gamble_item23_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :effect (and )
 :poss-effect (and (have_item23))
)

(:action gamble_item24_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :effect (and )
 :poss-effect (and (have_item24))
)

(:action gamble_item25_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :effect (and )
 :poss-effect (and (have_item25))
)

(:action gamble_item26_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :effect (and )
 :poss-effect (and (have_item26))
)

(:action gamble_item27_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :effect (and )
 :poss-effect (and (have_item27))
)

(:action gamble_item28_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :effect (and )
 :poss-effect (and (have_item28))
)

(:action gamble_item29_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :effect (and )
 :poss-effect (and (have_item29))
)

(:action gamble_item30_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :effect (and )
 :poss-effect (and (have_item30))
)

(:action gamble_item31_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :effect (and )
 :poss-effect (and (have_item31))
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

(:action gamble_item8_2_6
 :parameters ()
 :precondition (and (at_x2) (at_y6))
 :effect (and )
 :poss-effect (and (have_item8))
)

(:action gamble_item9_2_6
 :parameters ()
 :precondition (and (at_x2) (at_y6))
 :effect (and )
 :poss-effect (and (have_item9))
)

(:action gamble_item10_2_6
 :parameters ()
 :precondition (and (at_x2) (at_y6))
 :effect (and )
 :poss-effect (and (have_item10))
)

(:action gamble_item11_2_6
 :parameters ()
 :precondition (and (at_x2) (at_y6))
 :effect (and )
 :poss-effect (and (have_item11))
)

(:action gamble_item12_2_6
 :parameters ()
 :precondition (and (at_x2) (at_y6))
 :effect (and )
 :poss-effect (and (have_item12))
)

(:action gamble_item13_2_6
 :parameters ()
 :precondition (and (at_x2) (at_y6))
 :effect (and )
 :poss-effect (and (have_item13))
)

(:action gamble_item14_2_6
 :parameters ()
 :precondition (and (at_x2) (at_y6))
 :effect (and )
 :poss-effect (and (have_item14))
)

(:action gamble_item15_2_6
 :parameters ()
 :precondition (and (at_x2) (at_y6))
 :effect (and )
 :poss-effect (and (have_item15))
)

(:action gamble_item16_2_6
 :parameters ()
 :precondition (and (at_x2) (at_y6))
 :effect (and )
 :poss-effect (and (have_item16))
)

(:action gamble_item17_2_6
 :parameters ()
 :precondition (and (at_x2) (at_y6))
 :effect (and )
 :poss-effect (and (have_item17))
)

(:action gamble_item18_2_6
 :parameters ()
 :precondition (and (at_x2) (at_y6))
 :effect (and )
 :poss-effect (and (have_item18))
)

(:action gamble_item19_2_6
 :parameters ()
 :precondition (and (at_x2) (at_y6))
 :effect (and )
 :poss-effect (and (have_item19))
)

(:action gamble_item20_2_6
 :parameters ()
 :precondition (and (at_x2) (at_y6))
 :effect (and )
 :poss-effect (and (have_item20))
)

(:action gamble_item21_2_6
 :parameters ()
 :precondition (and (at_x2) (at_y6))
 :effect (and )
 :poss-effect (and (have_item21))
)

(:action gamble_item22_2_6
 :parameters ()
 :precondition (and (at_x2) (at_y6))
 :effect (and )
 :poss-effect (and (have_item22))
)

(:action gamble_item23_2_6
 :parameters ()
 :precondition (and (at_x2) (at_y6))
 :effect (and )
 :poss-effect (and (have_item23))
)

(:action gamble_item24_2_6
 :parameters ()
 :precondition (and (at_x2) (at_y6))
 :effect (and )
 :poss-effect (and (have_item24))
)

(:action gamble_item25_2_6
 :parameters ()
 :precondition (and (at_x2) (at_y6))
 :effect (and )
 :poss-effect (and (have_item25))
)

(:action gamble_item26_2_6
 :parameters ()
 :precondition (and (at_x2) (at_y6))
 :effect (and )
 :poss-effect (and (have_item26))
)

(:action gamble_item27_2_6
 :parameters ()
 :precondition (and (at_x2) (at_y6))
 :effect (and )
 :poss-effect (and (have_item27))
)

(:action gamble_item28_2_6
 :parameters ()
 :precondition (and (at_x2) (at_y6))
 :effect (and )
 :poss-effect (and (have_item28))
)

(:action gamble_item29_2_6
 :parameters ()
 :precondition (and (at_x2) (at_y6))
 :effect (and )
 :poss-effect (and (have_item29))
)

(:action gamble_item30_2_6
 :parameters ()
 :precondition (and (at_x2) (at_y6))
 :effect (and )
 :poss-effect (and (have_item30))
)

(:action gamble_item31_2_6
 :parameters ()
 :precondition (and (at_x2) (at_y6))
 :effect (and )
 :poss-effect (and (have_item31))
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

(:action gamble_item8_2_7
 :parameters ()
 :precondition (and (at_x2) (at_y7))
 :effect (and )
 :poss-effect (and (have_item8))
)

(:action gamble_item9_2_7
 :parameters ()
 :precondition (and (at_x2) (at_y7))
 :effect (and )
 :poss-effect (and (have_item9))
)

(:action gamble_item10_2_7
 :parameters ()
 :precondition (and (at_x2) (at_y7))
 :effect (and )
 :poss-effect (and (have_item10))
)

(:action gamble_item11_2_7
 :parameters ()
 :precondition (and (at_x2) (at_y7))
 :effect (and )
 :poss-effect (and (have_item11))
)

(:action gamble_item12_2_7
 :parameters ()
 :precondition (and (at_x2) (at_y7))
 :effect (and )
 :poss-effect (and (have_item12))
)

(:action gamble_item13_2_7
 :parameters ()
 :precondition (and (at_x2) (at_y7))
 :effect (and )
 :poss-effect (and (have_item13))
)

(:action gamble_item14_2_7
 :parameters ()
 :precondition (and (at_x2) (at_y7))
 :effect (and )
 :poss-effect (and (have_item14))
)

(:action gamble_item15_2_7
 :parameters ()
 :precondition (and (at_x2) (at_y7))
 :effect (and )
 :poss-effect (and (have_item15))
)

(:action gamble_item16_2_7
 :parameters ()
 :precondition (and (at_x2) (at_y7))
 :effect (and )
 :poss-effect (and (have_item16))
)

(:action gamble_item17_2_7
 :parameters ()
 :precondition (and (at_x2) (at_y7))
 :effect (and )
 :poss-effect (and (have_item17))
)

(:action gamble_item18_2_7
 :parameters ()
 :precondition (and (at_x2) (at_y7))
 :effect (and )
 :poss-effect (and (have_item18))
)

(:action gamble_item19_2_7
 :parameters ()
 :precondition (and (at_x2) (at_y7))
 :effect (and )
 :poss-effect (and (have_item19))
)

(:action gamble_item20_2_7
 :parameters ()
 :precondition (and (at_x2) (at_y7))
 :effect (and )
 :poss-effect (and (have_item20))
)

(:action gamble_item21_2_7
 :parameters ()
 :precondition (and (at_x2) (at_y7))
 :effect (and )
 :poss-effect (and (have_item21))
)

(:action gamble_item22_2_7
 :parameters ()
 :precondition (and (at_x2) (at_y7))
 :effect (and )
 :poss-effect (and (have_item22))
)

(:action gamble_item23_2_7
 :parameters ()
 :precondition (and (at_x2) (at_y7))
 :effect (and )
 :poss-effect (and (have_item23))
)

(:action gamble_item24_2_7
 :parameters ()
 :precondition (and (at_x2) (at_y7))
 :effect (and )
 :poss-effect (and (have_item24))
)

(:action gamble_item25_2_7
 :parameters ()
 :precondition (and (at_x2) (at_y7))
 :effect (and )
 :poss-effect (and (have_item25))
)

(:action gamble_item26_2_7
 :parameters ()
 :precondition (and (at_x2) (at_y7))
 :effect (and )
 :poss-effect (and (have_item26))
)

(:action gamble_item27_2_7
 :parameters ()
 :precondition (and (at_x2) (at_y7))
 :effect (and )
 :poss-effect (and (have_item27))
)

(:action gamble_item28_2_7
 :parameters ()
 :precondition (and (at_x2) (at_y7))
 :effect (and )
 :poss-effect (and (have_item28))
)

(:action gamble_item29_2_7
 :parameters ()
 :precondition (and (at_x2) (at_y7))
 :effect (and )
 :poss-effect (and (have_item29))
)

(:action gamble_item30_2_7
 :parameters ()
 :precondition (and (at_x2) (at_y7))
 :effect (and )
 :poss-effect (and (have_item30))
)

(:action gamble_item31_2_7
 :parameters ()
 :precondition (and (at_x2) (at_y7))
 :effect (and )
 :poss-effect (and (have_item31))
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

(:action gamble_item8_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item8))
)

(:action gamble_item9_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item9))
)

(:action gamble_item10_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item10))
)

(:action gamble_item11_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item11))
)

(:action gamble_item12_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item12))
)

(:action gamble_item13_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item13))
)

(:action gamble_item14_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item14))
)

(:action gamble_item15_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item15))
)

(:action gamble_item16_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item16))
)

(:action gamble_item17_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item17))
)

(:action gamble_item18_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item18))
)

(:action gamble_item19_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item19))
)

(:action gamble_item20_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item20))
)

(:action gamble_item21_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item21))
)

(:action gamble_item22_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item22))
)

(:action gamble_item23_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item23))
)

(:action gamble_item24_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item24))
)

(:action gamble_item25_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item25))
)

(:action gamble_item26_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item26))
)

(:action gamble_item27_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item27))
)

(:action gamble_item28_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item28))
)

(:action gamble_item29_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item29))
)

(:action gamble_item30_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item30))
)

(:action gamble_item31_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item31))
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

(:action gamble_item8_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item8))
)

(:action gamble_item9_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item9))
)

(:action gamble_item10_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item10))
)

(:action gamble_item11_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item11))
)

(:action gamble_item12_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item12))
)

(:action gamble_item13_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item13))
)

(:action gamble_item14_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item14))
)

(:action gamble_item15_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item15))
)

(:action gamble_item16_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item16))
)

(:action gamble_item17_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item17))
)

(:action gamble_item18_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item18))
)

(:action gamble_item19_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item19))
)

(:action gamble_item20_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item20))
)

(:action gamble_item21_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item21))
)

(:action gamble_item22_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item22))
)

(:action gamble_item23_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item23))
)

(:action gamble_item24_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item24))
)

(:action gamble_item25_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item25))
)

(:action gamble_item26_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item26))
)

(:action gamble_item27_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item27))
)

(:action gamble_item28_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item28))
)

(:action gamble_item29_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item29))
)

(:action gamble_item30_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item30))
)

(:action gamble_item31_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item31))
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

(:action gamble_item8_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item8))
)

(:action gamble_item9_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item9))
)

(:action gamble_item10_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item10))
)

(:action gamble_item11_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item11))
)

(:action gamble_item12_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item12))
)

(:action gamble_item13_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item13))
)

(:action gamble_item14_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item14))
)

(:action gamble_item15_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item15))
)

(:action gamble_item16_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item16))
)

(:action gamble_item17_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item17))
)

(:action gamble_item18_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item18))
)

(:action gamble_item19_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item19))
)

(:action gamble_item20_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item20))
)

(:action gamble_item21_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item21))
)

(:action gamble_item22_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item22))
)

(:action gamble_item23_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item23))
)

(:action gamble_item24_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item24))
)

(:action gamble_item25_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item25))
)

(:action gamble_item26_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item26))
)

(:action gamble_item27_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item27))
)

(:action gamble_item28_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item28))
)

(:action gamble_item29_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item29))
)

(:action gamble_item30_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item30))
)

(:action gamble_item31_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item31))
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

(:action gamble_item8_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item8))
)

(:action gamble_item9_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item9))
)

(:action gamble_item10_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item10))
)

(:action gamble_item11_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item11))
)

(:action gamble_item12_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item12))
)

(:action gamble_item13_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item13))
)

(:action gamble_item14_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item14))
)

(:action gamble_item15_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item15))
)

(:action gamble_item16_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item16))
)

(:action gamble_item17_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item17))
)

(:action gamble_item18_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item18))
)

(:action gamble_item19_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item19))
)

(:action gamble_item20_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item20))
)

(:action gamble_item21_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item21))
)

(:action gamble_item22_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item22))
)

(:action gamble_item23_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item23))
)

(:action gamble_item24_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item24))
)

(:action gamble_item25_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item25))
)

(:action gamble_item26_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item26))
)

(:action gamble_item27_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item27))
)

(:action gamble_item28_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item28))
)

(:action gamble_item29_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item29))
)

(:action gamble_item30_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item30))
)

(:action gamble_item31_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item31))
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

(:action gamble_item8_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and )
 :poss-effect (and (have_item8))
)

(:action gamble_item9_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and )
 :poss-effect (and (have_item9))
)

(:action gamble_item10_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and )
 :poss-effect (and (have_item10))
)

(:action gamble_item11_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and )
 :poss-effect (and (have_item11))
)

(:action gamble_item12_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and )
 :poss-effect (and (have_item12))
)

(:action gamble_item13_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and )
 :poss-effect (and (have_item13))
)

(:action gamble_item14_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and )
 :poss-effect (and (have_item14))
)

(:action gamble_item15_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and )
 :poss-effect (and (have_item15))
)

(:action gamble_item16_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and )
 :poss-effect (and (have_item16))
)

(:action gamble_item17_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and )
 :poss-effect (and (have_item17))
)

(:action gamble_item18_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and )
 :poss-effect (and (have_item18))
)

(:action gamble_item19_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and )
 :poss-effect (and (have_item19))
)

(:action gamble_item20_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and )
 :poss-effect (and (have_item20))
)

(:action gamble_item21_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and )
 :poss-effect (and (have_item21))
)

(:action gamble_item22_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and )
 :poss-effect (and (have_item22))
)

(:action gamble_item23_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and )
 :poss-effect (and (have_item23))
)

(:action gamble_item24_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and )
 :poss-effect (and (have_item24))
)

(:action gamble_item25_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and )
 :poss-effect (and (have_item25))
)

(:action gamble_item26_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and )
 :poss-effect (and (have_item26))
)

(:action gamble_item27_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and )
 :poss-effect (and (have_item27))
)

(:action gamble_item28_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and )
 :poss-effect (and (have_item28))
)

(:action gamble_item29_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and )
 :poss-effect (and (have_item29))
)

(:action gamble_item30_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and )
 :poss-effect (and (have_item30))
)

(:action gamble_item31_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and )
 :poss-effect (and (have_item31))
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

(:action gamble_item8_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and )
 :poss-effect (and (have_item8))
)

(:action gamble_item9_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and )
 :poss-effect (and (have_item9))
)

(:action gamble_item10_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and )
 :poss-effect (and (have_item10))
)

(:action gamble_item11_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and )
 :poss-effect (and (have_item11))
)

(:action gamble_item12_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and )
 :poss-effect (and (have_item12))
)

(:action gamble_item13_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and )
 :poss-effect (and (have_item13))
)

(:action gamble_item14_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and )
 :poss-effect (and (have_item14))
)

(:action gamble_item15_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and )
 :poss-effect (and (have_item15))
)

(:action gamble_item16_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and )
 :poss-effect (and (have_item16))
)

(:action gamble_item17_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and )
 :poss-effect (and (have_item17))
)

(:action gamble_item18_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and )
 :poss-effect (and (have_item18))
)

(:action gamble_item19_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and )
 :poss-effect (and (have_item19))
)

(:action gamble_item20_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and )
 :poss-effect (and (have_item20))
)

(:action gamble_item21_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and )
 :poss-effect (and (have_item21))
)

(:action gamble_item22_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and )
 :poss-effect (and (have_item22))
)

(:action gamble_item23_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and )
 :poss-effect (and (have_item23))
)

(:action gamble_item24_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and )
 :poss-effect (and (have_item24))
)

(:action gamble_item25_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and )
 :poss-effect (and (have_item25))
)

(:action gamble_item26_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and )
 :poss-effect (and (have_item26))
)

(:action gamble_item27_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and )
 :poss-effect (and (have_item27))
)

(:action gamble_item28_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and )
 :poss-effect (and (have_item28))
)

(:action gamble_item29_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and )
 :poss-effect (and (have_item29))
)

(:action gamble_item30_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and )
 :poss-effect (and (have_item30))
)

(:action gamble_item31_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and )
 :poss-effect (and (have_item31))
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

(:action gamble_item8_3_6
 :parameters ()
 :precondition (and (at_x3) (at_y6))
 :effect (and )
 :poss-effect (and (have_item8))
)

(:action gamble_item9_3_6
 :parameters ()
 :precondition (and (at_x3) (at_y6))
 :effect (and )
 :poss-effect (and (have_item9))
)

(:action gamble_item10_3_6
 :parameters ()
 :precondition (and (at_x3) (at_y6))
 :effect (and )
 :poss-effect (and (have_item10))
)

(:action gamble_item11_3_6
 :parameters ()
 :precondition (and (at_x3) (at_y6))
 :effect (and )
 :poss-effect (and (have_item11))
)

(:action gamble_item12_3_6
 :parameters ()
 :precondition (and (at_x3) (at_y6))
 :effect (and )
 :poss-effect (and (have_item12))
)

(:action gamble_item13_3_6
 :parameters ()
 :precondition (and (at_x3) (at_y6))
 :effect (and )
 :poss-effect (and (have_item13))
)

(:action gamble_item14_3_6
 :parameters ()
 :precondition (and (at_x3) (at_y6))
 :effect (and )
 :poss-effect (and (have_item14))
)

(:action gamble_item15_3_6
 :parameters ()
 :precondition (and (at_x3) (at_y6))
 :effect (and )
 :poss-effect (and (have_item15))
)

(:action gamble_item16_3_6
 :parameters ()
 :precondition (and (at_x3) (at_y6))
 :effect (and )
 :poss-effect (and (have_item16))
)

(:action gamble_item17_3_6
 :parameters ()
 :precondition (and (at_x3) (at_y6))
 :effect (and )
 :poss-effect (and (have_item17))
)

(:action gamble_item18_3_6
 :parameters ()
 :precondition (and (at_x3) (at_y6))
 :effect (and )
 :poss-effect (and (have_item18))
)

(:action gamble_item19_3_6
 :parameters ()
 :precondition (and (at_x3) (at_y6))
 :effect (and )
 :poss-effect (and (have_item19))
)

(:action gamble_item20_3_6
 :parameters ()
 :precondition (and (at_x3) (at_y6))
 :effect (and )
 :poss-effect (and (have_item20))
)

(:action gamble_item21_3_6
 :parameters ()
 :precondition (and (at_x3) (at_y6))
 :effect (and )
 :poss-effect (and (have_item21))
)

(:action gamble_item22_3_6
 :parameters ()
 :precondition (and (at_x3) (at_y6))
 :effect (and )
 :poss-effect (and (have_item22))
)

(:action gamble_item23_3_6
 :parameters ()
 :precondition (and (at_x3) (at_y6))
 :effect (and )
 :poss-effect (and (have_item23))
)

(:action gamble_item24_3_6
 :parameters ()
 :precondition (and (at_x3) (at_y6))
 :effect (and )
 :poss-effect (and (have_item24))
)

(:action gamble_item25_3_6
 :parameters ()
 :precondition (and (at_x3) (at_y6))
 :effect (and )
 :poss-effect (and (have_item25))
)

(:action gamble_item26_3_6
 :parameters ()
 :precondition (and (at_x3) (at_y6))
 :effect (and )
 :poss-effect (and (have_item26))
)

(:action gamble_item27_3_6
 :parameters ()
 :precondition (and (at_x3) (at_y6))
 :effect (and )
 :poss-effect (and (have_item27))
)

(:action gamble_item28_3_6
 :parameters ()
 :precondition (and (at_x3) (at_y6))
 :effect (and )
 :poss-effect (and (have_item28))
)

(:action gamble_item29_3_6
 :parameters ()
 :precondition (and (at_x3) (at_y6))
 :effect (and )
 :poss-effect (and (have_item29))
)

(:action gamble_item30_3_6
 :parameters ()
 :precondition (and (at_x3) (at_y6))
 :effect (and )
 :poss-effect (and (have_item30))
)

(:action gamble_item31_3_6
 :parameters ()
 :precondition (and (at_x3) (at_y6))
 :effect (and )
 :poss-effect (and (have_item31))
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

(:action gamble_item8_3_7
 :parameters ()
 :precondition (and (at_x3) (at_y7))
 :effect (and )
 :poss-effect (and (have_item8))
)

(:action gamble_item9_3_7
 :parameters ()
 :precondition (and (at_x3) (at_y7))
 :effect (and )
 :poss-effect (and (have_item9))
)

(:action gamble_item10_3_7
 :parameters ()
 :precondition (and (at_x3) (at_y7))
 :effect (and )
 :poss-effect (and (have_item10))
)

(:action gamble_item11_3_7
 :parameters ()
 :precondition (and (at_x3) (at_y7))
 :effect (and )
 :poss-effect (and (have_item11))
)

(:action gamble_item12_3_7
 :parameters ()
 :precondition (and (at_x3) (at_y7))
 :effect (and )
 :poss-effect (and (have_item12))
)

(:action gamble_item13_3_7
 :parameters ()
 :precondition (and (at_x3) (at_y7))
 :effect (and )
 :poss-effect (and (have_item13))
)

(:action gamble_item14_3_7
 :parameters ()
 :precondition (and (at_x3) (at_y7))
 :effect (and )
 :poss-effect (and (have_item14))
)

(:action gamble_item15_3_7
 :parameters ()
 :precondition (and (at_x3) (at_y7))
 :effect (and )
 :poss-effect (and (have_item15))
)

(:action gamble_item16_3_7
 :parameters ()
 :precondition (and (at_x3) (at_y7))
 :effect (and )
 :poss-effect (and (have_item16))
)

(:action gamble_item17_3_7
 :parameters ()
 :precondition (and (at_x3) (at_y7))
 :effect (and )
 :poss-effect (and (have_item17))
)

(:action gamble_item18_3_7
 :parameters ()
 :precondition (and (at_x3) (at_y7))
 :effect (and )
 :poss-effect (and (have_item18))
)

(:action gamble_item19_3_7
 :parameters ()
 :precondition (and (at_x3) (at_y7))
 :effect (and )
 :poss-effect (and (have_item19))
)

(:action gamble_item20_3_7
 :parameters ()
 :precondition (and (at_x3) (at_y7))
 :effect (and )
 :poss-effect (and (have_item20))
)

(:action gamble_item21_3_7
 :parameters ()
 :precondition (and (at_x3) (at_y7))
 :effect (and )
 :poss-effect (and (have_item21))
)

(:action gamble_item22_3_7
 :parameters ()
 :precondition (and (at_x3) (at_y7))
 :effect (and )
 :poss-effect (and (have_item22))
)

(:action gamble_item23_3_7
 :parameters ()
 :precondition (and (at_x3) (at_y7))
 :effect (and )
 :poss-effect (and (have_item23))
)

(:action gamble_item24_3_7
 :parameters ()
 :precondition (and (at_x3) (at_y7))
 :effect (and )
 :poss-effect (and (have_item24))
)

(:action gamble_item25_3_7
 :parameters ()
 :precondition (and (at_x3) (at_y7))
 :effect (and )
 :poss-effect (and (have_item25))
)

(:action gamble_item26_3_7
 :parameters ()
 :precondition (and (at_x3) (at_y7))
 :effect (and )
 :poss-effect (and (have_item26))
)

(:action gamble_item27_3_7
 :parameters ()
 :precondition (and (at_x3) (at_y7))
 :effect (and )
 :poss-effect (and (have_item27))
)

(:action gamble_item28_3_7
 :parameters ()
 :precondition (and (at_x3) (at_y7))
 :effect (and )
 :poss-effect (and (have_item28))
)

(:action gamble_item29_3_7
 :parameters ()
 :precondition (and (at_x3) (at_y7))
 :effect (and )
 :poss-effect (and (have_item29))
)

(:action gamble_item30_3_7
 :parameters ()
 :precondition (and (at_x3) (at_y7))
 :effect (and )
 :poss-effect (and (have_item30))
)

(:action gamble_item31_3_7
 :parameters ()
 :precondition (and (at_x3) (at_y7))
 :effect (and )
 :poss-effect (and (have_item31))
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

(:action gamble_item8_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and )
 :poss-effect (and (have_item8))
)

(:action gamble_item9_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and )
 :poss-effect (and (have_item9))
)

(:action gamble_item10_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and )
 :poss-effect (and (have_item10))
)

(:action gamble_item11_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and )
 :poss-effect (and (have_item11))
)

(:action gamble_item12_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and )
 :poss-effect (and (have_item12))
)

(:action gamble_item13_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and )
 :poss-effect (and (have_item13))
)

(:action gamble_item14_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and )
 :poss-effect (and (have_item14))
)

(:action gamble_item15_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and )
 :poss-effect (and (have_item15))
)

(:action gamble_item16_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and )
 :poss-effect (and (have_item16))
)

(:action gamble_item17_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and )
 :poss-effect (and (have_item17))
)

(:action gamble_item18_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and )
 :poss-effect (and (have_item18))
)

(:action gamble_item19_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and )
 :poss-effect (and (have_item19))
)

(:action gamble_item20_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and )
 :poss-effect (and (have_item20))
)

(:action gamble_item21_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and )
 :poss-effect (and (have_item21))
)

(:action gamble_item22_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and )
 :poss-effect (and (have_item22))
)

(:action gamble_item23_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and )
 :poss-effect (and (have_item23))
)

(:action gamble_item24_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and )
 :poss-effect (and (have_item24))
)

(:action gamble_item25_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and )
 :poss-effect (and (have_item25))
)

(:action gamble_item26_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and )
 :poss-effect (and (have_item26))
)

(:action gamble_item27_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and )
 :poss-effect (and (have_item27))
)

(:action gamble_item28_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and )
 :poss-effect (and (have_item28))
)

(:action gamble_item29_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and )
 :poss-effect (and (have_item29))
)

(:action gamble_item30_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and )
 :poss-effect (and (have_item30))
)

(:action gamble_item31_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and )
 :poss-effect (and (have_item31))
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

(:action gamble_item8_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :effect (and )
 :poss-effect (and (have_item8))
)

(:action gamble_item9_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :effect (and )
 :poss-effect (and (have_item9))
)

(:action gamble_item10_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :effect (and )
 :poss-effect (and (have_item10))
)

(:action gamble_item11_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :effect (and )
 :poss-effect (and (have_item11))
)

(:action gamble_item12_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :effect (and )
 :poss-effect (and (have_item12))
)

(:action gamble_item13_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :effect (and )
 :poss-effect (and (have_item13))
)

(:action gamble_item14_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :effect (and )
 :poss-effect (and (have_item14))
)

(:action gamble_item15_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :effect (and )
 :poss-effect (and (have_item15))
)

(:action gamble_item16_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :effect (and )
 :poss-effect (and (have_item16))
)

(:action gamble_item17_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :effect (and )
 :poss-effect (and (have_item17))
)

(:action gamble_item18_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :effect (and )
 :poss-effect (and (have_item18))
)

(:action gamble_item19_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :effect (and )
 :poss-effect (and (have_item19))
)

(:action gamble_item20_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :effect (and )
 :poss-effect (and (have_item20))
)

(:action gamble_item21_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :effect (and )
 :poss-effect (and (have_item21))
)

(:action gamble_item22_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :effect (and )
 :poss-effect (and (have_item22))
)

(:action gamble_item23_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :effect (and )
 :poss-effect (and (have_item23))
)

(:action gamble_item24_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :effect (and )
 :poss-effect (and (have_item24))
)

(:action gamble_item25_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :effect (and )
 :poss-effect (and (have_item25))
)

(:action gamble_item26_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :effect (and )
 :poss-effect (and (have_item26))
)

(:action gamble_item27_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :effect (and )
 :poss-effect (and (have_item27))
)

(:action gamble_item28_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :effect (and )
 :poss-effect (and (have_item28))
)

(:action gamble_item29_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :effect (and )
 :poss-effect (and (have_item29))
)

(:action gamble_item30_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :effect (and )
 :poss-effect (and (have_item30))
)

(:action gamble_item31_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :effect (and )
 :poss-effect (and (have_item31))
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

(:action gamble_item8_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and )
 :poss-effect (and (have_item8))
)

(:action gamble_item9_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and )
 :poss-effect (and (have_item9))
)

(:action gamble_item10_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and )
 :poss-effect (and (have_item10))
)

(:action gamble_item11_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and )
 :poss-effect (and (have_item11))
)

(:action gamble_item12_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and )
 :poss-effect (and (have_item12))
)

(:action gamble_item13_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and )
 :poss-effect (and (have_item13))
)

(:action gamble_item14_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and )
 :poss-effect (and (have_item14))
)

(:action gamble_item15_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and )
 :poss-effect (and (have_item15))
)

(:action gamble_item16_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and )
 :poss-effect (and (have_item16))
)

(:action gamble_item17_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and )
 :poss-effect (and (have_item17))
)

(:action gamble_item18_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and )
 :poss-effect (and (have_item18))
)

(:action gamble_item19_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and )
 :poss-effect (and (have_item19))
)

(:action gamble_item20_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and )
 :poss-effect (and (have_item20))
)

(:action gamble_item21_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and )
 :poss-effect (and (have_item21))
)

(:action gamble_item22_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and )
 :poss-effect (and (have_item22))
)

(:action gamble_item23_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and )
 :poss-effect (and (have_item23))
)

(:action gamble_item24_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and )
 :poss-effect (and (have_item24))
)

(:action gamble_item25_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and )
 :poss-effect (and (have_item25))
)

(:action gamble_item26_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and )
 :poss-effect (and (have_item26))
)

(:action gamble_item27_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and )
 :poss-effect (and (have_item27))
)

(:action gamble_item28_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and )
 :poss-effect (and (have_item28))
)

(:action gamble_item29_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and )
 :poss-effect (and (have_item29))
)

(:action gamble_item30_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and )
 :poss-effect (and (have_item30))
)

(:action gamble_item31_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and )
 :poss-effect (and (have_item31))
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

(:action gamble_item8_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :effect (and )
 :poss-effect (and (have_item8))
)

(:action gamble_item9_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :effect (and )
 :poss-effect (and (have_item9))
)

(:action gamble_item10_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :effect (and )
 :poss-effect (and (have_item10))
)

(:action gamble_item11_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :effect (and )
 :poss-effect (and (have_item11))
)

(:action gamble_item12_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :effect (and )
 :poss-effect (and (have_item12))
)

(:action gamble_item13_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :effect (and )
 :poss-effect (and (have_item13))
)

(:action gamble_item14_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :effect (and )
 :poss-effect (and (have_item14))
)

(:action gamble_item15_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :effect (and )
 :poss-effect (and (have_item15))
)

(:action gamble_item16_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :effect (and )
 :poss-effect (and (have_item16))
)

(:action gamble_item17_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :effect (and )
 :poss-effect (and (have_item17))
)

(:action gamble_item18_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :effect (and )
 :poss-effect (and (have_item18))
)

(:action gamble_item19_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :effect (and )
 :poss-effect (and (have_item19))
)

(:action gamble_item20_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :effect (and )
 :poss-effect (and (have_item20))
)

(:action gamble_item21_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :effect (and )
 :poss-effect (and (have_item21))
)

(:action gamble_item22_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :effect (and )
 :poss-effect (and (have_item22))
)

(:action gamble_item23_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :effect (and )
 :poss-effect (and (have_item23))
)

(:action gamble_item24_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :effect (and )
 :poss-effect (and (have_item24))
)

(:action gamble_item25_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :effect (and )
 :poss-effect (and (have_item25))
)

(:action gamble_item26_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :effect (and )
 :poss-effect (and (have_item26))
)

(:action gamble_item27_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :effect (and )
 :poss-effect (and (have_item27))
)

(:action gamble_item28_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :effect (and )
 :poss-effect (and (have_item28))
)

(:action gamble_item29_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :effect (and )
 :poss-effect (and (have_item29))
)

(:action gamble_item30_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :effect (and )
 :poss-effect (and (have_item30))
)

(:action gamble_item31_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :effect (and )
 :poss-effect (and (have_item31))
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

(:action gamble_item8_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and )
 :poss-effect (and (have_item8))
)

(:action gamble_item9_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and )
 :poss-effect (and (have_item9))
)

(:action gamble_item10_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and )
 :poss-effect (and (have_item10))
)

(:action gamble_item11_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and )
 :poss-effect (and (have_item11))
)

(:action gamble_item12_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and )
 :poss-effect (and (have_item12))
)

(:action gamble_item13_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and )
 :poss-effect (and (have_item13))
)

(:action gamble_item14_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and )
 :poss-effect (and (have_item14))
)

(:action gamble_item15_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and )
 :poss-effect (and (have_item15))
)

(:action gamble_item16_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and )
 :poss-effect (and (have_item16))
)

(:action gamble_item17_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and )
 :poss-effect (and (have_item17))
)

(:action gamble_item18_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and )
 :poss-effect (and (have_item18))
)

(:action gamble_item19_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and )
 :poss-effect (and (have_item19))
)

(:action gamble_item20_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and )
 :poss-effect (and (have_item20))
)

(:action gamble_item21_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and )
 :poss-effect (and (have_item21))
)

(:action gamble_item22_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and )
 :poss-effect (and (have_item22))
)

(:action gamble_item23_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and )
 :poss-effect (and (have_item23))
)

(:action gamble_item24_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and )
 :poss-effect (and (have_item24))
)

(:action gamble_item25_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and )
 :poss-effect (and (have_item25))
)

(:action gamble_item26_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and )
 :poss-effect (and (have_item26))
)

(:action gamble_item27_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and )
 :poss-effect (and (have_item27))
)

(:action gamble_item28_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and )
 :poss-effect (and (have_item28))
)

(:action gamble_item29_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and )
 :poss-effect (and (have_item29))
)

(:action gamble_item30_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and )
 :poss-effect (and (have_item30))
)

(:action gamble_item31_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and )
 :poss-effect (and (have_item31))
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

(:action gamble_item8_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and )
 :poss-effect (and (have_item8))
)

(:action gamble_item9_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and )
 :poss-effect (and (have_item9))
)

(:action gamble_item10_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and )
 :poss-effect (and (have_item10))
)

(:action gamble_item11_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and )
 :poss-effect (and (have_item11))
)

(:action gamble_item12_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and )
 :poss-effect (and (have_item12))
)

(:action gamble_item13_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and )
 :poss-effect (and (have_item13))
)

(:action gamble_item14_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and )
 :poss-effect (and (have_item14))
)

(:action gamble_item15_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and )
 :poss-effect (and (have_item15))
)

(:action gamble_item16_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and )
 :poss-effect (and (have_item16))
)

(:action gamble_item17_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and )
 :poss-effect (and (have_item17))
)

(:action gamble_item18_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and )
 :poss-effect (and (have_item18))
)

(:action gamble_item19_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and )
 :poss-effect (and (have_item19))
)

(:action gamble_item20_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and )
 :poss-effect (and (have_item20))
)

(:action gamble_item21_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and )
 :poss-effect (and (have_item21))
)

(:action gamble_item22_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and )
 :poss-effect (and (have_item22))
)

(:action gamble_item23_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and )
 :poss-effect (and (have_item23))
)

(:action gamble_item24_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and )
 :poss-effect (and (have_item24))
)

(:action gamble_item25_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and )
 :poss-effect (and (have_item25))
)

(:action gamble_item26_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and )
 :poss-effect (and (have_item26))
)

(:action gamble_item27_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and )
 :poss-effect (and (have_item27))
)

(:action gamble_item28_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and )
 :poss-effect (and (have_item28))
)

(:action gamble_item29_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and )
 :poss-effect (and (have_item29))
)

(:action gamble_item30_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and )
 :poss-effect (and (have_item30))
)

(:action gamble_item31_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and )
 :poss-effect (and (have_item31))
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

(:action gamble_item8_4_6
 :parameters ()
 :precondition (and (at_x4) (at_y6))
 :effect (and )
 :poss-effect (and (have_item8))
)

(:action gamble_item9_4_6
 :parameters ()
 :precondition (and (at_x4) (at_y6))
 :effect (and )
 :poss-effect (and (have_item9))
)

(:action gamble_item10_4_6
 :parameters ()
 :precondition (and (at_x4) (at_y6))
 :effect (and )
 :poss-effect (and (have_item10))
)

(:action gamble_item11_4_6
 :parameters ()
 :precondition (and (at_x4) (at_y6))
 :effect (and )
 :poss-effect (and (have_item11))
)

(:action gamble_item12_4_6
 :parameters ()
 :precondition (and (at_x4) (at_y6))
 :effect (and )
 :poss-effect (and (have_item12))
)

(:action gamble_item13_4_6
 :parameters ()
 :precondition (and (at_x4) (at_y6))
 :effect (and )
 :poss-effect (and (have_item13))
)

(:action gamble_item14_4_6
 :parameters ()
 :precondition (and (at_x4) (at_y6))
 :effect (and )
 :poss-effect (and (have_item14))
)

(:action gamble_item15_4_6
 :parameters ()
 :precondition (and (at_x4) (at_y6))
 :effect (and )
 :poss-effect (and (have_item15))
)

(:action gamble_item16_4_6
 :parameters ()
 :precondition (and (at_x4) (at_y6))
 :effect (and )
 :poss-effect (and (have_item16))
)

(:action gamble_item17_4_6
 :parameters ()
 :precondition (and (at_x4) (at_y6))
 :effect (and )
 :poss-effect (and (have_item17))
)

(:action gamble_item18_4_6
 :parameters ()
 :precondition (and (at_x4) (at_y6))
 :effect (and )
 :poss-effect (and (have_item18))
)

(:action gamble_item19_4_6
 :parameters ()
 :precondition (and (at_x4) (at_y6))
 :effect (and )
 :poss-effect (and (have_item19))
)

(:action gamble_item20_4_6
 :parameters ()
 :precondition (and (at_x4) (at_y6))
 :effect (and )
 :poss-effect (and (have_item20))
)

(:action gamble_item21_4_6
 :parameters ()
 :precondition (and (at_x4) (at_y6))
 :effect (and )
 :poss-effect (and (have_item21))
)

(:action gamble_item22_4_6
 :parameters ()
 :precondition (and (at_x4) (at_y6))
 :effect (and )
 :poss-effect (and (have_item22))
)

(:action gamble_item23_4_6
 :parameters ()
 :precondition (and (at_x4) (at_y6))
 :effect (and )
 :poss-effect (and (have_item23))
)

(:action gamble_item24_4_6
 :parameters ()
 :precondition (and (at_x4) (at_y6))
 :effect (and )
 :poss-effect (and (have_item24))
)

(:action gamble_item25_4_6
 :parameters ()
 :precondition (and (at_x4) (at_y6))
 :effect (and )
 :poss-effect (and (have_item25))
)

(:action gamble_item26_4_6
 :parameters ()
 :precondition (and (at_x4) (at_y6))
 :effect (and )
 :poss-effect (and (have_item26))
)

(:action gamble_item27_4_6
 :parameters ()
 :precondition (and (at_x4) (at_y6))
 :effect (and )
 :poss-effect (and (have_item27))
)

(:action gamble_item28_4_6
 :parameters ()
 :precondition (and (at_x4) (at_y6))
 :effect (and )
 :poss-effect (and (have_item28))
)

(:action gamble_item29_4_6
 :parameters ()
 :precondition (and (at_x4) (at_y6))
 :effect (and )
 :poss-effect (and (have_item29))
)

(:action gamble_item30_4_6
 :parameters ()
 :precondition (and (at_x4) (at_y6))
 :effect (and )
 :poss-effect (and (have_item30))
)

(:action gamble_item31_4_6
 :parameters ()
 :precondition (and (at_x4) (at_y6))
 :effect (and )
 :poss-effect (and (have_item31))
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

(:action gamble_item8_4_7
 :parameters ()
 :precondition (and (at_x4) (at_y7))
 :effect (and )
 :poss-effect (and (have_item8))
)

(:action gamble_item9_4_7
 :parameters ()
 :precondition (and (at_x4) (at_y7))
 :effect (and )
 :poss-effect (and (have_item9))
)

(:action gamble_item10_4_7
 :parameters ()
 :precondition (and (at_x4) (at_y7))
 :effect (and )
 :poss-effect (and (have_item10))
)

(:action gamble_item11_4_7
 :parameters ()
 :precondition (and (at_x4) (at_y7))
 :effect (and )
 :poss-effect (and (have_item11))
)

(:action gamble_item12_4_7
 :parameters ()
 :precondition (and (at_x4) (at_y7))
 :effect (and )
 :poss-effect (and (have_item12))
)

(:action gamble_item13_4_7
 :parameters ()
 :precondition (and (at_x4) (at_y7))
 :effect (and )
 :poss-effect (and (have_item13))
)

(:action gamble_item14_4_7
 :parameters ()
 :precondition (and (at_x4) (at_y7))
 :effect (and )
 :poss-effect (and (have_item14))
)

(:action gamble_item15_4_7
 :parameters ()
 :precondition (and (at_x4) (at_y7))
 :effect (and )
 :poss-effect (and (have_item15))
)

(:action gamble_item16_4_7
 :parameters ()
 :precondition (and (at_x4) (at_y7))
 :effect (and )
 :poss-effect (and (have_item16))
)

(:action gamble_item17_4_7
 :parameters ()
 :precondition (and (at_x4) (at_y7))
 :effect (and )
 :poss-effect (and (have_item17))
)

(:action gamble_item18_4_7
 :parameters ()
 :precondition (and (at_x4) (at_y7))
 :effect (and )
 :poss-effect (and (have_item18))
)

(:action gamble_item19_4_7
 :parameters ()
 :precondition (and (at_x4) (at_y7))
 :effect (and )
 :poss-effect (and (have_item19))
)

(:action gamble_item20_4_7
 :parameters ()
 :precondition (and (at_x4) (at_y7))
 :effect (and )
 :poss-effect (and (have_item20))
)

(:action gamble_item21_4_7
 :parameters ()
 :precondition (and (at_x4) (at_y7))
 :effect (and )
 :poss-effect (and (have_item21))
)

(:action gamble_item22_4_7
 :parameters ()
 :precondition (and (at_x4) (at_y7))
 :effect (and )
 :poss-effect (and (have_item22))
)

(:action gamble_item23_4_7
 :parameters ()
 :precondition (and (at_x4) (at_y7))
 :effect (and )
 :poss-effect (and (have_item23))
)

(:action gamble_item24_4_7
 :parameters ()
 :precondition (and (at_x4) (at_y7))
 :effect (and )
 :poss-effect (and (have_item24))
)

(:action gamble_item25_4_7
 :parameters ()
 :precondition (and (at_x4) (at_y7))
 :effect (and )
 :poss-effect (and (have_item25))
)

(:action gamble_item26_4_7
 :parameters ()
 :precondition (and (at_x4) (at_y7))
 :effect (and )
 :poss-effect (and (have_item26))
)

(:action gamble_item27_4_7
 :parameters ()
 :precondition (and (at_x4) (at_y7))
 :effect (and )
 :poss-effect (and (have_item27))
)

(:action gamble_item28_4_7
 :parameters ()
 :precondition (and (at_x4) (at_y7))
 :effect (and )
 :poss-effect (and (have_item28))
)

(:action gamble_item29_4_7
 :parameters ()
 :precondition (and (at_x4) (at_y7))
 :effect (and )
 :poss-effect (and (have_item29))
)

(:action gamble_item30_4_7
 :parameters ()
 :precondition (and (at_x4) (at_y7))
 :effect (and )
 :poss-effect (and (have_item30))
)

(:action gamble_item31_4_7
 :parameters ()
 :precondition (and (at_x4) (at_y7))
 :effect (and )
 :poss-effect (and (have_item31))
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

(:action gamble_item8_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and )
 :poss-effect (and (have_item8))
)

(:action gamble_item9_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and )
 :poss-effect (and (have_item9))
)

(:action gamble_item10_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and )
 :poss-effect (and (have_item10))
)

(:action gamble_item11_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and )
 :poss-effect (and (have_item11))
)

(:action gamble_item12_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and )
 :poss-effect (and (have_item12))
)

(:action gamble_item13_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and )
 :poss-effect (and (have_item13))
)

(:action gamble_item14_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and )
 :poss-effect (and (have_item14))
)

(:action gamble_item15_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and )
 :poss-effect (and (have_item15))
)

(:action gamble_item16_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and )
 :poss-effect (and (have_item16))
)

(:action gamble_item17_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and )
 :poss-effect (and (have_item17))
)

(:action gamble_item18_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and )
 :poss-effect (and (have_item18))
)

(:action gamble_item19_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and )
 :poss-effect (and (have_item19))
)

(:action gamble_item20_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and )
 :poss-effect (and (have_item20))
)

(:action gamble_item21_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and )
 :poss-effect (and (have_item21))
)

(:action gamble_item22_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and )
 :poss-effect (and (have_item22))
)

(:action gamble_item23_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and )
 :poss-effect (and (have_item23))
)

(:action gamble_item24_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and )
 :poss-effect (and (have_item24))
)

(:action gamble_item25_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and )
 :poss-effect (and (have_item25))
)

(:action gamble_item26_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and )
 :poss-effect (and (have_item26))
)

(:action gamble_item27_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and )
 :poss-effect (and (have_item27))
)

(:action gamble_item28_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and )
 :poss-effect (and (have_item28))
)

(:action gamble_item29_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and )
 :poss-effect (and (have_item29))
)

(:action gamble_item30_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and )
 :poss-effect (and (have_item30))
)

(:action gamble_item31_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and )
 :poss-effect (and (have_item31))
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

(:action gamble_item8_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :effect (and )
 :poss-effect (and (have_item8))
)

(:action gamble_item9_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :effect (and )
 :poss-effect (and (have_item9))
)

(:action gamble_item10_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :effect (and )
 :poss-effect (and (have_item10))
)

(:action gamble_item11_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :effect (and )
 :poss-effect (and (have_item11))
)

(:action gamble_item12_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :effect (and )
 :poss-effect (and (have_item12))
)

(:action gamble_item13_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :effect (and )
 :poss-effect (and (have_item13))
)

(:action gamble_item14_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :effect (and )
 :poss-effect (and (have_item14))
)

(:action gamble_item15_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :effect (and )
 :poss-effect (and (have_item15))
)

(:action gamble_item16_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :effect (and )
 :poss-effect (and (have_item16))
)

(:action gamble_item17_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :effect (and )
 :poss-effect (and (have_item17))
)

(:action gamble_item18_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :effect (and )
 :poss-effect (and (have_item18))
)

(:action gamble_item19_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :effect (and )
 :poss-effect (and (have_item19))
)

(:action gamble_item20_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :effect (and )
 :poss-effect (and (have_item20))
)

(:action gamble_item21_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :effect (and )
 :poss-effect (and (have_item21))
)

(:action gamble_item22_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :effect (and )
 :poss-effect (and (have_item22))
)

(:action gamble_item23_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :effect (and )
 :poss-effect (and (have_item23))
)

(:action gamble_item24_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :effect (and )
 :poss-effect (and (have_item24))
)

(:action gamble_item25_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :effect (and )
 :poss-effect (and (have_item25))
)

(:action gamble_item26_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :effect (and )
 :poss-effect (and (have_item26))
)

(:action gamble_item27_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :effect (and )
 :poss-effect (and (have_item27))
)

(:action gamble_item28_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :effect (and )
 :poss-effect (and (have_item28))
)

(:action gamble_item29_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :effect (and )
 :poss-effect (and (have_item29))
)

(:action gamble_item30_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :effect (and )
 :poss-effect (and (have_item30))
)

(:action gamble_item31_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :effect (and )
 :poss-effect (and (have_item31))
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

(:action gamble_item8_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and )
 :poss-effect (and (have_item8))
)

(:action gamble_item9_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and )
 :poss-effect (and (have_item9))
)

(:action gamble_item10_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and )
 :poss-effect (and (have_item10))
)

(:action gamble_item11_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and )
 :poss-effect (and (have_item11))
)

(:action gamble_item12_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and )
 :poss-effect (and (have_item12))
)

(:action gamble_item13_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and )
 :poss-effect (and (have_item13))
)

(:action gamble_item14_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and )
 :poss-effect (and (have_item14))
)

(:action gamble_item15_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and )
 :poss-effect (and (have_item15))
)

(:action gamble_item16_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and )
 :poss-effect (and (have_item16))
)

(:action gamble_item17_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and )
 :poss-effect (and (have_item17))
)

(:action gamble_item18_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and )
 :poss-effect (and (have_item18))
)

(:action gamble_item19_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and )
 :poss-effect (and (have_item19))
)

(:action gamble_item20_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and )
 :poss-effect (and (have_item20))
)

(:action gamble_item21_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and )
 :poss-effect (and (have_item21))
)

(:action gamble_item22_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and )
 :poss-effect (and (have_item22))
)

(:action gamble_item23_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and )
 :poss-effect (and (have_item23))
)

(:action gamble_item24_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and )
 :poss-effect (and (have_item24))
)

(:action gamble_item25_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and )
 :poss-effect (and (have_item25))
)

(:action gamble_item26_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and )
 :poss-effect (and (have_item26))
)

(:action gamble_item27_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and )
 :poss-effect (and (have_item27))
)

(:action gamble_item28_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and )
 :poss-effect (and (have_item28))
)

(:action gamble_item29_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and )
 :poss-effect (and (have_item29))
)

(:action gamble_item30_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and )
 :poss-effect (and (have_item30))
)

(:action gamble_item31_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and )
 :poss-effect (and (have_item31))
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

(:action gamble_item8_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and )
 :poss-effect (and (have_item8))
)

(:action gamble_item9_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and )
 :poss-effect (and (have_item9))
)

(:action gamble_item10_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and )
 :poss-effect (and (have_item10))
)

(:action gamble_item11_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and )
 :poss-effect (and (have_item11))
)

(:action gamble_item12_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and )
 :poss-effect (and (have_item12))
)

(:action gamble_item13_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and )
 :poss-effect (and (have_item13))
)

(:action gamble_item14_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and )
 :poss-effect (and (have_item14))
)

(:action gamble_item15_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and )
 :poss-effect (and (have_item15))
)

(:action gamble_item16_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and )
 :poss-effect (and (have_item16))
)

(:action gamble_item17_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and )
 :poss-effect (and (have_item17))
)

(:action gamble_item18_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and )
 :poss-effect (and (have_item18))
)

(:action gamble_item19_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and )
 :poss-effect (and (have_item19))
)

(:action gamble_item20_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and )
 :poss-effect (and (have_item20))
)

(:action gamble_item21_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and )
 :poss-effect (and (have_item21))
)

(:action gamble_item22_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and )
 :poss-effect (and (have_item22))
)

(:action gamble_item23_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and )
 :poss-effect (and (have_item23))
)

(:action gamble_item24_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and )
 :poss-effect (and (have_item24))
)

(:action gamble_item25_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and )
 :poss-effect (and (have_item25))
)

(:action gamble_item26_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and )
 :poss-effect (and (have_item26))
)

(:action gamble_item27_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and )
 :poss-effect (and (have_item27))
)

(:action gamble_item28_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and )
 :poss-effect (and (have_item28))
)

(:action gamble_item29_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and )
 :poss-effect (and (have_item29))
)

(:action gamble_item30_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and )
 :poss-effect (and (have_item30))
)

(:action gamble_item31_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and )
 :poss-effect (and (have_item31))
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

(:action gamble_item8_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and )
 :poss-effect (and (have_item8))
)

(:action gamble_item9_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and )
 :poss-effect (and (have_item9))
)

(:action gamble_item10_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and )
 :poss-effect (and (have_item10))
)

(:action gamble_item11_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and )
 :poss-effect (and (have_item11))
)

(:action gamble_item12_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and )
 :poss-effect (and (have_item12))
)

(:action gamble_item13_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and )
 :poss-effect (and (have_item13))
)

(:action gamble_item14_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and )
 :poss-effect (and (have_item14))
)

(:action gamble_item15_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and )
 :poss-effect (and (have_item15))
)

(:action gamble_item16_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and )
 :poss-effect (and (have_item16))
)

(:action gamble_item17_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and )
 :poss-effect (and (have_item17))
)

(:action gamble_item18_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and )
 :poss-effect (and (have_item18))
)

(:action gamble_item19_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and )
 :poss-effect (and (have_item19))
)

(:action gamble_item20_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and )
 :poss-effect (and (have_item20))
)

(:action gamble_item21_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and )
 :poss-effect (and (have_item21))
)

(:action gamble_item22_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and )
 :poss-effect (and (have_item22))
)

(:action gamble_item23_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and )
 :poss-effect (and (have_item23))
)

(:action gamble_item24_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and )
 :poss-effect (and (have_item24))
)

(:action gamble_item25_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and )
 :poss-effect (and (have_item25))
)

(:action gamble_item26_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and )
 :poss-effect (and (have_item26))
)

(:action gamble_item27_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and )
 :poss-effect (and (have_item27))
)

(:action gamble_item28_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and )
 :poss-effect (and (have_item28))
)

(:action gamble_item29_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and )
 :poss-effect (and (have_item29))
)

(:action gamble_item30_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and )
 :poss-effect (and (have_item30))
)

(:action gamble_item31_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and )
 :poss-effect (and (have_item31))
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

(:action gamble_item8_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :effect (and )
 :poss-effect (and (have_item8))
)

(:action gamble_item9_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :effect (and )
 :poss-effect (and (have_item9))
)

(:action gamble_item10_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :effect (and )
 :poss-effect (and (have_item10))
)

(:action gamble_item11_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :effect (and )
 :poss-effect (and (have_item11))
)

(:action gamble_item12_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :effect (and )
 :poss-effect (and (have_item12))
)

(:action gamble_item13_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :effect (and )
 :poss-effect (and (have_item13))
)

(:action gamble_item14_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :effect (and )
 :poss-effect (and (have_item14))
)

(:action gamble_item15_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :effect (and )
 :poss-effect (and (have_item15))
)

(:action gamble_item16_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :effect (and )
 :poss-effect (and (have_item16))
)

(:action gamble_item17_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :effect (and )
 :poss-effect (and (have_item17))
)

(:action gamble_item18_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :effect (and )
 :poss-effect (and (have_item18))
)

(:action gamble_item19_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :effect (and )
 :poss-effect (and (have_item19))
)

(:action gamble_item20_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :effect (and )
 :poss-effect (and (have_item20))
)

(:action gamble_item21_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :effect (and )
 :poss-effect (and (have_item21))
)

(:action gamble_item22_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :effect (and )
 :poss-effect (and (have_item22))
)

(:action gamble_item23_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :effect (and )
 :poss-effect (and (have_item23))
)

(:action gamble_item24_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :effect (and )
 :poss-effect (and (have_item24))
)

(:action gamble_item25_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :effect (and )
 :poss-effect (and (have_item25))
)

(:action gamble_item26_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :effect (and )
 :poss-effect (and (have_item26))
)

(:action gamble_item27_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :effect (and )
 :poss-effect (and (have_item27))
)

(:action gamble_item28_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :effect (and )
 :poss-effect (and (have_item28))
)

(:action gamble_item29_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :effect (and )
 :poss-effect (and (have_item29))
)

(:action gamble_item30_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :effect (and )
 :poss-effect (and (have_item30))
)

(:action gamble_item31_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :effect (and )
 :poss-effect (and (have_item31))
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

(:action gamble_item8_5_6
 :parameters ()
 :precondition (and (at_x5) (at_y6))
 :effect (and )
 :poss-effect (and (have_item8))
)

(:action gamble_item9_5_6
 :parameters ()
 :precondition (and (at_x5) (at_y6))
 :effect (and )
 :poss-effect (and (have_item9))
)

(:action gamble_item10_5_6
 :parameters ()
 :precondition (and (at_x5) (at_y6))
 :effect (and )
 :poss-effect (and (have_item10))
)

(:action gamble_item11_5_6
 :parameters ()
 :precondition (and (at_x5) (at_y6))
 :effect (and )
 :poss-effect (and (have_item11))
)

(:action gamble_item12_5_6
 :parameters ()
 :precondition (and (at_x5) (at_y6))
 :effect (and )
 :poss-effect (and (have_item12))
)

(:action gamble_item13_5_6
 :parameters ()
 :precondition (and (at_x5) (at_y6))
 :effect (and )
 :poss-effect (and (have_item13))
)

(:action gamble_item14_5_6
 :parameters ()
 :precondition (and (at_x5) (at_y6))
 :effect (and )
 :poss-effect (and (have_item14))
)

(:action gamble_item15_5_6
 :parameters ()
 :precondition (and (at_x5) (at_y6))
 :effect (and )
 :poss-effect (and (have_item15))
)

(:action gamble_item16_5_6
 :parameters ()
 :precondition (and (at_x5) (at_y6))
 :effect (and )
 :poss-effect (and (have_item16))
)

(:action gamble_item17_5_6
 :parameters ()
 :precondition (and (at_x5) (at_y6))
 :effect (and )
 :poss-effect (and (have_item17))
)

(:action gamble_item18_5_6
 :parameters ()
 :precondition (and (at_x5) (at_y6))
 :effect (and )
 :poss-effect (and (have_item18))
)

(:action gamble_item19_5_6
 :parameters ()
 :precondition (and (at_x5) (at_y6))
 :effect (and )
 :poss-effect (and (have_item19))
)

(:action gamble_item20_5_6
 :parameters ()
 :precondition (and (at_x5) (at_y6))
 :effect (and )
 :poss-effect (and (have_item20))
)

(:action gamble_item21_5_6
 :parameters ()
 :precondition (and (at_x5) (at_y6))
 :effect (and )
 :poss-effect (and (have_item21))
)

(:action gamble_item22_5_6
 :parameters ()
 :precondition (and (at_x5) (at_y6))
 :effect (and )
 :poss-effect (and (have_item22))
)

(:action gamble_item23_5_6
 :parameters ()
 :precondition (and (at_x5) (at_y6))
 :effect (and )
 :poss-effect (and (have_item23))
)

(:action gamble_item24_5_6
 :parameters ()
 :precondition (and (at_x5) (at_y6))
 :effect (and )
 :poss-effect (and (have_item24))
)

(:action gamble_item25_5_6
 :parameters ()
 :precondition (and (at_x5) (at_y6))
 :effect (and )
 :poss-effect (and (have_item25))
)

(:action gamble_item26_5_6
 :parameters ()
 :precondition (and (at_x5) (at_y6))
 :effect (and )
 :poss-effect (and (have_item26))
)

(:action gamble_item27_5_6
 :parameters ()
 :precondition (and (at_x5) (at_y6))
 :effect (and )
 :poss-effect (and (have_item27))
)

(:action gamble_item28_5_6
 :parameters ()
 :precondition (and (at_x5) (at_y6))
 :effect (and )
 :poss-effect (and (have_item28))
)

(:action gamble_item29_5_6
 :parameters ()
 :precondition (and (at_x5) (at_y6))
 :effect (and )
 :poss-effect (and (have_item29))
)

(:action gamble_item30_5_6
 :parameters ()
 :precondition (and (at_x5) (at_y6))
 :effect (and )
 :poss-effect (and (have_item30))
)

(:action gamble_item31_5_6
 :parameters ()
 :precondition (and (at_x5) (at_y6))
 :effect (and )
 :poss-effect (and (have_item31))
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

(:action gamble_item8_5_7
 :parameters ()
 :precondition (and (at_x5) (at_y7))
 :effect (and )
 :poss-effect (and (have_item8))
)

(:action gamble_item9_5_7
 :parameters ()
 :precondition (and (at_x5) (at_y7))
 :effect (and )
 :poss-effect (and (have_item9))
)

(:action gamble_item10_5_7
 :parameters ()
 :precondition (and (at_x5) (at_y7))
 :effect (and )
 :poss-effect (and (have_item10))
)

(:action gamble_item11_5_7
 :parameters ()
 :precondition (and (at_x5) (at_y7))
 :effect (and )
 :poss-effect (and (have_item11))
)

(:action gamble_item12_5_7
 :parameters ()
 :precondition (and (at_x5) (at_y7))
 :effect (and )
 :poss-effect (and (have_item12))
)

(:action gamble_item13_5_7
 :parameters ()
 :precondition (and (at_x5) (at_y7))
 :effect (and )
 :poss-effect (and (have_item13))
)

(:action gamble_item14_5_7
 :parameters ()
 :precondition (and (at_x5) (at_y7))
 :effect (and )
 :poss-effect (and (have_item14))
)

(:action gamble_item15_5_7
 :parameters ()
 :precondition (and (at_x5) (at_y7))
 :effect (and )
 :poss-effect (and (have_item15))
)

(:action gamble_item16_5_7
 :parameters ()
 :precondition (and (at_x5) (at_y7))
 :effect (and )
 :poss-effect (and (have_item16))
)

(:action gamble_item17_5_7
 :parameters ()
 :precondition (and (at_x5) (at_y7))
 :effect (and )
 :poss-effect (and (have_item17))
)

(:action gamble_item18_5_7
 :parameters ()
 :precondition (and (at_x5) (at_y7))
 :effect (and )
 :poss-effect (and (have_item18))
)

(:action gamble_item19_5_7
 :parameters ()
 :precondition (and (at_x5) (at_y7))
 :effect (and )
 :poss-effect (and (have_item19))
)

(:action gamble_item20_5_7
 :parameters ()
 :precondition (and (at_x5) (at_y7))
 :effect (and )
 :poss-effect (and (have_item20))
)

(:action gamble_item21_5_7
 :parameters ()
 :precondition (and (at_x5) (at_y7))
 :effect (and )
 :poss-effect (and (have_item21))
)

(:action gamble_item22_5_7
 :parameters ()
 :precondition (and (at_x5) (at_y7))
 :effect (and )
 :poss-effect (and (have_item22))
)

(:action gamble_item23_5_7
 :parameters ()
 :precondition (and (at_x5) (at_y7))
 :effect (and )
 :poss-effect (and (have_item23))
)

(:action gamble_item24_5_7
 :parameters ()
 :precondition (and (at_x5) (at_y7))
 :effect (and )
 :poss-effect (and (have_item24))
)

(:action gamble_item25_5_7
 :parameters ()
 :precondition (and (at_x5) (at_y7))
 :effect (and )
 :poss-effect (and (have_item25))
)

(:action gamble_item26_5_7
 :parameters ()
 :precondition (and (at_x5) (at_y7))
 :effect (and )
 :poss-effect (and (have_item26))
)

(:action gamble_item27_5_7
 :parameters ()
 :precondition (and (at_x5) (at_y7))
 :effect (and )
 :poss-effect (and (have_item27))
)

(:action gamble_item28_5_7
 :parameters ()
 :precondition (and (at_x5) (at_y7))
 :effect (and )
 :poss-effect (and (have_item28))
)

(:action gamble_item29_5_7
 :parameters ()
 :precondition (and (at_x5) (at_y7))
 :effect (and )
 :poss-effect (and (have_item29))
)

(:action gamble_item30_5_7
 :parameters ()
 :precondition (and (at_x5) (at_y7))
 :effect (and )
 :poss-effect (and (have_item30))
)

(:action gamble_item31_5_7
 :parameters ()
 :precondition (and (at_x5) (at_y7))
 :effect (and )
 :poss-effect (and (have_item31))
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

(:action gamble_item8_6_0
 :parameters ()
 :precondition (and (at_x6) (at_y0))
 :effect (and )
 :poss-effect (and (have_item8))
)

(:action gamble_item9_6_0
 :parameters ()
 :precondition (and (at_x6) (at_y0))
 :effect (and )
 :poss-effect (and (have_item9))
)

(:action gamble_item10_6_0
 :parameters ()
 :precondition (and (at_x6) (at_y0))
 :effect (and )
 :poss-effect (and (have_item10))
)

(:action gamble_item11_6_0
 :parameters ()
 :precondition (and (at_x6) (at_y0))
 :effect (and )
 :poss-effect (and (have_item11))
)

(:action gamble_item12_6_0
 :parameters ()
 :precondition (and (at_x6) (at_y0))
 :effect (and )
 :poss-effect (and (have_item12))
)

(:action gamble_item13_6_0
 :parameters ()
 :precondition (and (at_x6) (at_y0))
 :effect (and )
 :poss-effect (and (have_item13))
)

(:action gamble_item14_6_0
 :parameters ()
 :precondition (and (at_x6) (at_y0))
 :effect (and )
 :poss-effect (and (have_item14))
)

(:action gamble_item15_6_0
 :parameters ()
 :precondition (and (at_x6) (at_y0))
 :effect (and )
 :poss-effect (and (have_item15))
)

(:action gamble_item16_6_0
 :parameters ()
 :precondition (and (at_x6) (at_y0))
 :effect (and )
 :poss-effect (and (have_item16))
)

(:action gamble_item17_6_0
 :parameters ()
 :precondition (and (at_x6) (at_y0))
 :effect (and )
 :poss-effect (and (have_item17))
)

(:action gamble_item18_6_0
 :parameters ()
 :precondition (and (at_x6) (at_y0))
 :effect (and )
 :poss-effect (and (have_item18))
)

(:action gamble_item19_6_0
 :parameters ()
 :precondition (and (at_x6) (at_y0))
 :effect (and )
 :poss-effect (and (have_item19))
)

(:action gamble_item20_6_0
 :parameters ()
 :precondition (and (at_x6) (at_y0))
 :effect (and )
 :poss-effect (and (have_item20))
)

(:action gamble_item21_6_0
 :parameters ()
 :precondition (and (at_x6) (at_y0))
 :effect (and )
 :poss-effect (and (have_item21))
)

(:action gamble_item22_6_0
 :parameters ()
 :precondition (and (at_x6) (at_y0))
 :effect (and )
 :poss-effect (and (have_item22))
)

(:action gamble_item23_6_0
 :parameters ()
 :precondition (and (at_x6) (at_y0))
 :effect (and )
 :poss-effect (and (have_item23))
)

(:action gamble_item24_6_0
 :parameters ()
 :precondition (and (at_x6) (at_y0))
 :effect (and )
 :poss-effect (and (have_item24))
)

(:action gamble_item25_6_0
 :parameters ()
 :precondition (and (at_x6) (at_y0))
 :effect (and )
 :poss-effect (and (have_item25))
)

(:action gamble_item26_6_0
 :parameters ()
 :precondition (and (at_x6) (at_y0))
 :effect (and )
 :poss-effect (and (have_item26))
)

(:action gamble_item27_6_0
 :parameters ()
 :precondition (and (at_x6) (at_y0))
 :effect (and )
 :poss-effect (and (have_item27))
)

(:action gamble_item28_6_0
 :parameters ()
 :precondition (and (at_x6) (at_y0))
 :effect (and )
 :poss-effect (and (have_item28))
)

(:action gamble_item29_6_0
 :parameters ()
 :precondition (and (at_x6) (at_y0))
 :effect (and )
 :poss-effect (and (have_item29))
)

(:action gamble_item30_6_0
 :parameters ()
 :precondition (and (at_x6) (at_y0))
 :effect (and )
 :poss-effect (and (have_item30))
)

(:action gamble_item31_6_0
 :parameters ()
 :precondition (and (at_x6) (at_y0))
 :effect (and )
 :poss-effect (and (have_item31))
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

(:action gamble_item8_6_1
 :parameters ()
 :precondition (and (at_x6) (at_y1))
 :effect (and )
 :poss-effect (and (have_item8))
)

(:action gamble_item9_6_1
 :parameters ()
 :precondition (and (at_x6) (at_y1))
 :effect (and )
 :poss-effect (and (have_item9))
)

(:action gamble_item10_6_1
 :parameters ()
 :precondition (and (at_x6) (at_y1))
 :effect (and )
 :poss-effect (and (have_item10))
)

(:action gamble_item11_6_1
 :parameters ()
 :precondition (and (at_x6) (at_y1))
 :effect (and )
 :poss-effect (and (have_item11))
)

(:action gamble_item12_6_1
 :parameters ()
 :precondition (and (at_x6) (at_y1))
 :effect (and )
 :poss-effect (and (have_item12))
)

(:action gamble_item13_6_1
 :parameters ()
 :precondition (and (at_x6) (at_y1))
 :effect (and )
 :poss-effect (and (have_item13))
)

(:action gamble_item14_6_1
 :parameters ()
 :precondition (and (at_x6) (at_y1))
 :effect (and )
 :poss-effect (and (have_item14))
)

(:action gamble_item15_6_1
 :parameters ()
 :precondition (and (at_x6) (at_y1))
 :effect (and )
 :poss-effect (and (have_item15))
)

(:action gamble_item16_6_1
 :parameters ()
 :precondition (and (at_x6) (at_y1))
 :effect (and )
 :poss-effect (and (have_item16))
)

(:action gamble_item17_6_1
 :parameters ()
 :precondition (and (at_x6) (at_y1))
 :effect (and )
 :poss-effect (and (have_item17))
)

(:action gamble_item18_6_1
 :parameters ()
 :precondition (and (at_x6) (at_y1))
 :effect (and )
 :poss-effect (and (have_item18))
)

(:action gamble_item19_6_1
 :parameters ()
 :precondition (and (at_x6) (at_y1))
 :effect (and )
 :poss-effect (and (have_item19))
)

(:action gamble_item20_6_1
 :parameters ()
 :precondition (and (at_x6) (at_y1))
 :effect (and )
 :poss-effect (and (have_item20))
)

(:action gamble_item21_6_1
 :parameters ()
 :precondition (and (at_x6) (at_y1))
 :effect (and )
 :poss-effect (and (have_item21))
)

(:action gamble_item22_6_1
 :parameters ()
 :precondition (and (at_x6) (at_y1))
 :effect (and )
 :poss-effect (and (have_item22))
)

(:action gamble_item23_6_1
 :parameters ()
 :precondition (and (at_x6) (at_y1))
 :effect (and )
 :poss-effect (and (have_item23))
)

(:action gamble_item24_6_1
 :parameters ()
 :precondition (and (at_x6) (at_y1))
 :effect (and )
 :poss-effect (and (have_item24))
)

(:action gamble_item25_6_1
 :parameters ()
 :precondition (and (at_x6) (at_y1))
 :effect (and )
 :poss-effect (and (have_item25))
)

(:action gamble_item26_6_1
 :parameters ()
 :precondition (and (at_x6) (at_y1))
 :effect (and )
 :poss-effect (and (have_item26))
)

(:action gamble_item27_6_1
 :parameters ()
 :precondition (and (at_x6) (at_y1))
 :effect (and )
 :poss-effect (and (have_item27))
)

(:action gamble_item28_6_1
 :parameters ()
 :precondition (and (at_x6) (at_y1))
 :effect (and )
 :poss-effect (and (have_item28))
)

(:action gamble_item29_6_1
 :parameters ()
 :precondition (and (at_x6) (at_y1))
 :effect (and )
 :poss-effect (and (have_item29))
)

(:action gamble_item30_6_1
 :parameters ()
 :precondition (and (at_x6) (at_y1))
 :effect (and )
 :poss-effect (and (have_item30))
)

(:action gamble_item31_6_1
 :parameters ()
 :precondition (and (at_x6) (at_y1))
 :effect (and )
 :poss-effect (and (have_item31))
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

(:action gamble_item8_6_2
 :parameters ()
 :precondition (and (at_x6) (at_y2))
 :effect (and )
 :poss-effect (and (have_item8))
)

(:action gamble_item9_6_2
 :parameters ()
 :precondition (and (at_x6) (at_y2))
 :effect (and )
 :poss-effect (and (have_item9))
)

(:action gamble_item10_6_2
 :parameters ()
 :precondition (and (at_x6) (at_y2))
 :effect (and )
 :poss-effect (and (have_item10))
)

(:action gamble_item11_6_2
 :parameters ()
 :precondition (and (at_x6) (at_y2))
 :effect (and )
 :poss-effect (and (have_item11))
)

(:action gamble_item12_6_2
 :parameters ()
 :precondition (and (at_x6) (at_y2))
 :effect (and )
 :poss-effect (and (have_item12))
)

(:action gamble_item13_6_2
 :parameters ()
 :precondition (and (at_x6) (at_y2))
 :effect (and )
 :poss-effect (and (have_item13))
)

(:action gamble_item14_6_2
 :parameters ()
 :precondition (and (at_x6) (at_y2))
 :effect (and )
 :poss-effect (and (have_item14))
)

(:action gamble_item15_6_2
 :parameters ()
 :precondition (and (at_x6) (at_y2))
 :effect (and )
 :poss-effect (and (have_item15))
)

(:action gamble_item16_6_2
 :parameters ()
 :precondition (and (at_x6) (at_y2))
 :effect (and )
 :poss-effect (and (have_item16))
)

(:action gamble_item17_6_2
 :parameters ()
 :precondition (and (at_x6) (at_y2))
 :effect (and )
 :poss-effect (and (have_item17))
)

(:action gamble_item18_6_2
 :parameters ()
 :precondition (and (at_x6) (at_y2))
 :effect (and )
 :poss-effect (and (have_item18))
)

(:action gamble_item19_6_2
 :parameters ()
 :precondition (and (at_x6) (at_y2))
 :effect (and )
 :poss-effect (and (have_item19))
)

(:action gamble_item20_6_2
 :parameters ()
 :precondition (and (at_x6) (at_y2))
 :effect (and )
 :poss-effect (and (have_item20))
)

(:action gamble_item21_6_2
 :parameters ()
 :precondition (and (at_x6) (at_y2))
 :effect (and )
 :poss-effect (and (have_item21))
)

(:action gamble_item22_6_2
 :parameters ()
 :precondition (and (at_x6) (at_y2))
 :effect (and )
 :poss-effect (and (have_item22))
)

(:action gamble_item23_6_2
 :parameters ()
 :precondition (and (at_x6) (at_y2))
 :effect (and )
 :poss-effect (and (have_item23))
)

(:action gamble_item24_6_2
 :parameters ()
 :precondition (and (at_x6) (at_y2))
 :effect (and )
 :poss-effect (and (have_item24))
)

(:action gamble_item25_6_2
 :parameters ()
 :precondition (and (at_x6) (at_y2))
 :effect (and )
 :poss-effect (and (have_item25))
)

(:action gamble_item26_6_2
 :parameters ()
 :precondition (and (at_x6) (at_y2))
 :effect (and )
 :poss-effect (and (have_item26))
)

(:action gamble_item27_6_2
 :parameters ()
 :precondition (and (at_x6) (at_y2))
 :effect (and )
 :poss-effect (and (have_item27))
)

(:action gamble_item28_6_2
 :parameters ()
 :precondition (and (at_x6) (at_y2))
 :effect (and )
 :poss-effect (and (have_item28))
)

(:action gamble_item29_6_2
 :parameters ()
 :precondition (and (at_x6) (at_y2))
 :effect (and )
 :poss-effect (and (have_item29))
)

(:action gamble_item30_6_2
 :parameters ()
 :precondition (and (at_x6) (at_y2))
 :effect (and )
 :poss-effect (and (have_item30))
)

(:action gamble_item31_6_2
 :parameters ()
 :precondition (and (at_x6) (at_y2))
 :effect (and )
 :poss-effect (and (have_item31))
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

(:action gamble_item8_6_3
 :parameters ()
 :precondition (and (at_x6) (at_y3))
 :effect (and )
 :poss-effect (and (have_item8))
)

(:action gamble_item9_6_3
 :parameters ()
 :precondition (and (at_x6) (at_y3))
 :effect (and )
 :poss-effect (and (have_item9))
)

(:action gamble_item10_6_3
 :parameters ()
 :precondition (and (at_x6) (at_y3))
 :effect (and )
 :poss-effect (and (have_item10))
)

(:action gamble_item11_6_3
 :parameters ()
 :precondition (and (at_x6) (at_y3))
 :effect (and )
 :poss-effect (and (have_item11))
)

(:action gamble_item12_6_3
 :parameters ()
 :precondition (and (at_x6) (at_y3))
 :effect (and )
 :poss-effect (and (have_item12))
)

(:action gamble_item13_6_3
 :parameters ()
 :precondition (and (at_x6) (at_y3))
 :effect (and )
 :poss-effect (and (have_item13))
)

(:action gamble_item14_6_3
 :parameters ()
 :precondition (and (at_x6) (at_y3))
 :effect (and )
 :poss-effect (and (have_item14))
)

(:action gamble_item15_6_3
 :parameters ()
 :precondition (and (at_x6) (at_y3))
 :effect (and )
 :poss-effect (and (have_item15))
)

(:action gamble_item16_6_3
 :parameters ()
 :precondition (and (at_x6) (at_y3))
 :effect (and )
 :poss-effect (and (have_item16))
)

(:action gamble_item17_6_3
 :parameters ()
 :precondition (and (at_x6) (at_y3))
 :effect (and )
 :poss-effect (and (have_item17))
)

(:action gamble_item18_6_3
 :parameters ()
 :precondition (and (at_x6) (at_y3))
 :effect (and )
 :poss-effect (and (have_item18))
)

(:action gamble_item19_6_3
 :parameters ()
 :precondition (and (at_x6) (at_y3))
 :effect (and )
 :poss-effect (and (have_item19))
)

(:action gamble_item20_6_3
 :parameters ()
 :precondition (and (at_x6) (at_y3))
 :effect (and )
 :poss-effect (and (have_item20))
)

(:action gamble_item21_6_3
 :parameters ()
 :precondition (and (at_x6) (at_y3))
 :effect (and )
 :poss-effect (and (have_item21))
)

(:action gamble_item22_6_3
 :parameters ()
 :precondition (and (at_x6) (at_y3))
 :effect (and )
 :poss-effect (and (have_item22))
)

(:action gamble_item23_6_3
 :parameters ()
 :precondition (and (at_x6) (at_y3))
 :effect (and )
 :poss-effect (and (have_item23))
)

(:action gamble_item24_6_3
 :parameters ()
 :precondition (and (at_x6) (at_y3))
 :effect (and )
 :poss-effect (and (have_item24))
)

(:action gamble_item25_6_3
 :parameters ()
 :precondition (and (at_x6) (at_y3))
 :effect (and )
 :poss-effect (and (have_item25))
)

(:action gamble_item26_6_3
 :parameters ()
 :precondition (and (at_x6) (at_y3))
 :effect (and )
 :poss-effect (and (have_item26))
)

(:action gamble_item27_6_3
 :parameters ()
 :precondition (and (at_x6) (at_y3))
 :effect (and )
 :poss-effect (and (have_item27))
)

(:action gamble_item28_6_3
 :parameters ()
 :precondition (and (at_x6) (at_y3))
 :effect (and )
 :poss-effect (and (have_item28))
)

(:action gamble_item29_6_3
 :parameters ()
 :precondition (and (at_x6) (at_y3))
 :effect (and )
 :poss-effect (and (have_item29))
)

(:action gamble_item30_6_3
 :parameters ()
 :precondition (and (at_x6) (at_y3))
 :effect (and )
 :poss-effect (and (have_item30))
)

(:action gamble_item31_6_3
 :parameters ()
 :precondition (and (at_x6) (at_y3))
 :effect (and )
 :poss-effect (and (have_item31))
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

(:action gamble_item8_6_4
 :parameters ()
 :precondition (and (at_x6) (at_y4))
 :effect (and )
 :poss-effect (and (have_item8))
)

(:action gamble_item9_6_4
 :parameters ()
 :precondition (and (at_x6) (at_y4))
 :effect (and )
 :poss-effect (and (have_item9))
)

(:action gamble_item10_6_4
 :parameters ()
 :precondition (and (at_x6) (at_y4))
 :effect (and )
 :poss-effect (and (have_item10))
)

(:action gamble_item11_6_4
 :parameters ()
 :precondition (and (at_x6) (at_y4))
 :effect (and )
 :poss-effect (and (have_item11))
)

(:action gamble_item12_6_4
 :parameters ()
 :precondition (and (at_x6) (at_y4))
 :effect (and )
 :poss-effect (and (have_item12))
)

(:action gamble_item13_6_4
 :parameters ()
 :precondition (and (at_x6) (at_y4))
 :effect (and )
 :poss-effect (and (have_item13))
)

(:action gamble_item14_6_4
 :parameters ()
 :precondition (and (at_x6) (at_y4))
 :effect (and )
 :poss-effect (and (have_item14))
)

(:action gamble_item15_6_4
 :parameters ()
 :precondition (and (at_x6) (at_y4))
 :effect (and )
 :poss-effect (and (have_item15))
)

(:action gamble_item16_6_4
 :parameters ()
 :precondition (and (at_x6) (at_y4))
 :effect (and )
 :poss-effect (and (have_item16))
)

(:action gamble_item17_6_4
 :parameters ()
 :precondition (and (at_x6) (at_y4))
 :effect (and )
 :poss-effect (and (have_item17))
)

(:action gamble_item18_6_4
 :parameters ()
 :precondition (and (at_x6) (at_y4))
 :effect (and )
 :poss-effect (and (have_item18))
)

(:action gamble_item19_6_4
 :parameters ()
 :precondition (and (at_x6) (at_y4))
 :effect (and )
 :poss-effect (and (have_item19))
)

(:action gamble_item20_6_4
 :parameters ()
 :precondition (and (at_x6) (at_y4))
 :effect (and )
 :poss-effect (and (have_item20))
)

(:action gamble_item21_6_4
 :parameters ()
 :precondition (and (at_x6) (at_y4))
 :effect (and )
 :poss-effect (and (have_item21))
)

(:action gamble_item22_6_4
 :parameters ()
 :precondition (and (at_x6) (at_y4))
 :effect (and )
 :poss-effect (and (have_item22))
)

(:action gamble_item23_6_4
 :parameters ()
 :precondition (and (at_x6) (at_y4))
 :effect (and )
 :poss-effect (and (have_item23))
)

(:action gamble_item24_6_4
 :parameters ()
 :precondition (and (at_x6) (at_y4))
 :effect (and )
 :poss-effect (and (have_item24))
)

(:action gamble_item25_6_4
 :parameters ()
 :precondition (and (at_x6) (at_y4))
 :effect (and )
 :poss-effect (and (have_item25))
)

(:action gamble_item26_6_4
 :parameters ()
 :precondition (and (at_x6) (at_y4))
 :effect (and )
 :poss-effect (and (have_item26))
)

(:action gamble_item27_6_4
 :parameters ()
 :precondition (and (at_x6) (at_y4))
 :effect (and )
 :poss-effect (and (have_item27))
)

(:action gamble_item28_6_4
 :parameters ()
 :precondition (and (at_x6) (at_y4))
 :effect (and )
 :poss-effect (and (have_item28))
)

(:action gamble_item29_6_4
 :parameters ()
 :precondition (and (at_x6) (at_y4))
 :effect (and )
 :poss-effect (and (have_item29))
)

(:action gamble_item30_6_4
 :parameters ()
 :precondition (and (at_x6) (at_y4))
 :effect (and )
 :poss-effect (and (have_item30))
)

(:action gamble_item31_6_4
 :parameters ()
 :precondition (and (at_x6) (at_y4))
 :effect (and )
 :poss-effect (and (have_item31))
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

(:action gamble_item8_6_5
 :parameters ()
 :precondition (and (at_x6) (at_y5))
 :effect (and )
 :poss-effect (and (have_item8))
)

(:action gamble_item9_6_5
 :parameters ()
 :precondition (and (at_x6) (at_y5))
 :effect (and )
 :poss-effect (and (have_item9))
)

(:action gamble_item10_6_5
 :parameters ()
 :precondition (and (at_x6) (at_y5))
 :effect (and )
 :poss-effect (and (have_item10))
)

(:action gamble_item11_6_5
 :parameters ()
 :precondition (and (at_x6) (at_y5))
 :effect (and )
 :poss-effect (and (have_item11))
)

(:action gamble_item12_6_5
 :parameters ()
 :precondition (and (at_x6) (at_y5))
 :effect (and )
 :poss-effect (and (have_item12))
)

(:action gamble_item13_6_5
 :parameters ()
 :precondition (and (at_x6) (at_y5))
 :effect (and )
 :poss-effect (and (have_item13))
)

(:action gamble_item14_6_5
 :parameters ()
 :precondition (and (at_x6) (at_y5))
 :effect (and )
 :poss-effect (and (have_item14))
)

(:action gamble_item15_6_5
 :parameters ()
 :precondition (and (at_x6) (at_y5))
 :effect (and )
 :poss-effect (and (have_item15))
)

(:action gamble_item16_6_5
 :parameters ()
 :precondition (and (at_x6) (at_y5))
 :effect (and )
 :poss-effect (and (have_item16))
)

(:action gamble_item17_6_5
 :parameters ()
 :precondition (and (at_x6) (at_y5))
 :effect (and )
 :poss-effect (and (have_item17))
)

(:action gamble_item18_6_5
 :parameters ()
 :precondition (and (at_x6) (at_y5))
 :effect (and )
 :poss-effect (and (have_item18))
)

(:action gamble_item19_6_5
 :parameters ()
 :precondition (and (at_x6) (at_y5))
 :effect (and )
 :poss-effect (and (have_item19))
)

(:action gamble_item20_6_5
 :parameters ()
 :precondition (and (at_x6) (at_y5))
 :effect (and )
 :poss-effect (and (have_item20))
)

(:action gamble_item21_6_5
 :parameters ()
 :precondition (and (at_x6) (at_y5))
 :effect (and )
 :poss-effect (and (have_item21))
)

(:action gamble_item22_6_5
 :parameters ()
 :precondition (and (at_x6) (at_y5))
 :effect (and )
 :poss-effect (and (have_item22))
)

(:action gamble_item23_6_5
 :parameters ()
 :precondition (and (at_x6) (at_y5))
 :effect (and )
 :poss-effect (and (have_item23))
)

(:action gamble_item24_6_5
 :parameters ()
 :precondition (and (at_x6) (at_y5))
 :effect (and )
 :poss-effect (and (have_item24))
)

(:action gamble_item25_6_5
 :parameters ()
 :precondition (and (at_x6) (at_y5))
 :effect (and )
 :poss-effect (and (have_item25))
)

(:action gamble_item26_6_5
 :parameters ()
 :precondition (and (at_x6) (at_y5))
 :effect (and )
 :poss-effect (and (have_item26))
)

(:action gamble_item27_6_5
 :parameters ()
 :precondition (and (at_x6) (at_y5))
 :effect (and )
 :poss-effect (and (have_item27))
)

(:action gamble_item28_6_5
 :parameters ()
 :precondition (and (at_x6) (at_y5))
 :effect (and )
 :poss-effect (and (have_item28))
)

(:action gamble_item29_6_5
 :parameters ()
 :precondition (and (at_x6) (at_y5))
 :effect (and )
 :poss-effect (and (have_item29))
)

(:action gamble_item30_6_5
 :parameters ()
 :precondition (and (at_x6) (at_y5))
 :effect (and )
 :poss-effect (and (have_item30))
)

(:action gamble_item31_6_5
 :parameters ()
 :precondition (and (at_x6) (at_y5))
 :effect (and )
 :poss-effect (and (have_item31))
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

(:action gamble_item8_6_6
 :parameters ()
 :precondition (and (at_x6) (at_y6))
 :effect (and )
 :poss-effect (and (have_item8))
)

(:action gamble_item9_6_6
 :parameters ()
 :precondition (and (at_x6) (at_y6))
 :effect (and )
 :poss-effect (and (have_item9))
)

(:action gamble_item10_6_6
 :parameters ()
 :precondition (and (at_x6) (at_y6))
 :effect (and )
 :poss-effect (and (have_item10))
)

(:action gamble_item11_6_6
 :parameters ()
 :precondition (and (at_x6) (at_y6))
 :effect (and )
 :poss-effect (and (have_item11))
)

(:action gamble_item12_6_6
 :parameters ()
 :precondition (and (at_x6) (at_y6))
 :effect (and )
 :poss-effect (and (have_item12))
)

(:action gamble_item13_6_6
 :parameters ()
 :precondition (and (at_x6) (at_y6))
 :effect (and )
 :poss-effect (and (have_item13))
)

(:action gamble_item14_6_6
 :parameters ()
 :precondition (and (at_x6) (at_y6))
 :effect (and )
 :poss-effect (and (have_item14))
)

(:action gamble_item15_6_6
 :parameters ()
 :precondition (and (at_x6) (at_y6))
 :effect (and )
 :poss-effect (and (have_item15))
)

(:action gamble_item16_6_6
 :parameters ()
 :precondition (and (at_x6) (at_y6))
 :effect (and )
 :poss-effect (and (have_item16))
)

(:action gamble_item17_6_6
 :parameters ()
 :precondition (and (at_x6) (at_y6))
 :effect (and )
 :poss-effect (and (have_item17))
)

(:action gamble_item18_6_6
 :parameters ()
 :precondition (and (at_x6) (at_y6))
 :effect (and )
 :poss-effect (and (have_item18))
)

(:action gamble_item19_6_6
 :parameters ()
 :precondition (and (at_x6) (at_y6))
 :effect (and )
 :poss-effect (and (have_item19))
)

(:action gamble_item20_6_6
 :parameters ()
 :precondition (and (at_x6) (at_y6))
 :effect (and )
 :poss-effect (and (have_item20))
)

(:action gamble_item21_6_6
 :parameters ()
 :precondition (and (at_x6) (at_y6))
 :effect (and )
 :poss-effect (and (have_item21))
)

(:action gamble_item22_6_6
 :parameters ()
 :precondition (and (at_x6) (at_y6))
 :effect (and )
 :poss-effect (and (have_item22))
)

(:action gamble_item23_6_6
 :parameters ()
 :precondition (and (at_x6) (at_y6))
 :effect (and )
 :poss-effect (and (have_item23))
)

(:action gamble_item24_6_6
 :parameters ()
 :precondition (and (at_x6) (at_y6))
 :effect (and )
 :poss-effect (and (have_item24))
)

(:action gamble_item25_6_6
 :parameters ()
 :precondition (and (at_x6) (at_y6))
 :effect (and )
 :poss-effect (and (have_item25))
)

(:action gamble_item26_6_6
 :parameters ()
 :precondition (and (at_x6) (at_y6))
 :effect (and )
 :poss-effect (and (have_item26))
)

(:action gamble_item27_6_6
 :parameters ()
 :precondition (and (at_x6) (at_y6))
 :effect (and )
 :poss-effect (and (have_item27))
)

(:action gamble_item28_6_6
 :parameters ()
 :precondition (and (at_x6) (at_y6))
 :effect (and )
 :poss-effect (and (have_item28))
)

(:action gamble_item29_6_6
 :parameters ()
 :precondition (and (at_x6) (at_y6))
 :effect (and )
 :poss-effect (and (have_item29))
)

(:action gamble_item30_6_6
 :parameters ()
 :precondition (and (at_x6) (at_y6))
 :effect (and )
 :poss-effect (and (have_item30))
)

(:action gamble_item31_6_6
 :parameters ()
 :precondition (and (at_x6) (at_y6))
 :effect (and )
 :poss-effect (and (have_item31))
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

(:action gamble_item8_6_7
 :parameters ()
 :precondition (and (at_x6) (at_y7))
 :effect (and )
 :poss-effect (and (have_item8))
)

(:action gamble_item9_6_7
 :parameters ()
 :precondition (and (at_x6) (at_y7))
 :effect (and )
 :poss-effect (and (have_item9))
)

(:action gamble_item10_6_7
 :parameters ()
 :precondition (and (at_x6) (at_y7))
 :effect (and )
 :poss-effect (and (have_item10))
)

(:action gamble_item11_6_7
 :parameters ()
 :precondition (and (at_x6) (at_y7))
 :effect (and )
 :poss-effect (and (have_item11))
)

(:action gamble_item12_6_7
 :parameters ()
 :precondition (and (at_x6) (at_y7))
 :effect (and )
 :poss-effect (and (have_item12))
)

(:action gamble_item13_6_7
 :parameters ()
 :precondition (and (at_x6) (at_y7))
 :effect (and )
 :poss-effect (and (have_item13))
)

(:action gamble_item14_6_7
 :parameters ()
 :precondition (and (at_x6) (at_y7))
 :effect (and )
 :poss-effect (and (have_item14))
)

(:action gamble_item15_6_7
 :parameters ()
 :precondition (and (at_x6) (at_y7))
 :effect (and )
 :poss-effect (and (have_item15))
)

(:action gamble_item16_6_7
 :parameters ()
 :precondition (and (at_x6) (at_y7))
 :effect (and )
 :poss-effect (and (have_item16))
)

(:action gamble_item17_6_7
 :parameters ()
 :precondition (and (at_x6) (at_y7))
 :effect (and )
 :poss-effect (and (have_item17))
)

(:action gamble_item18_6_7
 :parameters ()
 :precondition (and (at_x6) (at_y7))
 :effect (and )
 :poss-effect (and (have_item18))
)

(:action gamble_item19_6_7
 :parameters ()
 :precondition (and (at_x6) (at_y7))
 :effect (and )
 :poss-effect (and (have_item19))
)

(:action gamble_item20_6_7
 :parameters ()
 :precondition (and (at_x6) (at_y7))
 :effect (and )
 :poss-effect (and (have_item20))
)

(:action gamble_item21_6_7
 :parameters ()
 :precondition (and (at_x6) (at_y7))
 :effect (and )
 :poss-effect (and (have_item21))
)

(:action gamble_item22_6_7
 :parameters ()
 :precondition (and (at_x6) (at_y7))
 :effect (and )
 :poss-effect (and (have_item22))
)

(:action gamble_item23_6_7
 :parameters ()
 :precondition (and (at_x6) (at_y7))
 :effect (and )
 :poss-effect (and (have_item23))
)

(:action gamble_item24_6_7
 :parameters ()
 :precondition (and (at_x6) (at_y7))
 :effect (and )
 :poss-effect (and (have_item24))
)

(:action gamble_item25_6_7
 :parameters ()
 :precondition (and (at_x6) (at_y7))
 :effect (and )
 :poss-effect (and (have_item25))
)

(:action gamble_item26_6_7
 :parameters ()
 :precondition (and (at_x6) (at_y7))
 :effect (and )
 :poss-effect (and (have_item26))
)

(:action gamble_item27_6_7
 :parameters ()
 :precondition (and (at_x6) (at_y7))
 :effect (and )
 :poss-effect (and (have_item27))
)

(:action gamble_item28_6_7
 :parameters ()
 :precondition (and (at_x6) (at_y7))
 :effect (and )
 :poss-effect (and (have_item28))
)

(:action gamble_item29_6_7
 :parameters ()
 :precondition (and (at_x6) (at_y7))
 :effect (and )
 :poss-effect (and (have_item29))
)

(:action gamble_item30_6_7
 :parameters ()
 :precondition (and (at_x6) (at_y7))
 :effect (and )
 :poss-effect (and (have_item30))
)

(:action gamble_item31_6_7
 :parameters ()
 :precondition (and (at_x6) (at_y7))
 :effect (and )
 :poss-effect (and (have_item31))
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

(:action gamble_item8_7_0
 :parameters ()
 :precondition (and (at_x7) (at_y0))
 :effect (and )
 :poss-effect (and (have_item8))
)

(:action gamble_item9_7_0
 :parameters ()
 :precondition (and (at_x7) (at_y0))
 :effect (and )
 :poss-effect (and (have_item9))
)

(:action gamble_item10_7_0
 :parameters ()
 :precondition (and (at_x7) (at_y0))
 :effect (and )
 :poss-effect (and (have_item10))
)

(:action gamble_item11_7_0
 :parameters ()
 :precondition (and (at_x7) (at_y0))
 :effect (and )
 :poss-effect (and (have_item11))
)

(:action gamble_item12_7_0
 :parameters ()
 :precondition (and (at_x7) (at_y0))
 :effect (and )
 :poss-effect (and (have_item12))
)

(:action gamble_item13_7_0
 :parameters ()
 :precondition (and (at_x7) (at_y0))
 :effect (and )
 :poss-effect (and (have_item13))
)

(:action gamble_item14_7_0
 :parameters ()
 :precondition (and (at_x7) (at_y0))
 :effect (and )
 :poss-effect (and (have_item14))
)

(:action gamble_item15_7_0
 :parameters ()
 :precondition (and (at_x7) (at_y0))
 :effect (and )
 :poss-effect (and (have_item15))
)

(:action gamble_item16_7_0
 :parameters ()
 :precondition (and (at_x7) (at_y0))
 :effect (and )
 :poss-effect (and (have_item16))
)

(:action gamble_item17_7_0
 :parameters ()
 :precondition (and (at_x7) (at_y0))
 :effect (and )
 :poss-effect (and (have_item17))
)

(:action gamble_item18_7_0
 :parameters ()
 :precondition (and (at_x7) (at_y0))
 :effect (and )
 :poss-effect (and (have_item18))
)

(:action gamble_item19_7_0
 :parameters ()
 :precondition (and (at_x7) (at_y0))
 :effect (and )
 :poss-effect (and (have_item19))
)

(:action gamble_item20_7_0
 :parameters ()
 :precondition (and (at_x7) (at_y0))
 :effect (and )
 :poss-effect (and (have_item20))
)

(:action gamble_item21_7_0
 :parameters ()
 :precondition (and (at_x7) (at_y0))
 :effect (and )
 :poss-effect (and (have_item21))
)

(:action gamble_item22_7_0
 :parameters ()
 :precondition (and (at_x7) (at_y0))
 :effect (and )
 :poss-effect (and (have_item22))
)

(:action gamble_item23_7_0
 :parameters ()
 :precondition (and (at_x7) (at_y0))
 :effect (and )
 :poss-effect (and (have_item23))
)

(:action gamble_item24_7_0
 :parameters ()
 :precondition (and (at_x7) (at_y0))
 :effect (and )
 :poss-effect (and (have_item24))
)

(:action gamble_item25_7_0
 :parameters ()
 :precondition (and (at_x7) (at_y0))
 :effect (and )
 :poss-effect (and (have_item25))
)

(:action gamble_item26_7_0
 :parameters ()
 :precondition (and (at_x7) (at_y0))
 :effect (and )
 :poss-effect (and (have_item26))
)

(:action gamble_item27_7_0
 :parameters ()
 :precondition (and (at_x7) (at_y0))
 :effect (and )
 :poss-effect (and (have_item27))
)

(:action gamble_item28_7_0
 :parameters ()
 :precondition (and (at_x7) (at_y0))
 :effect (and )
 :poss-effect (and (have_item28))
)

(:action gamble_item29_7_0
 :parameters ()
 :precondition (and (at_x7) (at_y0))
 :effect (and )
 :poss-effect (and (have_item29))
)

(:action gamble_item30_7_0
 :parameters ()
 :precondition (and (at_x7) (at_y0))
 :effect (and )
 :poss-effect (and (have_item30))
)

(:action gamble_item31_7_0
 :parameters ()
 :precondition (and (at_x7) (at_y0))
 :effect (and )
 :poss-effect (and (have_item31))
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

(:action gamble_item8_7_1
 :parameters ()
 :precondition (and (at_x7) (at_y1))
 :effect (and )
 :poss-effect (and (have_item8))
)

(:action gamble_item9_7_1
 :parameters ()
 :precondition (and (at_x7) (at_y1))
 :effect (and )
 :poss-effect (and (have_item9))
)

(:action gamble_item10_7_1
 :parameters ()
 :precondition (and (at_x7) (at_y1))
 :effect (and )
 :poss-effect (and (have_item10))
)

(:action gamble_item11_7_1
 :parameters ()
 :precondition (and (at_x7) (at_y1))
 :effect (and )
 :poss-effect (and (have_item11))
)

(:action gamble_item12_7_1
 :parameters ()
 :precondition (and (at_x7) (at_y1))
 :effect (and )
 :poss-effect (and (have_item12))
)

(:action gamble_item13_7_1
 :parameters ()
 :precondition (and (at_x7) (at_y1))
 :effect (and )
 :poss-effect (and (have_item13))
)

(:action gamble_item14_7_1
 :parameters ()
 :precondition (and (at_x7) (at_y1))
 :effect (and )
 :poss-effect (and (have_item14))
)

(:action gamble_item15_7_1
 :parameters ()
 :precondition (and (at_x7) (at_y1))
 :effect (and )
 :poss-effect (and (have_item15))
)

(:action gamble_item16_7_1
 :parameters ()
 :precondition (and (at_x7) (at_y1))
 :effect (and )
 :poss-effect (and (have_item16))
)

(:action gamble_item17_7_1
 :parameters ()
 :precondition (and (at_x7) (at_y1))
 :effect (and )
 :poss-effect (and (have_item17))
)

(:action gamble_item18_7_1
 :parameters ()
 :precondition (and (at_x7) (at_y1))
 :effect (and )
 :poss-effect (and (have_item18))
)

(:action gamble_item19_7_1
 :parameters ()
 :precondition (and (at_x7) (at_y1))
 :effect (and )
 :poss-effect (and (have_item19))
)

(:action gamble_item20_7_1
 :parameters ()
 :precondition (and (at_x7) (at_y1))
 :effect (and )
 :poss-effect (and (have_item20))
)

(:action gamble_item21_7_1
 :parameters ()
 :precondition (and (at_x7) (at_y1))
 :effect (and )
 :poss-effect (and (have_item21))
)

(:action gamble_item22_7_1
 :parameters ()
 :precondition (and (at_x7) (at_y1))
 :effect (and )
 :poss-effect (and (have_item22))
)

(:action gamble_item23_7_1
 :parameters ()
 :precondition (and (at_x7) (at_y1))
 :effect (and )
 :poss-effect (and (have_item23))
)

(:action gamble_item24_7_1
 :parameters ()
 :precondition (and (at_x7) (at_y1))
 :effect (and )
 :poss-effect (and (have_item24))
)

(:action gamble_item25_7_1
 :parameters ()
 :precondition (and (at_x7) (at_y1))
 :effect (and )
 :poss-effect (and (have_item25))
)

(:action gamble_item26_7_1
 :parameters ()
 :precondition (and (at_x7) (at_y1))
 :effect (and )
 :poss-effect (and (have_item26))
)

(:action gamble_item27_7_1
 :parameters ()
 :precondition (and (at_x7) (at_y1))
 :effect (and )
 :poss-effect (and (have_item27))
)

(:action gamble_item28_7_1
 :parameters ()
 :precondition (and (at_x7) (at_y1))
 :effect (and )
 :poss-effect (and (have_item28))
)

(:action gamble_item29_7_1
 :parameters ()
 :precondition (and (at_x7) (at_y1))
 :effect (and )
 :poss-effect (and (have_item29))
)

(:action gamble_item30_7_1
 :parameters ()
 :precondition (and (at_x7) (at_y1))
 :effect (and )
 :poss-effect (and (have_item30))
)

(:action gamble_item31_7_1
 :parameters ()
 :precondition (and (at_x7) (at_y1))
 :effect (and )
 :poss-effect (and (have_item31))
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

(:action gamble_item8_7_2
 :parameters ()
 :precondition (and (at_x7) (at_y2))
 :effect (and )
 :poss-effect (and (have_item8))
)

(:action gamble_item9_7_2
 :parameters ()
 :precondition (and (at_x7) (at_y2))
 :effect (and )
 :poss-effect (and (have_item9))
)

(:action gamble_item10_7_2
 :parameters ()
 :precondition (and (at_x7) (at_y2))
 :effect (and )
 :poss-effect (and (have_item10))
)

(:action gamble_item11_7_2
 :parameters ()
 :precondition (and (at_x7) (at_y2))
 :effect (and )
 :poss-effect (and (have_item11))
)

(:action gamble_item12_7_2
 :parameters ()
 :precondition (and (at_x7) (at_y2))
 :effect (and )
 :poss-effect (and (have_item12))
)

(:action gamble_item13_7_2
 :parameters ()
 :precondition (and (at_x7) (at_y2))
 :effect (and )
 :poss-effect (and (have_item13))
)

(:action gamble_item14_7_2
 :parameters ()
 :precondition (and (at_x7) (at_y2))
 :effect (and )
 :poss-effect (and (have_item14))
)

(:action gamble_item15_7_2
 :parameters ()
 :precondition (and (at_x7) (at_y2))
 :effect (and )
 :poss-effect (and (have_item15))
)

(:action gamble_item16_7_2
 :parameters ()
 :precondition (and (at_x7) (at_y2))
 :effect (and )
 :poss-effect (and (have_item16))
)

(:action gamble_item17_7_2
 :parameters ()
 :precondition (and (at_x7) (at_y2))
 :effect (and )
 :poss-effect (and (have_item17))
)

(:action gamble_item18_7_2
 :parameters ()
 :precondition (and (at_x7) (at_y2))
 :effect (and )
 :poss-effect (and (have_item18))
)

(:action gamble_item19_7_2
 :parameters ()
 :precondition (and (at_x7) (at_y2))
 :effect (and )
 :poss-effect (and (have_item19))
)

(:action gamble_item20_7_2
 :parameters ()
 :precondition (and (at_x7) (at_y2))
 :effect (and )
 :poss-effect (and (have_item20))
)

(:action gamble_item21_7_2
 :parameters ()
 :precondition (and (at_x7) (at_y2))
 :effect (and )
 :poss-effect (and (have_item21))
)

(:action gamble_item22_7_2
 :parameters ()
 :precondition (and (at_x7) (at_y2))
 :effect (and )
 :poss-effect (and (have_item22))
)

(:action gamble_item23_7_2
 :parameters ()
 :precondition (and (at_x7) (at_y2))
 :effect (and )
 :poss-effect (and (have_item23))
)

(:action gamble_item24_7_2
 :parameters ()
 :precondition (and (at_x7) (at_y2))
 :effect (and )
 :poss-effect (and (have_item24))
)

(:action gamble_item25_7_2
 :parameters ()
 :precondition (and (at_x7) (at_y2))
 :effect (and )
 :poss-effect (and (have_item25))
)

(:action gamble_item26_7_2
 :parameters ()
 :precondition (and (at_x7) (at_y2))
 :effect (and )
 :poss-effect (and (have_item26))
)

(:action gamble_item27_7_2
 :parameters ()
 :precondition (and (at_x7) (at_y2))
 :effect (and )
 :poss-effect (and (have_item27))
)

(:action gamble_item28_7_2
 :parameters ()
 :precondition (and (at_x7) (at_y2))
 :effect (and )
 :poss-effect (and (have_item28))
)

(:action gamble_item29_7_2
 :parameters ()
 :precondition (and (at_x7) (at_y2))
 :effect (and )
 :poss-effect (and (have_item29))
)

(:action gamble_item30_7_2
 :parameters ()
 :precondition (and (at_x7) (at_y2))
 :effect (and )
 :poss-effect (and (have_item30))
)

(:action gamble_item31_7_2
 :parameters ()
 :precondition (and (at_x7) (at_y2))
 :effect (and )
 :poss-effect (and (have_item31))
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

(:action gamble_item8_7_3
 :parameters ()
 :precondition (and (at_x7) (at_y3))
 :effect (and )
 :poss-effect (and (have_item8))
)

(:action gamble_item9_7_3
 :parameters ()
 :precondition (and (at_x7) (at_y3))
 :effect (and )
 :poss-effect (and (have_item9))
)

(:action gamble_item10_7_3
 :parameters ()
 :precondition (and (at_x7) (at_y3))
 :effect (and )
 :poss-effect (and (have_item10))
)

(:action gamble_item11_7_3
 :parameters ()
 :precondition (and (at_x7) (at_y3))
 :effect (and )
 :poss-effect (and (have_item11))
)

(:action gamble_item12_7_3
 :parameters ()
 :precondition (and (at_x7) (at_y3))
 :effect (and )
 :poss-effect (and (have_item12))
)

(:action gamble_item13_7_3
 :parameters ()
 :precondition (and (at_x7) (at_y3))
 :effect (and )
 :poss-effect (and (have_item13))
)

(:action gamble_item14_7_3
 :parameters ()
 :precondition (and (at_x7) (at_y3))
 :effect (and )
 :poss-effect (and (have_item14))
)

(:action gamble_item15_7_3
 :parameters ()
 :precondition (and (at_x7) (at_y3))
 :effect (and )
 :poss-effect (and (have_item15))
)

(:action gamble_item16_7_3
 :parameters ()
 :precondition (and (at_x7) (at_y3))
 :effect (and )
 :poss-effect (and (have_item16))
)

(:action gamble_item17_7_3
 :parameters ()
 :precondition (and (at_x7) (at_y3))
 :effect (and )
 :poss-effect (and (have_item17))
)

(:action gamble_item18_7_3
 :parameters ()
 :precondition (and (at_x7) (at_y3))
 :effect (and )
 :poss-effect (and (have_item18))
)

(:action gamble_item19_7_3
 :parameters ()
 :precondition (and (at_x7) (at_y3))
 :effect (and )
 :poss-effect (and (have_item19))
)

(:action gamble_item20_7_3
 :parameters ()
 :precondition (and (at_x7) (at_y3))
 :effect (and )
 :poss-effect (and (have_item20))
)

(:action gamble_item21_7_3
 :parameters ()
 :precondition (and (at_x7) (at_y3))
 :effect (and )
 :poss-effect (and (have_item21))
)

(:action gamble_item22_7_3
 :parameters ()
 :precondition (and (at_x7) (at_y3))
 :effect (and )
 :poss-effect (and (have_item22))
)

(:action gamble_item23_7_3
 :parameters ()
 :precondition (and (at_x7) (at_y3))
 :effect (and )
 :poss-effect (and (have_item23))
)

(:action gamble_item24_7_3
 :parameters ()
 :precondition (and (at_x7) (at_y3))
 :effect (and )
 :poss-effect (and (have_item24))
)

(:action gamble_item25_7_3
 :parameters ()
 :precondition (and (at_x7) (at_y3))
 :effect (and )
 :poss-effect (and (have_item25))
)

(:action gamble_item26_7_3
 :parameters ()
 :precondition (and (at_x7) (at_y3))
 :effect (and )
 :poss-effect (and (have_item26))
)

(:action gamble_item27_7_3
 :parameters ()
 :precondition (and (at_x7) (at_y3))
 :effect (and )
 :poss-effect (and (have_item27))
)

(:action gamble_item28_7_3
 :parameters ()
 :precondition (and (at_x7) (at_y3))
 :effect (and )
 :poss-effect (and (have_item28))
)

(:action gamble_item29_7_3
 :parameters ()
 :precondition (and (at_x7) (at_y3))
 :effect (and )
 :poss-effect (and (have_item29))
)

(:action gamble_item30_7_3
 :parameters ()
 :precondition (and (at_x7) (at_y3))
 :effect (and )
 :poss-effect (and (have_item30))
)

(:action gamble_item31_7_3
 :parameters ()
 :precondition (and (at_x7) (at_y3))
 :effect (and )
 :poss-effect (and (have_item31))
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

(:action gamble_item8_7_4
 :parameters ()
 :precondition (and (at_x7) (at_y4))
 :effect (and )
 :poss-effect (and (have_item8))
)

(:action gamble_item9_7_4
 :parameters ()
 :precondition (and (at_x7) (at_y4))
 :effect (and )
 :poss-effect (and (have_item9))
)

(:action gamble_item10_7_4
 :parameters ()
 :precondition (and (at_x7) (at_y4))
 :effect (and )
 :poss-effect (and (have_item10))
)

(:action gamble_item11_7_4
 :parameters ()
 :precondition (and (at_x7) (at_y4))
 :effect (and )
 :poss-effect (and (have_item11))
)

(:action gamble_item12_7_4
 :parameters ()
 :precondition (and (at_x7) (at_y4))
 :effect (and )
 :poss-effect (and (have_item12))
)

(:action gamble_item13_7_4
 :parameters ()
 :precondition (and (at_x7) (at_y4))
 :effect (and )
 :poss-effect (and (have_item13))
)

(:action gamble_item14_7_4
 :parameters ()
 :precondition (and (at_x7) (at_y4))
 :effect (and )
 :poss-effect (and (have_item14))
)

(:action gamble_item15_7_4
 :parameters ()
 :precondition (and (at_x7) (at_y4))
 :effect (and )
 :poss-effect (and (have_item15))
)

(:action gamble_item16_7_4
 :parameters ()
 :precondition (and (at_x7) (at_y4))
 :effect (and )
 :poss-effect (and (have_item16))
)

(:action gamble_item17_7_4
 :parameters ()
 :precondition (and (at_x7) (at_y4))
 :effect (and )
 :poss-effect (and (have_item17))
)

(:action gamble_item18_7_4
 :parameters ()
 :precondition (and (at_x7) (at_y4))
 :effect (and )
 :poss-effect (and (have_item18))
)

(:action gamble_item19_7_4
 :parameters ()
 :precondition (and (at_x7) (at_y4))
 :effect (and )
 :poss-effect (and (have_item19))
)

(:action gamble_item20_7_4
 :parameters ()
 :precondition (and (at_x7) (at_y4))
 :effect (and )
 :poss-effect (and (have_item20))
)

(:action gamble_item21_7_4
 :parameters ()
 :precondition (and (at_x7) (at_y4))
 :effect (and )
 :poss-effect (and (have_item21))
)

(:action gamble_item22_7_4
 :parameters ()
 :precondition (and (at_x7) (at_y4))
 :effect (and )
 :poss-effect (and (have_item22))
)

(:action gamble_item23_7_4
 :parameters ()
 :precondition (and (at_x7) (at_y4))
 :effect (and )
 :poss-effect (and (have_item23))
)

(:action gamble_item24_7_4
 :parameters ()
 :precondition (and (at_x7) (at_y4))
 :effect (and )
 :poss-effect (and (have_item24))
)

(:action gamble_item25_7_4
 :parameters ()
 :precondition (and (at_x7) (at_y4))
 :effect (and )
 :poss-effect (and (have_item25))
)

(:action gamble_item26_7_4
 :parameters ()
 :precondition (and (at_x7) (at_y4))
 :effect (and )
 :poss-effect (and (have_item26))
)

(:action gamble_item27_7_4
 :parameters ()
 :precondition (and (at_x7) (at_y4))
 :effect (and )
 :poss-effect (and (have_item27))
)

(:action gamble_item28_7_4
 :parameters ()
 :precondition (and (at_x7) (at_y4))
 :effect (and )
 :poss-effect (and (have_item28))
)

(:action gamble_item29_7_4
 :parameters ()
 :precondition (and (at_x7) (at_y4))
 :effect (and )
 :poss-effect (and (have_item29))
)

(:action gamble_item30_7_4
 :parameters ()
 :precondition (and (at_x7) (at_y4))
 :effect (and )
 :poss-effect (and (have_item30))
)

(:action gamble_item31_7_4
 :parameters ()
 :precondition (and (at_x7) (at_y4))
 :effect (and )
 :poss-effect (and (have_item31))
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

(:action gamble_item8_7_5
 :parameters ()
 :precondition (and (at_x7) (at_y5))
 :effect (and )
 :poss-effect (and (have_item8))
)

(:action gamble_item9_7_5
 :parameters ()
 :precondition (and (at_x7) (at_y5))
 :effect (and )
 :poss-effect (and (have_item9))
)

(:action gamble_item10_7_5
 :parameters ()
 :precondition (and (at_x7) (at_y5))
 :effect (and )
 :poss-effect (and (have_item10))
)

(:action gamble_item11_7_5
 :parameters ()
 :precondition (and (at_x7) (at_y5))
 :effect (and )
 :poss-effect (and (have_item11))
)

(:action gamble_item12_7_5
 :parameters ()
 :precondition (and (at_x7) (at_y5))
 :effect (and )
 :poss-effect (and (have_item12))
)

(:action gamble_item13_7_5
 :parameters ()
 :precondition (and (at_x7) (at_y5))
 :effect (and )
 :poss-effect (and (have_item13))
)

(:action gamble_item14_7_5
 :parameters ()
 :precondition (and (at_x7) (at_y5))
 :effect (and )
 :poss-effect (and (have_item14))
)

(:action gamble_item15_7_5
 :parameters ()
 :precondition (and (at_x7) (at_y5))
 :effect (and )
 :poss-effect (and (have_item15))
)

(:action gamble_item16_7_5
 :parameters ()
 :precondition (and (at_x7) (at_y5))
 :effect (and )
 :poss-effect (and (have_item16))
)

(:action gamble_item17_7_5
 :parameters ()
 :precondition (and (at_x7) (at_y5))
 :effect (and )
 :poss-effect (and (have_item17))
)

(:action gamble_item18_7_5
 :parameters ()
 :precondition (and (at_x7) (at_y5))
 :effect (and )
 :poss-effect (and (have_item18))
)

(:action gamble_item19_7_5
 :parameters ()
 :precondition (and (at_x7) (at_y5))
 :effect (and )
 :poss-effect (and (have_item19))
)

(:action gamble_item20_7_5
 :parameters ()
 :precondition (and (at_x7) (at_y5))
 :effect (and )
 :poss-effect (and (have_item20))
)

(:action gamble_item21_7_5
 :parameters ()
 :precondition (and (at_x7) (at_y5))
 :effect (and )
 :poss-effect (and (have_item21))
)

(:action gamble_item22_7_5
 :parameters ()
 :precondition (and (at_x7) (at_y5))
 :effect (and )
 :poss-effect (and (have_item22))
)

(:action gamble_item23_7_5
 :parameters ()
 :precondition (and (at_x7) (at_y5))
 :effect (and )
 :poss-effect (and (have_item23))
)

(:action gamble_item24_7_5
 :parameters ()
 :precondition (and (at_x7) (at_y5))
 :effect (and )
 :poss-effect (and (have_item24))
)

(:action gamble_item25_7_5
 :parameters ()
 :precondition (and (at_x7) (at_y5))
 :effect (and )
 :poss-effect (and (have_item25))
)

(:action gamble_item26_7_5
 :parameters ()
 :precondition (and (at_x7) (at_y5))
 :effect (and )
 :poss-effect (and (have_item26))
)

(:action gamble_item27_7_5
 :parameters ()
 :precondition (and (at_x7) (at_y5))
 :effect (and )
 :poss-effect (and (have_item27))
)

(:action gamble_item28_7_5
 :parameters ()
 :precondition (and (at_x7) (at_y5))
 :effect (and )
 :poss-effect (and (have_item28))
)

(:action gamble_item29_7_5
 :parameters ()
 :precondition (and (at_x7) (at_y5))
 :effect (and )
 :poss-effect (and (have_item29))
)

(:action gamble_item30_7_5
 :parameters ()
 :precondition (and (at_x7) (at_y5))
 :effect (and )
 :poss-effect (and (have_item30))
)

(:action gamble_item31_7_5
 :parameters ()
 :precondition (and (at_x7) (at_y5))
 :effect (and )
 :poss-effect (and (have_item31))
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

(:action gamble_item8_7_6
 :parameters ()
 :precondition (and (at_x7) (at_y6))
 :effect (and )
 :poss-effect (and (have_item8))
)

(:action gamble_item9_7_6
 :parameters ()
 :precondition (and (at_x7) (at_y6))
 :effect (and )
 :poss-effect (and (have_item9))
)

(:action gamble_item10_7_6
 :parameters ()
 :precondition (and (at_x7) (at_y6))
 :effect (and )
 :poss-effect (and (have_item10))
)

(:action gamble_item11_7_6
 :parameters ()
 :precondition (and (at_x7) (at_y6))
 :effect (and )
 :poss-effect (and (have_item11))
)

(:action gamble_item12_7_6
 :parameters ()
 :precondition (and (at_x7) (at_y6))
 :effect (and )
 :poss-effect (and (have_item12))
)

(:action gamble_item13_7_6
 :parameters ()
 :precondition (and (at_x7) (at_y6))
 :effect (and )
 :poss-effect (and (have_item13))
)

(:action gamble_item14_7_6
 :parameters ()
 :precondition (and (at_x7) (at_y6))
 :effect (and )
 :poss-effect (and (have_item14))
)

(:action gamble_item15_7_6
 :parameters ()
 :precondition (and (at_x7) (at_y6))
 :effect (and )
 :poss-effect (and (have_item15))
)

(:action gamble_item16_7_6
 :parameters ()
 :precondition (and (at_x7) (at_y6))
 :effect (and )
 :poss-effect (and (have_item16))
)

(:action gamble_item17_7_6
 :parameters ()
 :precondition (and (at_x7) (at_y6))
 :effect (and )
 :poss-effect (and (have_item17))
)

(:action gamble_item18_7_6
 :parameters ()
 :precondition (and (at_x7) (at_y6))
 :effect (and )
 :poss-effect (and (have_item18))
)

(:action gamble_item19_7_6
 :parameters ()
 :precondition (and (at_x7) (at_y6))
 :effect (and )
 :poss-effect (and (have_item19))
)

(:action gamble_item20_7_6
 :parameters ()
 :precondition (and (at_x7) (at_y6))
 :effect (and )
 :poss-effect (and (have_item20))
)

(:action gamble_item21_7_6
 :parameters ()
 :precondition (and (at_x7) (at_y6))
 :effect (and )
 :poss-effect (and (have_item21))
)

(:action gamble_item22_7_6
 :parameters ()
 :precondition (and (at_x7) (at_y6))
 :effect (and )
 :poss-effect (and (have_item22))
)

(:action gamble_item23_7_6
 :parameters ()
 :precondition (and (at_x7) (at_y6))
 :effect (and )
 :poss-effect (and (have_item23))
)

(:action gamble_item24_7_6
 :parameters ()
 :precondition (and (at_x7) (at_y6))
 :effect (and )
 :poss-effect (and (have_item24))
)

(:action gamble_item25_7_6
 :parameters ()
 :precondition (and (at_x7) (at_y6))
 :effect (and )
 :poss-effect (and (have_item25))
)

(:action gamble_item26_7_6
 :parameters ()
 :precondition (and (at_x7) (at_y6))
 :effect (and )
 :poss-effect (and (have_item26))
)

(:action gamble_item27_7_6
 :parameters ()
 :precondition (and (at_x7) (at_y6))
 :effect (and )
 :poss-effect (and (have_item27))
)

(:action gamble_item28_7_6
 :parameters ()
 :precondition (and (at_x7) (at_y6))
 :effect (and )
 :poss-effect (and (have_item28))
)

(:action gamble_item29_7_6
 :parameters ()
 :precondition (and (at_x7) (at_y6))
 :effect (and )
 :poss-effect (and (have_item29))
)

(:action gamble_item30_7_6
 :parameters ()
 :precondition (and (at_x7) (at_y6))
 :effect (and )
 :poss-effect (and (have_item30))
)

(:action gamble_item31_7_6
 :parameters ()
 :precondition (and (at_x7) (at_y6))
 :effect (and )
 :poss-effect (and (have_item31))
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

(:action gamble_item8_7_7
 :parameters ()
 :precondition (and (at_x7) (at_y7))
 :effect (and )
 :poss-effect (and (have_item8))
)

(:action gamble_item9_7_7
 :parameters ()
 :precondition (and (at_x7) (at_y7))
 :effect (and )
 :poss-effect (and (have_item9))
)

(:action gamble_item10_7_7
 :parameters ()
 :precondition (and (at_x7) (at_y7))
 :effect (and )
 :poss-effect (and (have_item10))
)

(:action gamble_item11_7_7
 :parameters ()
 :precondition (and (at_x7) (at_y7))
 :effect (and )
 :poss-effect (and (have_item11))
)

(:action gamble_item12_7_7
 :parameters ()
 :precondition (and (at_x7) (at_y7))
 :effect (and )
 :poss-effect (and (have_item12))
)

(:action gamble_item13_7_7
 :parameters ()
 :precondition (and (at_x7) (at_y7))
 :effect (and )
 :poss-effect (and (have_item13))
)

(:action gamble_item14_7_7
 :parameters ()
 :precondition (and (at_x7) (at_y7))
 :effect (and )
 :poss-effect (and (have_item14))
)

(:action gamble_item15_7_7
 :parameters ()
 :precondition (and (at_x7) (at_y7))
 :effect (and )
 :poss-effect (and (have_item15))
)

(:action gamble_item16_7_7
 :parameters ()
 :precondition (and (at_x7) (at_y7))
 :effect (and )
 :poss-effect (and (have_item16))
)

(:action gamble_item17_7_7
 :parameters ()
 :precondition (and (at_x7) (at_y7))
 :effect (and )
 :poss-effect (and (have_item17))
)

(:action gamble_item18_7_7
 :parameters ()
 :precondition (and (at_x7) (at_y7))
 :effect (and )
 :poss-effect (and (have_item18))
)

(:action gamble_item19_7_7
 :parameters ()
 :precondition (and (at_x7) (at_y7))
 :effect (and )
 :poss-effect (and (have_item19))
)

(:action gamble_item20_7_7
 :parameters ()
 :precondition (and (at_x7) (at_y7))
 :effect (and )
 :poss-effect (and (have_item20))
)

(:action gamble_item21_7_7
 :parameters ()
 :precondition (and (at_x7) (at_y7))
 :effect (and )
 :poss-effect (and (have_item21))
)

(:action gamble_item22_7_7
 :parameters ()
 :precondition (and (at_x7) (at_y7))
 :effect (and )
 :poss-effect (and (have_item22))
)

(:action gamble_item23_7_7
 :parameters ()
 :precondition (and (at_x7) (at_y7))
 :effect (and )
 :poss-effect (and (have_item23))
)

(:action gamble_item24_7_7
 :parameters ()
 :precondition (and (at_x7) (at_y7))
 :effect (and )
 :poss-effect (and (have_item24))
)

(:action gamble_item25_7_7
 :parameters ()
 :precondition (and (at_x7) (at_y7))
 :effect (and )
 :poss-effect (and (have_item25))
)

(:action gamble_item26_7_7
 :parameters ()
 :precondition (and (at_x7) (at_y7))
 :effect (and )
 :poss-effect (and (have_item26))
)

(:action gamble_item27_7_7
 :parameters ()
 :precondition (and (at_x7) (at_y7))
 :effect (and )
 :poss-effect (and (have_item27))
)

(:action gamble_item28_7_7
 :parameters ()
 :precondition (and (at_x7) (at_y7))
 :effect (and )
 :poss-effect (and (have_item28))
)

(:action gamble_item29_7_7
 :parameters ()
 :precondition (and (at_x7) (at_y7))
 :effect (and )
 :poss-effect (and (have_item29))
)

(:action gamble_item30_7_7
 :parameters ()
 :precondition (and (at_x7) (at_y7))
 :effect (and )
 :poss-effect (and (have_item30))
)

(:action gamble_item31_7_7
 :parameters ()
 :precondition (and (at_x7) (at_y7))
 :effect (and )
 :poss-effect (and (have_item31))
)

(:action easymark_item2_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and (have_item2))
)

(:action easymark_item5_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and (have_item5))
)

(:action easymark_item11_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and (have_item11))
)

(:action easymark_item23_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and (have_item23))
)

(:action easymark_item27_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and (have_item27))
)

(:action easymark_item28_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and (have_item28))
)

(:action easymark_item29_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and (have_item29))
)

(:action easymark_item2_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and (have_item2))
)

(:action easymark_item10_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and (have_item10))
)

(:action easymark_item26_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and (have_item26))
)

(:action easymark_item4_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and (have_item4))
)

(:action easymark_item12_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and (have_item12))
)

(:action easymark_item21_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and (have_item21))
)

(:action easymark_item23_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and (have_item23))
)

(:action easymark_item25_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and (have_item25))
)

(:action easymark_item15_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and (have_item15))
)

(:action easymark_item22_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and (have_item22))
)

(:action easymark_item11_0_6
 :parameters ()
 :precondition (and (at_x0) (at_y6))
 :effect (and (have_item11))
)

(:action easymark_item13_0_6
 :parameters ()
 :precondition (and (at_x0) (at_y6))
 :effect (and (have_item13))
)

(:action easymark_item14_0_6
 :parameters ()
 :precondition (and (at_x0) (at_y6))
 :effect (and (have_item14))
)

(:action easymark_item26_0_6
 :parameters ()
 :precondition (and (at_x0) (at_y6))
 :effect (and (have_item26))
)

(:action easymark_item4_0_7
 :parameters ()
 :precondition (and (at_x0) (at_y7))
 :effect (and (have_item4))
)

(:action easymark_item10_0_7
 :parameters ()
 :precondition (and (at_x0) (at_y7))
 :effect (and (have_item10))
)

(:action easymark_item14_0_7
 :parameters ()
 :precondition (and (at_x0) (at_y7))
 :effect (and (have_item14))
)

(:action easymark_item16_0_7
 :parameters ()
 :precondition (and (at_x0) (at_y7))
 :effect (and (have_item16))
)

(:action easymark_item22_0_7
 :parameters ()
 :precondition (and (at_x0) (at_y7))
 :effect (and (have_item22))
)

(:action easymark_item28_0_7
 :parameters ()
 :precondition (and (at_x0) (at_y7))
 :effect (and (have_item28))
)

(:action easymark_item1_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and (have_item1))
)

(:action easymark_item20_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and (have_item20))
)

(:action easymark_item22_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and (have_item22))
)

(:action easymark_item25_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and (have_item25))
)

(:action easymark_item30_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and (have_item30))
)

(:action easymark_item9_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and (have_item9))
)

(:action easymark_item11_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and (have_item11))
)

(:action easymark_item18_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and (have_item18))
)

(:action easymark_item20_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and (have_item20))
)

(:action easymark_item3_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and (have_item3))
)

(:action easymark_item19_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and (have_item19))
)

(:action easymark_item3_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and (have_item3))
)

(:action easymark_item5_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and (have_item5))
)

(:action easymark_item9_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and (have_item9))
)

(:action easymark_item21_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and (have_item21))
)

(:action easymark_item25_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and (have_item25))
)

(:action easymark_item3_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and (have_item3))
)

(:action easymark_item5_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and (have_item5))
)

(:action easymark_item7_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and (have_item7))
)

(:action easymark_item13_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and (have_item13))
)

(:action easymark_item20_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and (have_item20))
)

(:action easymark_item21_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and (have_item21))
)

(:action easymark_item6_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and (have_item6))
)

(:action easymark_item15_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and (have_item15))
)

(:action easymark_item21_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and (have_item21))
)

(:action easymark_item27_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and (have_item27))
)

(:action easymark_item28_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and (have_item28))
)

(:action easymark_item0_1_6
 :parameters ()
 :precondition (and (at_x1) (at_y6))
 :effect (and (have_item0))
)

(:action easymark_item25_1_6
 :parameters ()
 :precondition (and (at_x1) (at_y6))
 :effect (and (have_item25))
)

(:action easymark_item26_1_6
 :parameters ()
 :precondition (and (at_x1) (at_y6))
 :effect (and (have_item26))
)

(:action easymark_item28_1_6
 :parameters ()
 :precondition (and (at_x1) (at_y6))
 :effect (and (have_item28))
)

(:action easymark_item30_1_6
 :parameters ()
 :precondition (and (at_x1) (at_y6))
 :effect (and (have_item30))
)

(:action easymark_item0_1_7
 :parameters ()
 :precondition (and (at_x1) (at_y7))
 :effect (and (have_item0))
)

(:action easymark_item10_1_7
 :parameters ()
 :precondition (and (at_x1) (at_y7))
 :effect (and (have_item10))
)

(:action easymark_item13_1_7
 :parameters ()
 :precondition (and (at_x1) (at_y7))
 :effect (and (have_item13))
)

(:action easymark_item22_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and (have_item22))
)

(:action easymark_item26_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and (have_item26))
)

(:action easymark_item14_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and (have_item14))
)

(:action easymark_item20_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and (have_item20))
)

(:action easymark_item28_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and (have_item28))
)

(:action easymark_item31_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and (have_item31))
)

(:action easymark_item1_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and (have_item1))
)

(:action easymark_item14_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and (have_item14))
)

(:action easymark_item22_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and (have_item22))
)

(:action easymark_item0_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and (have_item0))
)

(:action easymark_item6_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and (have_item6))
)

(:action easymark_item11_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and (have_item11))
)

(:action easymark_item12_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and (have_item12))
)

(:action easymark_item15_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and (have_item15))
)

(:action easymark_item20_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and (have_item20))
)

(:action easymark_item24_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and (have_item24))
)

(:action easymark_item30_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and (have_item30))
)

(:action easymark_item31_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and (have_item31))
)

(:action easymark_item24_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :effect (and (have_item24))
)

(:action easymark_item19_2_6
 :parameters ()
 :precondition (and (at_x2) (at_y6))
 :effect (and (have_item19))
)

(:action easymark_item25_2_6
 :parameters ()
 :precondition (and (at_x2) (at_y6))
 :effect (and (have_item25))
)

(:action easymark_item3_2_7
 :parameters ()
 :precondition (and (at_x2) (at_y7))
 :effect (and (have_item3))
)

(:action easymark_item5_2_7
 :parameters ()
 :precondition (and (at_x2) (at_y7))
 :effect (and (have_item5))
)

(:action easymark_item6_2_7
 :parameters ()
 :precondition (and (at_x2) (at_y7))
 :effect (and (have_item6))
)

(:action easymark_item11_2_7
 :parameters ()
 :precondition (and (at_x2) (at_y7))
 :effect (and (have_item11))
)

(:action easymark_item29_2_7
 :parameters ()
 :precondition (and (at_x2) (at_y7))
 :effect (and (have_item29))
)

(:action easymark_item30_2_7
 :parameters ()
 :precondition (and (at_x2) (at_y7))
 :effect (and (have_item30))
)

(:action easymark_item7_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and (have_item7))
)

(:action easymark_item23_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and (have_item23))
)

(:action easymark_item1_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and (have_item1))
)

(:action easymark_item4_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and (have_item4))
)

(:action easymark_item18_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and (have_item18))
)

(:action easymark_item17_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and (have_item17))
)

(:action easymark_item21_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and (have_item21))
)

(:action easymark_item23_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and (have_item23))
)

(:action easymark_item30_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and (have_item30))
)

(:action easymark_item4_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and (have_item4))
)

(:action easymark_item5_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and (have_item5))
)

(:action easymark_item10_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and (have_item10))
)

(:action easymark_item11_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and (have_item11))
)

(:action easymark_item22_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and (have_item22))
)

(:action easymark_item27_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and (have_item27))
)

(:action easymark_item15_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and (have_item15))
)

(:action easymark_item20_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and (have_item20))
)

(:action easymark_item23_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and (have_item23))
)

(:action easymark_item25_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and (have_item25))
)

(:action easymark_item9_3_6
 :parameters ()
 :precondition (and (at_x3) (at_y6))
 :effect (and (have_item9))
)

(:action easymark_item20_3_6
 :parameters ()
 :precondition (and (at_x3) (at_y6))
 :effect (and (have_item20))
)

(:action easymark_item21_3_6
 :parameters ()
 :precondition (and (at_x3) (at_y6))
 :effect (and (have_item21))
)

(:action easymark_item8_3_7
 :parameters ()
 :precondition (and (at_x3) (at_y7))
 :effect (and (have_item8))
)

(:action easymark_item10_3_7
 :parameters ()
 :precondition (and (at_x3) (at_y7))
 :effect (and (have_item10))
)

(:action easymark_item19_3_7
 :parameters ()
 :precondition (and (at_x3) (at_y7))
 :effect (and (have_item19))
)

(:action easymark_item25_3_7
 :parameters ()
 :precondition (and (at_x3) (at_y7))
 :effect (and (have_item25))
)

(:action easymark_item30_3_7
 :parameters ()
 :precondition (and (at_x3) (at_y7))
 :effect (and (have_item30))
)

(:action easymark_item4_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and (have_item4))
)

(:action easymark_item14_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and (have_item14))
)

(:action easymark_item16_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and (have_item16))
)

(:action easymark_item22_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and (have_item22))
)

(:action easymark_item8_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :effect (and (have_item8))
)

(:action easymark_item15_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :effect (and (have_item15))
)

(:action easymark_item2_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and (have_item2))
)

(:action easymark_item10_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and (have_item10))
)

(:action easymark_item17_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and (have_item17))
)

(:action easymark_item23_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and (have_item23))
)

(:action easymark_item24_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and (have_item24))
)

(:action easymark_item8_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :effect (and (have_item8))
)

(:action easymark_item17_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :effect (and (have_item17))
)

(:action easymark_item18_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :effect (and (have_item18))
)

(:action easymark_item27_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :effect (and (have_item27))
)

(:action easymark_item0_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and (have_item0))
)

(:action easymark_item9_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and (have_item9))
)

(:action easymark_item10_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and (have_item10))
)

(:action easymark_item17_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and (have_item17))
)

(:action easymark_item19_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and (have_item19))
)

(:action easymark_item20_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and (have_item20))
)

(:action easymark_item22_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and (have_item22))
)

(:action easymark_item1_4_6
 :parameters ()
 :precondition (and (at_x4) (at_y6))
 :effect (and (have_item1))
)

(:action easymark_item9_4_7
 :parameters ()
 :precondition (and (at_x4) (at_y7))
 :effect (and (have_item9))
)

(:action easymark_item19_4_7
 :parameters ()
 :precondition (and (at_x4) (at_y7))
 :effect (and (have_item19))
)

(:action easymark_item6_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and (have_item6))
)

(:action easymark_item7_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and (have_item7))
)

(:action easymark_item8_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and (have_item8))
)

(:action easymark_item17_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and (have_item17))
)

(:action easymark_item25_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and (have_item25))
)

(:action easymark_item26_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and (have_item26))
)

(:action easymark_item1_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :effect (and (have_item1))
)

(:action easymark_item18_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :effect (and (have_item18))
)

(:action easymark_item23_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :effect (and (have_item23))
)

(:action easymark_item29_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :effect (and (have_item29))
)

(:action easymark_item31_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :effect (and (have_item31))
)

(:action easymark_item10_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and (have_item10))
)

(:action easymark_item21_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and (have_item21))
)

(:action easymark_item27_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and (have_item27))
)

(:action easymark_item6_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and (have_item6))
)

(:action easymark_item8_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and (have_item8))
)

(:action easymark_item9_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and (have_item9))
)

(:action easymark_item15_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and (have_item15))
)

(:action easymark_item4_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and (have_item4))
)

(:action easymark_item17_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and (have_item17))
)

(:action easymark_item24_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :effect (and (have_item24))
)

(:action easymark_item25_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :effect (and (have_item25))
)

(:action easymark_item30_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :effect (and (have_item30))
)

(:action easymark_item0_5_6
 :parameters ()
 :precondition (and (at_x5) (at_y6))
 :effect (and (have_item0))
)

(:action easymark_item24_5_6
 :parameters ()
 :precondition (and (at_x5) (at_y6))
 :effect (and (have_item24))
)

(:action easymark_item25_5_6
 :parameters ()
 :precondition (and (at_x5) (at_y6))
 :effect (and (have_item25))
)

(:action easymark_item0_5_7
 :parameters ()
 :precondition (and (at_x5) (at_y7))
 :effect (and (have_item0))
)

(:action easymark_item6_6_0
 :parameters ()
 :precondition (and (at_x6) (at_y0))
 :effect (and (have_item6))
)

(:action easymark_item10_6_0
 :parameters ()
 :precondition (and (at_x6) (at_y0))
 :effect (and (have_item10))
)

(:action easymark_item12_6_0
 :parameters ()
 :precondition (and (at_x6) (at_y0))
 :effect (and (have_item12))
)

(:action easymark_item23_6_0
 :parameters ()
 :precondition (and (at_x6) (at_y0))
 :effect (and (have_item23))
)

(:action easymark_item2_6_1
 :parameters ()
 :precondition (and (at_x6) (at_y1))
 :effect (and (have_item2))
)

(:action easymark_item21_6_1
 :parameters ()
 :precondition (and (at_x6) (at_y1))
 :effect (and (have_item21))
)

(:action easymark_item27_6_1
 :parameters ()
 :precondition (and (at_x6) (at_y1))
 :effect (and (have_item27))
)

(:action easymark_item11_6_2
 :parameters ()
 :precondition (and (at_x6) (at_y2))
 :effect (and (have_item11))
)

(:action easymark_item13_6_2
 :parameters ()
 :precondition (and (at_x6) (at_y2))
 :effect (and (have_item13))
)

(:action easymark_item15_6_2
 :parameters ()
 :precondition (and (at_x6) (at_y2))
 :effect (and (have_item15))
)

(:action easymark_item16_6_2
 :parameters ()
 :precondition (and (at_x6) (at_y2))
 :effect (and (have_item16))
)

(:action easymark_item20_6_2
 :parameters ()
 :precondition (and (at_x6) (at_y2))
 :effect (and (have_item20))
)

(:action easymark_item22_6_3
 :parameters ()
 :precondition (and (at_x6) (at_y3))
 :effect (and (have_item22))
)

(:action easymark_item23_6_3
 :parameters ()
 :precondition (and (at_x6) (at_y3))
 :effect (and (have_item23))
)

(:action easymark_item27_6_3
 :parameters ()
 :precondition (and (at_x6) (at_y3))
 :effect (and (have_item27))
)

(:action easymark_item3_6_4
 :parameters ()
 :precondition (and (at_x6) (at_y4))
 :effect (and (have_item3))
)

(:action easymark_item9_6_4
 :parameters ()
 :precondition (and (at_x6) (at_y4))
 :effect (and (have_item9))
)

(:action easymark_item10_6_4
 :parameters ()
 :precondition (and (at_x6) (at_y4))
 :effect (and (have_item10))
)

(:action easymark_item18_6_4
 :parameters ()
 :precondition (and (at_x6) (at_y4))
 :effect (and (have_item18))
)

(:action easymark_item7_6_5
 :parameters ()
 :precondition (and (at_x6) (at_y5))
 :effect (and (have_item7))
)

(:action easymark_item8_6_5
 :parameters ()
 :precondition (and (at_x6) (at_y5))
 :effect (and (have_item8))
)

(:action easymark_item10_6_5
 :parameters ()
 :precondition (and (at_x6) (at_y5))
 :effect (and (have_item10))
)

(:action easymark_item15_6_5
 :parameters ()
 :precondition (and (at_x6) (at_y5))
 :effect (and (have_item15))
)

(:action easymark_item22_6_5
 :parameters ()
 :precondition (and (at_x6) (at_y5))
 :effect (and (have_item22))
)

(:action easymark_item0_6_6
 :parameters ()
 :precondition (and (at_x6) (at_y6))
 :effect (and (have_item0))
)

(:action easymark_item14_6_6
 :parameters ()
 :precondition (and (at_x6) (at_y6))
 :effect (and (have_item14))
)

(:action easymark_item16_6_6
 :parameters ()
 :precondition (and (at_x6) (at_y6))
 :effect (and (have_item16))
)

(:action easymark_item19_6_6
 :parameters ()
 :precondition (and (at_x6) (at_y6))
 :effect (and (have_item19))
)

(:action easymark_item5_6_7
 :parameters ()
 :precondition (and (at_x6) (at_y7))
 :effect (and (have_item5))
)

(:action easymark_item13_6_7
 :parameters ()
 :precondition (and (at_x6) (at_y7))
 :effect (and (have_item13))
)

(:action easymark_item28_6_7
 :parameters ()
 :precondition (and (at_x6) (at_y7))
 :effect (and (have_item28))
)

(:action easymark_item10_7_0
 :parameters ()
 :precondition (and (at_x7) (at_y0))
 :effect (and (have_item10))
)

(:action easymark_item17_7_0
 :parameters ()
 :precondition (and (at_x7) (at_y0))
 :effect (and (have_item17))
)

(:action easymark_item20_7_0
 :parameters ()
 :precondition (and (at_x7) (at_y0))
 :effect (and (have_item20))
)

(:action easymark_item23_7_0
 :parameters ()
 :precondition (and (at_x7) (at_y0))
 :effect (and (have_item23))
)

(:action easymark_item30_7_0
 :parameters ()
 :precondition (and (at_x7) (at_y0))
 :effect (and (have_item30))
)

(:action easymark_item6_7_1
 :parameters ()
 :precondition (and (at_x7) (at_y1))
 :effect (and (have_item6))
)

(:action easymark_item12_7_1
 :parameters ()
 :precondition (and (at_x7) (at_y1))
 :effect (and (have_item12))
)

(:action easymark_item11_7_2
 :parameters ()
 :precondition (and (at_x7) (at_y2))
 :effect (and (have_item11))
)

(:action easymark_item14_7_2
 :parameters ()
 :precondition (and (at_x7) (at_y2))
 :effect (and (have_item14))
)

(:action easymark_item22_7_2
 :parameters ()
 :precondition (and (at_x7) (at_y2))
 :effect (and (have_item22))
)

(:action easymark_item24_7_2
 :parameters ()
 :precondition (and (at_x7) (at_y2))
 :effect (and (have_item24))
)

(:action easymark_item31_7_2
 :parameters ()
 :precondition (and (at_x7) (at_y2))
 :effect (and (have_item31))
)

(:action easymark_item9_7_3
 :parameters ()
 :precondition (and (at_x7) (at_y3))
 :effect (and (have_item9))
)

(:action easymark_item20_7_3
 :parameters ()
 :precondition (and (at_x7) (at_y3))
 :effect (and (have_item20))
)

(:action easymark_item27_7_3
 :parameters ()
 :precondition (and (at_x7) (at_y3))
 :effect (and (have_item27))
)

(:action easymark_item17_7_4
 :parameters ()
 :precondition (and (at_x7) (at_y4))
 :effect (and (have_item17))
)

(:action easymark_item18_7_4
 :parameters ()
 :precondition (and (at_x7) (at_y4))
 :effect (and (have_item18))
)

(:action easymark_item19_7_4
 :parameters ()
 :precondition (and (at_x7) (at_y4))
 :effect (and (have_item19))
)

(:action easymark_item21_7_4
 :parameters ()
 :precondition (and (at_x7) (at_y4))
 :effect (and (have_item21))
)

(:action easymark_item25_7_4
 :parameters ()
 :precondition (and (at_x7) (at_y4))
 :effect (and (have_item25))
)

(:action easymark_item0_7_5
 :parameters ()
 :precondition (and (at_x7) (at_y5))
 :effect (and (have_item0))
)

(:action easymark_item7_7_5
 :parameters ()
 :precondition (and (at_x7) (at_y5))
 :effect (and (have_item7))
)

(:action easymark_item27_7_5
 :parameters ()
 :precondition (and (at_x7) (at_y5))
 :effect (and (have_item27))
)

(:action easymark_item14_7_6
 :parameters ()
 :precondition (and (at_x7) (at_y6))
 :effect (and (have_item14))
)

(:action easymark_item16_7_6
 :parameters ()
 :precondition (and (at_x7) (at_y6))
 :effect (and (have_item16))
)

(:action easymark_item20_7_6
 :parameters ()
 :precondition (and (at_x7) (at_y6))
 :effect (and (have_item20))
)

(:action easymark_item24_7_6
 :parameters ()
 :precondition (and (at_x7) (at_y6))
 :effect (and (have_item24))
)

(:action easymark_item29_7_6
 :parameters ()
 :precondition (and (at_x7) (at_y6))
 :effect (and (have_item29))
)

(:action easymark_item25_7_7
 :parameters ()
 :precondition (and (at_x7) (at_y7))
 :effect (and (have_item25))
)
)
