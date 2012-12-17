(define (domain HoboNav)
(:requirements :fluents :incomplete-domain)

(:predicates
 (at_x0) (at_y0) (at_x1) (at_y1) (at_x2) (at_y2) (at_x3) (at_y3) (at_x4) (at_y4) (at_x5) (at_y5)
 (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63)
)

(:action move_0_0_1_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_x0)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_1_0_0_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_x1)) (at_x0))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_0_0_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_y0)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_0_1_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_y1)) (at_y0))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_0_1_1_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_x0)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_1_1_0_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_x1)) (at_x0))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_0_1_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_y1)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_0_2_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_y2)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_0_2_1_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_x0)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_1_2_0_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_x1)) (at_x0))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_0_2_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_y2)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_0_3_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_y3)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_0_3_1_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_x0)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_1_3_0_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_x1)) (at_x0))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_0_3_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_y3)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_0_4_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_y4)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_0_4_1_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_x0)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_1_4_0_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_x1)) (at_x0))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_0_4_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_y4)) (at_y5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_0_5_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_y5)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_0_5_1_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_x0)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_1_5_0_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_x1)) (at_x0))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_1_0_2_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_x1)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_2_0_1_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_x2)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_1_0_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_y0)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_1_1_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_y1)) (at_y0))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_1_1_2_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_x1)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_2_1_1_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_x2)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_1_1_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_y1)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_1_2_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_y2)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_1_2_2_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_x1)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_2_2_1_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_x2)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_1_2_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_y2)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_1_3_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_y3)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_1_3_2_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_x1)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_2_3_1_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_x2)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_1_3_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_y3)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_1_4_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_y4)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_1_4_2_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_x1)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_2_4_1_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_x2)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_1_4_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_y4)) (at_y5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_1_5_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_y5)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_1_5_2_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_x1)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_2_5_1_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_x2)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_2_0_3_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_x2)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_3_0_2_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_x3)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_2_0_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_y0)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_2_1_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_y1)) (at_y0))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_2_1_3_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_x2)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_3_1_2_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_x3)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_2_1_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_y1)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_2_2_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_y2)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_2_2_3_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_x2)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_3_2_2_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_x3)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_2_2_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_y2)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_2_3_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_y3)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_2_3_3_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_x2)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_3_3_2_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_x3)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_2_3_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_y3)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_2_4_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_y4)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_2_4_3_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_x2)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_3_4_2_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_x3)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_2_4_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_y4)) (at_y5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_2_5_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_y5)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_2_5_3_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_x2)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_3_5_2_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_x3)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_3_0_4_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_x3)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_4_0_3_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_x4)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_3_0_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_y0)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_3_1_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_y1)) (at_y0))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_3_1_4_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_x3)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_4_1_3_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_x4)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_3_1_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_y1)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_3_2_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_y2)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_3_2_4_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_x3)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_4_2_3_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_x4)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_3_2_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_y2)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_3_3_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_y3)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_3_3_4_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_x3)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_4_3_3_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_x4)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_3_3_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_y3)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_3_4_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_y4)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_3_4_4_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_x3)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_4_4_3_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_x4)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_3_4_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_y4)) (at_y5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_3_5_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_y5)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_3_5_4_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_x3)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_4_5_3_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_x4)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_4_0_5_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_x4)) (at_x5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_5_0_4_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_x5)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_4_0_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_y0)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_4_1_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_y1)) (at_y0))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_4_1_5_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_x4)) (at_x5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_5_1_4_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_x5)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_4_1_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_y1)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_4_2_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_y2)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_4_2_5_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_x4)) (at_x5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_5_2_4_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_x5)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_4_2_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_y2)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_4_3_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_y3)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_4_3_5_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_x4)) (at_x5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_5_3_4_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_x5)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_4_3_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_y3)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_4_4_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_y4)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_4_4_5_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_x4)) (at_x5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_5_4_4_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_x5)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_4_4_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_y4)) (at_y5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_4_5_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_y5)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_4_5_5_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_x4)) (at_x5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_5_5_4_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_x5)) (at_x4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_5_0_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_y0)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_5_1_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_y1)) (at_y0))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_5_1_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_y1)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_5_2_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_y2)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_5_2_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_y2)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_5_3_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_y3)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_5_3_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_y3)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_5_4_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_y4)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_5_4_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_y4)) (at_y5))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
)

(:action move_5_5_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63))
 :effect (and (not (at_y5)) (at_y4))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)))
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

(:action gamble_item32_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item32))
)

(:action gamble_item33_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item33))
)

(:action gamble_item34_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item34))
)

(:action gamble_item35_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item35))
)

(:action gamble_item36_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item36))
)

(:action gamble_item37_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item37))
)

(:action gamble_item38_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item38))
)

(:action gamble_item39_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item39))
)

(:action gamble_item40_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item40))
)

(:action gamble_item41_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item41))
)

(:action gamble_item42_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item42))
)

(:action gamble_item43_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item43))
)

(:action gamble_item44_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item44))
)

(:action gamble_item45_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item45))
)

(:action gamble_item46_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item46))
)

(:action gamble_item47_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item47))
)

(:action gamble_item48_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item48))
)

(:action gamble_item49_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item49))
)

(:action gamble_item50_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item50))
)

(:action gamble_item51_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item51))
)

(:action gamble_item52_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item52))
)

(:action gamble_item53_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item53))
)

(:action gamble_item54_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item54))
)

(:action gamble_item55_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item55))
)

(:action gamble_item56_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item56))
)

(:action gamble_item57_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item57))
)

(:action gamble_item58_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item58))
)

(:action gamble_item59_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item59))
)

(:action gamble_item60_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item60))
)

(:action gamble_item61_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item61))
)

(:action gamble_item62_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item62))
)

(:action gamble_item63_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item63))
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

(:action gamble_item32_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item32))
)

(:action gamble_item33_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item33))
)

(:action gamble_item34_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item34))
)

(:action gamble_item35_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item35))
)

(:action gamble_item36_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item36))
)

(:action gamble_item37_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item37))
)

(:action gamble_item38_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item38))
)

(:action gamble_item39_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item39))
)

(:action gamble_item40_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item40))
)

(:action gamble_item41_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item41))
)

(:action gamble_item42_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item42))
)

(:action gamble_item43_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item43))
)

(:action gamble_item44_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item44))
)

(:action gamble_item45_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item45))
)

(:action gamble_item46_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item46))
)

(:action gamble_item47_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item47))
)

(:action gamble_item48_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item48))
)

(:action gamble_item49_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item49))
)

(:action gamble_item50_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item50))
)

(:action gamble_item51_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item51))
)

(:action gamble_item52_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item52))
)

(:action gamble_item53_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item53))
)

(:action gamble_item54_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item54))
)

(:action gamble_item55_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item55))
)

(:action gamble_item56_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item56))
)

(:action gamble_item57_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item57))
)

(:action gamble_item58_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item58))
)

(:action gamble_item59_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item59))
)

(:action gamble_item60_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item60))
)

(:action gamble_item61_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item61))
)

(:action gamble_item62_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item62))
)

(:action gamble_item63_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item63))
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

(:action gamble_item32_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item32))
)

(:action gamble_item33_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item33))
)

(:action gamble_item34_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item34))
)

(:action gamble_item35_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item35))
)

(:action gamble_item36_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item36))
)

(:action gamble_item37_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item37))
)

(:action gamble_item38_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item38))
)

(:action gamble_item39_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item39))
)

(:action gamble_item40_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item40))
)

(:action gamble_item41_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item41))
)

(:action gamble_item42_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item42))
)

(:action gamble_item43_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item43))
)

(:action gamble_item44_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item44))
)

(:action gamble_item45_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item45))
)

(:action gamble_item46_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item46))
)

(:action gamble_item47_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item47))
)

(:action gamble_item48_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item48))
)

(:action gamble_item49_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item49))
)

(:action gamble_item50_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item50))
)

(:action gamble_item51_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item51))
)

(:action gamble_item52_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item52))
)

(:action gamble_item53_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item53))
)

(:action gamble_item54_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item54))
)

(:action gamble_item55_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item55))
)

(:action gamble_item56_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item56))
)

(:action gamble_item57_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item57))
)

(:action gamble_item58_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item58))
)

(:action gamble_item59_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item59))
)

(:action gamble_item60_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item60))
)

(:action gamble_item61_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item61))
)

(:action gamble_item62_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item62))
)

(:action gamble_item63_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item63))
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

(:action gamble_item32_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item32))
)

(:action gamble_item33_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item33))
)

(:action gamble_item34_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item34))
)

(:action gamble_item35_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item35))
)

(:action gamble_item36_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item36))
)

(:action gamble_item37_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item37))
)

(:action gamble_item38_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item38))
)

(:action gamble_item39_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item39))
)

(:action gamble_item40_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item40))
)

(:action gamble_item41_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item41))
)

(:action gamble_item42_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item42))
)

(:action gamble_item43_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item43))
)

(:action gamble_item44_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item44))
)

(:action gamble_item45_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item45))
)

(:action gamble_item46_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item46))
)

(:action gamble_item47_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item47))
)

(:action gamble_item48_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item48))
)

(:action gamble_item49_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item49))
)

(:action gamble_item50_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item50))
)

(:action gamble_item51_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item51))
)

(:action gamble_item52_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item52))
)

(:action gamble_item53_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item53))
)

(:action gamble_item54_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item54))
)

(:action gamble_item55_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item55))
)

(:action gamble_item56_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item56))
)

(:action gamble_item57_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item57))
)

(:action gamble_item58_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item58))
)

(:action gamble_item59_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item59))
)

(:action gamble_item60_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item60))
)

(:action gamble_item61_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item61))
)

(:action gamble_item62_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item62))
)

(:action gamble_item63_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item63))
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

(:action gamble_item32_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and )
 :poss-effect (and (have_item32))
)

(:action gamble_item33_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and )
 :poss-effect (and (have_item33))
)

(:action gamble_item34_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and )
 :poss-effect (and (have_item34))
)

(:action gamble_item35_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and )
 :poss-effect (and (have_item35))
)

(:action gamble_item36_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and )
 :poss-effect (and (have_item36))
)

(:action gamble_item37_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and )
 :poss-effect (and (have_item37))
)

(:action gamble_item38_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and )
 :poss-effect (and (have_item38))
)

(:action gamble_item39_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and )
 :poss-effect (and (have_item39))
)

(:action gamble_item40_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and )
 :poss-effect (and (have_item40))
)

(:action gamble_item41_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and )
 :poss-effect (and (have_item41))
)

(:action gamble_item42_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and )
 :poss-effect (and (have_item42))
)

(:action gamble_item43_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and )
 :poss-effect (and (have_item43))
)

(:action gamble_item44_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and )
 :poss-effect (and (have_item44))
)

(:action gamble_item45_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and )
 :poss-effect (and (have_item45))
)

(:action gamble_item46_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and )
 :poss-effect (and (have_item46))
)

(:action gamble_item47_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and )
 :poss-effect (and (have_item47))
)

(:action gamble_item48_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and )
 :poss-effect (and (have_item48))
)

(:action gamble_item49_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and )
 :poss-effect (and (have_item49))
)

(:action gamble_item50_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and )
 :poss-effect (and (have_item50))
)

(:action gamble_item51_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and )
 :poss-effect (and (have_item51))
)

(:action gamble_item52_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and )
 :poss-effect (and (have_item52))
)

