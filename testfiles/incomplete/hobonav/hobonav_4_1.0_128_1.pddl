(define (domain HoboNav)
(:requirements :fluents :incomplete-domain)

(:predicates
 (at_x0) (at_y0) (at_x1) (at_y1) (at_x2) (at_y2) (at_x3) (at_y3)
 (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63) (have_item64) (have_item65) (have_item66) (have_item67) (have_item68) (have_item69) (have_item70) (have_item71) (have_item72) (have_item73) (have_item74) (have_item75) (have_item76) (have_item77) (have_item78) (have_item79) (have_item80) (have_item81) (have_item82) (have_item83) (have_item84) (have_item85) (have_item86) (have_item87) (have_item88) (have_item89) (have_item90) (have_item91) (have_item92) (have_item93) (have_item94) (have_item95) (have_item96) (have_item97) (have_item98) (have_item99) (have_item100) (have_item101) (have_item102) (have_item103) (have_item104) (have_item105) (have_item106) (have_item107) (have_item108) (have_item109) (have_item110) (have_item111) (have_item112) (have_item113) (have_item114) (have_item115) (have_item116) (have_item117) (have_item118) (have_item119) (have_item120) (have_item121) (have_item122) (have_item123) (have_item124) (have_item125) (have_item126) (have_item127)
)

(:action move_0_0_1_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63) (have_item64) (have_item65) (have_item66) (have_item67) (have_item68) (have_item69) (have_item70) (have_item71) (have_item72) (have_item73) (have_item74) (have_item75) (have_item76) (have_item77) (have_item78) (have_item79) (have_item80) (have_item81) (have_item82) (have_item83) (have_item84) (have_item85) (have_item86) (have_item87) (have_item88) (have_item89) (have_item90) (have_item91) (have_item92) (have_item93) (have_item94) (have_item95) (have_item96) (have_item97) (have_item98) (have_item99) (have_item100) (have_item101) (have_item102) (have_item103) (have_item104) (have_item105) (have_item106) (have_item107) (have_item108) (have_item109) (have_item110) (have_item111) (have_item112) (have_item113) (have_item114) (have_item115) (have_item116) (have_item117) (have_item118) (have_item119) (have_item120) (have_item121) (have_item122) (have_item123) (have_item124) (have_item125) (have_item126) (have_item127))
 :effect (and (not (at_x0)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)) (not (have_item64)) (not (have_item65)) (not (have_item66)) (not (have_item67)) (not (have_item68)) (not (have_item69)) (not (have_item70)) (not (have_item71)) (not (have_item72)) (not (have_item73)) (not (have_item74)) (not (have_item75)) (not (have_item76)) (not (have_item77)) (not (have_item78)) (not (have_item79)) (not (have_item80)) (not (have_item81)) (not (have_item82)) (not (have_item83)) (not (have_item84)) (not (have_item85)) (not (have_item86)) (not (have_item87)) (not (have_item88)) (not (have_item89)) (not (have_item90)) (not (have_item91)) (not (have_item92)) (not (have_item93)) (not (have_item94)) (not (have_item95)) (not (have_item96)) (not (have_item97)) (not (have_item98)) (not (have_item99)) (not (have_item100)) (not (have_item101)) (not (have_item102)) (not (have_item103)) (not (have_item104)) (not (have_item105)) (not (have_item106)) (not (have_item107)) (not (have_item108)) (not (have_item109)) (not (have_item110)) (not (have_item111)) (not (have_item112)) (not (have_item113)) (not (have_item114)) (not (have_item115)) (not (have_item116)) (not (have_item117)) (not (have_item118)) (not (have_item119)) (not (have_item120)) (not (have_item121)) (not (have_item122)) (not (have_item123)) (not (have_item124)) (not (have_item125)) (not (have_item126)) (not (have_item127)))
)

(:action move_1_0_0_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63) (have_item64) (have_item65) (have_item66) (have_item67) (have_item68) (have_item69) (have_item70) (have_item71) (have_item72) (have_item73) (have_item74) (have_item75) (have_item76) (have_item77) (have_item78) (have_item79) (have_item80) (have_item81) (have_item82) (have_item83) (have_item84) (have_item85) (have_item86) (have_item87) (have_item88) (have_item89) (have_item90) (have_item91) (have_item92) (have_item93) (have_item94) (have_item95) (have_item96) (have_item97) (have_item98) (have_item99) (have_item100) (have_item101) (have_item102) (have_item103) (have_item104) (have_item105) (have_item106) (have_item107) (have_item108) (have_item109) (have_item110) (have_item111) (have_item112) (have_item113) (have_item114) (have_item115) (have_item116) (have_item117) (have_item118) (have_item119) (have_item120) (have_item121) (have_item122) (have_item123) (have_item124) (have_item125) (have_item126) (have_item127))
 :effect (and (not (at_x1)) (at_x0))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)) (not (have_item64)) (not (have_item65)) (not (have_item66)) (not (have_item67)) (not (have_item68)) (not (have_item69)) (not (have_item70)) (not (have_item71)) (not (have_item72)) (not (have_item73)) (not (have_item74)) (not (have_item75)) (not (have_item76)) (not (have_item77)) (not (have_item78)) (not (have_item79)) (not (have_item80)) (not (have_item81)) (not (have_item82)) (not (have_item83)) (not (have_item84)) (not (have_item85)) (not (have_item86)) (not (have_item87)) (not (have_item88)) (not (have_item89)) (not (have_item90)) (not (have_item91)) (not (have_item92)) (not (have_item93)) (not (have_item94)) (not (have_item95)) (not (have_item96)) (not (have_item97)) (not (have_item98)) (not (have_item99)) (not (have_item100)) (not (have_item101)) (not (have_item102)) (not (have_item103)) (not (have_item104)) (not (have_item105)) (not (have_item106)) (not (have_item107)) (not (have_item108)) (not (have_item109)) (not (have_item110)) (not (have_item111)) (not (have_item112)) (not (have_item113)) (not (have_item114)) (not (have_item115)) (not (have_item116)) (not (have_item117)) (not (have_item118)) (not (have_item119)) (not (have_item120)) (not (have_item121)) (not (have_item122)) (not (have_item123)) (not (have_item124)) (not (have_item125)) (not (have_item126)) (not (have_item127)))
)

(:action move_0_0_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63) (have_item64) (have_item65) (have_item66) (have_item67) (have_item68) (have_item69) (have_item70) (have_item71) (have_item72) (have_item73) (have_item74) (have_item75) (have_item76) (have_item77) (have_item78) (have_item79) (have_item80) (have_item81) (have_item82) (have_item83) (have_item84) (have_item85) (have_item86) (have_item87) (have_item88) (have_item89) (have_item90) (have_item91) (have_item92) (have_item93) (have_item94) (have_item95) (have_item96) (have_item97) (have_item98) (have_item99) (have_item100) (have_item101) (have_item102) (have_item103) (have_item104) (have_item105) (have_item106) (have_item107) (have_item108) (have_item109) (have_item110) (have_item111) (have_item112) (have_item113) (have_item114) (have_item115) (have_item116) (have_item117) (have_item118) (have_item119) (have_item120) (have_item121) (have_item122) (have_item123) (have_item124) (have_item125) (have_item126) (have_item127))
 :effect (and (not (at_y0)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)) (not (have_item64)) (not (have_item65)) (not (have_item66)) (not (have_item67)) (not (have_item68)) (not (have_item69)) (not (have_item70)) (not (have_item71)) (not (have_item72)) (not (have_item73)) (not (have_item74)) (not (have_item75)) (not (have_item76)) (not (have_item77)) (not (have_item78)) (not (have_item79)) (not (have_item80)) (not (have_item81)) (not (have_item82)) (not (have_item83)) (not (have_item84)) (not (have_item85)) (not (have_item86)) (not (have_item87)) (not (have_item88)) (not (have_item89)) (not (have_item90)) (not (have_item91)) (not (have_item92)) (not (have_item93)) (not (have_item94)) (not (have_item95)) (not (have_item96)) (not (have_item97)) (not (have_item98)) (not (have_item99)) (not (have_item100)) (not (have_item101)) (not (have_item102)) (not (have_item103)) (not (have_item104)) (not (have_item105)) (not (have_item106)) (not (have_item107)) (not (have_item108)) (not (have_item109)) (not (have_item110)) (not (have_item111)) (not (have_item112)) (not (have_item113)) (not (have_item114)) (not (have_item115)) (not (have_item116)) (not (have_item117)) (not (have_item118)) (not (have_item119)) (not (have_item120)) (not (have_item121)) (not (have_item122)) (not (have_item123)) (not (have_item124)) (not (have_item125)) (not (have_item126)) (not (have_item127)))
)

(:action move_0_1_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63) (have_item64) (have_item65) (have_item66) (have_item67) (have_item68) (have_item69) (have_item70) (have_item71) (have_item72) (have_item73) (have_item74) (have_item75) (have_item76) (have_item77) (have_item78) (have_item79) (have_item80) (have_item81) (have_item82) (have_item83) (have_item84) (have_item85) (have_item86) (have_item87) (have_item88) (have_item89) (have_item90) (have_item91) (have_item92) (have_item93) (have_item94) (have_item95) (have_item96) (have_item97) (have_item98) (have_item99) (have_item100) (have_item101) (have_item102) (have_item103) (have_item104) (have_item105) (have_item106) (have_item107) (have_item108) (have_item109) (have_item110) (have_item111) (have_item112) (have_item113) (have_item114) (have_item115) (have_item116) (have_item117) (have_item118) (have_item119) (have_item120) (have_item121) (have_item122) (have_item123) (have_item124) (have_item125) (have_item126) (have_item127))
 :effect (and (not (at_y1)) (at_y0))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)) (not (have_item64)) (not (have_item65)) (not (have_item66)) (not (have_item67)) (not (have_item68)) (not (have_item69)) (not (have_item70)) (not (have_item71)) (not (have_item72)) (not (have_item73)) (not (have_item74)) (not (have_item75)) (not (have_item76)) (not (have_item77)) (not (have_item78)) (not (have_item79)) (not (have_item80)) (not (have_item81)) (not (have_item82)) (not (have_item83)) (not (have_item84)) (not (have_item85)) (not (have_item86)) (not (have_item87)) (not (have_item88)) (not (have_item89)) (not (have_item90)) (not (have_item91)) (not (have_item92)) (not (have_item93)) (not (have_item94)) (not (have_item95)) (not (have_item96)) (not (have_item97)) (not (have_item98)) (not (have_item99)) (not (have_item100)) (not (have_item101)) (not (have_item102)) (not (have_item103)) (not (have_item104)) (not (have_item105)) (not (have_item106)) (not (have_item107)) (not (have_item108)) (not (have_item109)) (not (have_item110)) (not (have_item111)) (not (have_item112)) (not (have_item113)) (not (have_item114)) (not (have_item115)) (not (have_item116)) (not (have_item117)) (not (have_item118)) (not (have_item119)) (not (have_item120)) (not (have_item121)) (not (have_item122)) (not (have_item123)) (not (have_item124)) (not (have_item125)) (not (have_item126)) (not (have_item127)))
)

(:action move_0_1_1_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63) (have_item64) (have_item65) (have_item66) (have_item67) (have_item68) (have_item69) (have_item70) (have_item71) (have_item72) (have_item73) (have_item74) (have_item75) (have_item76) (have_item77) (have_item78) (have_item79) (have_item80) (have_item81) (have_item82) (have_item83) (have_item84) (have_item85) (have_item86) (have_item87) (have_item88) (have_item89) (have_item90) (have_item91) (have_item92) (have_item93) (have_item94) (have_item95) (have_item96) (have_item97) (have_item98) (have_item99) (have_item100) (have_item101) (have_item102) (have_item103) (have_item104) (have_item105) (have_item106) (have_item107) (have_item108) (have_item109) (have_item110) (have_item111) (have_item112) (have_item113) (have_item114) (have_item115) (have_item116) (have_item117) (have_item118) (have_item119) (have_item120) (have_item121) (have_item122) (have_item123) (have_item124) (have_item125) (have_item126) (have_item127))
 :effect (and (not (at_x0)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)) (not (have_item64)) (not (have_item65)) (not (have_item66)) (not (have_item67)) (not (have_item68)) (not (have_item69)) (not (have_item70)) (not (have_item71)) (not (have_item72)) (not (have_item73)) (not (have_item74)) (not (have_item75)) (not (have_item76)) (not (have_item77)) (not (have_item78)) (not (have_item79)) (not (have_item80)) (not (have_item81)) (not (have_item82)) (not (have_item83)) (not (have_item84)) (not (have_item85)) (not (have_item86)) (not (have_item87)) (not (have_item88)) (not (have_item89)) (not (have_item90)) (not (have_item91)) (not (have_item92)) (not (have_item93)) (not (have_item94)) (not (have_item95)) (not (have_item96)) (not (have_item97)) (not (have_item98)) (not (have_item99)) (not (have_item100)) (not (have_item101)) (not (have_item102)) (not (have_item103)) (not (have_item104)) (not (have_item105)) (not (have_item106)) (not (have_item107)) (not (have_item108)) (not (have_item109)) (not (have_item110)) (not (have_item111)) (not (have_item112)) (not (have_item113)) (not (have_item114)) (not (have_item115)) (not (have_item116)) (not (have_item117)) (not (have_item118)) (not (have_item119)) (not (have_item120)) (not (have_item121)) (not (have_item122)) (not (have_item123)) (not (have_item124)) (not (have_item125)) (not (have_item126)) (not (have_item127)))
)

(:action move_1_1_0_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63) (have_item64) (have_item65) (have_item66) (have_item67) (have_item68) (have_item69) (have_item70) (have_item71) (have_item72) (have_item73) (have_item74) (have_item75) (have_item76) (have_item77) (have_item78) (have_item79) (have_item80) (have_item81) (have_item82) (have_item83) (have_item84) (have_item85) (have_item86) (have_item87) (have_item88) (have_item89) (have_item90) (have_item91) (have_item92) (have_item93) (have_item94) (have_item95) (have_item96) (have_item97) (have_item98) (have_item99) (have_item100) (have_item101) (have_item102) (have_item103) (have_item104) (have_item105) (have_item106) (have_item107) (have_item108) (have_item109) (have_item110) (have_item111) (have_item112) (have_item113) (have_item114) (have_item115) (have_item116) (have_item117) (have_item118) (have_item119) (have_item120) (have_item121) (have_item122) (have_item123) (have_item124) (have_item125) (have_item126) (have_item127))
 :effect (and (not (at_x1)) (at_x0))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)) (not (have_item64)) (not (have_item65)) (not (have_item66)) (not (have_item67)) (not (have_item68)) (not (have_item69)) (not (have_item70)) (not (have_item71)) (not (have_item72)) (not (have_item73)) (not (have_item74)) (not (have_item75)) (not (have_item76)) (not (have_item77)) (not (have_item78)) (not (have_item79)) (not (have_item80)) (not (have_item81)) (not (have_item82)) (not (have_item83)) (not (have_item84)) (not (have_item85)) (not (have_item86)) (not (have_item87)) (not (have_item88)) (not (have_item89)) (not (have_item90)) (not (have_item91)) (not (have_item92)) (not (have_item93)) (not (have_item94)) (not (have_item95)) (not (have_item96)) (not (have_item97)) (not (have_item98)) (not (have_item99)) (not (have_item100)) (not (have_item101)) (not (have_item102)) (not (have_item103)) (not (have_item104)) (not (have_item105)) (not (have_item106)) (not (have_item107)) (not (have_item108)) (not (have_item109)) (not (have_item110)) (not (have_item111)) (not (have_item112)) (not (have_item113)) (not (have_item114)) (not (have_item115)) (not (have_item116)) (not (have_item117)) (not (have_item118)) (not (have_item119)) (not (have_item120)) (not (have_item121)) (not (have_item122)) (not (have_item123)) (not (have_item124)) (not (have_item125)) (not (have_item126)) (not (have_item127)))
)

(:action move_0_1_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63) (have_item64) (have_item65) (have_item66) (have_item67) (have_item68) (have_item69) (have_item70) (have_item71) (have_item72) (have_item73) (have_item74) (have_item75) (have_item76) (have_item77) (have_item78) (have_item79) (have_item80) (have_item81) (have_item82) (have_item83) (have_item84) (have_item85) (have_item86) (have_item87) (have_item88) (have_item89) (have_item90) (have_item91) (have_item92) (have_item93) (have_item94) (have_item95) (have_item96) (have_item97) (have_item98) (have_item99) (have_item100) (have_item101) (have_item102) (have_item103) (have_item104) (have_item105) (have_item106) (have_item107) (have_item108) (have_item109) (have_item110) (have_item111) (have_item112) (have_item113) (have_item114) (have_item115) (have_item116) (have_item117) (have_item118) (have_item119) (have_item120) (have_item121) (have_item122) (have_item123) (have_item124) (have_item125) (have_item126) (have_item127))
 :effect (and (not (at_y1)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)) (not (have_item64)) (not (have_item65)) (not (have_item66)) (not (have_item67)) (not (have_item68)) (not (have_item69)) (not (have_item70)) (not (have_item71)) (not (have_item72)) (not (have_item73)) (not (have_item74)) (not (have_item75)) (not (have_item76)) (not (have_item77)) (not (have_item78)) (not (have_item79)) (not (have_item80)) (not (have_item81)) (not (have_item82)) (not (have_item83)) (not (have_item84)) (not (have_item85)) (not (have_item86)) (not (have_item87)) (not (have_item88)) (not (have_item89)) (not (have_item90)) (not (have_item91)) (not (have_item92)) (not (have_item93)) (not (have_item94)) (not (have_item95)) (not (have_item96)) (not (have_item97)) (not (have_item98)) (not (have_item99)) (not (have_item100)) (not (have_item101)) (not (have_item102)) (not (have_item103)) (not (have_item104)) (not (have_item105)) (not (have_item106)) (not (have_item107)) (not (have_item108)) (not (have_item109)) (not (have_item110)) (not (have_item111)) (not (have_item112)) (not (have_item113)) (not (have_item114)) (not (have_item115)) (not (have_item116)) (not (have_item117)) (not (have_item118)) (not (have_item119)) (not (have_item120)) (not (have_item121)) (not (have_item122)) (not (have_item123)) (not (have_item124)) (not (have_item125)) (not (have_item126)) (not (have_item127)))
)

(:action move_0_2_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63) (have_item64) (have_item65) (have_item66) (have_item67) (have_item68) (have_item69) (have_item70) (have_item71) (have_item72) (have_item73) (have_item74) (have_item75) (have_item76) (have_item77) (have_item78) (have_item79) (have_item80) (have_item81) (have_item82) (have_item83) (have_item84) (have_item85) (have_item86) (have_item87) (have_item88) (have_item89) (have_item90) (have_item91) (have_item92) (have_item93) (have_item94) (have_item95) (have_item96) (have_item97) (have_item98) (have_item99) (have_item100) (have_item101) (have_item102) (have_item103) (have_item104) (have_item105) (have_item106) (have_item107) (have_item108) (have_item109) (have_item110) (have_item111) (have_item112) (have_item113) (have_item114) (have_item115) (have_item116) (have_item117) (have_item118) (have_item119) (have_item120) (have_item121) (have_item122) (have_item123) (have_item124) (have_item125) (have_item126) (have_item127))
 :effect (and (not (at_y2)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)) (not (have_item64)) (not (have_item65)) (not (have_item66)) (not (have_item67)) (not (have_item68)) (not (have_item69)) (not (have_item70)) (not (have_item71)) (not (have_item72)) (not (have_item73)) (not (have_item74)) (not (have_item75)) (not (have_item76)) (not (have_item77)) (not (have_item78)) (not (have_item79)) (not (have_item80)) (not (have_item81)) (not (have_item82)) (not (have_item83)) (not (have_item84)) (not (have_item85)) (not (have_item86)) (not (have_item87)) (not (have_item88)) (not (have_item89)) (not (have_item90)) (not (have_item91)) (not (have_item92)) (not (have_item93)) (not (have_item94)) (not (have_item95)) (not (have_item96)) (not (have_item97)) (not (have_item98)) (not (have_item99)) (not (have_item100)) (not (have_item101)) (not (have_item102)) (not (have_item103)) (not (have_item104)) (not (have_item105)) (not (have_item106)) (not (have_item107)) (not (have_item108)) (not (have_item109)) (not (have_item110)) (not (have_item111)) (not (have_item112)) (not (have_item113)) (not (have_item114)) (not (have_item115)) (not (have_item116)) (not (have_item117)) (not (have_item118)) (not (have_item119)) (not (have_item120)) (not (have_item121)) (not (have_item122)) (not (have_item123)) (not (have_item124)) (not (have_item125)) (not (have_item126)) (not (have_item127)))
)

