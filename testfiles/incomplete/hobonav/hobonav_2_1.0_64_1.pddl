(define (domain HoboNav)
(:requirements :fluents :incomplete-domain)

(:predicates
 (at_x0) (at_y0) (at_x1) (at_y1)
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

(:action easymark_item9_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and (have_item9))
)

(:action easymark_item13_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and (have_item13))
)

(:action easymark_item32_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and (have_item32))
)

(:action easymark_item42_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and (have_item42))
)

(:action easymark_item43_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and (have_item43))
)

(:action easymark_item50_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and (have_item50))
)

(:action easymark_item52_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and (have_item52))
)

(:action easymark_item12_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and (have_item12))
)

(:action easymark_item53_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and (have_item53))
)

(:action easymark_item61_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and (have_item61))
)

(:action easymark_item5_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and (have_item5))
)

(:action easymark_item8_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and (have_item8))
)

(:action easymark_item33_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and (have_item33))
)

(:action easymark_item43_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and (have_item43))
)

(:action easymark_item59_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and (have_item59))
)

(:action easymark_item19_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and (have_item19))
)

(:action easymark_item26_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and (have_item26))
)

(:action easymark_item29_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and (have_item29))
)

(:action easymark_item41_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and (have_item41))
)

(:action easymark_item52_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and (have_item52))
)

(:action easymark_item63_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and (have_item63))
)
)