(:action gamble_item53_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and )
 :poss-effect (and (have_item53))
)

(:action gamble_item54_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and )
 :poss-effect (and (have_item54))
)

(:action gamble_item55_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and )
 :poss-effect (and (have_item55))
)

(:action gamble_item56_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and )
 :poss-effect (and (have_item56))
)

(:action gamble_item57_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and )
 :poss-effect (and (have_item57))
)

(:action gamble_item58_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and )
 :poss-effect (and (have_item58))
)

(:action gamble_item59_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and )
 :poss-effect (and (have_item59))
)

(:action gamble_item60_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and )
 :poss-effect (and (have_item60))
)

(:action gamble_item61_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and )
 :poss-effect (and (have_item61))
)

(:action gamble_item62_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and )
 :poss-effect (and (have_item62))
)

(:action gamble_item63_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and )
 :poss-effect (and (have_item63))
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

(:action gamble_item32_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and )
 :poss-effect (and (have_item32))
)

(:action gamble_item33_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and )
 :poss-effect (and (have_item33))
)

(:action gamble_item34_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and )
 :poss-effect (and (have_item34))
)

(:action gamble_item35_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and )
 :poss-effect (and (have_item35))
)

(:action gamble_item36_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and )
 :poss-effect (and (have_item36))
)

(:action gamble_item37_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and )
 :poss-effect (and (have_item37))
)

(:action gamble_item38_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and )
 :poss-effect (and (have_item38))
)

(:action gamble_item39_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and )
 :poss-effect (and (have_item39))
)

(:action gamble_item40_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and )
 :poss-effect (and (have_item40))
)

(:action gamble_item41_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and )
 :poss-effect (and (have_item41))
)

(:action gamble_item42_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and )
 :poss-effect (and (have_item42))
)

(:action gamble_item43_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and )
 :poss-effect (and (have_item43))
)

(:action gamble_item44_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and )
 :poss-effect (and (have_item44))
)

(:action gamble_item45_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and )
 :poss-effect (and (have_item45))
)

(:action gamble_item46_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and )
 :poss-effect (and (have_item46))
)

(:action gamble_item47_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and )
 :poss-effect (and (have_item47))
)

(:action gamble_item48_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and )
 :poss-effect (and (have_item48))
)

(:action gamble_item49_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and )
 :poss-effect (and (have_item49))
)

(:action gamble_item50_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and )
 :poss-effect (and (have_item50))
)

(:action gamble_item51_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and )
 :poss-effect (and (have_item51))
)

(:action gamble_item52_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and )
 :poss-effect (and (have_item52))
)

(:action gamble_item53_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and )
 :poss-effect (and (have_item53))
)

(:action gamble_item54_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and )
 :poss-effect (and (have_item54))
)

(:action gamble_item55_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and )
 :poss-effect (and (have_item55))
)

(:action gamble_item56_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and )
 :poss-effect (and (have_item56))
)

(:action gamble_item57_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and )
 :poss-effect (and (have_item57))
)

(:action gamble_item58_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and )
 :poss-effect (and (have_item58))
)

(:action gamble_item59_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and )
 :poss-effect (and (have_item59))
)

(:action gamble_item60_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and )
 :poss-effect (and (have_item60))
)

(:action gamble_item61_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and )
 :poss-effect (and (have_item61))
)

(:action gamble_item62_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and )
 :poss-effect (and (have_item62))
)

(:action gamble_item63_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and )
 :poss-effect (and (have_item63))
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

(:action gamble_item32_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item32))
)

(:action gamble_item33_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item33))
)

(:action gamble_item34_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item34))
)

(:action gamble_item35_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item35))
)

(:action gamble_item36_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item36))
)

(:action gamble_item37_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item37))
)

(:action gamble_item38_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item38))
)

(:action gamble_item39_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item39))
)

(:action gamble_item40_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item40))
)

(:action gamble_item41_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item41))
)

(:action gamble_item42_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item42))
)

(:action gamble_item43_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item43))
)

(:action gamble_item44_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item44))
)

(:action gamble_item45_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item45))
)

(:action gamble_item46_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item46))
)

(:action gamble_item47_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item47))
)

(:action gamble_item48_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item48))
)

(:action gamble_item49_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item49))
)

(:action gamble_item50_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item50))
)

(:action gamble_item51_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item51))
)

(:action gamble_item52_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item52))
)

(:action gamble_item53_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item53))
)

(:action gamble_item54_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item54))
)

(:action gamble_item55_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item55))
)

(:action gamble_item56_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item56))
)

(:action gamble_item57_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item57))
)

(:action gamble_item58_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item58))
)

(:action gamble_item59_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item59))
)

(:action gamble_item60_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item60))
)

(:action gamble_item61_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item61))
)

(:action gamble_item62_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item62))
)

(:action gamble_item63_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item63))
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

(:action gamble_item32_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item32))
)

(:action gamble_item33_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item33))
)

(:action gamble_item34_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item34))
)

(:action gamble_item35_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item35))
)

(:action gamble_item36_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item36))
)

(:action gamble_item37_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item37))
)

(:action gamble_item38_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item38))
)

(:action gamble_item39_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item39))
)

(:action gamble_item40_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item40))
)

(:action gamble_item41_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item41))
)

(:action gamble_item42_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item42))
)

(:action gamble_item43_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item43))
)

(:action gamble_item44_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item44))
)

(:action gamble_item45_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item45))
)

(:action gamble_item46_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item46))
)

(:action gamble_item47_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item47))
)

(:action gamble_item48_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item48))
)

(:action gamble_item49_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item49))
)

(:action gamble_item50_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item50))
)

(:action gamble_item51_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item51))
)

(:action gamble_item52_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item52))
)

(:action gamble_item53_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item53))
)

(:action gamble_item54_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item54))
)

(:action gamble_item55_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item55))
)

(:action gamble_item56_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item56))
)

(:action gamble_item57_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item57))
)

(:action gamble_item58_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item58))
)

(:action gamble_item59_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item59))
)

(:action gamble_item60_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item60))
)

(:action gamble_item61_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item61))
)

(:action gamble_item62_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item62))
)

(:action gamble_item63_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item63))
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

(:action gamble_item32_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item32))
)

(:action gamble_item33_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item33))
)

(:action gamble_item34_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item34))
)

(:action gamble_item35_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item35))
)

(:action gamble_item36_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item36))
)

(:action gamble_item37_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item37))
)

(:action gamble_item38_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item38))
)

(:action gamble_item39_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item39))
)

(:action gamble_item40_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item40))
)

(:action gamble_item41_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item41))
)

(:action gamble_item42_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item42))
)

(:action gamble_item43_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item43))
)

(:action gamble_item44_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item44))
)

(:action gamble_item45_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item45))
)

(:action gamble_item46_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item46))
)

(:action gamble_item47_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item47))
)

(:action gamble_item48_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item48))
)

(:action gamble_item49_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item49))
)

(:action gamble_item50_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item50))
)

(:action gamble_item51_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item51))
)

(:action gamble_item52_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item52))
)

(:action gamble_item53_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item53))
)

(:action gamble_item54_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item54))
)

(:action gamble_item55_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item55))
)

(:action gamble_item56_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item56))
)

(:action gamble_item57_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item57))
)

(:action gamble_item58_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item58))
)

(:action gamble_item59_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item59))
)

(:action gamble_item60_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item60))
)

(:action gamble_item61_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item61))
)

(:action gamble_item62_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item62))
)

(:action gamble_item63_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item63))
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

(:action gamble_item32_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item32))
)

(:action gamble_item33_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item33))
)

(:action gamble_item34_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item34))
)

(:action gamble_item35_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item35))
)

(:action gamble_item36_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item36))
)

(:action gamble_item37_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item37))
)

(:action gamble_item38_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item38))
)

(:action gamble_item39_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item39))
)

(:action gamble_item40_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item40))
)

(:action gamble_item41_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item41))
)

(:action gamble_item42_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item42))
)

(:action gamble_item43_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item43))
)

(:action gamble_item44_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item44))
)

(:action gamble_item45_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item45))
)

(:action gamble_item46_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item46))
)

(:action gamble_item47_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item47))
)

(:action gamble_item48_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item48))
)

(:action gamble_item49_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item49))
)

(:action gamble_item50_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item50))
)

(:action gamble_item51_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item51))
)

(:action gamble_item52_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item52))
)

(:action gamble_item53_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item53))
)

(:action gamble_item54_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item54))
)

(:action gamble_item55_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item55))
)

(:action gamble_item56_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item56))
)

(:action gamble_item57_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item57))
)

(:action gamble_item58_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item58))
)

(:action gamble_item59_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item59))
)

(:action gamble_item60_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item60))
)

(:action gamble_item61_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item61))
)

(:action gamble_item62_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item62))
)

(:action gamble_item63_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item63))
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

(:action gamble_item32_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and )
 :poss-effect (and (have_item32))
)

(:action gamble_item33_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and )
 :poss-effect (and (have_item33))
)

(:action gamble_item34_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and )
 :poss-effect (and (have_item34))
)

(:action gamble_item35_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and )
 :poss-effect (and (have_item35))
)

(:action gamble_item36_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and )
 :poss-effect (and (have_item36))
)

(:action gamble_item37_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and )
 :poss-effect (and (have_item37))
)

(:action gamble_item38_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and )
 :poss-effect (and (have_item38))
)

(:action gamble_item39_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and )
 :poss-effect (and (have_item39))
)

(:action gamble_item40_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and )
 :poss-effect (and (have_item40))
)

(:action gamble_item41_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and )
 :poss-effect (and (have_item41))
)

(:action gamble_item42_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and )
 :poss-effect (and (have_item42))
)

(:action gamble_item43_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and )
 :poss-effect (and (have_item43))
)

(:action gamble_item44_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and )
 :poss-effect (and (have_item44))
)

(:action gamble_item45_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and )
 :poss-effect (and (have_item45))
)

(:action gamble_item46_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and )
 :poss-effect (and (have_item46))
)

(:action gamble_item47_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and )
 :poss-effect (and (have_item47))
)

(:action gamble_item48_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and )
 :poss-effect (and (have_item48))
)

(:action gamble_item49_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and )
 :poss-effect (and (have_item49))
)

(:action gamble_item50_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and )
 :poss-effect (and (have_item50))
)

(:action gamble_item51_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and )
 :poss-effect (and (have_item51))
)

(:action gamble_item52_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and )
 :poss-effect (and (have_item52))
)

(:action gamble_item53_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and )
 :poss-effect (and (have_item53))
)

(:action gamble_item54_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and )
 :poss-effect (and (have_item54))
)

(:action gamble_item55_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and )
 :poss-effect (and (have_item55))
)

(:action gamble_item56_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and )
 :poss-effect (and (have_item56))
)

(:action gamble_item57_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and )
 :poss-effect (and (have_item57))
)

(:action gamble_item58_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and )
 :poss-effect (and (have_item58))
)

(:action gamble_item59_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and )
 :poss-effect (and (have_item59))
)

(:action gamble_item60_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and )
 :poss-effect (and (have_item60))
)

(:action gamble_item61_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and )
 :poss-effect (and (have_item61))
)

(:action gamble_item62_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and )
 :poss-effect (and (have_item62))
)

(:action gamble_item63_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and )
 :poss-effect (and (have_item63))
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

(:action gamble_item32_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and )
 :poss-effect (and (have_item32))
)