(:action move_0_2_1_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63) (have_item64) (have_item65) (have_item66) (have_item67) (have_item68) (have_item69) (have_item70) (have_item71) (have_item72) (have_item73) (have_item74) (have_item75) (have_item76) (have_item77) (have_item78) (have_item79) (have_item80) (have_item81) (have_item82) (have_item83) (have_item84) (have_item85) (have_item86) (have_item87) (have_item88) (have_item89) (have_item90) (have_item91) (have_item92) (have_item93) (have_item94) (have_item95) (have_item96) (have_item97) (have_item98) (have_item99) (have_item100) (have_item101) (have_item102) (have_item103) (have_item104) (have_item105) (have_item106) (have_item107) (have_item108) (have_item109) (have_item110) (have_item111) (have_item112) (have_item113) (have_item114) (have_item115) (have_item116) (have_item117) (have_item118) (have_item119) (have_item120) (have_item121) (have_item122) (have_item123) (have_item124) (have_item125) (have_item126) (have_item127))
 :effect (and (not (at_x0)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)) (not (have_item64)) (not (have_item65)) (not (have_item66)) (not (have_item67)) (not (have_item68)) (not (have_item69)) (not (have_item70)) (not (have_item71)) (not (have_item72)) (not (have_item73)) (not (have_item74)) (not (have_item75)) (not (have_item76)) (not (have_item77)) (not (have_item78)) (not (have_item79)) (not (have_item80)) (not (have_item81)) (not (have_item82)) (not (have_item83)) (not (have_item84)) (not (have_item85)) (not (have_item86)) (not (have_item87)) (not (have_item88)) (not (have_item89)) (not (have_item90)) (not (have_item91)) (not (have_item92)) (not (have_item93)) (not (have_item94)) (not (have_item95)) (not (have_item96)) (not (have_item97)) (not (have_item98)) (not (have_item99)) (not (have_item100)) (not (have_item101)) (not (have_item102)) (not (have_item103)) (not (have_item104)) (not (have_item105)) (not (have_item106)) (not (have_item107)) (not (have_item108)) (not (have_item109)) (not (have_item110)) (not (have_item111)) (not (have_item112)) (not (have_item113)) (not (have_item114)) (not (have_item115)) (not (have_item116)) (not (have_item117)) (not (have_item118)) (not (have_item119)) (not (have_item120)) (not (have_item121)) (not (have_item122)) (not (have_item123)) (not (have_item124)) (not (have_item125)) (not (have_item126)) (not (have_item127)))
)

(:action move_1_2_0_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63) (have_item64) (have_item65) (have_item66) (have_item67) (have_item68) (have_item69) (have_item70) (have_item71) (have_item72) (have_item73) (have_item74) (have_item75) (have_item76) (have_item77) (have_item78) (have_item79) (have_item80) (have_item81) (have_item82) (have_item83) (have_item84) (have_item85) (have_item86) (have_item87) (have_item88) (have_item89) (have_item90) (have_item91) (have_item92) (have_item93) (have_item94) (have_item95) (have_item96) (have_item97) (have_item98) (have_item99) (have_item100) (have_item101) (have_item102) (have_item103) (have_item104) (have_item105) (have_item106) (have_item107) (have_item108) (have_item109) (have_item110) (have_item111) (have_item112) (have_item113) (have_item114) (have_item115) (have_item116) (have_item117) (have_item118) (have_item119) (have_item120) (have_item121) (have_item122) (have_item123) (have_item124) (have_item125) (have_item126) (have_item127))
 :effect (and (not (at_x1)) (at_x0))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)) (not (have_item64)) (not (have_item65)) (not (have_item66)) (not (have_item67)) (not (have_item68)) (not (have_item69)) (not (have_item70)) (not (have_item71)) (not (have_item72)) (not (have_item73)) (not (have_item74)) (not (have_item75)) (not (have_item76)) (not (have_item77)) (not (have_item78)) (not (have_item79)) (not (have_item80)) (not (have_item81)) (not (have_item82)) (not (have_item83)) (not (have_item84)) (not (have_item85)) (not (have_item86)) (not (have_item87)) (not (have_item88)) (not (have_item89)) (not (have_item90)) (not (have_item91)) (not (have_item92)) (not (have_item93)) (not (have_item94)) (not (have_item95)) (not (have_item96)) (not (have_item97)) (not (have_item98)) (not (have_item99)) (not (have_item100)) (not (have_item101)) (not (have_item102)) (not (have_item103)) (not (have_item104)) (not (have_item105)) (not (have_item106)) (not (have_item107)) (not (have_item108)) (not (have_item109)) (not (have_item110)) (not (have_item111)) (not (have_item112)) (not (have_item113)) (not (have_item114)) (not (have_item115)) (not (have_item116)) (not (have_item117)) (not (have_item118)) (not (have_item119)) (not (have_item120)) (not (have_item121)) (not (have_item122)) (not (have_item123)) (not (have_item124)) (not (have_item125)) (not (have_item126)) (not (have_item127)))
)

(:action move_0_2_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63) (have_item64) (have_item65) (have_item66) (have_item67) (have_item68) (have_item69) (have_item70) (have_item71) (have_item72) (have_item73) (have_item74) (have_item75) (have_item76) (have_item77) (have_item78) (have_item79) (have_item80) (have_item81) (have_item82) (have_item83) (have_item84) (have_item85) (have_item86) (have_item87) (have_item88) (have_item89) (have_item90) (have_item91) (have_item92) (have_item93) (have_item94) (have_item95) (have_item96) (have_item97) (have_item98) (have_item99) (have_item100) (have_item101) (have_item102) (have_item103) (have_item104) (have_item105) (have_item106) (have_item107) (have_item108) (have_item109) (have_item110) (have_item111) (have_item112) (have_item113) (have_item114) (have_item115) (have_item116) (have_item117) (have_item118) (have_item119) (have_item120) (have_item121) (have_item122) (have_item123) (have_item124) (have_item125) (have_item126) (have_item127))
 :effect (and (not (at_y2)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)) (not (have_item64)) (not (have_item65)) (not (have_item66)) (not (have_item67)) (not (have_item68)) (not (have_item69)) (not (have_item70)) (not (have_item71)) (not (have_item72)) (not (have_item73)) (not (have_item74)) (not (have_item75)) (not (have_item76)) (not (have_item77)) (not (have_item78)) (not (have_item79)) (not (have_item80)) (not (have_item81)) (not (have_item82)) (not (have_item83)) (not (have_item84)) (not (have_item85)) (not (have_item86)) (not (have_item87)) (not (have_item88)) (not (have_item89)) (not (have_item90)) (not (have_item91)) (not (have_item92)) (not (have_item93)) (not (have_item94)) (not (have_item95)) (not (have_item96)) (not (have_item97)) (not (have_item98)) (not (have_item99)) (not (have_item100)) (not (have_item101)) (not (have_item102)) (not (have_item103)) (not (have_item104)) (not (have_item105)) (not (have_item106)) (not (have_item107)) (not (have_item108)) (not (have_item109)) (not (have_item110)) (not (have_item111)) (not (have_item112)) (not (have_item113)) (not (have_item114)) (not (have_item115)) (not (have_item116)) (not (have_item117)) (not (have_item118)) (not (have_item119)) (not (have_item120)) (not (have_item121)) (not (have_item122)) (not (have_item123)) (not (have_item124)) (not (have_item125)) (not (have_item126)) (not (have_item127)))
)

(:action move_0_3_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63) (have_item64) (have_item65) (have_item66) (have_item67) (have_item68) (have_item69) (have_item70) (have_item71) (have_item72) (have_item73) (have_item74) (have_item75) (have_item76) (have_item77) (have_item78) (have_item79) (have_item80) (have_item81) (have_item82) (have_item83) (have_item84) (have_item85) (have_item86) (have_item87) (have_item88) (have_item89) (have_item90) (have_item91) (have_item92) (have_item93) (have_item94) (have_item95) (have_item96) (have_item97) (have_item98) (have_item99) (have_item100) (have_item101) (have_item102) (have_item103) (have_item104) (have_item105) (have_item106) (have_item107) (have_item108) (have_item109) (have_item110) (have_item111) (have_item112) (have_item113) (have_item114) (have_item115) (have_item116) (have_item117) (have_item118) (have_item119) (have_item120) (have_item121) (have_item122) (have_item123) (have_item124) (have_item125) (have_item126) (have_item127))
 :effect (and (not (at_y3)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)) (not (have_item64)) (not (have_item65)) (not (have_item66)) (not (have_item67)) (not (have_item68)) (not (have_item69)) (not (have_item70)) (not (have_item71)) (not (have_item72)) (not (have_item73)) (not (have_item74)) (not (have_item75)) (not (have_item76)) (not (have_item77)) (not (have_item78)) (not (have_item79)) (not (have_item80)) (not (have_item81)) (not (have_item82)) (not (have_item83)) (not (have_item84)) (not (have_item85)) (not (have_item86)) (not (have_item87)) (not (have_item88)) (not (have_item89)) (not (have_item90)) (not (have_item91)) (not (have_item92)) (not (have_item93)) (not (have_item94)) (not (have_item95)) (not (have_item96)) (not (have_item97)) (not (have_item98)) (not (have_item99)) (not (have_item100)) (not (have_item101)) (not (have_item102)) (not (have_item103)) (not (have_item104)) (not (have_item105)) (not (have_item106)) (not (have_item107)) (not (have_item108)) (not (have_item109)) (not (have_item110)) (not (have_item111)) (not (have_item112)) (not (have_item113)) (not (have_item114)) (not (have_item115)) (not (have_item116)) (not (have_item117)) (not (have_item118)) (not (have_item119)) (not (have_item120)) (not (have_item121)) (not (have_item122)) (not (have_item123)) (not (have_item124)) (not (have_item125)) (not (have_item126)) (not (have_item127)))
)

(:action move_0_3_1_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63) (have_item64) (have_item65) (have_item66) (have_item67) (have_item68) (have_item69) (have_item70) (have_item71) (have_item72) (have_item73) (have_item74) (have_item75) (have_item76) (have_item77) (have_item78) (have_item79) (have_item80) (have_item81) (have_item82) (have_item83) (have_item84) (have_item85) (have_item86) (have_item87) (have_item88) (have_item89) (have_item90) (have_item91) (have_item92) (have_item93) (have_item94) (have_item95) (have_item96) (have_item97) (have_item98) (have_item99) (have_item100) (have_item101) (have_item102) (have_item103) (have_item104) (have_item105) (have_item106) (have_item107) (have_item108) (have_item109) (have_item110) (have_item111) (have_item112) (have_item113) (have_item114) (have_item115) (have_item116) (have_item117) (have_item118) (have_item119) (have_item120) (have_item121) (have_item122) (have_item123) (have_item124) (have_item125) (have_item126) (have_item127))
 :effect (and (not (at_x0)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)) (not (have_item64)) (not (have_item65)) (not (have_item66)) (not (have_item67)) (not (have_item68)) (not (have_item69)) (not (have_item70)) (not (have_item71)) (not (have_item72)) (not (have_item73)) (not (have_item74)) (not (have_item75)) (not (have_item76)) (not (have_item77)) (not (have_item78)) (not (have_item79)) (not (have_item80)) (not (have_item81)) (not (have_item82)) (not (have_item83)) (not (have_item84)) (not (have_item85)) (not (have_item86)) (not (have_item87)) (not (have_item88)) (not (have_item89)) (not (have_item90)) (not (have_item91)) (not (have_item92)) (not (have_item93)) (not (have_item94)) (not (have_item95)) (not (have_item96)) (not (have_item97)) (not (have_item98)) (not (have_item99)) (not (have_item100)) (not (have_item101)) (not (have_item102)) (not (have_item103)) (not (have_item104)) (not (have_item105)) (not (have_item106)) (not (have_item107)) (not (have_item108)) (not (have_item109)) (not (have_item110)) (not (have_item111)) (not (have_item112)) (not (have_item113)) (not (have_item114)) (not (have_item115)) (not (have_item116)) (not (have_item117)) (not (have_item118)) (not (have_item119)) (not (have_item120)) (not (have_item121)) (not (have_item122)) (not (have_item123)) (not (have_item124)) (not (have_item125)) (not (have_item126)) (not (have_item127)))
)

(:action move_1_3_0_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63) (have_item64) (have_item65) (have_item66) (have_item67) (have_item68) (have_item69) (have_item70) (have_item71) (have_item72) (have_item73) (have_item74) (have_item75) (have_item76) (have_item77) (have_item78) (have_item79) (have_item80) (have_item81) (have_item82) (have_item83) (have_item84) (have_item85) (have_item86) (have_item87) (have_item88) (have_item89) (have_item90) (have_item91) (have_item92) (have_item93) (have_item94) (have_item95) (have_item96) (have_item97) (have_item98) (have_item99) (have_item100) (have_item101) (have_item102) (have_item103) (have_item104) (have_item105) (have_item106) (have_item107) (have_item108) (have_item109) (have_item110) (have_item111) (have_item112) (have_item113) (have_item114) (have_item115) (have_item116) (have_item117) (have_item118) (have_item119) (have_item120) (have_item121) (have_item122) (have_item123) (have_item124) (have_item125) (have_item126) (have_item127))
 :effect (and (not (at_x1)) (at_x0))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)) (not (have_item64)) (not (have_item65)) (not (have_item66)) (not (have_item67)) (not (have_item68)) (not (have_item69)) (not (have_item70)) (not (have_item71)) (not (have_item72)) (not (have_item73)) (not (have_item74)) (not (have_item75)) (not (have_item76)) (not (have_item77)) (not (have_item78)) (not (have_item79)) (not (have_item80)) (not (have_item81)) (not (have_item82)) (not (have_item83)) (not (have_item84)) (not (have_item85)) (not (have_item86)) (not (have_item87)) (not (have_item88)) (not (have_item89)) (not (have_item90)) (not (have_item91)) (not (have_item92)) (not (have_item93)) (not (have_item94)) (not (have_item95)) (not (have_item96)) (not (have_item97)) (not (have_item98)) (not (have_item99)) (not (have_item100)) (not (have_item101)) (not (have_item102)) (not (have_item103)) (not (have_item104)) (not (have_item105)) (not (have_item106)) (not (have_item107)) (not (have_item108)) (not (have_item109)) (not (have_item110)) (not (have_item111)) (not (have_item112)) (not (have_item113)) (not (have_item114)) (not (have_item115)) (not (have_item116)) (not (have_item117)) (not (have_item118)) (not (have_item119)) (not (have_item120)) (not (have_item121)) (not (have_item122)) (not (have_item123)) (not (have_item124)) (not (have_item125)) (not (have_item126)) (not (have_item127)))
)

(:action move_1_0_2_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63) (have_item64) (have_item65) (have_item66) (have_item67) (have_item68) (have_item69) (have_item70) (have_item71) (have_item72) (have_item73) (have_item74) (have_item75) (have_item76) (have_item77) (have_item78) (have_item79) (have_item80) (have_item81) (have_item82) (have_item83) (have_item84) (have_item85) (have_item86) (have_item87) (have_item88) (have_item89) (have_item90) (have_item91) (have_item92) (have_item93) (have_item94) (have_item95) (have_item96) (have_item97) (have_item98) (have_item99) (have_item100) (have_item101) (have_item102) (have_item103) (have_item104) (have_item105) (have_item106) (have_item107) (have_item108) (have_item109) (have_item110) (have_item111) (have_item112) (have_item113) (have_item114) (have_item115) (have_item116) (have_item117) (have_item118) (have_item119) (have_item120) (have_item121) (have_item122) (have_item123) (have_item124) (have_item125) (have_item126) (have_item127))
 :effect (and (not (at_x1)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)) (not (have_item64)) (not (have_item65)) (not (have_item66)) (not (have_item67)) (not (have_item68)) (not (have_item69)) (not (have_item70)) (not (have_item71)) (not (have_item72)) (not (have_item73)) (not (have_item74)) (not (have_item75)) (not (have_item76)) (not (have_item77)) (not (have_item78)) (not (have_item79)) (not (have_item80)) (not (have_item81)) (not (have_item82)) (not (have_item83)) (not (have_item84)) (not (have_item85)) (not (have_item86)) (not (have_item87)) (not (have_item88)) (not (have_item89)) (not (have_item90)) (not (have_item91)) (not (have_item92)) (not (have_item93)) (not (have_item94)) (not (have_item95)) (not (have_item96)) (not (have_item97)) (not (have_item98)) (not (have_item99)) (not (have_item100)) (not (have_item101)) (not (have_item102)) (not (have_item103)) (not (have_item104)) (not (have_item105)) (not (have_item106)) (not (have_item107)) (not (have_item108)) (not (have_item109)) (not (have_item110)) (not (have_item111)) (not (have_item112)) (not (have_item113)) (not (have_item114)) (not (have_item115)) (not (have_item116)) (not (have_item117)) (not (have_item118)) (not (have_item119)) (not (have_item120)) (not (have_item121)) (not (have_item122)) (not (have_item123)) (not (have_item124)) (not (have_item125)) (not (have_item126)) (not (have_item127)))
)

(:action move_2_0_1_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63) (have_item64) (have_item65) (have_item66) (have_item67) (have_item68) (have_item69) (have_item70) (have_item71) (have_item72) (have_item73) (have_item74) (have_item75) (have_item76) (have_item77) (have_item78) (have_item79) (have_item80) (have_item81) (have_item82) (have_item83) (have_item84) (have_item85) (have_item86) (have_item87) (have_item88) (have_item89) (have_item90) (have_item91) (have_item92) (have_item93) (have_item94) (have_item95) (have_item96) (have_item97) (have_item98) (have_item99) (have_item100) (have_item101) (have_item102) (have_item103) (have_item104) (have_item105) (have_item106) (have_item107) (have_item108) (have_item109) (have_item110) (have_item111) (have_item112) (have_item113) (have_item114) (have_item115) (have_item116) (have_item117) (have_item118) (have_item119) (have_item120) (have_item121) (have_item122) (have_item123) (have_item124) (have_item125) (have_item126) (have_item127))
 :effect (and (not (at_x2)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)) (not (have_item64)) (not (have_item65)) (not (have_item66)) (not (have_item67)) (not (have_item68)) (not (have_item69)) (not (have_item70)) (not (have_item71)) (not (have_item72)) (not (have_item73)) (not (have_item74)) (not (have_item75)) (not (have_item76)) (not (have_item77)) (not (have_item78)) (not (have_item79)) (not (have_item80)) (not (have_item81)) (not (have_item82)) (not (have_item83)) (not (have_item84)) (not (have_item85)) (not (have_item86)) (not (have_item87)) (not (have_item88)) (not (have_item89)) (not (have_item90)) (not (have_item91)) (not (have_item92)) (not (have_item93)) (not (have_item94)) (not (have_item95)) (not (have_item96)) (not (have_item97)) (not (have_item98)) (not (have_item99)) (not (have_item100)) (not (have_item101)) (not (have_item102)) (not (have_item103)) (not (have_item104)) (not (have_item105)) (not (have_item106)) (not (have_item107)) (not (have_item108)) (not (have_item109)) (not (have_item110)) (not (have_item111)) (not (have_item112)) (not (have_item113)) (not (have_item114)) (not (have_item115)) (not (have_item116)) (not (have_item117)) (not (have_item118)) (not (have_item119)) (not (have_item120)) (not (have_item121)) (not (have_item122)) (not (have_item123)) (not (have_item124)) (not (have_item125)) (not (have_item126)) (not (have_item127)))
)

(:action move_1_0_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63) (have_item64) (have_item65) (have_item66) (have_item67) (have_item68) (have_item69) (have_item70) (have_item71) (have_item72) (have_item73) (have_item74) (have_item75) (have_item76) (have_item77) (have_item78) (have_item79) (have_item80) (have_item81) (have_item82) (have_item83) (have_item84) (have_item85) (have_item86) (have_item87) (have_item88) (have_item89) (have_item90) (have_item91) (have_item92) (have_item93) (have_item94) (have_item95) (have_item96) (have_item97) (have_item98) (have_item99) (have_item100) (have_item101) (have_item102) (have_item103) (have_item104) (have_item105) (have_item106) (have_item107) (have_item108) (have_item109) (have_item110) (have_item111) (have_item112) (have_item113) (have_item114) (have_item115) (have_item116) (have_item117) (have_item118) (have_item119) (have_item120) (have_item121) (have_item122) (have_item123) (have_item124) (have_item125) (have_item126) (have_item127))
 :effect (and (not (at_y0)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)) (not (have_item64)) (not (have_item65)) (not (have_item66)) (not (have_item67)) (not (have_item68)) (not (have_item69)) (not (have_item70)) (not (have_item71)) (not (have_item72)) (not (have_item73)) (not (have_item74)) (not (have_item75)) (not (have_item76)) (not (have_item77)) (not (have_item78)) (not (have_item79)) (not (have_item80)) (not (have_item81)) (not (have_item82)) (not (have_item83)) (not (have_item84)) (not (have_item85)) (not (have_item86)) (not (have_item87)) (not (have_item88)) (not (have_item89)) (not (have_item90)) (not (have_item91)) (not (have_item92)) (not (have_item93)) (not (have_item94)) (not (have_item95)) (not (have_item96)) (not (have_item97)) (not (have_item98)) (not (have_item99)) (not (have_item100)) (not (have_item101)) (not (have_item102)) (not (have_item103)) (not (have_item104)) (not (have_item105)) (not (have_item106)) (not (have_item107)) (not (have_item108)) (not (have_item109)) (not (have_item110)) (not (have_item111)) (not (have_item112)) (not (have_item113)) (not (have_item114)) (not (have_item115)) (not (have_item116)) (not (have_item117)) (not (have_item118)) (not (have_item119)) (not (have_item120)) (not (have_item121)) (not (have_item122)) (not (have_item123)) (not (have_item124)) (not (have_item125)) (not (have_item126)) (not (have_item127)))
)

(:action move_1_1_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63) (have_item64) (have_item65) (have_item66) (have_item67) (have_item68) (have_item69) (have_item70) (have_item71) (have_item72) (have_item73) (have_item74) (have_item75) (have_item76) (have_item77) (have_item78) (have_item79) (have_item80) (have_item81) (have_item82) (have_item83) (have_item84) (have_item85) (have_item86) (have_item87) (have_item88) (have_item89) (have_item90) (have_item91) (have_item92) (have_item93) (have_item94) (have_item95) (have_item96) (have_item97) (have_item98) (have_item99) (have_item100) (have_item101) (have_item102) (have_item103) (have_item104) (have_item105) (have_item106) (have_item107) (have_item108) (have_item109) (have_item110) (have_item111) (have_item112) (have_item113) (have_item114) (have_item115) (have_item116) (have_item117) (have_item118) (have_item119) (have_item120) (have_item121) (have_item122) (have_item123) (have_item124) (have_item125) (have_item126) (have_item127))
 :effect (and (not (at_y1)) (at_y0))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)) (not (have_item64)) (not (have_item65)) (not (have_item66)) (not (have_item67)) (not (have_item68)) (not (have_item69)) (not (have_item70)) (not (have_item71)) (not (have_item72)) (not (have_item73)) (not (have_item74)) (not (have_item75)) (not (have_item76)) (not (have_item77)) (not (have_item78)) (not (have_item79)) (not (have_item80)) (not (have_item81)) (not (have_item82)) (not (have_item83)) (not (have_item84)) (not (have_item85)) (not (have_item86)) (not (have_item87)) (not (have_item88)) (not (have_item89)) (not (have_item90)) (not (have_item91)) (not (have_item92)) (not (have_item93)) (not (have_item94)) (not (have_item95)) (not (have_item96)) (not (have_item97)) (not (have_item98)) (not (have_item99)) (not (have_item100)) (not (have_item101)) (not (have_item102)) (not (have_item103)) (not (have_item104)) (not (have_item105)) (not (have_item106)) (not (have_item107)) (not (have_item108)) (not (have_item109)) (not (have_item110)) (not (have_item111)) (not (have_item112)) (not (have_item113)) (not (have_item114)) (not (have_item115)) (not (have_item116)) (not (have_item117)) (not (have_item118)) (not (have_item119)) (not (have_item120)) (not (have_item121)) (not (have_item122)) (not (have_item123)) (not (have_item124)) (not (have_item125)) (not (have_item126)) (not (have_item127)))
)