(:action gamble_item33_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and )
 :poss-effect (and (have_item33))
)

(:action gamble_item34_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and )
 :poss-effect (and (have_item34))
)

(:action gamble_item35_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and )
 :poss-effect (and (have_item35))
)

(:action gamble_item36_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and )
 :poss-effect (and (have_item36))
)

(:action gamble_item37_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and )
 :poss-effect (and (have_item37))
)

(:action gamble_item38_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and )
 :poss-effect (and (have_item38))
)

(:action gamble_item39_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and )
 :poss-effect (and (have_item39))
)

(:action gamble_item40_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and )
 :poss-effect (and (have_item40))
)

(:action gamble_item41_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and )
 :poss-effect (and (have_item41))
)

(:action gamble_item42_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and )
 :poss-effect (and (have_item42))
)

(:action gamble_item43_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and )
 :poss-effect (and (have_item43))
)

(:action gamble_item44_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and )
 :poss-effect (and (have_item44))
)

(:action gamble_item45_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and )
 :poss-effect (and (have_item45))
)

(:action gamble_item46_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and )
 :poss-effect (and (have_item46))
)

(:action gamble_item47_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and )
 :poss-effect (and (have_item47))
)

(:action gamble_item48_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and )
 :poss-effect (and (have_item48))
)

(:action gamble_item49_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and )
 :poss-effect (and (have_item49))
)

(:action gamble_item50_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and )
 :poss-effect (and (have_item50))
)

(:action gamble_item51_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and )
 :poss-effect (and (have_item51))
)

(:action gamble_item52_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and )
 :poss-effect (and (have_item52))
)

(:action gamble_item53_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and )
 :poss-effect (and (have_item53))
)

(:action gamble_item54_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and )
 :poss-effect (and (have_item54))
)

(:action gamble_item55_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and )
 :poss-effect (and (have_item55))
)

(:action gamble_item56_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and )
 :poss-effect (and (have_item56))
)

(:action gamble_item57_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and )
 :poss-effect (and (have_item57))
)

(:action gamble_item58_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and )
 :poss-effect (and (have_item58))
)

(:action gamble_item59_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and )
 :poss-effect (and (have_item59))
)

(:action gamble_item60_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and )
 :poss-effect (and (have_item60))
)

(:action gamble_item61_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and )
 :poss-effect (and (have_item61))
)

(:action gamble_item62_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and )
 :poss-effect (and (have_item62))
)

(:action gamble_item63_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and )
 :poss-effect (and (have_item63))
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

(:action gamble_item32_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item32))
)

(:action gamble_item33_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item33))
)

(:action gamble_item34_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item34))
)

(:action gamble_item35_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item35))
)

(:action gamble_item36_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item36))
)

(:action gamble_item37_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item37))
)

(:action gamble_item38_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item38))
)

(:action gamble_item39_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item39))
)

(:action gamble_item40_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item40))
)

(:action gamble_item41_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item41))
)

(:action gamble_item42_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item42))
)

(:action gamble_item43_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item43))
)

(:action gamble_item44_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item44))
)

(:action gamble_item45_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item45))
)

(:action gamble_item46_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item46))
)

(:action gamble_item47_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item47))
)

(:action gamble_item48_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item48))
)

(:action gamble_item49_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item49))
)

(:action gamble_item50_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item50))
)

(:action gamble_item51_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item51))
)

(:action gamble_item52_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item52))
)

(:action gamble_item53_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item53))
)

(:action gamble_item54_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item54))
)

(:action gamble_item55_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item55))
)

(:action gamble_item56_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item56))
)

(:action gamble_item57_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item57))
)

(:action gamble_item58_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item58))
)

(:action gamble_item59_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item59))
)

(:action gamble_item60_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item60))
)

(:action gamble_item61_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item61))
)

(:action gamble_item62_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item62))
)

(:action gamble_item63_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item63))
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

(:action gamble_item32_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item32))
)

(:action gamble_item33_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item33))
)

(:action gamble_item34_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item34))
)

(:action gamble_item35_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item35))
)

(:action gamble_item36_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item36))
)

(:action gamble_item37_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item37))
)

(:action gamble_item38_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item38))
)

(:action gamble_item39_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item39))
)

(:action gamble_item40_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item40))
)

(:action gamble_item41_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item41))
)

(:action gamble_item42_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item42))
)

(:action gamble_item43_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item43))
)

(:action gamble_item44_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item44))
)

(:action gamble_item45_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item45))
)

(:action gamble_item46_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item46))
)

(:action gamble_item47_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item47))
)

(:action gamble_item48_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item48))
)

(:action gamble_item49_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item49))
)

(:action gamble_item50_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item50))
)

(:action gamble_item51_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item51))
)

(:action gamble_item52_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item52))
)

(:action gamble_item53_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item53))
)

(:action gamble_item54_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item54))
)

(:action gamble_item55_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item55))
)

(:action gamble_item56_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item56))
)

(:action gamble_item57_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item57))
)

(:action gamble_item58_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item58))
)

(:action gamble_item59_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item59))
)

(:action gamble_item60_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item60))
)

(:action gamble_item61_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item61))
)

(:action gamble_item62_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item62))
)

(:action gamble_item63_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item63))
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

(:action gamble_item32_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item32))
)

(:action gamble_item33_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item33))
)

(:action gamble_item34_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item34))
)

(:action gamble_item35_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item35))
)

(:action gamble_item36_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item36))
)

(:action gamble_item37_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item37))
)

(:action gamble_item38_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item38))
)

(:action gamble_item39_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item39))
)

(:action gamble_item40_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item40))
)

(:action gamble_item41_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item41))
)

(:action gamble_item42_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item42))
)

(:action gamble_item43_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item43))
)

(:action gamble_item44_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item44))
)

(:action gamble_item45_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item45))
)

(:action gamble_item46_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item46))
)

(:action gamble_item47_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item47))
)

(:action gamble_item48_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item48))
)

(:action gamble_item49_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item49))
)

(:action gamble_item50_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item50))
)

(:action gamble_item51_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item51))
)

(:action gamble_item52_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item52))
)

(:action gamble_item53_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item53))
)

(:action gamble_item54_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item54))
)

(:action gamble_item55_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item55))
)

(:action gamble_item56_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item56))
)

(:action gamble_item57_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item57))
)

(:action gamble_item58_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item58))
)

(:action gamble_item59_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item59))
)

(:action gamble_item60_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item60))
)

(:action gamble_item61_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item61))
)

(:action gamble_item62_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item62))
)

(:action gamble_item63_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item63))
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

(:action gamble_item32_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item32))
)

(:action gamble_item33_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item33))
)

(:action gamble_item34_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item34))
)

(:action gamble_item35_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item35))
)

(:action gamble_item36_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item36))
)

(:action gamble_item37_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item37))
)

(:action gamble_item38_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item38))
)

(:action gamble_item39_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item39))
)

(:action gamble_item40_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item40))
)

(:action gamble_item41_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item41))
)

(:action gamble_item42_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item42))
)

(:action gamble_item43_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item43))
)

(:action gamble_item44_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item44))
)

(:action gamble_item45_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item45))
)

(:action gamble_item46_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item46))
)

(:action gamble_item47_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item47))
)

(:action gamble_item48_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item48))
)

(:action gamble_item49_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item49))
)

(:action gamble_item50_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item50))
)

(:action gamble_item51_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item51))
)

(:action gamble_item52_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item52))
)

(:action gamble_item53_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item53))
)

(:action gamble_item54_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item54))
)

(:action gamble_item55_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item55))
)

(:action gamble_item56_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item56))
)

(:action gamble_item57_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item57))
)

(:action gamble_item58_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item58))
)

(:action gamble_item59_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item59))
)

(:action gamble_item60_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item60))
)

(:action gamble_item61_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item61))
)

(:action gamble_item62_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item62))
)

(:action gamble_item63_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item63))
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

(:action gamble_item32_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and )
 :poss-effect (and (have_item32))
)

(:action gamble_item33_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and )
 :poss-effect (and (have_item33))
)

(:action gamble_item34_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and )
 :poss-effect (and (have_item34))
)

(:action gamble_item35_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and )
 :poss-effect (and (have_item35))
)

(:action gamble_item36_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and )
 :poss-effect (and (have_item36))
)

(:action gamble_item37_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and )
 :poss-effect (and (have_item37))
)

(:action gamble_item38_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and )
 :poss-effect (and (have_item38))
)

(:action gamble_item39_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and )
 :poss-effect (and (have_item39))
)

(:action gamble_item40_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and )
 :poss-effect (and (have_item40))
)

(:action gamble_item41_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and )
 :poss-effect (and (have_item41))
)

(:action gamble_item42_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and )
 :poss-effect (and (have_item42))
)

(:action gamble_item43_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and )
 :poss-effect (and (have_item43))
)

(:action gamble_item44_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and )
 :poss-effect (and (have_item44))
)

(:action gamble_item45_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and )
 :poss-effect (and (have_item45))
)

(:action gamble_item46_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and )
 :poss-effect (and (have_item46))
)

(:action gamble_item47_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and )
 :poss-effect (and (have_item47))
)

(:action gamble_item48_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and )
 :poss-effect (and (have_item48))
)

(:action gamble_item49_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and )
 :poss-effect (and (have_item49))
)

(:action gamble_item50_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and )
 :poss-effect (and (have_item50))
)

(:action gamble_item51_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and )
 :poss-effect (and (have_item51))
)

(:action gamble_item52_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and )
 :poss-effect (and (have_item52))
)

(:action gamble_item53_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and )
 :poss-effect (and (have_item53))
)

(:action gamble_item54_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and )
 :poss-effect (and (have_item54))
)

(:action gamble_item55_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and )
 :poss-effect (and (have_item55))
)

(:action gamble_item56_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and )
 :poss-effect (and (have_item56))
)

(:action gamble_item57_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and )
 :poss-effect (and (have_item57))
)

(:action gamble_item58_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and )
 :poss-effect (and (have_item58))
)

(:action gamble_item59_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and )
 :poss-effect (and (have_item59))
)

(:action gamble_item60_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and )
 :poss-effect (and (have_item60))
)

(:action gamble_item61_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and )
 :poss-effect (and (have_item61))
)

(:action gamble_item62_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and )
 :poss-effect (and (have_item62))
)

(:action gamble_item63_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and )
 :poss-effect (and (have_item63))
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

(:action gamble_item32_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :effect (and )
 :poss-effect (and (have_item32))
)

(:action gamble_item33_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :effect (and )
 :poss-effect (and (have_item33))
)

(:action gamble_item34_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :effect (and )
 :poss-effect (and (have_item34))
)

(:action gamble_item35_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :effect (and )
 :poss-effect (and (have_item35))
)

(:action gamble_item36_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :effect (and )
 :poss-effect (and (have_item36))
)

(:action gamble_item37_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :effect (and )
 :poss-effect (and (have_item37))
)

(:action gamble_item38_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :effect (and )
 :poss-effect (and (have_item38))
)

(:action gamble_item39_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :effect (and )
 :poss-effect (and (have_item39))
)

(:action gamble_item40_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :effect (and )
 :poss-effect (and (have_item40))
)

(:action gamble_item41_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :effect (and )
 :poss-effect (and (have_item41))
)

(:action gamble_item42_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :effect (and )
 :poss-effect (and (have_item42))
)

(:action gamble_item43_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :effect (and )
 :poss-effect (and (have_item43))
)