(:action move_1_1_2_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63) (have_item64) (have_item65) (have_item66) (have_item67) (have_item68) (have_item69) (have_item70) (have_item71) (have_item72) (have_item73) (have_item74) (have_item75) (have_item76) (have_item77) (have_item78) (have_item79) (have_item80) (have_item81) (have_item82) (have_item83) (have_item84) (have_item85) (have_item86) (have_item87) (have_item88) (have_item89) (have_item90) (have_item91) (have_item92) (have_item93) (have_item94) (have_item95) (have_item96) (have_item97) (have_item98) (have_item99) (have_item100) (have_item101) (have_item102) (have_item103) (have_item104) (have_item105) (have_item106) (have_item107) (have_item108) (have_item109) (have_item110) (have_item111) (have_item112) (have_item113) (have_item114) (have_item115) (have_item116) (have_item117) (have_item118) (have_item119) (have_item120) (have_item121) (have_item122) (have_item123) (have_item124) (have_item125) (have_item126) (have_item127))
 :effect (and (not (at_x1)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)) (not (have_item64)) (not (have_item65)) (not (have_item66)) (not (have_item67)) (not (have_item68)) (not (have_item69)) (not (have_item70)) (not (have_item71)) (not (have_item72)) (not (have_item73)) (not (have_item74)) (not (have_item75)) (not (have_item76)) (not (have_item77)) (not (have_item78)) (not (have_item79)) (not (have_item80)) (not (have_item81)) (not (have_item82)) (not (have_item83)) (not (have_item84)) (not (have_item85)) (not (have_item86)) (not (have_item87)) (not (have_item88)) (not (have_item89)) (not (have_item90)) (not (have_item91)) (not (have_item92)) (not (have_item93)) (not (have_item94)) (not (have_item95)) (not (have_item96)) (not (have_item97)) (not (have_item98)) (not (have_item99)) (not (have_item100)) (not (have_item101)) (not (have_item102)) (not (have_item103)) (not (have_item104)) (not (have_item105)) (not (have_item106)) (not (have_item107)) (not (have_item108)) (not (have_item109)) (not (have_item110)) (not (have_item111)) (not (have_item112)) (not (have_item113)) (not (have_item114)) (not (have_item115)) (not (have_item116)) (not (have_item117)) (not (have_item118)) (not (have_item119)) (not (have_item120)) (not (have_item121)) (not (have_item122)) (not (have_item123)) (not (have_item124)) (not (have_item125)) (not (have_item126)) (not (have_item127)))
)

(:action move_2_1_1_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63) (have_item64) (have_item65) (have_item66) (have_item67) (have_item68) (have_item69) (have_item70) (have_item71) (have_item72) (have_item73) (have_item74) (have_item75) (have_item76) (have_item77) (have_item78) (have_item79) (have_item80) (have_item81) (have_item82) (have_item83) (have_item84) (have_item85) (have_item86) (have_item87) (have_item88) (have_item89) (have_item90) (have_item91) (have_item92) (have_item93) (have_item94) (have_item95) (have_item96) (have_item97) (have_item98) (have_item99) (have_item100) (have_item101) (have_item102) (have_item103) (have_item104) (have_item105) (have_item106) (have_item107) (have_item108) (have_item109) (have_item110) (have_item111) (have_item112) (have_item113) (have_item114) (have_item115) (have_item116) (have_item117) (have_item118) (have_item119) (have_item120) (have_item121) (have_item122) (have_item123) (have_item124) (have_item125) (have_item126) (have_item127))
 :effect (and (not (at_x2)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)) (not (have_item64)) (not (have_item65)) (not (have_item66)) (not (have_item67)) (not (have_item68)) (not (have_item69)) (not (have_item70)) (not (have_item71)) (not (have_item72)) (not (have_item73)) (not (have_item74)) (not (have_item75)) (not (have_item76)) (not (have_item77)) (not (have_item78)) (not (have_item79)) (not (have_item80)) (not (have_item81)) (not (have_item82)) (not (have_item83)) (not (have_item84)) (not (have_item85)) (not (have_item86)) (not (have_item87)) (not (have_item88)) (not (have_item89)) (not (have_item90)) (not (have_item91)) (not (have_item92)) (not (have_item93)) (not (have_item94)) (not (have_item95)) (not (have_item96)) (not (have_item97)) (not (have_item98)) (not (have_item99)) (not (have_item100)) (not (have_item101)) (not (have_item102)) (not (have_item103)) (not (have_item104)) (not (have_item105)) (not (have_item106)) (not (have_item107)) (not (have_item108)) (not (have_item109)) (not (have_item110)) (not (have_item111)) (not (have_item112)) (not (have_item113)) (not (have_item114)) (not (have_item115)) (not (have_item116)) (not (have_item117)) (not (have_item118)) (not (have_item119)) (not (have_item120)) (not (have_item121)) (not (have_item122)) (not (have_item123)) (not (have_item124)) (not (have_item125)) (not (have_item126)) (not (have_item127)))
)

(:action move_1_1_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63) (have_item64) (have_item65) (have_item66) (have_item67) (have_item68) (have_item69) (have_item70) (have_item71) (have_item72) (have_item73) (have_item74) (have_item75) (have_item76) (have_item77) (have_item78) (have_item79) (have_item80) (have_item81) (have_item82) (have_item83) (have_item84) (have_item85) (have_item86) (have_item87) (have_item88) (have_item89) (have_item90) (have_item91) (have_item92) (have_item93) (have_item94) (have_item95) (have_item96) (have_item97) (have_item98) (have_item99) (have_item100) (have_item101) (have_item102) (have_item103) (have_item104) (have_item105) (have_item106) (have_item107) (have_item108) (have_item109) (have_item110) (have_item111) (have_item112) (have_item113) (have_item114) (have_item115) (have_item116) (have_item117) (have_item118) (have_item119) (have_item120) (have_item121) (have_item122) (have_item123) (have_item124) (have_item125) (have_item126) (have_item127))
 :effect (and (not (at_y1)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)) (not (have_item64)) (not (have_item65)) (not (have_item66)) (not (have_item67)) (not (have_item68)) (not (have_item69)) (not (have_item70)) (not (have_item71)) (not (have_item72)) (not (have_item73)) (not (have_item74)) (not (have_item75)) (not (have_item76)) (not (have_item77)) (not (have_item78)) (not (have_item79)) (not (have_item80)) (not (have_item81)) (not (have_item82)) (not (have_item83)) (not (have_item84)) (not (have_item85)) (not (have_item86)) (not (have_item87)) (not (have_item88)) (not (have_item89)) (not (have_item90)) (not (have_item91)) (not (have_item92)) (not (have_item93)) (not (have_item94)) (not (have_item95)) (not (have_item96)) (not (have_item97)) (not (have_item98)) (not (have_item99)) (not (have_item100)) (not (have_item101)) (not (have_item102)) (not (have_item103)) (not (have_item104)) (not (have_item105)) (not (have_item106)) (not (have_item107)) (not (have_item108)) (not (have_item109)) (not (have_item110)) (not (have_item111)) (not (have_item112)) (not (have_item113)) (not (have_item114)) (not (have_item115)) (not (have_item116)) (not (have_item117)) (not (have_item118)) (not (have_item119)) (not (have_item120)) (not (have_item121)) (not (have_item122)) (not (have_item123)) (not (have_item124)) (not (have_item125)) (not (have_item126)) (not (have_item127)))
)

(:action move_1_2_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63) (have_item64) (have_item65) (have_item66) (have_item67) (have_item68) (have_item69) (have_item70) (have_item71) (have_item72) (have_item73) (have_item74) (have_item75) (have_item76) (have_item77) (have_item78) (have_item79) (have_item80) (have_item81) (have_item82) (have_item83) (have_item84) (have_item85) (have_item86) (have_item87) (have_item88) (have_item89) (have_item90) (have_item91) (have_item92) (have_item93) (have_item94) (have_item95) (have_item96) (have_item97) (have_item98) (have_item99) (have_item100) (have_item101) (have_item102) (have_item103) (have_item104) (have_item105) (have_item106) (have_item107) (have_item108) (have_item109) (have_item110) (have_item111) (have_item112) (have_item113) (have_item114) (have_item115) (have_item116) (have_item117) (have_item118) (have_item119) (have_item120) (have_item121) (have_item122) (have_item123) (have_item124) (have_item125) (have_item126) (have_item127))
 :effect (and (not (at_y2)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)) (not (have_item64)) (not (have_item65)) (not (have_item66)) (not (have_item67)) (not (have_item68)) (not (have_item69)) (not (have_item70)) (not (have_item71)) (not (have_item72)) (not (have_item73)) (not (have_item74)) (not (have_item75)) (not (have_item76)) (not (have_item77)) (not (have_item78)) (not (have_item79)) (not (have_item80)) (not (have_item81)) (not (have_item82)) (not (have_item83)) (not (have_item84)) (not (have_item85)) (not (have_item86)) (not (have_item87)) (not (have_item88)) (not (have_item89)) (not (have_item90)) (not (have_item91)) (not (have_item92)) (not (have_item93)) (not (have_item94)) (not (have_item95)) (not (have_item96)) (not (have_item97)) (not (have_item98)) (not (have_item99)) (not (have_item100)) (not (have_item101)) (not (have_item102)) (not (have_item103)) (not (have_item104)) (not (have_item105)) (not (have_item106)) (not (have_item107)) (not (have_item108)) (not (have_item109)) (not (have_item110)) (not (have_item111)) (not (have_item112)) (not (have_item113)) (not (have_item114)) (not (have_item115)) (not (have_item116)) (not (have_item117)) (not (have_item118)) (not (have_item119)) (not (have_item120)) (not (have_item121)) (not (have_item122)) (not (have_item123)) (not (have_item124)) (not (have_item125)) (not (have_item126)) (not (have_item127)))
)

(:action move_1_2_2_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63) (have_item64) (have_item65) (have_item66) (have_item67) (have_item68) (have_item69) (have_item70) (have_item71) (have_item72) (have_item73) (have_item74) (have_item75) (have_item76) (have_item77) (have_item78) (have_item79) (have_item80) (have_item81) (have_item82) (have_item83) (have_item84) (have_item85) (have_item86) (have_item87) (have_item88) (have_item89) (have_item90) (have_item91) (have_item92) (have_item93) (have_item94) (have_item95) (have_item96) (have_item97) (have_item98) (have_item99) (have_item100) (have_item101) (have_item102) (have_item103) (have_item104) (have_item105) (have_item106) (have_item107) (have_item108) (have_item109) (have_item110) (have_item111) (have_item112) (have_item113) (have_item114) (have_item115) (have_item116) (have_item117) (have_item118) (have_item119) (have_item120) (have_item121) (have_item122) (have_item123) (have_item124) (have_item125) (have_item126) (have_item127))
 :effect (and (not (at_x1)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)) (not (have_item64)) (not (have_item65)) (not (have_item66)) (not (have_item67)) (not (have_item68)) (not (have_item69)) (not (have_item70)) (not (have_item71)) (not (have_item72)) (not (have_item73)) (not (have_item74)) (not (have_item75)) (not (have_item76)) (not (have_item77)) (not (have_item78)) (not (have_item79)) (not (have_item80)) (not (have_item81)) (not (have_item82)) (not (have_item83)) (not (have_item84)) (not (have_item85)) (not (have_item86)) (not (have_item87)) (not (have_item88)) (not (have_item89)) (not (have_item90)) (not (have_item91)) (not (have_item92)) (not (have_item93)) (not (have_item94)) (not (have_item95)) (not (have_item96)) (not (have_item97)) (not (have_item98)) (not (have_item99)) (not (have_item100)) (not (have_item101)) (not (have_item102)) (not (have_item103)) (not (have_item104)) (not (have_item105)) (not (have_item106)) (not (have_item107)) (not (have_item108)) (not (have_item109)) (not (have_item110)) (not (have_item111)) (not (have_item112)) (not (have_item113)) (not (have_item114)) (not (have_item115)) (not (have_item116)) (not (have_item117)) (not (have_item118)) (not (have_item119)) (not (have_item120)) (not (have_item121)) (not (have_item122)) (not (have_item123)) (not (have_item124)) (not (have_item125)) (not (have_item126)) (not (have_item127)))
)

(:action move_2_2_1_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63) (have_item64) (have_item65) (have_item66) (have_item67) (have_item68) (have_item69) (have_item70) (have_item71) (have_item72) (have_item73) (have_item74) (have_item75) (have_item76) (have_item77) (have_item78) (have_item79) (have_item80) (have_item81) (have_item82) (have_item83) (have_item84) (have_item85) (have_item86) (have_item87) (have_item88) (have_item89) (have_item90) (have_item91) (have_item92) (have_item93) (have_item94) (have_item95) (have_item96) (have_item97) (have_item98) (have_item99) (have_item100) (have_item101) (have_item102) (have_item103) (have_item104) (have_item105) (have_item106) (have_item107) (have_item108) (have_item109) (have_item110) (have_item111) (have_item112) (have_item113) (have_item114) (have_item115) (have_item116) (have_item117) (have_item118) (have_item119) (have_item120) (have_item121) (have_item122) (have_item123) (have_item124) (have_item125) (have_item126) (have_item127))
 :effect (and (not (at_x2)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)) (not (have_item64)) (not (have_item65)) (not (have_item66)) (not (have_item67)) (not (have_item68)) (not (have_item69)) (not (have_item70)) (not (have_item71)) (not (have_item72)) (not (have_item73)) (not (have_item74)) (not (have_item75)) (not (have_item76)) (not (have_item77)) (not (have_item78)) (not (have_item79)) (not (have_item80)) (not (have_item81)) (not (have_item82)) (not (have_item83)) (not (have_item84)) (not (have_item85)) (not (have_item86)) (not (have_item87)) (not (have_item88)) (not (have_item89)) (not (have_item90)) (not (have_item91)) (not (have_item92)) (not (have_item93)) (not (have_item94)) (not (have_item95)) (not (have_item96)) (not (have_item97)) (not (have_item98)) (not (have_item99)) (not (have_item100)) (not (have_item101)) (not (have_item102)) (not (have_item103)) (not (have_item104)) (not (have_item105)) (not (have_item106)) (not (have_item107)) (not (have_item108)) (not (have_item109)) (not (have_item110)) (not (have_item111)) (not (have_item112)) (not (have_item113)) (not (have_item114)) (not (have_item115)) (not (have_item116)) (not (have_item117)) (not (have_item118)) (not (have_item119)) (not (have_item120)) (not (have_item121)) (not (have_item122)) (not (have_item123)) (not (have_item124)) (not (have_item125)) (not (have_item126)) (not (have_item127)))
)

(:action move_1_2_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63) (have_item64) (have_item65) (have_item66) (have_item67) (have_item68) (have_item69) (have_item70) (have_item71) (have_item72) (have_item73) (have_item74) (have_item75) (have_item76) (have_item77) (have_item78) (have_item79) (have_item80) (have_item81) (have_item82) (have_item83) (have_item84) (have_item85) (have_item86) (have_item87) (have_item88) (have_item89) (have_item90) (have_item91) (have_item92) (have_item93) (have_item94) (have_item95) (have_item96) (have_item97) (have_item98) (have_item99) (have_item100) (have_item101) (have_item102) (have_item103) (have_item104) (have_item105) (have_item106) (have_item107) (have_item108) (have_item109) (have_item110) (have_item111) (have_item112) (have_item113) (have_item114) (have_item115) (have_item116) (have_item117) (have_item118) (have_item119) (have_item120) (have_item121) (have_item122) (have_item123) (have_item124) (have_item125) (have_item126) (have_item127))
 :effect (and (not (at_y2)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)) (not (have_item64)) (not (have_item65)) (not (have_item66)) (not (have_item67)) (not (have_item68)) (not (have_item69)) (not (have_item70)) (not (have_item71)) (not (have_item72)) (not (have_item73)) (not (have_item74)) (not (have_item75)) (not (have_item76)) (not (have_item77)) (not (have_item78)) (not (have_item79)) (not (have_item80)) (not (have_item81)) (not (have_item82)) (not (have_item83)) (not (have_item84)) (not (have_item85)) (not (have_item86)) (not (have_item87)) (not (have_item88)) (not (have_item89)) (not (have_item90)) (not (have_item91)) (not (have_item92)) (not (have_item93)) (not (have_item94)) (not (have_item95)) (not (have_item96)) (not (have_item97)) (not (have_item98)) (not (have_item99)) (not (have_item100)) (not (have_item101)) (not (have_item102)) (not (have_item103)) (not (have_item104)) (not (have_item105)) (not (have_item106)) (not (have_item107)) (not (have_item108)) (not (have_item109)) (not (have_item110)) (not (have_item111)) (not (have_item112)) (not (have_item113)) (not (have_item114)) (not (have_item115)) (not (have_item116)) (not (have_item117)) (not (have_item118)) (not (have_item119)) (not (have_item120)) (not (have_item121)) (not (have_item122)) (not (have_item123)) (not (have_item124)) (not (have_item125)) (not (have_item126)) (not (have_item127)))
)

(:action move_1_3_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63) (have_item64) (have_item65) (have_item66) (have_item67) (have_item68) (have_item69) (have_item70) (have_item71) (have_item72) (have_item73) (have_item74) (have_item75) (have_item76) (have_item77) (have_item78) (have_item79) (have_item80) (have_item81) (have_item82) (have_item83) (have_item84) (have_item85) (have_item86) (have_item87) (have_item88) (have_item89) (have_item90) (have_item91) (have_item92) (have_item93) (have_item94) (have_item95) (have_item96) (have_item97) (have_item98) (have_item99) (have_item100) (have_item101) (have_item102) (have_item103) (have_item104) (have_item105) (have_item106) (have_item107) (have_item108) (have_item109) (have_item110) (have_item111) (have_item112) (have_item113) (have_item114) (have_item115) (have_item116) (have_item117) (have_item118) (have_item119) (have_item120) (have_item121) (have_item122) (have_item123) (have_item124) (have_item125) (have_item126) (have_item127))
 :effect (and (not (at_y3)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)) (not (have_item64)) (not (have_item65)) (not (have_item66)) (not (have_item67)) (not (have_item68)) (not (have_item69)) (not (have_item70)) (not (have_item71)) (not (have_item72)) (not (have_item73)) (not (have_item74)) (not (have_item75)) (not (have_item76)) (not (have_item77)) (not (have_item78)) (not (have_item79)) (not (have_item80)) (not (have_item81)) (not (have_item82)) (not (have_item83)) (not (have_item84)) (not (have_item85)) (not (have_item86)) (not (have_item87)) (not (have_item88)) (not (have_item89)) (not (have_item90)) (not (have_item91)) (not (have_item92)) (not (have_item93)) (not (have_item94)) (not (have_item95)) (not (have_item96)) (not (have_item97)) (not (have_item98)) (not (have_item99)) (not (have_item100)) (not (have_item101)) (not (have_item102)) (not (have_item103)) (not (have_item104)) (not (have_item105)) (not (have_item106)) (not (have_item107)) (not (have_item108)) (not (have_item109)) (not (have_item110)) (not (have_item111)) (not (have_item112)) (not (have_item113)) (not (have_item114)) (not (have_item115)) (not (have_item116)) (not (have_item117)) (not (have_item118)) (not (have_item119)) (not (have_item120)) (not (have_item121)) (not (have_item122)) (not (have_item123)) (not (have_item124)) (not (have_item125)) (not (have_item126)) (not (have_item127)))
)

(:action move_1_3_2_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63) (have_item64) (have_item65) (have_item66) (have_item67) (have_item68) (have_item69) (have_item70) (have_item71) (have_item72) (have_item73) (have_item74) (have_item75) (have_item76) (have_item77) (have_item78) (have_item79) (have_item80) (have_item81) (have_item82) (have_item83) (have_item84) (have_item85) (have_item86) (have_item87) (have_item88) (have_item89) (have_item90) (have_item91) (have_item92) (have_item93) (have_item94) (have_item95) (have_item96) (have_item97) (have_item98) (have_item99) (have_item100) (have_item101) (have_item102) (have_item103) (have_item104) (have_item105) (have_item106) (have_item107) (have_item108) (have_item109) (have_item110) (have_item111) (have_item112) (have_item113) (have_item114) (have_item115) (have_item116) (have_item117) (have_item118) (have_item119) (have_item120) (have_item121) (have_item122) (have_item123) (have_item124) (have_item125) (have_item126) (have_item127))
 :effect (and (not (at_x1)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)) (not (have_item64)) (not (have_item65)) (not (have_item66)) (not (have_item67)) (not (have_item68)) (not (have_item69)) (not (have_item70)) (not (have_item71)) (not (have_item72)) (not (have_item73)) (not (have_item74)) (not (have_item75)) (not (have_item76)) (not (have_item77)) (not (have_item78)) (not (have_item79)) (not (have_item80)) (not (have_item81)) (not (have_item82)) (not (have_item83)) (not (have_item84)) (not (have_item85)) (not (have_item86)) (not (have_item87)) (not (have_item88)) (not (have_item89)) (not (have_item90)) (not (have_item91)) (not (have_item92)) (not (have_item93)) (not (have_item94)) (not (have_item95)) (not (have_item96)) (not (have_item97)) (not (have_item98)) (not (have_item99)) (not (have_item100)) (not (have_item101)) (not (have_item102)) (not (have_item103)) (not (have_item104)) (not (have_item105)) (not (have_item106)) (not (have_item107)) (not (have_item108)) (not (have_item109)) (not (have_item110)) (not (have_item111)) (not (have_item112)) (not (have_item113)) (not (have_item114)) (not (have_item115)) (not (have_item116)) (not (have_item117)) (not (have_item118)) (not (have_item119)) (not (have_item120)) (not (have_item121)) (not (have_item122)) (not (have_item123)) (not (have_item124)) (not (have_item125)) (not (have_item126)) (not (have_item127)))
)

(:action move_2_3_1_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63) (have_item64) (have_item65) (have_item66) (have_item67) (have_item68) (have_item69) (have_item70) (have_item71) (have_item72) (have_item73) (have_item74) (have_item75) (have_item76) (have_item77) (have_item78) (have_item79) (have_item80) (have_item81) (have_item82) (have_item83) (have_item84) (have_item85) (have_item86) (have_item87) (have_item88) (have_item89) (have_item90) (have_item91) (have_item92) (have_item93) (have_item94) (have_item95) (have_item96) (have_item97) (have_item98) (have_item99) (have_item100) (have_item101) (have_item102) (have_item103) (have_item104) (have_item105) (have_item106) (have_item107) (have_item108) (have_item109) (have_item110) (have_item111) (have_item112) (have_item113) (have_item114) (have_item115) (have_item116) (have_item117) (have_item118) (have_item119) (have_item120) (have_item121) (have_item122) (have_item123) (have_item124) (have_item125) (have_item126) (have_item127))
 :effect (and (not (at_x2)) (at_x1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)) (not (have_item64)) (not (have_item65)) (not (have_item66)) (not (have_item67)) (not (have_item68)) (not (have_item69)) (not (have_item70)) (not (have_item71)) (not (have_item72)) (not (have_item73)) (not (have_item74)) (not (have_item75)) (not (have_item76)) (not (have_item77)) (not (have_item78)) (not (have_item79)) (not (have_item80)) (not (have_item81)) (not (have_item82)) (not (have_item83)) (not (have_item84)) (not (have_item85)) (not (have_item86)) (not (have_item87)) (not (have_item88)) (not (have_item89)) (not (have_item90)) (not (have_item91)) (not (have_item92)) (not (have_item93)) (not (have_item94)) (not (have_item95)) (not (have_item96)) (not (have_item97)) (not (have_item98)) (not (have_item99)) (not (have_item100)) (not (have_item101)) (not (have_item102)) (not (have_item103)) (not (have_item104)) (not (have_item105)) (not (have_item106)) (not (have_item107)) (not (have_item108)) (not (have_item109)) (not (have_item110)) (not (have_item111)) (not (have_item112)) (not (have_item113)) (not (have_item114)) (not (have_item115)) (not (have_item116)) (not (have_item117)) (not (have_item118)) (not (have_item119)) (not (have_item120)) (not (have_item121)) (not (have_item122)) (not (have_item123)) (not (have_item124)) (not (have_item125)) (not (have_item126)) (not (have_item127)))
)

(:action move_2_0_3_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63) (have_item64) (have_item65) (have_item66) (have_item67) (have_item68) (have_item69) (have_item70) (have_item71) (have_item72) (have_item73) (have_item74) (have_item75) (have_item76) (have_item77) (have_item78) (have_item79) (have_item80) (have_item81) (have_item82) (have_item83) (have_item84) (have_item85) (have_item86) (have_item87) (have_item88) (have_item89) (have_item90) (have_item91) (have_item92) (have_item93) (have_item94) (have_item95) (have_item96) (have_item97) (have_item98) (have_item99) (have_item100) (have_item101) (have_item102) (have_item103) (have_item104) (have_item105) (have_item106) (have_item107) (have_item108) (have_item109) (have_item110) (have_item111) (have_item112) (have_item113) (have_item114) (have_item115) (have_item116) (have_item117) (have_item118) (have_item119) (have_item120) (have_item121) (have_item122) (have_item123) (have_item124) (have_item125) (have_item126) (have_item127))
 :effect (and (not (at_x2)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)) (not (have_item64)) (not (have_item65)) (not (have_item66)) (not (have_item67)) (not (have_item68)) (not (have_item69)) (not (have_item70)) (not (have_item71)) (not (have_item72)) (not (have_item73)) (not (have_item74)) (not (have_item75)) (not (have_item76)) (not (have_item77)) (not (have_item78)) (not (have_item79)) (not (have_item80)) (not (have_item81)) (not (have_item82)) (not (have_item83)) (not (have_item84)) (not (have_item85)) (not (have_item86)) (not (have_item87)) (not (have_item88)) (not (have_item89)) (not (have_item90)) (not (have_item91)) (not (have_item92)) (not (have_item93)) (not (have_item94)) (not (have_item95)) (not (have_item96)) (not (have_item97)) (not (have_item98)) (not (have_item99)) (not (have_item100)) (not (have_item101)) (not (have_item102)) (not (have_item103)) (not (have_item104)) (not (have_item105)) (not (have_item106)) (not (have_item107)) (not (have_item108)) (not (have_item109)) (not (have_item110)) (not (have_item111)) (not (have_item112)) (not (have_item113)) (not (have_item114)) (not (have_item115)) (not (have_item116)) (not (have_item117)) (not (have_item118)) (not (have_item119)) (not (have_item120)) (not (have_item121)) (not (have_item122)) (not (have_item123)) (not (have_item124)) (not (have_item125)) (not (have_item126)) (not (have_item127)))
)

(:action move_3_0_2_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63) (have_item64) (have_item65) (have_item66) (have_item67) (have_item68) (have_item69) (have_item70) (have_item71) (have_item72) (have_item73) (have_item74) (have_item75) (have_item76) (have_item77) (have_item78) (have_item79) (have_item80) (have_item81) (have_item82) (have_item83) (have_item84) (have_item85) (have_item86) (have_item87) (have_item88) (have_item89) (have_item90) (have_item91) (have_item92) (have_item93) (have_item94) (have_item95) (have_item96) (have_item97) (have_item98) (have_item99) (have_item100) (have_item101) (have_item102) (have_item103) (have_item104) (have_item105) (have_item106) (have_item107) (have_item108) (have_item109) (have_item110) (have_item111) (have_item112) (have_item113) (have_item114) (have_item115) (have_item116) (have_item117) (have_item118) (have_item119) (have_item120) (have_item121) (have_item122) (have_item123) (have_item124) (have_item125) (have_item126) (have_item127))
 :effect (and (not (at_x3)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)) (not (have_item64)) (not (have_item65)) (not (have_item66)) (not (have_item67)) (not (have_item68)) (not (have_item69)) (not (have_item70)) (not (have_item71)) (not (have_item72)) (not (have_item73)) (not (have_item74)) (not (have_item75)) (not (have_item76)) (not (have_item77)) (not (have_item78)) (not (have_item79)) (not (have_item80)) (not (have_item81)) (not (have_item82)) (not (have_item83)) (not (have_item84)) (not (have_item85)) (not (have_item86)) (not (have_item87)) (not (have_item88)) (not (have_item89)) (not (have_item90)) (not (have_item91)) (not (have_item92)) (not (have_item93)) (not (have_item94)) (not (have_item95)) (not (have_item96)) (not (have_item97)) (not (have_item98)) (not (have_item99)) (not (have_item100)) (not (have_item101)) (not (have_item102)) (not (have_item103)) (not (have_item104)) (not (have_item105)) (not (have_item106)) (not (have_item107)) (not (have_item108)) (not (have_item109)) (not (have_item110)) (not (have_item111)) (not (have_item112)) (not (have_item113)) (not (have_item114)) (not (have_item115)) (not (have_item116)) (not (have_item117)) (not (have_item118)) (not (have_item119)) (not (have_item120)) (not (have_item121)) (not (have_item122)) (not (have_item123)) (not (have_item124)) (not (have_item125)) (not (have_item126)) (not (have_item127)))
)

(:action move_2_0_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63) (have_item64) (have_item65) (have_item66) (have_item67) (have_item68) (have_item69) (have_item70) (have_item71) (have_item72) (have_item73) (have_item74) (have_item75) (have_item76) (have_item77) (have_item78) (have_item79) (have_item80) (have_item81) (have_item82) (have_item83) (have_item84) (have_item85) (have_item86) (have_item87) (have_item88) (have_item89) (have_item90) (have_item91) (have_item92) (have_item93) (have_item94) (have_item95) (have_item96) (have_item97) (have_item98) (have_item99) (have_item100) (have_item101) (have_item102) (have_item103) (have_item104) (have_item105) (have_item106) (have_item107) (have_item108) (have_item109) (have_item110) (have_item111) (have_item112) (have_item113) (have_item114) (have_item115) (have_item116) (have_item117) (have_item118) (have_item119) (have_item120) (have_item121) (have_item122) (have_item123) (have_item124) (have_item125) (have_item126) (have_item127))
 :effect (and (not (at_y0)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)) (not (have_item64)) (not (have_item65)) (not (have_item66)) (not (have_item67)) (not (have_item68)) (not (have_item69)) (not (have_item70)) (not (have_item71)) (not (have_item72)) (not (have_item73)) (not (have_item74)) (not (have_item75)) (not (have_item76)) (not (have_item77)) (not (have_item78)) (not (have_item79)) (not (have_item80)) (not (have_item81)) (not (have_item82)) (not (have_item83)) (not (have_item84)) (not (have_item85)) (not (have_item86)) (not (have_item87)) (not (have_item88)) (not (have_item89)) (not (have_item90)) (not (have_item91)) (not (have_item92)) (not (have_item93)) (not (have_item94)) (not (have_item95)) (not (have_item96)) (not (have_item97)) (not (have_item98)) (not (have_item99)) (not (have_item100)) (not (have_item101)) (not (have_item102)) (not (have_item103)) (not (have_item104)) (not (have_item105)) (not (have_item106)) (not (have_item107)) (not (have_item108)) (not (have_item109)) (not (have_item110)) (not (have_item111)) (not (have_item112)) (not (have_item113)) (not (have_item114)) (not (have_item115)) (not (have_item116)) (not (have_item117)) (not (have_item118)) (not (have_item119)) (not (have_item120)) (not (have_item121)) (not (have_item122)) (not (have_item123)) (not (have_item124)) (not (have_item125)) (not (have_item126)) (not (have_item127)))
)

(:action move_2_1_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63) (have_item64) (have_item65) (have_item66) (have_item67) (have_item68) (have_item69) (have_item70) (have_item71) (have_item72) (have_item73) (have_item74) (have_item75) (have_item76) (have_item77) (have_item78) (have_item79) (have_item80) (have_item81) (have_item82) (have_item83) (have_item84) (have_item85) (have_item86) (have_item87) (have_item88) (have_item89) (have_item90) (have_item91) (have_item92) (have_item93) (have_item94) (have_item95) (have_item96) (have_item97) (have_item98) (have_item99) (have_item100) (have_item101) (have_item102) (have_item103) (have_item104) (have_item105) (have_item106) (have_item107) (have_item108) (have_item109) (have_item110) (have_item111) (have_item112) (have_item113) (have_item114) (have_item115) (have_item116) (have_item117) (have_item118) (have_item119) (have_item120) (have_item121) (have_item122) (have_item123) (have_item124) (have_item125) (have_item126) (have_item127))
 :effect (and (not (at_y1)) (at_y0))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)) (not (have_item64)) (not (have_item65)) (not (have_item66)) (not (have_item67)) (not (have_item68)) (not (have_item69)) (not (have_item70)) (not (have_item71)) (not (have_item72)) (not (have_item73)) (not (have_item74)) (not (have_item75)) (not (have_item76)) (not (have_item77)) (not (have_item78)) (not (have_item79)) (not (have_item80)) (not (have_item81)) (not (have_item82)) (not (have_item83)) (not (have_item84)) (not (have_item85)) (not (have_item86)) (not (have_item87)) (not (have_item88)) (not (have_item89)) (not (have_item90)) (not (have_item91)) (not (have_item92)) (not (have_item93)) (not (have_item94)) (not (have_item95)) (not (have_item96)) (not (have_item97)) (not (have_item98)) (not (have_item99)) (not (have_item100)) (not (have_item101)) (not (have_item102)) (not (have_item103)) (not (have_item104)) (not (have_item105)) (not (have_item106)) (not (have_item107)) (not (have_item108)) (not (have_item109)) (not (have_item110)) (not (have_item111)) (not (have_item112)) (not (have_item113)) (not (have_item114)) (not (have_item115)) (not (have_item116)) (not (have_item117)) (not (have_item118)) (not (have_item119)) (not (have_item120)) (not (have_item121)) (not (have_item122)) (not (have_item123)) (not (have_item124)) (not (have_item125)) (not (have_item126)) (not (have_item127)))
)

(:action move_2_1_3_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63) (have_item64) (have_item65) (have_item66) (have_item67) (have_item68) (have_item69) (have_item70) (have_item71) (have_item72) (have_item73) (have_item74) (have_item75) (have_item76) (have_item77) (have_item78) (have_item79) (have_item80) (have_item81) (have_item82) (have_item83) (have_item84) (have_item85) (have_item86) (have_item87) (have_item88) (have_item89) (have_item90) (have_item91) (have_item92) (have_item93) (have_item94) (have_item95) (have_item96) (have_item97) (have_item98) (have_item99) (have_item100) (have_item101) (have_item102) (have_item103) (have_item104) (have_item105) (have_item106) (have_item107) (have_item108) (have_item109) (have_item110) (have_item111) (have_item112) (have_item113) (have_item114) (have_item115) (have_item116) (have_item117) (have_item118) (have_item119) (have_item120) (have_item121) (have_item122) (have_item123) (have_item124) (have_item125) (have_item126) (have_item127))
 :effect (and (not (at_x2)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)) (not (have_item64)) (not (have_item65)) (not (have_item66)) (not (have_item67)) (not (have_item68)) (not (have_item69)) (not (have_item70)) (not (have_item71)) (not (have_item72)) (not (have_item73)) (not (have_item74)) (not (have_item75)) (not (have_item76)) (not (have_item77)) (not (have_item78)) (not (have_item79)) (not (have_item80)) (not (have_item81)) (not (have_item82)) (not (have_item83)) (not (have_item84)) (not (have_item85)) (not (have_item86)) (not (have_item87)) (not (have_item88)) (not (have_item89)) (not (have_item90)) (not (have_item91)) (not (have_item92)) (not (have_item93)) (not (have_item94)) (not (have_item95)) (not (have_item96)) (not (have_item97)) (not (have_item98)) (not (have_item99)) (not (have_item100)) (not (have_item101)) (not (have_item102)) (not (have_item103)) (not (have_item104)) (not (have_item105)) (not (have_item106)) (not (have_item107)) (not (have_item108)) (not (have_item109)) (not (have_item110)) (not (have_item111)) (not (have_item112)) (not (have_item113)) (not (have_item114)) (not (have_item115)) (not (have_item116)) (not (have_item117)) (not (have_item118)) (not (have_item119)) (not (have_item120)) (not (have_item121)) (not (have_item122)) (not (have_item123)) (not (have_item124)) (not (have_item125)) (not (have_item126)) (not (have_item127)))
)

(:action move_3_1_2_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63) (have_item64) (have_item65) (have_item66) (have_item67) (have_item68) (have_item69) (have_item70) (have_item71) (have_item72) (have_item73) (have_item74) (have_item75) (have_item76) (have_item77) (have_item78) (have_item79) (have_item80) (have_item81) (have_item82) (have_item83) (have_item84) (have_item85) (have_item86) (have_item87) (have_item88) (have_item89) (have_item90) (have_item91) (have_item92) (have_item93) (have_item94) (have_item95) (have_item96) (have_item97) (have_item98) (have_item99) (have_item100) (have_item101) (have_item102) (have_item103) (have_item104) (have_item105) (have_item106) (have_item107) (have_item108) (have_item109) (have_item110) (have_item111) (have_item112) (have_item113) (have_item114) (have_item115) (have_item116) (have_item117) (have_item118) (have_item119) (have_item120) (have_item121) (have_item122) (have_item123) (have_item124) (have_item125) (have_item126) (have_item127))
 :effect (and (not (at_x3)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)) (not (have_item64)) (not (have_item65)) (not (have_item66)) (not (have_item67)) (not (have_item68)) (not (have_item69)) (not (have_item70)) (not (have_item71)) (not (have_item72)) (not (have_item73)) (not (have_item74)) (not (have_item75)) (not (have_item76)) (not (have_item77)) (not (have_item78)) (not (have_item79)) (not (have_item80)) (not (have_item81)) (not (have_item82)) (not (have_item83)) (not (have_item84)) (not (have_item85)) (not (have_item86)) (not (have_item87)) (not (have_item88)) (not (have_item89)) (not (have_item90)) (not (have_item91)) (not (have_item92)) (not (have_item93)) (not (have_item94)) (not (have_item95)) (not (have_item96)) (not (have_item97)) (not (have_item98)) (not (have_item99)) (not (have_item100)) (not (have_item101)) (not (have_item102)) (not (have_item103)) (not (have_item104)) (not (have_item105)) (not (have_item106)) (not (have_item107)) (not (have_item108)) (not (have_item109)) (not (have_item110)) (not (have_item111)) (not (have_item112)) (not (have_item113)) (not (have_item114)) (not (have_item115)) (not (have_item116)) (not (have_item117)) (not (have_item118)) (not (have_item119)) (not (have_item120)) (not (have_item121)) (not (have_item122)) (not (have_item123)) (not (have_item124)) (not (have_item125)) (not (have_item126)) (not (have_item127)))
)

(:action move_2_1_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63) (have_item64) (have_item65) (have_item66) (have_item67) (have_item68) (have_item69) (have_item70) (have_item71) (have_item72) (have_item73) (have_item74) (have_item75) (have_item76) (have_item77) (have_item78) (have_item79) (have_item80) (have_item81) (have_item82) (have_item83) (have_item84) (have_item85) (have_item86) (have_item87) (have_item88) (have_item89) (have_item90) (have_item91) (have_item92) (have_item93) (have_item94) (have_item95) (have_item96) (have_item97) (have_item98) (have_item99) (have_item100) (have_item101) (have_item102) (have_item103) (have_item104) (have_item105) (have_item106) (have_item107) (have_item108) (have_item109) (have_item110) (have_item111) (have_item112) (have_item113) (have_item114) (have_item115) (have_item116) (have_item117) (have_item118) (have_item119) (have_item120) (have_item121) (have_item122) (have_item123) (have_item124) (have_item125) (have_item126) (have_item127))
 :effect (and (not (at_y1)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)) (not (have_item64)) (not (have_item65)) (not (have_item66)) (not (have_item67)) (not (have_item68)) (not (have_item69)) (not (have_item70)) (not (have_item71)) (not (have_item72)) (not (have_item73)) (not (have_item74)) (not (have_item75)) (not (have_item76)) (not (have_item77)) (not (have_item78)) (not (have_item79)) (not (have_item80)) (not (have_item81)) (not (have_item82)) (not (have_item83)) (not (have_item84)) (not (have_item85)) (not (have_item86)) (not (have_item87)) (not (have_item88)) (not (have_item89)) (not (have_item90)) (not (have_item91)) (not (have_item92)) (not (have_item93)) (not (have_item94)) (not (have_item95)) (not (have_item96)) (not (have_item97)) (not (have_item98)) (not (have_item99)) (not (have_item100)) (not (have_item101)) (not (have_item102)) (not (have_item103)) (not (have_item104)) (not (have_item105)) (not (have_item106)) (not (have_item107)) (not (have_item108)) (not (have_item109)) (not (have_item110)) (not (have_item111)) (not (have_item112)) (not (have_item113)) (not (have_item114)) (not (have_item115)) (not (have_item116)) (not (have_item117)) (not (have_item118)) (not (have_item119)) (not (have_item120)) (not (have_item121)) (not (have_item122)) (not (have_item123)) (not (have_item124)) (not (have_item125)) (not (have_item126)) (not (have_item127)))
)

(:action move_2_2_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63) (have_item64) (have_item65) (have_item66) (have_item67) (have_item68) (have_item69) (have_item70) (have_item71) (have_item72) (have_item73) (have_item74) (have_item75) (have_item76) (have_item77) (have_item78) (have_item79) (have_item80) (have_item81) (have_item82) (have_item83) (have_item84) (have_item85) (have_item86) (have_item87) (have_item88) (have_item89) (have_item90) (have_item91) (have_item92) (have_item93) (have_item94) (have_item95) (have_item96) (have_item97) (have_item98) (have_item99) (have_item100) (have_item101) (have_item102) (have_item103) (have_item104) (have_item105) (have_item106) (have_item107) (have_item108) (have_item109) (have_item110) (have_item111) (have_item112) (have_item113) (have_item114) (have_item115) (have_item116) (have_item117) (have_item118) (have_item119) (have_item120) (have_item121) (have_item122) (have_item123) (have_item124) (have_item125) (have_item126) (have_item127))
 :effect (and (not (at_y2)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)) (not (have_item64)) (not (have_item65)) (not (have_item66)) (not (have_item67)) (not (have_item68)) (not (have_item69)) (not (have_item70)) (not (have_item71)) (not (have_item72)) (not (have_item73)) (not (have_item74)) (not (have_item75)) (not (have_item76)) (not (have_item77)) (not (have_item78)) (not (have_item79)) (not (have_item80)) (not (have_item81)) (not (have_item82)) (not (have_item83)) (not (have_item84)) (not (have_item85)) (not (have_item86)) (not (have_item87)) (not (have_item88)) (not (have_item89)) (not (have_item90)) (not (have_item91)) (not (have_item92)) (not (have_item93)) (not (have_item94)) (not (have_item95)) (not (have_item96)) (not (have_item97)) (not (have_item98)) (not (have_item99)) (not (have_item100)) (not (have_item101)) (not (have_item102)) (not (have_item103)) (not (have_item104)) (not (have_item105)) (not (have_item106)) (not (have_item107)) (not (have_item108)) (not (have_item109)) (not (have_item110)) (not (have_item111)) (not (have_item112)) (not (have_item113)) (not (have_item114)) (not (have_item115)) (not (have_item116)) (not (have_item117)) (not (have_item118)) (not (have_item119)) (not (have_item120)) (not (have_item121)) (not (have_item122)) (not (have_item123)) (not (have_item124)) (not (have_item125)) (not (have_item126)) (not (have_item127)))
)