(:action gamble_item44_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :effect (and )
 :poss-effect (and (have_item44))
)

(:action gamble_item45_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :effect (and )
 :poss-effect (and (have_item45))
)

(:action gamble_item46_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :effect (and )
 :poss-effect (and (have_item46))
)

(:action gamble_item47_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :effect (and )
 :poss-effect (and (have_item47))
)

(:action gamble_item48_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :effect (and )
 :poss-effect (and (have_item48))
)

(:action gamble_item49_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :effect (and )
 :poss-effect (and (have_item49))
)

(:action gamble_item50_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :effect (and )
 :poss-effect (and (have_item50))
)

(:action gamble_item51_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :effect (and )
 :poss-effect (and (have_item51))
)

(:action gamble_item52_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :effect (and )
 :poss-effect (and (have_item52))
)

(:action gamble_item53_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :effect (and )
 :poss-effect (and (have_item53))
)

(:action gamble_item54_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :effect (and )
 :poss-effect (and (have_item54))
)

(:action gamble_item55_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :effect (and )
 :poss-effect (and (have_item55))
)

(:action gamble_item56_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :effect (and )
 :poss-effect (and (have_item56))
)

(:action gamble_item57_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :effect (and )
 :poss-effect (and (have_item57))
)

(:action gamble_item58_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :effect (and )
 :poss-effect (and (have_item58))
)

(:action gamble_item59_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :effect (and )
 :poss-effect (and (have_item59))
)

(:action gamble_item60_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :effect (and )
 :poss-effect (and (have_item60))
)

(:action gamble_item61_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :effect (and )
 :poss-effect (and (have_item61))
)

(:action gamble_item62_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :effect (and )
 :poss-effect (and (have_item62))
)

(:action gamble_item63_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :effect (and )
 :poss-effect (and (have_item63))
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

(:action gamble_item32_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item32))
)

(:action gamble_item33_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item33))
)

(:action gamble_item34_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item34))
)

(:action gamble_item35_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item35))
)

(:action gamble_item36_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item36))
)

(:action gamble_item37_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item37))
)

(:action gamble_item38_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item38))
)

(:action gamble_item39_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item39))
)

(:action gamble_item40_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item40))
)

(:action gamble_item41_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item41))
)

(:action gamble_item42_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item42))
)

(:action gamble_item43_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item43))
)

(:action gamble_item44_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item44))
)

(:action gamble_item45_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item45))
)

(:action gamble_item46_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item46))
)

(:action gamble_item47_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item47))
)

(:action gamble_item48_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item48))
)

(:action gamble_item49_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item49))
)

(:action gamble_item50_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item50))
)

(:action gamble_item51_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item51))
)

(:action gamble_item52_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item52))
)

(:action gamble_item53_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item53))
)

(:action gamble_item54_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item54))
)

(:action gamble_item55_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item55))
)

(:action gamble_item56_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item56))
)

(:action gamble_item57_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item57))
)

(:action gamble_item58_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item58))
)

(:action gamble_item59_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item59))
)

(:action gamble_item60_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item60))
)

(:action gamble_item61_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item61))
)

(:action gamble_item62_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item62))
)

(:action gamble_item63_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item63))
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

(:action gamble_item32_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item32))
)

(:action gamble_item33_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item33))
)

(:action gamble_item34_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item34))
)

(:action gamble_item35_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item35))
)

(:action gamble_item36_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item36))
)

(:action gamble_item37_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item37))
)

(:action gamble_item38_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item38))
)

(:action gamble_item39_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item39))
)

(:action gamble_item40_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item40))
)

(:action gamble_item41_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item41))
)

(:action gamble_item42_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item42))
)

(:action gamble_item43_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item43))
)

(:action gamble_item44_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item44))
)

(:action gamble_item45_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item45))
)

(:action gamble_item46_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item46))
)

(:action gamble_item47_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item47))
)

(:action gamble_item48_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item48))
)

(:action gamble_item49_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item49))
)

(:action gamble_item50_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item50))
)

(:action gamble_item51_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item51))
)

(:action gamble_item52_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item52))
)

(:action gamble_item53_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item53))
)

(:action gamble_item54_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item54))
)

(:action gamble_item55_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item55))
)

(:action gamble_item56_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item56))
)

(:action gamble_item57_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item57))
)

(:action gamble_item58_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item58))
)

(:action gamble_item59_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item59))
)

(:action gamble_item60_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item60))
)

(:action gamble_item61_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item61))
)

(:action gamble_item62_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item62))
)

(:action gamble_item63_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item63))
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

(:action gamble_item32_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item32))
)

(:action gamble_item33_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item33))
)

(:action gamble_item34_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item34))
)

(:action gamble_item35_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item35))
)

(:action gamble_item36_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item36))
)

(:action gamble_item37_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item37))
)

(:action gamble_item38_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item38))
)

(:action gamble_item39_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item39))
)

(:action gamble_item40_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item40))
)

(:action gamble_item41_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item41))
)

(:action gamble_item42_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item42))
)

(:action gamble_item43_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item43))
)

(:action gamble_item44_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item44))
)

(:action gamble_item45_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item45))
)

(:action gamble_item46_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item46))
)

(:action gamble_item47_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item47))
)

(:action gamble_item48_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item48))
)

(:action gamble_item49_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item49))
)

(:action gamble_item50_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item50))
)

(:action gamble_item51_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item51))
)

(:action gamble_item52_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item52))
)

(:action gamble_item53_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item53))
)

(:action gamble_item54_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item54))
)

(:action gamble_item55_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item55))
)

(:action gamble_item56_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item56))
)

(:action gamble_item57_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item57))
)

(:action gamble_item58_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item58))
)

(:action gamble_item59_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item59))
)

(:action gamble_item60_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item60))
)

(:action gamble_item61_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item61))
)

(:action gamble_item62_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item62))
)

(:action gamble_item63_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item63))
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

(:action gamble_item32_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item32))
)

(:action gamble_item33_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item33))
)

(:action gamble_item34_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item34))
)

(:action gamble_item35_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item35))
)

(:action gamble_item36_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item36))
)

(:action gamble_item37_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item37))
)

(:action gamble_item38_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item38))
)

(:action gamble_item39_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item39))
)

(:action gamble_item40_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item40))
)

(:action gamble_item41_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item41))
)

(:action gamble_item42_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item42))
)

(:action gamble_item43_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item43))
)

(:action gamble_item44_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item44))
)

(:action gamble_item45_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item45))
)

(:action gamble_item46_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item46))
)

(:action gamble_item47_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item47))
)

(:action gamble_item48_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item48))
)

(:action gamble_item49_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item49))
)

(:action gamble_item50_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item50))
)

(:action gamble_item51_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item51))
)

(:action gamble_item52_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item52))
)

(:action gamble_item53_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item53))
)

(:action gamble_item54_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item54))
)

(:action gamble_item55_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item55))
)

(:action gamble_item56_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item56))
)

(:action gamble_item57_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item57))
)

(:action gamble_item58_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item58))
)

(:action gamble_item59_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item59))
)

(:action gamble_item60_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item60))
)

(:action gamble_item61_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item61))
)

(:action gamble_item62_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item62))
)

(:action gamble_item63_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item63))
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

(:action gamble_item32_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and )
 :poss-effect (and (have_item32))
)

(:action gamble_item33_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and )
 :poss-effect (and (have_item33))
)

(:action gamble_item34_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and )
 :poss-effect (and (have_item34))
)

(:action gamble_item35_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and )
 :poss-effect (and (have_item35))
)

(:action gamble_item36_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and )
 :poss-effect (and (have_item36))
)

(:action gamble_item37_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and )
 :poss-effect (and (have_item37))
)

(:action gamble_item38_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and )
 :poss-effect (and (have_item38))
)

(:action gamble_item39_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and )
 :poss-effect (and (have_item39))
)

(:action gamble_item40_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and )
 :poss-effect (and (have_item40))
)

(:action gamble_item41_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and )
 :poss-effect (and (have_item41))
)

(:action gamble_item42_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and )
 :poss-effect (and (have_item42))
)

(:action gamble_item43_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and )
 :poss-effect (and (have_item43))
)

(:action gamble_item44_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and )
 :poss-effect (and (have_item44))
)

(:action gamble_item45_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and )
 :poss-effect (and (have_item45))
)

(:action gamble_item46_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and )
 :poss-effect (and (have_item46))
)

(:action gamble_item47_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and )
 :poss-effect (and (have_item47))
)

(:action gamble_item48_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and )
 :poss-effect (and (have_item48))
)

(:action gamble_item49_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and )
 :poss-effect (and (have_item49))
)

(:action gamble_item50_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and )
 :poss-effect (and (have_item50))
)

(:action gamble_item51_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and )
 :poss-effect (and (have_item51))
)

(:action gamble_item52_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and )
 :poss-effect (and (have_item52))
)

(:action gamble_item53_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and )
 :poss-effect (and (have_item53))
)

(:action gamble_item54_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and )
 :poss-effect (and (have_item54))
)

(:action gamble_item55_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and )
 :poss-effect (and (have_item55))
)

(:action gamble_item56_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and )
 :poss-effect (and (have_item56))
)

(:action gamble_item57_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and )
 :poss-effect (and (have_item57))
)

(:action gamble_item58_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and )
 :poss-effect (and (have_item58))
)

(:action gamble_item59_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and )
 :poss-effect (and (have_item59))
)

(:action gamble_item60_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and )
 :poss-effect (and (have_item60))
)

(:action gamble_item61_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and )
 :poss-effect (and (have_item61))
)

(:action gamble_item62_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and )
 :poss-effect (and (have_item62))
)

(:action gamble_item63_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and )
 :poss-effect (and (have_item63))
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

(:action gamble_item32_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and )
 :poss-effect (and (have_item32))
)

(:action gamble_item33_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and )
 :poss-effect (and (have_item33))
)

(:action gamble_item34_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and )
 :poss-effect (and (have_item34))
)

(:action gamble_item35_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and )
 :poss-effect (and (have_item35))
)

(:action gamble_item36_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and )
 :poss-effect (and (have_item36))
)

(:action gamble_item37_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and )
 :poss-effect (and (have_item37))
)

(:action gamble_item38_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and )
 :poss-effect (and (have_item38))
)

(:action gamble_item39_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and )
 :poss-effect (and (have_item39))
)

(:action gamble_item40_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and )
 :poss-effect (and (have_item40))
)

(:action gamble_item41_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and )
 :poss-effect (and (have_item41))
)

(:action gamble_item42_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and )
 :poss-effect (and (have_item42))
)

(:action gamble_item43_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and )
 :poss-effect (and (have_item43))
)

(:action gamble_item44_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and )
 :poss-effect (and (have_item44))
)

(:action gamble_item45_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and )
 :poss-effect (and (have_item45))
)

(:action gamble_item46_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and )
 :poss-effect (and (have_item46))
)

(:action gamble_item47_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and )
 :poss-effect (and (have_item47))
)

(:action gamble_item48_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and )
 :poss-effect (and (have_item48))
)

(:action gamble_item49_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and )
 :poss-effect (and (have_item49))
)

(:action gamble_item50_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and )
 :poss-effect (and (have_item50))
)

(:action gamble_item51_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and )
 :poss-effect (and (have_item51))
)

(:action gamble_item52_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and )
 :poss-effect (and (have_item52))
)

(:action gamble_item53_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and )
 :poss-effect (and (have_item53))
)