(:action move_2_2_3_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63) (have_item64) (have_item65) (have_item66) (have_item67) (have_item68) (have_item69) (have_item70) (have_item71) (have_item72) (have_item73) (have_item74) (have_item75) (have_item76) (have_item77) (have_item78) (have_item79) (have_item80) (have_item81) (have_item82) (have_item83) (have_item84) (have_item85) (have_item86) (have_item87) (have_item88) (have_item89) (have_item90) (have_item91) (have_item92) (have_item93) (have_item94) (have_item95) (have_item96) (have_item97) (have_item98) (have_item99) (have_item100) (have_item101) (have_item102) (have_item103) (have_item104) (have_item105) (have_item106) (have_item107) (have_item108) (have_item109) (have_item110) (have_item111) (have_item112) (have_item113) (have_item114) (have_item115) (have_item116) (have_item117) (have_item118) (have_item119) (have_item120) (have_item121) (have_item122) (have_item123) (have_item124) (have_item125) (have_item126) (have_item127))
 :effect (and (not (at_x2)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)) (not (have_item64)) (not (have_item65)) (not (have_item66)) (not (have_item67)) (not (have_item68)) (not (have_item69)) (not (have_item70)) (not (have_item71)) (not (have_item72)) (not (have_item73)) (not (have_item74)) (not (have_item75)) (not (have_item76)) (not (have_item77)) (not (have_item78)) (not (have_item79)) (not (have_item80)) (not (have_item81)) (not (have_item82)) (not (have_item83)) (not (have_item84)) (not (have_item85)) (not (have_item86)) (not (have_item87)) (not (have_item88)) (not (have_item89)) (not (have_item90)) (not (have_item91)) (not (have_item92)) (not (have_item93)) (not (have_item94)) (not (have_item95)) (not (have_item96)) (not (have_item97)) (not (have_item98)) (not (have_item99)) (not (have_item100)) (not (have_item101)) (not (have_item102)) (not (have_item103)) (not (have_item104)) (not (have_item105)) (not (have_item106)) (not (have_item107)) (not (have_item108)) (not (have_item109)) (not (have_item110)) (not (have_item111)) (not (have_item112)) (not (have_item113)) (not (have_item114)) (not (have_item115)) (not (have_item116)) (not (have_item117)) (not (have_item118)) (not (have_item119)) (not (have_item120)) (not (have_item121)) (not (have_item122)) (not (have_item123)) (not (have_item124)) (not (have_item125)) (not (have_item126)) (not (have_item127)))
)

(:action move_3_2_2_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63) (have_item64) (have_item65) (have_item66) (have_item67) (have_item68) (have_item69) (have_item70) (have_item71) (have_item72) (have_item73) (have_item74) (have_item75) (have_item76) (have_item77) (have_item78) (have_item79) (have_item80) (have_item81) (have_item82) (have_item83) (have_item84) (have_item85) (have_item86) (have_item87) (have_item88) (have_item89) (have_item90) (have_item91) (have_item92) (have_item93) (have_item94) (have_item95) (have_item96) (have_item97) (have_item98) (have_item99) (have_item100) (have_item101) (have_item102) (have_item103) (have_item104) (have_item105) (have_item106) (have_item107) (have_item108) (have_item109) (have_item110) (have_item111) (have_item112) (have_item113) (have_item114) (have_item115) (have_item116) (have_item117) (have_item118) (have_item119) (have_item120) (have_item121) (have_item122) (have_item123) (have_item124) (have_item125) (have_item126) (have_item127))
 :effect (and (not (at_x3)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)) (not (have_item64)) (not (have_item65)) (not (have_item66)) (not (have_item67)) (not (have_item68)) (not (have_item69)) (not (have_item70)) (not (have_item71)) (not (have_item72)) (not (have_item73)) (not (have_item74)) (not (have_item75)) (not (have_item76)) (not (have_item77)) (not (have_item78)) (not (have_item79)) (not (have_item80)) (not (have_item81)) (not (have_item82)) (not (have_item83)) (not (have_item84)) (not (have_item85)) (not (have_item86)) (not (have_item87)) (not (have_item88)) (not (have_item89)) (not (have_item90)) (not (have_item91)) (not (have_item92)) (not (have_item93)) (not (have_item94)) (not (have_item95)) (not (have_item96)) (not (have_item97)) (not (have_item98)) (not (have_item99)) (not (have_item100)) (not (have_item101)) (not (have_item102)) (not (have_item103)) (not (have_item104)) (not (have_item105)) (not (have_item106)) (not (have_item107)) (not (have_item108)) (not (have_item109)) (not (have_item110)) (not (have_item111)) (not (have_item112)) (not (have_item113)) (not (have_item114)) (not (have_item115)) (not (have_item116)) (not (have_item117)) (not (have_item118)) (not (have_item119)) (not (have_item120)) (not (have_item121)) (not (have_item122)) (not (have_item123)) (not (have_item124)) (not (have_item125)) (not (have_item126)) (not (have_item127)))
)

(:action move_2_2_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63) (have_item64) (have_item65) (have_item66) (have_item67) (have_item68) (have_item69) (have_item70) (have_item71) (have_item72) (have_item73) (have_item74) (have_item75) (have_item76) (have_item77) (have_item78) (have_item79) (have_item80) (have_item81) (have_item82) (have_item83) (have_item84) (have_item85) (have_item86) (have_item87) (have_item88) (have_item89) (have_item90) (have_item91) (have_item92) (have_item93) (have_item94) (have_item95) (have_item96) (have_item97) (have_item98) (have_item99) (have_item100) (have_item101) (have_item102) (have_item103) (have_item104) (have_item105) (have_item106) (have_item107) (have_item108) (have_item109) (have_item110) (have_item111) (have_item112) (have_item113) (have_item114) (have_item115) (have_item116) (have_item117) (have_item118) (have_item119) (have_item120) (have_item121) (have_item122) (have_item123) (have_item124) (have_item125) (have_item126) (have_item127))
 :effect (and (not (at_y2)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)) (not (have_item64)) (not (have_item65)) (not (have_item66)) (not (have_item67)) (not (have_item68)) (not (have_item69)) (not (have_item70)) (not (have_item71)) (not (have_item72)) (not (have_item73)) (not (have_item74)) (not (have_item75)) (not (have_item76)) (not (have_item77)) (not (have_item78)) (not (have_item79)) (not (have_item80)) (not (have_item81)) (not (have_item82)) (not (have_item83)) (not (have_item84)) (not (have_item85)) (not (have_item86)) (not (have_item87)) (not (have_item88)) (not (have_item89)) (not (have_item90)) (not (have_item91)) (not (have_item92)) (not (have_item93)) (not (have_item94)) (not (have_item95)) (not (have_item96)) (not (have_item97)) (not (have_item98)) (not (have_item99)) (not (have_item100)) (not (have_item101)) (not (have_item102)) (not (have_item103)) (not (have_item104)) (not (have_item105)) (not (have_item106)) (not (have_item107)) (not (have_item108)) (not (have_item109)) (not (have_item110)) (not (have_item111)) (not (have_item112)) (not (have_item113)) (not (have_item114)) (not (have_item115)) (not (have_item116)) (not (have_item117)) (not (have_item118)) (not (have_item119)) (not (have_item120)) (not (have_item121)) (not (have_item122)) (not (have_item123)) (not (have_item124)) (not (have_item125)) (not (have_item126)) (not (have_item127)))
)

(:action move_2_3_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63) (have_item64) (have_item65) (have_item66) (have_item67) (have_item68) (have_item69) (have_item70) (have_item71) (have_item72) (have_item73) (have_item74) (have_item75) (have_item76) (have_item77) (have_item78) (have_item79) (have_item80) (have_item81) (have_item82) (have_item83) (have_item84) (have_item85) (have_item86) (have_item87) (have_item88) (have_item89) (have_item90) (have_item91) (have_item92) (have_item93) (have_item94) (have_item95) (have_item96) (have_item97) (have_item98) (have_item99) (have_item100) (have_item101) (have_item102) (have_item103) (have_item104) (have_item105) (have_item106) (have_item107) (have_item108) (have_item109) (have_item110) (have_item111) (have_item112) (have_item113) (have_item114) (have_item115) (have_item116) (have_item117) (have_item118) (have_item119) (have_item120) (have_item121) (have_item122) (have_item123) (have_item124) (have_item125) (have_item126) (have_item127))
 :effect (and (not (at_y3)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)) (not (have_item64)) (not (have_item65)) (not (have_item66)) (not (have_item67)) (not (have_item68)) (not (have_item69)) (not (have_item70)) (not (have_item71)) (not (have_item72)) (not (have_item73)) (not (have_item74)) (not (have_item75)) (not (have_item76)) (not (have_item77)) (not (have_item78)) (not (have_item79)) (not (have_item80)) (not (have_item81)) (not (have_item82)) (not (have_item83)) (not (have_item84)) (not (have_item85)) (not (have_item86)) (not (have_item87)) (not (have_item88)) (not (have_item89)) (not (have_item90)) (not (have_item91)) (not (have_item92)) (not (have_item93)) (not (have_item94)) (not (have_item95)) (not (have_item96)) (not (have_item97)) (not (have_item98)) (not (have_item99)) (not (have_item100)) (not (have_item101)) (not (have_item102)) (not (have_item103)) (not (have_item104)) (not (have_item105)) (not (have_item106)) (not (have_item107)) (not (have_item108)) (not (have_item109)) (not (have_item110)) (not (have_item111)) (not (have_item112)) (not (have_item113)) (not (have_item114)) (not (have_item115)) (not (have_item116)) (not (have_item117)) (not (have_item118)) (not (have_item119)) (not (have_item120)) (not (have_item121)) (not (have_item122)) (not (have_item123)) (not (have_item124)) (not (have_item125)) (not (have_item126)) (not (have_item127)))
)

(:action move_2_3_3_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63) (have_item64) (have_item65) (have_item66) (have_item67) (have_item68) (have_item69) (have_item70) (have_item71) (have_item72) (have_item73) (have_item74) (have_item75) (have_item76) (have_item77) (have_item78) (have_item79) (have_item80) (have_item81) (have_item82) (have_item83) (have_item84) (have_item85) (have_item86) (have_item87) (have_item88) (have_item89) (have_item90) (have_item91) (have_item92) (have_item93) (have_item94) (have_item95) (have_item96) (have_item97) (have_item98) (have_item99) (have_item100) (have_item101) (have_item102) (have_item103) (have_item104) (have_item105) (have_item106) (have_item107) (have_item108) (have_item109) (have_item110) (have_item111) (have_item112) (have_item113) (have_item114) (have_item115) (have_item116) (have_item117) (have_item118) (have_item119) (have_item120) (have_item121) (have_item122) (have_item123) (have_item124) (have_item125) (have_item126) (have_item127))
 :effect (and (not (at_x2)) (at_x3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)) (not (have_item64)) (not (have_item65)) (not (have_item66)) (not (have_item67)) (not (have_item68)) (not (have_item69)) (not (have_item70)) (not (have_item71)) (not (have_item72)) (not (have_item73)) (not (have_item74)) (not (have_item75)) (not (have_item76)) (not (have_item77)) (not (have_item78)) (not (have_item79)) (not (have_item80)) (not (have_item81)) (not (have_item82)) (not (have_item83)) (not (have_item84)) (not (have_item85)) (not (have_item86)) (not (have_item87)) (not (have_item88)) (not (have_item89)) (not (have_item90)) (not (have_item91)) (not (have_item92)) (not (have_item93)) (not (have_item94)) (not (have_item95)) (not (have_item96)) (not (have_item97)) (not (have_item98)) (not (have_item99)) (not (have_item100)) (not (have_item101)) (not (have_item102)) (not (have_item103)) (not (have_item104)) (not (have_item105)) (not (have_item106)) (not (have_item107)) (not (have_item108)) (not (have_item109)) (not (have_item110)) (not (have_item111)) (not (have_item112)) (not (have_item113)) (not (have_item114)) (not (have_item115)) (not (have_item116)) (not (have_item117)) (not (have_item118)) (not (have_item119)) (not (have_item120)) (not (have_item121)) (not (have_item122)) (not (have_item123)) (not (have_item124)) (not (have_item125)) (not (have_item126)) (not (have_item127)))
)

(:action move_3_3_2_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63) (have_item64) (have_item65) (have_item66) (have_item67) (have_item68) (have_item69) (have_item70) (have_item71) (have_item72) (have_item73) (have_item74) (have_item75) (have_item76) (have_item77) (have_item78) (have_item79) (have_item80) (have_item81) (have_item82) (have_item83) (have_item84) (have_item85) (have_item86) (have_item87) (have_item88) (have_item89) (have_item90) (have_item91) (have_item92) (have_item93) (have_item94) (have_item95) (have_item96) (have_item97) (have_item98) (have_item99) (have_item100) (have_item101) (have_item102) (have_item103) (have_item104) (have_item105) (have_item106) (have_item107) (have_item108) (have_item109) (have_item110) (have_item111) (have_item112) (have_item113) (have_item114) (have_item115) (have_item116) (have_item117) (have_item118) (have_item119) (have_item120) (have_item121) (have_item122) (have_item123) (have_item124) (have_item125) (have_item126) (have_item127))
 :effect (and (not (at_x3)) (at_x2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)) (not (have_item64)) (not (have_item65)) (not (have_item66)) (not (have_item67)) (not (have_item68)) (not (have_item69)) (not (have_item70)) (not (have_item71)) (not (have_item72)) (not (have_item73)) (not (have_item74)) (not (have_item75)) (not (have_item76)) (not (have_item77)) (not (have_item78)) (not (have_item79)) (not (have_item80)) (not (have_item81)) (not (have_item82)) (not (have_item83)) (not (have_item84)) (not (have_item85)) (not (have_item86)) (not (have_item87)) (not (have_item88)) (not (have_item89)) (not (have_item90)) (not (have_item91)) (not (have_item92)) (not (have_item93)) (not (have_item94)) (not (have_item95)) (not (have_item96)) (not (have_item97)) (not (have_item98)) (not (have_item99)) (not (have_item100)) (not (have_item101)) (not (have_item102)) (not (have_item103)) (not (have_item104)) (not (have_item105)) (not (have_item106)) (not (have_item107)) (not (have_item108)) (not (have_item109)) (not (have_item110)) (not (have_item111)) (not (have_item112)) (not (have_item113)) (not (have_item114)) (not (have_item115)) (not (have_item116)) (not (have_item117)) (not (have_item118)) (not (have_item119)) (not (have_item120)) (not (have_item121)) (not (have_item122)) (not (have_item123)) (not (have_item124)) (not (have_item125)) (not (have_item126)) (not (have_item127)))
)

(:action move_3_0_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63) (have_item64) (have_item65) (have_item66) (have_item67) (have_item68) (have_item69) (have_item70) (have_item71) (have_item72) (have_item73) (have_item74) (have_item75) (have_item76) (have_item77) (have_item78) (have_item79) (have_item80) (have_item81) (have_item82) (have_item83) (have_item84) (have_item85) (have_item86) (have_item87) (have_item88) (have_item89) (have_item90) (have_item91) (have_item92) (have_item93) (have_item94) (have_item95) (have_item96) (have_item97) (have_item98) (have_item99) (have_item100) (have_item101) (have_item102) (have_item103) (have_item104) (have_item105) (have_item106) (have_item107) (have_item108) (have_item109) (have_item110) (have_item111) (have_item112) (have_item113) (have_item114) (have_item115) (have_item116) (have_item117) (have_item118) (have_item119) (have_item120) (have_item121) (have_item122) (have_item123) (have_item124) (have_item125) (have_item126) (have_item127))
 :effect (and (not (at_y0)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)) (not (have_item64)) (not (have_item65)) (not (have_item66)) (not (have_item67)) (not (have_item68)) (not (have_item69)) (not (have_item70)) (not (have_item71)) (not (have_item72)) (not (have_item73)) (not (have_item74)) (not (have_item75)) (not (have_item76)) (not (have_item77)) (not (have_item78)) (not (have_item79)) (not (have_item80)) (not (have_item81)) (not (have_item82)) (not (have_item83)) (not (have_item84)) (not (have_item85)) (not (have_item86)) (not (have_item87)) (not (have_item88)) (not (have_item89)) (not (have_item90)) (not (have_item91)) (not (have_item92)) (not (have_item93)) (not (have_item94)) (not (have_item95)) (not (have_item96)) (not (have_item97)) (not (have_item98)) (not (have_item99)) (not (have_item100)) (not (have_item101)) (not (have_item102)) (not (have_item103)) (not (have_item104)) (not (have_item105)) (not (have_item106)) (not (have_item107)) (not (have_item108)) (not (have_item109)) (not (have_item110)) (not (have_item111)) (not (have_item112)) (not (have_item113)) (not (have_item114)) (not (have_item115)) (not (have_item116)) (not (have_item117)) (not (have_item118)) (not (have_item119)) (not (have_item120)) (not (have_item121)) (not (have_item122)) (not (have_item123)) (not (have_item124)) (not (have_item125)) (not (have_item126)) (not (have_item127)))
)

(:action move_3_1_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63) (have_item64) (have_item65) (have_item66) (have_item67) (have_item68) (have_item69) (have_item70) (have_item71) (have_item72) (have_item73) (have_item74) (have_item75) (have_item76) (have_item77) (have_item78) (have_item79) (have_item80) (have_item81) (have_item82) (have_item83) (have_item84) (have_item85) (have_item86) (have_item87) (have_item88) (have_item89) (have_item90) (have_item91) (have_item92) (have_item93) (have_item94) (have_item95) (have_item96) (have_item97) (have_item98) (have_item99) (have_item100) (have_item101) (have_item102) (have_item103) (have_item104) (have_item105) (have_item106) (have_item107) (have_item108) (have_item109) (have_item110) (have_item111) (have_item112) (have_item113) (have_item114) (have_item115) (have_item116) (have_item117) (have_item118) (have_item119) (have_item120) (have_item121) (have_item122) (have_item123) (have_item124) (have_item125) (have_item126) (have_item127))
 :effect (and (not (at_y1)) (at_y0))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)) (not (have_item64)) (not (have_item65)) (not (have_item66)) (not (have_item67)) (not (have_item68)) (not (have_item69)) (not (have_item70)) (not (have_item71)) (not (have_item72)) (not (have_item73)) (not (have_item74)) (not (have_item75)) (not (have_item76)) (not (have_item77)) (not (have_item78)) (not (have_item79)) (not (have_item80)) (not (have_item81)) (not (have_item82)) (not (have_item83)) (not (have_item84)) (not (have_item85)) (not (have_item86)) (not (have_item87)) (not (have_item88)) (not (have_item89)) (not (have_item90)) (not (have_item91)) (not (have_item92)) (not (have_item93)) (not (have_item94)) (not (have_item95)) (not (have_item96)) (not (have_item97)) (not (have_item98)) (not (have_item99)) (not (have_item100)) (not (have_item101)) (not (have_item102)) (not (have_item103)) (not (have_item104)) (not (have_item105)) (not (have_item106)) (not (have_item107)) (not (have_item108)) (not (have_item109)) (not (have_item110)) (not (have_item111)) (not (have_item112)) (not (have_item113)) (not (have_item114)) (not (have_item115)) (not (have_item116)) (not (have_item117)) (not (have_item118)) (not (have_item119)) (not (have_item120)) (not (have_item121)) (not (have_item122)) (not (have_item123)) (not (have_item124)) (not (have_item125)) (not (have_item126)) (not (have_item127)))
)

(:action move_3_1_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63) (have_item64) (have_item65) (have_item66) (have_item67) (have_item68) (have_item69) (have_item70) (have_item71) (have_item72) (have_item73) (have_item74) (have_item75) (have_item76) (have_item77) (have_item78) (have_item79) (have_item80) (have_item81) (have_item82) (have_item83) (have_item84) (have_item85) (have_item86) (have_item87) (have_item88) (have_item89) (have_item90) (have_item91) (have_item92) (have_item93) (have_item94) (have_item95) (have_item96) (have_item97) (have_item98) (have_item99) (have_item100) (have_item101) (have_item102) (have_item103) (have_item104) (have_item105) (have_item106) (have_item107) (have_item108) (have_item109) (have_item110) (have_item111) (have_item112) (have_item113) (have_item114) (have_item115) (have_item116) (have_item117) (have_item118) (have_item119) (have_item120) (have_item121) (have_item122) (have_item123) (have_item124) (have_item125) (have_item126) (have_item127))
 :effect (and (not (at_y1)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)) (not (have_item64)) (not (have_item65)) (not (have_item66)) (not (have_item67)) (not (have_item68)) (not (have_item69)) (not (have_item70)) (not (have_item71)) (not (have_item72)) (not (have_item73)) (not (have_item74)) (not (have_item75)) (not (have_item76)) (not (have_item77)) (not (have_item78)) (not (have_item79)) (not (have_item80)) (not (have_item81)) (not (have_item82)) (not (have_item83)) (not (have_item84)) (not (have_item85)) (not (have_item86)) (not (have_item87)) (not (have_item88)) (not (have_item89)) (not (have_item90)) (not (have_item91)) (not (have_item92)) (not (have_item93)) (not (have_item94)) (not (have_item95)) (not (have_item96)) (not (have_item97)) (not (have_item98)) (not (have_item99)) (not (have_item100)) (not (have_item101)) (not (have_item102)) (not (have_item103)) (not (have_item104)) (not (have_item105)) (not (have_item106)) (not (have_item107)) (not (have_item108)) (not (have_item109)) (not (have_item110)) (not (have_item111)) (not (have_item112)) (not (have_item113)) (not (have_item114)) (not (have_item115)) (not (have_item116)) (not (have_item117)) (not (have_item118)) (not (have_item119)) (not (have_item120)) (not (have_item121)) (not (have_item122)) (not (have_item123)) (not (have_item124)) (not (have_item125)) (not (have_item126)) (not (have_item127)))
)