(:action gamble_item54_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and )
 :poss-effect (and (have_item54))
)

(:action gamble_item55_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and )
 :poss-effect (and (have_item55))
)

(:action gamble_item56_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and )
 :poss-effect (and (have_item56))
)

(:action gamble_item57_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and )
 :poss-effect (and (have_item57))
)

(:action gamble_item58_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and )
 :poss-effect (and (have_item58))
)

(:action gamble_item59_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and )
 :poss-effect (and (have_item59))
)

(:action gamble_item60_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and )
 :poss-effect (and (have_item60))
)

(:action gamble_item61_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and )
 :poss-effect (and (have_item61))
)

(:action gamble_item62_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and )
 :poss-effect (and (have_item62))
)

(:action gamble_item63_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and )
 :poss-effect (and (have_item63))
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

(:action gamble_item32_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and )
 :poss-effect (and (have_item32))
)

(:action gamble_item33_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and )
 :poss-effect (and (have_item33))
)

(:action gamble_item34_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and )
 :poss-effect (and (have_item34))
)

(:action gamble_item35_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and )
 :poss-effect (and (have_item35))
)

(:action gamble_item36_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and )
 :poss-effect (and (have_item36))
)

(:action gamble_item37_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and )
 :poss-effect (and (have_item37))
)

(:action gamble_item38_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and )
 :poss-effect (and (have_item38))
)

(:action gamble_item39_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and )
 :poss-effect (and (have_item39))
)

(:action gamble_item40_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and )
 :poss-effect (and (have_item40))
)

(:action gamble_item41_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and )
 :poss-effect (and (have_item41))
)

(:action gamble_item42_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and )
 :poss-effect (and (have_item42))
)

(:action gamble_item43_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and )
 :poss-effect (and (have_item43))
)

(:action gamble_item44_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and )
 :poss-effect (and (have_item44))
)

(:action gamble_item45_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and )
 :poss-effect (and (have_item45))
)

(:action gamble_item46_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and )
 :poss-effect (and (have_item46))
)

(:action gamble_item47_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and )
 :poss-effect (and (have_item47))
)

(:action gamble_item48_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and )
 :poss-effect (and (have_item48))
)

(:action gamble_item49_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and )
 :poss-effect (and (have_item49))
)

(:action gamble_item50_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and )
 :poss-effect (and (have_item50))
)

(:action gamble_item51_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and )
 :poss-effect (and (have_item51))
)

(:action gamble_item52_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and )
 :poss-effect (and (have_item52))
)

(:action gamble_item53_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and )
 :poss-effect (and (have_item53))
)

(:action gamble_item54_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and )
 :poss-effect (and (have_item54))
)

(:action gamble_item55_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and )
 :poss-effect (and (have_item55))
)

(:action gamble_item56_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and )
 :poss-effect (and (have_item56))
)

(:action gamble_item57_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and )
 :poss-effect (and (have_item57))
)

(:action gamble_item58_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and )
 :poss-effect (and (have_item58))
)

(:action gamble_item59_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and )
 :poss-effect (and (have_item59))
)

(:action gamble_item60_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and )
 :poss-effect (and (have_item60))
)

(:action gamble_item61_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and )
 :poss-effect (and (have_item61))
)

(:action gamble_item62_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and )
 :poss-effect (and (have_item62))
)

(:action gamble_item63_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and )
 :poss-effect (and (have_item63))
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

(:action gamble_item32_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :effect (and )
 :poss-effect (and (have_item32))
)

(:action gamble_item33_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :effect (and )
 :poss-effect (and (have_item33))
)

(:action gamble_item34_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :effect (and )
 :poss-effect (and (have_item34))
)

(:action gamble_item35_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :effect (and )
 :poss-effect (and (have_item35))
)

(:action gamble_item36_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :effect (and )
 :poss-effect (and (have_item36))
)

(:action gamble_item37_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :effect (and )
 :poss-effect (and (have_item37))
)

(:action gamble_item38_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :effect (and )
 :poss-effect (and (have_item38))
)

(:action gamble_item39_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :effect (and )
 :poss-effect (and (have_item39))
)

(:action gamble_item40_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :effect (and )
 :poss-effect (and (have_item40))
)

(:action gamble_item41_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :effect (and )
 :poss-effect (and (have_item41))
)

(:action gamble_item42_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :effect (and )
 :poss-effect (and (have_item42))
)

(:action gamble_item43_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :effect (and )
 :poss-effect (and (have_item43))
)

(:action gamble_item44_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :effect (and )
 :poss-effect (and (have_item44))
)

(:action gamble_item45_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :effect (and )
 :poss-effect (and (have_item45))
)

(:action gamble_item46_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :effect (and )
 :poss-effect (and (have_item46))
)

(:action gamble_item47_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :effect (and )
 :poss-effect (and (have_item47))
)

(:action gamble_item48_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :effect (and )
 :poss-effect (and (have_item48))
)

(:action gamble_item49_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :effect (and )
 :poss-effect (and (have_item49))
)

(:action gamble_item50_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :effect (and )
 :poss-effect (and (have_item50))
)

(:action gamble_item51_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :effect (and )
 :poss-effect (and (have_item51))
)

(:action gamble_item52_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :effect (and )
 :poss-effect (and (have_item52))
)

(:action gamble_item53_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :effect (and )
 :poss-effect (and (have_item53))
)

(:action gamble_item54_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :effect (and )
 :poss-effect (and (have_item54))
)

(:action gamble_item55_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :effect (and )
 :poss-effect (and (have_item55))
)

(:action gamble_item56_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :effect (and )
 :poss-effect (and (have_item56))
)

(:action gamble_item57_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :effect (and )
 :poss-effect (and (have_item57))
)

(:action gamble_item58_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :effect (and )
 :poss-effect (and (have_item58))
)

(:action gamble_item59_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :effect (and )
 :poss-effect (and (have_item59))
)

(:action gamble_item60_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :effect (and )
 :poss-effect (and (have_item60))
)

(:action gamble_item61_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :effect (and )
 :poss-effect (and (have_item61))
)

(:action gamble_item62_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :effect (and )
 :poss-effect (and (have_item62))
)

(:action gamble_item63_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :effect (and )
 :poss-effect (and (have_item63))
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

(:action gamble_item32_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and )
 :poss-effect (and (have_item32))
)

(:action gamble_item33_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and )
 :poss-effect (and (have_item33))
)

(:action gamble_item34_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and )
 :poss-effect (and (have_item34))
)

(:action gamble_item35_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and )
 :poss-effect (and (have_item35))
)

(:action gamble_item36_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and )
 :poss-effect (and (have_item36))
)

(:action gamble_item37_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and )
 :poss-effect (and (have_item37))
)

(:action gamble_item38_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and )
 :poss-effect (and (have_item38))
)

(:action gamble_item39_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and )
 :poss-effect (and (have_item39))
)

(:action gamble_item40_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and )
 :poss-effect (and (have_item40))
)

(:action gamble_item41_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and )
 :poss-effect (and (have_item41))
)

(:action gamble_item42_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and )
 :poss-effect (and (have_item42))
)

(:action gamble_item43_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and )
 :poss-effect (and (have_item43))
)

(:action gamble_item44_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and )
 :poss-effect (and (have_item44))
)

(:action gamble_item45_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and )
 :poss-effect (and (have_item45))
)

(:action gamble_item46_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and )
 :poss-effect (and (have_item46))
)

(:action gamble_item47_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and )
 :poss-effect (and (have_item47))
)

(:action gamble_item48_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and )
 :poss-effect (and (have_item48))
)

(:action gamble_item49_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and )
 :poss-effect (and (have_item49))
)

(:action gamble_item50_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and )
 :poss-effect (and (have_item50))
)

(:action gamble_item51_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and )
 :poss-effect (and (have_item51))
)

(:action gamble_item52_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and )
 :poss-effect (and (have_item52))
)

(:action gamble_item53_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and )
 :poss-effect (and (have_item53))
)

(:action gamble_item54_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and )
 :poss-effect (and (have_item54))
)

(:action gamble_item55_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and )
 :poss-effect (and (have_item55))
)

(:action gamble_item56_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and )
 :poss-effect (and (have_item56))
)

(:action gamble_item57_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and )
 :poss-effect (and (have_item57))
)

(:action gamble_item58_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and )
 :poss-effect (and (have_item58))
)

(:action gamble_item59_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and )
 :poss-effect (and (have_item59))
)

(:action gamble_item60_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and )
 :poss-effect (and (have_item60))
)

(:action gamble_item61_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and )
 :poss-effect (and (have_item61))
)

(:action gamble_item62_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and )
 :poss-effect (and (have_item62))
)

(:action gamble_item63_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and )
 :poss-effect (and (have_item63))
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

(:action gamble_item32_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :effect (and )
 :poss-effect (and (have_item32))
)

(:action gamble_item33_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :effect (and )
 :poss-effect (and (have_item33))
)

(:action gamble_item34_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :effect (and )
 :poss-effect (and (have_item34))
)

(:action gamble_item35_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :effect (and )
 :poss-effect (and (have_item35))
)

(:action gamble_item36_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :effect (and )
 :poss-effect (and (have_item36))
)

(:action gamble_item37_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :effect (and )
 :poss-effect (and (have_item37))
)

(:action gamble_item38_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :effect (and )
 :poss-effect (and (have_item38))
)

(:action gamble_item39_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :effect (and )
 :poss-effect (and (have_item39))
)

(:action gamble_item40_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :effect (and )
 :poss-effect (and (have_item40))
)

(:action gamble_item41_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :effect (and )
 :poss-effect (and (have_item41))
)

(:action gamble_item42_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :effect (and )
 :poss-effect (and (have_item42))
)

(:action gamble_item43_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :effect (and )
 :poss-effect (and (have_item43))
)

(:action gamble_item44_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :effect (and )
 :poss-effect (and (have_item44))
)

(:action gamble_item45_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :effect (and )
 :poss-effect (and (have_item45))
)

(:action gamble_item46_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :effect (and )
 :poss-effect (and (have_item46))
)

(:action gamble_item47_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :effect (and )
 :poss-effect (and (have_item47))
)

(:action gamble_item48_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :effect (and )
 :poss-effect (and (have_item48))
)

(:action gamble_item49_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :effect (and )
 :poss-effect (and (have_item49))
)

(:action gamble_item50_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :effect (and )
 :poss-effect (and (have_item50))
)

(:action gamble_item51_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :effect (and )
 :poss-effect (and (have_item51))
)

(:action gamble_item52_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :effect (and )
 :poss-effect (and (have_item52))
)

(:action gamble_item53_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :effect (and )
 :poss-effect (and (have_item53))
)

(:action gamble_item54_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :effect (and )
 :poss-effect (and (have_item54))
)

(:action gamble_item55_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :effect (and )
 :poss-effect (and (have_item55))
)

(:action gamble_item56_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :effect (and )
 :poss-effect (and (have_item56))
)

(:action gamble_item57_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :effect (and )
 :poss-effect (and (have_item57))
)

(:action gamble_item58_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :effect (and )
 :poss-effect (and (have_item58))
)

(:action gamble_item59_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :effect (and )
 :poss-effect (and (have_item59))
)

(:action gamble_item60_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :effect (and )
 :poss-effect (and (have_item60))
)

(:action gamble_item61_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :effect (and )
 :poss-effect (and (have_item61))
)

(:action gamble_item62_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :effect (and )
 :poss-effect (and (have_item62))
)

(:action gamble_item63_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :effect (and )
 :poss-effect (and (have_item63))
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

(:action gamble_item32_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and )
 :poss-effect (and (have_item32))
)

(:action gamble_item33_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and )
 :poss-effect (and (have_item33))
)

(:action gamble_item34_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and )
 :poss-effect (and (have_item34))
)

(:action gamble_item35_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and )
 :poss-effect (and (have_item35))
)

(:action gamble_item36_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and )
 :poss-effect (and (have_item36))
)

(:action gamble_item37_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and )
 :poss-effect (and (have_item37))
)

(:action gamble_item38_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and )
 :poss-effect (and (have_item38))
)

(:action gamble_item39_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and )
 :poss-effect (and (have_item39))
)

(:action gamble_item40_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and )
 :poss-effect (and (have_item40))
)

(:action gamble_item41_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and )
 :poss-effect (and (have_item41))
)

(:action gamble_item42_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and )
 :poss-effect (and (have_item42))
)

(:action gamble_item43_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and )
 :poss-effect (and (have_item43))
)

(:action gamble_item44_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and )
 :poss-effect (and (have_item44))
)

(:action gamble_item45_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and )
 :poss-effect (and (have_item45))
)

(:action gamble_item46_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and )
 :poss-effect (and (have_item46))
)

(:action gamble_item47_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and )
 :poss-effect (and (have_item47))
)

(:action gamble_item48_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and )
 :poss-effect (and (have_item48))
)

(:action gamble_item49_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and )
 :poss-effect (and (have_item49))
)

(:action gamble_item50_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and )
 :poss-effect (and (have_item50))
)

(:action gamble_item51_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and )
 :poss-effect (and (have_item51))
)

(:action gamble_item52_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and )
 :poss-effect (and (have_item52))
)

(:action gamble_item53_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and )
 :poss-effect (and (have_item53))
)

(:action gamble_item54_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and )
 :poss-effect (and (have_item54))
)

(:action gamble_item55_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and )
 :poss-effect (and (have_item55))
)

(:action gamble_item56_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and )
 :poss-effect (and (have_item56))
)

(:action gamble_item57_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and )
 :poss-effect (and (have_item57))
)

(:action gamble_item58_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and )
 :poss-effect (and (have_item58))
)

(:action gamble_item59_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and )
 :poss-effect (and (have_item59))
)

(:action gamble_item60_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and )
 :poss-effect (and (have_item60))
)

(:action gamble_item61_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and )
 :poss-effect (and (have_item61))
)

(:action gamble_item62_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and )
 :poss-effect (and (have_item62))
)

(:action gamble_item63_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and )
 :poss-effect (and (have_item63))
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

(:action gamble_item32_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and )
 :poss-effect (and (have_item32))
)

(:action gamble_item33_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and )
 :poss-effect (and (have_item33))
)

(:action gamble_item34_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and )
 :poss-effect (and (have_item34))
)

(:action gamble_item35_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and )
 :poss-effect (and (have_item35))
)

(:action gamble_item36_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and )
 :poss-effect (and (have_item36))
)

(:action gamble_item37_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and )
 :poss-effect (and (have_item37))
)

(:action gamble_item38_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and )
 :poss-effect (and (have_item38))
)

(:action gamble_item39_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and )
 :poss-effect (and (have_item39))
)

(:action gamble_item40_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and )
 :poss-effect (and (have_item40))
)

(:action gamble_item41_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and )
 :poss-effect (and (have_item41))
)

(:action gamble_item42_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and )
 :poss-effect (and (have_item42))
)

(:action gamble_item43_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and )
 :poss-effect (and (have_item43))
)

(:action gamble_item44_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and )
 :poss-effect (and (have_item44))
)

(:action gamble_item45_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and )
 :poss-effect (and (have_item45))
)

(:action gamble_item46_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and )
 :poss-effect (and (have_item46))
)

(:action gamble_item47_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and )
 :poss-effect (and (have_item47))
)

(:action gamble_item48_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and )
 :poss-effect (and (have_item48))
)

(:action gamble_item49_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and )
 :poss-effect (and (have_item49))
)

(:action gamble_item50_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and )
 :poss-effect (and (have_item50))
)

(:action gamble_item51_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and )
 :poss-effect (and (have_item51))
)

(:action gamble_item52_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and )
 :poss-effect (and (have_item52))
)

(:action gamble_item53_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and )
 :poss-effect (and (have_item53))
)

(:action gamble_item54_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and )
 :poss-effect (and (have_item54))
)

(:action gamble_item55_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and )
 :poss-effect (and (have_item55))
)

(:action gamble_item56_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and )
 :poss-effect (and (have_item56))
)

(:action gamble_item57_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and )
 :poss-effect (and (have_item57))
)

(:action gamble_item58_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and )
 :poss-effect (and (have_item58))
)

(:action gamble_item59_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and )
 :poss-effect (and (have_item59))
)

(:action gamble_item60_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and )
 :poss-effect (and (have_item60))
)

(:action gamble_item61_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and )
 :poss-effect (and (have_item61))
)

(:action gamble_item62_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and )
 :poss-effect (and (have_item62))
)

(:action gamble_item63_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and )
 :poss-effect (and (have_item63))
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

(:action gamble_item32_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and )
 :poss-effect (and (have_item32))
)

(:action gamble_item33_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and )
 :poss-effect (and (have_item33))
)

(:action gamble_item34_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and )
 :poss-effect (and (have_item34))
)

(:action gamble_item35_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and )
 :poss-effect (and (have_item35))
)

(:action gamble_item36_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and )
 :poss-effect (and (have_item36))
)

(:action gamble_item37_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and )
 :poss-effect (and (have_item37))
)

(:action gamble_item38_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and )
 :poss-effect (and (have_item38))
)

(:action gamble_item39_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and )
 :poss-effect (and (have_item39))
)

(:action gamble_item40_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and )
 :poss-effect (and (have_item40))
)

(:action gamble_item41_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and )
 :poss-effect (and (have_item41))
)

(:action gamble_item42_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and )
 :poss-effect (and (have_item42))
)

(:action gamble_item43_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and )
 :poss-effect (and (have_item43))
)

(:action gamble_item44_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and )
 :poss-effect (and (have_item44))
)

(:action gamble_item45_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and )
 :poss-effect (and (have_item45))
)

(:action gamble_item46_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and )
 :poss-effect (and (have_item46))
)

(:action gamble_item47_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and )
 :poss-effect (and (have_item47))
)

(:action gamble_item48_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and )
 :poss-effect (and (have_item48))
)

(:action gamble_item49_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and )
 :poss-effect (and (have_item49))
)

(:action gamble_item50_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and )
 :poss-effect (and (have_item50))
)

(:action gamble_item51_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and )
 :poss-effect (and (have_item51))
)

(:action gamble_item52_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and )
 :poss-effect (and (have_item52))
)

(:action gamble_item53_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and )
 :poss-effect (and (have_item53))
)

(:action gamble_item54_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and )
 :poss-effect (and (have_item54))
)

(:action gamble_item55_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and )
 :poss-effect (and (have_item55))
)

(:action gamble_item56_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and )
 :poss-effect (and (have_item56))
)

(:action gamble_item57_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and )
 :poss-effect (and (have_item57))
)

(:action gamble_item58_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and )
 :poss-effect (and (have_item58))
)

(:action gamble_item59_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and )
 :poss-effect (and (have_item59))
)

(:action gamble_item60_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and )
 :poss-effect (and (have_item60))
)

(:action gamble_item61_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and )
 :poss-effect (and (have_item61))
)

(:action gamble_item62_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and )
 :poss-effect (and (have_item62))
)

(:action gamble_item63_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and )
 :poss-effect (and (have_item63))
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

(:action gamble_item32_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :effect (and )
 :poss-effect (and (have_item32))
)

(:action gamble_item33_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :effect (and )
 :poss-effect (and (have_item33))
)

(:action gamble_item34_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :effect (and )
 :poss-effect (and (have_item34))
)

(:action gamble_item35_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :effect (and )
 :poss-effect (and (have_item35))
)

(:action gamble_item36_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :effect (and )
 :poss-effect (and (have_item36))
)

(:action gamble_item37_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :effect (and )
 :poss-effect (and (have_item37))
)

(:action gamble_item38_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :effect (and )
 :poss-effect (and (have_item38))
)

(:action gamble_item39_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :effect (and )
 :poss-effect (and (have_item39))
)

(:action gamble_item40_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :effect (and )
 :poss-effect (and (have_item40))
)

(:action gamble_item41_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :effect (and )
 :poss-effect (and (have_item41))
)

(:action gamble_item42_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :effect (and )
 :poss-effect (and (have_item42))
)

(:action gamble_item43_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :effect (and )
 :poss-effect (and (have_item43))
)

(:action gamble_item44_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :effect (and )
 :poss-effect (and (have_item44))
)

(:action gamble_item45_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :effect (and )
 :poss-effect (and (have_item45))
)

(:action gamble_item46_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :effect (and )
 :poss-effect (and (have_item46))
)

(:action gamble_item47_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :effect (and )
 :poss-effect (and (have_item47))
)

(:action gamble_item48_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :effect (and )
 :poss-effect (and (have_item48))
)

(:action gamble_item49_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :effect (and )
 :poss-effect (and (have_item49))
)

(:action gamble_item50_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :effect (and )
 :poss-effect (and (have_item50))
)

(:action gamble_item51_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :effect (and )
 :poss-effect (and (have_item51))
)

(:action gamble_item52_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :effect (and )
 :poss-effect (and (have_item52))
)

(:action gamble_item53_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :effect (and )
 :poss-effect (and (have_item53))
)

(:action gamble_item54_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :effect (and )
 :poss-effect (and (have_item54))
)

(:action gamble_item55_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :effect (and )
 :poss-effect (and (have_item55))
)

(:action gamble_item56_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :effect (and )
 :poss-effect (and (have_item56))
)

(:action gamble_item57_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :effect (and )
 :poss-effect (and (have_item57))
)

(:action gamble_item58_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :effect (and )
 :poss-effect (and (have_item58))
)

(:action gamble_item59_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :effect (and )
 :poss-effect (and (have_item59))
)

(:action gamble_item60_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :effect (and )
 :poss-effect (and (have_item60))
)

(:action gamble_item61_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :effect (and )
 :poss-effect (and (have_item61))
)

(:action gamble_item62_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :effect (and )
 :poss-effect (and (have_item62))
)

(:action gamble_item63_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :effect (and )
 :poss-effect (and (have_item63))
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

(:action gamble_item32_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and )
 :poss-effect (and (have_item32))
)

(:action gamble_item33_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and )
 :poss-effect (and (have_item33))
)

(:action gamble_item34_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and )
 :poss-effect (and (have_item34))
)

(:action gamble_item35_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and )
 :poss-effect (and (have_item35))
)

(:action gamble_item36_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and )
 :poss-effect (and (have_item36))
)

(:action gamble_item37_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and )
 :poss-effect (and (have_item37))
)

(:action gamble_item38_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and )
 :poss-effect (and (have_item38))
)

(:action gamble_item39_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and )
 :poss-effect (and (have_item39))
)

(:action gamble_item40_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and )
 :poss-effect (and (have_item40))
)

(:action gamble_item41_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and )
 :poss-effect (and (have_item41))
)