(:action move_3_2_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63) (have_item64) (have_item65) (have_item66) (have_item67) (have_item68) (have_item69) (have_item70) (have_item71) (have_item72) (have_item73) (have_item74) (have_item75) (have_item76) (have_item77) (have_item78) (have_item79) (have_item80) (have_item81) (have_item82) (have_item83) (have_item84) (have_item85) (have_item86) (have_item87) (have_item88) (have_item89) (have_item90) (have_item91) (have_item92) (have_item93) (have_item94) (have_item95) (have_item96) (have_item97) (have_item98) (have_item99) (have_item100) (have_item101) (have_item102) (have_item103) (have_item104) (have_item105) (have_item106) (have_item107) (have_item108) (have_item109) (have_item110) (have_item111) (have_item112) (have_item113) (have_item114) (have_item115) (have_item116) (have_item117) (have_item118) (have_item119) (have_item120) (have_item121) (have_item122) (have_item123) (have_item124) (have_item125) (have_item126) (have_item127))
 :effect (and (not (at_y2)) (at_y1))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)) (not (have_item64)) (not (have_item65)) (not (have_item66)) (not (have_item67)) (not (have_item68)) (not (have_item69)) (not (have_item70)) (not (have_item71)) (not (have_item72)) (not (have_item73)) (not (have_item74)) (not (have_item75)) (not (have_item76)) (not (have_item77)) (not (have_item78)) (not (have_item79)) (not (have_item80)) (not (have_item81)) (not (have_item82)) (not (have_item83)) (not (have_item84)) (not (have_item85)) (not (have_item86)) (not (have_item87)) (not (have_item88)) (not (have_item89)) (not (have_item90)) (not (have_item91)) (not (have_item92)) (not (have_item93)) (not (have_item94)) (not (have_item95)) (not (have_item96)) (not (have_item97)) (not (have_item98)) (not (have_item99)) (not (have_item100)) (not (have_item101)) (not (have_item102)) (not (have_item103)) (not (have_item104)) (not (have_item105)) (not (have_item106)) (not (have_item107)) (not (have_item108)) (not (have_item109)) (not (have_item110)) (not (have_item111)) (not (have_item112)) (not (have_item113)) (not (have_item114)) (not (have_item115)) (not (have_item116)) (not (have_item117)) (not (have_item118)) (not (have_item119)) (not (have_item120)) (not (have_item121)) (not (have_item122)) (not (have_item123)) (not (have_item124)) (not (have_item125)) (not (have_item126)) (not (have_item127)))
)

(:action move_3_2_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63) (have_item64) (have_item65) (have_item66) (have_item67) (have_item68) (have_item69) (have_item70) (have_item71) (have_item72) (have_item73) (have_item74) (have_item75) (have_item76) (have_item77) (have_item78) (have_item79) (have_item80) (have_item81) (have_item82) (have_item83) (have_item84) (have_item85) (have_item86) (have_item87) (have_item88) (have_item89) (have_item90) (have_item91) (have_item92) (have_item93) (have_item94) (have_item95) (have_item96) (have_item97) (have_item98) (have_item99) (have_item100) (have_item101) (have_item102) (have_item103) (have_item104) (have_item105) (have_item106) (have_item107) (have_item108) (have_item109) (have_item110) (have_item111) (have_item112) (have_item113) (have_item114) (have_item115) (have_item116) (have_item117) (have_item118) (have_item119) (have_item120) (have_item121) (have_item122) (have_item123) (have_item124) (have_item125) (have_item126) (have_item127))
 :effect (and (not (at_y2)) (at_y3))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)) (not (have_item64)) (not (have_item65)) (not (have_item66)) (not (have_item67)) (not (have_item68)) (not (have_item69)) (not (have_item70)) (not (have_item71)) (not (have_item72)) (not (have_item73)) (not (have_item74)) (not (have_item75)) (not (have_item76)) (not (have_item77)) (not (have_item78)) (not (have_item79)) (not (have_item80)) (not (have_item81)) (not (have_item82)) (not (have_item83)) (not (have_item84)) (not (have_item85)) (not (have_item86)) (not (have_item87)) (not (have_item88)) (not (have_item89)) (not (have_item90)) (not (have_item91)) (not (have_item92)) (not (have_item93)) (not (have_item94)) (not (have_item95)) (not (have_item96)) (not (have_item97)) (not (have_item98)) (not (have_item99)) (not (have_item100)) (not (have_item101)) (not (have_item102)) (not (have_item103)) (not (have_item104)) (not (have_item105)) (not (have_item106)) (not (have_item107)) (not (have_item108)) (not (have_item109)) (not (have_item110)) (not (have_item111)) (not (have_item112)) (not (have_item113)) (not (have_item114)) (not (have_item115)) (not (have_item116)) (not (have_item117)) (not (have_item118)) (not (have_item119)) (not (have_item120)) (not (have_item121)) (not (have_item122)) (not (have_item123)) (not (have_item124)) (not (have_item125)) (not (have_item126)) (not (have_item127)))
)

(:action move_3_3_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :poss-precondition (and (have_item0) (have_item1) (have_item2) (have_item3) (have_item4) (have_item5) (have_item6) (have_item7) (have_item8) (have_item9) (have_item10) (have_item11) (have_item12) (have_item13) (have_item14) (have_item15) (have_item16) (have_item17) (have_item18) (have_item19) (have_item20) (have_item21) (have_item22) (have_item23) (have_item24) (have_item25) (have_item26) (have_item27) (have_item28) (have_item29) (have_item30) (have_item31) (have_item32) (have_item33) (have_item34) (have_item35) (have_item36) (have_item37) (have_item38) (have_item39) (have_item40) (have_item41) (have_item42) (have_item43) (have_item44) (have_item45) (have_item46) (have_item47) (have_item48) (have_item49) (have_item50) (have_item51) (have_item52) (have_item53) (have_item54) (have_item55) (have_item56) (have_item57) (have_item58) (have_item59) (have_item60) (have_item61) (have_item62) (have_item63) (have_item64) (have_item65) (have_item66) (have_item67) (have_item68) (have_item69) (have_item70) (have_item71) (have_item72) (have_item73) (have_item74) (have_item75) (have_item76) (have_item77) (have_item78) (have_item79) (have_item80) (have_item81) (have_item82) (have_item83) (have_item84) (have_item85) (have_item86) (have_item87) (have_item88) (have_item89) (have_item90) (have_item91) (have_item92) (have_item93) (have_item94) (have_item95) (have_item96) (have_item97) (have_item98) (have_item99) (have_item100) (have_item101) (have_item102) (have_item103) (have_item104) (have_item105) (have_item106) (have_item107) (have_item108) (have_item109) (have_item110) (have_item111) (have_item112) (have_item113) (have_item114) (have_item115) (have_item116) (have_item117) (have_item118) (have_item119) (have_item120) (have_item121) (have_item122) (have_item123) (have_item124) (have_item125) (have_item126) (have_item127))
 :effect (and (not (at_y3)) (at_y2))
 :poss-effect (and (not (have_item0)) (not (have_item1)) (not (have_item2)) (not (have_item3)) (not (have_item4)) (not (have_item5)) (not (have_item6)) (not (have_item7)) (not (have_item8)) (not (have_item9)) (not (have_item10)) (not (have_item11)) (not (have_item12)) (not (have_item13)) (not (have_item14)) (not (have_item15)) (not (have_item16)) (not (have_item17)) (not (have_item18)) (not (have_item19)) (not (have_item20)) (not (have_item21)) (not (have_item22)) (not (have_item23)) (not (have_item24)) (not (have_item25)) (not (have_item26)) (not (have_item27)) (not (have_item28)) (not (have_item29)) (not (have_item30)) (not (have_item31)) (not (have_item32)) (not (have_item33)) (not (have_item34)) (not (have_item35)) (not (have_item36)) (not (have_item37)) (not (have_item38)) (not (have_item39)) (not (have_item40)) (not (have_item41)) (not (have_item42)) (not (have_item43)) (not (have_item44)) (not (have_item45)) (not (have_item46)) (not (have_item47)) (not (have_item48)) (not (have_item49)) (not (have_item50)) (not (have_item51)) (not (have_item52)) (not (have_item53)) (not (have_item54)) (not (have_item55)) (not (have_item56)) (not (have_item57)) (not (have_item58)) (not (have_item59)) (not (have_item60)) (not (have_item61)) (not (have_item62)) (not (have_item63)) (not (have_item64)) (not (have_item65)) (not (have_item66)) (not (have_item67)) (not (have_item68)) (not (have_item69)) (not (have_item70)) (not (have_item71)) (not (have_item72)) (not (have_item73)) (not (have_item74)) (not (have_item75)) (not (have_item76)) (not (have_item77)) (not (have_item78)) (not (have_item79)) (not (have_item80)) (not (have_item81)) (not (have_item82)) (not (have_item83)) (not (have_item84)) (not (have_item85)) (not (have_item86)) (not (have_item87)) (not (have_item88)) (not (have_item89)) (not (have_item90)) (not (have_item91)) (not (have_item92)) (not (have_item93)) (not (have_item94)) (not (have_item95)) (not (have_item96)) (not (have_item97)) (not (have_item98)) (not (have_item99)) (not (have_item100)) (not (have_item101)) (not (have_item102)) (not (have_item103)) (not (have_item104)) (not (have_item105)) (not (have_item106)) (not (have_item107)) (not (have_item108)) (not (have_item109)) (not (have_item110)) (not (have_item111)) (not (have_item112)) (not (have_item113)) (not (have_item114)) (not (have_item115)) (not (have_item116)) (not (have_item117)) (not (have_item118)) (not (have_item119)) (not (have_item120)) (not (have_item121)) (not (have_item122)) (not (have_item123)) (not (have_item124)) (not (have_item125)) (not (have_item126)) (not (have_item127)))
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

(:action gamble_item64_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item64))
)

(:action gamble_item65_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item65))
)

(:action gamble_item66_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item66))
)

(:action gamble_item67_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item67))
)

(:action gamble_item68_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item68))
)

(:action gamble_item69_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item69))
)

(:action gamble_item70_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item70))
)

(:action gamble_item71_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item71))
)

(:action gamble_item72_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item72))
)

(:action gamble_item73_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item73))
)

(:action gamble_item74_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item74))
)

(:action gamble_item75_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item75))
)

(:action gamble_item76_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item76))
)

(:action gamble_item77_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item77))
)

(:action gamble_item78_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item78))
)

(:action gamble_item79_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item79))
)

(:action gamble_item80_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item80))
)

(:action gamble_item81_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item81))
)

(:action gamble_item82_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item82))
)

(:action gamble_item83_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item83))
)

(:action gamble_item84_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item84))
)

(:action gamble_item85_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item85))
)

(:action gamble_item86_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item86))
)

(:action gamble_item87_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item87))
)

(:action gamble_item88_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item88))
)

(:action gamble_item89_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item89))
)

(:action gamble_item90_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item90))
)

(:action gamble_item91_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item91))
)

(:action gamble_item92_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item92))
)

(:action gamble_item93_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item93))
)

(:action gamble_item94_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item94))
)

(:action gamble_item95_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item95))
)

(:action gamble_item96_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item96))
)

(:action gamble_item97_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item97))
)

(:action gamble_item98_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item98))
)

(:action gamble_item99_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item99))
)

(:action gamble_item100_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item100))
)

(:action gamble_item101_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item101))
)

(:action gamble_item102_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item102))
)

(:action gamble_item103_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item103))
)

(:action gamble_item104_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item104))
)

(:action gamble_item105_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item105))
)

(:action gamble_item106_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item106))
)

(:action gamble_item107_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item107))
)

(:action gamble_item108_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item108))
)

(:action gamble_item109_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item109))
)

(:action gamble_item110_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item110))
)

(:action gamble_item111_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item111))
)

(:action gamble_item112_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item112))
)

(:action gamble_item113_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item113))
)

(:action gamble_item114_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item114))
)

(:action gamble_item115_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item115))
)

(:action gamble_item116_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item116))
)

(:action gamble_item117_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item117))
)

(:action gamble_item118_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item118))
)

(:action gamble_item119_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item119))
)

(:action gamble_item120_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item120))
)

(:action gamble_item121_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item121))
)

(:action gamble_item122_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item122))
)

(:action gamble_item123_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item123))
)

(:action gamble_item124_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item124))
)

(:action gamble_item125_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item125))
)

(:action gamble_item126_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item126))
)

(:action gamble_item127_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and )
 :poss-effect (and (have_item127))
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

(:action gamble_item64_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item64))
)

(:action gamble_item65_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item65))
)

(:action gamble_item66_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item66))
)

(:action gamble_item67_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item67))
)

(:action gamble_item68_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item68))
)

(:action gamble_item69_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item69))
)

(:action gamble_item70_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item70))
)

(:action gamble_item71_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item71))
)

(:action gamble_item72_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item72))
)

(:action gamble_item73_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item73))
)

(:action gamble_item74_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item74))
)

(:action gamble_item75_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item75))
)

(:action gamble_item76_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item76))
)

(:action gamble_item77_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item77))
)

(:action gamble_item78_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item78))
)

(:action gamble_item79_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item79))
)

(:action gamble_item80_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item80))
)

(:action gamble_item81_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item81))
)

(:action gamble_item82_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item82))
)

(:action gamble_item83_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item83))
)

(:action gamble_item84_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item84))
)

(:action gamble_item85_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item85))
)

(:action gamble_item86_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item86))
)

(:action gamble_item87_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item87))
)

(:action gamble_item88_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item88))
)

(:action gamble_item89_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item89))
)

(:action gamble_item90_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item90))
)

(:action gamble_item91_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item91))
)

(:action gamble_item92_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item92))
)

(:action gamble_item93_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item93))
)

(:action gamble_item94_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item94))
)

(:action gamble_item95_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item95))
)

(:action gamble_item96_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item96))
)

(:action gamble_item97_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item97))
)

(:action gamble_item98_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item98))
)

(:action gamble_item99_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item99))
)

(:action gamble_item100_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item100))
)

(:action gamble_item101_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item101))
)

(:action gamble_item102_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item102))
)

(:action gamble_item103_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item103))
)

(:action gamble_item104_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item104))
)

(:action gamble_item105_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item105))
)

(:action gamble_item106_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item106))
)

(:action gamble_item107_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item107))
)

(:action gamble_item108_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item108))
)

(:action gamble_item109_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item109))
)

(:action gamble_item110_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item110))
)

(:action gamble_item111_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item111))
)

(:action gamble_item112_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item112))
)

(:action gamble_item113_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item113))
)

(:action gamble_item114_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item114))
)

(:action gamble_item115_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item115))
)

(:action gamble_item116_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item116))
)

(:action gamble_item117_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item117))
)

(:action gamble_item118_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item118))
)

(:action gamble_item119_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item119))
)

(:action gamble_item120_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item120))
)

(:action gamble_item121_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item121))
)

(:action gamble_item122_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item122))
)

(:action gamble_item123_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item123))
)

(:action gamble_item124_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item124))
)

(:action gamble_item125_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item125))
)

(:action gamble_item126_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item126))
)

(:action gamble_item127_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and )
 :poss-effect (and (have_item127))
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

(:action gamble_item64_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item64))
)

(:action gamble_item65_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item65))
)

(:action gamble_item66_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item66))
)

(:action gamble_item67_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item67))
)

(:action gamble_item68_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item68))
)

(:action gamble_item69_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item69))
)

(:action gamble_item70_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item70))
)

(:action gamble_item71_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item71))
)

(:action gamble_item72_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item72))
)

(:action gamble_item73_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item73))
)

(:action gamble_item74_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item74))
)

(:action gamble_item75_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item75))
)

(:action gamble_item76_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item76))
)

(:action gamble_item77_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item77))
)

(:action gamble_item78_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item78))
)

(:action gamble_item79_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item79))
)

(:action gamble_item80_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item80))
)

(:action gamble_item81_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item81))
)

(:action gamble_item82_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item82))
)

(:action gamble_item83_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item83))
)

(:action gamble_item84_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item84))
)

(:action gamble_item85_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item85))
)

(:action gamble_item86_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item86))
)

(:action gamble_item87_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item87))
)

(:action gamble_item88_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item88))
)

(:action gamble_item89_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item89))
)

(:action gamble_item90_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item90))
)

(:action gamble_item91_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item91))
)

(:action gamble_item92_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item92))
)

(:action gamble_item93_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item93))
)

(:action gamble_item94_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item94))
)

(:action gamble_item95_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item95))
)

(:action gamble_item96_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item96))
)

(:action gamble_item97_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item97))
)

(:action gamble_item98_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item98))
)

(:action gamble_item99_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item99))
)

(:action gamble_item100_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item100))
)

(:action gamble_item101_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item101))
)

(:action gamble_item102_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item102))
)

(:action gamble_item103_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item103))
)

(:action gamble_item104_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item104))
)

(:action gamble_item105_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item105))
)

(:action gamble_item106_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item106))
)

(:action gamble_item107_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item107))
)

(:action gamble_item108_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item108))
)

(:action gamble_item109_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item109))
)

(:action gamble_item110_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item110))
)

(:action gamble_item111_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item111))
)

(:action gamble_item112_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item112))
)

(:action gamble_item113_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item113))
)

(:action gamble_item114_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item114))
)

(:action gamble_item115_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item115))
)

(:action gamble_item116_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item116))
)

(:action gamble_item117_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item117))
)

(:action gamble_item118_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item118))
)

(:action gamble_item119_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item119))
)

(:action gamble_item120_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item120))
)

(:action gamble_item121_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item121))
)

(:action gamble_item122_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item122))
)

(:action gamble_item123_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item123))
)

(:action gamble_item124_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item124))
)

(:action gamble_item125_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item125))
)

(:action gamble_item126_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item126))
)

(:action gamble_item127_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and )
 :poss-effect (and (have_item127))
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

(:action gamble_item64_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item64))
)

(:action gamble_item65_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item65))
)

(:action gamble_item66_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item66))
)

(:action gamble_item67_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item67))
)

(:action gamble_item68_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item68))
)

(:action gamble_item69_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item69))
)

(:action gamble_item70_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item70))
)

(:action gamble_item71_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item71))
)

(:action gamble_item72_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item72))
)

(:action gamble_item73_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item73))
)

(:action gamble_item74_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item74))
)

(:action gamble_item75_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item75))
)

(:action gamble_item76_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item76))
)

(:action gamble_item77_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item77))
)

(:action gamble_item78_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item78))
)

(:action gamble_item79_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item79))
)

(:action gamble_item80_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item80))
)

(:action gamble_item81_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item81))
)

(:action gamble_item82_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item82))
)

(:action gamble_item83_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item83))
)

(:action gamble_item84_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item84))
)

(:action gamble_item85_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item85))
)

(:action gamble_item86_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item86))
)

(:action gamble_item87_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item87))
)

(:action gamble_item88_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item88))
)

(:action gamble_item89_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item89))
)

(:action gamble_item90_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item90))
)

(:action gamble_item91_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item91))
)

(:action gamble_item92_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item92))
)

(:action gamble_item93_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item93))
)

(:action gamble_item94_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item94))
)

(:action gamble_item95_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item95))
)

(:action gamble_item96_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item96))
)

(:action gamble_item97_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item97))
)

(:action gamble_item98_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item98))
)

(:action gamble_item99_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item99))
)

(:action gamble_item100_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item100))
)

(:action gamble_item101_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item101))
)

(:action gamble_item102_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item102))
)

(:action gamble_item103_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item103))
)

(:action gamble_item104_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item104))
)

(:action gamble_item105_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item105))
)

(:action gamble_item106_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item106))
)

(:action gamble_item107_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item107))
)

(:action gamble_item108_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item108))
)

(:action gamble_item109_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item109))
)

(:action gamble_item110_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item110))
)

(:action gamble_item111_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item111))
)

(:action gamble_item112_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item112))
)

(:action gamble_item113_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item113))
)

(:action gamble_item114_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item114))
)

(:action gamble_item115_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item115))
)

(:action gamble_item116_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item116))
)

(:action gamble_item117_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item117))
)

(:action gamble_item118_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item118))
)

(:action gamble_item119_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item119))
)

(:action gamble_item120_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item120))
)

(:action gamble_item121_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item121))
)

(:action gamble_item122_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item122))
)

(:action gamble_item123_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item123))
)

(:action gamble_item124_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item124))
)

(:action gamble_item125_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item125))
)

(:action gamble_item126_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item126))
)

(:action gamble_item127_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and )
 :poss-effect (and (have_item127))
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

(:action gamble_item64_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item64))
)

(:action gamble_item65_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item65))
)

(:action gamble_item66_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item66))
)

(:action gamble_item67_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item67))
)

(:action gamble_item68_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item68))
)

(:action gamble_item69_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item69))
)

(:action gamble_item70_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item70))
)

(:action gamble_item71_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item71))
)

(:action gamble_item72_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item72))
)

(:action gamble_item73_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item73))
)

(:action gamble_item74_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item74))
)

(:action gamble_item75_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item75))
)