(:action gamble_item42_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and )
 :poss-effect (and (have_item42))
)

(:action gamble_item43_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and )
 :poss-effect (and (have_item43))
)

(:action gamble_item44_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and )
 :poss-effect (and (have_item44))
)

(:action gamble_item45_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and )
 :poss-effect (and (have_item45))
)

(:action gamble_item46_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and )
 :poss-effect (and (have_item46))
)

(:action gamble_item47_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and )
 :poss-effect (and (have_item47))
)

(:action gamble_item48_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and )
 :poss-effect (and (have_item48))
)

(:action gamble_item49_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and )
 :poss-effect (and (have_item49))
)

(:action gamble_item50_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and )
 :poss-effect (and (have_item50))
)

(:action gamble_item51_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and )
 :poss-effect (and (have_item51))
)

(:action gamble_item52_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and )
 :poss-effect (and (have_item52))
)

(:action gamble_item53_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and )
 :poss-effect (and (have_item53))
)

(:action gamble_item54_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and )
 :poss-effect (and (have_item54))
)

(:action gamble_item55_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and )
 :poss-effect (and (have_item55))
)

(:action gamble_item56_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and )
 :poss-effect (and (have_item56))
)

(:action gamble_item57_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and )
 :poss-effect (and (have_item57))
)

(:action gamble_item58_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and )
 :poss-effect (and (have_item58))
)

(:action gamble_item59_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and )
 :poss-effect (and (have_item59))
)

(:action gamble_item60_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and )
 :poss-effect (and (have_item60))
)

(:action gamble_item61_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and )
 :poss-effect (and (have_item61))
)

(:action gamble_item62_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and )
 :poss-effect (and (have_item62))
)

(:action gamble_item63_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and )
 :poss-effect (and (have_item63))
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

(:action gamble_item32_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and )
 :poss-effect (and (have_item32))
)

(:action gamble_item33_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and )
 :poss-effect (and (have_item33))
)

(:action gamble_item34_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and )
 :poss-effect (and (have_item34))
)

(:action gamble_item35_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and )
 :poss-effect (and (have_item35))
)

(:action gamble_item36_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and )
 :poss-effect (and (have_item36))
)

(:action gamble_item37_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and )
 :poss-effect (and (have_item37))
)

(:action gamble_item38_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and )
 :poss-effect (and (have_item38))
)

(:action gamble_item39_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and )
 :poss-effect (and (have_item39))
)

(:action gamble_item40_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and )
 :poss-effect (and (have_item40))
)

(:action gamble_item41_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and )
 :poss-effect (and (have_item41))
)

(:action gamble_item42_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and )
 :poss-effect (and (have_item42))
)

(:action gamble_item43_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and )
 :poss-effect (and (have_item43))
)

(:action gamble_item44_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and )
 :poss-effect (and (have_item44))
)

(:action gamble_item45_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and )
 :poss-effect (and (have_item45))
)

(:action gamble_item46_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and )
 :poss-effect (and (have_item46))
)

(:action gamble_item47_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and )
 :poss-effect (and (have_item47))
)

(:action gamble_item48_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and )
 :poss-effect (and (have_item48))
)

(:action gamble_item49_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and )
 :poss-effect (and (have_item49))
)

(:action gamble_item50_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and )
 :poss-effect (and (have_item50))
)

(:action gamble_item51_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and )
 :poss-effect (and (have_item51))
)

(:action gamble_item52_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and )
 :poss-effect (and (have_item52))
)

(:action gamble_item53_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and )
 :poss-effect (and (have_item53))
)

(:action gamble_item54_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and )
 :poss-effect (and (have_item54))
)

(:action gamble_item55_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and )
 :poss-effect (and (have_item55))
)

(:action gamble_item56_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and )
 :poss-effect (and (have_item56))
)

(:action gamble_item57_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and )
 :poss-effect (and (have_item57))
)

(:action gamble_item58_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and )
 :poss-effect (and (have_item58))
)

(:action gamble_item59_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and )
 :poss-effect (and (have_item59))
)

(:action gamble_item60_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and )
 :poss-effect (and (have_item60))
)

(:action gamble_item61_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and )
 :poss-effect (and (have_item61))
)

(:action gamble_item62_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and )
 :poss-effect (and (have_item62))
)

(:action gamble_item63_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and )
 :poss-effect (and (have_item63))
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

(:action gamble_item32_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and )
 :poss-effect (and (have_item32))
)

(:action gamble_item33_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and )
 :poss-effect (and (have_item33))
)

(:action gamble_item34_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and )
 :poss-effect (and (have_item34))
)

(:action gamble_item35_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and )
 :poss-effect (and (have_item35))
)

(:action gamble_item36_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and )
 :poss-effect (and (have_item36))
)

(:action gamble_item37_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and )
 :poss-effect (and (have_item37))
)

(:action gamble_item38_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and )
 :poss-effect (and (have_item38))
)

(:action gamble_item39_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and )
 :poss-effect (and (have_item39))
)

(:action gamble_item40_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and )
 :poss-effect (and (have_item40))
)

(:action gamble_item41_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and )
 :poss-effect (and (have_item41))
)

(:action gamble_item42_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and )
 :poss-effect (and (have_item42))
)

(:action gamble_item43_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and )
 :poss-effect (and (have_item43))
)

(:action gamble_item44_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and )
 :poss-effect (and (have_item44))
)

(:action gamble_item45_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and )
 :poss-effect (and (have_item45))
)

(:action gamble_item46_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and )
 :poss-effect (and (have_item46))
)

(:action gamble_item47_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and )
 :poss-effect (and (have_item47))
)

(:action gamble_item48_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and )
 :poss-effect (and (have_item48))
)

(:action gamble_item49_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and )
 :poss-effect (and (have_item49))
)

(:action gamble_item50_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and )
 :poss-effect (and (have_item50))
)

(:action gamble_item51_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and )
 :poss-effect (and (have_item51))
)

(:action gamble_item52_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and )
 :poss-effect (and (have_item52))
)

(:action gamble_item53_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and )
 :poss-effect (and (have_item53))
)

(:action gamble_item54_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and )
 :poss-effect (and (have_item54))
)

(:action gamble_item55_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and )
 :poss-effect (and (have_item55))
)

(:action gamble_item56_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and )
 :poss-effect (and (have_item56))
)

(:action gamble_item57_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and )
 :poss-effect (and (have_item57))
)

(:action gamble_item58_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and )
 :poss-effect (and (have_item58))
)

(:action gamble_item59_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and )
 :poss-effect (and (have_item59))
)

(:action gamble_item60_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and )
 :poss-effect (and (have_item60))
)

(:action gamble_item61_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and )
 :poss-effect (and (have_item61))
)

(:action gamble_item62_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and )
 :poss-effect (and (have_item62))
)

(:action gamble_item63_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and )
 :poss-effect (and (have_item63))
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

(:action gamble_item32_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :effect (and )
 :poss-effect (and (have_item32))
)

(:action gamble_item33_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :effect (and )
 :poss-effect (and (have_item33))
)

(:action gamble_item34_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :effect (and )
 :poss-effect (and (have_item34))
)

(:action gamble_item35_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :effect (and )
 :poss-effect (and (have_item35))
)

(:action gamble_item36_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :effect (and )
 :poss-effect (and (have_item36))
)

(:action gamble_item37_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :effect (and )
 :poss-effect (and (have_item37))
)

(:action gamble_item38_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :effect (and )
 :poss-effect (and (have_item38))
)

(:action gamble_item39_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :effect (and )
 :poss-effect (and (have_item39))
)

(:action gamble_item40_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :effect (and )
 :poss-effect (and (have_item40))
)

(:action gamble_item41_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :effect (and )
 :poss-effect (and (have_item41))
)

(:action gamble_item42_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :effect (and )
 :poss-effect (and (have_item42))
)

(:action gamble_item43_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :effect (and )
 :poss-effect (and (have_item43))
)

(:action gamble_item44_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :effect (and )
 :poss-effect (and (have_item44))
)

(:action gamble_item45_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :effect (and )
 :poss-effect (and (have_item45))
)

(:action gamble_item46_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :effect (and )
 :poss-effect (and (have_item46))
)

(:action gamble_item47_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :effect (and )
 :poss-effect (and (have_item47))
)

(:action gamble_item48_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :effect (and )
 :poss-effect (and (have_item48))
)

(:action gamble_item49_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :effect (and )
 :poss-effect (and (have_item49))
)

(:action gamble_item50_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :effect (and )
 :poss-effect (and (have_item50))
)

(:action gamble_item51_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :effect (and )
 :poss-effect (and (have_item51))
)

(:action gamble_item52_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :effect (and )
 :poss-effect (and (have_item52))
)

(:action gamble_item53_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :effect (and )
 :poss-effect (and (have_item53))
)

(:action gamble_item54_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :effect (and )
 :poss-effect (and (have_item54))
)

(:action gamble_item55_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :effect (and )
 :poss-effect (and (have_item55))
)

(:action gamble_item56_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :effect (and )
 :poss-effect (and (have_item56))
)

(:action gamble_item57_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :effect (and )
 :poss-effect (and (have_item57))
)

(:action gamble_item58_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :effect (and )
 :poss-effect (and (have_item58))
)

(:action gamble_item59_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :effect (and )
 :poss-effect (and (have_item59))
)

(:action gamble_item60_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :effect (and )
 :poss-effect (and (have_item60))
)

(:action gamble_item61_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :effect (and )
 :poss-effect (and (have_item61))
)

(:action gamble_item62_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :effect (and )
 :poss-effect (and (have_item62))
)

(:action gamble_item63_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :effect (and )
 :poss-effect (and (have_item63))
)

(:action easymark_item33_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and (have_item33))
)

(:action easymark_item42_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and (have_item42))
)

(:action easymark_item45_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and (have_item45))
)

(:action easymark_item52_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and (have_item52))
)

(:action easymark_item54_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and (have_item54))
)

(:action easymark_item0_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and (have_item0))
)

(:action easymark_item7_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and (have_item7))
)

(:action easymark_item13_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and (have_item13))
)

(:action easymark_item26_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and (have_item26))
)

(:action easymark_item10_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and (have_item10))
)

(:action easymark_item22_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and (have_item22))
)

(:action easymark_item34_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and (have_item34))
)

(:action easymark_item38_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and (have_item38))
)

(:action easymark_item43_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and (have_item43))
)

(:action easymark_item47_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and (have_item47))
)

(:action easymark_item53_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and (have_item53))
)

(:action easymark_item17_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and (have_item17))
)

(:action easymark_item26_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and (have_item26))
)

(:action easymark_item38_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and (have_item38))
)

(:action easymark_item52_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and (have_item52))
)

(:action easymark_item58_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and (have_item58))
)

(:action easymark_item3_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and (have_item3))
)

(:action easymark_item22_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and (have_item22))
)

(:action easymark_item37_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and (have_item37))
)

(:action easymark_item38_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and (have_item38))
)

(:action easymark_item46_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and (have_item46))
)

(:action easymark_item60_0_4
 :parameters ()
 :precondition (and (at_x0) (at_y4))
 :effect (and (have_item60))
)

(:action easymark_item0_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and (have_item0))
)

(:action easymark_item6_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and (have_item6))
)

(:action easymark_item14_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and (have_item14))
)

(:action easymark_item20_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and (have_item20))
)

(:action easymark_item22_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and (have_item22))
)