(:action gamble_item76_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item76))
)

(:action gamble_item77_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item77))
)

(:action gamble_item78_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item78))
)

(:action gamble_item79_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item79))
)

(:action gamble_item80_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item80))
)

(:action gamble_item81_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item81))
)

(:action gamble_item82_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item82))
)

(:action gamble_item83_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item83))
)

(:action gamble_item84_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item84))
)

(:action gamble_item85_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item85))
)

(:action gamble_item86_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item86))
)

(:action gamble_item87_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item87))
)

(:action gamble_item88_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item88))
)

(:action gamble_item89_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item89))
)

(:action gamble_item90_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item90))
)

(:action gamble_item91_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item91))
)

(:action gamble_item92_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item92))
)

(:action gamble_item93_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item93))
)

(:action gamble_item94_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item94))
)

(:action gamble_item95_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item95))
)

(:action gamble_item96_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item96))
)

(:action gamble_item97_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item97))
)

(:action gamble_item98_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item98))
)

(:action gamble_item99_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item99))
)

(:action gamble_item100_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item100))
)

(:action gamble_item101_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item101))
)

(:action gamble_item102_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item102))
)

(:action gamble_item103_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item103))
)

(:action gamble_item104_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item104))
)

(:action gamble_item105_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item105))
)

(:action gamble_item106_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item106))
)

(:action gamble_item107_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item107))
)

(:action gamble_item108_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item108))
)

(:action gamble_item109_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item109))
)

(:action gamble_item110_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item110))
)

(:action gamble_item111_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item111))
)

(:action gamble_item112_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item112))
)

(:action gamble_item113_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item113))
)

(:action gamble_item114_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item114))
)

(:action gamble_item115_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item115))
)

(:action gamble_item116_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item116))
)

(:action gamble_item117_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item117))
)

(:action gamble_item118_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item118))
)

(:action gamble_item119_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item119))
)

(:action gamble_item120_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item120))
)

(:action gamble_item121_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item121))
)

(:action gamble_item122_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item122))
)

(:action gamble_item123_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item123))
)

(:action gamble_item124_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item124))
)

(:action gamble_item125_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item125))
)

(:action gamble_item126_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item126))
)

(:action gamble_item127_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and )
 :poss-effect (and (have_item127))
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

(:action gamble_item64_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item64))
)

(:action gamble_item65_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item65))
)

(:action gamble_item66_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item66))
)

(:action gamble_item67_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item67))
)

(:action gamble_item68_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item68))
)

(:action gamble_item69_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item69))
)

(:action gamble_item70_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item70))
)

(:action gamble_item71_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item71))
)

(:action gamble_item72_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item72))
)

(:action gamble_item73_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item73))
)

(:action gamble_item74_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item74))
)

(:action gamble_item75_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item75))
)

(:action gamble_item76_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item76))
)

(:action gamble_item77_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item77))
)

(:action gamble_item78_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item78))
)

(:action gamble_item79_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item79))
)

(:action gamble_item80_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item80))
)

(:action gamble_item81_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item81))
)

(:action gamble_item82_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item82))
)

(:action gamble_item83_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item83))
)

(:action gamble_item84_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item84))
)

(:action gamble_item85_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item85))
)

(:action gamble_item86_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item86))
)

(:action gamble_item87_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item87))
)

(:action gamble_item88_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item88))
)

(:action gamble_item89_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item89))
)

(:action gamble_item90_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item90))
)

(:action gamble_item91_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item91))
)

(:action gamble_item92_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item92))
)

(:action gamble_item93_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item93))
)

(:action gamble_item94_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item94))
)

(:action gamble_item95_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item95))
)

(:action gamble_item96_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item96))
)

(:action gamble_item97_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item97))
)

(:action gamble_item98_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item98))
)

(:action gamble_item99_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item99))
)

(:action gamble_item100_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item100))
)

(:action gamble_item101_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item101))
)

(:action gamble_item102_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item102))
)

(:action gamble_item103_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item103))
)

(:action gamble_item104_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item104))
)

(:action gamble_item105_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item105))
)

(:action gamble_item106_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item106))
)

(:action gamble_item107_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item107))
)

(:action gamble_item108_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item108))
)

(:action gamble_item109_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item109))
)

(:action gamble_item110_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item110))
)

(:action gamble_item111_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item111))
)

(:action gamble_item112_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item112))
)

(:action gamble_item113_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item113))
)

(:action gamble_item114_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item114))
)

(:action gamble_item115_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item115))
)

(:action gamble_item116_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item116))
)

(:action gamble_item117_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item117))
)

(:action gamble_item118_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item118))
)

(:action gamble_item119_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item119))
)

(:action gamble_item120_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item120))
)

(:action gamble_item121_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item121))
)

(:action gamble_item122_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item122))
)

(:action gamble_item123_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item123))
)

(:action gamble_item124_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item124))
)

(:action gamble_item125_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item125))
)

(:action gamble_item126_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item126))
)

(:action gamble_item127_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and )
 :poss-effect (and (have_item127))
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

(:action gamble_item64_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item64))
)

(:action gamble_item65_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item65))
)

(:action gamble_item66_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item66))
)

(:action gamble_item67_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item67))
)

(:action gamble_item68_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item68))
)

(:action gamble_item69_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item69))
)

(:action gamble_item70_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item70))
)

(:action gamble_item71_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item71))
)

(:action gamble_item72_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item72))
)

(:action gamble_item73_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item73))
)

(:action gamble_item74_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item74))
)

(:action gamble_item75_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item75))
)

(:action gamble_item76_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item76))
)

(:action gamble_item77_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item77))
)

(:action gamble_item78_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item78))
)

(:action gamble_item79_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item79))
)

(:action gamble_item80_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item80))
)

(:action gamble_item81_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item81))
)

(:action gamble_item82_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item82))
)

(:action gamble_item83_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item83))
)

(:action gamble_item84_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item84))
)

(:action gamble_item85_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item85))
)

(:action gamble_item86_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item86))
)

(:action gamble_item87_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item87))
)

(:action gamble_item88_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item88))
)

(:action gamble_item89_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item89))
)

(:action gamble_item90_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item90))
)

(:action gamble_item91_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item91))
)

(:action gamble_item92_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item92))
)

(:action gamble_item93_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item93))
)

(:action gamble_item94_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item94))
)

(:action gamble_item95_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item95))
)

(:action gamble_item96_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item96))
)

(:action gamble_item97_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item97))
)

(:action gamble_item98_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item98))
)

(:action gamble_item99_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item99))
)

(:action gamble_item100_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item100))
)

(:action gamble_item101_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item101))
)

(:action gamble_item102_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item102))
)

(:action gamble_item103_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item103))
)

(:action gamble_item104_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item104))
)

(:action gamble_item105_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item105))
)

(:action gamble_item106_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item106))
)

(:action gamble_item107_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item107))
)

(:action gamble_item108_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item108))
)

(:action gamble_item109_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item109))
)

(:action gamble_item110_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item110))
)

(:action gamble_item111_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item111))
)

(:action gamble_item112_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item112))
)

(:action gamble_item113_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item113))
)

(:action gamble_item114_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item114))
)

(:action gamble_item115_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item115))
)

(:action gamble_item116_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item116))
)

(:action gamble_item117_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item117))
)

(:action gamble_item118_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item118))
)

(:action gamble_item119_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item119))
)

(:action gamble_item120_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item120))
)

(:action gamble_item121_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item121))
)

(:action gamble_item122_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item122))
)

(:action gamble_item123_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item123))
)

(:action gamble_item124_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item124))
)

(:action gamble_item125_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item125))
)

(:action gamble_item126_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item126))
)

(:action gamble_item127_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and )
 :poss-effect (and (have_item127))
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

(:action gamble_item64_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item64))
)

(:action gamble_item65_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item65))
)

(:action gamble_item66_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item66))
)

(:action gamble_item67_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item67))
)

(:action gamble_item68_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item68))
)

(:action gamble_item69_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item69))
)

(:action gamble_item70_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item70))
)

(:action gamble_item71_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item71))
)

(:action gamble_item72_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item72))
)

(:action gamble_item73_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item73))
)

(:action gamble_item74_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item74))
)

(:action gamble_item75_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item75))
)

(:action gamble_item76_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item76))
)

(:action gamble_item77_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item77))
)

(:action gamble_item78_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item78))
)

(:action gamble_item79_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item79))
)

(:action gamble_item80_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item80))
)

(:action gamble_item81_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item81))
)

(:action gamble_item82_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item82))
)

(:action gamble_item83_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item83))
)

(:action gamble_item84_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item84))
)

(:action gamble_item85_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item85))
)

(:action gamble_item86_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item86))
)

(:action gamble_item87_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item87))
)

(:action gamble_item88_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item88))
)

(:action gamble_item89_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item89))
)

(:action gamble_item90_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item90))
)

(:action gamble_item91_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item91))
)

(:action gamble_item92_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item92))
)

(:action gamble_item93_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item93))
)

(:action gamble_item94_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item94))
)

(:action gamble_item95_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item95))
)

(:action gamble_item96_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item96))
)

(:action gamble_item97_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item97))
)

(:action gamble_item98_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item98))
)

(:action gamble_item99_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item99))
)

(:action gamble_item100_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item100))
)

(:action gamble_item101_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item101))
)

(:action gamble_item102_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item102))
)

(:action gamble_item103_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item103))
)

(:action gamble_item104_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item104))
)

(:action gamble_item105_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item105))
)

(:action gamble_item106_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item106))
)

(:action gamble_item107_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item107))
)

(:action gamble_item108_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item108))
)

(:action gamble_item109_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item109))
)

(:action gamble_item110_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item110))
)

(:action gamble_item111_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item111))
)

(:action gamble_item112_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item112))
)

(:action gamble_item113_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item113))
)

(:action gamble_item114_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item114))
)

(:action gamble_item115_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item115))
)

(:action gamble_item116_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item116))
)

(:action gamble_item117_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item117))
)

(:action gamble_item118_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item118))
)

(:action gamble_item119_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item119))
)

(:action gamble_item120_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item120))
)

(:action gamble_item121_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item121))
)

(:action gamble_item122_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item122))
)

(:action gamble_item123_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item123))
)

(:action gamble_item124_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item124))
)

(:action gamble_item125_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item125))
)

(:action gamble_item126_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item126))
)

(:action gamble_item127_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and )
 :poss-effect (and (have_item127))
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

(:action gamble_item64_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item64))
)

(:action gamble_item65_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item65))
)

(:action gamble_item66_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item66))
)

(:action gamble_item67_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item67))
)

(:action gamble_item68_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item68))
)

(:action gamble_item69_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item69))
)

(:action gamble_item70_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item70))
)

(:action gamble_item71_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item71))
)

(:action gamble_item72_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item72))
)

(:action gamble_item73_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item73))
)

(:action gamble_item74_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item74))
)

(:action gamble_item75_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item75))
)

(:action gamble_item76_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item76))
)

(:action gamble_item77_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item77))
)

(:action gamble_item78_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item78))
)

(:action gamble_item79_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item79))
)

(:action gamble_item80_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item80))
)

(:action gamble_item81_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item81))
)

(:action gamble_item82_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item82))
)

(:action gamble_item83_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item83))
)

(:action gamble_item84_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item84))
)

(:action gamble_item85_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item85))
)

(:action gamble_item86_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item86))
)

(:action gamble_item87_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item87))
)

(:action gamble_item88_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item88))
)

(:action gamble_item89_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item89))
)

(:action gamble_item90_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item90))
)

(:action gamble_item91_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item91))
)

(:action gamble_item92_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item92))
)

(:action gamble_item93_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item93))
)

(:action gamble_item94_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item94))
)

(:action gamble_item95_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item95))
)

(:action gamble_item96_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item96))
)

(:action gamble_item97_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item97))
)

(:action gamble_item98_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item98))
)

(:action gamble_item99_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item99))
)

(:action gamble_item100_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item100))
)

(:action gamble_item101_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item101))
)

(:action gamble_item102_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item102))
)

(:action gamble_item103_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item103))
)

(:action gamble_item104_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item104))
)

(:action gamble_item105_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item105))
)

(:action gamble_item106_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item106))
)

(:action gamble_item107_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item107))
)

(:action gamble_item108_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item108))
)

(:action gamble_item109_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item109))
)

(:action gamble_item110_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item110))
)

(:action gamble_item111_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item111))
)

(:action gamble_item112_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item112))
)

(:action gamble_item113_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item113))
)

(:action gamble_item114_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item114))
)

(:action gamble_item115_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item115))
)

(:action gamble_item116_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item116))
)

(:action gamble_item117_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item117))
)

(:action gamble_item118_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item118))
)

(:action gamble_item119_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item119))
)

(:action gamble_item120_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item120))
)

(:action gamble_item121_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item121))
)

(:action gamble_item122_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item122))
)

(:action gamble_item123_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item123))
)

(:action gamble_item124_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item124))
)

(:action gamble_item125_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item125))
)

(:action gamble_item126_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item126))
)

(:action gamble_item127_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and )
 :poss-effect (and (have_item127))
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

(:action gamble_item64_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item64))
)

(:action gamble_item65_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item65))
)

(:action gamble_item66_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item66))
)

(:action gamble_item67_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item67))
)

(:action gamble_item68_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item68))
)

(:action gamble_item69_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item69))
)

(:action gamble_item70_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item70))
)

(:action gamble_item71_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item71))
)

(:action gamble_item72_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item72))
)

(:action gamble_item73_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item73))
)

(:action gamble_item74_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item74))
)

(:action gamble_item75_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item75))
)

(:action gamble_item76_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item76))
)

(:action gamble_item77_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item77))
)

(:action gamble_item78_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item78))
)

(:action gamble_item79_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item79))
)

(:action gamble_item80_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item80))
)

(:action gamble_item81_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item81))
)

(:action gamble_item82_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item82))
)

(:action gamble_item83_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item83))
)

(:action gamble_item84_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item84))
)

(:action gamble_item85_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item85))
)

(:action gamble_item86_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item86))
)

(:action gamble_item87_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item87))
)

(:action gamble_item88_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item88))
)

(:action gamble_item89_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item89))
)

(:action gamble_item90_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item90))
)

(:action gamble_item91_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item91))
)

(:action gamble_item92_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item92))
)

(:action gamble_item93_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item93))
)

(:action gamble_item94_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item94))
)

(:action gamble_item95_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item95))
)

(:action gamble_item96_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item96))
)

(:action gamble_item97_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item97))
)

(:action gamble_item98_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item98))
)

(:action gamble_item99_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item99))
)

(:action gamble_item100_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item100))
)

(:action gamble_item101_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item101))
)

(:action gamble_item102_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item102))
)

(:action gamble_item103_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item103))
)

(:action gamble_item104_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item104))
)

(:action gamble_item105_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item105))
)

(:action gamble_item106_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item106))
)

(:action gamble_item107_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item107))
)

(:action gamble_item108_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item108))
)

(:action gamble_item109_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item109))
)

(:action gamble_item110_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item110))
)

(:action gamble_item111_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item111))
)

(:action gamble_item112_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item112))
)

(:action gamble_item113_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item113))
)

(:action gamble_item114_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item114))
)

(:action gamble_item115_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item115))
)

(:action gamble_item116_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item116))
)

(:action gamble_item117_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item117))
)

(:action gamble_item118_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item118))
)

(:action gamble_item119_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item119))
)

(:action gamble_item120_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item120))
)

(:action gamble_item121_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item121))
)

(:action gamble_item122_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item122))
)

(:action gamble_item123_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item123))
)

(:action gamble_item124_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item124))
)

(:action gamble_item125_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item125))
)

(:action gamble_item126_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item126))
)

(:action gamble_item127_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and )
 :poss-effect (and (have_item127))
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

(:action gamble_item64_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item64))
)

(:action gamble_item65_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item65))
)

(:action gamble_item66_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item66))
)

(:action gamble_item67_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item67))
)

(:action gamble_item68_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item68))
)

(:action gamble_item69_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item69))
)

(:action gamble_item70_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item70))
)

(:action gamble_item71_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item71))
)

(:action gamble_item72_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item72))
)

(:action gamble_item73_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item73))
)

(:action gamble_item74_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item74))
)

(:action gamble_item75_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item75))
)

(:action gamble_item76_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item76))
)

(:action gamble_item77_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item77))
)

(:action gamble_item78_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item78))
)

(:action gamble_item79_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item79))
)

(:action gamble_item80_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item80))
)

(:action gamble_item81_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item81))
)

(:action gamble_item82_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item82))
)

(:action gamble_item83_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item83))
)

(:action gamble_item84_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item84))
)

(:action gamble_item85_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item85))
)

(:action gamble_item86_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item86))
)

(:action gamble_item87_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item87))
)

(:action gamble_item88_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item88))
)

(:action gamble_item89_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item89))
)

(:action gamble_item90_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item90))
)

(:action gamble_item91_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item91))
)

(:action gamble_item92_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item92))
)

(:action gamble_item93_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item93))
)

(:action gamble_item94_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item94))
)

(:action gamble_item95_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item95))
)

(:action gamble_item96_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item96))
)

(:action gamble_item97_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item97))
)

(:action gamble_item98_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item98))
)

(:action gamble_item99_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item99))
)

(:action gamble_item100_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item100))
)

(:action gamble_item101_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item101))
)

(:action gamble_item102_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item102))
)

(:action gamble_item103_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item103))
)

(:action gamble_item104_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item104))
)

(:action gamble_item105_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item105))
)

(:action gamble_item106_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item106))
)

(:action gamble_item107_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item107))
)

(:action gamble_item108_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item108))
)

(:action gamble_item109_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item109))
)

(:action gamble_item110_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item110))
)

(:action gamble_item111_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item111))
)

(:action gamble_item112_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item112))
)

(:action gamble_item113_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item113))
)

(:action gamble_item114_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item114))
)

(:action gamble_item115_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item115))
)

(:action gamble_item116_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item116))
)

(:action gamble_item117_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item117))
)

(:action gamble_item118_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item118))
)

(:action gamble_item119_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item119))
)

(:action gamble_item120_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item120))
)

(:action gamble_item121_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item121))
)

(:action gamble_item122_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item122))
)

(:action gamble_item123_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item123))
)

(:action gamble_item124_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item124))
)

(:action gamble_item125_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item125))
)

(:action gamble_item126_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item126))
)

(:action gamble_item127_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and )
 :poss-effect (and (have_item127))
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

(:action gamble_item64_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item64))
)

(:action gamble_item65_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item65))
)

(:action gamble_item66_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item66))
)

(:action gamble_item67_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item67))
)

(:action gamble_item68_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item68))
)

(:action gamble_item69_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item69))
)

(:action gamble_item70_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item70))
)

(:action gamble_item71_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item71))
)

(:action gamble_item72_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item72))
)

(:action gamble_item73_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item73))
)

(:action gamble_item74_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item74))
)

(:action gamble_item75_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item75))
)

(:action gamble_item76_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item76))
)

(:action gamble_item77_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item77))
)

(:action gamble_item78_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item78))
)

(:action gamble_item79_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item79))
)

(:action gamble_item80_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item80))
)

(:action gamble_item81_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item81))
)

(:action gamble_item82_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item82))
)

(:action gamble_item83_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item83))
)

(:action gamble_item84_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item84))
)

(:action gamble_item85_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item85))
)

(:action gamble_item86_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item86))
)

(:action gamble_item87_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item87))
)

(:action gamble_item88_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item88))
)

(:action gamble_item89_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item89))
)

(:action gamble_item90_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item90))
)

(:action gamble_item91_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item91))
)

(:action gamble_item92_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item92))
)

(:action gamble_item93_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item93))
)

(:action gamble_item94_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item94))
)

(:action gamble_item95_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item95))
)

(:action gamble_item96_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item96))
)

(:action gamble_item97_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item97))
)

(:action gamble_item98_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item98))
)

(:action gamble_item99_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item99))
)

(:action gamble_item100_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item100))
)

(:action gamble_item101_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item101))
)

(:action gamble_item102_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item102))
)

(:action gamble_item103_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item103))
)

(:action gamble_item104_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item104))
)

(:action gamble_item105_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item105))
)

(:action gamble_item106_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item106))
)

(:action gamble_item107_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item107))
)

(:action gamble_item108_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item108))
)

(:action gamble_item109_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item109))
)

(:action gamble_item110_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item110))
)

(:action gamble_item111_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item111))
)

(:action gamble_item112_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item112))
)

(:action gamble_item113_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item113))
)

(:action gamble_item114_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item114))
)

(:action gamble_item115_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item115))
)

(:action gamble_item116_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item116))
)

(:action gamble_item117_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item117))
)

(:action gamble_item118_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item118))
)

(:action gamble_item119_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item119))
)

(:action gamble_item120_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item120))
)

(:action gamble_item121_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item121))
)

(:action gamble_item122_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item122))
)

(:action gamble_item123_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item123))
)

(:action gamble_item124_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item124))
)

(:action gamble_item125_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item125))
)

(:action gamble_item126_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item126))
)

(:action gamble_item127_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and )
 :poss-effect (and (have_item127))
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

(:action gamble_item64_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item64))
)

(:action gamble_item65_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item65))
)

(:action gamble_item66_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item66))
)

(:action gamble_item67_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item67))
)

(:action gamble_item68_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item68))
)

(:action gamble_item69_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item69))
)

(:action gamble_item70_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item70))
)

(:action gamble_item71_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item71))
)

(:action gamble_item72_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item72))
)

(:action gamble_item73_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item73))
)

(:action gamble_item74_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item74))
)

(:action gamble_item75_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item75))
)

(:action gamble_item76_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item76))
)

(:action gamble_item77_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item77))
)

(:action gamble_item78_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item78))
)

(:action gamble_item79_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item79))
)

(:action gamble_item80_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item80))
)

(:action gamble_item81_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item81))
)

(:action gamble_item82_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item82))
)

(:action gamble_item83_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item83))
)

(:action gamble_item84_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item84))
)

(:action gamble_item85_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item85))
)

(:action gamble_item86_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item86))
)

(:action gamble_item87_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item87))
)

(:action gamble_item88_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item88))
)

(:action gamble_item89_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item89))
)

(:action gamble_item90_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item90))
)

(:action gamble_item91_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item91))
)

(:action gamble_item92_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item92))
)

(:action gamble_item93_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item93))
)

(:action gamble_item94_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item94))
)

(:action gamble_item95_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item95))
)

(:action gamble_item96_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item96))
)

(:action gamble_item97_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item97))
)

(:action gamble_item98_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item98))
)

(:action gamble_item99_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item99))
)

(:action gamble_item100_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item100))
)

(:action gamble_item101_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item101))
)

(:action gamble_item102_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item102))
)

(:action gamble_item103_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item103))
)

(:action gamble_item104_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item104))
)

(:action gamble_item105_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item105))
)

(:action gamble_item106_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item106))
)

(:action gamble_item107_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item107))
)

(:action gamble_item108_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item108))
)

(:action gamble_item109_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item109))
)

(:action gamble_item110_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item110))
)

(:action gamble_item111_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item111))
)

(:action gamble_item112_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item112))
)

(:action gamble_item113_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item113))
)

(:action gamble_item114_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item114))
)

(:action gamble_item115_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item115))
)

(:action gamble_item116_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item116))
)

(:action gamble_item117_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item117))
)

(:action gamble_item118_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item118))
)

(:action gamble_item119_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item119))
)

(:action gamble_item120_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item120))
)

(:action gamble_item121_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item121))
)

(:action gamble_item122_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item122))
)

(:action gamble_item123_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item123))
)

(:action gamble_item124_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item124))
)

(:action gamble_item125_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item125))
)

(:action gamble_item126_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item126))
)

(:action gamble_item127_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and )
 :poss-effect (and (have_item127))
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

(:action gamble_item64_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item64))
)

(:action gamble_item65_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item65))
)

(:action gamble_item66_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item66))
)

(:action gamble_item67_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item67))
)

(:action gamble_item68_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item68))
)

(:action gamble_item69_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item69))
)

(:action gamble_item70_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item70))
)

(:action gamble_item71_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item71))
)

(:action gamble_item72_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item72))
)

(:action gamble_item73_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item73))
)

(:action gamble_item74_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item74))
)

(:action gamble_item75_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item75))
)

(:action gamble_item76_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item76))
)

(:action gamble_item77_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item77))
)

(:action gamble_item78_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item78))
)

(:action gamble_item79_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item79))
)

(:action gamble_item80_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item80))
)

(:action gamble_item81_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item81))
)

(:action gamble_item82_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item82))
)

(:action gamble_item83_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item83))
)

(:action gamble_item84_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item84))
)

(:action gamble_item85_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item85))
)

(:action gamble_item86_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item86))
)

(:action gamble_item87_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item87))
)

(:action gamble_item88_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item88))
)

(:action gamble_item89_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item89))
)

(:action gamble_item90_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item90))
)

(:action gamble_item91_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item91))
)

(:action gamble_item92_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item92))
)

(:action gamble_item93_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item93))
)

(:action gamble_item94_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item94))
)

(:action gamble_item95_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item95))
)

(:action gamble_item96_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item96))
)

(:action gamble_item97_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item97))
)

(:action gamble_item98_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item98))
)

(:action gamble_item99_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item99))
)

(:action gamble_item100_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item100))
)

(:action gamble_item101_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item101))
)

(:action gamble_item102_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item102))
)

(:action gamble_item103_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item103))
)

(:action gamble_item104_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item104))
)

(:action gamble_item105_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item105))
)

(:action gamble_item106_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item106))
)

(:action gamble_item107_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item107))
)

(:action gamble_item108_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item108))
)

(:action gamble_item109_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item109))
)

(:action gamble_item110_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item110))
)

(:action gamble_item111_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item111))
)

(:action gamble_item112_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item112))
)

(:action gamble_item113_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item113))
)

(:action gamble_item114_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item114))
)

(:action gamble_item115_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item115))
)

(:action gamble_item116_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item116))
)

(:action gamble_item117_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item117))
)

(:action gamble_item118_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item118))
)

(:action gamble_item119_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item119))
)

(:action gamble_item120_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item120))
)

(:action gamble_item121_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item121))
)

(:action gamble_item122_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item122))
)

(:action gamble_item123_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item123))
)

(:action gamble_item124_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item124))
)

(:action gamble_item125_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item125))
)

(:action gamble_item126_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item126))
)

(:action gamble_item127_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and )
 :poss-effect (and (have_item127))
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

(:action gamble_item64_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item64))
)

(:action gamble_item65_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item65))
)

(:action gamble_item66_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item66))
)

(:action gamble_item67_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item67))
)

(:action gamble_item68_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item68))
)

(:action gamble_item69_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item69))
)

(:action gamble_item70_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item70))
)

(:action gamble_item71_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item71))
)

(:action gamble_item72_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item72))
)

(:action gamble_item73_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item73))
)

(:action gamble_item74_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item74))
)

(:action gamble_item75_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item75))
)

(:action gamble_item76_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item76))
)

(:action gamble_item77_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item77))
)

(:action gamble_item78_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item78))
)

(:action gamble_item79_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item79))
)

(:action gamble_item80_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item80))
)

(:action gamble_item81_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item81))
)

(:action gamble_item82_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item82))
)

(:action gamble_item83_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item83))
)

(:action gamble_item84_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item84))
)

(:action gamble_item85_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item85))
)

(:action gamble_item86_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item86))
)

(:action gamble_item87_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item87))
)

(:action gamble_item88_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item88))
)

(:action gamble_item89_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item89))
)

(:action gamble_item90_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item90))
)

(:action gamble_item91_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item91))
)

(:action gamble_item92_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item92))
)

(:action gamble_item93_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item93))
)

(:action gamble_item94_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item94))
)

(:action gamble_item95_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item95))
)

(:action gamble_item96_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item96))
)

(:action gamble_item97_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item97))
)

(:action gamble_item98_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item98))
)

(:action gamble_item99_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item99))
)

(:action gamble_item100_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item100))
)

(:action gamble_item101_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item101))
)

(:action gamble_item102_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item102))
)

(:action gamble_item103_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item103))
)

(:action gamble_item104_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item104))
)

(:action gamble_item105_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item105))
)

(:action gamble_item106_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item106))
)

(:action gamble_item107_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item107))
)

(:action gamble_item108_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item108))
)

(:action gamble_item109_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item109))
)

(:action gamble_item110_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item110))
)

(:action gamble_item111_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item111))
)

(:action gamble_item112_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item112))
)

(:action gamble_item113_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item113))
)

(:action gamble_item114_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item114))
)

(:action gamble_item115_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item115))
)

(:action gamble_item116_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item116))
)

(:action gamble_item117_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item117))
)

(:action gamble_item118_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item118))
)

(:action gamble_item119_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item119))
)

(:action gamble_item120_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item120))
)

(:action gamble_item121_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item121))
)

(:action gamble_item122_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item122))
)

(:action gamble_item123_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item123))
)

(:action gamble_item124_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item124))
)

(:action gamble_item125_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item125))
)

(:action gamble_item126_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item126))
)

(:action gamble_item127_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and )
 :poss-effect (and (have_item127))
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

(:action gamble_item64_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item64))
)

(:action gamble_item65_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item65))
)

(:action gamble_item66_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item66))
)

(:action gamble_item67_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item67))
)

(:action gamble_item68_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item68))
)

(:action gamble_item69_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item69))
)

(:action gamble_item70_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item70))
)

(:action gamble_item71_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item71))
)

(:action gamble_item72_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item72))
)

(:action gamble_item73_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item73))
)

(:action gamble_item74_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item74))
)

(:action gamble_item75_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item75))
)

(:action gamble_item76_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item76))
)

(:action gamble_item77_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item77))
)

(:action gamble_item78_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item78))
)

(:action gamble_item79_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item79))
)

(:action gamble_item80_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item80))
)

(:action gamble_item81_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item81))
)

(:action gamble_item82_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item82))
)

(:action gamble_item83_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item83))
)

(:action gamble_item84_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item84))
)

(:action gamble_item85_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item85))
)

(:action gamble_item86_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item86))
)

(:action gamble_item87_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item87))
)

(:action gamble_item88_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item88))
)

(:action gamble_item89_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item89))
)

(:action gamble_item90_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item90))
)

(:action gamble_item91_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item91))
)

(:action gamble_item92_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item92))
)

(:action gamble_item93_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item93))
)

(:action gamble_item94_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item94))
)

(:action gamble_item95_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item95))
)

(:action gamble_item96_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item96))
)

(:action gamble_item97_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item97))
)

(:action gamble_item98_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item98))
)

(:action gamble_item99_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item99))
)

(:action gamble_item100_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item100))
)

(:action gamble_item101_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item101))
)

(:action gamble_item102_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item102))
)

(:action gamble_item103_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item103))
)

(:action gamble_item104_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item104))
)

(:action gamble_item105_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item105))
)

(:action gamble_item106_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item106))
)

(:action gamble_item107_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item107))
)

(:action gamble_item108_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item108))
)

(:action gamble_item109_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item109))
)

(:action gamble_item110_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item110))
)

(:action gamble_item111_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item111))
)

(:action gamble_item112_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item112))
)

(:action gamble_item113_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item113))
)

(:action gamble_item114_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item114))
)

(:action gamble_item115_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item115))
)

(:action gamble_item116_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item116))
)

(:action gamble_item117_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item117))
)

(:action gamble_item118_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item118))
)

(:action gamble_item119_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item119))
)

(:action gamble_item120_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item120))
)

(:action gamble_item121_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item121))
)

(:action gamble_item122_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item122))
)

(:action gamble_item123_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item123))
)

(:action gamble_item124_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item124))
)

(:action gamble_item125_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item125))
)

(:action gamble_item126_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item126))
)

(:action gamble_item127_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and )
 :poss-effect (and (have_item127))
)

(:action easymark_item2_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and (have_item2))
)

(:action easymark_item9_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and (have_item9))
)

(:action easymark_item12_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and (have_item12))
)

(:action easymark_item58_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and (have_item58))
)

(:action easymark_item60_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and (have_item60))
)

(:action easymark_item61_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and (have_item61))
)

(:action easymark_item65_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and (have_item65))
)

(:action easymark_item82_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and (have_item82))
)

(:action easymark_item88_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and (have_item88))
)

(:action easymark_item89_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and (have_item89))
)

(:action easymark_item97_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and (have_item97))
)

(:action easymark_item101_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and (have_item101))
)

(:action easymark_item105_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and (have_item105))
)

(:action easymark_item111_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and (have_item111))
)

(:action easymark_item117_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and (have_item117))
)

(:action easymark_item118_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and (have_item118))
)

(:action easymark_item119_0_0
 :parameters ()
 :precondition (and (at_x0) (at_y0))
 :effect (and (have_item119))
)

(:action easymark_item11_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and (have_item11))
)

(:action easymark_item17_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and (have_item17))
)

(:action easymark_item18_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and (have_item18))
)

(:action easymark_item33_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and (have_item33))
)

(:action easymark_item43_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and (have_item43))
)

(:action easymark_item44_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and (have_item44))
)

(:action easymark_item48_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and (have_item48))
)

(:action easymark_item55_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and (have_item55))
)

(:action easymark_item62_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and (have_item62))
)

(:action easymark_item63_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and (have_item63))
)

(:action easymark_item65_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and (have_item65))
)

(:action easymark_item81_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and (have_item81))
)

(:action easymark_item82_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and (have_item82))
)

(:action easymark_item91_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and (have_item91))
)

(:action easymark_item108_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and (have_item108))
)

(:action easymark_item120_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and (have_item120))
)

(:action easymark_item122_0_1
 :parameters ()
 :precondition (and (at_x0) (at_y1))
 :effect (and (have_item122))
)

(:action easymark_item3_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and (have_item3))
)

(:action easymark_item20_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and (have_item20))
)

(:action easymark_item25_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and (have_item25))
)

(:action easymark_item31_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and (have_item31))
)

(:action easymark_item35_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and (have_item35))
)

(:action easymark_item45_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and (have_item45))
)

(:action easymark_item54_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and (have_item54))
)

(:action easymark_item60_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and (have_item60))
)

(:action easymark_item65_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and (have_item65))
)

(:action easymark_item75_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and (have_item75))
)

(:action easymark_item76_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and (have_item76))
)

(:action easymark_item96_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and (have_item96))
)

(:action easymark_item108_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and (have_item108))
)

(:action easymark_item113_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and (have_item113))
)

(:action easymark_item124_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and (have_item124))
)

(:action easymark_item125_0_2
 :parameters ()
 :precondition (and (at_x0) (at_y2))
 :effect (and (have_item125))
)

(:action easymark_item8_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and (have_item8))
)

(:action easymark_item18_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and (have_item18))
)

(:action easymark_item22_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and (have_item22))
)

(:action easymark_item30_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and (have_item30))
)

(:action easymark_item32_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and (have_item32))
)

(:action easymark_item34_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and (have_item34))
)

(:action easymark_item35_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and (have_item35))
)

(:action easymark_item42_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and (have_item42))
)

(:action easymark_item45_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and (have_item45))
)

(:action easymark_item69_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and (have_item69))
)

(:action easymark_item78_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and (have_item78))
)

(:action easymark_item82_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and (have_item82))
)

(:action easymark_item85_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and (have_item85))
)

(:action easymark_item87_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and (have_item87))
)

(:action easymark_item108_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and (have_item108))
)

(:action easymark_item123_0_3
 :parameters ()
 :precondition (and (at_x0) (at_y3))
 :effect (and (have_item123))
)

(:action easymark_item7_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and (have_item7))
)

(:action easymark_item12_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and (have_item12))
)

(:action easymark_item14_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and (have_item14))
)

(:action easymark_item20_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and (have_item20))
)

(:action easymark_item21_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and (have_item21))
)

(:action easymark_item39_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and (have_item39))
)

(:action easymark_item40_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and (have_item40))
)

(:action easymark_item45_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and (have_item45))
)

(:action easymark_item46_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and (have_item46))
)

(:action easymark_item51_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and (have_item51))
)

(:action easymark_item79_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and (have_item79))
)

(:action easymark_item113_1_0
 :parameters ()
 :precondition (and (at_x1) (at_y0))
 :effect (and (have_item113))
)

(:action easymark_item7_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and (have_item7))
)

(:action easymark_item29_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and (have_item29))
)

(:action easymark_item35_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and (have_item35))
)

(:action easymark_item47_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and (have_item47))
)

(:action easymark_item81_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and (have_item81))
)

(:action easymark_item84_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and (have_item84))
)

(:action easymark_item88_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and (have_item88))
)

(:action easymark_item97_1_1
 :parameters ()
 :precondition (and (at_x1) (at_y1))
 :effect (and (have_item97))
)

(:action easymark_item0_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and (have_item0))
)

(:action easymark_item3_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and (have_item3))
)

(:action easymark_item7_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and (have_item7))
)

(:action easymark_item51_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and (have_item51))
)

(:action easymark_item56_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and (have_item56))
)

(:action easymark_item57_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and (have_item57))
)

(:action easymark_item68_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and (have_item68))
)

(:action easymark_item81_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and (have_item81))
)

(:action easymark_item90_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and (have_item90))
)

(:action easymark_item96_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and (have_item96))
)

(:action easymark_item116_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and (have_item116))
)

(:action easymark_item118_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and (have_item118))
)

(:action easymark_item124_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and (have_item124))
)

(:action easymark_item126_1_2
 :parameters ()
 :precondition (and (at_x1) (at_y2))
 :effect (and (have_item126))
)

(:action easymark_item7_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and (have_item7))
)

(:action easymark_item13_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and (have_item13))
)

(:action easymark_item37_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and (have_item37))
)

(:action easymark_item69_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and (have_item69))
)

(:action easymark_item75_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and (have_item75))
)

(:action easymark_item93_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and (have_item93))
)

(:action easymark_item104_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and (have_item104))
)

(:action easymark_item106_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and (have_item106))
)

(:action easymark_item124_1_3
 :parameters ()
 :precondition (and (at_x1) (at_y3))
 :effect (and (have_item124))
)

(:action easymark_item0_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and (have_item0))
)

(:action easymark_item7_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and (have_item7))
)

(:action easymark_item12_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and (have_item12))
)

(:action easymark_item43_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and (have_item43))
)

(:action easymark_item51_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and (have_item51))
)

(:action easymark_item63_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and (have_item63))
)

(:action easymark_item71_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and (have_item71))
)

(:action easymark_item87_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and (have_item87))
)

(:action easymark_item98_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and (have_item98))
)

(:action easymark_item99_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and (have_item99))
)

(:action easymark_item110_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and (have_item110))
)

(:action easymark_item124_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and (have_item124))
)

(:action easymark_item126_2_0
 :parameters ()
 :precondition (and (at_x2) (at_y0))
 :effect (and (have_item126))
)

(:action easymark_item0_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and (have_item0))
)

(:action easymark_item7_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and (have_item7))
)

(:action easymark_item22_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and (have_item22))
)

(:action easymark_item28_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and (have_item28))
)

(:action easymark_item44_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and (have_item44))
)

(:action easymark_item76_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and (have_item76))
)

(:action easymark_item80_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and (have_item80))
)

(:action easymark_item81_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and (have_item81))
)

(:action easymark_item84_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and (have_item84))
)

(:action easymark_item87_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and (have_item87))
)

(:action easymark_item90_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and (have_item90))
)

(:action easymark_item102_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and (have_item102))
)

(:action easymark_item108_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and (have_item108))
)

(:action easymark_item119_2_1
 :parameters ()
 :precondition (and (at_x2) (at_y1))
 :effect (and (have_item119))
)

(:action easymark_item17_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and (have_item17))
)

(:action easymark_item23_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and (have_item23))
)

(:action easymark_item26_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and (have_item26))
)

(:action easymark_item36_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and (have_item36))
)

(:action easymark_item43_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and (have_item43))
)

(:action easymark_item47_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and (have_item47))
)

(:action easymark_item51_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and (have_item51))
)

(:action easymark_item59_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and (have_item59))
)

(:action easymark_item61_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and (have_item61))
)

(:action easymark_item69_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and (have_item69))
)

(:action easymark_item90_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and (have_item90))
)

(:action easymark_item104_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and (have_item104))
)

(:action easymark_item112_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and (have_item112))
)

(:action easymark_item113_2_2
 :parameters ()
 :precondition (and (at_x2) (at_y2))
 :effect (and (have_item113))
)

(:action easymark_item19_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and (have_item19))
)

(:action easymark_item46_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and (have_item46))
)

(:action easymark_item81_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and (have_item81))
)

(:action easymark_item83_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and (have_item83))
)

(:action easymark_item91_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and (have_item91))
)

(:action easymark_item100_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and (have_item100))
)

(:action easymark_item107_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and (have_item107))
)

(:action easymark_item115_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and (have_item115))
)

(:action easymark_item124_2_3
 :parameters ()
 :precondition (and (at_x2) (at_y3))
 :effect (and (have_item124))
)

(:action easymark_item10_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and (have_item10))
)

(:action easymark_item17_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and (have_item17))
)

(:action easymark_item26_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and (have_item26))
)

(:action easymark_item29_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and (have_item29))
)

(:action easymark_item37_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and (have_item37))
)

(:action easymark_item50_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and (have_item50))
)

(:action easymark_item65_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and (have_item65))
)

(:action easymark_item73_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and (have_item73))
)

(:action easymark_item75_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and (have_item75))
)

(:action easymark_item96_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and (have_item96))
)

(:action easymark_item101_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and (have_item101))
)

(:action easymark_item110_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and (have_item110))
)

(:action easymark_item125_3_0
 :parameters ()
 :precondition (and (at_x3) (at_y0))
 :effect (and (have_item125))
)

(:action easymark_item4_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and (have_item4))
)

(:action easymark_item11_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and (have_item11))
)

(:action easymark_item12_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and (have_item12))
)

(:action easymark_item44_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and (have_item44))
)

(:action easymark_item48_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and (have_item48))
)

(:action easymark_item57_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and (have_item57))
)

(:action easymark_item60_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and (have_item60))
)

(:action easymark_item61_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and (have_item61))
)

(:action easymark_item70_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and (have_item70))
)

(:action easymark_item89_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and (have_item89))
)

(:action easymark_item102_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and (have_item102))
)

(:action easymark_item105_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and (have_item105))
)

(:action easymark_item120_3_1
 :parameters ()
 :precondition (and (at_x3) (at_y1))
 :effect (and (have_item120))
)

(:action easymark_item1_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and (have_item1))
)

(:action easymark_item8_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and (have_item8))
)

(:action easymark_item13_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and (have_item13))
)

(:action easymark_item39_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and (have_item39))
)

(:action easymark_item44_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and (have_item44))
)

(:action easymark_item77_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and (have_item77))
)

(:action easymark_item80_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and (have_item80))
)

(:action easymark_item82_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and (have_item82))
)

(:action easymark_item91_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and (have_item91))
)

(:action easymark_item105_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and (have_item105))
)

(:action easymark_item115_3_2
 :parameters ()
 :precondition (and (at_x3) (at_y2))
 :effect (and (have_item115))
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

(:action easymark_item13_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and (have_item13))
)

(:action easymark_item24_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and (have_item24))
)

(:action easymark_item28_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and (have_item28))
)

(:action easymark_item61_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and (have_item61))
)

(:action easymark_item63_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and (have_item63))
)

(:action easymark_item66_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and (have_item66))
)

(:action easymark_item74_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and (have_item74))
)

(:action easymark_item87_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and (have_item87))
)

(:action easymark_item90_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and (have_item90))
)

(:action easymark_item99_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and (have_item99))
)

(:action easymark_item107_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and (have_item107))
)

(:action easymark_item124_3_3
 :parameters ()
 :precondition (and (at_x3) (at_y3))
 :effect (and (have_item124))
)
)