(:action easymark_item27_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and (have_item27))
)

(:action easymark_item34_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and (have_item34))
)

(:action easymark_item38_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and (have_item38))
)

(:action easymark_item43_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and (have_item43))
)

(:action easymark_item44_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and (have_item44))
)

(:action easymark_item45_0_5
 :parameters ()
 :precondition (and (at_x0) (at_y5))
 :effect (and (have_item45))
)

(:action easymark_item7_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and (have_item7))
)

(:action easymark_item9_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and (have_item9))
)

(:action easymark_item17_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and (have_item17))
)

(:action easymark_item22_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and (have_item22))
)

(:action easymark_item27_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and (have_item27))
)

(:action easymark_item31_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and (have_item31))
)

(:action easymark_item48_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and (have_item48))
)

(:action easymark_item50_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and (have_item50))
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

(:action easymark_item16_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and (have_item16))
)

(:action easymark_item32_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and (have_item32))
)

(:action easymark_item40_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and (have_item40))
)

(:action easymark_item53_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and (have_item53))
)

(:action easymark_item59_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and (have_item59))
)

(:action easymark_item8_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and (have_item8))
)

(:action easymark_item12_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and (have_item12))
)

(:action easymark_item20_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and (have_item20))
)

(:action easymark_item28_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and (have_item28))
)

(:action easymark_item30_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and (have_item30))
)

(:action easymark_item36_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and (have_item36))
)

(:action easymark_item46_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and (have_item46))
)

(:action easymark_item54_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and (have_item54))
)

(:action easymark_item55_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and (have_item55))
)

(:action easymark_item57_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and (have_item57))
)

(:action easymark_item61_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and (have_item61))
)

(:action easymark_item0_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and (have_item0))
)

(:action easymark_item3_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and (have_item3))
)

(:action easymark_item30_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and (have_item30))
)

(:action easymark_item42_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and (have_item42))
)

(:action easymark_item1_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and (have_item1))
)

(:action easymark_item5_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and (have_item5))
)

(:action easymark_item41_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and (have_item41))
)

(:action easymark_item54_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and (have_item54))
)

(:action easymark_item55_1_4
 :parameters ()
 :precondition (and (at_x1) (at_y4))
 :effect (and (have_item55))
)

(:action easymark_item7_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and (have_item7))
)

(:action easymark_item19_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and (have_item19))
)

(:action easymark_item21_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and (have_item21))
)

(:action easymark_item30_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and (have_item30))
)

(:action easymark_item40_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and (have_item40))
)

(:action easymark_item54_1_5
 :parameters ()
 :precondition (and (at_x1) (at_y5))
 :effect (and (have_item54))
)

(:action easymark_item8_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and (have_item8))
)

(:action easymark_item16_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and (have_item16))
)

(:action easymark_item23_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and (have_item23))
)

(:action easymark_item38_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and (have_item38))
)

(:action easymark_item48_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and (have_item48))
)

(:action easymark_item58_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and (have_item58))
)

(:action easymark_item60_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and (have_item60))
)

(:action easymark_item0_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and (have_item0))
)

(:action easymark_item6_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and (have_item6))
)

(:action easymark_item22_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and (have_item22))
)

(:action easymark_item29_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and (have_item29))
)

(:action easymark_item35_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and (have_item35))
)

(:action easymark_item36_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and (have_item36))
)

(:action easymark_item41_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and (have_item41))
)

(:action easymark_item6_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and (have_item6))
)

(:action easymark_item9_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and (have_item9))
)

(:action easymark_item31_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and (have_item31))
)

(:action easymark_item38_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and (have_item38))
)

(:action easymark_item43_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and (have_item43))
)

(:action easymark_item48_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and (have_item48))
)

(:action easymark_item49_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and (have_item49))
)

(:action easymark_item51_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and (have_item51))
)

(:action easymark_item15_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and (have_item15))
)

(:action easymark_item25_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and (have_item25))
)

(:action easymark_item34_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and (have_item34))
)

(:action easymark_item47_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and (have_item47))
)

(:action easymark_item53_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and (have_item53))
)

(:action easymark_item63_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and (have_item63))
)

(:action easymark_item10_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and (have_item10))
)

(:action easymark_item19_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and (have_item19))
)

(:action easymark_item20_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and (have_item20))
)

(:action easymark_item32_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and (have_item32))
)

(:action easymark_item33_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and (have_item33))
)

(:action easymark_item38_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and (have_item38))
)

(:action easymark_item47_2_4
 :parameters ()
 :precondition (and (at_x2) (at_y4))
 :effect (and (have_item47))
)

(:action easymark_item0_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :effect (and (have_item0))
)

(:action easymark_item1_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :effect (and (have_item1))
)

(:action easymark_item23_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :effect (and (have_item23))
)

(:action easymark_item29_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :effect (and (have_item29))
)

(:action easymark_item47_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :effect (and (have_item47))
)

(:action easymark_item55_2_5
 :parameters ()
 :precondition (and (at_x2) (at_y5))
 :effect (and (have_item55))
)

(:action easymark_item34_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and (have_item34))
)

(:action easymark_item35_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and (have_item35))
)

(:action easymark_item45_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and (have_item45))
)

(:action easymark_item47_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and (have_item47))
)

(:action easymark_item49_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and (have_item49))
)

(:action easymark_item63_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and (have_item63))
)

(:action easymark_item16_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and (have_item16))
)

(:action easymark_item17_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and (have_item17))
)

(:action easymark_item31_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and (have_item31))
)

(:action easymark_item34_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and (have_item34))
)

(:action easymark_item58_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and (have_item58))
)

(:action easymark_item63_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and (have_item63))
)

(:action easymark_item1_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and (have_item1))
)

(:action easymark_item30_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and (have_item30))
)

(:action easymark_item41_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and (have_item41))
)

(:action easymark_item46_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and (have_item46))
)

(:action easymark_item60_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and (have_item60))
)

(:action easymark_item2_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and (have_item2))
)

(:action easymark_item3_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and (have_item3))
)

(:action easymark_item6_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and (have_item6))
)

(:action easymark_item7_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and (have_item7))
)

(:action easymark_item10_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and (have_item10))
)

(:action easymark_item26_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and (have_item26))
)

(:action easymark_item34_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and (have_item34))
)

(:action easymark_item41_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and (have_item41))
)

(:action easymark_item48_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and (have_item48))
)

(:action easymark_item59_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and (have_item59))
)

(:action easymark_item0_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and (have_item0))
)

(:action easymark_item3_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and (have_item3))
)

(:action easymark_item29_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and (have_item29))
)

(:action easymark_item45_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and (have_item45))
)

(:action easymark_item50_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and (have_item50))
)

(:action easymark_item51_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and (have_item51))
)

(:action easymark_item60_3_4
 :parameters ()
 :precondition (and (at_x3) (at_y4))
 :effect (and (have_item60))
)

(:action easymark_item9_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and (have_item9))
)

(:action easymark_item10_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and (have_item10))
)

(:action easymark_item18_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and (have_item18))
)

(:action easymark_item38_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and (have_item38))
)

(:action easymark_item58_3_5
 :parameters ()
 :precondition (and (at_x3) (at_y5))
 :effect (and (have_item58))
)

(:action easymark_item24_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and (have_item24))
)

(:action easymark_item29_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and (have_item29))
)

(:action easymark_item48_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and (have_item48))
)

(:action easymark_item56_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and (have_item56))
)

(:action easymark_item60_4_0
 :parameters ()
 :precondition (and (at_x4) (at_y0))
 :effect (and (have_item60))
)

(:action easymark_item10_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :effect (and (have_item10))
)

(:action easymark_item22_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :effect (and (have_item22))
)

(:action easymark_item33_4_1
 :parameters ()
 :precondition (and (at_x4) (at_y1))
 :effect (and (have_item33))
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

(:action easymark_item20_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and (have_item20))
)

(:action easymark_item26_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and (have_item26))
)

(:action easymark_item29_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and (have_item29))
)

(:action easymark_item38_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and (have_item38))
)

(:action easymark_item40_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and (have_item40))
)

(:action easymark_item44_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and (have_item44))
)

(:action easymark_item57_4_2
 :parameters ()
 :precondition (and (at_x4) (at_y2))
 :effect (and (have_item57))
)

(:action easymark_item30_4_3
 :parameters ()
 :precondition (and (at_x4) (at_y3))
 :effect (and (have_item30))
)

(:action easymark_item19_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and (have_item19))
)

(:action easymark_item42_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and (have_item42))
)

(:action easymark_item44_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and (have_item44))
)

(:action easymark_item46_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and (have_item46))
)

(:action easymark_item57_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and (have_item57))
)

(:action easymark_item61_4_4
 :parameters ()
 :precondition (and (at_x4) (at_y4))
 :effect (and (have_item61))
)

(:action easymark_item9_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and (have_item9))
)

(:action easymark_item32_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and (have_item32))
)

(:action easymark_item38_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and (have_item38))
)

(:action easymark_item41_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and (have_item41))
)

(:action easymark_item44_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and (have_item44))
)

(:action easymark_item51_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and (have_item51))
)

(:action easymark_item57_4_5
 :parameters ()
 :precondition (and (at_x4) (at_y5))
 :effect (and (have_item57))
)

(:action easymark_item6_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and (have_item6))
)

(:action easymark_item22_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and (have_item22))
)

(:action easymark_item23_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and (have_item23))
)

(:action easymark_item24_5_0
 :parameters ()
 :precondition (and (at_x5) (at_y0))
 :effect (and (have_item24))
)

(:action easymark_item28_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :effect (and (have_item28))
)

(:action easymark_item29_5_1
 :parameters ()
 :precondition (and (at_x5) (at_y1))
 :effect (and (have_item29))
)

(:action easymark_item5_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and (have_item5))
)

(:action easymark_item6_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and (have_item6))
)

(:action easymark_item19_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and (have_item19))
)

(:action easymark_item25_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and (have_item25))
)

(:action easymark_item47_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and (have_item47))
)

(:action easymark_item52_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and (have_item52))
)

(:action easymark_item58_5_2
 :parameters ()
 :precondition (and (at_x5) (at_y2))
 :effect (and (have_item58))
)

(:action easymark_item15_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and (have_item15))
)

(:action easymark_item17_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and (have_item17))
)

(:action easymark_item21_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and (have_item21))
)

(:action easymark_item48_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and (have_item48))
)

(:action easymark_item56_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and (have_item56))
)

(:action easymark_item57_5_3
 :parameters ()
 :precondition (and (at_x5) (at_y3))
 :effect (and (have_item57))
)

(:action easymark_item0_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and (have_item0))
)

(:action easymark_item3_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and (have_item3))
)

(:action easymark_item5_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and (have_item5))
)

(:action easymark_item9_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and (have_item9))
)

(:action easymark_item35_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and (have_item35))
)

(:action easymark_item40_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and (have_item40))
)

(:action easymark_item43_5_4
 :parameters ()
 :precondition (and (at_x5) (at_y4))
 :effect (and (have_item43))
)

(:action easymark_item12_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :effect (and (have_item12))
)

(:action easymark_item23_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :effect (and (have_item23))
)

(:action easymark_item24_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :effect (and (have_item24))
)

(:action easymark_item26_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :effect (and (have_item26))
)

(:action easymark_item38_5_5
 :parameters ()
 :precondition (and (at_x5) (at_y5))
 :effect (and (have_item38))
)
)
