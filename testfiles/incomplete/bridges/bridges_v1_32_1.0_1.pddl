(define (domain Bridges)
(:requirements :fluents :incomplete-domain)

(:predicates
 (at_x0) (at_y0)
 (at_x1) (at_y1)
 (at_x2) (at_y2)
 (at_x3) (at_y3)
 (at_x4) (at_y4)
 (at_x5) (at_y5)
 (at_x6) (at_y6)
 (at_x7) (at_y7)
 (at_x8) (at_y8)
 (at_x9) (at_y9)
 (at_x10) (at_y10)
 (at_x11) (at_y11)
 (at_x12) (at_y12)
 (at_x13) (at_y13)
 (at_x14) (at_y14)
 (at_x15) (at_y15)
 (at_x16) (at_y16)
 (at_x17) (at_y17)
 (at_x18) (at_y18)
 (at_x19) (at_y19)
 (at_x20) (at_y20)
 (at_x21) (at_y21)
 (at_x22) (at_y22)
 (at_x23) (at_y23)
 (at_x24) (at_y24)
 (at_x25) (at_y25)
 (at_x26) (at_y26)
 (at_x27) (at_y27)
 (at_x28) (at_y28)
 (at_x29) (at_y29)
 (at_x30) (at_y30)
 (at_x31) (at_y31)
 (bridge_16_11_16_12) (bridge_5_20_6_20) (bridge_9_1_10_1) (bridge_7_28_8_28) (bridge_22_0_23_0) (bridge_7_25_8_25) (bridge_29_20_29_21) (bridge_19_12_19_13) (bridge_12_14_12_15) (bridge_25_2_26_2) (bridge_9_12_9_13) (bridge_11_0_12_0) (bridge_19_18_19_19) (bridge_30_0_31_0) (bridge_2_11_2_12) (bridge_31_29_31_30) (bridge_16_18_17_18) (bridge_4_18_4_19) (bridge_29_23_29_24) (bridge_30_29_31_29) (bridge_20_14_20_15) (bridge_30_11_31_11) (bridge_31_17_31_18) (bridge_30_12_30_13) (bridge_11_1_11_2) (bridge_17_10_18_10) (bridge_16_16_17_16) (bridge_25_25_25_26) (bridge_25_21_26_21) (bridge_9_3_10_3) (bridge_27_8_28_8) (bridge_6_3_7_3) (bridge_1_6_1_7) (bridge_25_14_25_15) (bridge_7_13_7_14) (bridge_24_24_25_24) (bridge_14_1_15_1) (bridge_16_20_16_21) (bridge_4_24_5_24) (bridge_24_9_24_10) (bridge_21_17_21_18) (bridge_21_27_22_27) (bridge_1_24_1_25) (bridge_0_12_1_12) (bridge_19_2_19_3) (bridge_7_30_7_31) (bridge_22_1_22_2) (bridge_25_13_26_13) (bridge_12_1_13_1) (bridge_1_25_1_26) (bridge_13_28_13_29) (bridge_28_27_28_28) (bridge_19_20_20_20) (bridge_29_6_30_6) (bridge_6_15_6_16) (bridge_1_8_2_8) (bridge_28_28_29_28) (bridge_17_25_17_26) (bridge_29_12_29_13) (bridge_26_5_26_6) (bridge_6_21_6_22) (bridge_17_5_18_5) (bridge_25_22_26_22) (bridge_23_17_24_17) (bridge_21_16_21_17) (bridge_23_29_23_30) (bridge_13_15_14_15) (bridge_20_31_21_31) (bridge_26_17_27_17) (bridge_13_26_13_27) (bridge_20_24_20_25) (bridge_23_7_23_8) (bridge_9_0_9_1) (bridge_17_28_18_28) (bridge_6_14_6_15) (bridge_11_20_11_21) (bridge_12_29_13_29) (bridge_19_24_20_24) (bridge_24_28_24_29) (bridge_2_8_3_8) (bridge_8_30_8_31) (bridge_22_9_22_10) (bridge_13_7_13_8) (bridge_27_21_28_21) (bridge_14_20_14_21) (bridge_25_23_26_23) (bridge_26_28_27_28) (bridge_10_28_10_29) (bridge_8_13_9_13) (bridge_24_14_24_15) (bridge_21_7_21_8) (bridge_25_18_26_18) (bridge_5_21_6_21) (bridge_7_1_8_1) (bridge_22_26_23_26) (bridge_5_4_6_4) (bridge_24_11_25_11) (bridge_7_15_8_15) (bridge_5_29_5_30) (bridge_21_3_22_3) (bridge_17_23_17_24) (bridge_23_14_24_14) (bridge_11_26_11_27) (bridge_6_28_6_29) (bridge_29_28_29_29) (bridge_0_14_0_15) (bridge_28_30_29_30) (bridge_22_5_23_5) (bridge_24_14_25_14) (bridge_16_18_16_19) (bridge_25_26_26_26) (bridge_15_20_16_20) (bridge_6_7_6_8) (bridge_29_11_29_12) (bridge_27_13_27_14) (bridge_26_2_26_3) (bridge_16_4_17_4) (bridge_27_10_28_10) (bridge_2_13_3_13) (bridge_17_11_18_11) (bridge_8_14_8_15) (bridge_31_22_31_23) (bridge_17_1_18_1) (bridge_12_5_13_5) (bridge_22_25_23_25) (bridge_3_17_3_18) (bridge_9_29_10_29) (bridge_29_7_30_7) (bridge_30_16_31_16) (bridge_0_28_0_29) (bridge_30_18_30_19) (bridge_8_29_9_29) (bridge_27_0_28_0) (bridge_8_16_9_16) (bridge_6_22_7_22) (bridge_26_22_26_23) (bridge_10_27_10_28) (bridge_28_13_29_13) (bridge_21_28_21_29) (bridge_20_14_21_14) (bridge_16_10_17_10) (bridge_16_8_17_8) (bridge_26_21_26_22) (bridge_28_26_28_27) (bridge_20_8_20_9) (bridge_3_12_3_13) (bridge_2_5_3_5) (bridge_18_25_18_26) (bridge_25_9_26_9) (bridge_28_21_28_22) (bridge_25_24_25_25) (bridge_18_16_19_16) (bridge_4_19_5_19) (bridge_10_7_10_8) (bridge_5_10_6_10) (bridge_25_7_26_7) (bridge_22_24_22_25) (bridge_10_15_11_15) (bridge_5_12_5_13) (bridge_16_27_16_28) (bridge_15_12_16_12) (bridge_2_25_2_26) (bridge_20_23_21_23) (bridge_11_17_12_17) (bridge_7_0_8_0) (bridge_23_21_23_22) (bridge_31_14_31_15) (bridge_15_24_16_24) (bridge_10_10_11_10) (bridge_28_4_28_5) (bridge_11_2_12_2) (bridge_15_15_15_16) (bridge_19_9_19_10) (bridge_7_16_7_17) (bridge_4_2_4_3) (bridge_8_28_8_29) (bridge_31_9_31_10) (bridge_9_18_9_19) (bridge_28_9_28_10) (bridge_31_15_31_16) (bridge_0_11_0_12) (bridge_31_20_31_21) (bridge_14_24_14_25) (bridge_17_4_17_5) (bridge_17_14_17_15) (bridge_25_3_26_3) (bridge_12_23_12_24) (bridge_7_2_8_2) (bridge_26_26_27_26) (bridge_29_25_30_25) (bridge_1_20_1_21) (bridge_29_13_30_13) (bridge_24_18_24_19) (bridge_3_29_4_29) (bridge_28_3_29_3) (bridge_8_3_9_3) (bridge_9_7_9_8) (bridge_7_6_7_7) (bridge_28_2_28_3) (bridge_10_24_10_25) (bridge_12_24_12_25) (bridge_4_28_4_29) (bridge_8_2_8_3) (bridge_24_13_25_13) (bridge_8_12_9_12) (bridge_22_16_22_17) (bridge_16_15_17_15) (bridge_18_27_19_27) (bridge_0_19_0_20) (bridge_30_22_31_22) (bridge_10_3_10_4) (bridge_2_2_2_3) (bridge_13_11_14_11) (bridge_8_7_8_8) (bridge_26_24_27_24) (bridge_1_22_2_22) (bridge_4_15_4_16) (bridge_17_24_17_25) (bridge_1_17_2_17) (bridge_28_24_28_25) (bridge_14_16_14_17) (bridge_6_4_6_5) (bridge_3_0_4_0) (bridge_12_28_13_28) (bridge_20_19_21_19) (bridge_9_22_9_23) (bridge_27_20_28_20) (bridge_10_14_11_14) (bridge_7_22_8_22) (bridge_4_14_5_14) (bridge_26_14_26_15) (bridge_3_7_3_8) (bridge_12_27_13_27) (bridge_5_8_6_8) (bridge_17_6_18_6) (bridge_15_5_15_6) (bridge_0_6_1_6) (bridge_13_16_14_16) (bridge_28_17_28_18) (bridge_8_25_9_25) (bridge_18_11_18_12) (bridge_6_16_7_16) (bridge_20_15_20_16) (bridge_11_15_11_16) (bridge_0_17_0_18) (bridge_1_0_1_1) (bridge_30_23_30_24) (bridge_5_18_5_19) (bridge_24_29_24_30) (bridge_8_18_8_19) (bridge_6_26_6_27) (bridge_5_22_5_23) (bridge_28_18_29_18) (bridge_18_26_18_27) (bridge_6_2_7_2) (bridge_17_22_18_22) (bridge_20_3_21_3) (bridge_7_20_8_20) (bridge_10_20_11_20) (bridge_13_16_13_17) (bridge_13_25_14_25) (bridge_23_1_24_1) (bridge_14_21_14_22) (bridge_17_8_17_9) (bridge_27_17_27_18) (bridge_29_22_30_22) (bridge_28_17_29_17) (bridge_19_20_19_21) (bridge_21_26_22_26) (bridge_22_13_23_13) (bridge_12_4_12_5) (bridge_15_8_16_8) (bridge_21_8_21_9) (bridge_14_15_15_15) (bridge_25_5_26_5) (bridge_13_27_13_28) (bridge_27_14_28_14) (bridge_7_16_8_16) (bridge_30_13_30_14) (bridge_2_7_3_7) (bridge_24_20_24_21) (bridge_6_27_7_27) (bridge_5_30_6_30) (bridge_16_0_16_1) (bridge_21_16_22_16) (bridge_2_15_2_16) (bridge_8_1_9_1) (bridge_29_24_30_24) (bridge_15_21_16_21) (bridge_18_9_19_9) (bridge_30_20_30_21) (bridge_26_20_27_20) (bridge_6_26_7_26) (bridge_11_6_12_6) (bridge_18_8_18_9) (bridge_5_14_5_15) (bridge_21_20_21_21) (bridge_26_1_26_2) (bridge_15_16_16_16) (bridge_21_25_22_25) (bridge_5_31_6_31) (bridge_27_6_27_7) (bridge_3_8_3_9) (bridge_31_26_31_27) (bridge_0_21_1_21) (bridge_24_22_24_23) (bridge_16_11_17_11) (bridge_19_17_20_17) (bridge_0_30_1_30) (bridge_23_4_23_5) (bridge_22_4_22_5) (bridge_25_10_26_10) (bridge_29_17_29_18) (bridge_7_7_8_7) (bridge_18_12_19_12) (bridge_22_20_23_20) (bridge_30_18_31_18) (bridge_7_23_7_24) (bridge_26_28_26_29) (bridge_8_27_8_28) (bridge_12_9_12_10) (bridge_25_12_26_12) (bridge_15_11_16_11) (bridge_12_27_12_28) (bridge_8_24_9_24) (bridge_12_13_13_13) (bridge_6_18_6_19) (bridge_10_5_10_6) (bridge_17_0_17_1) (bridge_21_10_21_11) (bridge_23_14_23_15) (bridge_20_20_20_21) (bridge_13_2_14_2) (bridge_10_31_11_31) (bridge_9_24_10_24) (bridge_13_15_13_16) (bridge_3_3_4_3) (bridge_28_29_29_29) (bridge_6_18_7_18) (bridge_31_7_31_8) (bridge_7_3_8_3) (bridge_29_10_29_11) (bridge_21_13_22_13) (bridge_23_30_24_30) (bridge_30_15_30_16) (bridge_29_27_30_27) (bridge_10_21_10_22) (bridge_27_4_28_4) (bridge_19_24_19_25) (bridge_0_17_1_17) (bridge_13_30_13_31) (bridge_29_19_29_20) (bridge_5_2_6_2) (bridge_27_12_27_13) (bridge_18_0_19_0) (bridge_18_5_19_5) (bridge_22_6_22_7) (bridge_10_8_11_8) (bridge_12_22_12_23) (bridge_0_27_0_28) (bridge_8_4_8_5) (bridge_1_3_1_4) (bridge_20_16_21_16) (bridge_10_25_10_26) (bridge_16_17_17_17) (bridge_23_16_24_16) (bridge_13_23_13_24) (bridge_20_18_21_18) (bridge_5_12_6_12) (bridge_0_20_1_20) (bridge_1_29_1_30) (bridge_15_24_15_25) (bridge_23_6_24_6) (bridge_0_3_1_3) (bridge_1_19_2_19) (bridge_24_2_25_2) (bridge_26_21_27_21) (bridge_18_29_19_29) (bridge_21_1_22_1) (bridge_19_10_19_11) (bridge_27_24_28_24) (bridge_14_7_14_8) (bridge_27_22_28_22) (bridge_17_26_18_26) (bridge_7_21_7_22) (bridge_6_15_7_15) (bridge_6_31_7_31) (bridge_30_2_30_3) (bridge_0_26_0_27) (bridge_1_30_1_31) (bridge_26_27_26_28) (bridge_3_16_3_17) (bridge_24_12_25_12) (bridge_22_12_22_13) (bridge_12_3_13_3) (bridge_12_8_13_8) (bridge_17_3_18_3) (bridge_1_27_2_27) (bridge_4_11_4_12) (bridge_4_24_4_25) (bridge_2_16_2_17) (bridge_17_25_18_25) (bridge_12_12_12_13) (bridge_6_12_6_13) (bridge_5_3_5_4) (bridge_25_8_25_9) (bridge_11_18_12_18) (bridge_18_24_18_25) (bridge_24_7_24_8) (bridge_25_14_26_14) (bridge_28_25_29_25) (bridge_30_3_31_3) (bridge_21_18_22_18) (bridge_25_1_25_2) (bridge_18_15_19_15) (bridge_2_18_3_18) (bridge_4_9_5_9) (bridge_18_17_18_18) (bridge_11_14_11_15) (bridge_26_31_27_31) (bridge_12_17_12_18) (bridge_22_24_23_24) (bridge_21_24_22_24) (bridge_3_27_3_28) (bridge_24_0_25_0) (bridge_11_5_12_5) (bridge_24_11_24_12) (bridge_9_28_10_28) (bridge_29_9_30_9) (bridge_5_13_5_14) (bridge_24_20_25_20) (bridge_13_9_13_10) (bridge_6_29_7_29) (bridge_4_27_5_27) (bridge_30_26_31_26) (bridge_26_11_26_12) (bridge_20_13_20_14) (bridge_4_1_5_1) (bridge_28_23_28_24) (bridge_30_5_30_6) (bridge_20_26_21_26) (bridge_6_23_7_23) (bridge_13_31_14_31) (bridge_0_18_1_18) (bridge_14_4_15_4) (bridge_24_3_25_3) (bridge_8_13_8_14) (bridge_22_22_22_23) (bridge_5_8_5_9) (bridge_1_7_2_7) (bridge_18_1_19_1) (bridge_27_12_28_12) (bridge_27_23_27_24) (bridge_27_28_28_28) (bridge_5_22_6_22) (bridge_23_18_24_18) (bridge_15_28_16_28) (bridge_30_1_31_1) (bridge_1_12_2_12) (bridge_6_23_6_24) (bridge_8_11_9_11) (bridge_19_29_19_30) (bridge_11_25_12_25) (bridge_20_20_21_20) (bridge_15_13_16_13) (bridge_0_22_0_23) (bridge_13_5_13_6) (bridge_20_12_20_13) (bridge_3_6_4_6) (bridge_16_5_16_6) (bridge_0_20_0_21) (bridge_26_25_26_26) (bridge_30_30_31_30) (bridge_20_28_20_29) (bridge_9_25_9_26) (bridge_27_9_28_9) (bridge_15_2_16_2) (bridge_24_26_24_27) (bridge_15_4_15_5) (bridge_8_23_8_24) (bridge_24_10_24_11) (bridge_3_2_3_3) (bridge_4_15_5_15) (bridge_0_23_0_24) (bridge_25_17_25_18) (bridge_9_23_9_24) (bridge_21_23_21_24) (bridge_19_15_20_15) (bridge_13_17_14_17) (bridge_22_27_22_28) (bridge_8_15_8_16) (bridge_2_12_3_12) (bridge_4_22_5_22) (bridge_27_30_27_31) (bridge_10_22_11_22) (bridge_21_12_22_12) (bridge_7_31_8_31) (bridge_8_19_9_19) (bridge_20_11_21_11) (bridge_6_29_6_30) (bridge_24_31_25_31) (bridge_12_7_12_8) (bridge_2_25_3_25) (bridge_15_28_15_29) (bridge_25_31_26_31) (bridge_20_0_20_1) (bridge_12_28_12_29) (bridge_30_0_30_1) (bridge_25_2_25_3) (bridge_11_0_11_1) (bridge_13_20_13_21) (bridge_0_9_1_9) (bridge_20_19_20_20) (bridge_24_1_25_1) (bridge_1_21_1_22) (bridge_6_27_6_28) (bridge_30_21_31_21) (bridge_24_18_25_18) (bridge_10_11_10_12) (bridge_24_13_24_14) (bridge_9_16_9_17) (bridge_6_3_6_4) (bridge_2_14_2_15) (bridge_28_12_28_13) (bridge_1_6_2_6) (bridge_3_19_3_20) (bridge_10_18_11_18) (bridge_11_1_12_1) (bridge_3_1_4_1) (bridge_19_10_20_10) (bridge_15_1_16_1) (bridge_11_9_12_9) (bridge_13_18_13_19) (bridge_0_29_0_30) (bridge_11_3_11_4) (bridge_22_14_23_14) (bridge_14_22_14_23) (bridge_3_31_4_31) (bridge_10_12_11_12) (bridge_13_6_14_6) (bridge_20_15_21_15) (bridge_20_4_20_5) (bridge_22_25_22_26) (bridge_1_15_1_16) (bridge_23_28_23_29) (bridge_26_5_27_5) (bridge_1_8_1_9) (bridge_30_8_31_8) (bridge_29_6_29_7) (bridge_8_5_8_6) (bridge_19_12_20_12) (bridge_8_22_8_23) (bridge_12_26_12_27) (bridge_23_7_24_7) (bridge_16_3_16_4) (bridge_21_2_22_2) (bridge_24_29_25_29) (bridge_20_29_21_29) (bridge_26_25_27_25) (bridge_15_19_15_20) (bridge_23_21_24_21) (bridge_3_17_4_17) (bridge_2_8_2_9) (bridge_22_21_23_21) (bridge_0_5_1_5) (bridge_12_12_13_12) (bridge_10_10_10_11) (bridge_7_1_7_2) (bridge_29_1_29_2) (bridge_18_10_18_11) (bridge_14_23_15_23) (bridge_29_12_30_12) (bridge_27_27_27_28) (bridge_15_12_15_13) (bridge_23_27_23_28) (bridge_4_25_4_26) (bridge_8_0_9_0) (bridge_6_8_7_8) (bridge_7_12_7_13) (bridge_16_15_16_16) (bridge_8_16_8_17) (bridge_20_2_21_2) (bridge_14_23_14_24) (bridge_28_19_29_19) (bridge_5_4_5_5) (bridge_14_22_15_22) (bridge_1_16_2_16) (bridge_13_19_13_20) (bridge_3_12_4_12) (bridge_30_12_31_12) (bridge_26_18_26_19) (bridge_23_26_23_27) (bridge_9_13_10_13) (bridge_1_26_1_27) (bridge_5_18_6_18) (bridge_0_15_0_16) (bridge_20_9_20_10) (bridge_19_6_19_7) (bridge_22_5_22_6) (bridge_9_9_9_10) (bridge_17_18_17_19) (bridge_14_24_15_24) (bridge_12_1_12_2) (bridge_13_21_14_21) (bridge_29_25_29_26) (bridge_28_5_29_5) (bridge_11_21_12_21) (bridge_0_5_0_6) (bridge_21_14_21_15) (bridge_26_17_26_18) (bridge_18_11_19_11) (bridge_27_0_27_1) (bridge_16_1_16_2) (bridge_2_0_2_1) (bridge_0_18_0_19) (bridge_26_6_26_7) (bridge_19_22_20_22) (bridge_19_14_20_14) (bridge_16_8_16_9) (bridge_14_20_15_20) (bridge_6_17_7_17) (bridge_30_11_30_12) (bridge_7_9_8_9) (bridge_6_28_7_28) (bridge_27_24_27_25) (bridge_21_22_22_22) (bridge_0_21_0_22) (bridge_18_22_18_23) (bridge_11_7_11_8) (bridge_3_25_4_25) (bridge_14_5_14_6) (bridge_0_9_0_10) (bridge_2_21_3_21) (bridge_2_5_2_6) (bridge_22_23_23_23) (bridge_24_24_24_25) (bridge_14_0_15_0) (bridge_18_14_18_15) (bridge_30_7_31_7) (bridge_10_3_11_3) (bridge_28_20_29_20) (bridge_15_0_16_0) (bridge_2_27_2_28) (bridge_27_7_27_8) (bridge_22_18_22_19) (bridge_14_12_14_13) (bridge_3_11_4_11) (bridge_11_20_12_20) (bridge_18_31_19_31) (bridge_7_0_7_1) (bridge_9_5_10_5) (bridge_29_26_29_27) (bridge_13_3_13_4) (bridge_4_2_5_2) (bridge_10_4_10_5) (bridge_28_10_29_10) (bridge_25_0_26_0) (bridge_21_22_21_23) (bridge_28_8_28_9) (bridge_21_18_21_19) (bridge_29_2_29_3) (bridge_0_0_1_0) (bridge_14_18_14_19) (bridge_3_9_3_10) (bridge_9_23_10_23) (bridge_22_6_23_6) (bridge_11_13_12_13) (bridge_29_30_30_30) (bridge_27_13_28_13) (bridge_4_17_4_18) (bridge_1_23_1_24) (bridge_17_21_17_22) (bridge_21_9_21_10) (bridge_22_18_23_18) (bridge_23_0_24_0) (bridge_31_1_31_2) (bridge_28_2_29_2) (bridge_12_23_13_23) (bridge_15_10_15_11) (bridge_22_31_23_31) (bridge_19_1_19_2) (bridge_11_10_12_10) (bridge_28_3_28_4) (bridge_31_3_31_4) (bridge_0_2_0_3) (bridge_22_2_22_3) (bridge_30_23_31_23) (bridge_2_10_2_11) (bridge_19_4_19_5) (bridge_17_2_18_2) (bridge_28_24_29_24) (bridge_15_20_15_21) (bridge_23_13_23_14) (bridge_10_6_11_6) (bridge_28_13_28_14) (bridge_4_28_5_28) (bridge_5_21_5_22) (bridge_7_22_7_23) (bridge_9_6_10_6) (bridge_27_10_27_11) (bridge_9_8_9_9) (bridge_27_30_28_30) (bridge_8_10_8_11) (bridge_20_23_20_24) (bridge_19_7_20_7) (bridge_11_2_11_3) (bridge_1_1_1_2) (bridge_3_7_4_7) (bridge_22_3_23_3) (bridge_28_16_29_16) (bridge_8_14_9_14) (bridge_24_8_25_8) (bridge_21_19_22_19) (bridge_16_14_16_15) (bridge_22_15_22_16) (bridge_0_1_0_2) (bridge_24_28_25_28) (bridge_25_20_25_21) (bridge_19_7_19_8) (bridge_19_5_20_5) (bridge_28_27_29_27) (bridge_17_6_17_7) (bridge_20_28_21_28) (bridge_17_4_18_4) (bridge_24_10_25_10) (bridge_3_28_3_29) (bridge_21_21_22_21) (bridge_17_5_17_6) (bridge_24_23_25_23) (bridge_29_20_30_20) (bridge_19_4_20_4) (bridge_9_7_10_7) (bridge_1_5_2_5) (bridge_14_26_14_27) (bridge_31_6_31_7) (bridge_4_23_5_23) (bridge_24_9_25_9) (bridge_6_24_6_25) (bridge_7_10_7_11) (bridge_20_1_20_2) (bridge_26_9_27_9) (bridge_1_18_1_19) (bridge_12_16_12_17) (bridge_1_12_1_13) (bridge_13_12_14_12) (bridge_25_24_26_24) (bridge_0_13_0_14) (bridge_2_1_2_2) (bridge_6_2_6_3) (bridge_31_16_31_17) (bridge_11_28_11_29) (bridge_27_11_27_12) (bridge_25_15_26_15) (bridge_11_12_11_13) (bridge_27_23_28_23) (bridge_1_18_2_18) (bridge_0_24_0_25) (bridge_3_21_3_22) (bridge_30_16_30_17) (bridge_28_7_29_7) (bridge_25_5_25_6) (bridge_30_1_30_2) (bridge_7_5_7_6) (bridge_18_18_19_18) (bridge_16_22_16_23) (bridge_15_3_15_4) (bridge_28_18_28_19) (bridge_29_9_29_10) (bridge_18_10_19_10) (bridge_15_8_15_9) (bridge_4_26_5_26) (bridge_19_27_19_28) (bridge_22_3_22_4) (bridge_15_30_16_30) (bridge_16_2_16_3) (bridge_2_7_2_8) (bridge_3_26_3_27) (bridge_29_27_29_28) (bridge_6_13_6_14) (bridge_29_15_30_15) (bridge_27_9_27_10) (bridge_3_28_4_28) (bridge_2_27_3_27) (bridge_26_1_27_1) (bridge_0_4_1_4) (bridge_1_4_2_4) (bridge_9_21_9_22) (bridge_7_12_8_12) (bridge_8_15_9_15) (bridge_17_22_17_23) (bridge_12_21_12_22) (bridge_6_6_6_7) (bridge_22_9_23_9) (bridge_3_10_4_10) (bridge_16_19_17_19) (bridge_13_30_14_30) (bridge_11_4_11_5) (bridge_10_18_10_19) (bridge_3_8_4_8) (bridge_29_21_30_21) (bridge_4_26_4_27) (bridge_29_19_30_19) (bridge_14_9_15_9) (bridge_23_6_23_7) (bridge_5_7_5_8) (bridge_22_4_23_4) (bridge_16_19_16_20) (bridge_29_23_30_23) (bridge_23_4_24_4) (bridge_19_9_20_9) (bridge_31_4_31_5) (bridge_25_13_25_14) (bridge_11_18_11_19) (bridge_4_8_5_8) (bridge_18_16_18_17) (bridge_18_2_19_2) (bridge_16_25_16_26) (bridge_8_6_8_7) (bridge_7_25_7_26) (bridge_23_11_23_12) (bridge_12_30_12_31) (bridge_6_5_6_6) (bridge_9_13_9_14) (bridge_15_29_15_30) (bridge_15_27_16_27) (bridge_13_23_14_23) (bridge_6_20_7_20) (bridge_11_22_12_22) (bridge_4_11_5_11) (bridge_26_13_27_13) (bridge_5_11_5_12) (bridge_21_8_22_8) (bridge_3_3_3_4) (bridge_7_19_8_19) (bridge_18_19_18_20) (bridge_22_20_22_21) (bridge_17_12_18_12) (bridge_8_23_9_23) (bridge_7_4_8_4) (bridge_7_24_8_24) (bridge_26_15_27_15) (bridge_17_17_17_18) (bridge_25_0_25_1) (bridge_8_10_9_10) (bridge_13_28_14_28) (bridge_28_30_28_31) (bridge_20_22_21_22) (bridge_20_8_21_8) (bridge_10_4_11_4) (bridge_12_14_13_14) (bridge_7_19_7_20) (bridge_5_2_5_3) (bridge_2_10_3_10) (bridge_14_6_15_6) (bridge_7_23_8_23) (bridge_3_21_4_21) (bridge_27_4_27_5) (bridge_18_8_19_8) (bridge_9_14_10_14) (bridge_25_3_25_4) (bridge_3_25_3_26) (bridge_8_12_8_13) (bridge_20_9_21_9) (bridge_18_5_18_6) (bridge_2_3_3_3) (bridge_12_18_13_18) (bridge_29_22_29_23) (bridge_14_18_15_18) (bridge_14_0_14_1) (bridge_9_4_10_4) (bridge_18_12_18_13) (bridge_25_20_26_20) (bridge_24_26_25_26) (bridge_21_0_22_0) (bridge_8_0_8_1) (bridge_29_1_30_1) (bridge_19_17_19_18) (bridge_11_14_12_14) (bridge_26_30_27_30) (bridge_24_2_24_3) (bridge_2_18_2_19) (bridge_18_20_18_21) (bridge_23_23_23_24) (bridge_0_30_0_31) (bridge_18_13_18_14) (bridge_18_30_18_31) (bridge_11_29_11_30) (bridge_18_22_19_22) (bridge_29_18_30_18) (bridge_26_8_26_9) (bridge_27_16_28_16) (bridge_10_11_11_11) (bridge_11_23_12_23) (bridge_21_7_22_7) (bridge_17_15_17_16) (bridge_21_26_21_27) (bridge_1_16_1_17) (bridge_11_16_12_16) (bridge_5_3_6_3) (bridge_9_19_9_20) (bridge_14_31_15_31) (bridge_15_19_16_19) (bridge_10_16_10_17) (bridge_23_23_24_23) (bridge_24_7_25_7) (bridge_7_30_8_30) (bridge_9_17_10_17) (bridge_31_10_31_11) (bridge_18_17_19_17) (bridge_16_5_17_5) (bridge_28_22_28_23) (bridge_25_1_26_1) (bridge_29_10_30_10) (bridge_15_0_15_1) (bridge_30_3_30_4) (bridge_5_20_5_21) (bridge_25_22_25_23) (bridge_1_2_2_2) (bridge_30_24_31_24) (bridge_10_23_10_24) (bridge_19_15_19_16) (bridge_6_12_7_12) (bridge_21_24_21_25) (bridge_19_2_20_2) (bridge_20_26_20_27) (bridge_14_16_15_16) (bridge_26_2_27_2) (bridge_24_19_25_19) (bridge_4_1_4_2) (bridge_5_28_6_28) (bridge_17_19_18_19) (bridge_22_2_23_2) (bridge_6_30_6_31) (bridge_18_20_19_20) (bridge_14_7_15_7) (bridge_24_16_25_16) (bridge_8_29_8_30) (bridge_0_26_1_26) (bridge_17_8_18_8) (bridge_31_2_31_3) (bridge_8_26_9_26) (bridge_21_9_22_9) (bridge_27_19_28_19) (bridge_30_2_31_2) (bridge_13_17_13_18) (bridge_14_3_14_4) (bridge_24_3_24_4) (bridge_31_24_31_25) (bridge_27_25_27_26) (bridge_7_21_8_21) (bridge_19_3_20_3) (bridge_20_30_21_30) (bridge_27_17_28_17) (bridge_21_10_22_10) (bridge_21_14_22_14) (bridge_1_7_1_8) (bridge_9_9_10_9) (bridge_11_3_12_3) (bridge_9_10_10_10) (bridge_5_19_5_20) (bridge_25_18_25_19) (bridge_9_26_9_27) (bridge_7_11_7_12) (bridge_12_11_12_12) (bridge_24_25_24_26) (bridge_1_29_2_29) (bridge_19_16_19_17) (bridge_31_19_31_20) (bridge_0_23_1_23) (bridge_23_26_24_26) (bridge_18_27_18_28) (bridge_3_6_3_7) (bridge_16_23_16_24) (bridge_6_9_6_10) (bridge_24_17_24_18) (bridge_15_17_15_18) (bridge_28_6_29_6) (bridge_3_24_3_25) (bridge_22_16_23_16) (bridge_22_22_23_22) (bridge_4_25_5_25) (bridge_3_2_4_2) (bridge_6_19_6_20) (bridge_25_15_25_16) (bridge_27_15_28_15) (bridge_13_26_14_26) (bridge_24_1_24_2) (bridge_0_7_1_7) (bridge_31_13_31_14) (bridge_5_6_5_7) (bridge_22_17_22_18) (bridge_16_17_16_18) (bridge_11_25_11_26) (bridge_15_26_15_27) (bridge_6_14_7_14) (bridge_15_27_15_28) (bridge_4_30_5_30) (bridge_31_5_31_6) (bridge_30_9_30_10) (bridge_9_0_10_0) (bridge_4_20_5_20) (bridge_30_5_31_5) (bridge_30_20_31_20) (bridge_20_25_21_25) (bridge_31_28_31_29) (bridge_9_26_10_26) (bridge_13_19_14_19) (bridge_20_11_20_12) (bridge_15_14_15_15) (bridge_14_10_14_11) (bridge_29_16_30_16) (bridge_10_12_10_13) (bridge_18_28_18_29) (bridge_16_30_16_31) (bridge_15_18_16_18) (bridge_25_16_26_16) (bridge_27_29_27_30) (bridge_26_3_27_3) (bridge_8_21_8_22) (bridge_12_6_13_6) (bridge_13_12_13_13) (bridge_21_20_22_20) (bridge_2_9_2_10) (bridge_9_27_10_27) (bridge_19_21_19_22) (bridge_25_11_25_12) (bridge_27_11_28_11) (bridge_20_22_20_23) (bridge_7_17_7_18) (bridge_17_2_17_3) (bridge_22_13_22_14) (bridge_25_4_25_5) (bridge_20_0_21_0) (bridge_24_27_24_28) (bridge_27_2_27_3) (bridge_10_20_10_21) (bridge_30_28_31_28) (bridge_21_27_21_28) (bridge_27_5_27_6) (bridge_9_2_9_3) (bridge_1_31_2_31) (bridge_4_12_4_13) (bridge_8_19_8_20) (bridge_19_23_19_24) (bridge_2_6_2_7) (bridge_29_7_29_8) (bridge_9_29_9_30) (bridge_7_9_7_10) (bridge_2_17_2_18) (bridge_21_12_21_13) (bridge_20_29_20_30) (bridge_19_14_19_15) (bridge_28_8_29_8) (bridge_4_9_4_10) (bridge_29_26_30_26) (bridge_18_21_19_21) (bridge_0_29_1_29) (bridge_2_0_3_0) (bridge_29_3_29_4) (bridge_18_3_19_3) (bridge_13_8_14_8) (bridge_22_7_23_7) (bridge_8_20_9_20) (bridge_3_10_3_11) (bridge_7_11_8_11) (bridge_31_30_31_31) (bridge_9_11_10_11) (bridge_8_11_8_12) (bridge_21_5_21_6) (bridge_21_30_21_31) (bridge_14_27_14_28) (bridge_12_9_13_9) (bridge_15_29_16_29) (bridge_27_28_27_29) (bridge_16_6_16_7) (bridge_13_29_14_29) (bridge_23_13_24_13) (bridge_12_30_13_30) (bridge_28_19_28_20) (bridge_24_30_24_31) (bridge_5_28_5_29) (bridge_12_10_13_10) (bridge_27_31_28_31) (bridge_27_7_28_7) (bridge_23_12_23_13) (bridge_1_21_2_21) (bridge_12_7_13_7) (bridge_12_2_12_3) (bridge_22_19_22_20) (bridge_15_16_15_17) (bridge_20_12_21_12) (bridge_23_25_24_25) (bridge_17_20_17_21) (bridge_9_16_10_16) (bridge_17_27_17_28) (bridge_20_10_21_10) (bridge_9_30_9_31) (bridge_23_19_23_20) (bridge_11_30_11_31) (bridge_25_28_26_28) (bridge_14_3_15_3) (bridge_30_27_31_27) (bridge_8_8_9_8) (bridge_9_8_10_8) (bridge_17_20_18_20) (bridge_30_22_30_23) (bridge_28_11_28_12) (bridge_5_0_5_1) (bridge_5_17_5_18) (bridge_28_5_28_6) (bridge_19_22_19_23) (bridge_20_17_21_17) (bridge_27_5_28_5) (bridge_15_25_16_25) (bridge_3_4_3_5) (bridge_15_1_15_2) (bridge_17_12_17_13) (bridge_23_11_24_11) (bridge_12_20_13_20) (bridge_27_21_27_22) (bridge_3_19_4_19) (bridge_28_0_29_0) (bridge_16_3_17_3) (bridge_2_22_2_23) (bridge_9_28_9_29) (bridge_21_29_21_30) (bridge_12_22_13_22) (bridge_26_6_27_6) (bridge_8_5_9_5) (bridge_30_8_30_9) (bridge_25_6_25_7) (bridge_23_30_23_31) (bridge_29_30_29_31) (bridge_2_30_3_30) (bridge_12_6_12_7) (bridge_5_1_6_1) (bridge_11_7_12_7) (bridge_7_8_8_8) (bridge_24_6_24_7) (bridge_8_17_8_18) (bridge_17_23_18_23) (bridge_12_17_13_17) (bridge_17_17_18_17) (bridge_3_5_4_5) (bridge_23_3_24_3) (bridge_4_0_5_0) (bridge_15_7_16_7) (bridge_29_31_30_31) (bridge_2_4_2_5) (bridge_2_20_2_21) (bridge_1_26_2_26) (bridge_20_7_20_8) (bridge_18_6_18_7) (bridge_10_2_10_3) (bridge_0_2_1_2) (bridge_17_16_18_16) (bridge_21_4_22_4) (bridge_30_25_31_25) (bridge_14_12_15_12) (bridge_12_19_13_19) (bridge_30_4_30_5) (bridge_4_23_4_24) (bridge_18_24_19_24) (bridge_7_14_8_14) (bridge_14_6_14_7) (bridge_16_7_17_7) (bridge_4_4_5_4) (bridge_7_27_7_28) (bridge_19_5_19_6) (bridge_23_24_23_25) (bridge_16_21_16_22) (bridge_7_18_7_19) (bridge_16_2_17_2) (bridge_22_23_22_24) (bridge_4_13_5_13) (bridge_7_4_7_5) (bridge_8_17_9_17) (bridge_6_19_7_19) (bridge_19_26_20_26) (bridge_16_25_17_25) (bridge_9_19_10_19) (bridge_24_12_24_13) (bridge_25_27_25_28) (bridge_5_11_6_11) (bridge_25_9_25_10) (bridge_7_8_7_9) (bridge_28_16_28_17) (bridge_21_13_21_14) (bridge_29_4_30_4) (bridge_20_4_21_4) (bridge_5_17_6_17) (bridge_18_25_19_25) (bridge_11_10_11_11) (bridge_17_7_18_7) (bridge_26_16_27_16) (bridge_6_11_7_11) (bridge_29_8_30_8) (bridge_23_0_23_1) (bridge_3_18_4_18) (bridge_19_31_20_31) (bridge_9_15_9_16) (bridge_19_11_20_11) (bridge_27_20_27_21) (bridge_14_25_14_26) (bridge_28_23_29_23) (bridge_27_26_27_27) (bridge_23_22_23_23) (bridge_0_11_1_11) (bridge_14_5_15_5) (bridge_27_25_28_25) (bridge_24_17_25_17) (bridge_11_19_11_20) (bridge_11_4_12_4) (bridge_21_0_21_1) (bridge_26_4_26_5) (bridge_0_12_0_13) (bridge_2_20_3_20) (bridge_4_3_4_4) (bridge_17_21_18_21) (bridge_13_3_14_3) (bridge_0_22_1_22) (bridge_10_13_10_14) (bridge_13_24_14_24) (bridge_30_14_30_15) (bridge_27_19_27_20) (bridge_10_25_11_25) (bridge_24_23_24_24) (bridge_17_15_18_15) (bridge_1_10_1_11) (bridge_2_26_2_27) (bridge_23_16_23_17) (bridge_22_27_23_27) (bridge_10_21_11_21) (bridge_29_29_30_29) (bridge_10_29_10_30) (bridge_0_0_0_1) (bridge_11_13_11_14) (bridge_17_26_17_27) (bridge_9_5_9_6) (bridge_21_2_21_3) (bridge_13_10_13_11) (bridge_28_1_29_1) (bridge_15_9_15_10) (bridge_18_7_19_7) (bridge_14_29_15_29) (bridge_1_30_2_30) (bridge_20_21_21_21) (bridge_28_7_28_8) (bridge_24_8_24_9) (bridge_0_16_1_16) (bridge_21_19_21_20) (bridge_16_31_17_31) (bridge_13_1_13_2) (bridge_13_6_13_7) (bridge_1_10_2_10) (bridge_13_9_14_9) (bridge_10_1_10_2) (bridge_20_1_21_1) (bridge_26_19_26_20) (bridge_26_12_26_13) (bridge_5_24_6_24) (bridge_15_23_16_23) (bridge_11_8_11_9) (bridge_26_9_26_10) (bridge_21_11_21_12) (bridge_2_1_3_1) (bridge_4_29_4_30) (bridge_24_25_25_25) (bridge_22_8_23_8) (bridge_9_20_9_21) (bridge_1_11_1_12) (bridge_23_24_24_24) (bridge_11_28_12_28) (bridge_10_30_11_30) (bridge_23_9_23_10) (bridge_6_5_7_5) (bridge_6_0_7_0) (bridge_4_7_5_7) (bridge_26_16_26_17) (bridge_16_22_17_22) (bridge_18_15_18_16) (bridge_2_24_3_24) (bridge_21_6_21_7) (bridge_12_25_12_26) (bridge_13_1_14_1) (bridge_3_20_4_20) (bridge_22_26_22_27) (bridge_2_17_3_17) (bridge_2_16_3_16) (bridge_19_11_19_12) (bridge_12_11_13_11) (bridge_1_11_2_11) (bridge_1_25_2_25) (bridge_0_1_1_1) (bridge_11_27_11_28) (bridge_14_30_15_30) (bridge_14_29_14_30) (bridge_18_18_18_19) (bridge_0_8_1_8) (bridge_4_6_4_7) (bridge_23_20_23_21) (bridge_13_13_13_14) (bridge_25_30_26_30) (bridge_17_29_17_30) (bridge_10_24_11_24) (bridge_15_3_16_3) (bridge_3_22_3_23) (bridge_30_29_30_30) (bridge_24_27_25_27) (bridge_1_1_2_1) (bridge_26_15_26_16) (bridge_10_30_10_31) (bridge_14_14_14_15) (bridge_19_19_19_20) (bridge_22_11_23_11) (bridge_25_28_25_29) (bridge_6_1_6_2) (bridge_10_15_10_16) (bridge_5_6_6_6) (bridge_3_9_4_9) (bridge_6_13_7_13) (bridge_0_7_0_8) (bridge_16_13_16_14) (bridge_10_6_10_7) (bridge_8_22_9_22) (bridge_12_31_13_31) (bridge_17_24_18_24) (bridge_18_21_18_22) (bridge_5_5_5_6) (bridge_0_15_1_15) (bridge_19_16_20_16) (bridge_14_17_15_17) (bridge_18_23_19_23) (bridge_11_11_11_12) (bridge_16_10_16_11) (bridge_0_13_1_13) (bridge_30_19_31_19) (bridge_28_12_29_12) (bridge_23_10_24_10) (bridge_6_20_6_21) (bridge_11_17_11_18) (bridge_13_22_13_23) (bridge_1_13_1_14) (bridge_28_29_28_30) (bridge_11_29_12_29) (bridge_7_5_8_5) (bridge_11_23_11_24) (bridge_2_15_3_15) (bridge_1_4_1_5) (bridge_3_13_3_14) (bridge_12_0_12_1) (bridge_26_0_27_0) (bridge_0_4_0_5) (bridge_22_21_22_22) (bridge_29_13_29_14) (bridge_0_19_1_19) (bridge_28_10_28_11) (bridge_12_21_13_21) (bridge_21_4_21_5) (bridge_20_6_21_6) (bridge_31_0_31_1) (bridge_2_23_2_24) (bridge_14_25_15_25) (bridge_5_7_6_7) (bridge_12_18_12_19) (bridge_19_13_19_14) (bridge_1_20_2_20) (bridge_30_21_30_22) (bridge_28_20_28_21) (bridge_9_3_9_4) (bridge_8_31_9_31) (bridge_7_14_7_15) (bridge_19_27_20_27) (bridge_10_0_10_1) (bridge_2_28_2_29) (bridge_3_15_3_16) (bridge_1_14_2_14) (bridge_26_14_27_14) (bridge_15_6_15_7) (bridge_19_8_19_9) (bridge_1_9_1_10) (bridge_20_13_21_13) (bridge_23_15_23_16) (bridge_24_16_24_17) (bridge_29_15_29_16) (bridge_15_31_16_31) (bridge_3_24_4_24) (bridge_24_19_24_20) (bridge_5_16_6_16) (bridge_4_10_4_11) (bridge_26_30_26_31) (bridge_17_19_17_20) (bridge_23_17_23_18) (bridge_5_15_6_15) (bridge_8_6_9_6) (bridge_23_5_24_5) (bridge_3_16_4_16) (bridge_13_0_13_1) (bridge_4_16_5_16) (bridge_4_27_4_28) (bridge_17_13_18_13) (bridge_19_28_20_28) (bridge_0_25_1_25) (bridge_14_11_14_12) (bridge_6_17_6_18) (bridge_28_6_28_7) (bridge_24_4_24_5) (bridge_14_13_14_14) (bridge_14_8_15_8) (bridge_20_2_20_3) (bridge_27_3_28_3) (bridge_16_26_17_26) (bridge_30_24_30_25) (bridge_2_3_2_4) (bridge_12_2_13_2) (bridge_2_31_3_31) (bridge_17_11_17_12) (bridge_19_0_19_1) (bridge_26_18_27_18) (bridge_25_25_26_25) (bridge_4_16_4_17) (bridge_17_30_17_31) (bridge_16_28_16_29) (bridge_5_23_6_23) (bridge_11_8_12_8) (bridge_27_1_28_1) (bridge_5_24_5_25) (bridge_14_2_15_2) (bridge_8_26_8_27) (bridge_8_9_9_9) (bridge_26_8_27_8) (bridge_23_8_24_8) (bridge_25_26_25_27) (bridge_22_15_23_15) (bridge_11_9_11_10) (bridge_30_17_31_17) (bridge_19_3_19_4) (bridge_11_24_12_24) (bridge_4_17_5_17) (bridge_5_25_6_25) (bridge_0_14_1_14) (bridge_2_19_3_19) (bridge_27_18_28_18) (bridge_17_9_18_9) (bridge_24_5_25_5) (bridge_22_17_23_17) (bridge_7_10_8_10) (bridge_18_9_18_10) (bridge_14_17_14_18) (bridge_3_11_3_12) (bridge_27_29_28_29) (bridge_3_1_3_2) (bridge_1_2_1_3) (bridge_26_23_26_24) (bridge_16_14_17_14) (bridge_31_25_31_26) (bridge_14_10_15_10) (bridge_2_14_3_14) (bridge_29_21_29_22) (bridge_18_4_19_4) (bridge_7_26_7_27) (bridge_23_22_24_22) (bridge_16_1_17_1) (bridge_17_10_17_11) (bridge_24_21_24_22) (bridge_6_6_7_6) (bridge_14_26_15_26) (bridge_1_9_2_9) (bridge_10_26_10_27) (bridge_6_24_7_24) (bridge_10_29_11_29) (bridge_19_25_19_26) (bridge_15_26_16_26) (bridge_6_10_7_10) (bridge_23_18_23_19) (bridge_5_25_5_26) (bridge_30_28_30_29) (bridge_29_14_30_14) (bridge_4_5_5_5) (bridge_30_15_31_15) (bridge_20_30_20_31) (bridge_26_24_26_25) (bridge_31_18_31_19) (bridge_13_13_14_13) (bridge_28_21_29_21) (bridge_17_13_17_14) (bridge_15_23_15_24) (bridge_13_7_14_7) (bridge_17_29_18_29) (bridge_25_7_25_8) (bridge_8_27_9_27) (bridge_12_10_12_11) (bridge_10_9_11_9) (bridge_9_20_10_20) (bridge_19_8_20_8) (bridge_5_30_5_31) (bridge_11_27_12_27) (bridge_13_14_13_15) (bridge_15_4_16_4) (bridge_12_25_13_25) (bridge_30_9_31_9) (bridge_27_1_27_2) (bridge_10_9_10_10) (bridge_25_21_25_22) (bridge_20_27_21_27) (bridge_16_16_16_17) (bridge_5_29_6_29) (bridge_12_16_13_16) (bridge_23_2_24_2) (bridge_8_2_9_2) (bridge_9_6_9_7) (bridge_14_19_15_19) (bridge_22_19_23_19) (bridge_18_26_19_26) (bridge_8_30_9_30) (bridge_2_6_3_6) (bridge_22_30_22_31) (bridge_6_7_7_7) (bridge_10_26_11_26) (bridge_18_7_18_8) (bridge_22_28_22_29) (bridge_20_16_20_17) (bridge_8_21_9_21) (bridge_5_27_6_27) (bridge_11_6_11_7) (bridge_15_11_15_12) (bridge_8_20_8_21) (bridge_26_13_26_14) (bridge_23_9_24_9) (bridge_29_2_30_2) (bridge_21_30_22_30) (bridge_1_19_1_20) (bridge_29_0_30_0) (bridge_7_15_7_16) (bridge_7_29_8_29) (bridge_4_10_5_10) (bridge_11_22_11_23) (bridge_21_5_22_5) (bridge_13_10_14_10) (bridge_9_30_10_30) (bridge_23_5_23_6) (bridge_15_7_15_8) (bridge_17_27_18_27) (bridge_2_9_3_9) (bridge_22_29_22_30) (bridge_16_23_17_23) (bridge_10_13_11_13) (bridge_26_3_26_4) (bridge_23_28_24_28) (bridge_31_11_31_12) (bridge_12_15_13_15) (bridge_10_28_11_28) (bridge_2_22_3_22) (bridge_7_27_8_27) (bridge_5_19_6_19) (bridge_21_3_21_4) (bridge_27_8_27_9) (bridge_25_4_26_4) (bridge_22_10_22_11) (bridge_2_11_3_11) (bridge_5_0_6_0) (bridge_9_27_9_28) (bridge_27_2_28_2) (bridge_11_31_12_31) (bridge_8_8_8_9) (bridge_12_26_13_26) (bridge_0_31_1_31) (bridge_29_18_29_19) (bridge_13_4_14_4) (bridge_22_1_23_1) (bridge_6_25_7_25) (bridge_9_18_10_18) (bridge_22_10_23_10) (bridge_31_23_31_24) (bridge_7_6_8_6) (bridge_4_31_5_31) (bridge_19_6_20_6) (bridge_7_2_7_3) (bridge_26_12_27_12) (bridge_14_28_14_29) (bridge_28_22_29_22) (bridge_3_30_4_30) (bridge_3_4_4_4) (bridge_14_1_14_2) (bridge_3_14_3_15) (bridge_27_14_27_15) (bridge_11_26_12_26) (bridge_27_22_27_23) (bridge_28_11_29_11) (bridge_24_4_25_4) (bridge_2_13_2_14) (bridge_13_8_13_9) (bridge_25_10_25_11) (bridge_30_10_31_10) (bridge_22_7_22_8) (bridge_9_11_9_12) (bridge_9_31_10_31) (bridge_18_3_18_4) (bridge_25_27_26_27) (bridge_30_6_30_7) (bridge_5_1_5_2) (bridge_17_1_17_2) (bridge_25_6_26_6) (bridge_1_28_1_29) (bridge_3_5_3_6) (bridge_9_1_9_2) (bridge_2_21_2_22) (bridge_15_17_16_17) (bridge_24_6_25_6) (bridge_18_6_19_6) (bridge_10_2_11_2) (bridge_20_7_21_7) (bridge_16_6_17_6) (bridge_2_4_3_4) (bridge_23_3_23_4) (bridge_10_17_11_17) (bridge_4_0_4_1) (bridge_3_0_3_1) (bridge_5_26_6_26) (bridge_12_19_12_20) (bridge_8_4_9_4) (bridge_23_25_23_26) (bridge_13_11_13_12) (bridge_28_4_29_4) (bridge_10_23_11_23) (bridge_6_16_6_17) (bridge_16_7_16_8) (bridge_4_4_4_5) (bridge_4_19_4_20) (bridge_30_25_30_26) (bridge_17_14_18_14) (bridge_21_15_22_15) (bridge_0_28_1_28) (bridge_8_7_9_7) (bridge_29_29_29_30) (bridge_30_4_31_4) (bridge_4_13_4_14) (bridge_1_27_1_28) (bridge_25_29_26_29) (bridge_2_2_3_2) (bridge_15_10_16_10) (bridge_13_24_13_25) (bridge_28_25_28_26) (bridge_20_5_20_6) (bridge_14_11_15_11) (bridge_31_8_31_9) (bridge_16_12_17_12) (bridge_28_1_28_2) (bridge_4_20_4_21) (bridge_15_5_16_5) (bridge_0_6_0_7) (bridge_25_12_25_13) (bridge_28_14_28_15) (bridge_7_17_8_17) (bridge_19_18_20_18) (bridge_14_13_15_13) (bridge_26_27_27_27) (bridge_2_28_3_28) (bridge_18_29_18_30) (bridge_30_26_30_27) (bridge_16_4_16_5) (bridge_21_11_22_11) (bridge_11_15_12_15) (bridge_5_15_5_16) (bridge_4_30_4_31) (bridge_6_11_6_12) (bridge_26_11_27_11) (bridge_1_0_2_0) (bridge_21_29_22_29) (bridge_10_16_11_16) (bridge_15_22_16_22) (bridge_13_4_13_5) (bridge_14_9_14_10) (bridge_17_7_17_8) (bridge_6_30_7_30) (bridge_29_11_30_11) (bridge_18_13_19_13) (bridge_2_12_2_13) (bridge_12_24_13_24) (bridge_17_31_18_31) (bridge_13_29_13_30) (bridge_4_29_5_29) (bridge_17_16_17_17) (bridge_10_27_11_27) (bridge_26_22_27_22) (bridge_26_7_26_8) (bridge_7_18_8_18) (bridge_26_4_27_4) (bridge_28_28_28_29) (bridge_29_16_29_17) (bridge_3_23_3_24) (bridge_19_23_20_23) (bridge_9_15_10_15) (bridge_20_25_20_26) (bridge_20_10_20_11) (bridge_10_19_11_19) (bridge_11_11_12_11) (bridge_5_10_5_11) (bridge_6_21_7_21) (bridge_4_3_5_3) (bridge_25_19_26_19) (bridge_4_22_4_23) (bridge_22_0_22_1) (bridge_30_13_31_13) (bridge_15_9_16_9) (bridge_8_18_9_18) (bridge_10_14_10_15) (bridge_9_2_10_2) (bridge_25_19_25_20) (bridge_15_15_16_15) (bridge_0_24_1_24) (bridge_24_15_24_16) (bridge_3_26_4_26) (bridge_2_30_2_31) (bridge_14_21_15_21) (bridge_15_2_15_3) (bridge_2_29_3_29) (bridge_30_31_31_31) (bridge_5_26_5_27) (bridge_11_16_11_17) (bridge_16_29_16_30) (bridge_15_25_15_26) (bridge_20_24_21_24) (bridge_10_1_11_1) (bridge_5_9_5_10) (bridge_8_3_8_4) (bridge_3_18_3_19) (bridge_14_14_15_14) (bridge_14_15_14_16) (bridge_1_13_2_13) (bridge_18_30_19_30) (bridge_22_8_22_9) (bridge_1_24_2_24) (bridge_28_15_29_15) (bridge_3_27_4_27) (bridge_16_28_17_28) (bridge_21_23_22_23) (bridge_29_5_29_6) (bridge_4_8_4_9) (bridge_4_18_5_18) (bridge_10_19_10_20) (bridge_26_29_26_30) (bridge_18_2_18_3) (bridge_8_28_9_28) (bridge_21_31_22_31) (bridge_23_29_24_29) (bridge_22_30_23_30) (bridge_10_5_11_5) (bridge_10_7_11_7) (bridge_16_30_17_30) (bridge_12_20_12_21) (bridge_30_14_31_14) (bridge_22_14_22_15) (bridge_7_29_7_30) (bridge_11_24_11_25) (bridge_15_13_15_14) (bridge_22_28_23_28) (bridge_23_1_23_2) (bridge_21_6_22_6) (bridge_16_24_17_24) (bridge_6_0_6_1) (bridge_4_7_4_8) (bridge_0_27_1_27) (bridge_7_7_7_8) (bridge_8_25_8_26) (bridge_9_21_10_21) (bridge_6_9_7_9) (bridge_16_21_17_21) (bridge_23_20_24_20) (bridge_29_0_29_1) (bridge_7_3_7_4) (bridge_25_8_26_8) (bridge_0_8_0_9) (bridge_1_14_1_15) (bridge_28_15_28_16) (bridge_4_6_5_6) (bridge_6_4_7_4) (bridge_18_14_19_14) (bridge_8_24_8_25) (bridge_26_10_26_11) (bridge_12_13_12_14) (bridge_20_17_20_18) (bridge_19_0_20_0) (bridge_10_17_10_18) (bridge_11_21_11_22) (bridge_21_17_22_17) (bridge_18_4_18_5) (bridge_27_27_28_27) (bridge_4_12_5_12) (bridge_21_25_21_26) (bridge_6_1_7_1) (bridge_24_0_24_1) (bridge_21_1_21_2) (bridge_30_7_30_8) (bridge_26_7_27_7) (bridge_29_3_30_3) (bridge_8_9_8_10) (bridge_5_14_6_14) (bridge_10_0_11_0) (bridge_20_21_20_22) (bridge_6_25_6_26) (bridge_3_14_4_14) (bridge_29_4_29_5) (bridge_3_20_3_21) (bridge_26_19_27_19) (bridge_13_25_13_26) (bridge_15_14_16_14) (bridge_25_23_25_24) (bridge_29_24_29_25) (bridge_30_27_30_28) (bridge_7_24_7_25) (bridge_1_5_1_6) (bridge_5_5_6_5) (bridge_7_28_7_29) (bridge_17_28_17_29) (bridge_23_12_24_12) (bridge_16_20_17_20) (bridge_2_26_3_26) (bridge_20_3_20_4) (bridge_12_8_12_9) (bridge_9_14_9_15) (bridge_3_15_4_15) (bridge_30_19_30_20) (bridge_13_22_14_22) (bridge_29_17_30_17) (bridge_7_26_8_26) (bridge_23_27_24_27) (bridge_14_4_14_5) (bridge_13_18_14_18) (bridge_5_16_5_17) (bridge_0_16_0_17) (bridge_15_22_15_23) (bridge_20_5_21_5) (bridge_21_21_21_22) (bridge_2_23_3_23) (bridge_23_15_24_15) (bridge_28_9_29_9) (bridge_29_8_29_9) (bridge_7_20_7_21) (bridge_26_0_26_1) (bridge_9_24_9_25) (bridge_2_29_2_30) (bridge_11_12_12_12) (bridge_12_15_12_16) (bridge_12_0_13_0) (bridge_14_8_14_9) (bridge_5_23_5_24) (bridge_18_23_18_24) (bridge_20_6_20_7) (bridge_23_10_23_11) (bridge_17_0_18_0) (bridge_13_20_14_20) (bridge_19_28_19_29) (bridge_8_1_8_2) (bridge_19_29_20_29) (bridge_19_26_19_27) (bridge_24_22_25_22) (bridge_16_26_16_27) (bridge_1_15_2_15) (bridge_22_29_23_29) (bridge_16_9_16_10) (bridge_27_16_27_17) (bridge_16_24_16_25) (bridge_3_23_4_23) (bridge_18_19_19_19) (bridge_15_21_15_22) (bridge_14_28_15_28) (bridge_12_29_12_30) (bridge_19_13_20_13) (bridge_15_18_15_19) (bridge_16_9_17_9) (bridge_15_30_15_31) (bridge_26_10_27_10) (bridge_30_6_31_6) (bridge_13_21_13_22) (bridge_23_31_24_31) (bridge_17_18_18_18) (bridge_4_14_4_15) (bridge_11_30_12_30) (bridge_17_30_18_30) (bridge_16_12_16_13) (bridge_9_10_9_11) (bridge_28_14_29_14) (bridge_13_2_13_3) (bridge_30_10_30_11) (bridge_0_25_0_26) (bridge_3_29_3_30) (bridge_24_5_24_6) (bridge_23_19_24_19) (bridge_9_4_9_5) (bridge_31_12_31_13) (bridge_19_30_19_31) (bridge_3_22_4_22) (bridge_18_1_18_2) (bridge_25_16_25_17) (bridge_0_3_0_4) (bridge_24_21_25_21) (bridge_25_30_25_31) (bridge_17_9_17_10) (bridge_26_23_27_23) (bridge_14_30_14_31) (bridge_27_3_27_4) (bridge_31_21_31_22) (bridge_14_27_15_27) (bridge_1_23_2_23) (bridge_28_31_29_31) (bridge_16_13_17_13) (bridge_4_21_4_22) (bridge_29_28_30_28) (bridge_28_0_28_1) (bridge_27_6_28_6) (bridge_14_19_14_20) (bridge_1_3_2_3) (bridge_19_30_20_30) (bridge_4_21_5_21) (bridge_24_15_25_15) (bridge_19_25_20_25) (bridge_1_17_1_18) (bridge_29_5_30_5) (bridge_21_15_21_16) (bridge_27_15_27_16) (bridge_20_18_20_19) (bridge_1_22_1_23) (bridge_29_14_29_15) (bridge_27_26_28_26) (bridge_5_27_5_28) (bridge_6_10_6_11) (bridge_15_6_16_6) (bridge_16_0_17_0) (bridge_16_29_17_29) (bridge_9_12_10_12) (bridge_9_17_9_18) (bridge_28_26_29_26) (bridge_2_19_2_20) (bridge_22_12_23_12) (bridge_23_8_23_9) (bridge_3_30_3_31) (bridge_12_4_13_4) (bridge_26_26_26_27) (bridge_2_24_2_25) (bridge_26_29_27_29) (bridge_26_20_26_21) (bridge_25_29_25_30) (bridge_1_28_2_28) (bridge_17_3_17_4) (bridge_9_22_10_22) (bridge_27_18_27_19) (bridge_16_27_17_27) (bridge_18_28_19_28) (bridge_13_0_14_0) (bridge_12_3_12_4) (bridge_0_10_0_11) (bridge_25_11_26_11) (bridge_3_13_4_13) (bridge_23_2_23_3) (bridge_12_5_12_6) (bridge_19_1_20_1) (bridge_14_2_14_3) (bridge_21_28_22_28) (bridge_0_10_1_10) (bridge_6_22_6_23) (bridge_31_27_31_28) (bridge_30_30_30_31) (bridge_9_25_10_25) (bridge_19_21_20_21) (bridge_19_19_20_19) (bridge_13_5_14_5) (bridge_10_8_10_9) (bridge_22_11_22_12) (bridge_18_0_18_1) (bridge_6_8_6_9) (bridge_7_13_8_13) (bridge_5_13_6_13) (bridge_13_14_14_14) (bridge_30_17_30_18) (bridge_20_27_20_28) (bridge_24_30_25_30) (bridge_11_5_11_6) (bridge_4_5_4_6) (bridge_11_19_12_19) (bridge_25_17_26_17) (bridge_10_22_10_23) (bridge_13_27_14_27) (bridge_5_9_6_9)
 (holding_treasure_2) (holding_treasure_3) (holding_treasure_1))

(:action move_0_0_1_0
 :parameters ()
 :precondition (and (at_x0)(at_y0))
 :poss-precondition (and (bridge_0_0_1_0))
 :effect (and (not (at_x0)) (at_x1))
)

(:action move_0_0_0_1
 :parameters ()
 :precondition (and (at_x0)(at_y0))
 :poss-precondition (and (bridge_0_0_0_1))
 :effect (and (not (at_y0)) (at_y1))
)

(:action move_0_1_1_1
 :parameters ()
 :precondition (and (at_x0)(at_y1))
 :poss-precondition (and (bridge_0_1_1_1))
 :effect (and (not (at_x0)) (at_x1))
)

(:action move_0_1_0_0
 :parameters ()
 :precondition (and (at_x0)(at_y1))
 :poss-precondition (and (bridge_0_0_0_1))
 :effect (and (not (at_y1)) (at_y0))
)

(:action move_0_1_0_2
 :parameters ()
 :precondition (and (at_x0)(at_y1))
 :poss-precondition (and (bridge_0_1_0_2))
 :effect (and (not (at_y1)) (at_y2))
)

(:action move_0_2_1_2
 :parameters ()
 :precondition (and (at_x0)(at_y2))
 :poss-precondition (and (bridge_0_2_1_2))
 :effect (and (not (at_x0)) (at_x1))
)

(:action move_0_2_0_1
 :parameters ()
 :precondition (and (at_x0)(at_y2))
 :poss-precondition (and (bridge_0_1_0_2))
 :effect (and (not (at_y2)) (at_y1))
)

(:action move_0_2_0_3
 :parameters ()
 :precondition (and (at_x0)(at_y2))
 :poss-precondition (and (bridge_0_2_0_3))
 :effect (and (not (at_y2)) (at_y3))
)

(:action move_0_3_1_3
 :parameters ()
 :precondition (and (at_x0)(at_y3))
 :poss-precondition (and (bridge_0_3_1_3))
 :effect (and (not (at_x0)) (at_x1))
)

(:action move_0_3_0_2
 :parameters ()
 :precondition (and (at_x0)(at_y3))
 :poss-precondition (and (bridge_0_2_0_3))
 :effect (and (not (at_y3)) (at_y2))
)

(:action move_0_3_0_4
 :parameters ()
 :precondition (and (at_x0)(at_y3))
 :poss-precondition (and (bridge_0_3_0_4))
 :effect (and (not (at_y3)) (at_y4))
)

(:action move_0_4_1_4
 :parameters ()
 :precondition (and (at_x0)(at_y4))
 :poss-precondition (and (bridge_0_4_1_4))
 :effect (and (not (at_x0)) (at_x1))
)

(:action move_0_4_0_3
 :parameters ()
 :precondition (and (at_x0)(at_y4))
 :poss-precondition (and (bridge_0_3_0_4))
 :effect (and (not (at_y4)) (at_y3))
)

(:action move_0_4_0_5
 :parameters ()
 :precondition (and (at_x0)(at_y4))
 :poss-precondition (and (bridge_0_4_0_5))
 :effect (and (not (at_y4)) (at_y5))
)

(:action move_0_5_1_5
 :parameters ()
 :precondition (and (at_x0)(at_y5))
 :poss-precondition (and (bridge_0_5_1_5))
 :effect (and (not (at_x0)) (at_x1))
)

(:action move_0_5_0_4
 :parameters ()
 :precondition (and (at_x0)(at_y5))
 :poss-precondition (and (bridge_0_4_0_5))
 :effect (and (not (at_y5)) (at_y4))
)

(:action move_0_5_0_6
 :parameters ()
 :precondition (and (at_x0)(at_y5))
 :poss-precondition (and (bridge_0_5_0_6))
 :effect (and (not (at_y5)) (at_y6))
)

(:action move_0_6_1_6
 :parameters ()
 :precondition (and (at_x0)(at_y6))
 :poss-precondition (and (bridge_0_6_1_6))
 :effect (and (not (at_x0)) (at_x1))
)

(:action move_0_6_0_5
 :parameters ()
 :precondition (and (at_x0)(at_y6))
 :poss-precondition (and (bridge_0_5_0_6))
 :effect (and (not (at_y6)) (at_y5))
)

(:action move_0_6_0_7
 :parameters ()
 :precondition (and (at_x0)(at_y6))
 :poss-precondition (and (bridge_0_6_0_7))
 :effect (and (not (at_y6)) (at_y7))
)

(:action move_0_7_1_7
 :parameters ()
 :precondition (and (at_x0)(at_y7))
 :poss-precondition (and (bridge_0_7_1_7))
 :effect (and (not (at_x0)) (at_x1))
)

(:action move_0_7_0_6
 :parameters ()
 :precondition (and (at_x0)(at_y7))
 :poss-precondition (and (bridge_0_6_0_7))
 :effect (and (not (at_y7)) (at_y6))
)

(:action move_0_7_0_8
 :parameters ()
 :precondition (and (at_x0)(at_y7))
 :poss-precondition (and (bridge_0_7_0_8))
 :effect (and (not (at_y7)) (at_y8))
)

(:action move_0_8_1_8
 :parameters ()
 :precondition (and (at_x0)(at_y8))
 :poss-precondition (and (bridge_0_8_1_8))
 :effect (and (not (at_x0)) (at_x1))
)

(:action move_0_8_0_7
 :parameters ()
 :precondition (and (at_x0)(at_y8))
 :poss-precondition (and (bridge_0_7_0_8))
 :effect (and (not (at_y8)) (at_y7))
)

(:action move_0_8_0_9
 :parameters ()
 :precondition (and (at_x0)(at_y8))
 :poss-precondition (and (bridge_0_8_0_9))
 :effect (and (not (at_y8)) (at_y9))
)

(:action move_0_9_1_9
 :parameters ()
 :precondition (and (at_x0)(at_y9))
 :poss-precondition (and (bridge_0_9_1_9))
 :effect (and (not (at_x0)) (at_x1))
)

(:action move_0_9_0_8
 :parameters ()
 :precondition (and (at_x0)(at_y9))
 :poss-precondition (and (bridge_0_8_0_9))
 :effect (and (not (at_y9)) (at_y8))
)

(:action move_0_9_0_10
 :parameters ()
 :precondition (and (at_x0)(at_y9))
 :poss-precondition (and (bridge_0_9_0_10))
 :effect (and (not (at_y9)) (at_y10))
)

(:action move_0_10_1_10
 :parameters ()
 :precondition (and (at_x0)(at_y10))
 :poss-precondition (and (bridge_0_10_1_10))
 :effect (and (not (at_x0)) (at_x1))
)

(:action move_0_10_0_9
 :parameters ()
 :precondition (and (at_x0)(at_y10))
 :poss-precondition (and (bridge_0_9_0_10))
 :effect (and (not (at_y10)) (at_y9))
)

(:action move_0_10_0_11
 :parameters ()
 :precondition (and (at_x0)(at_y10))
 :poss-precondition (and (bridge_0_10_0_11))
 :effect (and (not (at_y10)) (at_y11))
)

(:action move_0_11_1_11
 :parameters ()
 :precondition (and (at_x0)(at_y11))
 :poss-precondition (and (bridge_0_11_1_11))
 :effect (and (not (at_x0)) (at_x1))
)

(:action move_0_11_0_10
 :parameters ()
 :precondition (and (at_x0)(at_y11))
 :poss-precondition (and (bridge_0_10_0_11))
 :effect (and (not (at_y11)) (at_y10))
)

(:action move_0_11_0_12
 :parameters ()
 :precondition (and (at_x0)(at_y11))
 :poss-precondition (and (bridge_0_11_0_12))
 :effect (and (not (at_y11)) (at_y12))
)

(:action move_0_12_1_12
 :parameters ()
 :precondition (and (at_x0)(at_y12))
 :poss-precondition (and (bridge_0_12_1_12))
 :effect (and (not (at_x0)) (at_x1))
)

(:action move_0_12_0_11
 :parameters ()
 :precondition (and (at_x0)(at_y12))
 :poss-precondition (and (bridge_0_11_0_12))
 :effect (and (not (at_y12)) (at_y11))
)

(:action move_0_12_0_13
 :parameters ()
 :precondition (and (at_x0)(at_y12))
 :poss-precondition (and (bridge_0_12_0_13))
 :effect (and (not (at_y12)) (at_y13))
)

(:action move_0_13_1_13
 :parameters ()
 :precondition (and (at_x0)(at_y13))
 :poss-precondition (and (bridge_0_13_1_13))
 :effect (and (not (at_x0)) (at_x1))
)

(:action move_0_13_0_12
 :parameters ()
 :precondition (and (at_x0)(at_y13))
 :poss-precondition (and (bridge_0_12_0_13))
 :effect (and (not (at_y13)) (at_y12))
)

(:action move_0_13_0_14
 :parameters ()
 :precondition (and (at_x0)(at_y13))
 :poss-precondition (and (bridge_0_13_0_14))
 :effect (and (not (at_y13)) (at_y14))
)

(:action move_0_14_1_14
 :parameters ()
 :precondition (and (at_x0)(at_y14))
 :poss-precondition (and (bridge_0_14_1_14))
 :effect (and (not (at_x0)) (at_x1))
)

(:action move_0_14_0_13
 :parameters ()
 :precondition (and (at_x0)(at_y14))
 :poss-precondition (and (bridge_0_13_0_14))
 :effect (and (not (at_y14)) (at_y13))
)

(:action move_0_14_0_15
 :parameters ()
 :precondition (and (at_x0)(at_y14))
 :poss-precondition (and (bridge_0_14_0_15))
 :effect (and (not (at_y14)) (at_y15))
)

(:action move_0_15_1_15
 :parameters ()
 :precondition (and (at_x0)(at_y15))
 :poss-precondition (and (bridge_0_15_1_15))
 :effect (and (not (at_x0)) (at_x1))
)

(:action move_0_15_0_14
 :parameters ()
 :precondition (and (at_x0)(at_y15))
 :poss-precondition (and (bridge_0_14_0_15))
 :effect (and (not (at_y15)) (at_y14))
)

(:action move_0_15_0_16
 :parameters ()
 :precondition (and (at_x0)(at_y15))
 :poss-precondition (and (bridge_0_15_0_16))
 :effect (and (not (at_y15)) (at_y16))
)

(:action move_0_16_1_16
 :parameters ()
 :precondition (and (at_x0)(at_y16))
 :poss-precondition (and (bridge_0_16_1_16))
 :effect (and (not (at_x0)) (at_x1))
)

(:action move_0_16_0_15
 :parameters ()
 :precondition (and (at_x0)(at_y16))
 :poss-precondition (and (bridge_0_15_0_16))
 :effect (and (not (at_y16)) (at_y15))
)

(:action move_0_16_0_17
 :parameters ()
 :precondition (and (at_x0)(at_y16))
 :poss-precondition (and (bridge_0_16_0_17))
 :effect (and (not (at_y16)) (at_y17))
)

(:action move_0_17_1_17
 :parameters ()
 :precondition (and (at_x0)(at_y17))
 :poss-precondition (and (bridge_0_17_1_17))
 :effect (and (not (at_x0)) (at_x1))
)

(:action move_0_17_0_16
 :parameters ()
 :precondition (and (at_x0)(at_y17))
 :poss-precondition (and (bridge_0_16_0_17))
 :effect (and (not (at_y17)) (at_y16))
)

(:action move_0_17_0_18
 :parameters ()
 :precondition (and (at_x0)(at_y17))
 :poss-precondition (and (bridge_0_17_0_18))
 :effect (and (not (at_y17)) (at_y18))
)

(:action move_0_18_1_18
 :parameters ()
 :precondition (and (at_x0)(at_y18))
 :poss-precondition (and (bridge_0_18_1_18))
 :effect (and (not (at_x0)) (at_x1))
)

(:action move_0_18_0_17
 :parameters ()
 :precondition (and (at_x0)(at_y18))
 :poss-precondition (and (bridge_0_17_0_18))
 :effect (and (not (at_y18)) (at_y17))
)

(:action move_0_18_0_19
 :parameters ()
 :precondition (and (at_x0)(at_y18))
 :poss-precondition (and (bridge_0_18_0_19))
 :effect (and (not (at_y18)) (at_y19))
)

(:action move_0_19_1_19
 :parameters ()
 :precondition (and (at_x0)(at_y19))
 :poss-precondition (and (bridge_0_19_1_19))
 :effect (and (not (at_x0)) (at_x1))
)

(:action move_0_19_0_18
 :parameters ()
 :precondition (and (at_x0)(at_y19))
 :poss-precondition (and (bridge_0_18_0_19))
 :effect (and (not (at_y19)) (at_y18))
)

(:action move_0_19_0_20
 :parameters ()
 :precondition (and (at_x0)(at_y19))
 :poss-precondition (and (bridge_0_19_0_20))
 :effect (and (not (at_y19)) (at_y20))
)

(:action move_0_20_1_20
 :parameters ()
 :precondition (and (at_x0)(at_y20))
 :poss-precondition (and (bridge_0_20_1_20))
 :effect (and (not (at_x0)) (at_x1))
)

(:action move_0_20_0_19
 :parameters ()
 :precondition (and (at_x0)(at_y20))
 :poss-precondition (and (bridge_0_19_0_20))
 :effect (and (not (at_y20)) (at_y19))
)

(:action move_0_20_0_21
 :parameters ()
 :precondition (and (at_x0)(at_y20))
 :poss-precondition (and (bridge_0_20_0_21))
 :effect (and (not (at_y20)) (at_y21))
)

(:action move_0_21_1_21
 :parameters ()
 :precondition (and (at_x0)(at_y21))
 :poss-precondition (and (bridge_0_21_1_21))
 :effect (and (not (at_x0)) (at_x1))
)

(:action move_0_21_0_20
 :parameters ()
 :precondition (and (at_x0)(at_y21))
 :poss-precondition (and (bridge_0_20_0_21))
 :effect (and (not (at_y21)) (at_y20))
)

(:action move_0_21_0_22
 :parameters ()
 :precondition (and (at_x0)(at_y21))
 :poss-precondition (and (bridge_0_21_0_22))
 :effect (and (not (at_y21)) (at_y22))
)

(:action move_0_22_1_22
 :parameters ()
 :precondition (and (at_x0)(at_y22))
 :poss-precondition (and (bridge_0_22_1_22))
 :effect (and (not (at_x0)) (at_x1))
)

(:action move_0_22_0_21
 :parameters ()
 :precondition (and (at_x0)(at_y22))
 :poss-precondition (and (bridge_0_21_0_22))
 :effect (and (not (at_y22)) (at_y21))
)

(:action move_0_22_0_23
 :parameters ()
 :precondition (and (at_x0)(at_y22))
 :poss-precondition (and (bridge_0_22_0_23))
 :effect (and (not (at_y22)) (at_y23))
)

(:action move_0_23_1_23
 :parameters ()
 :precondition (and (at_x0)(at_y23))
 :poss-precondition (and (bridge_0_23_1_23))
 :effect (and (not (at_x0)) (at_x1))
)

(:action move_0_23_0_22
 :parameters ()
 :precondition (and (at_x0)(at_y23))
 :poss-precondition (and (bridge_0_22_0_23))
 :effect (and (not (at_y23)) (at_y22))
)

(:action move_0_23_0_24
 :parameters ()
 :precondition (and (at_x0)(at_y23))
 :poss-precondition (and (bridge_0_23_0_24))
 :effect (and (not (at_y23)) (at_y24))
)

(:action move_0_24_1_24
 :parameters ()
 :precondition (and (at_x0)(at_y24))
 :poss-precondition (and (bridge_0_24_1_24))
 :effect (and (not (at_x0)) (at_x1))
)

(:action move_0_24_0_23
 :parameters ()
 :precondition (and (at_x0)(at_y24))
 :poss-precondition (and (bridge_0_23_0_24))
 :effect (and (not (at_y24)) (at_y23))
)

(:action move_0_24_0_25
 :parameters ()
 :precondition (and (at_x0)(at_y24))
 :poss-precondition (and (bridge_0_24_0_25))
 :effect (and (not (at_y24)) (at_y25))
)

(:action move_0_25_1_25
 :parameters ()
 :precondition (and (at_x0)(at_y25))
 :poss-precondition (and (bridge_0_25_1_25))
 :effect (and (not (at_x0)) (at_x1))
)

(:action move_0_25_0_24
 :parameters ()
 :precondition (and (at_x0)(at_y25))
 :poss-precondition (and (bridge_0_24_0_25))
 :effect (and (not (at_y25)) (at_y24))
)

(:action move_0_25_0_26
 :parameters ()
 :precondition (and (at_x0)(at_y25))
 :poss-precondition (and (bridge_0_25_0_26))
 :effect (and (not (at_y25)) (at_y26))
)

(:action move_0_26_1_26
 :parameters ()
 :precondition (and (at_x0)(at_y26))
 :poss-precondition (and (bridge_0_26_1_26))
 :effect (and (not (at_x0)) (at_x1))
)

(:action move_0_26_0_25
 :parameters ()
 :precondition (and (at_x0)(at_y26))
 :poss-precondition (and (bridge_0_25_0_26))
 :effect (and (not (at_y26)) (at_y25))
)

(:action move_0_26_0_27
 :parameters ()
 :precondition (and (at_x0)(at_y26))
 :poss-precondition (and (bridge_0_26_0_27))
 :effect (and (not (at_y26)) (at_y27))
)

(:action move_0_27_1_27
 :parameters ()
 :precondition (and (at_x0)(at_y27))
 :poss-precondition (and (bridge_0_27_1_27))
 :effect (and (not (at_x0)) (at_x1))
)

(:action move_0_27_0_26
 :parameters ()
 :precondition (and (at_x0)(at_y27))
 :poss-precondition (and (bridge_0_26_0_27))
 :effect (and (not (at_y27)) (at_y26))
)

(:action move_0_27_0_28
 :parameters ()
 :precondition (and (at_x0)(at_y27))
 :poss-precondition (and (bridge_0_27_0_28))
 :effect (and (not (at_y27)) (at_y28))
)

(:action move_0_28_1_28
 :parameters ()
 :precondition (and (at_x0)(at_y28))
 :poss-precondition (and (bridge_0_28_1_28))
 :effect (and (not (at_x0)) (at_x1))
)

(:action move_0_28_0_27
 :parameters ()
 :precondition (and (at_x0)(at_y28))
 :poss-precondition (and (bridge_0_27_0_28))
 :effect (and (not (at_y28)) (at_y27))
)

(:action move_0_28_0_29
 :parameters ()
 :precondition (and (at_x0)(at_y28))
 :poss-precondition (and (bridge_0_28_0_29))
 :effect (and (not (at_y28)) (at_y29))
)

(:action move_0_29_1_29
 :parameters ()
 :precondition (and (at_x0)(at_y29))
 :poss-precondition (and (bridge_0_29_1_29))
 :effect (and (not (at_x0)) (at_x1))
)

(:action move_0_29_0_28
 :parameters ()
 :precondition (and (at_x0)(at_y29))
 :poss-precondition (and (bridge_0_28_0_29))
 :effect (and (not (at_y29)) (at_y28))
)

(:action move_0_29_0_30
 :parameters ()
 :precondition (and (at_x0)(at_y29))
 :poss-precondition (and (bridge_0_29_0_30))
 :effect (and (not (at_y29)) (at_y30))
)

(:action move_0_30_1_30
 :parameters ()
 :precondition (and (at_x0)(at_y30))
 :poss-precondition (and (bridge_0_30_1_30))
 :effect (and (not (at_x0)) (at_x1))
)

(:action move_0_30_0_29
 :parameters ()
 :precondition (and (at_x0)(at_y30))
 :poss-precondition (and (bridge_0_29_0_30))
 :effect (and (not (at_y30)) (at_y29))
)

(:action move_0_30_0_31
 :parameters ()
 :precondition (and (at_x0)(at_y30))
 :poss-precondition (and (bridge_0_30_0_31))
 :effect (and (not (at_y30)) (at_y31))
)

(:action move_0_31_1_31
 :parameters ()
 :precondition (and (at_x0)(at_y31))
 :poss-precondition (and (bridge_0_31_1_31))
 :effect (and (not (at_x0)) (at_x1))
)

(:action move_0_31_0_30
 :parameters ()
 :precondition (and (at_x0)(at_y31))
 :poss-precondition (and (bridge_0_30_0_31))
 :effect (and (not (at_y31)) (at_y30))
)

(:action move_1_0_0_0
 :parameters ()
 :precondition (and (at_x1)(at_y0))
 :poss-precondition (and (bridge_0_0_1_0))
 :effect (and (not (at_x1)) (at_x0))
)

(:action move_1_0_2_0
 :parameters ()
 :precondition (and (at_x1)(at_y0))
 :poss-precondition (and (bridge_1_0_2_0))
 :effect (and (not (at_x1)) (at_x2))
)

(:action move_1_0_1_1
 :parameters ()
 :precondition (and (at_x1)(at_y0))
 :poss-precondition (and (bridge_1_0_1_1))
 :effect (and (not (at_y0)) (at_y1))
)

(:action move_1_1_0_1
 :parameters ()
 :precondition (and (at_x1)(at_y1))
 :poss-precondition (and (bridge_0_1_1_1))
 :effect (and (not (at_x1)) (at_x0))
)

(:action move_1_1_2_1
 :parameters ()
 :precondition (and (at_x1)(at_y1))
 :poss-precondition (and (bridge_1_1_2_1))
 :effect (and (not (at_x1)) (at_x2))
)

(:action move_1_1_1_0
 :parameters ()
 :precondition (and (at_x1)(at_y1))
 :poss-precondition (and (bridge_1_0_1_1))
 :effect (and (not (at_y1)) (at_y0))
)

(:action move_1_1_1_2
 :parameters ()
 :precondition (and (at_x1)(at_y1))
 :poss-precondition (and (bridge_1_1_1_2))
 :effect (and (not (at_y1)) (at_y2))
)

(:action move_1_2_0_2
 :parameters ()
 :precondition (and (at_x1)(at_y2))
 :poss-precondition (and (bridge_0_2_1_2))
 :effect (and (not (at_x1)) (at_x0))
)

(:action move_1_2_2_2
 :parameters ()
 :precondition (and (at_x1)(at_y2))
 :poss-precondition (and (bridge_1_2_2_2))
 :effect (and (not (at_x1)) (at_x2))
)

(:action move_1_2_1_1
 :parameters ()
 :precondition (and (at_x1)(at_y2))
 :poss-precondition (and (bridge_1_1_1_2))
 :effect (and (not (at_y2)) (at_y1))
)

(:action move_1_2_1_3
 :parameters ()
 :precondition (and (at_x1)(at_y2))
 :poss-precondition (and (bridge_1_2_1_3))
 :effect (and (not (at_y2)) (at_y3))
)

(:action move_1_3_0_3
 :parameters ()
 :precondition (and (at_x1)(at_y3))
 :poss-precondition (and (bridge_0_3_1_3))
 :effect (and (not (at_x1)) (at_x0))
)

(:action move_1_3_2_3
 :parameters ()
 :precondition (and (at_x1)(at_y3))
 :poss-precondition (and (bridge_1_3_2_3))
 :effect (and (not (at_x1)) (at_x2))
)

(:action move_1_3_1_2
 :parameters ()
 :precondition (and (at_x1)(at_y3))
 :poss-precondition (and (bridge_1_2_1_3))
 :effect (and (not (at_y3)) (at_y2))
)

(:action move_1_3_1_4
 :parameters ()
 :precondition (and (at_x1)(at_y3))
 :poss-precondition (and (bridge_1_3_1_4))
 :effect (and (not (at_y3)) (at_y4))
)

(:action move_1_4_0_4
 :parameters ()
 :precondition (and (at_x1)(at_y4))
 :poss-precondition (and (bridge_0_4_1_4))
 :effect (and (not (at_x1)) (at_x0))
)

(:action move_1_4_2_4
 :parameters ()
 :precondition (and (at_x1)(at_y4))
 :poss-precondition (and (bridge_1_4_2_4))
 :effect (and (not (at_x1)) (at_x2))
)

(:action move_1_4_1_3
 :parameters ()
 :precondition (and (at_x1)(at_y4))
 :poss-precondition (and (bridge_1_3_1_4))
 :effect (and (not (at_y4)) (at_y3))
)

(:action move_1_4_1_5
 :parameters ()
 :precondition (and (at_x1)(at_y4))
 :poss-precondition (and (bridge_1_4_1_5))
 :effect (and (not (at_y4)) (at_y5))
)

(:action move_1_5_0_5
 :parameters ()
 :precondition (and (at_x1)(at_y5))
 :poss-precondition (and (bridge_0_5_1_5))
 :effect (and (not (at_x1)) (at_x0))
)

(:action move_1_5_2_5
 :parameters ()
 :precondition (and (at_x1)(at_y5))
 :poss-precondition (and (bridge_1_5_2_5))
 :effect (and (not (at_x1)) (at_x2))
)

(:action move_1_5_1_4
 :parameters ()
 :precondition (and (at_x1)(at_y5))
 :poss-precondition (and (bridge_1_4_1_5))
 :effect (and (not (at_y5)) (at_y4))
)

(:action move_1_5_1_6
 :parameters ()
 :precondition (and (at_x1)(at_y5))
 :poss-precondition (and (bridge_1_5_1_6))
 :effect (and (not (at_y5)) (at_y6))
)

(:action move_1_6_0_6
 :parameters ()
 :precondition (and (at_x1)(at_y6))
 :poss-precondition (and (bridge_0_6_1_6))
 :effect (and (not (at_x1)) (at_x0))
)

(:action move_1_6_2_6
 :parameters ()
 :precondition (and (at_x1)(at_y6))
 :poss-precondition (and (bridge_1_6_2_6))
 :effect (and (not (at_x1)) (at_x2))
)

(:action move_1_6_1_5
 :parameters ()
 :precondition (and (at_x1)(at_y6))
 :poss-precondition (and (bridge_1_5_1_6))
 :effect (and (not (at_y6)) (at_y5))
)

(:action move_1_6_1_7
 :parameters ()
 :precondition (and (at_x1)(at_y6))
 :poss-precondition (and (bridge_1_6_1_7))
 :effect (and (not (at_y6)) (at_y7))
)

(:action move_1_7_0_7
 :parameters ()
 :precondition (and (at_x1)(at_y7))
 :poss-precondition (and (bridge_0_7_1_7))
 :effect (and (not (at_x1)) (at_x0))
)

(:action move_1_7_2_7
 :parameters ()
 :precondition (and (at_x1)(at_y7))
 :poss-precondition (and (bridge_1_7_2_7))
 :effect (and (not (at_x1)) (at_x2))
)

(:action move_1_7_1_6
 :parameters ()
 :precondition (and (at_x1)(at_y7))
 :poss-precondition (and (bridge_1_6_1_7))
 :effect (and (not (at_y7)) (at_y6))
)

(:action move_1_7_1_8
 :parameters ()
 :precondition (and (at_x1)(at_y7))
 :poss-precondition (and (bridge_1_7_1_8))
 :effect (and (not (at_y7)) (at_y8))
)

(:action move_1_8_0_8
 :parameters ()
 :precondition (and (at_x1)(at_y8))
 :poss-precondition (and (bridge_0_8_1_8))
 :effect (and (not (at_x1)) (at_x0))
)

(:action move_1_8_2_8
 :parameters ()
 :precondition (and (at_x1)(at_y8))
 :poss-precondition (and (bridge_1_8_2_8))
 :effect (and (not (at_x1)) (at_x2))
)

(:action move_1_8_1_7
 :parameters ()
 :precondition (and (at_x1)(at_y8))
 :poss-precondition (and (bridge_1_7_1_8))
 :effect (and (not (at_y8)) (at_y7))
)

(:action move_1_8_1_9
 :parameters ()
 :precondition (and (at_x1)(at_y8))
 :poss-precondition (and (bridge_1_8_1_9))
 :effect (and (not (at_y8)) (at_y9))
)

(:action move_1_9_0_9
 :parameters ()
 :precondition (and (at_x1)(at_y9))
 :poss-precondition (and (bridge_0_9_1_9))
 :effect (and (not (at_x1)) (at_x0))
)

(:action move_1_9_2_9
 :parameters ()
 :precondition (and (at_x1)(at_y9))
 :poss-precondition (and (bridge_1_9_2_9))
 :effect (and (not (at_x1)) (at_x2))
)

(:action move_1_9_1_8
 :parameters ()
 :precondition (and (at_x1)(at_y9))
 :poss-precondition (and (bridge_1_8_1_9))
 :effect (and (not (at_y9)) (at_y8))
)

(:action move_1_9_1_10
 :parameters ()
 :precondition (and (at_x1)(at_y9))
 :poss-precondition (and (bridge_1_9_1_10))
 :effect (and (not (at_y9)) (at_y10))
)

(:action move_1_10_0_10
 :parameters ()
 :precondition (and (at_x1)(at_y10))
 :poss-precondition (and (bridge_0_10_1_10))
 :effect (and (not (at_x1)) (at_x0))
)

(:action move_1_10_2_10
 :parameters ()
 :precondition (and (at_x1)(at_y10))
 :poss-precondition (and (bridge_1_10_2_10))
 :effect (and (not (at_x1)) (at_x2))
)

(:action move_1_10_1_9
 :parameters ()
 :precondition (and (at_x1)(at_y10))
 :poss-precondition (and (bridge_1_9_1_10))
 :effect (and (not (at_y10)) (at_y9))
)

(:action move_1_10_1_11
 :parameters ()
 :precondition (and (at_x1)(at_y10))
 :poss-precondition (and (bridge_1_10_1_11))
 :effect (and (not (at_y10)) (at_y11))
)

(:action move_1_11_0_11
 :parameters ()
 :precondition (and (at_x1)(at_y11))
 :poss-precondition (and (bridge_0_11_1_11))
 :effect (and (not (at_x1)) (at_x0))
)

(:action move_1_11_2_11
 :parameters ()
 :precondition (and (at_x1)(at_y11))
 :poss-precondition (and (bridge_1_11_2_11))
 :effect (and (not (at_x1)) (at_x2))
)

(:action move_1_11_1_10
 :parameters ()
 :precondition (and (at_x1)(at_y11))
 :poss-precondition (and (bridge_1_10_1_11))
 :effect (and (not (at_y11)) (at_y10))
)

(:action move_1_11_1_12
 :parameters ()
 :precondition (and (at_x1)(at_y11))
 :poss-precondition (and (bridge_1_11_1_12))
 :effect (and (not (at_y11)) (at_y12))
)

(:action move_1_12_0_12
 :parameters ()
 :precondition (and (at_x1)(at_y12))
 :poss-precondition (and (bridge_0_12_1_12))
 :effect (and (not (at_x1)) (at_x0))
)

(:action move_1_12_2_12
 :parameters ()
 :precondition (and (at_x1)(at_y12))
 :poss-precondition (and (bridge_1_12_2_12))
 :effect (and (not (at_x1)) (at_x2))
)

(:action move_1_12_1_11
 :parameters ()
 :precondition (and (at_x1)(at_y12))
 :poss-precondition (and (bridge_1_11_1_12))
 :effect (and (not (at_y12)) (at_y11))
)

(:action move_1_12_1_13
 :parameters ()
 :precondition (and (at_x1)(at_y12))
 :poss-precondition (and (bridge_1_12_1_13))
 :effect (and (not (at_y12)) (at_y13))
)

(:action move_1_13_0_13
 :parameters ()
 :precondition (and (at_x1)(at_y13))
 :poss-precondition (and (bridge_0_13_1_13))
 :effect (and (not (at_x1)) (at_x0))
)

(:action move_1_13_2_13
 :parameters ()
 :precondition (and (at_x1)(at_y13))
 :poss-precondition (and (bridge_1_13_2_13))
 :effect (and (not (at_x1)) (at_x2))
)

(:action move_1_13_1_12
 :parameters ()
 :precondition (and (at_x1)(at_y13))
 :poss-precondition (and (bridge_1_12_1_13))
 :effect (and (not (at_y13)) (at_y12))
)

(:action move_1_13_1_14
 :parameters ()
 :precondition (and (at_x1)(at_y13))
 :poss-precondition (and (bridge_1_13_1_14))
 :effect (and (not (at_y13)) (at_y14))
)

(:action move_1_14_0_14
 :parameters ()
 :precondition (and (at_x1)(at_y14))
 :poss-precondition (and (bridge_0_14_1_14))
 :effect (and (not (at_x1)) (at_x0))
)

(:action move_1_14_2_14
 :parameters ()
 :precondition (and (at_x1)(at_y14))
 :poss-precondition (and (bridge_1_14_2_14))
 :effect (and (not (at_x1)) (at_x2))
)

(:action move_1_14_1_13
 :parameters ()
 :precondition (and (at_x1)(at_y14))
 :poss-precondition (and (bridge_1_13_1_14))
 :effect (and (not (at_y14)) (at_y13))
)

(:action move_1_14_1_15
 :parameters ()
 :precondition (and (at_x1)(at_y14))
 :poss-precondition (and (bridge_1_14_1_15))
 :effect (and (not (at_y14)) (at_y15))
)

(:action move_1_15_0_15
 :parameters ()
 :precondition (and (at_x1)(at_y15))
 :poss-precondition (and (bridge_0_15_1_15))
 :effect (and (not (at_x1)) (at_x0))
)

(:action move_1_15_2_15
 :parameters ()
 :precondition (and (at_x1)(at_y15))
 :poss-precondition (and (bridge_1_15_2_15))
 :effect (and (not (at_x1)) (at_x2))
)

(:action move_1_15_1_14
 :parameters ()
 :precondition (and (at_x1)(at_y15))
 :poss-precondition (and (bridge_1_14_1_15))
 :effect (and (not (at_y15)) (at_y14))
)

(:action move_1_15_1_16
 :parameters ()
 :precondition (and (at_x1)(at_y15))
 :poss-precondition (and (bridge_1_15_1_16))
 :effect (and (not (at_y15)) (at_y16))
)

(:action move_1_16_0_16
 :parameters ()
 :precondition (and (at_x1)(at_y16))
 :poss-precondition (and (bridge_0_16_1_16))
 :effect (and (not (at_x1)) (at_x0))
)

(:action move_1_16_2_16
 :parameters ()
 :precondition (and (at_x1)(at_y16))
 :poss-precondition (and (bridge_1_16_2_16))
 :effect (and (not (at_x1)) (at_x2))
)

(:action move_1_16_1_15
 :parameters ()
 :precondition (and (at_x1)(at_y16))
 :poss-precondition (and (bridge_1_15_1_16))
 :effect (and (not (at_y16)) (at_y15))
)

(:action move_1_16_1_17
 :parameters ()
 :precondition (and (at_x1)(at_y16))
 :poss-precondition (and (bridge_1_16_1_17))
 :effect (and (not (at_y16)) (at_y17))
)

(:action move_1_17_0_17
 :parameters ()
 :precondition (and (at_x1)(at_y17))
 :poss-precondition (and (bridge_0_17_1_17))
 :effect (and (not (at_x1)) (at_x0))
)

(:action move_1_17_2_17
 :parameters ()
 :precondition (and (at_x1)(at_y17))
 :poss-precondition (and (bridge_1_17_2_17))
 :effect (and (not (at_x1)) (at_x2))
)

(:action move_1_17_1_16
 :parameters ()
 :precondition (and (at_x1)(at_y17))
 :poss-precondition (and (bridge_1_16_1_17))
 :effect (and (not (at_y17)) (at_y16))
)

(:action move_1_17_1_18
 :parameters ()
 :precondition (and (at_x1)(at_y17))
 :poss-precondition (and (bridge_1_17_1_18))
 :effect (and (not (at_y17)) (at_y18))
)

(:action move_1_18_0_18
 :parameters ()
 :precondition (and (at_x1)(at_y18))
 :poss-precondition (and (bridge_0_18_1_18))
 :effect (and (not (at_x1)) (at_x0))
)

(:action move_1_18_2_18
 :parameters ()
 :precondition (and (at_x1)(at_y18))
 :poss-precondition (and (bridge_1_18_2_18))
 :effect (and (not (at_x1)) (at_x2))
)

(:action move_1_18_1_17
 :parameters ()
 :precondition (and (at_x1)(at_y18))
 :poss-precondition (and (bridge_1_17_1_18))
 :effect (and (not (at_y18)) (at_y17))
)

(:action move_1_18_1_19
 :parameters ()
 :precondition (and (at_x1)(at_y18))
 :poss-precondition (and (bridge_1_18_1_19))
 :effect (and (not (at_y18)) (at_y19))
)

(:action move_1_19_0_19
 :parameters ()
 :precondition (and (at_x1)(at_y19))
 :poss-precondition (and (bridge_0_19_1_19))
 :effect (and (not (at_x1)) (at_x0))
)

(:action move_1_19_2_19
 :parameters ()
 :precondition (and (at_x1)(at_y19))
 :poss-precondition (and (bridge_1_19_2_19))
 :effect (and (not (at_x1)) (at_x2))
)

(:action move_1_19_1_18
 :parameters ()
 :precondition (and (at_x1)(at_y19))
 :poss-precondition (and (bridge_1_18_1_19))
 :effect (and (not (at_y19)) (at_y18))
)

(:action move_1_19_1_20
 :parameters ()
 :precondition (and (at_x1)(at_y19))
 :poss-precondition (and (bridge_1_19_1_20))
 :effect (and (not (at_y19)) (at_y20))
)

(:action move_1_20_0_20
 :parameters ()
 :precondition (and (at_x1)(at_y20))
 :poss-precondition (and (bridge_0_20_1_20))
 :effect (and (not (at_x1)) (at_x0))
)

(:action move_1_20_2_20
 :parameters ()
 :precondition (and (at_x1)(at_y20))
 :poss-precondition (and (bridge_1_20_2_20))
 :effect (and (not (at_x1)) (at_x2))
)

(:action move_1_20_1_19
 :parameters ()
 :precondition (and (at_x1)(at_y20))
 :poss-precondition (and (bridge_1_19_1_20))
 :effect (and (not (at_y20)) (at_y19))
)

(:action move_1_20_1_21
 :parameters ()
 :precondition (and (at_x1)(at_y20))
 :poss-precondition (and (bridge_1_20_1_21))
 :effect (and (not (at_y20)) (at_y21))
)

(:action move_1_21_0_21
 :parameters ()
 :precondition (and (at_x1)(at_y21))
 :poss-precondition (and (bridge_0_21_1_21))
 :effect (and (not (at_x1)) (at_x0))
)

(:action move_1_21_2_21
 :parameters ()
 :precondition (and (at_x1)(at_y21))
 :poss-precondition (and (bridge_1_21_2_21))
 :effect (and (not (at_x1)) (at_x2))
)

(:action move_1_21_1_20
 :parameters ()
 :precondition (and (at_x1)(at_y21))
 :poss-precondition (and (bridge_1_20_1_21))
 :effect (and (not (at_y21)) (at_y20))
)

(:action move_1_21_1_22
 :parameters ()
 :precondition (and (at_x1)(at_y21))
 :poss-precondition (and (bridge_1_21_1_22))
 :effect (and (not (at_y21)) (at_y22))
)

(:action move_1_22_0_22
 :parameters ()
 :precondition (and (at_x1)(at_y22))
 :poss-precondition (and (bridge_0_22_1_22))
 :effect (and (not (at_x1)) (at_x0))
)

(:action move_1_22_2_22
 :parameters ()
 :precondition (and (at_x1)(at_y22))
 :poss-precondition (and (bridge_1_22_2_22))
 :effect (and (not (at_x1)) (at_x2))
)

(:action move_1_22_1_21
 :parameters ()
 :precondition (and (at_x1)(at_y22))
 :poss-precondition (and (bridge_1_21_1_22))
 :effect (and (not (at_y22)) (at_y21))
)

(:action move_1_22_1_23
 :parameters ()
 :precondition (and (at_x1)(at_y22))
 :poss-precondition (and (bridge_1_22_1_23))
 :effect (and (not (at_y22)) (at_y23))
)

(:action move_1_23_0_23
 :parameters ()
 :precondition (and (at_x1)(at_y23))
 :poss-precondition (and (bridge_0_23_1_23))
 :effect (and (not (at_x1)) (at_x0))
)

(:action move_1_23_2_23
 :parameters ()
 :precondition (and (at_x1)(at_y23))
 :poss-precondition (and (bridge_1_23_2_23))
 :effect (and (not (at_x1)) (at_x2))
)

(:action move_1_23_1_22
 :parameters ()
 :precondition (and (at_x1)(at_y23))
 :poss-precondition (and (bridge_1_22_1_23))
 :effect (and (not (at_y23)) (at_y22))
)

(:action move_1_23_1_24
 :parameters ()
 :precondition (and (at_x1)(at_y23))
 :poss-precondition (and (bridge_1_23_1_24))
 :effect (and (not (at_y23)) (at_y24))
)

(:action move_1_24_0_24
 :parameters ()
 :precondition (and (at_x1)(at_y24))
 :poss-precondition (and (bridge_0_24_1_24))
 :effect (and (not (at_x1)) (at_x0))
)

(:action move_1_24_2_24
 :parameters ()
 :precondition (and (at_x1)(at_y24))
 :poss-precondition (and (bridge_1_24_2_24))
 :effect (and (not (at_x1)) (at_x2))
)

(:action move_1_24_1_23
 :parameters ()
 :precondition (and (at_x1)(at_y24))
 :poss-precondition (and (bridge_1_23_1_24))
 :effect (and (not (at_y24)) (at_y23))
)

(:action move_1_24_1_25
 :parameters ()
 :precondition (and (at_x1)(at_y24))
 :poss-precondition (and (bridge_1_24_1_25))
 :effect (and (not (at_y24)) (at_y25))
)

(:action move_1_25_0_25
 :parameters ()
 :precondition (and (at_x1)(at_y25))
 :poss-precondition (and (bridge_0_25_1_25))
 :effect (and (not (at_x1)) (at_x0))
)

(:action move_1_25_2_25
 :parameters ()
 :precondition (and (at_x1)(at_y25))
 :poss-precondition (and (bridge_1_25_2_25))
 :effect (and (not (at_x1)) (at_x2))
)

(:action move_1_25_1_24
 :parameters ()
 :precondition (and (at_x1)(at_y25))
 :poss-precondition (and (bridge_1_24_1_25))
 :effect (and (not (at_y25)) (at_y24))
)

(:action move_1_25_1_26
 :parameters ()
 :precondition (and (at_x1)(at_y25))
 :poss-precondition (and (bridge_1_25_1_26))
 :effect (and (not (at_y25)) (at_y26))
)

(:action move_1_26_0_26
 :parameters ()
 :precondition (and (at_x1)(at_y26))
 :poss-precondition (and (bridge_0_26_1_26))
 :effect (and (not (at_x1)) (at_x0))
)

(:action move_1_26_2_26
 :parameters ()
 :precondition (and (at_x1)(at_y26))
 :poss-precondition (and (bridge_1_26_2_26))
 :effect (and (not (at_x1)) (at_x2))
)

(:action move_1_26_1_25
 :parameters ()
 :precondition (and (at_x1)(at_y26))
 :poss-precondition (and (bridge_1_25_1_26))
 :effect (and (not (at_y26)) (at_y25))
)

(:action move_1_26_1_27
 :parameters ()
 :precondition (and (at_x1)(at_y26))
 :poss-precondition (and (bridge_1_26_1_27))
 :effect (and (not (at_y26)) (at_y27))
)

(:action move_1_27_0_27
 :parameters ()
 :precondition (and (at_x1)(at_y27))
 :poss-precondition (and (bridge_0_27_1_27))
 :effect (and (not (at_x1)) (at_x0))
)

(:action move_1_27_2_27
 :parameters ()
 :precondition (and (at_x1)(at_y27))
 :poss-precondition (and (bridge_1_27_2_27))
 :effect (and (not (at_x1)) (at_x2))
)

(:action move_1_27_1_26
 :parameters ()
 :precondition (and (at_x1)(at_y27))
 :poss-precondition (and (bridge_1_26_1_27))
 :effect (and (not (at_y27)) (at_y26))
)

(:action move_1_27_1_28
 :parameters ()
 :precondition (and (at_x1)(at_y27))
 :poss-precondition (and (bridge_1_27_1_28))
 :effect (and (not (at_y27)) (at_y28))
)

(:action move_1_28_0_28
 :parameters ()
 :precondition (and (at_x1)(at_y28))
 :poss-precondition (and (bridge_0_28_1_28))
 :effect (and (not (at_x1)) (at_x0))
)

(:action move_1_28_2_28
 :parameters ()
 :precondition (and (at_x1)(at_y28))
 :poss-precondition (and (bridge_1_28_2_28))
 :effect (and (not (at_x1)) (at_x2))
)

(:action move_1_28_1_27
 :parameters ()
 :precondition (and (at_x1)(at_y28))
 :poss-precondition (and (bridge_1_27_1_28))
 :effect (and (not (at_y28)) (at_y27))
)

(:action move_1_28_1_29
 :parameters ()
 :precondition (and (at_x1)(at_y28))
 :poss-precondition (and (bridge_1_28_1_29))
 :effect (and (not (at_y28)) (at_y29))
)

(:action move_1_29_0_29
 :parameters ()
 :precondition (and (at_x1)(at_y29))
 :poss-precondition (and (bridge_0_29_1_29))
 :effect (and (not (at_x1)) (at_x0))
)

(:action move_1_29_2_29
 :parameters ()
 :precondition (and (at_x1)(at_y29))
 :poss-precondition (and (bridge_1_29_2_29))
 :effect (and (not (at_x1)) (at_x2))
)

(:action move_1_29_1_28
 :parameters ()
 :precondition (and (at_x1)(at_y29))
 :poss-precondition (and (bridge_1_28_1_29))
 :effect (and (not (at_y29)) (at_y28))
)

(:action move_1_29_1_30
 :parameters ()
 :precondition (and (at_x1)(at_y29))
 :poss-precondition (and (bridge_1_29_1_30))
 :effect (and (not (at_y29)) (at_y30))
)

(:action move_1_30_0_30
 :parameters ()
 :precondition (and (at_x1)(at_y30))
 :poss-precondition (and (bridge_0_30_1_30))
 :effect (and (not (at_x1)) (at_x0))
)

(:action move_1_30_2_30
 :parameters ()
 :precondition (and (at_x1)(at_y30))
 :poss-precondition (and (bridge_1_30_2_30))
 :effect (and (not (at_x1)) (at_x2))
)

(:action move_1_30_1_29
 :parameters ()
 :precondition (and (at_x1)(at_y30))
 :poss-precondition (and (bridge_1_29_1_30))
 :effect (and (not (at_y30)) (at_y29))
)

(:action move_1_30_1_31
 :parameters ()
 :precondition (and (at_x1)(at_y30))
 :poss-precondition (and (bridge_1_30_1_31))
 :effect (and (not (at_y30)) (at_y31))
)

(:action move_1_31_0_31
 :parameters ()
 :precondition (and (at_x1)(at_y31))
 :poss-precondition (and (bridge_0_31_1_31))
 :effect (and (not (at_x1)) (at_x0))
)

(:action move_1_31_2_31
 :parameters ()
 :precondition (and (at_x1)(at_y31))
 :poss-precondition (and (bridge_1_31_2_31))
 :effect (and (not (at_x1)) (at_x2))
)

(:action move_1_31_1_30
 :parameters ()
 :precondition (and (at_x1)(at_y31))
 :poss-precondition (and (bridge_1_30_1_31))
 :effect (and (not (at_y31)) (at_y30))
)

(:action move_2_0_1_0
 :parameters ()
 :precondition (and (at_x2)(at_y0))
 :poss-precondition (and (bridge_1_0_2_0))
 :effect (and (not (at_x2)) (at_x1))
)

(:action move_2_0_3_0
 :parameters ()
 :precondition (and (at_x2)(at_y0))
 :poss-precondition (and (bridge_2_0_3_0))
 :effect (and (not (at_x2)) (at_x3))
)

(:action move_2_0_2_1
 :parameters ()
 :precondition (and (at_x2)(at_y0))
 :poss-precondition (and (bridge_2_0_2_1))
 :effect (and (not (at_y0)) (at_y1))
)

(:action move_2_1_1_1
 :parameters ()
 :precondition (and (at_x2)(at_y1))
 :poss-precondition (and (bridge_1_1_2_1))
 :effect (and (not (at_x2)) (at_x1))
)

(:action move_2_1_3_1
 :parameters ()
 :precondition (and (at_x2)(at_y1))
 :poss-precondition (and (bridge_2_1_3_1))
 :effect (and (not (at_x2)) (at_x3))
)

(:action move_2_1_2_0
 :parameters ()
 :precondition (and (at_x2)(at_y1))
 :poss-precondition (and (bridge_2_0_2_1))
 :effect (and (not (at_y1)) (at_y0))
)

(:action move_2_1_2_2
 :parameters ()
 :precondition (and (at_x2)(at_y1))
 :poss-precondition (and (bridge_2_1_2_2))
 :effect (and (not (at_y1)) (at_y2))
)

(:action move_2_2_1_2
 :parameters ()
 :precondition (and (at_x2)(at_y2))
 :poss-precondition (and (bridge_1_2_2_2))
 :effect (and (not (at_x2)) (at_x1))
)

(:action move_2_2_3_2
 :parameters ()
 :precondition (and (at_x2)(at_y2))
 :poss-precondition (and (bridge_2_2_3_2))
 :effect (and (not (at_x2)) (at_x3))
)

(:action move_2_2_2_1
 :parameters ()
 :precondition (and (at_x2)(at_y2))
 :poss-precondition (and (bridge_2_1_2_2))
 :effect (and (not (at_y2)) (at_y1))
)

(:action move_2_2_2_3
 :parameters ()
 :precondition (and (at_x2)(at_y2))
 :poss-precondition (and (bridge_2_2_2_3))
 :effect (and (not (at_y2)) (at_y3))
)

(:action move_2_3_1_3
 :parameters ()
 :precondition (and (at_x2)(at_y3))
 :poss-precondition (and (bridge_1_3_2_3))
 :effect (and (not (at_x2)) (at_x1))
)

(:action move_2_3_3_3
 :parameters ()
 :precondition (and (at_x2)(at_y3))
 :poss-precondition (and (bridge_2_3_3_3))
 :effect (and (not (at_x2)) (at_x3))
)

(:action move_2_3_2_2
 :parameters ()
 :precondition (and (at_x2)(at_y3))
 :poss-precondition (and (bridge_2_2_2_3))
 :effect (and (not (at_y3)) (at_y2))
)

(:action move_2_3_2_4
 :parameters ()
 :precondition (and (at_x2)(at_y3))
 :poss-precondition (and (bridge_2_3_2_4))
 :effect (and (not (at_y3)) (at_y4))
)

(:action move_2_4_1_4
 :parameters ()
 :precondition (and (at_x2)(at_y4))
 :poss-precondition (and (bridge_1_4_2_4))
 :effect (and (not (at_x2)) (at_x1))
)

(:action move_2_4_3_4
 :parameters ()
 :precondition (and (at_x2)(at_y4))
 :poss-precondition (and (bridge_2_4_3_4))
 :effect (and (not (at_x2)) (at_x3))
)

(:action move_2_4_2_3
 :parameters ()
 :precondition (and (at_x2)(at_y4))
 :poss-precondition (and (bridge_2_3_2_4))
 :effect (and (not (at_y4)) (at_y3))
)

(:action move_2_4_2_5
 :parameters ()
 :precondition (and (at_x2)(at_y4))
 :poss-precondition (and (bridge_2_4_2_5))
 :effect (and (not (at_y4)) (at_y5))
)

(:action move_2_5_1_5
 :parameters ()
 :precondition (and (at_x2)(at_y5))
 :poss-precondition (and (bridge_1_5_2_5))
 :effect (and (not (at_x2)) (at_x1))
)

(:action move_2_5_3_5
 :parameters ()
 :precondition (and (at_x2)(at_y5))
 :poss-precondition (and (bridge_2_5_3_5))
 :effect (and (not (at_x2)) (at_x3))
)

(:action move_2_5_2_4
 :parameters ()
 :precondition (and (at_x2)(at_y5))
 :poss-precondition (and (bridge_2_4_2_5))
 :effect (and (not (at_y5)) (at_y4))
)

(:action move_2_5_2_6
 :parameters ()
 :precondition (and (at_x2)(at_y5))
 :poss-precondition (and (bridge_2_5_2_6))
 :effect (and (not (at_y5)) (at_y6))
)

(:action move_2_6_1_6
 :parameters ()
 :precondition (and (at_x2)(at_y6))
 :poss-precondition (and (bridge_1_6_2_6))
 :effect (and (not (at_x2)) (at_x1))
)

(:action move_2_6_3_6
 :parameters ()
 :precondition (and (at_x2)(at_y6))
 :poss-precondition (and (bridge_2_6_3_6))
 :effect (and (not (at_x2)) (at_x3))
)

(:action move_2_6_2_5
 :parameters ()
 :precondition (and (at_x2)(at_y6))
 :poss-precondition (and (bridge_2_5_2_6))
 :effect (and (not (at_y6)) (at_y5))
)

(:action move_2_6_2_7
 :parameters ()
 :precondition (and (at_x2)(at_y6))
 :poss-precondition (and (bridge_2_6_2_7))
 :effect (and (not (at_y6)) (at_y7))
)

(:action move_2_7_1_7
 :parameters ()
 :precondition (and (at_x2)(at_y7))
 :poss-precondition (and (bridge_1_7_2_7))
 :effect (and (not (at_x2)) (at_x1))
)

(:action move_2_7_3_7
 :parameters ()
 :precondition (and (at_x2)(at_y7))
 :poss-precondition (and (bridge_2_7_3_7))
 :effect (and (not (at_x2)) (at_x3))
)

(:action move_2_7_2_6
 :parameters ()
 :precondition (and (at_x2)(at_y7))
 :poss-precondition (and (bridge_2_6_2_7))
 :effect (and (not (at_y7)) (at_y6))
)

(:action move_2_7_2_8
 :parameters ()
 :precondition (and (at_x2)(at_y7))
 :poss-precondition (and (bridge_2_7_2_8))
 :effect (and (not (at_y7)) (at_y8))
)

(:action move_2_8_1_8
 :parameters ()
 :precondition (and (at_x2)(at_y8))
 :poss-precondition (and (bridge_1_8_2_8))
 :effect (and (not (at_x2)) (at_x1))
)

(:action move_2_8_3_8
 :parameters ()
 :precondition (and (at_x2)(at_y8))
 :poss-precondition (and (bridge_2_8_3_8))
 :effect (and (not (at_x2)) (at_x3))
)

(:action move_2_8_2_7
 :parameters ()
 :precondition (and (at_x2)(at_y8))
 :poss-precondition (and (bridge_2_7_2_8))
 :effect (and (not (at_y8)) (at_y7))
)

(:action move_2_8_2_9
 :parameters ()
 :precondition (and (at_x2)(at_y8))
 :poss-precondition (and (bridge_2_8_2_9))
 :effect (and (not (at_y8)) (at_y9))
)

(:action move_2_9_1_9
 :parameters ()
 :precondition (and (at_x2)(at_y9))
 :poss-precondition (and (bridge_1_9_2_9))
 :effect (and (not (at_x2)) (at_x1))
)

(:action move_2_9_3_9
 :parameters ()
 :precondition (and (at_x2)(at_y9))
 :poss-precondition (and (bridge_2_9_3_9))
 :effect (and (not (at_x2)) (at_x3))
)

(:action move_2_9_2_8
 :parameters ()
 :precondition (and (at_x2)(at_y9))
 :poss-precondition (and (bridge_2_8_2_9))
 :effect (and (not (at_y9)) (at_y8))
)

(:action move_2_9_2_10
 :parameters ()
 :precondition (and (at_x2)(at_y9))
 :poss-precondition (and (bridge_2_9_2_10))
 :effect (and (not (at_y9)) (at_y10))
)

(:action move_2_10_1_10
 :parameters ()
 :precondition (and (at_x2)(at_y10))
 :poss-precondition (and (bridge_1_10_2_10))
 :effect (and (not (at_x2)) (at_x1))
)

(:action move_2_10_3_10
 :parameters ()
 :precondition (and (at_x2)(at_y10))
 :poss-precondition (and (bridge_2_10_3_10))
 :effect (and (not (at_x2)) (at_x3))
)

(:action move_2_10_2_9
 :parameters ()
 :precondition (and (at_x2)(at_y10))
 :poss-precondition (and (bridge_2_9_2_10))
 :effect (and (not (at_y10)) (at_y9))
)

(:action move_2_10_2_11
 :parameters ()
 :precondition (and (at_x2)(at_y10))
 :poss-precondition (and (bridge_2_10_2_11))
 :effect (and (not (at_y10)) (at_y11))
)

(:action move_2_11_1_11
 :parameters ()
 :precondition (and (at_x2)(at_y11))
 :poss-precondition (and (bridge_1_11_2_11))
 :effect (and (not (at_x2)) (at_x1))
)

(:action move_2_11_3_11
 :parameters ()
 :precondition (and (at_x2)(at_y11))
 :poss-precondition (and (bridge_2_11_3_11))
 :effect (and (not (at_x2)) (at_x3))
)

(:action move_2_11_2_10
 :parameters ()
 :precondition (and (at_x2)(at_y11))
 :poss-precondition (and (bridge_2_10_2_11))
 :effect (and (not (at_y11)) (at_y10))
)

(:action move_2_11_2_12
 :parameters ()
 :precondition (and (at_x2)(at_y11))
 :poss-precondition (and (bridge_2_11_2_12))
 :effect (and (not (at_y11)) (at_y12))
)

(:action move_2_12_1_12
 :parameters ()
 :precondition (and (at_x2)(at_y12))
 :poss-precondition (and (bridge_1_12_2_12))
 :effect (and (not (at_x2)) (at_x1))
)

(:action move_2_12_3_12
 :parameters ()
 :precondition (and (at_x2)(at_y12))
 :poss-precondition (and (bridge_2_12_3_12))
 :effect (and (not (at_x2)) (at_x3))
)

(:action move_2_12_2_11
 :parameters ()
 :precondition (and (at_x2)(at_y12))
 :poss-precondition (and (bridge_2_11_2_12))
 :effect (and (not (at_y12)) (at_y11))
)

(:action move_2_12_2_13
 :parameters ()
 :precondition (and (at_x2)(at_y12))
 :poss-precondition (and (bridge_2_12_2_13))
 :effect (and (not (at_y12)) (at_y13))
)

(:action move_2_13_1_13
 :parameters ()
 :precondition (and (at_x2)(at_y13))
 :poss-precondition (and (bridge_1_13_2_13))
 :effect (and (not (at_x2)) (at_x1))
)

(:action move_2_13_3_13
 :parameters ()
 :precondition (and (at_x2)(at_y13))
 :poss-precondition (and (bridge_2_13_3_13))
 :effect (and (not (at_x2)) (at_x3))
)

(:action move_2_13_2_12
 :parameters ()
 :precondition (and (at_x2)(at_y13))
 :poss-precondition (and (bridge_2_12_2_13))
 :effect (and (not (at_y13)) (at_y12))
)

(:action move_2_13_2_14
 :parameters ()
 :precondition (and (at_x2)(at_y13))
 :poss-precondition (and (bridge_2_13_2_14))
 :effect (and (not (at_y13)) (at_y14))
)

(:action move_2_14_1_14
 :parameters ()
 :precondition (and (at_x2)(at_y14))
 :poss-precondition (and (bridge_1_14_2_14))
 :effect (and (not (at_x2)) (at_x1))
)

(:action move_2_14_3_14
 :parameters ()
 :precondition (and (at_x2)(at_y14))
 :poss-precondition (and (bridge_2_14_3_14))
 :effect (and (not (at_x2)) (at_x3))
)

(:action move_2_14_2_13
 :parameters ()
 :precondition (and (at_x2)(at_y14))
 :poss-precondition (and (bridge_2_13_2_14))
 :effect (and (not (at_y14)) (at_y13))
)

(:action move_2_14_2_15
 :parameters ()
 :precondition (and (at_x2)(at_y14))
 :poss-precondition (and (bridge_2_14_2_15))
 :effect (and (not (at_y14)) (at_y15))
)

(:action move_2_15_1_15
 :parameters ()
 :precondition (and (at_x2)(at_y15))
 :poss-precondition (and (bridge_1_15_2_15))
 :effect (and (not (at_x2)) (at_x1))
)

(:action move_2_15_3_15
 :parameters ()
 :precondition (and (at_x2)(at_y15))
 :poss-precondition (and (bridge_2_15_3_15))
 :effect (and (not (at_x2)) (at_x3))
)

(:action move_2_15_2_14
 :parameters ()
 :precondition (and (at_x2)(at_y15))
 :poss-precondition (and (bridge_2_14_2_15))
 :effect (and (not (at_y15)) (at_y14))
)

(:action move_2_15_2_16
 :parameters ()
 :precondition (and (at_x2)(at_y15))
 :poss-precondition (and (bridge_2_15_2_16))
 :effect (and (not (at_y15)) (at_y16))
)

(:action move_2_16_1_16
 :parameters ()
 :precondition (and (at_x2)(at_y16))
 :poss-precondition (and (bridge_1_16_2_16))
 :effect (and (not (at_x2)) (at_x1))
)

(:action move_2_16_3_16
 :parameters ()
 :precondition (and (at_x2)(at_y16))
 :poss-precondition (and (bridge_2_16_3_16))
 :effect (and (not (at_x2)) (at_x3))
)

(:action move_2_16_2_15
 :parameters ()
 :precondition (and (at_x2)(at_y16))
 :poss-precondition (and (bridge_2_15_2_16))
 :effect (and (not (at_y16)) (at_y15))
)

(:action move_2_16_2_17
 :parameters ()
 :precondition (and (at_x2)(at_y16))
 :poss-precondition (and (bridge_2_16_2_17))
 :effect (and (not (at_y16)) (at_y17))
)

(:action move_2_17_1_17
 :parameters ()
 :precondition (and (at_x2)(at_y17))
 :poss-precondition (and (bridge_1_17_2_17))
 :effect (and (not (at_x2)) (at_x1))
)

(:action move_2_17_3_17
 :parameters ()
 :precondition (and (at_x2)(at_y17))
 :poss-precondition (and (bridge_2_17_3_17))
 :effect (and (not (at_x2)) (at_x3))
)

(:action move_2_17_2_16
 :parameters ()
 :precondition (and (at_x2)(at_y17))
 :poss-precondition (and (bridge_2_16_2_17))
 :effect (and (not (at_y17)) (at_y16))
)

(:action move_2_17_2_18
 :parameters ()
 :precondition (and (at_x2)(at_y17))
 :poss-precondition (and (bridge_2_17_2_18))
 :effect (and (not (at_y17)) (at_y18))
)

(:action move_2_18_1_18
 :parameters ()
 :precondition (and (at_x2)(at_y18))
 :poss-precondition (and (bridge_1_18_2_18))
 :effect (and (not (at_x2)) (at_x1))
)

(:action move_2_18_3_18
 :parameters ()
 :precondition (and (at_x2)(at_y18))
 :poss-precondition (and (bridge_2_18_3_18))
 :effect (and (not (at_x2)) (at_x3))
)

(:action move_2_18_2_17
 :parameters ()
 :precondition (and (at_x2)(at_y18))
 :poss-precondition (and (bridge_2_17_2_18))
 :effect (and (not (at_y18)) (at_y17))
)

(:action move_2_18_2_19
 :parameters ()
 :precondition (and (at_x2)(at_y18))
 :poss-precondition (and (bridge_2_18_2_19))
 :effect (and (not (at_y18)) (at_y19))
)

(:action move_2_19_1_19
 :parameters ()
 :precondition (and (at_x2)(at_y19))
 :poss-precondition (and (bridge_1_19_2_19))
 :effect (and (not (at_x2)) (at_x1))
)

(:action move_2_19_3_19
 :parameters ()
 :precondition (and (at_x2)(at_y19))
 :poss-precondition (and (bridge_2_19_3_19))
 :effect (and (not (at_x2)) (at_x3))
)

(:action move_2_19_2_18
 :parameters ()
 :precondition (and (at_x2)(at_y19))
 :poss-precondition (and (bridge_2_18_2_19))
 :effect (and (not (at_y19)) (at_y18))
)

(:action move_2_19_2_20
 :parameters ()
 :precondition (and (at_x2)(at_y19))
 :poss-precondition (and (bridge_2_19_2_20))
 :effect (and (not (at_y19)) (at_y20))
)

(:action move_2_20_1_20
 :parameters ()
 :precondition (and (at_x2)(at_y20))
 :poss-precondition (and (bridge_1_20_2_20))
 :effect (and (not (at_x2)) (at_x1))
)

(:action move_2_20_3_20
 :parameters ()
 :precondition (and (at_x2)(at_y20))
 :poss-precondition (and (bridge_2_20_3_20))
 :effect (and (not (at_x2)) (at_x3))
)

(:action move_2_20_2_19
 :parameters ()
 :precondition (and (at_x2)(at_y20))
 :poss-precondition (and (bridge_2_19_2_20))
 :effect (and (not (at_y20)) (at_y19))
)

(:action move_2_20_2_21
 :parameters ()
 :precondition (and (at_x2)(at_y20))
 :poss-precondition (and (bridge_2_20_2_21))
 :effect (and (not (at_y20)) (at_y21))
)

(:action move_2_21_1_21
 :parameters ()
 :precondition (and (at_x2)(at_y21))
 :poss-precondition (and (bridge_1_21_2_21))
 :effect (and (not (at_x2)) (at_x1))
)

(:action move_2_21_3_21
 :parameters ()
 :precondition (and (at_x2)(at_y21))
 :poss-precondition (and (bridge_2_21_3_21))
 :effect (and (not (at_x2)) (at_x3))
)

(:action move_2_21_2_20
 :parameters ()
 :precondition (and (at_x2)(at_y21))
 :poss-precondition (and (bridge_2_20_2_21))
 :effect (and (not (at_y21)) (at_y20))
)

(:action move_2_21_2_22
 :parameters ()
 :precondition (and (at_x2)(at_y21))
 :poss-precondition (and (bridge_2_21_2_22))
 :effect (and (not (at_y21)) (at_y22))
)

(:action move_2_22_1_22
 :parameters ()
 :precondition (and (at_x2)(at_y22))
 :poss-precondition (and (bridge_1_22_2_22))
 :effect (and (not (at_x2)) (at_x1))
)

(:action move_2_22_3_22
 :parameters ()
 :precondition (and (at_x2)(at_y22))
 :poss-precondition (and (bridge_2_22_3_22))
 :effect (and (not (at_x2)) (at_x3))
)

(:action move_2_22_2_21
 :parameters ()
 :precondition (and (at_x2)(at_y22))
 :poss-precondition (and (bridge_2_21_2_22))
 :effect (and (not (at_y22)) (at_y21))
)

(:action move_2_22_2_23
 :parameters ()
 :precondition (and (at_x2)(at_y22))
 :poss-precondition (and (bridge_2_22_2_23))
 :effect (and (not (at_y22)) (at_y23))
)

(:action move_2_23_1_23
 :parameters ()
 :precondition (and (at_x2)(at_y23))
 :poss-precondition (and (bridge_1_23_2_23))
 :effect (and (not (at_x2)) (at_x1))
)

(:action move_2_23_3_23
 :parameters ()
 :precondition (and (at_x2)(at_y23))
 :poss-precondition (and (bridge_2_23_3_23))
 :effect (and (not (at_x2)) (at_x3))
)

(:action move_2_23_2_22
 :parameters ()
 :precondition (and (at_x2)(at_y23))
 :poss-precondition (and (bridge_2_22_2_23))
 :effect (and (not (at_y23)) (at_y22))
)

(:action move_2_23_2_24
 :parameters ()
 :precondition (and (at_x2)(at_y23))
 :poss-precondition (and (bridge_2_23_2_24))
 :effect (and (not (at_y23)) (at_y24))
)

(:action move_2_24_1_24
 :parameters ()
 :precondition (and (at_x2)(at_y24))
 :poss-precondition (and (bridge_1_24_2_24))
 :effect (and (not (at_x2)) (at_x1))
)

(:action move_2_24_3_24
 :parameters ()
 :precondition (and (at_x2)(at_y24))
 :poss-precondition (and (bridge_2_24_3_24))
 :effect (and (not (at_x2)) (at_x3))
)

(:action move_2_24_2_23
 :parameters ()
 :precondition (and (at_x2)(at_y24))
 :poss-precondition (and (bridge_2_23_2_24))
 :effect (and (not (at_y24)) (at_y23))
)

(:action move_2_24_2_25
 :parameters ()
 :precondition (and (at_x2)(at_y24))
 :poss-precondition (and (bridge_2_24_2_25))
 :effect (and (not (at_y24)) (at_y25))
)

(:action move_2_25_1_25
 :parameters ()
 :precondition (and (at_x2)(at_y25))
 :poss-precondition (and (bridge_1_25_2_25))
 :effect (and (not (at_x2)) (at_x1))
)

(:action move_2_25_3_25
 :parameters ()
 :precondition (and (at_x2)(at_y25))
 :poss-precondition (and (bridge_2_25_3_25))
 :effect (and (not (at_x2)) (at_x3))
)

(:action move_2_25_2_24
 :parameters ()
 :precondition (and (at_x2)(at_y25))
 :poss-precondition (and (bridge_2_24_2_25))
 :effect (and (not (at_y25)) (at_y24))
)

(:action move_2_25_2_26
 :parameters ()
 :precondition (and (at_x2)(at_y25))
 :poss-precondition (and (bridge_2_25_2_26))
 :effect (and (not (at_y25)) (at_y26))
)

(:action move_2_26_1_26
 :parameters ()
 :precondition (and (at_x2)(at_y26))
 :poss-precondition (and (bridge_1_26_2_26))
 :effect (and (not (at_x2)) (at_x1))
)

(:action move_2_26_3_26
 :parameters ()
 :precondition (and (at_x2)(at_y26))
 :poss-precondition (and (bridge_2_26_3_26))
 :effect (and (not (at_x2)) (at_x3))
)

(:action move_2_26_2_25
 :parameters ()
 :precondition (and (at_x2)(at_y26))
 :poss-precondition (and (bridge_2_25_2_26))
 :effect (and (not (at_y26)) (at_y25))
)

(:action move_2_26_2_27
 :parameters ()
 :precondition (and (at_x2)(at_y26))
 :poss-precondition (and (bridge_2_26_2_27))
 :effect (and (not (at_y26)) (at_y27))
)

(:action move_2_27_1_27
 :parameters ()
 :precondition (and (at_x2)(at_y27))
 :poss-precondition (and (bridge_1_27_2_27))
 :effect (and (not (at_x2)) (at_x1))
)

(:action move_2_27_3_27
 :parameters ()
 :precondition (and (at_x2)(at_y27))
 :poss-precondition (and (bridge_2_27_3_27))
 :effect (and (not (at_x2)) (at_x3))
)

(:action move_2_27_2_26
 :parameters ()
 :precondition (and (at_x2)(at_y27))
 :poss-precondition (and (bridge_2_26_2_27))
 :effect (and (not (at_y27)) (at_y26))
)

(:action move_2_27_2_28
 :parameters ()
 :precondition (and (at_x2)(at_y27))
 :poss-precondition (and (bridge_2_27_2_28))
 :effect (and (not (at_y27)) (at_y28))
)

(:action move_2_28_1_28
 :parameters ()
 :precondition (and (at_x2)(at_y28))
 :poss-precondition (and (bridge_1_28_2_28))
 :effect (and (not (at_x2)) (at_x1))
)

(:action move_2_28_3_28
 :parameters ()
 :precondition (and (at_x2)(at_y28))
 :poss-precondition (and (bridge_2_28_3_28))
 :effect (and (not (at_x2)) (at_x3))
)

(:action move_2_28_2_27
 :parameters ()
 :precondition (and (at_x2)(at_y28))
 :poss-precondition (and (bridge_2_27_2_28))
 :effect (and (not (at_y28)) (at_y27))
)

(:action move_2_28_2_29
 :parameters ()
 :precondition (and (at_x2)(at_y28))
 :poss-precondition (and (bridge_2_28_2_29))
 :effect (and (not (at_y28)) (at_y29))
)

(:action move_2_29_1_29
 :parameters ()
 :precondition (and (at_x2)(at_y29))
 :poss-precondition (and (bridge_1_29_2_29))
 :effect (and (not (at_x2)) (at_x1))
)

(:action move_2_29_3_29
 :parameters ()
 :precondition (and (at_x2)(at_y29))
 :poss-precondition (and (bridge_2_29_3_29))
 :effect (and (not (at_x2)) (at_x3))
)

(:action move_2_29_2_28
 :parameters ()
 :precondition (and (at_x2)(at_y29))
 :poss-precondition (and (bridge_2_28_2_29))
 :effect (and (not (at_y29)) (at_y28))
)

(:action move_2_29_2_30
 :parameters ()
 :precondition (and (at_x2)(at_y29))
 :poss-precondition (and (bridge_2_29_2_30))
 :effect (and (not (at_y29)) (at_y30))
)

(:action move_2_30_1_30
 :parameters ()
 :precondition (and (at_x2)(at_y30))
 :poss-precondition (and (bridge_1_30_2_30))
 :effect (and (not (at_x2)) (at_x1))
)

(:action move_2_30_3_30
 :parameters ()
 :precondition (and (at_x2)(at_y30))
 :poss-precondition (and (bridge_2_30_3_30))
 :effect (and (not (at_x2)) (at_x3))
)

(:action move_2_30_2_29
 :parameters ()
 :precondition (and (at_x2)(at_y30))
 :poss-precondition (and (bridge_2_29_2_30))
 :effect (and (not (at_y30)) (at_y29))
)

(:action move_2_30_2_31
 :parameters ()
 :precondition (and (at_x2)(at_y30))
 :poss-precondition (and (bridge_2_30_2_31))
 :effect (and (not (at_y30)) (at_y31))
)

(:action move_2_31_1_31
 :parameters ()
 :precondition (and (at_x2)(at_y31))
 :poss-precondition (and (bridge_1_31_2_31))
 :effect (and (not (at_x2)) (at_x1))
)

(:action move_2_31_3_31
 :parameters ()
 :precondition (and (at_x2)(at_y31))
 :poss-precondition (and (bridge_2_31_3_31))
 :effect (and (not (at_x2)) (at_x3))
)

(:action move_2_31_2_30
 :parameters ()
 :precondition (and (at_x2)(at_y31))
 :poss-precondition (and (bridge_2_30_2_31))
 :effect (and (not (at_y31)) (at_y30))
)

(:action move_3_0_2_0
 :parameters ()
 :precondition (and (at_x3)(at_y0))
 :poss-precondition (and (bridge_2_0_3_0))
 :effect (and (not (at_x3)) (at_x2))
)

(:action move_3_0_4_0
 :parameters ()
 :precondition (and (at_x3)(at_y0))
 :poss-precondition (and (bridge_3_0_4_0))
 :effect (and (not (at_x3)) (at_x4))
)

(:action move_3_0_3_1
 :parameters ()
 :precondition (and (at_x3)(at_y0))
 :poss-precondition (and (bridge_3_0_3_1))
 :effect (and (not (at_y0)) (at_y1))
)

(:action move_3_1_2_1
 :parameters ()
 :precondition (and (at_x3)(at_y1))
 :poss-precondition (and (bridge_2_1_3_1))
 :effect (and (not (at_x3)) (at_x2))
)

(:action move_3_1_4_1
 :parameters ()
 :precondition (and (at_x3)(at_y1))
 :poss-precondition (and (bridge_3_1_4_1))
 :effect (and (not (at_x3)) (at_x4))
)

(:action move_3_1_3_0
 :parameters ()
 :precondition (and (at_x3)(at_y1))
 :poss-precondition (and (bridge_3_0_3_1))
 :effect (and (not (at_y1)) (at_y0))
)

(:action move_3_1_3_2
 :parameters ()
 :precondition (and (at_x3)(at_y1))
 :poss-precondition (and (bridge_3_1_3_2))
 :effect (and (not (at_y1)) (at_y2))
)

(:action move_3_2_2_2
 :parameters ()
 :precondition (and (at_x3)(at_y2))
 :poss-precondition (and (bridge_2_2_3_2))
 :effect (and (not (at_x3)) (at_x2))
)

(:action move_3_2_4_2
 :parameters ()
 :precondition (and (at_x3)(at_y2))
 :poss-precondition (and (bridge_3_2_4_2))
 :effect (and (not (at_x3)) (at_x4))
)

(:action move_3_2_3_1
 :parameters ()
 :precondition (and (at_x3)(at_y2))
 :poss-precondition (and (bridge_3_1_3_2))
 :effect (and (not (at_y2)) (at_y1))
)

(:action move_3_2_3_3
 :parameters ()
 :precondition (and (at_x3)(at_y2))
 :poss-precondition (and (bridge_3_2_3_3))
 :effect (and (not (at_y2)) (at_y3))
)

(:action move_3_3_2_3
 :parameters ()
 :precondition (and (at_x3)(at_y3))
 :poss-precondition (and (bridge_2_3_3_3))
 :effect (and (not (at_x3)) (at_x2))
)

(:action move_3_3_4_3
 :parameters ()
 :precondition (and (at_x3)(at_y3))
 :poss-precondition (and (bridge_3_3_4_3))
 :effect (and (not (at_x3)) (at_x4))
)

(:action move_3_3_3_2
 :parameters ()
 :precondition (and (at_x3)(at_y3))
 :poss-precondition (and (bridge_3_2_3_3))
 :effect (and (not (at_y3)) (at_y2))
)

(:action move_3_3_3_4
 :parameters ()
 :precondition (and (at_x3)(at_y3))
 :poss-precondition (and (bridge_3_3_3_4))
 :effect (and (not (at_y3)) (at_y4))
)

(:action move_3_4_2_4
 :parameters ()
 :precondition (and (at_x3)(at_y4))
 :poss-precondition (and (bridge_2_4_3_4))
 :effect (and (not (at_x3)) (at_x2))
)

(:action move_3_4_4_4
 :parameters ()
 :precondition (and (at_x3)(at_y4))
 :poss-precondition (and (bridge_3_4_4_4))
 :effect (and (not (at_x3)) (at_x4))
)

(:action move_3_4_3_3
 :parameters ()
 :precondition (and (at_x3)(at_y4))
 :poss-precondition (and (bridge_3_3_3_4))
 :effect (and (not (at_y4)) (at_y3))
)

(:action move_3_4_3_5
 :parameters ()
 :precondition (and (at_x3)(at_y4))
 :poss-precondition (and (bridge_3_4_3_5))
 :effect (and (not (at_y4)) (at_y5))
)

(:action move_3_5_2_5
 :parameters ()
 :precondition (and (at_x3)(at_y5))
 :poss-precondition (and (bridge_2_5_3_5))
 :effect (and (not (at_x3)) (at_x2))
)

(:action move_3_5_4_5
 :parameters ()
 :precondition (and (at_x3)(at_y5))
 :poss-precondition (and (bridge_3_5_4_5))
 :effect (and (not (at_x3)) (at_x4))
)

(:action move_3_5_3_4
 :parameters ()
 :precondition (and (at_x3)(at_y5))
 :poss-precondition (and (bridge_3_4_3_5))
 :effect (and (not (at_y5)) (at_y4))
)

(:action move_3_5_3_6
 :parameters ()
 :precondition (and (at_x3)(at_y5))
 :poss-precondition (and (bridge_3_5_3_6))
 :effect (and (not (at_y5)) (at_y6))
)

(:action move_3_6_2_6
 :parameters ()
 :precondition (and (at_x3)(at_y6))
 :poss-precondition (and (bridge_2_6_3_6))
 :effect (and (not (at_x3)) (at_x2))
)

(:action move_3_6_4_6
 :parameters ()
 :precondition (and (at_x3)(at_y6))
 :poss-precondition (and (bridge_3_6_4_6))
 :effect (and (not (at_x3)) (at_x4))
)

(:action move_3_6_3_5
 :parameters ()
 :precondition (and (at_x3)(at_y6))
 :poss-precondition (and (bridge_3_5_3_6))
 :effect (and (not (at_y6)) (at_y5))
)

(:action move_3_6_3_7
 :parameters ()
 :precondition (and (at_x3)(at_y6))
 :poss-precondition (and (bridge_3_6_3_7))
 :effect (and (not (at_y6)) (at_y7))
)

(:action move_3_7_2_7
 :parameters ()
 :precondition (and (at_x3)(at_y7))
 :poss-precondition (and (bridge_2_7_3_7))
 :effect (and (not (at_x3)) (at_x2))
)

(:action move_3_7_4_7
 :parameters ()
 :precondition (and (at_x3)(at_y7))
 :poss-precondition (and (bridge_3_7_4_7))
 :effect (and (not (at_x3)) (at_x4))
)

(:action move_3_7_3_6
 :parameters ()
 :precondition (and (at_x3)(at_y7))
 :poss-precondition (and (bridge_3_6_3_7))
 :effect (and (not (at_y7)) (at_y6))
)

(:action move_3_7_3_8
 :parameters ()
 :precondition (and (at_x3)(at_y7))
 :poss-precondition (and (bridge_3_7_3_8))
 :effect (and (not (at_y7)) (at_y8))
)

(:action move_3_8_2_8
 :parameters ()
 :precondition (and (at_x3)(at_y8))
 :poss-precondition (and (bridge_2_8_3_8))
 :effect (and (not (at_x3)) (at_x2))
)

(:action move_3_8_4_8
 :parameters ()
 :precondition (and (at_x3)(at_y8))
 :poss-precondition (and (bridge_3_8_4_8))
 :effect (and (not (at_x3)) (at_x4))
)

(:action move_3_8_3_7
 :parameters ()
 :precondition (and (at_x3)(at_y8))
 :poss-precondition (and (bridge_3_7_3_8))
 :effect (and (not (at_y8)) (at_y7))
)

(:action move_3_8_3_9
 :parameters ()
 :precondition (and (at_x3)(at_y8))
 :poss-precondition (and (bridge_3_8_3_9))
 :effect (and (not (at_y8)) (at_y9))
)

(:action move_3_9_2_9
 :parameters ()
 :precondition (and (at_x3)(at_y9))
 :poss-precondition (and (bridge_2_9_3_9))
 :effect (and (not (at_x3)) (at_x2))
)

(:action move_3_9_4_9
 :parameters ()
 :precondition (and (at_x3)(at_y9))
 :poss-precondition (and (bridge_3_9_4_9))
 :effect (and (not (at_x3)) (at_x4))
)

(:action move_3_9_3_8
 :parameters ()
 :precondition (and (at_x3)(at_y9))
 :poss-precondition (and (bridge_3_8_3_9))
 :effect (and (not (at_y9)) (at_y8))
)

(:action move_3_9_3_10
 :parameters ()
 :precondition (and (at_x3)(at_y9))
 :poss-precondition (and (bridge_3_9_3_10))
 :effect (and (not (at_y9)) (at_y10))
)

(:action move_3_10_2_10
 :parameters ()
 :precondition (and (at_x3)(at_y10))
 :poss-precondition (and (bridge_2_10_3_10))
 :effect (and (not (at_x3)) (at_x2))
)

(:action move_3_10_4_10
 :parameters ()
 :precondition (and (at_x3)(at_y10))
 :poss-precondition (and (bridge_3_10_4_10))
 :effect (and (not (at_x3)) (at_x4))
)

(:action move_3_10_3_9
 :parameters ()
 :precondition (and (at_x3)(at_y10))
 :poss-precondition (and (bridge_3_9_3_10))
 :effect (and (not (at_y10)) (at_y9))
)

(:action move_3_10_3_11
 :parameters ()
 :precondition (and (at_x3)(at_y10))
 :poss-precondition (and (bridge_3_10_3_11))
 :effect (and (not (at_y10)) (at_y11))
)

(:action move_3_11_2_11
 :parameters ()
 :precondition (and (at_x3)(at_y11))
 :poss-precondition (and (bridge_2_11_3_11))
 :effect (and (not (at_x3)) (at_x2))
)

(:action move_3_11_4_11
 :parameters ()
 :precondition (and (at_x3)(at_y11))
 :poss-precondition (and (bridge_3_11_4_11))
 :effect (and (not (at_x3)) (at_x4))
)

(:action move_3_11_3_10
 :parameters ()
 :precondition (and (at_x3)(at_y11))
 :poss-precondition (and (bridge_3_10_3_11))
 :effect (and (not (at_y11)) (at_y10))
)

(:action move_3_11_3_12
 :parameters ()
 :precondition (and (at_x3)(at_y11))
 :poss-precondition (and (bridge_3_11_3_12))
 :effect (and (not (at_y11)) (at_y12))
)

(:action move_3_12_2_12
 :parameters ()
 :precondition (and (at_x3)(at_y12))
 :poss-precondition (and (bridge_2_12_3_12))
 :effect (and (not (at_x3)) (at_x2))
)

(:action move_3_12_4_12
 :parameters ()
 :precondition (and (at_x3)(at_y12))
 :poss-precondition (and (bridge_3_12_4_12))
 :effect (and (not (at_x3)) (at_x4))
)

(:action move_3_12_3_11
 :parameters ()
 :precondition (and (at_x3)(at_y12))
 :poss-precondition (and (bridge_3_11_3_12))
 :effect (and (not (at_y12)) (at_y11))
)

(:action move_3_12_3_13
 :parameters ()
 :precondition (and (at_x3)(at_y12))
 :poss-precondition (and (bridge_3_12_3_13))
 :effect (and (not (at_y12)) (at_y13))
)

(:action move_3_13_2_13
 :parameters ()
 :precondition (and (at_x3)(at_y13))
 :poss-precondition (and (bridge_2_13_3_13))
 :effect (and (not (at_x3)) (at_x2))
)

(:action move_3_13_4_13
 :parameters ()
 :precondition (and (at_x3)(at_y13))
 :poss-precondition (and (bridge_3_13_4_13))
 :effect (and (not (at_x3)) (at_x4))
)

(:action move_3_13_3_12
 :parameters ()
 :precondition (and (at_x3)(at_y13))
 :poss-precondition (and (bridge_3_12_3_13))
 :effect (and (not (at_y13)) (at_y12))
)

(:action move_3_13_3_14
 :parameters ()
 :precondition (and (at_x3)(at_y13))
 :poss-precondition (and (bridge_3_13_3_14))
 :effect (and (not (at_y13)) (at_y14))
)

(:action move_3_14_2_14
 :parameters ()
 :precondition (and (at_x3)(at_y14))
 :poss-precondition (and (bridge_2_14_3_14))
 :effect (and (not (at_x3)) (at_x2))
)

(:action move_3_14_4_14
 :parameters ()
 :precondition (and (at_x3)(at_y14))
 :poss-precondition (and (bridge_3_14_4_14))
 :effect (and (not (at_x3)) (at_x4))
)

(:action move_3_14_3_13
 :parameters ()
 :precondition (and (at_x3)(at_y14))
 :poss-precondition (and (bridge_3_13_3_14))
 :effect (and (not (at_y14)) (at_y13))
)

(:action move_3_14_3_15
 :parameters ()
 :precondition (and (at_x3)(at_y14))
 :poss-precondition (and (bridge_3_14_3_15))
 :effect (and (not (at_y14)) (at_y15))
)

(:action move_3_15_2_15
 :parameters ()
 :precondition (and (at_x3)(at_y15))
 :poss-precondition (and (bridge_2_15_3_15))
 :effect (and (not (at_x3)) (at_x2))
)

(:action move_3_15_4_15
 :parameters ()
 :precondition (and (at_x3)(at_y15))
 :poss-precondition (and (bridge_3_15_4_15))
 :effect (and (not (at_x3)) (at_x4))
)

(:action move_3_15_3_14
 :parameters ()
 :precondition (and (at_x3)(at_y15))
 :poss-precondition (and (bridge_3_14_3_15))
 :effect (and (not (at_y15)) (at_y14))
)

(:action move_3_15_3_16
 :parameters ()
 :precondition (and (at_x3)(at_y15))
 :poss-precondition (and (bridge_3_15_3_16))
 :effect (and (not (at_y15)) (at_y16))
)

(:action move_3_16_2_16
 :parameters ()
 :precondition (and (at_x3)(at_y16))
 :poss-precondition (and (bridge_2_16_3_16))
 :effect (and (not (at_x3)) (at_x2))
)

(:action move_3_16_4_16
 :parameters ()
 :precondition (and (at_x3)(at_y16))
 :poss-precondition (and (bridge_3_16_4_16))
 :effect (and (not (at_x3)) (at_x4))
)

(:action move_3_16_3_15
 :parameters ()
 :precondition (and (at_x3)(at_y16))
 :poss-precondition (and (bridge_3_15_3_16))
 :effect (and (not (at_y16)) (at_y15))
)

(:action move_3_16_3_17
 :parameters ()
 :precondition (and (at_x3)(at_y16))
 :poss-precondition (and (bridge_3_16_3_17))
 :effect (and (not (at_y16)) (at_y17))
)

(:action move_3_17_2_17
 :parameters ()
 :precondition (and (at_x3)(at_y17))
 :poss-precondition (and (bridge_2_17_3_17))
 :effect (and (not (at_x3)) (at_x2))
)

(:action move_3_17_4_17
 :parameters ()
 :precondition (and (at_x3)(at_y17))
 :poss-precondition (and (bridge_3_17_4_17))
 :effect (and (not (at_x3)) (at_x4))
)

(:action move_3_17_3_16
 :parameters ()
 :precondition (and (at_x3)(at_y17))
 :poss-precondition (and (bridge_3_16_3_17))
 :effect (and (not (at_y17)) (at_y16))
)

(:action move_3_17_3_18
 :parameters ()
 :precondition (and (at_x3)(at_y17))
 :poss-precondition (and (bridge_3_17_3_18))
 :effect (and (not (at_y17)) (at_y18))
)

(:action move_3_18_2_18
 :parameters ()
 :precondition (and (at_x3)(at_y18))
 :poss-precondition (and (bridge_2_18_3_18))
 :effect (and (not (at_x3)) (at_x2))
)

(:action move_3_18_4_18
 :parameters ()
 :precondition (and (at_x3)(at_y18))
 :poss-precondition (and (bridge_3_18_4_18))
 :effect (and (not (at_x3)) (at_x4))
)

(:action move_3_18_3_17
 :parameters ()
 :precondition (and (at_x3)(at_y18))
 :poss-precondition (and (bridge_3_17_3_18))
 :effect (and (not (at_y18)) (at_y17))
)

(:action move_3_18_3_19
 :parameters ()
 :precondition (and (at_x3)(at_y18))
 :poss-precondition (and (bridge_3_18_3_19))
 :effect (and (not (at_y18)) (at_y19))
)

(:action move_3_19_2_19
 :parameters ()
 :precondition (and (at_x3)(at_y19))
 :poss-precondition (and (bridge_2_19_3_19))
 :effect (and (not (at_x3)) (at_x2))
)

(:action move_3_19_4_19
 :parameters ()
 :precondition (and (at_x3)(at_y19))
 :poss-precondition (and (bridge_3_19_4_19))
 :effect (and (not (at_x3)) (at_x4))
)

(:action move_3_19_3_18
 :parameters ()
 :precondition (and (at_x3)(at_y19))
 :poss-precondition (and (bridge_3_18_3_19))
 :effect (and (not (at_y19)) (at_y18))
)

(:action move_3_19_3_20
 :parameters ()
 :precondition (and (at_x3)(at_y19))
 :poss-precondition (and (bridge_3_19_3_20))
 :effect (and (not (at_y19)) (at_y20))
)

(:action move_3_20_2_20
 :parameters ()
 :precondition (and (at_x3)(at_y20))
 :poss-precondition (and (bridge_2_20_3_20))
 :effect (and (not (at_x3)) (at_x2))
)

(:action move_3_20_4_20
 :parameters ()
 :precondition (and (at_x3)(at_y20))
 :poss-precondition (and (bridge_3_20_4_20))
 :effect (and (not (at_x3)) (at_x4))
)

(:action move_3_20_3_19
 :parameters ()
 :precondition (and (at_x3)(at_y20))
 :poss-precondition (and (bridge_3_19_3_20))
 :effect (and (not (at_y20)) (at_y19))
)

(:action move_3_20_3_21
 :parameters ()
 :precondition (and (at_x3)(at_y20))
 :poss-precondition (and (bridge_3_20_3_21))
 :effect (and (not (at_y20)) (at_y21))
)

(:action move_3_21_2_21
 :parameters ()
 :precondition (and (at_x3)(at_y21))
 :poss-precondition (and (bridge_2_21_3_21))
 :effect (and (not (at_x3)) (at_x2))
)

(:action move_3_21_4_21
 :parameters ()
 :precondition (and (at_x3)(at_y21))
 :poss-precondition (and (bridge_3_21_4_21))
 :effect (and (not (at_x3)) (at_x4))
)

(:action move_3_21_3_20
 :parameters ()
 :precondition (and (at_x3)(at_y21))
 :poss-precondition (and (bridge_3_20_3_21))
 :effect (and (not (at_y21)) (at_y20))
)

(:action move_3_21_3_22
 :parameters ()
 :precondition (and (at_x3)(at_y21))
 :poss-precondition (and (bridge_3_21_3_22))
 :effect (and (not (at_y21)) (at_y22))
)

(:action move_3_22_2_22
 :parameters ()
 :precondition (and (at_x3)(at_y22))
 :poss-precondition (and (bridge_2_22_3_22))
 :effect (and (not (at_x3)) (at_x2))
)

(:action move_3_22_4_22
 :parameters ()
 :precondition (and (at_x3)(at_y22))
 :poss-precondition (and (bridge_3_22_4_22))
 :effect (and (not (at_x3)) (at_x4))
)

(:action move_3_22_3_21
 :parameters ()
 :precondition (and (at_x3)(at_y22))
 :poss-precondition (and (bridge_3_21_3_22))
 :effect (and (not (at_y22)) (at_y21))
)

(:action move_3_22_3_23
 :parameters ()
 :precondition (and (at_x3)(at_y22))
 :poss-precondition (and (bridge_3_22_3_23))
 :effect (and (not (at_y22)) (at_y23))
)

(:action move_3_23_2_23
 :parameters ()
 :precondition (and (at_x3)(at_y23))
 :poss-precondition (and (bridge_2_23_3_23))
 :effect (and (not (at_x3)) (at_x2))
)

(:action move_3_23_4_23
 :parameters ()
 :precondition (and (at_x3)(at_y23))
 :poss-precondition (and (bridge_3_23_4_23))
 :effect (and (not (at_x3)) (at_x4))
)

(:action move_3_23_3_22
 :parameters ()
 :precondition (and (at_x3)(at_y23))
 :poss-precondition (and (bridge_3_22_3_23))
 :effect (and (not (at_y23)) (at_y22))
)

(:action move_3_23_3_24
 :parameters ()
 :precondition (and (at_x3)(at_y23))
 :poss-precondition (and (bridge_3_23_3_24))
 :effect (and (not (at_y23)) (at_y24))
)

(:action move_3_24_2_24
 :parameters ()
 :precondition (and (at_x3)(at_y24))
 :poss-precondition (and (bridge_2_24_3_24))
 :effect (and (not (at_x3)) (at_x2))
)

(:action move_3_24_4_24
 :parameters ()
 :precondition (and (at_x3)(at_y24))
 :poss-precondition (and (bridge_3_24_4_24))
 :effect (and (not (at_x3)) (at_x4))
)

(:action move_3_24_3_23
 :parameters ()
 :precondition (and (at_x3)(at_y24))
 :poss-precondition (and (bridge_3_23_3_24))
 :effect (and (not (at_y24)) (at_y23))
)

(:action move_3_24_3_25
 :parameters ()
 :precondition (and (at_x3)(at_y24))
 :poss-precondition (and (bridge_3_24_3_25))
 :effect (and (not (at_y24)) (at_y25))
)

(:action move_3_25_2_25
 :parameters ()
 :precondition (and (at_x3)(at_y25))
 :poss-precondition (and (bridge_2_25_3_25))
 :effect (and (not (at_x3)) (at_x2))
)

(:action move_3_25_4_25
 :parameters ()
 :precondition (and (at_x3)(at_y25))
 :poss-precondition (and (bridge_3_25_4_25))
 :effect (and (not (at_x3)) (at_x4))
)

(:action move_3_25_3_24
 :parameters ()
 :precondition (and (at_x3)(at_y25))
 :poss-precondition (and (bridge_3_24_3_25))
 :effect (and (not (at_y25)) (at_y24))
)

(:action move_3_25_3_26
 :parameters ()
 :precondition (and (at_x3)(at_y25))
 :poss-precondition (and (bridge_3_25_3_26))
 :effect (and (not (at_y25)) (at_y26))
)

(:action move_3_26_2_26
 :parameters ()
 :precondition (and (at_x3)(at_y26))
 :poss-precondition (and (bridge_2_26_3_26))
 :effect (and (not (at_x3)) (at_x2))
)

(:action move_3_26_4_26
 :parameters ()
 :precondition (and (at_x3)(at_y26))
 :poss-precondition (and (bridge_3_26_4_26))
 :effect (and (not (at_x3)) (at_x4))
)

(:action move_3_26_3_25
 :parameters ()
 :precondition (and (at_x3)(at_y26))
 :poss-precondition (and (bridge_3_25_3_26))
 :effect (and (not (at_y26)) (at_y25))
)

(:action move_3_26_3_27
 :parameters ()
 :precondition (and (at_x3)(at_y26))
 :poss-precondition (and (bridge_3_26_3_27))
 :effect (and (not (at_y26)) (at_y27))
)

(:action move_3_27_2_27
 :parameters ()
 :precondition (and (at_x3)(at_y27))
 :poss-precondition (and (bridge_2_27_3_27))
 :effect (and (not (at_x3)) (at_x2))
)

(:action move_3_27_4_27
 :parameters ()
 :precondition (and (at_x3)(at_y27))
 :poss-precondition (and (bridge_3_27_4_27))
 :effect (and (not (at_x3)) (at_x4))
)

(:action move_3_27_3_26
 :parameters ()
 :precondition (and (at_x3)(at_y27))
 :poss-precondition (and (bridge_3_26_3_27))
 :effect (and (not (at_y27)) (at_y26))
)

(:action move_3_27_3_28
 :parameters ()
 :precondition (and (at_x3)(at_y27))
 :poss-precondition (and (bridge_3_27_3_28))
 :effect (and (not (at_y27)) (at_y28))
)

(:action move_3_28_2_28
 :parameters ()
 :precondition (and (at_x3)(at_y28))
 :poss-precondition (and (bridge_2_28_3_28))
 :effect (and (not (at_x3)) (at_x2))
)

(:action move_3_28_4_28
 :parameters ()
 :precondition (and (at_x3)(at_y28))
 :poss-precondition (and (bridge_3_28_4_28))
 :effect (and (not (at_x3)) (at_x4))
)

(:action move_3_28_3_27
 :parameters ()
 :precondition (and (at_x3)(at_y28))
 :poss-precondition (and (bridge_3_27_3_28))
 :effect (and (not (at_y28)) (at_y27))
)

(:action move_3_28_3_29
 :parameters ()
 :precondition (and (at_x3)(at_y28))
 :poss-precondition (and (bridge_3_28_3_29))
 :effect (and (not (at_y28)) (at_y29))
)

(:action move_3_29_2_29
 :parameters ()
 :precondition (and (at_x3)(at_y29))
 :poss-precondition (and (bridge_2_29_3_29))
 :effect (and (not (at_x3)) (at_x2))
)

(:action move_3_29_4_29
 :parameters ()
 :precondition (and (at_x3)(at_y29))
 :poss-precondition (and (bridge_3_29_4_29))
 :effect (and (not (at_x3)) (at_x4))
)

(:action move_3_29_3_28
 :parameters ()
 :precondition (and (at_x3)(at_y29))
 :poss-precondition (and (bridge_3_28_3_29))
 :effect (and (not (at_y29)) (at_y28))
)

(:action move_3_29_3_30
 :parameters ()
 :precondition (and (at_x3)(at_y29))
 :poss-precondition (and (bridge_3_29_3_30))
 :effect (and (not (at_y29)) (at_y30))
)

(:action move_3_30_2_30
 :parameters ()
 :precondition (and (at_x3)(at_y30))
 :poss-precondition (and (bridge_2_30_3_30))
 :effect (and (not (at_x3)) (at_x2))
)

(:action move_3_30_4_30
 :parameters ()
 :precondition (and (at_x3)(at_y30))
 :poss-precondition (and (bridge_3_30_4_30))
 :effect (and (not (at_x3)) (at_x4))
)

(:action move_3_30_3_29
 :parameters ()
 :precondition (and (at_x3)(at_y30))
 :poss-precondition (and (bridge_3_29_3_30))
 :effect (and (not (at_y30)) (at_y29))
)

(:action move_3_30_3_31
 :parameters ()
 :precondition (and (at_x3)(at_y30))
 :poss-precondition (and (bridge_3_30_3_31))
 :effect (and (not (at_y30)) (at_y31))
)

(:action move_3_31_2_31
 :parameters ()
 :precondition (and (at_x3)(at_y31))
 :poss-precondition (and (bridge_2_31_3_31))
 :effect (and (not (at_x3)) (at_x2))
)

(:action move_3_31_4_31
 :parameters ()
 :precondition (and (at_x3)(at_y31))
 :poss-precondition (and (bridge_3_31_4_31))
 :effect (and (not (at_x3)) (at_x4))
)

(:action move_3_31_3_30
 :parameters ()
 :precondition (and (at_x3)(at_y31))
 :poss-precondition (and (bridge_3_30_3_31))
 :effect (and (not (at_y31)) (at_y30))
)

(:action move_4_0_3_0
 :parameters ()
 :precondition (and (at_x4)(at_y0))
 :poss-precondition (and (bridge_3_0_4_0))
 :effect (and (not (at_x4)) (at_x3))
)

(:action move_4_0_5_0
 :parameters ()
 :precondition (and (at_x4)(at_y0))
 :poss-precondition (and (bridge_4_0_5_0))
 :effect (and (not (at_x4)) (at_x5))
)

(:action move_4_0_4_1
 :parameters ()
 :precondition (and (at_x4)(at_y0))
 :poss-precondition (and (bridge_4_0_4_1))
 :effect (and (not (at_y0)) (at_y1))
)

(:action move_4_1_3_1
 :parameters ()
 :precondition (and (at_x4)(at_y1))
 :poss-precondition (and (bridge_3_1_4_1))
 :effect (and (not (at_x4)) (at_x3))
)

(:action move_4_1_5_1
 :parameters ()
 :precondition (and (at_x4)(at_y1))
 :poss-precondition (and (bridge_4_1_5_1))
 :effect (and (not (at_x4)) (at_x5))
)

(:action move_4_1_4_0
 :parameters ()
 :precondition (and (at_x4)(at_y1))
 :poss-precondition (and (bridge_4_0_4_1))
 :effect (and (not (at_y1)) (at_y0))
)

(:action move_4_1_4_2
 :parameters ()
 :precondition (and (at_x4)(at_y1))
 :poss-precondition (and (bridge_4_1_4_2))
 :effect (and (not (at_y1)) (at_y2))
)

(:action move_4_2_3_2
 :parameters ()
 :precondition (and (at_x4)(at_y2))
 :poss-precondition (and (bridge_3_2_4_2))
 :effect (and (not (at_x4)) (at_x3))
)

(:action move_4_2_5_2
 :parameters ()
 :precondition (and (at_x4)(at_y2))
 :poss-precondition (and (bridge_4_2_5_2))
 :effect (and (not (at_x4)) (at_x5))
)

(:action move_4_2_4_1
 :parameters ()
 :precondition (and (at_x4)(at_y2))
 :poss-precondition (and (bridge_4_1_4_2))
 :effect (and (not (at_y2)) (at_y1))
)

(:action move_4_2_4_3
 :parameters ()
 :precondition (and (at_x4)(at_y2))
 :poss-precondition (and (bridge_4_2_4_3))
 :effect (and (not (at_y2)) (at_y3))
)

(:action move_4_3_3_3
 :parameters ()
 :precondition (and (at_x4)(at_y3))
 :poss-precondition (and (bridge_3_3_4_3))
 :effect (and (not (at_x4)) (at_x3))
)

(:action move_4_3_5_3
 :parameters ()
 :precondition (and (at_x4)(at_y3))
 :poss-precondition (and (bridge_4_3_5_3))
 :effect (and (not (at_x4)) (at_x5))
)

(:action move_4_3_4_2
 :parameters ()
 :precondition (and (at_x4)(at_y3))
 :poss-precondition (and (bridge_4_2_4_3))
 :effect (and (not (at_y3)) (at_y2))
)

(:action move_4_3_4_4
 :parameters ()
 :precondition (and (at_x4)(at_y3))
 :poss-precondition (and (bridge_4_3_4_4))
 :effect (and (not (at_y3)) (at_y4))
)

(:action move_4_4_3_4
 :parameters ()
 :precondition (and (at_x4)(at_y4))
 :poss-precondition (and (bridge_3_4_4_4))
 :effect (and (not (at_x4)) (at_x3))
)

(:action move_4_4_5_4
 :parameters ()
 :precondition (and (at_x4)(at_y4))
 :poss-precondition (and (bridge_4_4_5_4))
 :effect (and (not (at_x4)) (at_x5))
)

(:action move_4_4_4_3
 :parameters ()
 :precondition (and (at_x4)(at_y4))
 :poss-precondition (and (bridge_4_3_4_4))
 :effect (and (not (at_y4)) (at_y3))
)

(:action move_4_4_4_5
 :parameters ()
 :precondition (and (at_x4)(at_y4))
 :poss-precondition (and (bridge_4_4_4_5))
 :effect (and (not (at_y4)) (at_y5))
)

(:action move_4_5_3_5
 :parameters ()
 :precondition (and (at_x4)(at_y5))
 :poss-precondition (and (bridge_3_5_4_5))
 :effect (and (not (at_x4)) (at_x3))
)

(:action move_4_5_5_5
 :parameters ()
 :precondition (and (at_x4)(at_y5))
 :poss-precondition (and (bridge_4_5_5_5))
 :effect (and (not (at_x4)) (at_x5))
)

(:action move_4_5_4_4
 :parameters ()
 :precondition (and (at_x4)(at_y5))
 :poss-precondition (and (bridge_4_4_4_5))
 :effect (and (not (at_y5)) (at_y4))
)

(:action move_4_5_4_6
 :parameters ()
 :precondition (and (at_x4)(at_y5))
 :poss-precondition (and (bridge_4_5_4_6))
 :effect (and (not (at_y5)) (at_y6))
)

(:action move_4_6_3_6
 :parameters ()
 :precondition (and (at_x4)(at_y6))
 :poss-precondition (and (bridge_3_6_4_6))
 :effect (and (not (at_x4)) (at_x3))
)

(:action move_4_6_5_6
 :parameters ()
 :precondition (and (at_x4)(at_y6))
 :poss-precondition (and (bridge_4_6_5_6))
 :effect (and (not (at_x4)) (at_x5))
)

(:action move_4_6_4_5
 :parameters ()
 :precondition (and (at_x4)(at_y6))
 :poss-precondition (and (bridge_4_5_4_6))
 :effect (and (not (at_y6)) (at_y5))
)

(:action move_4_6_4_7
 :parameters ()
 :precondition (and (at_x4)(at_y6))
 :poss-precondition (and (bridge_4_6_4_7))
 :effect (and (not (at_y6)) (at_y7))
)

(:action move_4_7_3_7
 :parameters ()
 :precondition (and (at_x4)(at_y7))
 :poss-precondition (and (bridge_3_7_4_7))
 :effect (and (not (at_x4)) (at_x3))
)

(:action move_4_7_5_7
 :parameters ()
 :precondition (and (at_x4)(at_y7))
 :poss-precondition (and (bridge_4_7_5_7))
 :effect (and (not (at_x4)) (at_x5))
)

(:action move_4_7_4_6
 :parameters ()
 :precondition (and (at_x4)(at_y7))
 :poss-precondition (and (bridge_4_6_4_7))
 :effect (and (not (at_y7)) (at_y6))
)

(:action move_4_7_4_8
 :parameters ()
 :precondition (and (at_x4)(at_y7))
 :poss-precondition (and (bridge_4_7_4_8))
 :effect (and (not (at_y7)) (at_y8))
)

(:action move_4_8_3_8
 :parameters ()
 :precondition (and (at_x4)(at_y8))
 :poss-precondition (and (bridge_3_8_4_8))
 :effect (and (not (at_x4)) (at_x3))
)

(:action move_4_8_5_8
 :parameters ()
 :precondition (and (at_x4)(at_y8))
 :poss-precondition (and (bridge_4_8_5_8))
 :effect (and (not (at_x4)) (at_x5))
)

(:action move_4_8_4_7
 :parameters ()
 :precondition (and (at_x4)(at_y8))
 :poss-precondition (and (bridge_4_7_4_8))
 :effect (and (not (at_y8)) (at_y7))
)

(:action move_4_8_4_9
 :parameters ()
 :precondition (and (at_x4)(at_y8))
 :poss-precondition (and (bridge_4_8_4_9))
 :effect (and (not (at_y8)) (at_y9))
)

(:action move_4_9_3_9
 :parameters ()
 :precondition (and (at_x4)(at_y9))
 :poss-precondition (and (bridge_3_9_4_9))
 :effect (and (not (at_x4)) (at_x3))
)

(:action move_4_9_5_9
 :parameters ()
 :precondition (and (at_x4)(at_y9))
 :poss-precondition (and (bridge_4_9_5_9))
 :effect (and (not (at_x4)) (at_x5))
)

(:action move_4_9_4_8
 :parameters ()
 :precondition (and (at_x4)(at_y9))
 :poss-precondition (and (bridge_4_8_4_9))
 :effect (and (not (at_y9)) (at_y8))
)

(:action move_4_9_4_10
 :parameters ()
 :precondition (and (at_x4)(at_y9))
 :poss-precondition (and (bridge_4_9_4_10))
 :effect (and (not (at_y9)) (at_y10))
)

(:action move_4_10_3_10
 :parameters ()
 :precondition (and (at_x4)(at_y10))
 :poss-precondition (and (bridge_3_10_4_10))
 :effect (and (not (at_x4)) (at_x3))
)

(:action move_4_10_5_10
 :parameters ()
 :precondition (and (at_x4)(at_y10))
 :poss-precondition (and (bridge_4_10_5_10))
 :effect (and (not (at_x4)) (at_x5))
)

(:action move_4_10_4_9
 :parameters ()
 :precondition (and (at_x4)(at_y10))
 :poss-precondition (and (bridge_4_9_4_10))
 :effect (and (not (at_y10)) (at_y9))
)

(:action move_4_10_4_11
 :parameters ()
 :precondition (and (at_x4)(at_y10))
 :poss-precondition (and (bridge_4_10_4_11))
 :effect (and (not (at_y10)) (at_y11))
)

(:action move_4_11_3_11
 :parameters ()
 :precondition (and (at_x4)(at_y11))
 :poss-precondition (and (bridge_3_11_4_11))
 :effect (and (not (at_x4)) (at_x3))
)

(:action move_4_11_5_11
 :parameters ()
 :precondition (and (at_x4)(at_y11))
 :poss-precondition (and (bridge_4_11_5_11))
 :effect (and (not (at_x4)) (at_x5))
)

(:action move_4_11_4_10
 :parameters ()
 :precondition (and (at_x4)(at_y11))
 :poss-precondition (and (bridge_4_10_4_11))
 :effect (and (not (at_y11)) (at_y10))
)

(:action move_4_11_4_12
 :parameters ()
 :precondition (and (at_x4)(at_y11))
 :poss-precondition (and (bridge_4_11_4_12))
 :effect (and (not (at_y11)) (at_y12))
)

(:action move_4_12_3_12
 :parameters ()
 :precondition (and (at_x4)(at_y12))
 :poss-precondition (and (bridge_3_12_4_12))
 :effect (and (not (at_x4)) (at_x3))
)

(:action move_4_12_5_12
 :parameters ()
 :precondition (and (at_x4)(at_y12))
 :poss-precondition (and (bridge_4_12_5_12))
 :effect (and (not (at_x4)) (at_x5))
)

(:action move_4_12_4_11
 :parameters ()
 :precondition (and (at_x4)(at_y12))
 :poss-precondition (and (bridge_4_11_4_12))
 :effect (and (not (at_y12)) (at_y11))
)

(:action move_4_12_4_13
 :parameters ()
 :precondition (and (at_x4)(at_y12))
 :poss-precondition (and (bridge_4_12_4_13))
 :effect (and (not (at_y12)) (at_y13))
)

(:action move_4_13_3_13
 :parameters ()
 :precondition (and (at_x4)(at_y13))
 :poss-precondition (and (bridge_3_13_4_13))
 :effect (and (not (at_x4)) (at_x3))
)

(:action move_4_13_5_13
 :parameters ()
 :precondition (and (at_x4)(at_y13))
 :poss-precondition (and (bridge_4_13_5_13))
 :effect (and (not (at_x4)) (at_x5))
)

(:action move_4_13_4_12
 :parameters ()
 :precondition (and (at_x4)(at_y13))
 :poss-precondition (and (bridge_4_12_4_13))
 :effect (and (not (at_y13)) (at_y12))
)

(:action move_4_13_4_14
 :parameters ()
 :precondition (and (at_x4)(at_y13))
 :poss-precondition (and (bridge_4_13_4_14))
 :effect (and (not (at_y13)) (at_y14))
)

(:action move_4_14_3_14
 :parameters ()
 :precondition (and (at_x4)(at_y14))
 :poss-precondition (and (bridge_3_14_4_14))
 :effect (and (not (at_x4)) (at_x3))
)

(:action move_4_14_5_14
 :parameters ()
 :precondition (and (at_x4)(at_y14))
 :poss-precondition (and (bridge_4_14_5_14))
 :effect (and (not (at_x4)) (at_x5))
)

(:action move_4_14_4_13
 :parameters ()
 :precondition (and (at_x4)(at_y14))
 :poss-precondition (and (bridge_4_13_4_14))
 :effect (and (not (at_y14)) (at_y13))
)

(:action move_4_14_4_15
 :parameters ()
 :precondition (and (at_x4)(at_y14))
 :poss-precondition (and (bridge_4_14_4_15))
 :effect (and (not (at_y14)) (at_y15))
)

(:action move_4_15_3_15
 :parameters ()
 :precondition (and (at_x4)(at_y15))
 :poss-precondition (and (bridge_3_15_4_15))
 :effect (and (not (at_x4)) (at_x3))
)

(:action move_4_15_5_15
 :parameters ()
 :precondition (and (at_x4)(at_y15))
 :poss-precondition (and (bridge_4_15_5_15))
 :effect (and (not (at_x4)) (at_x5))
)

(:action move_4_15_4_14
 :parameters ()
 :precondition (and (at_x4)(at_y15))
 :poss-precondition (and (bridge_4_14_4_15))
 :effect (and (not (at_y15)) (at_y14))
)

(:action move_4_15_4_16
 :parameters ()
 :precondition (and (at_x4)(at_y15))
 :poss-precondition (and (bridge_4_15_4_16))
 :effect (and (not (at_y15)) (at_y16))
)

(:action move_4_16_3_16
 :parameters ()
 :precondition (and (at_x4)(at_y16))
 :poss-precondition (and (bridge_3_16_4_16))
 :effect (and (not (at_x4)) (at_x3))
)

(:action move_4_16_5_16
 :parameters ()
 :precondition (and (at_x4)(at_y16))
 :poss-precondition (and (bridge_4_16_5_16))
 :effect (and (not (at_x4)) (at_x5))
)

(:action move_4_16_4_15
 :parameters ()
 :precondition (and (at_x4)(at_y16))
 :poss-precondition (and (bridge_4_15_4_16))
 :effect (and (not (at_y16)) (at_y15))
)

(:action move_4_16_4_17
 :parameters ()
 :precondition (and (at_x4)(at_y16))
 :poss-precondition (and (bridge_4_16_4_17))
 :effect (and (not (at_y16)) (at_y17))
)

(:action move_4_17_3_17
 :parameters ()
 :precondition (and (at_x4)(at_y17))
 :poss-precondition (and (bridge_3_17_4_17))
 :effect (and (not (at_x4)) (at_x3))
)

(:action move_4_17_5_17
 :parameters ()
 :precondition (and (at_x4)(at_y17))
 :poss-precondition (and (bridge_4_17_5_17))
 :effect (and (not (at_x4)) (at_x5))
)

(:action move_4_17_4_16
 :parameters ()
 :precondition (and (at_x4)(at_y17))
 :poss-precondition (and (bridge_4_16_4_17))
 :effect (and (not (at_y17)) (at_y16))
)

(:action move_4_17_4_18
 :parameters ()
 :precondition (and (at_x4)(at_y17))
 :poss-precondition (and (bridge_4_17_4_18))
 :effect (and (not (at_y17)) (at_y18))
)

(:action move_4_18_3_18
 :parameters ()
 :precondition (and (at_x4)(at_y18))
 :poss-precondition (and (bridge_3_18_4_18))
 :effect (and (not (at_x4)) (at_x3))
)

(:action move_4_18_5_18
 :parameters ()
 :precondition (and (at_x4)(at_y18))
 :poss-precondition (and (bridge_4_18_5_18))
 :effect (and (not (at_x4)) (at_x5))
)

(:action move_4_18_4_17
 :parameters ()
 :precondition (and (at_x4)(at_y18))
 :poss-precondition (and (bridge_4_17_4_18))
 :effect (and (not (at_y18)) (at_y17))
)

(:action move_4_18_4_19
 :parameters ()
 :precondition (and (at_x4)(at_y18))
 :poss-precondition (and (bridge_4_18_4_19))
 :effect (and (not (at_y18)) (at_y19))
)

(:action move_4_19_3_19
 :parameters ()
 :precondition (and (at_x4)(at_y19))
 :poss-precondition (and (bridge_3_19_4_19))
 :effect (and (not (at_x4)) (at_x3))
)

(:action move_4_19_5_19
 :parameters ()
 :precondition (and (at_x4)(at_y19))
 :poss-precondition (and (bridge_4_19_5_19))
 :effect (and (not (at_x4)) (at_x5))
)

(:action move_4_19_4_18
 :parameters ()
 :precondition (and (at_x4)(at_y19))
 :poss-precondition (and (bridge_4_18_4_19))
 :effect (and (not (at_y19)) (at_y18))
)

(:action move_4_19_4_20
 :parameters ()
 :precondition (and (at_x4)(at_y19))
 :poss-precondition (and (bridge_4_19_4_20))
 :effect (and (not (at_y19)) (at_y20))
)

(:action move_4_20_3_20
 :parameters ()
 :precondition (and (at_x4)(at_y20))
 :poss-precondition (and (bridge_3_20_4_20))
 :effect (and (not (at_x4)) (at_x3))
)

(:action move_4_20_5_20
 :parameters ()
 :precondition (and (at_x4)(at_y20))
 :poss-precondition (and (bridge_4_20_5_20))
 :effect (and (not (at_x4)) (at_x5))
)

(:action move_4_20_4_19
 :parameters ()
 :precondition (and (at_x4)(at_y20))
 :poss-precondition (and (bridge_4_19_4_20))
 :effect (and (not (at_y20)) (at_y19))
)

(:action move_4_20_4_21
 :parameters ()
 :precondition (and (at_x4)(at_y20))
 :poss-precondition (and (bridge_4_20_4_21))
 :effect (and (not (at_y20)) (at_y21))
)

(:action move_4_21_3_21
 :parameters ()
 :precondition (and (at_x4)(at_y21))
 :poss-precondition (and (bridge_3_21_4_21))
 :effect (and (not (at_x4)) (at_x3))
)

(:action move_4_21_5_21
 :parameters ()
 :precondition (and (at_x4)(at_y21))
 :poss-precondition (and (bridge_4_21_5_21))
 :effect (and (not (at_x4)) (at_x5))
)

(:action move_4_21_4_20
 :parameters ()
 :precondition (and (at_x4)(at_y21))
 :poss-precondition (and (bridge_4_20_4_21))
 :effect (and (not (at_y21)) (at_y20))
)

(:action move_4_21_4_22
 :parameters ()
 :precondition (and (at_x4)(at_y21))
 :poss-precondition (and (bridge_4_21_4_22))
 :effect (and (not (at_y21)) (at_y22))
)

(:action move_4_22_3_22
 :parameters ()
 :precondition (and (at_x4)(at_y22))
 :poss-precondition (and (bridge_3_22_4_22))
 :effect (and (not (at_x4)) (at_x3))
)

(:action move_4_22_5_22
 :parameters ()
 :precondition (and (at_x4)(at_y22))
 :poss-precondition (and (bridge_4_22_5_22))
 :effect (and (not (at_x4)) (at_x5))
)

(:action move_4_22_4_21
 :parameters ()
 :precondition (and (at_x4)(at_y22))
 :poss-precondition (and (bridge_4_21_4_22))
 :effect (and (not (at_y22)) (at_y21))
)

(:action move_4_22_4_23
 :parameters ()
 :precondition (and (at_x4)(at_y22))
 :poss-precondition (and (bridge_4_22_4_23))
 :effect (and (not (at_y22)) (at_y23))
)

(:action move_4_23_3_23
 :parameters ()
 :precondition (and (at_x4)(at_y23))
 :poss-precondition (and (bridge_3_23_4_23))
 :effect (and (not (at_x4)) (at_x3))
)

(:action move_4_23_5_23
 :parameters ()
 :precondition (and (at_x4)(at_y23))
 :poss-precondition (and (bridge_4_23_5_23))
 :effect (and (not (at_x4)) (at_x5))
)

(:action move_4_23_4_22
 :parameters ()
 :precondition (and (at_x4)(at_y23))
 :poss-precondition (and (bridge_4_22_4_23))
 :effect (and (not (at_y23)) (at_y22))
)

(:action move_4_23_4_24
 :parameters ()
 :precondition (and (at_x4)(at_y23))
 :poss-precondition (and (bridge_4_23_4_24))
 :effect (and (not (at_y23)) (at_y24))
)

(:action move_4_24_3_24
 :parameters ()
 :precondition (and (at_x4)(at_y24))
 :poss-precondition (and (bridge_3_24_4_24))
 :effect (and (not (at_x4)) (at_x3))
)

(:action move_4_24_5_24
 :parameters ()
 :precondition (and (at_x4)(at_y24))
 :poss-precondition (and (bridge_4_24_5_24))
 :effect (and (not (at_x4)) (at_x5))
)

(:action move_4_24_4_23
 :parameters ()
 :precondition (and (at_x4)(at_y24))
 :poss-precondition (and (bridge_4_23_4_24))
 :effect (and (not (at_y24)) (at_y23))
)

(:action move_4_24_4_25
 :parameters ()
 :precondition (and (at_x4)(at_y24))
 :poss-precondition (and (bridge_4_24_4_25))
 :effect (and (not (at_y24)) (at_y25))
)

(:action move_4_25_3_25
 :parameters ()
 :precondition (and (at_x4)(at_y25))
 :poss-precondition (and (bridge_3_25_4_25))
 :effect (and (not (at_x4)) (at_x3))
)

(:action move_4_25_5_25
 :parameters ()
 :precondition (and (at_x4)(at_y25))
 :poss-precondition (and (bridge_4_25_5_25))
 :effect (and (not (at_x4)) (at_x5))
)

(:action move_4_25_4_24
 :parameters ()
 :precondition (and (at_x4)(at_y25))
 :poss-precondition (and (bridge_4_24_4_25))
 :effect (and (not (at_y25)) (at_y24))
)

(:action move_4_25_4_26
 :parameters ()
 :precondition (and (at_x4)(at_y25))
 :poss-precondition (and (bridge_4_25_4_26))
 :effect (and (not (at_y25)) (at_y26))
)

(:action move_4_26_3_26
 :parameters ()
 :precondition (and (at_x4)(at_y26))
 :poss-precondition (and (bridge_3_26_4_26))
 :effect (and (not (at_x4)) (at_x3))
)

(:action move_4_26_5_26
 :parameters ()
 :precondition (and (at_x4)(at_y26))
 :poss-precondition (and (bridge_4_26_5_26))
 :effect (and (not (at_x4)) (at_x5))
)

(:action move_4_26_4_25
 :parameters ()
 :precondition (and (at_x4)(at_y26))
 :poss-precondition (and (bridge_4_25_4_26))
 :effect (and (not (at_y26)) (at_y25))
)

(:action move_4_26_4_27
 :parameters ()
 :precondition (and (at_x4)(at_y26))
 :poss-precondition (and (bridge_4_26_4_27))
 :effect (and (not (at_y26)) (at_y27))
)

(:action move_4_27_3_27
 :parameters ()
 :precondition (and (at_x4)(at_y27))
 :poss-precondition (and (bridge_3_27_4_27))
 :effect (and (not (at_x4)) (at_x3))
)

(:action move_4_27_5_27
 :parameters ()
 :precondition (and (at_x4)(at_y27))
 :poss-precondition (and (bridge_4_27_5_27))
 :effect (and (not (at_x4)) (at_x5))
)

(:action move_4_27_4_26
 :parameters ()
 :precondition (and (at_x4)(at_y27))
 :poss-precondition (and (bridge_4_26_4_27))
 :effect (and (not (at_y27)) (at_y26))
)

(:action move_4_27_4_28
 :parameters ()
 :precondition (and (at_x4)(at_y27))
 :poss-precondition (and (bridge_4_27_4_28))
 :effect (and (not (at_y27)) (at_y28))
)

(:action move_4_28_3_28
 :parameters ()
 :precondition (and (at_x4)(at_y28))
 :poss-precondition (and (bridge_3_28_4_28))
 :effect (and (not (at_x4)) (at_x3))
)

(:action move_4_28_5_28
 :parameters ()
 :precondition (and (at_x4)(at_y28))
 :poss-precondition (and (bridge_4_28_5_28))
 :effect (and (not (at_x4)) (at_x5))
)

(:action move_4_28_4_27
 :parameters ()
 :precondition (and (at_x4)(at_y28))
 :poss-precondition (and (bridge_4_27_4_28))
 :effect (and (not (at_y28)) (at_y27))
)

(:action move_4_28_4_29
 :parameters ()
 :precondition (and (at_x4)(at_y28))
 :poss-precondition (and (bridge_4_28_4_29))
 :effect (and (not (at_y28)) (at_y29))
)

(:action move_4_29_3_29
 :parameters ()
 :precondition (and (at_x4)(at_y29))
 :poss-precondition (and (bridge_3_29_4_29))
 :effect (and (not (at_x4)) (at_x3))
)

(:action move_4_29_5_29
 :parameters ()
 :precondition (and (at_x4)(at_y29))
 :poss-precondition (and (bridge_4_29_5_29))
 :effect (and (not (at_x4)) (at_x5))
)

(:action move_4_29_4_28
 :parameters ()
 :precondition (and (at_x4)(at_y29))
 :poss-precondition (and (bridge_4_28_4_29))
 :effect (and (not (at_y29)) (at_y28))
)

(:action move_4_29_4_30
 :parameters ()
 :precondition (and (at_x4)(at_y29))
 :poss-precondition (and (bridge_4_29_4_30))
 :effect (and (not (at_y29)) (at_y30))
)

(:action move_4_30_3_30
 :parameters ()
 :precondition (and (at_x4)(at_y30))
 :poss-precondition (and (bridge_3_30_4_30))
 :effect (and (not (at_x4)) (at_x3))
)

(:action move_4_30_5_30
 :parameters ()
 :precondition (and (at_x4)(at_y30))
 :poss-precondition (and (bridge_4_30_5_30))
 :effect (and (not (at_x4)) (at_x5))
)

(:action move_4_30_4_29
 :parameters ()
 :precondition (and (at_x4)(at_y30))
 :poss-precondition (and (bridge_4_29_4_30))
 :effect (and (not (at_y30)) (at_y29))
)

(:action move_4_30_4_31
 :parameters ()
 :precondition (and (at_x4)(at_y30))
 :poss-precondition (and (bridge_4_30_4_31))
 :effect (and (not (at_y30)) (at_y31))
)

(:action move_4_31_3_31
 :parameters ()
 :precondition (and (at_x4)(at_y31))
 :poss-precondition (and (bridge_3_31_4_31))
 :effect (and (not (at_x4)) (at_x3))
)

(:action move_4_31_5_31
 :parameters ()
 :precondition (and (at_x4)(at_y31))
 :poss-precondition (and (bridge_4_31_5_31))
 :effect (and (not (at_x4)) (at_x5))
)

(:action move_4_31_4_30
 :parameters ()
 :precondition (and (at_x4)(at_y31))
 :poss-precondition (and (bridge_4_30_4_31))
 :effect (and (not (at_y31)) (at_y30))
)

(:action move_5_0_4_0
 :parameters ()
 :precondition (and (at_x5)(at_y0))
 :poss-precondition (and (bridge_4_0_5_0))
 :effect (and (not (at_x5)) (at_x4))
)

(:action move_5_0_6_0
 :parameters ()
 :precondition (and (at_x5)(at_y0))
 :poss-precondition (and (bridge_5_0_6_0))
 :effect (and (not (at_x5)) (at_x6))
)

(:action move_5_0_5_1
 :parameters ()
 :precondition (and (at_x5)(at_y0))
 :poss-precondition (and (bridge_5_0_5_1))
 :effect (and (not (at_y0)) (at_y1))
)

(:action move_5_1_4_1
 :parameters ()
 :precondition (and (at_x5)(at_y1))
 :poss-precondition (and (bridge_4_1_5_1))
 :effect (and (not (at_x5)) (at_x4))
)

(:action move_5_1_6_1
 :parameters ()
 :precondition (and (at_x5)(at_y1))
 :poss-precondition (and (bridge_5_1_6_1))
 :effect (and (not (at_x5)) (at_x6))
)

(:action move_5_1_5_0
 :parameters ()
 :precondition (and (at_x5)(at_y1))
 :poss-precondition (and (bridge_5_0_5_1))
 :effect (and (not (at_y1)) (at_y0))
)

(:action move_5_1_5_2
 :parameters ()
 :precondition (and (at_x5)(at_y1))
 :poss-precondition (and (bridge_5_1_5_2))
 :effect (and (not (at_y1)) (at_y2))
)

(:action move_5_2_4_2
 :parameters ()
 :precondition (and (at_x5)(at_y2))
 :poss-precondition (and (bridge_4_2_5_2))
 :effect (and (not (at_x5)) (at_x4))
)

(:action move_5_2_6_2
 :parameters ()
 :precondition (and (at_x5)(at_y2))
 :poss-precondition (and (bridge_5_2_6_2))
 :effect (and (not (at_x5)) (at_x6))
)

(:action move_5_2_5_1
 :parameters ()
 :precondition (and (at_x5)(at_y2))
 :poss-precondition (and (bridge_5_1_5_2))
 :effect (and (not (at_y2)) (at_y1))
)

(:action move_5_2_5_3
 :parameters ()
 :precondition (and (at_x5)(at_y2))
 :poss-precondition (and (bridge_5_2_5_3))
 :effect (and (not (at_y2)) (at_y3))
)

(:action move_5_3_4_3
 :parameters ()
 :precondition (and (at_x5)(at_y3))
 :poss-precondition (and (bridge_4_3_5_3))
 :effect (and (not (at_x5)) (at_x4))
)

(:action move_5_3_6_3
 :parameters ()
 :precondition (and (at_x5)(at_y3))
 :poss-precondition (and (bridge_5_3_6_3))
 :effect (and (not (at_x5)) (at_x6))
)

(:action move_5_3_5_2
 :parameters ()
 :precondition (and (at_x5)(at_y3))
 :poss-precondition (and (bridge_5_2_5_3))
 :effect (and (not (at_y3)) (at_y2))
)

(:action move_5_3_5_4
 :parameters ()
 :precondition (and (at_x5)(at_y3))
 :poss-precondition (and (bridge_5_3_5_4))
 :effect (and (not (at_y3)) (at_y4))
)

(:action move_5_4_4_4
 :parameters ()
 :precondition (and (at_x5)(at_y4))
 :poss-precondition (and (bridge_4_4_5_4))
 :effect (and (not (at_x5)) (at_x4))
)

(:action move_5_4_6_4
 :parameters ()
 :precondition (and (at_x5)(at_y4))
 :poss-precondition (and (bridge_5_4_6_4))
 :effect (and (not (at_x5)) (at_x6))
)

(:action move_5_4_5_3
 :parameters ()
 :precondition (and (at_x5)(at_y4))
 :poss-precondition (and (bridge_5_3_5_4))
 :effect (and (not (at_y4)) (at_y3))
)

(:action move_5_4_5_5
 :parameters ()
 :precondition (and (at_x5)(at_y4))
 :poss-precondition (and (bridge_5_4_5_5))
 :effect (and (not (at_y4)) (at_y5))
)

(:action move_5_5_4_5
 :parameters ()
 :precondition (and (at_x5)(at_y5))
 :poss-precondition (and (bridge_4_5_5_5))
 :effect (and (not (at_x5)) (at_x4))
)

(:action move_5_5_6_5
 :parameters ()
 :precondition (and (at_x5)(at_y5))
 :poss-precondition (and (bridge_5_5_6_5))
 :effect (and (not (at_x5)) (at_x6))
)

(:action move_5_5_5_4
 :parameters ()
 :precondition (and (at_x5)(at_y5))
 :poss-precondition (and (bridge_5_4_5_5))
 :effect (and (not (at_y5)) (at_y4))
)

(:action move_5_5_5_6
 :parameters ()
 :precondition (and (at_x5)(at_y5))
 :poss-precondition (and (bridge_5_5_5_6))
 :effect (and (not (at_y5)) (at_y6))
)

(:action move_5_6_4_6
 :parameters ()
 :precondition (and (at_x5)(at_y6))
 :poss-precondition (and (bridge_4_6_5_6))
 :effect (and (not (at_x5)) (at_x4))
)

(:action move_5_6_6_6
 :parameters ()
 :precondition (and (at_x5)(at_y6))
 :poss-precondition (and (bridge_5_6_6_6))
 :effect (and (not (at_x5)) (at_x6))
)

(:action move_5_6_5_5
 :parameters ()
 :precondition (and (at_x5)(at_y6))
 :poss-precondition (and (bridge_5_5_5_6))
 :effect (and (not (at_y6)) (at_y5))
)

(:action move_5_6_5_7
 :parameters ()
 :precondition (and (at_x5)(at_y6))
 :poss-precondition (and (bridge_5_6_5_7))
 :effect (and (not (at_y6)) (at_y7))
)

(:action move_5_7_4_7
 :parameters ()
 :precondition (and (at_x5)(at_y7))
 :poss-precondition (and (bridge_4_7_5_7))
 :effect (and (not (at_x5)) (at_x4))
)

(:action move_5_7_6_7
 :parameters ()
 :precondition (and (at_x5)(at_y7))
 :poss-precondition (and (bridge_5_7_6_7))
 :effect (and (not (at_x5)) (at_x6))
)

(:action move_5_7_5_6
 :parameters ()
 :precondition (and (at_x5)(at_y7))
 :poss-precondition (and (bridge_5_6_5_7))
 :effect (and (not (at_y7)) (at_y6))
)

(:action move_5_7_5_8
 :parameters ()
 :precondition (and (at_x5)(at_y7))
 :poss-precondition (and (bridge_5_7_5_8))
 :effect (and (not (at_y7)) (at_y8))
)

(:action move_5_8_4_8
 :parameters ()
 :precondition (and (at_x5)(at_y8))
 :poss-precondition (and (bridge_4_8_5_8))
 :effect (and (not (at_x5)) (at_x4))
)

(:action move_5_8_6_8
 :parameters ()
 :precondition (and (at_x5)(at_y8))
 :poss-precondition (and (bridge_5_8_6_8))
 :effect (and (not (at_x5)) (at_x6))
)

(:action move_5_8_5_7
 :parameters ()
 :precondition (and (at_x5)(at_y8))
 :poss-precondition (and (bridge_5_7_5_8))
 :effect (and (not (at_y8)) (at_y7))
)

(:action move_5_8_5_9
 :parameters ()
 :precondition (and (at_x5)(at_y8))
 :poss-precondition (and (bridge_5_8_5_9))
 :effect (and (not (at_y8)) (at_y9))
)

(:action move_5_9_4_9
 :parameters ()
 :precondition (and (at_x5)(at_y9))
 :poss-precondition (and (bridge_4_9_5_9))
 :effect (and (not (at_x5)) (at_x4))
)

(:action move_5_9_6_9
 :parameters ()
 :precondition (and (at_x5)(at_y9))
 :poss-precondition (and (bridge_5_9_6_9))
 :effect (and (not (at_x5)) (at_x6))
)

(:action move_5_9_5_8
 :parameters ()
 :precondition (and (at_x5)(at_y9))
 :poss-precondition (and (bridge_5_8_5_9))
 :effect (and (not (at_y9)) (at_y8))
)

(:action move_5_9_5_10
 :parameters ()
 :precondition (and (at_x5)(at_y9))
 :poss-precondition (and (bridge_5_9_5_10))
 :effect (and (not (at_y9)) (at_y10))
)

(:action move_5_10_4_10
 :parameters ()
 :precondition (and (at_x5)(at_y10))
 :poss-precondition (and (bridge_4_10_5_10))
 :effect (and (not (at_x5)) (at_x4))
)

(:action move_5_10_6_10
 :parameters ()
 :precondition (and (at_x5)(at_y10))
 :poss-precondition (and (bridge_5_10_6_10))
 :effect (and (not (at_x5)) (at_x6))
)

(:action move_5_10_5_9
 :parameters ()
 :precondition (and (at_x5)(at_y10))
 :poss-precondition (and (bridge_5_9_5_10))
 :effect (and (not (at_y10)) (at_y9))
)

(:action move_5_10_5_11
 :parameters ()
 :precondition (and (at_x5)(at_y10))
 :poss-precondition (and (bridge_5_10_5_11))
 :effect (and (not (at_y10)) (at_y11))
)

(:action move_5_11_4_11
 :parameters ()
 :precondition (and (at_x5)(at_y11))
 :poss-precondition (and (bridge_4_11_5_11))
 :effect (and (not (at_x5)) (at_x4))
)

(:action move_5_11_6_11
 :parameters ()
 :precondition (and (at_x5)(at_y11))
 :poss-precondition (and (bridge_5_11_6_11))
 :effect (and (not (at_x5)) (at_x6))
)

(:action move_5_11_5_10
 :parameters ()
 :precondition (and (at_x5)(at_y11))
 :poss-precondition (and (bridge_5_10_5_11))
 :effect (and (not (at_y11)) (at_y10))
)

(:action move_5_11_5_12
 :parameters ()
 :precondition (and (at_x5)(at_y11))
 :poss-precondition (and (bridge_5_11_5_12))
 :effect (and (not (at_y11)) (at_y12))
)

(:action move_5_12_4_12
 :parameters ()
 :precondition (and (at_x5)(at_y12))
 :poss-precondition (and (bridge_4_12_5_12))
 :effect (and (not (at_x5)) (at_x4))
)

(:action move_5_12_6_12
 :parameters ()
 :precondition (and (at_x5)(at_y12))
 :poss-precondition (and (bridge_5_12_6_12))
 :effect (and (not (at_x5)) (at_x6))
)

(:action move_5_12_5_11
 :parameters ()
 :precondition (and (at_x5)(at_y12))
 :poss-precondition (and (bridge_5_11_5_12))
 :effect (and (not (at_y12)) (at_y11))
)

(:action move_5_12_5_13
 :parameters ()
 :precondition (and (at_x5)(at_y12))
 :poss-precondition (and (bridge_5_12_5_13))
 :effect (and (not (at_y12)) (at_y13))
)

(:action move_5_13_4_13
 :parameters ()
 :precondition (and (at_x5)(at_y13))
 :poss-precondition (and (bridge_4_13_5_13))
 :effect (and (not (at_x5)) (at_x4))
)

(:action move_5_13_6_13
 :parameters ()
 :precondition (and (at_x5)(at_y13))
 :poss-precondition (and (bridge_5_13_6_13))
 :effect (and (not (at_x5)) (at_x6))
)

(:action move_5_13_5_12
 :parameters ()
 :precondition (and (at_x5)(at_y13))
 :poss-precondition (and (bridge_5_12_5_13))
 :effect (and (not (at_y13)) (at_y12))
)

(:action move_5_13_5_14
 :parameters ()
 :precondition (and (at_x5)(at_y13))
 :poss-precondition (and (bridge_5_13_5_14))
 :effect (and (not (at_y13)) (at_y14))
)

(:action move_5_14_4_14
 :parameters ()
 :precondition (and (at_x5)(at_y14))
 :poss-precondition (and (bridge_4_14_5_14))
 :effect (and (not (at_x5)) (at_x4))
)

(:action move_5_14_6_14
 :parameters ()
 :precondition (and (at_x5)(at_y14))
 :poss-precondition (and (bridge_5_14_6_14))
 :effect (and (not (at_x5)) (at_x6))
)

(:action move_5_14_5_13
 :parameters ()
 :precondition (and (at_x5)(at_y14))
 :poss-precondition (and (bridge_5_13_5_14))
 :effect (and (not (at_y14)) (at_y13))
)

(:action move_5_14_5_15
 :parameters ()
 :precondition (and (at_x5)(at_y14))
 :poss-precondition (and (bridge_5_14_5_15))
 :effect (and (not (at_y14)) (at_y15))
)

(:action move_5_15_4_15
 :parameters ()
 :precondition (and (at_x5)(at_y15))
 :poss-precondition (and (bridge_4_15_5_15))
 :effect (and (not (at_x5)) (at_x4))
)

(:action move_5_15_6_15
 :parameters ()
 :precondition (and (at_x5)(at_y15))
 :poss-precondition (and (bridge_5_15_6_15))
 :effect (and (not (at_x5)) (at_x6))
)

(:action move_5_15_5_14
 :parameters ()
 :precondition (and (at_x5)(at_y15))
 :poss-precondition (and (bridge_5_14_5_15))
 :effect (and (not (at_y15)) (at_y14))
)

(:action move_5_15_5_16
 :parameters ()
 :precondition (and (at_x5)(at_y15))
 :poss-precondition (and (bridge_5_15_5_16))
 :effect (and (not (at_y15)) (at_y16))
)

(:action move_5_16_4_16
 :parameters ()
 :precondition (and (at_x5)(at_y16))
 :poss-precondition (and (bridge_4_16_5_16))
 :effect (and (not (at_x5)) (at_x4))
)

(:action move_5_16_6_16
 :parameters ()
 :precondition (and (at_x5)(at_y16))
 :poss-precondition (and (bridge_5_16_6_16))
 :effect (and (not (at_x5)) (at_x6))
)

(:action move_5_16_5_15
 :parameters ()
 :precondition (and (at_x5)(at_y16))
 :poss-precondition (and (bridge_5_15_5_16))
 :effect (and (not (at_y16)) (at_y15))
)

(:action move_5_16_5_17
 :parameters ()
 :precondition (and (at_x5)(at_y16))
 :poss-precondition (and (bridge_5_16_5_17))
 :effect (and (not (at_y16)) (at_y17))
)

(:action move_5_17_4_17
 :parameters ()
 :precondition (and (at_x5)(at_y17))
 :poss-precondition (and (bridge_4_17_5_17))
 :effect (and (not (at_x5)) (at_x4))
)

(:action move_5_17_6_17
 :parameters ()
 :precondition (and (at_x5)(at_y17))
 :poss-precondition (and (bridge_5_17_6_17))
 :effect (and (not (at_x5)) (at_x6))
)

(:action move_5_17_5_16
 :parameters ()
 :precondition (and (at_x5)(at_y17))
 :poss-precondition (and (bridge_5_16_5_17))
 :effect (and (not (at_y17)) (at_y16))
)

(:action move_5_17_5_18
 :parameters ()
 :precondition (and (at_x5)(at_y17))
 :poss-precondition (and (bridge_5_17_5_18))
 :effect (and (not (at_y17)) (at_y18))
)

(:action move_5_18_4_18
 :parameters ()
 :precondition (and (at_x5)(at_y18))
 :poss-precondition (and (bridge_4_18_5_18))
 :effect (and (not (at_x5)) (at_x4))
)

(:action move_5_18_6_18
 :parameters ()
 :precondition (and (at_x5)(at_y18))
 :poss-precondition (and (bridge_5_18_6_18))
 :effect (and (not (at_x5)) (at_x6))
)

(:action move_5_18_5_17
 :parameters ()
 :precondition (and (at_x5)(at_y18))
 :poss-precondition (and (bridge_5_17_5_18))
 :effect (and (not (at_y18)) (at_y17))
)

(:action move_5_18_5_19
 :parameters ()
 :precondition (and (at_x5)(at_y18))
 :poss-precondition (and (bridge_5_18_5_19))
 :effect (and (not (at_y18)) (at_y19))
)

(:action move_5_19_4_19
 :parameters ()
 :precondition (and (at_x5)(at_y19))
 :poss-precondition (and (bridge_4_19_5_19))
 :effect (and (not (at_x5)) (at_x4))
)

(:action move_5_19_6_19
 :parameters ()
 :precondition (and (at_x5)(at_y19))
 :poss-precondition (and (bridge_5_19_6_19))
 :effect (and (not (at_x5)) (at_x6))
)

(:action move_5_19_5_18
 :parameters ()
 :precondition (and (at_x5)(at_y19))
 :poss-precondition (and (bridge_5_18_5_19))
 :effect (and (not (at_y19)) (at_y18))
)

(:action move_5_19_5_20
 :parameters ()
 :precondition (and (at_x5)(at_y19))
 :poss-precondition (and (bridge_5_19_5_20))
 :effect (and (not (at_y19)) (at_y20))
)

(:action move_5_20_4_20
 :parameters ()
 :precondition (and (at_x5)(at_y20))
 :poss-precondition (and (bridge_4_20_5_20))
 :effect (and (not (at_x5)) (at_x4))
)

(:action move_5_20_6_20
 :parameters ()
 :precondition (and (at_x5)(at_y20))
 :poss-precondition (and (bridge_5_20_6_20))
 :effect (and (not (at_x5)) (at_x6))
)

(:action move_5_20_5_19
 :parameters ()
 :precondition (and (at_x5)(at_y20))
 :poss-precondition (and (bridge_5_19_5_20))
 :effect (and (not (at_y20)) (at_y19))
)

(:action move_5_20_5_21
 :parameters ()
 :precondition (and (at_x5)(at_y20))
 :poss-precondition (and (bridge_5_20_5_21))
 :effect (and (not (at_y20)) (at_y21))
)

(:action move_5_21_4_21
 :parameters ()
 :precondition (and (at_x5)(at_y21))
 :poss-precondition (and (bridge_4_21_5_21))
 :effect (and (not (at_x5)) (at_x4))
)

(:action move_5_21_6_21
 :parameters ()
 :precondition (and (at_x5)(at_y21))
 :poss-precondition (and (bridge_5_21_6_21))
 :effect (and (not (at_x5)) (at_x6))
)

(:action move_5_21_5_20
 :parameters ()
 :precondition (and (at_x5)(at_y21))
 :poss-precondition (and (bridge_5_20_5_21))
 :effect (and (not (at_y21)) (at_y20))
)

(:action move_5_21_5_22
 :parameters ()
 :precondition (and (at_x5)(at_y21))
 :poss-precondition (and (bridge_5_21_5_22))
 :effect (and (not (at_y21)) (at_y22))
)

(:action move_5_22_4_22
 :parameters ()
 :precondition (and (at_x5)(at_y22))
 :poss-precondition (and (bridge_4_22_5_22))
 :effect (and (not (at_x5)) (at_x4))
)

(:action move_5_22_6_22
 :parameters ()
 :precondition (and (at_x5)(at_y22))
 :poss-precondition (and (bridge_5_22_6_22))
 :effect (and (not (at_x5)) (at_x6))
)

(:action move_5_22_5_21
 :parameters ()
 :precondition (and (at_x5)(at_y22))
 :poss-precondition (and (bridge_5_21_5_22))
 :effect (and (not (at_y22)) (at_y21))
)

(:action move_5_22_5_23
 :parameters ()
 :precondition (and (at_x5)(at_y22))
 :poss-precondition (and (bridge_5_22_5_23))
 :effect (and (not (at_y22)) (at_y23))
)

(:action move_5_23_4_23
 :parameters ()
 :precondition (and (at_x5)(at_y23))
 :poss-precondition (and (bridge_4_23_5_23))
 :effect (and (not (at_x5)) (at_x4))
)

(:action move_5_23_6_23
 :parameters ()
 :precondition (and (at_x5)(at_y23))
 :poss-precondition (and (bridge_5_23_6_23))
 :effect (and (not (at_x5)) (at_x6))
)

(:action move_5_23_5_22
 :parameters ()
 :precondition (and (at_x5)(at_y23))
 :poss-precondition (and (bridge_5_22_5_23))
 :effect (and (not (at_y23)) (at_y22))
)

(:action move_5_23_5_24
 :parameters ()
 :precondition (and (at_x5)(at_y23))
 :poss-precondition (and (bridge_5_23_5_24))
 :effect (and (not (at_y23)) (at_y24))
)

(:action move_5_24_4_24
 :parameters ()
 :precondition (and (at_x5)(at_y24))
 :poss-precondition (and (bridge_4_24_5_24))
 :effect (and (not (at_x5)) (at_x4))
)

(:action move_5_24_6_24
 :parameters ()
 :precondition (and (at_x5)(at_y24))
 :poss-precondition (and (bridge_5_24_6_24))
 :effect (and (not (at_x5)) (at_x6))
)

(:action move_5_24_5_23
 :parameters ()
 :precondition (and (at_x5)(at_y24))
 :poss-precondition (and (bridge_5_23_5_24))
 :effect (and (not (at_y24)) (at_y23))
)

(:action move_5_24_5_25
 :parameters ()
 :precondition (and (at_x5)(at_y24))
 :poss-precondition (and (bridge_5_24_5_25))
 :effect (and (not (at_y24)) (at_y25))
)

(:action move_5_25_4_25
 :parameters ()
 :precondition (and (at_x5)(at_y25))
 :poss-precondition (and (bridge_4_25_5_25))
 :effect (and (not (at_x5)) (at_x4))
)

(:action move_5_25_6_25
 :parameters ()
 :precondition (and (at_x5)(at_y25))
 :poss-precondition (and (bridge_5_25_6_25))
 :effect (and (not (at_x5)) (at_x6))
)

(:action move_5_25_5_24
 :parameters ()
 :precondition (and (at_x5)(at_y25))
 :poss-precondition (and (bridge_5_24_5_25))
 :effect (and (not (at_y25)) (at_y24))
)

(:action move_5_25_5_26
 :parameters ()
 :precondition (and (at_x5)(at_y25))
 :poss-precondition (and (bridge_5_25_5_26))
 :effect (and (not (at_y25)) (at_y26))
)

(:action move_5_26_4_26
 :parameters ()
 :precondition (and (at_x5)(at_y26))
 :poss-precondition (and (bridge_4_26_5_26))
 :effect (and (not (at_x5)) (at_x4))
)

(:action move_5_26_6_26
 :parameters ()
 :precondition (and (at_x5)(at_y26))
 :poss-precondition (and (bridge_5_26_6_26))
 :effect (and (not (at_x5)) (at_x6))
)

(:action move_5_26_5_25
 :parameters ()
 :precondition (and (at_x5)(at_y26))
 :poss-precondition (and (bridge_5_25_5_26))
 :effect (and (not (at_y26)) (at_y25))
)

(:action move_5_26_5_27
 :parameters ()
 :precondition (and (at_x5)(at_y26))
 :poss-precondition (and (bridge_5_26_5_27))
 :effect (and (not (at_y26)) (at_y27))
)

(:action move_5_27_4_27
 :parameters ()
 :precondition (and (at_x5)(at_y27))
 :poss-precondition (and (bridge_4_27_5_27))
 :effect (and (not (at_x5)) (at_x4))
)

(:action move_5_27_6_27
 :parameters ()
 :precondition (and (at_x5)(at_y27))
 :poss-precondition (and (bridge_5_27_6_27))
 :effect (and (not (at_x5)) (at_x6))
)

(:action move_5_27_5_26
 :parameters ()
 :precondition (and (at_x5)(at_y27))
 :poss-precondition (and (bridge_5_26_5_27))
 :effect (and (not (at_y27)) (at_y26))
)

(:action move_5_27_5_28
 :parameters ()
 :precondition (and (at_x5)(at_y27))
 :poss-precondition (and (bridge_5_27_5_28))
 :effect (and (not (at_y27)) (at_y28))
)

(:action move_5_28_4_28
 :parameters ()
 :precondition (and (at_x5)(at_y28))
 :poss-precondition (and (bridge_4_28_5_28))
 :effect (and (not (at_x5)) (at_x4))
)

(:action move_5_28_6_28
 :parameters ()
 :precondition (and (at_x5)(at_y28))
 :poss-precondition (and (bridge_5_28_6_28))
 :effect (and (not (at_x5)) (at_x6))
)

(:action move_5_28_5_27
 :parameters ()
 :precondition (and (at_x5)(at_y28))
 :poss-precondition (and (bridge_5_27_5_28))
 :effect (and (not (at_y28)) (at_y27))
)

(:action move_5_28_5_29
 :parameters ()
 :precondition (and (at_x5)(at_y28))
 :poss-precondition (and (bridge_5_28_5_29))
 :effect (and (not (at_y28)) (at_y29))
)

(:action move_5_29_4_29
 :parameters ()
 :precondition (and (at_x5)(at_y29))
 :poss-precondition (and (bridge_4_29_5_29))
 :effect (and (not (at_x5)) (at_x4))
)

(:action move_5_29_6_29
 :parameters ()
 :precondition (and (at_x5)(at_y29))
 :poss-precondition (and (bridge_5_29_6_29))
 :effect (and (not (at_x5)) (at_x6))
)

(:action move_5_29_5_28
 :parameters ()
 :precondition (and (at_x5)(at_y29))
 :poss-precondition (and (bridge_5_28_5_29))
 :effect (and (not (at_y29)) (at_y28))
)

(:action move_5_29_5_30
 :parameters ()
 :precondition (and (at_x5)(at_y29))
 :poss-precondition (and (bridge_5_29_5_30))
 :effect (and (not (at_y29)) (at_y30))
)

(:action move_5_30_4_30
 :parameters ()
 :precondition (and (at_x5)(at_y30))
 :poss-precondition (and (bridge_4_30_5_30))
 :effect (and (not (at_x5)) (at_x4))
)

(:action move_5_30_6_30
 :parameters ()
 :precondition (and (at_x5)(at_y30))
 :poss-precondition (and (bridge_5_30_6_30))
 :effect (and (not (at_x5)) (at_x6))
)

(:action move_5_30_5_29
 :parameters ()
 :precondition (and (at_x5)(at_y30))
 :poss-precondition (and (bridge_5_29_5_30))
 :effect (and (not (at_y30)) (at_y29))
)

(:action move_5_30_5_31
 :parameters ()
 :precondition (and (at_x5)(at_y30))
 :poss-precondition (and (bridge_5_30_5_31))
 :effect (and (not (at_y30)) (at_y31))
)

(:action move_5_31_4_31
 :parameters ()
 :precondition (and (at_x5)(at_y31))
 :poss-precondition (and (bridge_4_31_5_31))
 :effect (and (not (at_x5)) (at_x4))
)

(:action move_5_31_6_31
 :parameters ()
 :precondition (and (at_x5)(at_y31))
 :poss-precondition (and (bridge_5_31_6_31))
 :effect (and (not (at_x5)) (at_x6))
)

(:action move_5_31_5_30
 :parameters ()
 :precondition (and (at_x5)(at_y31))
 :poss-precondition (and (bridge_5_30_5_31))
 :effect (and (not (at_y31)) (at_y30))
)

(:action move_6_0_5_0
 :parameters ()
 :precondition (and (at_x6)(at_y0))
 :poss-precondition (and (bridge_5_0_6_0))
 :effect (and (not (at_x6)) (at_x5))
)

(:action move_6_0_7_0
 :parameters ()
 :precondition (and (at_x6)(at_y0))
 :poss-precondition (and (bridge_6_0_7_0))
 :effect (and (not (at_x6)) (at_x7))
)

(:action move_6_0_6_1
 :parameters ()
 :precondition (and (at_x6)(at_y0))
 :poss-precondition (and (bridge_6_0_6_1))
 :effect (and (not (at_y0)) (at_y1))
)

(:action move_6_1_5_1
 :parameters ()
 :precondition (and (at_x6)(at_y1))
 :poss-precondition (and (bridge_5_1_6_1))
 :effect (and (not (at_x6)) (at_x5))
)

(:action move_6_1_7_1
 :parameters ()
 :precondition (and (at_x6)(at_y1))
 :poss-precondition (and (bridge_6_1_7_1))
 :effect (and (not (at_x6)) (at_x7))
)

(:action move_6_1_6_0
 :parameters ()
 :precondition (and (at_x6)(at_y1))
 :poss-precondition (and (bridge_6_0_6_1))
 :effect (and (not (at_y1)) (at_y0))
)

(:action move_6_1_6_2
 :parameters ()
 :precondition (and (at_x6)(at_y1))
 :poss-precondition (and (bridge_6_1_6_2))
 :effect (and (not (at_y1)) (at_y2))
)

(:action move_6_2_5_2
 :parameters ()
 :precondition (and (at_x6)(at_y2))
 :poss-precondition (and (bridge_5_2_6_2))
 :effect (and (not (at_x6)) (at_x5))
)

(:action move_6_2_7_2
 :parameters ()
 :precondition (and (at_x6)(at_y2))
 :poss-precondition (and (bridge_6_2_7_2))
 :effect (and (not (at_x6)) (at_x7))
)

(:action move_6_2_6_1
 :parameters ()
 :precondition (and (at_x6)(at_y2))
 :poss-precondition (and (bridge_6_1_6_2))
 :effect (and (not (at_y2)) (at_y1))
)

(:action move_6_2_6_3
 :parameters ()
 :precondition (and (at_x6)(at_y2))
 :poss-precondition (and (bridge_6_2_6_3))
 :effect (and (not (at_y2)) (at_y3))
)

(:action move_6_3_5_3
 :parameters ()
 :precondition (and (at_x6)(at_y3))
 :poss-precondition (and (bridge_5_3_6_3))
 :effect (and (not (at_x6)) (at_x5))
)

(:action move_6_3_7_3
 :parameters ()
 :precondition (and (at_x6)(at_y3))
 :poss-precondition (and (bridge_6_3_7_3))
 :effect (and (not (at_x6)) (at_x7))
)

(:action move_6_3_6_2
 :parameters ()
 :precondition (and (at_x6)(at_y3))
 :poss-precondition (and (bridge_6_2_6_3))
 :effect (and (not (at_y3)) (at_y2))
)

(:action move_6_3_6_4
 :parameters ()
 :precondition (and (at_x6)(at_y3))
 :poss-precondition (and (bridge_6_3_6_4))
 :effect (and (not (at_y3)) (at_y4))
)

(:action move_6_4_5_4
 :parameters ()
 :precondition (and (at_x6)(at_y4))
 :poss-precondition (and (bridge_5_4_6_4))
 :effect (and (not (at_x6)) (at_x5))
)

(:action move_6_4_7_4
 :parameters ()
 :precondition (and (at_x6)(at_y4))
 :poss-precondition (and (bridge_6_4_7_4))
 :effect (and (not (at_x6)) (at_x7))
)

(:action move_6_4_6_3
 :parameters ()
 :precondition (and (at_x6)(at_y4))
 :poss-precondition (and (bridge_6_3_6_4))
 :effect (and (not (at_y4)) (at_y3))
)

(:action move_6_4_6_5
 :parameters ()
 :precondition (and (at_x6)(at_y4))
 :poss-precondition (and (bridge_6_4_6_5))
 :effect (and (not (at_y4)) (at_y5))
)

(:action move_6_5_5_5
 :parameters ()
 :precondition (and (at_x6)(at_y5))
 :poss-precondition (and (bridge_5_5_6_5))
 :effect (and (not (at_x6)) (at_x5))
)

(:action move_6_5_7_5
 :parameters ()
 :precondition (and (at_x6)(at_y5))
 :poss-precondition (and (bridge_6_5_7_5))
 :effect (and (not (at_x6)) (at_x7))
)

(:action move_6_5_6_4
 :parameters ()
 :precondition (and (at_x6)(at_y5))
 :poss-precondition (and (bridge_6_4_6_5))
 :effect (and (not (at_y5)) (at_y4))
)

(:action move_6_5_6_6
 :parameters ()
 :precondition (and (at_x6)(at_y5))
 :poss-precondition (and (bridge_6_5_6_6))
 :effect (and (not (at_y5)) (at_y6))
)

(:action move_6_6_5_6
 :parameters ()
 :precondition (and (at_x6)(at_y6))
 :poss-precondition (and (bridge_5_6_6_6))
 :effect (and (not (at_x6)) (at_x5))
)

(:action move_6_6_7_6
 :parameters ()
 :precondition (and (at_x6)(at_y6))
 :poss-precondition (and (bridge_6_6_7_6))
 :effect (and (not (at_x6)) (at_x7))
)

(:action move_6_6_6_5
 :parameters ()
 :precondition (and (at_x6)(at_y6))
 :poss-precondition (and (bridge_6_5_6_6))
 :effect (and (not (at_y6)) (at_y5))
)

(:action move_6_6_6_7
 :parameters ()
 :precondition (and (at_x6)(at_y6))
 :poss-precondition (and (bridge_6_6_6_7))
 :effect (and (not (at_y6)) (at_y7))
)

(:action move_6_7_5_7
 :parameters ()
 :precondition (and (at_x6)(at_y7))
 :poss-precondition (and (bridge_5_7_6_7))
 :effect (and (not (at_x6)) (at_x5))
)

(:action move_6_7_7_7
 :parameters ()
 :precondition (and (at_x6)(at_y7))
 :poss-precondition (and (bridge_6_7_7_7))
 :effect (and (not (at_x6)) (at_x7))
)

(:action move_6_7_6_6
 :parameters ()
 :precondition (and (at_x6)(at_y7))
 :poss-precondition (and (bridge_6_6_6_7))
 :effect (and (not (at_y7)) (at_y6))
)

(:action move_6_7_6_8
 :parameters ()
 :precondition (and (at_x6)(at_y7))
 :poss-precondition (and (bridge_6_7_6_8))
 :effect (and (not (at_y7)) (at_y8))
)

(:action move_6_8_5_8
 :parameters ()
 :precondition (and (at_x6)(at_y8))
 :poss-precondition (and (bridge_5_8_6_8))
 :effect (and (not (at_x6)) (at_x5))
)

(:action move_6_8_7_8
 :parameters ()
 :precondition (and (at_x6)(at_y8))
 :poss-precondition (and (bridge_6_8_7_8))
 :effect (and (not (at_x6)) (at_x7))
)

(:action move_6_8_6_7
 :parameters ()
 :precondition (and (at_x6)(at_y8))
 :poss-precondition (and (bridge_6_7_6_8))
 :effect (and (not (at_y8)) (at_y7))
)

(:action move_6_8_6_9
 :parameters ()
 :precondition (and (at_x6)(at_y8))
 :poss-precondition (and (bridge_6_8_6_9))
 :effect (and (not (at_y8)) (at_y9))
)

(:action move_6_9_5_9
 :parameters ()
 :precondition (and (at_x6)(at_y9))
 :poss-precondition (and (bridge_5_9_6_9))
 :effect (and (not (at_x6)) (at_x5))
)

(:action move_6_9_7_9
 :parameters ()
 :precondition (and (at_x6)(at_y9))
 :poss-precondition (and (bridge_6_9_7_9))
 :effect (and (not (at_x6)) (at_x7))
)

(:action move_6_9_6_8
 :parameters ()
 :precondition (and (at_x6)(at_y9))
 :poss-precondition (and (bridge_6_8_6_9))
 :effect (and (not (at_y9)) (at_y8))
)

(:action move_6_9_6_10
 :parameters ()
 :precondition (and (at_x6)(at_y9))
 :poss-precondition (and (bridge_6_9_6_10))
 :effect (and (not (at_y9)) (at_y10))
)

(:action move_6_10_5_10
 :parameters ()
 :precondition (and (at_x6)(at_y10))
 :poss-precondition (and (bridge_5_10_6_10))
 :effect (and (not (at_x6)) (at_x5))
)

(:action move_6_10_7_10
 :parameters ()
 :precondition (and (at_x6)(at_y10))
 :poss-precondition (and (bridge_6_10_7_10))
 :effect (and (not (at_x6)) (at_x7))
)

(:action move_6_10_6_9
 :parameters ()
 :precondition (and (at_x6)(at_y10))
 :poss-precondition (and (bridge_6_9_6_10))
 :effect (and (not (at_y10)) (at_y9))
)

(:action move_6_10_6_11
 :parameters ()
 :precondition (and (at_x6)(at_y10))
 :poss-precondition (and (bridge_6_10_6_11))
 :effect (and (not (at_y10)) (at_y11))
)

(:action move_6_11_5_11
 :parameters ()
 :precondition (and (at_x6)(at_y11))
 :poss-precondition (and (bridge_5_11_6_11))
 :effect (and (not (at_x6)) (at_x5))
)

(:action move_6_11_7_11
 :parameters ()
 :precondition (and (at_x6)(at_y11))
 :poss-precondition (and (bridge_6_11_7_11))
 :effect (and (not (at_x6)) (at_x7))
)

(:action move_6_11_6_10
 :parameters ()
 :precondition (and (at_x6)(at_y11))
 :poss-precondition (and (bridge_6_10_6_11))
 :effect (and (not (at_y11)) (at_y10))
)

(:action move_6_11_6_12
 :parameters ()
 :precondition (and (at_x6)(at_y11))
 :poss-precondition (and (bridge_6_11_6_12))
 :effect (and (not (at_y11)) (at_y12))
)

(:action move_6_12_5_12
 :parameters ()
 :precondition (and (at_x6)(at_y12))
 :poss-precondition (and (bridge_5_12_6_12))
 :effect (and (not (at_x6)) (at_x5))
)

(:action move_6_12_7_12
 :parameters ()
 :precondition (and (at_x6)(at_y12))
 :poss-precondition (and (bridge_6_12_7_12))
 :effect (and (not (at_x6)) (at_x7))
)

(:action move_6_12_6_11
 :parameters ()
 :precondition (and (at_x6)(at_y12))
 :poss-precondition (and (bridge_6_11_6_12))
 :effect (and (not (at_y12)) (at_y11))
)

(:action move_6_12_6_13
 :parameters ()
 :precondition (and (at_x6)(at_y12))
 :poss-precondition (and (bridge_6_12_6_13))
 :effect (and (not (at_y12)) (at_y13))
)

(:action move_6_13_5_13
 :parameters ()
 :precondition (and (at_x6)(at_y13))
 :poss-precondition (and (bridge_5_13_6_13))
 :effect (and (not (at_x6)) (at_x5))
)

(:action move_6_13_7_13
 :parameters ()
 :precondition (and (at_x6)(at_y13))
 :poss-precondition (and (bridge_6_13_7_13))
 :effect (and (not (at_x6)) (at_x7))
)

(:action move_6_13_6_12
 :parameters ()
 :precondition (and (at_x6)(at_y13))
 :poss-precondition (and (bridge_6_12_6_13))
 :effect (and (not (at_y13)) (at_y12))
)

(:action move_6_13_6_14
 :parameters ()
 :precondition (and (at_x6)(at_y13))
 :poss-precondition (and (bridge_6_13_6_14))
 :effect (and (not (at_y13)) (at_y14))
)

(:action move_6_14_5_14
 :parameters ()
 :precondition (and (at_x6)(at_y14))
 :poss-precondition (and (bridge_5_14_6_14))
 :effect (and (not (at_x6)) (at_x5))
)

(:action move_6_14_7_14
 :parameters ()
 :precondition (and (at_x6)(at_y14))
 :poss-precondition (and (bridge_6_14_7_14))
 :effect (and (not (at_x6)) (at_x7))
)

(:action move_6_14_6_13
 :parameters ()
 :precondition (and (at_x6)(at_y14))
 :poss-precondition (and (bridge_6_13_6_14))
 :effect (and (not (at_y14)) (at_y13))
)

(:action move_6_14_6_15
 :parameters ()
 :precondition (and (at_x6)(at_y14))
 :poss-precondition (and (bridge_6_14_6_15))
 :effect (and (not (at_y14)) (at_y15))
)

(:action move_6_15_5_15
 :parameters ()
 :precondition (and (at_x6)(at_y15))
 :poss-precondition (and (bridge_5_15_6_15))
 :effect (and (not (at_x6)) (at_x5))
)

(:action move_6_15_7_15
 :parameters ()
 :precondition (and (at_x6)(at_y15))
 :poss-precondition (and (bridge_6_15_7_15))
 :effect (and (not (at_x6)) (at_x7))
)

(:action move_6_15_6_14
 :parameters ()
 :precondition (and (at_x6)(at_y15))
 :poss-precondition (and (bridge_6_14_6_15))
 :effect (and (not (at_y15)) (at_y14))
)

(:action move_6_15_6_16
 :parameters ()
 :precondition (and (at_x6)(at_y15))
 :poss-precondition (and (bridge_6_15_6_16))
 :effect (and (not (at_y15)) (at_y16))
)

(:action move_6_16_5_16
 :parameters ()
 :precondition (and (at_x6)(at_y16))
 :poss-precondition (and (bridge_5_16_6_16))
 :effect (and (not (at_x6)) (at_x5))
)

(:action move_6_16_7_16
 :parameters ()
 :precondition (and (at_x6)(at_y16))
 :poss-precondition (and (bridge_6_16_7_16))
 :effect (and (not (at_x6)) (at_x7))
)

(:action move_6_16_6_15
 :parameters ()
 :precondition (and (at_x6)(at_y16))
 :poss-precondition (and (bridge_6_15_6_16))
 :effect (and (not (at_y16)) (at_y15))
)

(:action move_6_16_6_17
 :parameters ()
 :precondition (and (at_x6)(at_y16))
 :poss-precondition (and (bridge_6_16_6_17))
 :effect (and (not (at_y16)) (at_y17))
)

(:action move_6_17_5_17
 :parameters ()
 :precondition (and (at_x6)(at_y17))
 :poss-precondition (and (bridge_5_17_6_17))
 :effect (and (not (at_x6)) (at_x5))
)

(:action move_6_17_7_17
 :parameters ()
 :precondition (and (at_x6)(at_y17))
 :poss-precondition (and (bridge_6_17_7_17))
 :effect (and (not (at_x6)) (at_x7))
)

(:action move_6_17_6_16
 :parameters ()
 :precondition (and (at_x6)(at_y17))
 :poss-precondition (and (bridge_6_16_6_17))
 :effect (and (not (at_y17)) (at_y16))
)

(:action move_6_17_6_18
 :parameters ()
 :precondition (and (at_x6)(at_y17))
 :poss-precondition (and (bridge_6_17_6_18))
 :effect (and (not (at_y17)) (at_y18))
)

(:action move_6_18_5_18
 :parameters ()
 :precondition (and (at_x6)(at_y18))
 :poss-precondition (and (bridge_5_18_6_18))
 :effect (and (not (at_x6)) (at_x5))
)

(:action move_6_18_7_18
 :parameters ()
 :precondition (and (at_x6)(at_y18))
 :poss-precondition (and (bridge_6_18_7_18))
 :effect (and (not (at_x6)) (at_x7))
)

(:action move_6_18_6_17
 :parameters ()
 :precondition (and (at_x6)(at_y18))
 :poss-precondition (and (bridge_6_17_6_18))
 :effect (and (not (at_y18)) (at_y17))
)

(:action move_6_18_6_19
 :parameters ()
 :precondition (and (at_x6)(at_y18))
 :poss-precondition (and (bridge_6_18_6_19))
 :effect (and (not (at_y18)) (at_y19))
)

(:action move_6_19_5_19
 :parameters ()
 :precondition (and (at_x6)(at_y19))
 :poss-precondition (and (bridge_5_19_6_19))
 :effect (and (not (at_x6)) (at_x5))
)

(:action move_6_19_7_19
 :parameters ()
 :precondition (and (at_x6)(at_y19))
 :poss-precondition (and (bridge_6_19_7_19))
 :effect (and (not (at_x6)) (at_x7))
)

(:action move_6_19_6_18
 :parameters ()
 :precondition (and (at_x6)(at_y19))
 :poss-precondition (and (bridge_6_18_6_19))
 :effect (and (not (at_y19)) (at_y18))
)

(:action move_6_19_6_20
 :parameters ()
 :precondition (and (at_x6)(at_y19))
 :poss-precondition (and (bridge_6_19_6_20))
 :effect (and (not (at_y19)) (at_y20))
)

(:action move_6_20_5_20
 :parameters ()
 :precondition (and (at_x6)(at_y20))
 :poss-precondition (and (bridge_5_20_6_20))
 :effect (and (not (at_x6)) (at_x5))
)

(:action move_6_20_7_20
 :parameters ()
 :precondition (and (at_x6)(at_y20))
 :poss-precondition (and (bridge_6_20_7_20))
 :effect (and (not (at_x6)) (at_x7))
)

(:action move_6_20_6_19
 :parameters ()
 :precondition (and (at_x6)(at_y20))
 :poss-precondition (and (bridge_6_19_6_20))
 :effect (and (not (at_y20)) (at_y19))
)

(:action move_6_20_6_21
 :parameters ()
 :precondition (and (at_x6)(at_y20))
 :poss-precondition (and (bridge_6_20_6_21))
 :effect (and (not (at_y20)) (at_y21))
)

(:action move_6_21_5_21
 :parameters ()
 :precondition (and (at_x6)(at_y21))
 :poss-precondition (and (bridge_5_21_6_21))
 :effect (and (not (at_x6)) (at_x5))
)

(:action move_6_21_7_21
 :parameters ()
 :precondition (and (at_x6)(at_y21))
 :poss-precondition (and (bridge_6_21_7_21))
 :effect (and (not (at_x6)) (at_x7))
)

(:action move_6_21_6_20
 :parameters ()
 :precondition (and (at_x6)(at_y21))
 :poss-precondition (and (bridge_6_20_6_21))
 :effect (and (not (at_y21)) (at_y20))
)

(:action move_6_21_6_22
 :parameters ()
 :precondition (and (at_x6)(at_y21))
 :poss-precondition (and (bridge_6_21_6_22))
 :effect (and (not (at_y21)) (at_y22))
)

(:action move_6_22_5_22
 :parameters ()
 :precondition (and (at_x6)(at_y22))
 :poss-precondition (and (bridge_5_22_6_22))
 :effect (and (not (at_x6)) (at_x5))
)

(:action move_6_22_7_22
 :parameters ()
 :precondition (and (at_x6)(at_y22))
 :poss-precondition (and (bridge_6_22_7_22))
 :effect (and (not (at_x6)) (at_x7))
)

(:action move_6_22_6_21
 :parameters ()
 :precondition (and (at_x6)(at_y22))
 :poss-precondition (and (bridge_6_21_6_22))
 :effect (and (not (at_y22)) (at_y21))
)

(:action move_6_22_6_23
 :parameters ()
 :precondition (and (at_x6)(at_y22))
 :poss-precondition (and (bridge_6_22_6_23))
 :effect (and (not (at_y22)) (at_y23))
)

(:action move_6_23_5_23
 :parameters ()
 :precondition (and (at_x6)(at_y23))
 :poss-precondition (and (bridge_5_23_6_23))
 :effect (and (not (at_x6)) (at_x5))
)

(:action move_6_23_7_23
 :parameters ()
 :precondition (and (at_x6)(at_y23))
 :poss-precondition (and (bridge_6_23_7_23))
 :effect (and (not (at_x6)) (at_x7))
)

(:action move_6_23_6_22
 :parameters ()
 :precondition (and (at_x6)(at_y23))
 :poss-precondition (and (bridge_6_22_6_23))
 :effect (and (not (at_y23)) (at_y22))
)

(:action move_6_23_6_24
 :parameters ()
 :precondition (and (at_x6)(at_y23))
 :poss-precondition (and (bridge_6_23_6_24))
 :effect (and (not (at_y23)) (at_y24))
)

(:action move_6_24_5_24
 :parameters ()
 :precondition (and (at_x6)(at_y24))
 :poss-precondition (and (bridge_5_24_6_24))
 :effect (and (not (at_x6)) (at_x5))
)

(:action move_6_24_7_24
 :parameters ()
 :precondition (and (at_x6)(at_y24))
 :poss-precondition (and (bridge_6_24_7_24))
 :effect (and (not (at_x6)) (at_x7))
)

(:action move_6_24_6_23
 :parameters ()
 :precondition (and (at_x6)(at_y24))
 :poss-precondition (and (bridge_6_23_6_24))
 :effect (and (not (at_y24)) (at_y23))
)

(:action move_6_24_6_25
 :parameters ()
 :precondition (and (at_x6)(at_y24))
 :poss-precondition (and (bridge_6_24_6_25))
 :effect (and (not (at_y24)) (at_y25))
)

(:action move_6_25_5_25
 :parameters ()
 :precondition (and (at_x6)(at_y25))
 :poss-precondition (and (bridge_5_25_6_25))
 :effect (and (not (at_x6)) (at_x5))
)

(:action move_6_25_7_25
 :parameters ()
 :precondition (and (at_x6)(at_y25))
 :poss-precondition (and (bridge_6_25_7_25))
 :effect (and (not (at_x6)) (at_x7))
)

(:action move_6_25_6_24
 :parameters ()
 :precondition (and (at_x6)(at_y25))
 :poss-precondition (and (bridge_6_24_6_25))
 :effect (and (not (at_y25)) (at_y24))
)

(:action move_6_25_6_26
 :parameters ()
 :precondition (and (at_x6)(at_y25))
 :poss-precondition (and (bridge_6_25_6_26))
 :effect (and (not (at_y25)) (at_y26))
)

(:action move_6_26_5_26
 :parameters ()
 :precondition (and (at_x6)(at_y26))
 :poss-precondition (and (bridge_5_26_6_26))
 :effect (and (not (at_x6)) (at_x5))
)

(:action move_6_26_7_26
 :parameters ()
 :precondition (and (at_x6)(at_y26))
 :poss-precondition (and (bridge_6_26_7_26))
 :effect (and (not (at_x6)) (at_x7))
)

(:action move_6_26_6_25
 :parameters ()
 :precondition (and (at_x6)(at_y26))
 :poss-precondition (and (bridge_6_25_6_26))
 :effect (and (not (at_y26)) (at_y25))
)

(:action move_6_26_6_27
 :parameters ()
 :precondition (and (at_x6)(at_y26))
 :poss-precondition (and (bridge_6_26_6_27))
 :effect (and (not (at_y26)) (at_y27))
)

(:action move_6_27_5_27
 :parameters ()
 :precondition (and (at_x6)(at_y27))
 :poss-precondition (and (bridge_5_27_6_27))
 :effect (and (not (at_x6)) (at_x5))
)

(:action move_6_27_7_27
 :parameters ()
 :precondition (and (at_x6)(at_y27))
 :poss-precondition (and (bridge_6_27_7_27))
 :effect (and (not (at_x6)) (at_x7))
)

(:action move_6_27_6_26
 :parameters ()
 :precondition (and (at_x6)(at_y27))
 :poss-precondition (and (bridge_6_26_6_27))
 :effect (and (not (at_y27)) (at_y26))
)

(:action move_6_27_6_28
 :parameters ()
 :precondition (and (at_x6)(at_y27))
 :poss-precondition (and (bridge_6_27_6_28))
 :effect (and (not (at_y27)) (at_y28))
)

(:action move_6_28_5_28
 :parameters ()
 :precondition (and (at_x6)(at_y28))
 :poss-precondition (and (bridge_5_28_6_28))
 :effect (and (not (at_x6)) (at_x5))
)

(:action move_6_28_7_28
 :parameters ()
 :precondition (and (at_x6)(at_y28))
 :poss-precondition (and (bridge_6_28_7_28))
 :effect (and (not (at_x6)) (at_x7))
)

(:action move_6_28_6_27
 :parameters ()
 :precondition (and (at_x6)(at_y28))
 :poss-precondition (and (bridge_6_27_6_28))
 :effect (and (not (at_y28)) (at_y27))
)

(:action move_6_28_6_29
 :parameters ()
 :precondition (and (at_x6)(at_y28))
 :poss-precondition (and (bridge_6_28_6_29))
 :effect (and (not (at_y28)) (at_y29))
)

(:action move_6_29_5_29
 :parameters ()
 :precondition (and (at_x6)(at_y29))
 :poss-precondition (and (bridge_5_29_6_29))
 :effect (and (not (at_x6)) (at_x5))
)

(:action move_6_29_7_29
 :parameters ()
 :precondition (and (at_x6)(at_y29))
 :poss-precondition (and (bridge_6_29_7_29))
 :effect (and (not (at_x6)) (at_x7))
)

(:action move_6_29_6_28
 :parameters ()
 :precondition (and (at_x6)(at_y29))
 :poss-precondition (and (bridge_6_28_6_29))
 :effect (and (not (at_y29)) (at_y28))
)

(:action move_6_29_6_30
 :parameters ()
 :precondition (and (at_x6)(at_y29))
 :poss-precondition (and (bridge_6_29_6_30))
 :effect (and (not (at_y29)) (at_y30))
)

(:action move_6_30_5_30
 :parameters ()
 :precondition (and (at_x6)(at_y30))
 :poss-precondition (and (bridge_5_30_6_30))
 :effect (and (not (at_x6)) (at_x5))
)

(:action move_6_30_7_30
 :parameters ()
 :precondition (and (at_x6)(at_y30))
 :poss-precondition (and (bridge_6_30_7_30))
 :effect (and (not (at_x6)) (at_x7))
)

(:action move_6_30_6_29
 :parameters ()
 :precondition (and (at_x6)(at_y30))
 :poss-precondition (and (bridge_6_29_6_30))
 :effect (and (not (at_y30)) (at_y29))
)

(:action move_6_30_6_31
 :parameters ()
 :precondition (and (at_x6)(at_y30))
 :poss-precondition (and (bridge_6_30_6_31))
 :effect (and (not (at_y30)) (at_y31))
)

(:action move_6_31_5_31
 :parameters ()
 :precondition (and (at_x6)(at_y31))
 :poss-precondition (and (bridge_5_31_6_31))
 :effect (and (not (at_x6)) (at_x5))
)

(:action move_6_31_7_31
 :parameters ()
 :precondition (and (at_x6)(at_y31))
 :poss-precondition (and (bridge_6_31_7_31))
 :effect (and (not (at_x6)) (at_x7))
)

(:action move_6_31_6_30
 :parameters ()
 :precondition (and (at_x6)(at_y31))
 :poss-precondition (and (bridge_6_30_6_31))
 :effect (and (not (at_y31)) (at_y30))
)

(:action move_7_0_6_0
 :parameters ()
 :precondition (and (at_x7)(at_y0))
 :poss-precondition (and (bridge_6_0_7_0))
 :effect (and (not (at_x7)) (at_x6))
)

(:action move_7_0_8_0
 :parameters ()
 :precondition (and (at_x7)(at_y0))
 :poss-precondition (and (bridge_7_0_8_0))
 :effect (and (not (at_x7)) (at_x8))
)

(:action move_7_0_7_1
 :parameters ()
 :precondition (and (at_x7)(at_y0))
 :poss-precondition (and (bridge_7_0_7_1))
 :effect (and (not (at_y0)) (at_y1))
)

(:action move_7_1_6_1
 :parameters ()
 :precondition (and (at_x7)(at_y1))
 :poss-precondition (and (bridge_6_1_7_1))
 :effect (and (not (at_x7)) (at_x6))
)

(:action move_7_1_8_1
 :parameters ()
 :precondition (and (at_x7)(at_y1))
 :poss-precondition (and (bridge_7_1_8_1))
 :effect (and (not (at_x7)) (at_x8))
)

(:action move_7_1_7_0
 :parameters ()
 :precondition (and (at_x7)(at_y1))
 :poss-precondition (and (bridge_7_0_7_1))
 :effect (and (not (at_y1)) (at_y0))
)

(:action move_7_1_7_2
 :parameters ()
 :precondition (and (at_x7)(at_y1))
 :poss-precondition (and (bridge_7_1_7_2))
 :effect (and (not (at_y1)) (at_y2))
)

(:action move_7_2_6_2
 :parameters ()
 :precondition (and (at_x7)(at_y2))
 :poss-precondition (and (bridge_6_2_7_2))
 :effect (and (not (at_x7)) (at_x6))
)

(:action move_7_2_8_2
 :parameters ()
 :precondition (and (at_x7)(at_y2))
 :poss-precondition (and (bridge_7_2_8_2))
 :effect (and (not (at_x7)) (at_x8))
)

(:action move_7_2_7_1
 :parameters ()
 :precondition (and (at_x7)(at_y2))
 :poss-precondition (and (bridge_7_1_7_2))
 :effect (and (not (at_y2)) (at_y1))
)

(:action move_7_2_7_3
 :parameters ()
 :precondition (and (at_x7)(at_y2))
 :poss-precondition (and (bridge_7_2_7_3))
 :effect (and (not (at_y2)) (at_y3))
)

(:action move_7_3_6_3
 :parameters ()
 :precondition (and (at_x7)(at_y3))
 :poss-precondition (and (bridge_6_3_7_3))
 :effect (and (not (at_x7)) (at_x6))
)

(:action move_7_3_8_3
 :parameters ()
 :precondition (and (at_x7)(at_y3))
 :poss-precondition (and (bridge_7_3_8_3))
 :effect (and (not (at_x7)) (at_x8))
)

(:action move_7_3_7_2
 :parameters ()
 :precondition (and (at_x7)(at_y3))
 :poss-precondition (and (bridge_7_2_7_3))
 :effect (and (not (at_y3)) (at_y2))
)

(:action move_7_3_7_4
 :parameters ()
 :precondition (and (at_x7)(at_y3))
 :poss-precondition (and (bridge_7_3_7_4))
 :effect (and (not (at_y3)) (at_y4))
)

(:action move_7_4_6_4
 :parameters ()
 :precondition (and (at_x7)(at_y4))
 :poss-precondition (and (bridge_6_4_7_4))
 :effect (and (not (at_x7)) (at_x6))
)

(:action move_7_4_8_4
 :parameters ()
 :precondition (and (at_x7)(at_y4))
 :poss-precondition (and (bridge_7_4_8_4))
 :effect (and (not (at_x7)) (at_x8))
)

(:action move_7_4_7_3
 :parameters ()
 :precondition (and (at_x7)(at_y4))
 :poss-precondition (and (bridge_7_3_7_4))
 :effect (and (not (at_y4)) (at_y3))
)

(:action move_7_4_7_5
 :parameters ()
 :precondition (and (at_x7)(at_y4))
 :poss-precondition (and (bridge_7_4_7_5))
 :effect (and (not (at_y4)) (at_y5))
)

(:action move_7_5_6_5
 :parameters ()
 :precondition (and (at_x7)(at_y5))
 :poss-precondition (and (bridge_6_5_7_5))
 :effect (and (not (at_x7)) (at_x6))
)

(:action move_7_5_8_5
 :parameters ()
 :precondition (and (at_x7)(at_y5))
 :poss-precondition (and (bridge_7_5_8_5))
 :effect (and (not (at_x7)) (at_x8))
)

(:action move_7_5_7_4
 :parameters ()
 :precondition (and (at_x7)(at_y5))
 :poss-precondition (and (bridge_7_4_7_5))
 :effect (and (not (at_y5)) (at_y4))
)

(:action move_7_5_7_6
 :parameters ()
 :precondition (and (at_x7)(at_y5))
 :poss-precondition (and (bridge_7_5_7_6))
 :effect (and (not (at_y5)) (at_y6))
)

(:action move_7_6_6_6
 :parameters ()
 :precondition (and (at_x7)(at_y6))
 :poss-precondition (and (bridge_6_6_7_6))
 :effect (and (not (at_x7)) (at_x6))
)

(:action move_7_6_8_6
 :parameters ()
 :precondition (and (at_x7)(at_y6))
 :poss-precondition (and (bridge_7_6_8_6))
 :effect (and (not (at_x7)) (at_x8))
)

(:action move_7_6_7_5
 :parameters ()
 :precondition (and (at_x7)(at_y6))
 :poss-precondition (and (bridge_7_5_7_6))
 :effect (and (not (at_y6)) (at_y5))
)

(:action move_7_6_7_7
 :parameters ()
 :precondition (and (at_x7)(at_y6))
 :poss-precondition (and (bridge_7_6_7_7))
 :effect (and (not (at_y6)) (at_y7))
)

(:action move_7_7_6_7
 :parameters ()
 :precondition (and (at_x7)(at_y7))
 :poss-precondition (and (bridge_6_7_7_7))
 :effect (and (not (at_x7)) (at_x6))
)

(:action move_7_7_8_7
 :parameters ()
 :precondition (and (at_x7)(at_y7))
 :poss-precondition (and (bridge_7_7_8_7))
 :effect (and (not (at_x7)) (at_x8))
)

(:action move_7_7_7_6
 :parameters ()
 :precondition (and (at_x7)(at_y7))
 :poss-precondition (and (bridge_7_6_7_7))
 :effect (and (not (at_y7)) (at_y6))
)

(:action move_7_7_7_8
 :parameters ()
 :precondition (and (at_x7)(at_y7))
 :poss-precondition (and (bridge_7_7_7_8))
 :effect (and (not (at_y7)) (at_y8))
)

(:action move_7_8_6_8
 :parameters ()
 :precondition (and (at_x7)(at_y8))
 :poss-precondition (and (bridge_6_8_7_8))
 :effect (and (not (at_x7)) (at_x6))
)

(:action move_7_8_8_8
 :parameters ()
 :precondition (and (at_x7)(at_y8))
 :poss-precondition (and (bridge_7_8_8_8))
 :effect (and (not (at_x7)) (at_x8))
)

(:action move_7_8_7_7
 :parameters ()
 :precondition (and (at_x7)(at_y8))
 :poss-precondition (and (bridge_7_7_7_8))
 :effect (and (not (at_y8)) (at_y7))
)

(:action move_7_8_7_9
 :parameters ()
 :precondition (and (at_x7)(at_y8))
 :poss-precondition (and (bridge_7_8_7_9))
 :effect (and (not (at_y8)) (at_y9))
)

(:action move_7_9_6_9
 :parameters ()
 :precondition (and (at_x7)(at_y9))
 :poss-precondition (and (bridge_6_9_7_9))
 :effect (and (not (at_x7)) (at_x6))
)

(:action move_7_9_8_9
 :parameters ()
 :precondition (and (at_x7)(at_y9))
 :poss-precondition (and (bridge_7_9_8_9))
 :effect (and (not (at_x7)) (at_x8))
)

(:action move_7_9_7_8
 :parameters ()
 :precondition (and (at_x7)(at_y9))
 :poss-precondition (and (bridge_7_8_7_9))
 :effect (and (not (at_y9)) (at_y8))
)

(:action move_7_9_7_10
 :parameters ()
 :precondition (and (at_x7)(at_y9))
 :poss-precondition (and (bridge_7_9_7_10))
 :effect (and (not (at_y9)) (at_y10))
)

(:action move_7_10_6_10
 :parameters ()
 :precondition (and (at_x7)(at_y10))
 :poss-precondition (and (bridge_6_10_7_10))
 :effect (and (not (at_x7)) (at_x6))
)

(:action move_7_10_8_10
 :parameters ()
 :precondition (and (at_x7)(at_y10))
 :poss-precondition (and (bridge_7_10_8_10))
 :effect (and (not (at_x7)) (at_x8))
)

(:action move_7_10_7_9
 :parameters ()
 :precondition (and (at_x7)(at_y10))
 :poss-precondition (and (bridge_7_9_7_10))
 :effect (and (not (at_y10)) (at_y9))
)

(:action move_7_10_7_11
 :parameters ()
 :precondition (and (at_x7)(at_y10))
 :poss-precondition (and (bridge_7_10_7_11))
 :effect (and (not (at_y10)) (at_y11))
)

(:action move_7_11_6_11
 :parameters ()
 :precondition (and (at_x7)(at_y11))
 :poss-precondition (and (bridge_6_11_7_11))
 :effect (and (not (at_x7)) (at_x6))
)

(:action move_7_11_8_11
 :parameters ()
 :precondition (and (at_x7)(at_y11))
 :poss-precondition (and (bridge_7_11_8_11))
 :effect (and (not (at_x7)) (at_x8))
)

(:action move_7_11_7_10
 :parameters ()
 :precondition (and (at_x7)(at_y11))
 :poss-precondition (and (bridge_7_10_7_11))
 :effect (and (not (at_y11)) (at_y10))
)

(:action move_7_11_7_12
 :parameters ()
 :precondition (and (at_x7)(at_y11))
 :poss-precondition (and (bridge_7_11_7_12))
 :effect (and (not (at_y11)) (at_y12))
)

(:action move_7_12_6_12
 :parameters ()
 :precondition (and (at_x7)(at_y12))
 :poss-precondition (and (bridge_6_12_7_12))
 :effect (and (not (at_x7)) (at_x6))
)

(:action move_7_12_8_12
 :parameters ()
 :precondition (and (at_x7)(at_y12))
 :poss-precondition (and (bridge_7_12_8_12))
 :effect (and (not (at_x7)) (at_x8))
)

(:action move_7_12_7_11
 :parameters ()
 :precondition (and (at_x7)(at_y12))
 :poss-precondition (and (bridge_7_11_7_12))
 :effect (and (not (at_y12)) (at_y11))
)

(:action move_7_12_7_13
 :parameters ()
 :precondition (and (at_x7)(at_y12))
 :poss-precondition (and (bridge_7_12_7_13))
 :effect (and (not (at_y12)) (at_y13))
)

(:action move_7_13_6_13
 :parameters ()
 :precondition (and (at_x7)(at_y13))
 :poss-precondition (and (bridge_6_13_7_13))
 :effect (and (not (at_x7)) (at_x6))
)

(:action move_7_13_8_13
 :parameters ()
 :precondition (and (at_x7)(at_y13))
 :poss-precondition (and (bridge_7_13_8_13))
 :effect (and (not (at_x7)) (at_x8))
)

(:action move_7_13_7_12
 :parameters ()
 :precondition (and (at_x7)(at_y13))
 :poss-precondition (and (bridge_7_12_7_13))
 :effect (and (not (at_y13)) (at_y12))
)

(:action move_7_13_7_14
 :parameters ()
 :precondition (and (at_x7)(at_y13))
 :poss-precondition (and (bridge_7_13_7_14))
 :effect (and (not (at_y13)) (at_y14))
)

(:action move_7_14_6_14
 :parameters ()
 :precondition (and (at_x7)(at_y14))
 :poss-precondition (and (bridge_6_14_7_14))
 :effect (and (not (at_x7)) (at_x6))
)

(:action move_7_14_8_14
 :parameters ()
 :precondition (and (at_x7)(at_y14))
 :poss-precondition (and (bridge_7_14_8_14))
 :effect (and (not (at_x7)) (at_x8))
)

(:action move_7_14_7_13
 :parameters ()
 :precondition (and (at_x7)(at_y14))
 :poss-precondition (and (bridge_7_13_7_14))
 :effect (and (not (at_y14)) (at_y13))
)

(:action move_7_14_7_15
 :parameters ()
 :precondition (and (at_x7)(at_y14))
 :poss-precondition (and (bridge_7_14_7_15))
 :effect (and (not (at_y14)) (at_y15))
)

(:action move_7_15_6_15
 :parameters ()
 :precondition (and (at_x7)(at_y15))
 :poss-precondition (and (bridge_6_15_7_15))
 :effect (and (not (at_x7)) (at_x6))
)

(:action move_7_15_8_15
 :parameters ()
 :precondition (and (at_x7)(at_y15))
 :poss-precondition (and (bridge_7_15_8_15))
 :effect (and (not (at_x7)) (at_x8))
)

(:action move_7_15_7_14
 :parameters ()
 :precondition (and (at_x7)(at_y15))
 :poss-precondition (and (bridge_7_14_7_15))
 :effect (and (not (at_y15)) (at_y14))
)

(:action move_7_15_7_16
 :parameters ()
 :precondition (and (at_x7)(at_y15))
 :poss-precondition (and (bridge_7_15_7_16))
 :effect (and (not (at_y15)) (at_y16))
)

(:action move_7_16_6_16
 :parameters ()
 :precondition (and (at_x7)(at_y16))
 :poss-precondition (and (bridge_6_16_7_16))
 :effect (and (not (at_x7)) (at_x6))
)

(:action move_7_16_8_16
 :parameters ()
 :precondition (and (at_x7)(at_y16))
 :poss-precondition (and (bridge_7_16_8_16))
 :effect (and (not (at_x7)) (at_x8))
)

(:action move_7_16_7_15
 :parameters ()
 :precondition (and (at_x7)(at_y16))
 :poss-precondition (and (bridge_7_15_7_16))
 :effect (and (not (at_y16)) (at_y15))
)

(:action move_7_16_7_17
 :parameters ()
 :precondition (and (at_x7)(at_y16))
 :poss-precondition (and (bridge_7_16_7_17))
 :effect (and (not (at_y16)) (at_y17))
)

(:action move_7_17_6_17
 :parameters ()
 :precondition (and (at_x7)(at_y17))
 :poss-precondition (and (bridge_6_17_7_17))
 :effect (and (not (at_x7)) (at_x6))
)

(:action move_7_17_8_17
 :parameters ()
 :precondition (and (at_x7)(at_y17))
 :poss-precondition (and (bridge_7_17_8_17))
 :effect (and (not (at_x7)) (at_x8))
)

(:action move_7_17_7_16
 :parameters ()
 :precondition (and (at_x7)(at_y17))
 :poss-precondition (and (bridge_7_16_7_17))
 :effect (and (not (at_y17)) (at_y16))
)

(:action move_7_17_7_18
 :parameters ()
 :precondition (and (at_x7)(at_y17))
 :poss-precondition (and (bridge_7_17_7_18))
 :effect (and (not (at_y17)) (at_y18))
)

(:action move_7_18_6_18
 :parameters ()
 :precondition (and (at_x7)(at_y18))
 :poss-precondition (and (bridge_6_18_7_18))
 :effect (and (not (at_x7)) (at_x6))
)

(:action move_7_18_8_18
 :parameters ()
 :precondition (and (at_x7)(at_y18))
 :poss-precondition (and (bridge_7_18_8_18))
 :effect (and (not (at_x7)) (at_x8))
)

(:action move_7_18_7_17
 :parameters ()
 :precondition (and (at_x7)(at_y18))
 :poss-precondition (and (bridge_7_17_7_18))
 :effect (and (not (at_y18)) (at_y17))
)

(:action move_7_18_7_19
 :parameters ()
 :precondition (and (at_x7)(at_y18))
 :poss-precondition (and (bridge_7_18_7_19))
 :effect (and (not (at_y18)) (at_y19))
)

(:action move_7_19_6_19
 :parameters ()
 :precondition (and (at_x7)(at_y19))
 :poss-precondition (and (bridge_6_19_7_19))
 :effect (and (not (at_x7)) (at_x6))
)

(:action move_7_19_8_19
 :parameters ()
 :precondition (and (at_x7)(at_y19))
 :poss-precondition (and (bridge_7_19_8_19))
 :effect (and (not (at_x7)) (at_x8))
)

(:action move_7_19_7_18
 :parameters ()
 :precondition (and (at_x7)(at_y19))
 :poss-precondition (and (bridge_7_18_7_19))
 :effect (and (not (at_y19)) (at_y18))
)

(:action move_7_19_7_20
 :parameters ()
 :precondition (and (at_x7)(at_y19))
 :poss-precondition (and (bridge_7_19_7_20))
 :effect (and (not (at_y19)) (at_y20))
)

(:action move_7_20_6_20
 :parameters ()
 :precondition (and (at_x7)(at_y20))
 :poss-precondition (and (bridge_6_20_7_20))
 :effect (and (not (at_x7)) (at_x6))
)

(:action move_7_20_8_20
 :parameters ()
 :precondition (and (at_x7)(at_y20))
 :poss-precondition (and (bridge_7_20_8_20))
 :effect (and (not (at_x7)) (at_x8))
)

(:action move_7_20_7_19
 :parameters ()
 :precondition (and (at_x7)(at_y20))
 :poss-precondition (and (bridge_7_19_7_20))
 :effect (and (not (at_y20)) (at_y19))
)

(:action move_7_20_7_21
 :parameters ()
 :precondition (and (at_x7)(at_y20))
 :poss-precondition (and (bridge_7_20_7_21))
 :effect (and (not (at_y20)) (at_y21))
)

(:action move_7_21_6_21
 :parameters ()
 :precondition (and (at_x7)(at_y21))
 :poss-precondition (and (bridge_6_21_7_21))
 :effect (and (not (at_x7)) (at_x6))
)

(:action move_7_21_8_21
 :parameters ()
 :precondition (and (at_x7)(at_y21))
 :poss-precondition (and (bridge_7_21_8_21))
 :effect (and (not (at_x7)) (at_x8))
)

(:action move_7_21_7_20
 :parameters ()
 :precondition (and (at_x7)(at_y21))
 :poss-precondition (and (bridge_7_20_7_21))
 :effect (and (not (at_y21)) (at_y20))
)

(:action move_7_21_7_22
 :parameters ()
 :precondition (and (at_x7)(at_y21))
 :poss-precondition (and (bridge_7_21_7_22))
 :effect (and (not (at_y21)) (at_y22))
)

(:action move_7_22_6_22
 :parameters ()
 :precondition (and (at_x7)(at_y22))
 :poss-precondition (and (bridge_6_22_7_22))
 :effect (and (not (at_x7)) (at_x6))
)

(:action move_7_22_8_22
 :parameters ()
 :precondition (and (at_x7)(at_y22))
 :poss-precondition (and (bridge_7_22_8_22))
 :effect (and (not (at_x7)) (at_x8))
)

(:action move_7_22_7_21
 :parameters ()
 :precondition (and (at_x7)(at_y22))
 :poss-precondition (and (bridge_7_21_7_22))
 :effect (and (not (at_y22)) (at_y21))
)

(:action move_7_22_7_23
 :parameters ()
 :precondition (and (at_x7)(at_y22))
 :poss-precondition (and (bridge_7_22_7_23))
 :effect (and (not (at_y22)) (at_y23))
)

(:action move_7_23_6_23
 :parameters ()
 :precondition (and (at_x7)(at_y23))
 :poss-precondition (and (bridge_6_23_7_23))
 :effect (and (not (at_x7)) (at_x6))
)

(:action move_7_23_8_23
 :parameters ()
 :precondition (and (at_x7)(at_y23))
 :poss-precondition (and (bridge_7_23_8_23))
 :effect (and (not (at_x7)) (at_x8))
)

(:action move_7_23_7_22
 :parameters ()
 :precondition (and (at_x7)(at_y23))
 :poss-precondition (and (bridge_7_22_7_23))
 :effect (and (not (at_y23)) (at_y22))
)

(:action move_7_23_7_24
 :parameters ()
 :precondition (and (at_x7)(at_y23))
 :poss-precondition (and (bridge_7_23_7_24))
 :effect (and (not (at_y23)) (at_y24))
)

(:action move_7_24_6_24
 :parameters ()
 :precondition (and (at_x7)(at_y24))
 :poss-precondition (and (bridge_6_24_7_24))
 :effect (and (not (at_x7)) (at_x6))
)

(:action move_7_24_8_24
 :parameters ()
 :precondition (and (at_x7)(at_y24))
 :poss-precondition (and (bridge_7_24_8_24))
 :effect (and (not (at_x7)) (at_x8))
)

(:action move_7_24_7_23
 :parameters ()
 :precondition (and (at_x7)(at_y24))
 :poss-precondition (and (bridge_7_23_7_24))
 :effect (and (not (at_y24)) (at_y23))
)

(:action move_7_24_7_25
 :parameters ()
 :precondition (and (at_x7)(at_y24))
 :poss-precondition (and (bridge_7_24_7_25))
 :effect (and (not (at_y24)) (at_y25))
)

(:action move_7_25_6_25
 :parameters ()
 :precondition (and (at_x7)(at_y25))
 :poss-precondition (and (bridge_6_25_7_25))
 :effect (and (not (at_x7)) (at_x6))
)

(:action move_7_25_8_25
 :parameters ()
 :precondition (and (at_x7)(at_y25))
 :poss-precondition (and (bridge_7_25_8_25))
 :effect (and (not (at_x7)) (at_x8))
)

(:action move_7_25_7_24
 :parameters ()
 :precondition (and (at_x7)(at_y25))
 :poss-precondition (and (bridge_7_24_7_25))
 :effect (and (not (at_y25)) (at_y24))
)

(:action move_7_25_7_26
 :parameters ()
 :precondition (and (at_x7)(at_y25))
 :poss-precondition (and (bridge_7_25_7_26))
 :effect (and (not (at_y25)) (at_y26))
)

(:action move_7_26_6_26
 :parameters ()
 :precondition (and (at_x7)(at_y26))
 :poss-precondition (and (bridge_6_26_7_26))
 :effect (and (not (at_x7)) (at_x6))
)

(:action move_7_26_8_26
 :parameters ()
 :precondition (and (at_x7)(at_y26))
 :poss-precondition (and (bridge_7_26_8_26))
 :effect (and (not (at_x7)) (at_x8))
)

(:action move_7_26_7_25
 :parameters ()
 :precondition (and (at_x7)(at_y26))
 :poss-precondition (and (bridge_7_25_7_26))
 :effect (and (not (at_y26)) (at_y25))
)

(:action move_7_26_7_27
 :parameters ()
 :precondition (and (at_x7)(at_y26))
 :poss-precondition (and (bridge_7_26_7_27))
 :effect (and (not (at_y26)) (at_y27))
)

(:action move_7_27_6_27
 :parameters ()
 :precondition (and (at_x7)(at_y27))
 :poss-precondition (and (bridge_6_27_7_27))
 :effect (and (not (at_x7)) (at_x6))
)

(:action move_7_27_8_27
 :parameters ()
 :precondition (and (at_x7)(at_y27))
 :poss-precondition (and (bridge_7_27_8_27))
 :effect (and (not (at_x7)) (at_x8))
)

(:action move_7_27_7_26
 :parameters ()
 :precondition (and (at_x7)(at_y27))
 :poss-precondition (and (bridge_7_26_7_27))
 :effect (and (not (at_y27)) (at_y26))
)

(:action move_7_27_7_28
 :parameters ()
 :precondition (and (at_x7)(at_y27))
 :poss-precondition (and (bridge_7_27_7_28))
 :effect (and (not (at_y27)) (at_y28))
)

(:action move_7_28_6_28
 :parameters ()
 :precondition (and (at_x7)(at_y28))
 :poss-precondition (and (bridge_6_28_7_28))
 :effect (and (not (at_x7)) (at_x6))
)

(:action move_7_28_8_28
 :parameters ()
 :precondition (and (at_x7)(at_y28))
 :poss-precondition (and (bridge_7_28_8_28))
 :effect (and (not (at_x7)) (at_x8))
)

(:action move_7_28_7_27
 :parameters ()
 :precondition (and (at_x7)(at_y28))
 :poss-precondition (and (bridge_7_27_7_28))
 :effect (and (not (at_y28)) (at_y27))
)

(:action move_7_28_7_29
 :parameters ()
 :precondition (and (at_x7)(at_y28))
 :poss-precondition (and (bridge_7_28_7_29))
 :effect (and (not (at_y28)) (at_y29))
)

(:action move_7_29_6_29
 :parameters ()
 :precondition (and (at_x7)(at_y29))
 :poss-precondition (and (bridge_6_29_7_29))
 :effect (and (not (at_x7)) (at_x6))
)

(:action move_7_29_8_29
 :parameters ()
 :precondition (and (at_x7)(at_y29))
 :poss-precondition (and (bridge_7_29_8_29))
 :effect (and (not (at_x7)) (at_x8))
)

(:action move_7_29_7_28
 :parameters ()
 :precondition (and (at_x7)(at_y29))
 :poss-precondition (and (bridge_7_28_7_29))
 :effect (and (not (at_y29)) (at_y28))
)

(:action move_7_29_7_30
 :parameters ()
 :precondition (and (at_x7)(at_y29))
 :poss-precondition (and (bridge_7_29_7_30))
 :effect (and (not (at_y29)) (at_y30))
)

(:action move_7_30_6_30
 :parameters ()
 :precondition (and (at_x7)(at_y30))
 :poss-precondition (and (bridge_6_30_7_30))
 :effect (and (not (at_x7)) (at_x6))
)

(:action move_7_30_8_30
 :parameters ()
 :precondition (and (at_x7)(at_y30))
 :poss-precondition (and (bridge_7_30_8_30))
 :effect (and (not (at_x7)) (at_x8))
)

(:action move_7_30_7_29
 :parameters ()
 :precondition (and (at_x7)(at_y30))
 :poss-precondition (and (bridge_7_29_7_30))
 :effect (and (not (at_y30)) (at_y29))
)

(:action move_7_30_7_31
 :parameters ()
 :precondition (and (at_x7)(at_y30))
 :poss-precondition (and (bridge_7_30_7_31))
 :effect (and (not (at_y30)) (at_y31))
)

(:action move_7_31_6_31
 :parameters ()
 :precondition (and (at_x7)(at_y31))
 :poss-precondition (and (bridge_6_31_7_31))
 :effect (and (not (at_x7)) (at_x6))
)

(:action move_7_31_8_31
 :parameters ()
 :precondition (and (at_x7)(at_y31))
 :poss-precondition (and (bridge_7_31_8_31))
 :effect (and (not (at_x7)) (at_x8))
)

(:action move_7_31_7_30
 :parameters ()
 :precondition (and (at_x7)(at_y31))
 :poss-precondition (and (bridge_7_30_7_31))
 :effect (and (not (at_y31)) (at_y30))
)

(:action move_8_0_7_0
 :parameters ()
 :precondition (and (at_x8)(at_y0))
 :poss-precondition (and (bridge_7_0_8_0))
 :effect (and (not (at_x8)) (at_x7))
)

(:action move_8_0_9_0
 :parameters ()
 :precondition (and (at_x8)(at_y0))
 :poss-precondition (and (bridge_8_0_9_0))
 :effect (and (not (at_x8)) (at_x9))
)

(:action move_8_0_8_1
 :parameters ()
 :precondition (and (at_x8)(at_y0))
 :poss-precondition (and (bridge_8_0_8_1))
 :effect (and (not (at_y0)) (at_y1))
)

(:action move_8_1_7_1
 :parameters ()
 :precondition (and (at_x8)(at_y1))
 :poss-precondition (and (bridge_7_1_8_1))
 :effect (and (not (at_x8)) (at_x7))
)

(:action move_8_1_9_1
 :parameters ()
 :precondition (and (at_x8)(at_y1))
 :poss-precondition (and (bridge_8_1_9_1))
 :effect (and (not (at_x8)) (at_x9))
)

(:action move_8_1_8_0
 :parameters ()
 :precondition (and (at_x8)(at_y1))
 :poss-precondition (and (bridge_8_0_8_1))
 :effect (and (not (at_y1)) (at_y0))
)

(:action move_8_1_8_2
 :parameters ()
 :precondition (and (at_x8)(at_y1))
 :poss-precondition (and (bridge_8_1_8_2))
 :effect (and (not (at_y1)) (at_y2))
)

(:action move_8_2_7_2
 :parameters ()
 :precondition (and (at_x8)(at_y2))
 :poss-precondition (and (bridge_7_2_8_2))
 :effect (and (not (at_x8)) (at_x7))
)

(:action move_8_2_9_2
 :parameters ()
 :precondition (and (at_x8)(at_y2))
 :poss-precondition (and (bridge_8_2_9_2))
 :effect (and (not (at_x8)) (at_x9))
)

(:action move_8_2_8_1
 :parameters ()
 :precondition (and (at_x8)(at_y2))
 :poss-precondition (and (bridge_8_1_8_2))
 :effect (and (not (at_y2)) (at_y1))
)

(:action move_8_2_8_3
 :parameters ()
 :precondition (and (at_x8)(at_y2))
 :poss-precondition (and (bridge_8_2_8_3))
 :effect (and (not (at_y2)) (at_y3))
)

(:action move_8_3_7_3
 :parameters ()
 :precondition (and (at_x8)(at_y3))
 :poss-precondition (and (bridge_7_3_8_3))
 :effect (and (not (at_x8)) (at_x7))
)

(:action move_8_3_9_3
 :parameters ()
 :precondition (and (at_x8)(at_y3))
 :poss-precondition (and (bridge_8_3_9_3))
 :effect (and (not (at_x8)) (at_x9))
)

(:action move_8_3_8_2
 :parameters ()
 :precondition (and (at_x8)(at_y3))
 :poss-precondition (and (bridge_8_2_8_3))
 :effect (and (not (at_y3)) (at_y2))
)

(:action move_8_3_8_4
 :parameters ()
 :precondition (and (at_x8)(at_y3))
 :poss-precondition (and (bridge_8_3_8_4))
 :effect (and (not (at_y3)) (at_y4))
)

(:action move_8_4_7_4
 :parameters ()
 :precondition (and (at_x8)(at_y4))
 :poss-precondition (and (bridge_7_4_8_4))
 :effect (and (not (at_x8)) (at_x7))
)

(:action move_8_4_9_4
 :parameters ()
 :precondition (and (at_x8)(at_y4))
 :poss-precondition (and (bridge_8_4_9_4))
 :effect (and (not (at_x8)) (at_x9))
)

(:action move_8_4_8_3
 :parameters ()
 :precondition (and (at_x8)(at_y4))
 :poss-precondition (and (bridge_8_3_8_4))
 :effect (and (not (at_y4)) (at_y3))
)

(:action move_8_4_8_5
 :parameters ()
 :precondition (and (at_x8)(at_y4))
 :poss-precondition (and (bridge_8_4_8_5))
 :effect (and (not (at_y4)) (at_y5))
)

(:action move_8_5_7_5
 :parameters ()
 :precondition (and (at_x8)(at_y5))
 :poss-precondition (and (bridge_7_5_8_5))
 :effect (and (not (at_x8)) (at_x7))
)

(:action move_8_5_9_5
 :parameters ()
 :precondition (and (at_x8)(at_y5))
 :poss-precondition (and (bridge_8_5_9_5))
 :effect (and (not (at_x8)) (at_x9))
)

(:action move_8_5_8_4
 :parameters ()
 :precondition (and (at_x8)(at_y5))
 :poss-precondition (and (bridge_8_4_8_5))
 :effect (and (not (at_y5)) (at_y4))
)

(:action move_8_5_8_6
 :parameters ()
 :precondition (and (at_x8)(at_y5))
 :poss-precondition (and (bridge_8_5_8_6))
 :effect (and (not (at_y5)) (at_y6))
)

(:action move_8_6_7_6
 :parameters ()
 :precondition (and (at_x8)(at_y6))
 :poss-precondition (and (bridge_7_6_8_6))
 :effect (and (not (at_x8)) (at_x7))
)

(:action move_8_6_9_6
 :parameters ()
 :precondition (and (at_x8)(at_y6))
 :poss-precondition (and (bridge_8_6_9_6))
 :effect (and (not (at_x8)) (at_x9))
)

(:action move_8_6_8_5
 :parameters ()
 :precondition (and (at_x8)(at_y6))
 :poss-precondition (and (bridge_8_5_8_6))
 :effect (and (not (at_y6)) (at_y5))
)

(:action move_8_6_8_7
 :parameters ()
 :precondition (and (at_x8)(at_y6))
 :poss-precondition (and (bridge_8_6_8_7))
 :effect (and (not (at_y6)) (at_y7))
)

(:action move_8_7_7_7
 :parameters ()
 :precondition (and (at_x8)(at_y7))
 :poss-precondition (and (bridge_7_7_8_7))
 :effect (and (not (at_x8)) (at_x7))
)

(:action move_8_7_9_7
 :parameters ()
 :precondition (and (at_x8)(at_y7))
 :poss-precondition (and (bridge_8_7_9_7))
 :effect (and (not (at_x8)) (at_x9))
)

(:action move_8_7_8_6
 :parameters ()
 :precondition (and (at_x8)(at_y7))
 :poss-precondition (and (bridge_8_6_8_7))
 :effect (and (not (at_y7)) (at_y6))
)

(:action move_8_7_8_8
 :parameters ()
 :precondition (and (at_x8)(at_y7))
 :poss-precondition (and (bridge_8_7_8_8))
 :effect (and (not (at_y7)) (at_y8))
)

(:action move_8_8_7_8
 :parameters ()
 :precondition (and (at_x8)(at_y8))
 :poss-precondition (and (bridge_7_8_8_8))
 :effect (and (not (at_x8)) (at_x7))
)

(:action move_8_8_9_8
 :parameters ()
 :precondition (and (at_x8)(at_y8))
 :poss-precondition (and (bridge_8_8_9_8))
 :effect (and (not (at_x8)) (at_x9))
)

(:action move_8_8_8_7
 :parameters ()
 :precondition (and (at_x8)(at_y8))
 :poss-precondition (and (bridge_8_7_8_8))
 :effect (and (not (at_y8)) (at_y7))
)

(:action move_8_8_8_9
 :parameters ()
 :precondition (and (at_x8)(at_y8))
 :poss-precondition (and (bridge_8_8_8_9))
 :effect (and (not (at_y8)) (at_y9))
)

(:action move_8_9_7_9
 :parameters ()
 :precondition (and (at_x8)(at_y9))
 :poss-precondition (and (bridge_7_9_8_9))
 :effect (and (not (at_x8)) (at_x7))
)

(:action move_8_9_9_9
 :parameters ()
 :precondition (and (at_x8)(at_y9))
 :poss-precondition (and (bridge_8_9_9_9))
 :effect (and (not (at_x8)) (at_x9))
)

(:action move_8_9_8_8
 :parameters ()
 :precondition (and (at_x8)(at_y9))
 :poss-precondition (and (bridge_8_8_8_9))
 :effect (and (not (at_y9)) (at_y8))
)

(:action move_8_9_8_10
 :parameters ()
 :precondition (and (at_x8)(at_y9))
 :poss-precondition (and (bridge_8_9_8_10))
 :effect (and (not (at_y9)) (at_y10))
)

(:action move_8_10_7_10
 :parameters ()
 :precondition (and (at_x8)(at_y10))
 :poss-precondition (and (bridge_7_10_8_10))
 :effect (and (not (at_x8)) (at_x7))
)

(:action move_8_10_9_10
 :parameters ()
 :precondition (and (at_x8)(at_y10))
 :poss-precondition (and (bridge_8_10_9_10))
 :effect (and (not (at_x8)) (at_x9))
)

(:action move_8_10_8_9
 :parameters ()
 :precondition (and (at_x8)(at_y10))
 :poss-precondition (and (bridge_8_9_8_10))
 :effect (and (not (at_y10)) (at_y9))
)

(:action move_8_10_8_11
 :parameters ()
 :precondition (and (at_x8)(at_y10))
 :poss-precondition (and (bridge_8_10_8_11))
 :effect (and (not (at_y10)) (at_y11))
)

(:action move_8_11_7_11
 :parameters ()
 :precondition (and (at_x8)(at_y11))
 :poss-precondition (and (bridge_7_11_8_11))
 :effect (and (not (at_x8)) (at_x7))
)

(:action move_8_11_9_11
 :parameters ()
 :precondition (and (at_x8)(at_y11))
 :poss-precondition (and (bridge_8_11_9_11))
 :effect (and (not (at_x8)) (at_x9))
)

(:action move_8_11_8_10
 :parameters ()
 :precondition (and (at_x8)(at_y11))
 :poss-precondition (and (bridge_8_10_8_11))
 :effect (and (not (at_y11)) (at_y10))
)

(:action move_8_11_8_12
 :parameters ()
 :precondition (and (at_x8)(at_y11))
 :poss-precondition (and (bridge_8_11_8_12))
 :effect (and (not (at_y11)) (at_y12))
)

(:action move_8_12_7_12
 :parameters ()
 :precondition (and (at_x8)(at_y12))
 :poss-precondition (and (bridge_7_12_8_12))
 :effect (and (not (at_x8)) (at_x7))
)

(:action move_8_12_9_12
 :parameters ()
 :precondition (and (at_x8)(at_y12))
 :poss-precondition (and (bridge_8_12_9_12))
 :effect (and (not (at_x8)) (at_x9))
)

(:action move_8_12_8_11
 :parameters ()
 :precondition (and (at_x8)(at_y12))
 :poss-precondition (and (bridge_8_11_8_12))
 :effect (and (not (at_y12)) (at_y11))
)

(:action move_8_12_8_13
 :parameters ()
 :precondition (and (at_x8)(at_y12))
 :poss-precondition (and (bridge_8_12_8_13))
 :effect (and (not (at_y12)) (at_y13))
)

(:action move_8_13_7_13
 :parameters ()
 :precondition (and (at_x8)(at_y13))
 :poss-precondition (and (bridge_7_13_8_13))
 :effect (and (not (at_x8)) (at_x7))
)

(:action move_8_13_9_13
 :parameters ()
 :precondition (and (at_x8)(at_y13))
 :poss-precondition (and (bridge_8_13_9_13))
 :effect (and (not (at_x8)) (at_x9))
)

(:action move_8_13_8_12
 :parameters ()
 :precondition (and (at_x8)(at_y13))
 :poss-precondition (and (bridge_8_12_8_13))
 :effect (and (not (at_y13)) (at_y12))
)

(:action move_8_13_8_14
 :parameters ()
 :precondition (and (at_x8)(at_y13))
 :poss-precondition (and (bridge_8_13_8_14))
 :effect (and (not (at_y13)) (at_y14))
)

(:action move_8_14_7_14
 :parameters ()
 :precondition (and (at_x8)(at_y14))
 :poss-precondition (and (bridge_7_14_8_14))
 :effect (and (not (at_x8)) (at_x7))
)

(:action move_8_14_9_14
 :parameters ()
 :precondition (and (at_x8)(at_y14))
 :poss-precondition (and (bridge_8_14_9_14))
 :effect (and (not (at_x8)) (at_x9))
)

(:action move_8_14_8_13
 :parameters ()
 :precondition (and (at_x8)(at_y14))
 :poss-precondition (and (bridge_8_13_8_14))
 :effect (and (not (at_y14)) (at_y13))
)

(:action move_8_14_8_15
 :parameters ()
 :precondition (and (at_x8)(at_y14))
 :poss-precondition (and (bridge_8_14_8_15))
 :effect (and (not (at_y14)) (at_y15))
)

(:action move_8_15_7_15
 :parameters ()
 :precondition (and (at_x8)(at_y15))
 :poss-precondition (and (bridge_7_15_8_15))
 :effect (and (not (at_x8)) (at_x7))
)

(:action move_8_15_9_15
 :parameters ()
 :precondition (and (at_x8)(at_y15))
 :poss-precondition (and (bridge_8_15_9_15))
 :effect (and (not (at_x8)) (at_x9))
)

(:action move_8_15_8_14
 :parameters ()
 :precondition (and (at_x8)(at_y15))
 :poss-precondition (and (bridge_8_14_8_15))
 :effect (and (not (at_y15)) (at_y14))
)

(:action move_8_15_8_16
 :parameters ()
 :precondition (and (at_x8)(at_y15))
 :poss-precondition (and (bridge_8_15_8_16))
 :effect (and (not (at_y15)) (at_y16))
)

(:action move_8_16_7_16
 :parameters ()
 :precondition (and (at_x8)(at_y16))
 :poss-precondition (and (bridge_7_16_8_16))
 :effect (and (not (at_x8)) (at_x7))
)

(:action move_8_16_9_16
 :parameters ()
 :precondition (and (at_x8)(at_y16))
 :poss-precondition (and (bridge_8_16_9_16))
 :effect (and (not (at_x8)) (at_x9))
)

(:action move_8_16_8_15
 :parameters ()
 :precondition (and (at_x8)(at_y16))
 :poss-precondition (and (bridge_8_15_8_16))
 :effect (and (not (at_y16)) (at_y15))
)

(:action move_8_16_8_17
 :parameters ()
 :precondition (and (at_x8)(at_y16))
 :poss-precondition (and (bridge_8_16_8_17))
 :effect (and (not (at_y16)) (at_y17))
)

(:action move_8_17_7_17
 :parameters ()
 :precondition (and (at_x8)(at_y17))
 :poss-precondition (and (bridge_7_17_8_17))
 :effect (and (not (at_x8)) (at_x7))
)

(:action move_8_17_9_17
 :parameters ()
 :precondition (and (at_x8)(at_y17))
 :poss-precondition (and (bridge_8_17_9_17))
 :effect (and (not (at_x8)) (at_x9))
)

(:action move_8_17_8_16
 :parameters ()
 :precondition (and (at_x8)(at_y17))
 :poss-precondition (and (bridge_8_16_8_17))
 :effect (and (not (at_y17)) (at_y16))
)

(:action move_8_17_8_18
 :parameters ()
 :precondition (and (at_x8)(at_y17))
 :poss-precondition (and (bridge_8_17_8_18))
 :effect (and (not (at_y17)) (at_y18))
)

(:action move_8_18_7_18
 :parameters ()
 :precondition (and (at_x8)(at_y18))
 :poss-precondition (and (bridge_7_18_8_18))
 :effect (and (not (at_x8)) (at_x7))
)

(:action move_8_18_9_18
 :parameters ()
 :precondition (and (at_x8)(at_y18))
 :poss-precondition (and (bridge_8_18_9_18))
 :effect (and (not (at_x8)) (at_x9))
)

(:action move_8_18_8_17
 :parameters ()
 :precondition (and (at_x8)(at_y18))
 :poss-precondition (and (bridge_8_17_8_18))
 :effect (and (not (at_y18)) (at_y17))
)

(:action move_8_18_8_19
 :parameters ()
 :precondition (and (at_x8)(at_y18))
 :poss-precondition (and (bridge_8_18_8_19))
 :effect (and (not (at_y18)) (at_y19))
)

(:action move_8_19_7_19
 :parameters ()
 :precondition (and (at_x8)(at_y19))
 :poss-precondition (and (bridge_7_19_8_19))
 :effect (and (not (at_x8)) (at_x7))
)

(:action move_8_19_9_19
 :parameters ()
 :precondition (and (at_x8)(at_y19))
 :poss-precondition (and (bridge_8_19_9_19))
 :effect (and (not (at_x8)) (at_x9))
)

(:action move_8_19_8_18
 :parameters ()
 :precondition (and (at_x8)(at_y19))
 :poss-precondition (and (bridge_8_18_8_19))
 :effect (and (not (at_y19)) (at_y18))
)

(:action move_8_19_8_20
 :parameters ()
 :precondition (and (at_x8)(at_y19))
 :poss-precondition (and (bridge_8_19_8_20))
 :effect (and (not (at_y19)) (at_y20))
)

(:action move_8_20_7_20
 :parameters ()
 :precondition (and (at_x8)(at_y20))
 :poss-precondition (and (bridge_7_20_8_20))
 :effect (and (not (at_x8)) (at_x7))
)

(:action move_8_20_9_20
 :parameters ()
 :precondition (and (at_x8)(at_y20))
 :poss-precondition (and (bridge_8_20_9_20))
 :effect (and (not (at_x8)) (at_x9))
)

(:action move_8_20_8_19
 :parameters ()
 :precondition (and (at_x8)(at_y20))
 :poss-precondition (and (bridge_8_19_8_20))
 :effect (and (not (at_y20)) (at_y19))
)

(:action move_8_20_8_21
 :parameters ()
 :precondition (and (at_x8)(at_y20))
 :poss-precondition (and (bridge_8_20_8_21))
 :effect (and (not (at_y20)) (at_y21))
)

(:action move_8_21_7_21
 :parameters ()
 :precondition (and (at_x8)(at_y21))
 :poss-precondition (and (bridge_7_21_8_21))
 :effect (and (not (at_x8)) (at_x7))
)

(:action move_8_21_9_21
 :parameters ()
 :precondition (and (at_x8)(at_y21))
 :poss-precondition (and (bridge_8_21_9_21))
 :effect (and (not (at_x8)) (at_x9))
)

(:action move_8_21_8_20
 :parameters ()
 :precondition (and (at_x8)(at_y21))
 :poss-precondition (and (bridge_8_20_8_21))
 :effect (and (not (at_y21)) (at_y20))
)

(:action move_8_21_8_22
 :parameters ()
 :precondition (and (at_x8)(at_y21))
 :poss-precondition (and (bridge_8_21_8_22))
 :effect (and (not (at_y21)) (at_y22))
)

(:action move_8_22_7_22
 :parameters ()
 :precondition (and (at_x8)(at_y22))
 :poss-precondition (and (bridge_7_22_8_22))
 :effect (and (not (at_x8)) (at_x7))
)

(:action move_8_22_9_22
 :parameters ()
 :precondition (and (at_x8)(at_y22))
 :poss-precondition (and (bridge_8_22_9_22))
 :effect (and (not (at_x8)) (at_x9))
)

(:action move_8_22_8_21
 :parameters ()
 :precondition (and (at_x8)(at_y22))
 :poss-precondition (and (bridge_8_21_8_22))
 :effect (and (not (at_y22)) (at_y21))
)

(:action move_8_22_8_23
 :parameters ()
 :precondition (and (at_x8)(at_y22))
 :poss-precondition (and (bridge_8_22_8_23))
 :effect (and (not (at_y22)) (at_y23))
)

(:action move_8_23_7_23
 :parameters ()
 :precondition (and (at_x8)(at_y23))
 :poss-precondition (and (bridge_7_23_8_23))
 :effect (and (not (at_x8)) (at_x7))
)

(:action move_8_23_9_23
 :parameters ()
 :precondition (and (at_x8)(at_y23))
 :poss-precondition (and (bridge_8_23_9_23))
 :effect (and (not (at_x8)) (at_x9))
)

(:action move_8_23_8_22
 :parameters ()
 :precondition (and (at_x8)(at_y23))
 :poss-precondition (and (bridge_8_22_8_23))
 :effect (and (not (at_y23)) (at_y22))
)

(:action move_8_23_8_24
 :parameters ()
 :precondition (and (at_x8)(at_y23))
 :poss-precondition (and (bridge_8_23_8_24))
 :effect (and (not (at_y23)) (at_y24))
)

(:action move_8_24_7_24
 :parameters ()
 :precondition (and (at_x8)(at_y24))
 :poss-precondition (and (bridge_7_24_8_24))
 :effect (and (not (at_x8)) (at_x7))
)

(:action move_8_24_9_24
 :parameters ()
 :precondition (and (at_x8)(at_y24))
 :poss-precondition (and (bridge_8_24_9_24))
 :effect (and (not (at_x8)) (at_x9))
)

(:action move_8_24_8_23
 :parameters ()
 :precondition (and (at_x8)(at_y24))
 :poss-precondition (and (bridge_8_23_8_24))
 :effect (and (not (at_y24)) (at_y23))
)

(:action move_8_24_8_25
 :parameters ()
 :precondition (and (at_x8)(at_y24))
 :poss-precondition (and (bridge_8_24_8_25))
 :effect (and (not (at_y24)) (at_y25))
)

(:action move_8_25_7_25
 :parameters ()
 :precondition (and (at_x8)(at_y25))
 :poss-precondition (and (bridge_7_25_8_25))
 :effect (and (not (at_x8)) (at_x7))
)

(:action move_8_25_9_25
 :parameters ()
 :precondition (and (at_x8)(at_y25))
 :poss-precondition (and (bridge_8_25_9_25))
 :effect (and (not (at_x8)) (at_x9))
)

(:action move_8_25_8_24
 :parameters ()
 :precondition (and (at_x8)(at_y25))
 :poss-precondition (and (bridge_8_24_8_25))
 :effect (and (not (at_y25)) (at_y24))
)

(:action move_8_25_8_26
 :parameters ()
 :precondition (and (at_x8)(at_y25))
 :poss-precondition (and (bridge_8_25_8_26))
 :effect (and (not (at_y25)) (at_y26))
)

(:action move_8_26_7_26
 :parameters ()
 :precondition (and (at_x8)(at_y26))
 :poss-precondition (and (bridge_7_26_8_26))
 :effect (and (not (at_x8)) (at_x7))
)

(:action move_8_26_9_26
 :parameters ()
 :precondition (and (at_x8)(at_y26))
 :poss-precondition (and (bridge_8_26_9_26))
 :effect (and (not (at_x8)) (at_x9))
)

(:action move_8_26_8_25
 :parameters ()
 :precondition (and (at_x8)(at_y26))
 :poss-precondition (and (bridge_8_25_8_26))
 :effect (and (not (at_y26)) (at_y25))
)

(:action move_8_26_8_27
 :parameters ()
 :precondition (and (at_x8)(at_y26))
 :poss-precondition (and (bridge_8_26_8_27))
 :effect (and (not (at_y26)) (at_y27))
)

(:action move_8_27_7_27
 :parameters ()
 :precondition (and (at_x8)(at_y27))
 :poss-precondition (and (bridge_7_27_8_27))
 :effect (and (not (at_x8)) (at_x7))
)

(:action move_8_27_9_27
 :parameters ()
 :precondition (and (at_x8)(at_y27))
 :poss-precondition (and (bridge_8_27_9_27))
 :effect (and (not (at_x8)) (at_x9))
)

(:action move_8_27_8_26
 :parameters ()
 :precondition (and (at_x8)(at_y27))
 :poss-precondition (and (bridge_8_26_8_27))
 :effect (and (not (at_y27)) (at_y26))
)

(:action move_8_27_8_28
 :parameters ()
 :precondition (and (at_x8)(at_y27))
 :poss-precondition (and (bridge_8_27_8_28))
 :effect (and (not (at_y27)) (at_y28))
)

(:action move_8_28_7_28
 :parameters ()
 :precondition (and (at_x8)(at_y28))
 :poss-precondition (and (bridge_7_28_8_28))
 :effect (and (not (at_x8)) (at_x7))
)

(:action move_8_28_9_28
 :parameters ()
 :precondition (and (at_x8)(at_y28))
 :poss-precondition (and (bridge_8_28_9_28))
 :effect (and (not (at_x8)) (at_x9))
)

(:action move_8_28_8_27
 :parameters ()
 :precondition (and (at_x8)(at_y28))
 :poss-precondition (and (bridge_8_27_8_28))
 :effect (and (not (at_y28)) (at_y27))
)

(:action move_8_28_8_29
 :parameters ()
 :precondition (and (at_x8)(at_y28))
 :poss-precondition (and (bridge_8_28_8_29))
 :effect (and (not (at_y28)) (at_y29))
)

(:action move_8_29_7_29
 :parameters ()
 :precondition (and (at_x8)(at_y29))
 :poss-precondition (and (bridge_7_29_8_29))
 :effect (and (not (at_x8)) (at_x7))
)

(:action move_8_29_9_29
 :parameters ()
 :precondition (and (at_x8)(at_y29))
 :poss-precondition (and (bridge_8_29_9_29))
 :effect (and (not (at_x8)) (at_x9))
)

(:action move_8_29_8_28
 :parameters ()
 :precondition (and (at_x8)(at_y29))
 :poss-precondition (and (bridge_8_28_8_29))
 :effect (and (not (at_y29)) (at_y28))
)

(:action move_8_29_8_30
 :parameters ()
 :precondition (and (at_x8)(at_y29))
 :poss-precondition (and (bridge_8_29_8_30))
 :effect (and (not (at_y29)) (at_y30))
)

(:action move_8_30_7_30
 :parameters ()
 :precondition (and (at_x8)(at_y30))
 :poss-precondition (and (bridge_7_30_8_30))
 :effect (and (not (at_x8)) (at_x7))
)

(:action move_8_30_9_30
 :parameters ()
 :precondition (and (at_x8)(at_y30))
 :poss-precondition (and (bridge_8_30_9_30))
 :effect (and (not (at_x8)) (at_x9))
)

(:action move_8_30_8_29
 :parameters ()
 :precondition (and (at_x8)(at_y30))
 :poss-precondition (and (bridge_8_29_8_30))
 :effect (and (not (at_y30)) (at_y29))
)

(:action move_8_30_8_31
 :parameters ()
 :precondition (and (at_x8)(at_y30))
 :poss-precondition (and (bridge_8_30_8_31))
 :effect (and (not (at_y30)) (at_y31))
)

(:action move_8_31_7_31
 :parameters ()
 :precondition (and (at_x8)(at_y31))
 :poss-precondition (and (bridge_7_31_8_31))
 :effect (and (not (at_x8)) (at_x7))
)

(:action move_8_31_9_31
 :parameters ()
 :precondition (and (at_x8)(at_y31))
 :poss-precondition (and (bridge_8_31_9_31))
 :effect (and (not (at_x8)) (at_x9))
)

(:action move_8_31_8_30
 :parameters ()
 :precondition (and (at_x8)(at_y31))
 :poss-precondition (and (bridge_8_30_8_31))
 :effect (and (not (at_y31)) (at_y30))
)

(:action move_9_0_8_0
 :parameters ()
 :precondition (and (at_x9)(at_y0))
 :poss-precondition (and (bridge_8_0_9_0))
 :effect (and (not (at_x9)) (at_x8))
)

(:action move_9_0_10_0
 :parameters ()
 :precondition (and (at_x9)(at_y0))
 :poss-precondition (and (bridge_9_0_10_0))
 :effect (and (not (at_x9)) (at_x10))
)

(:action move_9_0_9_1
 :parameters ()
 :precondition (and (at_x9)(at_y0))
 :poss-precondition (and (bridge_9_0_9_1))
 :effect (and (not (at_y0)) (at_y1))
)

(:action move_9_1_8_1
 :parameters ()
 :precondition (and (at_x9)(at_y1))
 :poss-precondition (and (bridge_8_1_9_1))
 :effect (and (not (at_x9)) (at_x8))
)

(:action move_9_1_10_1
 :parameters ()
 :precondition (and (at_x9)(at_y1))
 :poss-precondition (and (bridge_9_1_10_1))
 :effect (and (not (at_x9)) (at_x10))
)

(:action move_9_1_9_0
 :parameters ()
 :precondition (and (at_x9)(at_y1))
 :poss-precondition (and (bridge_9_0_9_1))
 :effect (and (not (at_y1)) (at_y0))
)

(:action move_9_1_9_2
 :parameters ()
 :precondition (and (at_x9)(at_y1))
 :poss-precondition (and (bridge_9_1_9_2))
 :effect (and (not (at_y1)) (at_y2))
)

(:action move_9_2_8_2
 :parameters ()
 :precondition (and (at_x9)(at_y2))
 :poss-precondition (and (bridge_8_2_9_2))
 :effect (and (not (at_x9)) (at_x8))
)

(:action move_9_2_10_2
 :parameters ()
 :precondition (and (at_x9)(at_y2))
 :poss-precondition (and (bridge_9_2_10_2))
 :effect (and (not (at_x9)) (at_x10))
)

(:action move_9_2_9_1
 :parameters ()
 :precondition (and (at_x9)(at_y2))
 :poss-precondition (and (bridge_9_1_9_2))
 :effect (and (not (at_y2)) (at_y1))
)

(:action move_9_2_9_3
 :parameters ()
 :precondition (and (at_x9)(at_y2))
 :poss-precondition (and (bridge_9_2_9_3))
 :effect (and (not (at_y2)) (at_y3))
)

(:action move_9_3_8_3
 :parameters ()
 :precondition (and (at_x9)(at_y3))
 :poss-precondition (and (bridge_8_3_9_3))
 :effect (and (not (at_x9)) (at_x8))
)

(:action move_9_3_10_3
 :parameters ()
 :precondition (and (at_x9)(at_y3))
 :poss-precondition (and (bridge_9_3_10_3))
 :effect (and (not (at_x9)) (at_x10))
)

(:action move_9_3_9_2
 :parameters ()
 :precondition (and (at_x9)(at_y3))
 :poss-precondition (and (bridge_9_2_9_3))
 :effect (and (not (at_y3)) (at_y2))
)

(:action move_9_3_9_4
 :parameters ()
 :precondition (and (at_x9)(at_y3))
 :poss-precondition (and (bridge_9_3_9_4))
 :effect (and (not (at_y3)) (at_y4))
)

(:action move_9_4_8_4
 :parameters ()
 :precondition (and (at_x9)(at_y4))
 :poss-precondition (and (bridge_8_4_9_4))
 :effect (and (not (at_x9)) (at_x8))
)

(:action move_9_4_10_4
 :parameters ()
 :precondition (and (at_x9)(at_y4))
 :poss-precondition (and (bridge_9_4_10_4))
 :effect (and (not (at_x9)) (at_x10))
)

(:action move_9_4_9_3
 :parameters ()
 :precondition (and (at_x9)(at_y4))
 :poss-precondition (and (bridge_9_3_9_4))
 :effect (and (not (at_y4)) (at_y3))
)

(:action move_9_4_9_5
 :parameters ()
 :precondition (and (at_x9)(at_y4))
 :poss-precondition (and (bridge_9_4_9_5))
 :effect (and (not (at_y4)) (at_y5))
)

(:action move_9_5_8_5
 :parameters ()
 :precondition (and (at_x9)(at_y5))
 :poss-precondition (and (bridge_8_5_9_5))
 :effect (and (not (at_x9)) (at_x8))
)

(:action move_9_5_10_5
 :parameters ()
 :precondition (and (at_x9)(at_y5))
 :poss-precondition (and (bridge_9_5_10_5))
 :effect (and (not (at_x9)) (at_x10))
)

(:action move_9_5_9_4
 :parameters ()
 :precondition (and (at_x9)(at_y5))
 :poss-precondition (and (bridge_9_4_9_5))
 :effect (and (not (at_y5)) (at_y4))
)

(:action move_9_5_9_6
 :parameters ()
 :precondition (and (at_x9)(at_y5))
 :poss-precondition (and (bridge_9_5_9_6))
 :effect (and (not (at_y5)) (at_y6))
)

(:action move_9_6_8_6
 :parameters ()
 :precondition (and (at_x9)(at_y6))
 :poss-precondition (and (bridge_8_6_9_6))
 :effect (and (not (at_x9)) (at_x8))
)

(:action move_9_6_10_6
 :parameters ()
 :precondition (and (at_x9)(at_y6))
 :poss-precondition (and (bridge_9_6_10_6))
 :effect (and (not (at_x9)) (at_x10))
)

(:action move_9_6_9_5
 :parameters ()
 :precondition (and (at_x9)(at_y6))
 :poss-precondition (and (bridge_9_5_9_6))
 :effect (and (not (at_y6)) (at_y5))
)

(:action move_9_6_9_7
 :parameters ()
 :precondition (and (at_x9)(at_y6))
 :poss-precondition (and (bridge_9_6_9_7))
 :effect (and (not (at_y6)) (at_y7))
)

(:action move_9_7_8_7
 :parameters ()
 :precondition (and (at_x9)(at_y7))
 :poss-precondition (and (bridge_8_7_9_7))
 :effect (and (not (at_x9)) (at_x8))
)

(:action move_9_7_10_7
 :parameters ()
 :precondition (and (at_x9)(at_y7))
 :poss-precondition (and (bridge_9_7_10_7))
 :effect (and (not (at_x9)) (at_x10))
)

(:action move_9_7_9_6
 :parameters ()
 :precondition (and (at_x9)(at_y7))
 :poss-precondition (and (bridge_9_6_9_7))
 :effect (and (not (at_y7)) (at_y6))
)

(:action move_9_7_9_8
 :parameters ()
 :precondition (and (at_x9)(at_y7))
 :poss-precondition (and (bridge_9_7_9_8))
 :effect (and (not (at_y7)) (at_y8))
)

(:action move_9_8_8_8
 :parameters ()
 :precondition (and (at_x9)(at_y8))
 :poss-precondition (and (bridge_8_8_9_8))
 :effect (and (not (at_x9)) (at_x8))
)

(:action move_9_8_10_8
 :parameters ()
 :precondition (and (at_x9)(at_y8))
 :poss-precondition (and (bridge_9_8_10_8))
 :effect (and (not (at_x9)) (at_x10))
)

(:action move_9_8_9_7
 :parameters ()
 :precondition (and (at_x9)(at_y8))
 :poss-precondition (and (bridge_9_7_9_8))
 :effect (and (not (at_y8)) (at_y7))
)

(:action move_9_8_9_9
 :parameters ()
 :precondition (and (at_x9)(at_y8))
 :poss-precondition (and (bridge_9_8_9_9))
 :effect (and (not (at_y8)) (at_y9))
)

(:action move_9_9_8_9
 :parameters ()
 :precondition (and (at_x9)(at_y9))
 :poss-precondition (and (bridge_8_9_9_9))
 :effect (and (not (at_x9)) (at_x8))
)

(:action move_9_9_10_9
 :parameters ()
 :precondition (and (at_x9)(at_y9))
 :poss-precondition (and (bridge_9_9_10_9))
 :effect (and (not (at_x9)) (at_x10))
)

(:action move_9_9_9_8
 :parameters ()
 :precondition (and (at_x9)(at_y9))
 :poss-precondition (and (bridge_9_8_9_9))
 :effect (and (not (at_y9)) (at_y8))
)

(:action move_9_9_9_10
 :parameters ()
 :precondition (and (at_x9)(at_y9))
 :poss-precondition (and (bridge_9_9_9_10))
 :effect (and (not (at_y9)) (at_y10))
)

(:action move_9_10_8_10
 :parameters ()
 :precondition (and (at_x9)(at_y10))
 :poss-precondition (and (bridge_8_10_9_10))
 :effect (and (not (at_x9)) (at_x8))
)

(:action move_9_10_10_10
 :parameters ()
 :precondition (and (at_x9)(at_y10))
 :poss-precondition (and (bridge_9_10_10_10))
 :effect (and (not (at_x9)) (at_x10))
)

(:action move_9_10_9_9
 :parameters ()
 :precondition (and (at_x9)(at_y10))
 :poss-precondition (and (bridge_9_9_9_10))
 :effect (and (not (at_y10)) (at_y9))
)

(:action move_9_10_9_11
 :parameters ()
 :precondition (and (at_x9)(at_y10))
 :poss-precondition (and (bridge_9_10_9_11))
 :effect (and (not (at_y10)) (at_y11))
)

(:action move_9_11_8_11
 :parameters ()
 :precondition (and (at_x9)(at_y11))
 :poss-precondition (and (bridge_8_11_9_11))
 :effect (and (not (at_x9)) (at_x8))
)

(:action move_9_11_10_11
 :parameters ()
 :precondition (and (at_x9)(at_y11))
 :poss-precondition (and (bridge_9_11_10_11))
 :effect (and (not (at_x9)) (at_x10))
)

(:action move_9_11_9_10
 :parameters ()
 :precondition (and (at_x9)(at_y11))
 :poss-precondition (and (bridge_9_10_9_11))
 :effect (and (not (at_y11)) (at_y10))
)

(:action move_9_11_9_12
 :parameters ()
 :precondition (and (at_x9)(at_y11))
 :poss-precondition (and (bridge_9_11_9_12))
 :effect (and (not (at_y11)) (at_y12))
)

(:action move_9_12_8_12
 :parameters ()
 :precondition (and (at_x9)(at_y12))
 :poss-precondition (and (bridge_8_12_9_12))
 :effect (and (not (at_x9)) (at_x8))
)

(:action move_9_12_10_12
 :parameters ()
 :precondition (and (at_x9)(at_y12))
 :poss-precondition (and (bridge_9_12_10_12))
 :effect (and (not (at_x9)) (at_x10))
)

(:action move_9_12_9_11
 :parameters ()
 :precondition (and (at_x9)(at_y12))
 :poss-precondition (and (bridge_9_11_9_12))
 :effect (and (not (at_y12)) (at_y11))
)

(:action move_9_12_9_13
 :parameters ()
 :precondition (and (at_x9)(at_y12))
 :poss-precondition (and (bridge_9_12_9_13))
 :effect (and (not (at_y12)) (at_y13))
)

(:action move_9_13_8_13
 :parameters ()
 :precondition (and (at_x9)(at_y13))
 :poss-precondition (and (bridge_8_13_9_13))
 :effect (and (not (at_x9)) (at_x8))
)

(:action move_9_13_10_13
 :parameters ()
 :precondition (and (at_x9)(at_y13))
 :poss-precondition (and (bridge_9_13_10_13))
 :effect (and (not (at_x9)) (at_x10))
)

(:action move_9_13_9_12
 :parameters ()
 :precondition (and (at_x9)(at_y13))
 :poss-precondition (and (bridge_9_12_9_13))
 :effect (and (not (at_y13)) (at_y12))
)

(:action move_9_13_9_14
 :parameters ()
 :precondition (and (at_x9)(at_y13))
 :poss-precondition (and (bridge_9_13_9_14))
 :effect (and (not (at_y13)) (at_y14))
)

(:action move_9_14_8_14
 :parameters ()
 :precondition (and (at_x9)(at_y14))
 :poss-precondition (and (bridge_8_14_9_14))
 :effect (and (not (at_x9)) (at_x8))
)

(:action move_9_14_10_14
 :parameters ()
 :precondition (and (at_x9)(at_y14))
 :poss-precondition (and (bridge_9_14_10_14))
 :effect (and (not (at_x9)) (at_x10))
)

(:action move_9_14_9_13
 :parameters ()
 :precondition (and (at_x9)(at_y14))
 :poss-precondition (and (bridge_9_13_9_14))
 :effect (and (not (at_y14)) (at_y13))
)

(:action move_9_14_9_15
 :parameters ()
 :precondition (and (at_x9)(at_y14))
 :poss-precondition (and (bridge_9_14_9_15))
 :effect (and (not (at_y14)) (at_y15))
)

(:action move_9_15_8_15
 :parameters ()
 :precondition (and (at_x9)(at_y15))
 :poss-precondition (and (bridge_8_15_9_15))
 :effect (and (not (at_x9)) (at_x8))
)

(:action move_9_15_10_15
 :parameters ()
 :precondition (and (at_x9)(at_y15))
 :poss-precondition (and (bridge_9_15_10_15))
 :effect (and (not (at_x9)) (at_x10))
)

(:action move_9_15_9_14
 :parameters ()
 :precondition (and (at_x9)(at_y15))
 :poss-precondition (and (bridge_9_14_9_15))
 :effect (and (not (at_y15)) (at_y14))
)

(:action move_9_15_9_16
 :parameters ()
 :precondition (and (at_x9)(at_y15))
 :poss-precondition (and (bridge_9_15_9_16))
 :effect (and (not (at_y15)) (at_y16))
)

(:action move_9_16_8_16
 :parameters ()
 :precondition (and (at_x9)(at_y16))
 :poss-precondition (and (bridge_8_16_9_16))
 :effect (and (not (at_x9)) (at_x8))
)

(:action move_9_16_10_16
 :parameters ()
 :precondition (and (at_x9)(at_y16))
 :poss-precondition (and (bridge_9_16_10_16))
 :effect (and (not (at_x9)) (at_x10))
)

(:action move_9_16_9_15
 :parameters ()
 :precondition (and (at_x9)(at_y16))
 :poss-precondition (and (bridge_9_15_9_16))
 :effect (and (not (at_y16)) (at_y15))
)

(:action move_9_16_9_17
 :parameters ()
 :precondition (and (at_x9)(at_y16))
 :poss-precondition (and (bridge_9_16_9_17))
 :effect (and (not (at_y16)) (at_y17))
)

(:action move_9_17_8_17
 :parameters ()
 :precondition (and (at_x9)(at_y17))
 :poss-precondition (and (bridge_8_17_9_17))
 :effect (and (not (at_x9)) (at_x8))
)

(:action move_9_17_10_17
 :parameters ()
 :precondition (and (at_x9)(at_y17))
 :poss-precondition (and (bridge_9_17_10_17))
 :effect (and (not (at_x9)) (at_x10))
)

(:action move_9_17_9_16
 :parameters ()
 :precondition (and (at_x9)(at_y17))
 :poss-precondition (and (bridge_9_16_9_17))
 :effect (and (not (at_y17)) (at_y16))
)

(:action move_9_17_9_18
 :parameters ()
 :precondition (and (at_x9)(at_y17))
 :poss-precondition (and (bridge_9_17_9_18))
 :effect (and (not (at_y17)) (at_y18))
)

(:action move_9_18_8_18
 :parameters ()
 :precondition (and (at_x9)(at_y18))
 :poss-precondition (and (bridge_8_18_9_18))
 :effect (and (not (at_x9)) (at_x8))
)

(:action move_9_18_10_18
 :parameters ()
 :precondition (and (at_x9)(at_y18))
 :poss-precondition (and (bridge_9_18_10_18))
 :effect (and (not (at_x9)) (at_x10))
)

(:action move_9_18_9_17
 :parameters ()
 :precondition (and (at_x9)(at_y18))
 :poss-precondition (and (bridge_9_17_9_18))
 :effect (and (not (at_y18)) (at_y17))
)

(:action move_9_18_9_19
 :parameters ()
 :precondition (and (at_x9)(at_y18))
 :poss-precondition (and (bridge_9_18_9_19))
 :effect (and (not (at_y18)) (at_y19))
)

(:action move_9_19_8_19
 :parameters ()
 :precondition (and (at_x9)(at_y19))
 :poss-precondition (and (bridge_8_19_9_19))
 :effect (and (not (at_x9)) (at_x8))
)

(:action move_9_19_10_19
 :parameters ()
 :precondition (and (at_x9)(at_y19))
 :poss-precondition (and (bridge_9_19_10_19))
 :effect (and (not (at_x9)) (at_x10))
)

(:action move_9_19_9_18
 :parameters ()
 :precondition (and (at_x9)(at_y19))
 :poss-precondition (and (bridge_9_18_9_19))
 :effect (and (not (at_y19)) (at_y18))
)

(:action move_9_19_9_20
 :parameters ()
 :precondition (and (at_x9)(at_y19))
 :poss-precondition (and (bridge_9_19_9_20))
 :effect (and (not (at_y19)) (at_y20))
)

(:action move_9_20_8_20
 :parameters ()
 :precondition (and (at_x9)(at_y20))
 :poss-precondition (and (bridge_8_20_9_20))
 :effect (and (not (at_x9)) (at_x8))
)

(:action move_9_20_10_20
 :parameters ()
 :precondition (and (at_x9)(at_y20))
 :poss-precondition (and (bridge_9_20_10_20))
 :effect (and (not (at_x9)) (at_x10))
)

(:action move_9_20_9_19
 :parameters ()
 :precondition (and (at_x9)(at_y20))
 :poss-precondition (and (bridge_9_19_9_20))
 :effect (and (not (at_y20)) (at_y19))
)

(:action move_9_20_9_21
 :parameters ()
 :precondition (and (at_x9)(at_y20))
 :poss-precondition (and (bridge_9_20_9_21))
 :effect (and (not (at_y20)) (at_y21))
)

(:action move_9_21_8_21
 :parameters ()
 :precondition (and (at_x9)(at_y21))
 :poss-precondition (and (bridge_8_21_9_21))
 :effect (and (not (at_x9)) (at_x8))
)

(:action move_9_21_10_21
 :parameters ()
 :precondition (and (at_x9)(at_y21))
 :poss-precondition (and (bridge_9_21_10_21))
 :effect (and (not (at_x9)) (at_x10))
)

(:action move_9_21_9_20
 :parameters ()
 :precondition (and (at_x9)(at_y21))
 :poss-precondition (and (bridge_9_20_9_21))
 :effect (and (not (at_y21)) (at_y20))
)

(:action move_9_21_9_22
 :parameters ()
 :precondition (and (at_x9)(at_y21))
 :poss-precondition (and (bridge_9_21_9_22))
 :effect (and (not (at_y21)) (at_y22))
)

(:action move_9_22_8_22
 :parameters ()
 :precondition (and (at_x9)(at_y22))
 :poss-precondition (and (bridge_8_22_9_22))
 :effect (and (not (at_x9)) (at_x8))
)

(:action move_9_22_10_22
 :parameters ()
 :precondition (and (at_x9)(at_y22))
 :poss-precondition (and (bridge_9_22_10_22))
 :effect (and (not (at_x9)) (at_x10))
)

(:action move_9_22_9_21
 :parameters ()
 :precondition (and (at_x9)(at_y22))
 :poss-precondition (and (bridge_9_21_9_22))
 :effect (and (not (at_y22)) (at_y21))
)

(:action move_9_22_9_23
 :parameters ()
 :precondition (and (at_x9)(at_y22))
 :poss-precondition (and (bridge_9_22_9_23))
 :effect (and (not (at_y22)) (at_y23))
)

(:action move_9_23_8_23
 :parameters ()
 :precondition (and (at_x9)(at_y23))
 :poss-precondition (and (bridge_8_23_9_23))
 :effect (and (not (at_x9)) (at_x8))
)

(:action move_9_23_10_23
 :parameters ()
 :precondition (and (at_x9)(at_y23))
 :poss-precondition (and (bridge_9_23_10_23))
 :effect (and (not (at_x9)) (at_x10))
)

(:action move_9_23_9_22
 :parameters ()
 :precondition (and (at_x9)(at_y23))
 :poss-precondition (and (bridge_9_22_9_23))
 :effect (and (not (at_y23)) (at_y22))
)

(:action move_9_23_9_24
 :parameters ()
 :precondition (and (at_x9)(at_y23))
 :poss-precondition (and (bridge_9_23_9_24))
 :effect (and (not (at_y23)) (at_y24))
)

(:action move_9_24_8_24
 :parameters ()
 :precondition (and (at_x9)(at_y24))
 :poss-precondition (and (bridge_8_24_9_24))
 :effect (and (not (at_x9)) (at_x8))
)

(:action move_9_24_10_24
 :parameters ()
 :precondition (and (at_x9)(at_y24))
 :poss-precondition (and (bridge_9_24_10_24))
 :effect (and (not (at_x9)) (at_x10))
)

(:action move_9_24_9_23
 :parameters ()
 :precondition (and (at_x9)(at_y24))
 :poss-precondition (and (bridge_9_23_9_24))
 :effect (and (not (at_y24)) (at_y23))
)

(:action move_9_24_9_25
 :parameters ()
 :precondition (and (at_x9)(at_y24))
 :poss-precondition (and (bridge_9_24_9_25))
 :effect (and (not (at_y24)) (at_y25))
)

(:action move_9_25_8_25
 :parameters ()
 :precondition (and (at_x9)(at_y25))
 :poss-precondition (and (bridge_8_25_9_25))
 :effect (and (not (at_x9)) (at_x8))
)

(:action move_9_25_10_25
 :parameters ()
 :precondition (and (at_x9)(at_y25))
 :poss-precondition (and (bridge_9_25_10_25))
 :effect (and (not (at_x9)) (at_x10))
)

(:action move_9_25_9_24
 :parameters ()
 :precondition (and (at_x9)(at_y25))
 :poss-precondition (and (bridge_9_24_9_25))
 :effect (and (not (at_y25)) (at_y24))
)

(:action move_9_25_9_26
 :parameters ()
 :precondition (and (at_x9)(at_y25))
 :poss-precondition (and (bridge_9_25_9_26))
 :effect (and (not (at_y25)) (at_y26))
)

(:action move_9_26_8_26
 :parameters ()
 :precondition (and (at_x9)(at_y26))
 :poss-precondition (and (bridge_8_26_9_26))
 :effect (and (not (at_x9)) (at_x8))
)

(:action move_9_26_10_26
 :parameters ()
 :precondition (and (at_x9)(at_y26))
 :poss-precondition (and (bridge_9_26_10_26))
 :effect (and (not (at_x9)) (at_x10))
)

(:action move_9_26_9_25
 :parameters ()
 :precondition (and (at_x9)(at_y26))
 :poss-precondition (and (bridge_9_25_9_26))
 :effect (and (not (at_y26)) (at_y25))
)

(:action move_9_26_9_27
 :parameters ()
 :precondition (and (at_x9)(at_y26))
 :poss-precondition (and (bridge_9_26_9_27))
 :effect (and (not (at_y26)) (at_y27))
)

(:action move_9_27_8_27
 :parameters ()
 :precondition (and (at_x9)(at_y27))
 :poss-precondition (and (bridge_8_27_9_27))
 :effect (and (not (at_x9)) (at_x8))
)

(:action move_9_27_10_27
 :parameters ()
 :precondition (and (at_x9)(at_y27))
 :poss-precondition (and (bridge_9_27_10_27))
 :effect (and (not (at_x9)) (at_x10))
)

(:action move_9_27_9_26
 :parameters ()
 :precondition (and (at_x9)(at_y27))
 :poss-precondition (and (bridge_9_26_9_27))
 :effect (and (not (at_y27)) (at_y26))
)

(:action move_9_27_9_28
 :parameters ()
 :precondition (and (at_x9)(at_y27))
 :poss-precondition (and (bridge_9_27_9_28))
 :effect (and (not (at_y27)) (at_y28))
)

(:action move_9_28_8_28
 :parameters ()
 :precondition (and (at_x9)(at_y28))
 :poss-precondition (and (bridge_8_28_9_28))
 :effect (and (not (at_x9)) (at_x8))
)

(:action move_9_28_10_28
 :parameters ()
 :precondition (and (at_x9)(at_y28))
 :poss-precondition (and (bridge_9_28_10_28))
 :effect (and (not (at_x9)) (at_x10))
)

(:action move_9_28_9_27
 :parameters ()
 :precondition (and (at_x9)(at_y28))
 :poss-precondition (and (bridge_9_27_9_28))
 :effect (and (not (at_y28)) (at_y27))
)

(:action move_9_28_9_29
 :parameters ()
 :precondition (and (at_x9)(at_y28))
 :poss-precondition (and (bridge_9_28_9_29))
 :effect (and (not (at_y28)) (at_y29))
)

(:action move_9_29_8_29
 :parameters ()
 :precondition (and (at_x9)(at_y29))
 :poss-precondition (and (bridge_8_29_9_29))
 :effect (and (not (at_x9)) (at_x8))
)

(:action move_9_29_10_29
 :parameters ()
 :precondition (and (at_x9)(at_y29))
 :poss-precondition (and (bridge_9_29_10_29))
 :effect (and (not (at_x9)) (at_x10))
)

(:action move_9_29_9_28
 :parameters ()
 :precondition (and (at_x9)(at_y29))
 :poss-precondition (and (bridge_9_28_9_29))
 :effect (and (not (at_y29)) (at_y28))
)

(:action move_9_29_9_30
 :parameters ()
 :precondition (and (at_x9)(at_y29))
 :poss-precondition (and (bridge_9_29_9_30))
 :effect (and (not (at_y29)) (at_y30))
)

(:action move_9_30_8_30
 :parameters ()
 :precondition (and (at_x9)(at_y30))
 :poss-precondition (and (bridge_8_30_9_30))
 :effect (and (not (at_x9)) (at_x8))
)

(:action move_9_30_10_30
 :parameters ()
 :precondition (and (at_x9)(at_y30))
 :poss-precondition (and (bridge_9_30_10_30))
 :effect (and (not (at_x9)) (at_x10))
)

(:action move_9_30_9_29
 :parameters ()
 :precondition (and (at_x9)(at_y30))
 :poss-precondition (and (bridge_9_29_9_30))
 :effect (and (not (at_y30)) (at_y29))
)

(:action move_9_30_9_31
 :parameters ()
 :precondition (and (at_x9)(at_y30))
 :poss-precondition (and (bridge_9_30_9_31))
 :effect (and (not (at_y30)) (at_y31))
)

(:action move_9_31_8_31
 :parameters ()
 :precondition (and (at_x9)(at_y31))
 :poss-precondition (and (bridge_8_31_9_31))
 :effect (and (not (at_x9)) (at_x8))
)

(:action move_9_31_10_31
 :parameters ()
 :precondition (and (at_x9)(at_y31))
 :poss-precondition (and (bridge_9_31_10_31))
 :effect (and (not (at_x9)) (at_x10))
)

(:action move_9_31_9_30
 :parameters ()
 :precondition (and (at_x9)(at_y31))
 :poss-precondition (and (bridge_9_30_9_31))
 :effect (and (not (at_y31)) (at_y30))
)

(:action move_10_0_9_0
 :parameters ()
 :precondition (and (at_x10)(at_y0))
 :poss-precondition (and (bridge_9_0_10_0))
 :effect (and (not (at_x10)) (at_x9))
)

(:action move_10_0_11_0
 :parameters ()
 :precondition (and (at_x10)(at_y0))
 :poss-precondition (and (bridge_10_0_11_0))
 :effect (and (not (at_x10)) (at_x11))
)

(:action move_10_0_10_1
 :parameters ()
 :precondition (and (at_x10)(at_y0))
 :poss-precondition (and (bridge_10_0_10_1))
 :effect (and (not (at_y0)) (at_y1))
)

(:action move_10_1_9_1
 :parameters ()
 :precondition (and (at_x10)(at_y1))
 :poss-precondition (and (bridge_9_1_10_1))
 :effect (and (not (at_x10)) (at_x9))
)

(:action move_10_1_11_1
 :parameters ()
 :precondition (and (at_x10)(at_y1))
 :poss-precondition (and (bridge_10_1_11_1))
 :effect (and (not (at_x10)) (at_x11))
)

(:action move_10_1_10_0
 :parameters ()
 :precondition (and (at_x10)(at_y1))
 :poss-precondition (and (bridge_10_0_10_1))
 :effect (and (not (at_y1)) (at_y0))
)

(:action move_10_1_10_2
 :parameters ()
 :precondition (and (at_x10)(at_y1))
 :poss-precondition (and (bridge_10_1_10_2))
 :effect (and (not (at_y1)) (at_y2))
)

(:action move_10_2_9_2
 :parameters ()
 :precondition (and (at_x10)(at_y2))
 :poss-precondition (and (bridge_9_2_10_2))
 :effect (and (not (at_x10)) (at_x9))
)

(:action move_10_2_11_2
 :parameters ()
 :precondition (and (at_x10)(at_y2))
 :poss-precondition (and (bridge_10_2_11_2))
 :effect (and (not (at_x10)) (at_x11))
)

(:action move_10_2_10_1
 :parameters ()
 :precondition (and (at_x10)(at_y2))
 :poss-precondition (and (bridge_10_1_10_2))
 :effect (and (not (at_y2)) (at_y1))
)

(:action move_10_2_10_3
 :parameters ()
 :precondition (and (at_x10)(at_y2))
 :poss-precondition (and (bridge_10_2_10_3))
 :effect (and (not (at_y2)) (at_y3))
)

(:action move_10_3_9_3
 :parameters ()
 :precondition (and (at_x10)(at_y3))
 :poss-precondition (and (bridge_9_3_10_3))
 :effect (and (not (at_x10)) (at_x9))
)

(:action move_10_3_11_3
 :parameters ()
 :precondition (and (at_x10)(at_y3))
 :poss-precondition (and (bridge_10_3_11_3))
 :effect (and (not (at_x10)) (at_x11))
)

(:action move_10_3_10_2
 :parameters ()
 :precondition (and (at_x10)(at_y3))
 :poss-precondition (and (bridge_10_2_10_3))
 :effect (and (not (at_y3)) (at_y2))
)

(:action move_10_3_10_4
 :parameters ()
 :precondition (and (at_x10)(at_y3))
 :poss-precondition (and (bridge_10_3_10_4))
 :effect (and (not (at_y3)) (at_y4))
)

(:action move_10_4_9_4
 :parameters ()
 :precondition (and (at_x10)(at_y4))
 :poss-precondition (and (bridge_9_4_10_4))
 :effect (and (not (at_x10)) (at_x9))
)

(:action move_10_4_11_4
 :parameters ()
 :precondition (and (at_x10)(at_y4))
 :poss-precondition (and (bridge_10_4_11_4))
 :effect (and (not (at_x10)) (at_x11))
)

(:action move_10_4_10_3
 :parameters ()
 :precondition (and (at_x10)(at_y4))
 :poss-precondition (and (bridge_10_3_10_4))
 :effect (and (not (at_y4)) (at_y3))
)

(:action move_10_4_10_5
 :parameters ()
 :precondition (and (at_x10)(at_y4))
 :poss-precondition (and (bridge_10_4_10_5))
 :effect (and (not (at_y4)) (at_y5))
)

(:action move_10_5_9_5
 :parameters ()
 :precondition (and (at_x10)(at_y5))
 :poss-precondition (and (bridge_9_5_10_5))
 :effect (and (not (at_x10)) (at_x9))
)

(:action move_10_5_11_5
 :parameters ()
 :precondition (and (at_x10)(at_y5))
 :poss-precondition (and (bridge_10_5_11_5))
 :effect (and (not (at_x10)) (at_x11))
)

(:action move_10_5_10_4
 :parameters ()
 :precondition (and (at_x10)(at_y5))
 :poss-precondition (and (bridge_10_4_10_5))
 :effect (and (not (at_y5)) (at_y4))
)

(:action move_10_5_10_6
 :parameters ()
 :precondition (and (at_x10)(at_y5))
 :poss-precondition (and (bridge_10_5_10_6))
 :effect (and (not (at_y5)) (at_y6))
)

(:action move_10_6_9_6
 :parameters ()
 :precondition (and (at_x10)(at_y6))
 :poss-precondition (and (bridge_9_6_10_6))
 :effect (and (not (at_x10)) (at_x9))
)

(:action move_10_6_11_6
 :parameters ()
 :precondition (and (at_x10)(at_y6))
 :poss-precondition (and (bridge_10_6_11_6))
 :effect (and (not (at_x10)) (at_x11))
)

(:action move_10_6_10_5
 :parameters ()
 :precondition (and (at_x10)(at_y6))
 :poss-precondition (and (bridge_10_5_10_6))
 :effect (and (not (at_y6)) (at_y5))
)

(:action move_10_6_10_7
 :parameters ()
 :precondition (and (at_x10)(at_y6))
 :poss-precondition (and (bridge_10_6_10_7))
 :effect (and (not (at_y6)) (at_y7))
)

(:action move_10_7_9_7
 :parameters ()
 :precondition (and (at_x10)(at_y7))
 :poss-precondition (and (bridge_9_7_10_7))
 :effect (and (not (at_x10)) (at_x9))
)

(:action move_10_7_11_7
 :parameters ()
 :precondition (and (at_x10)(at_y7))
 :poss-precondition (and (bridge_10_7_11_7))
 :effect (and (not (at_x10)) (at_x11))
)

(:action move_10_7_10_6
 :parameters ()
 :precondition (and (at_x10)(at_y7))
 :poss-precondition (and (bridge_10_6_10_7))
 :effect (and (not (at_y7)) (at_y6))
)

(:action move_10_7_10_8
 :parameters ()
 :precondition (and (at_x10)(at_y7))
 :poss-precondition (and (bridge_10_7_10_8))
 :effect (and (not (at_y7)) (at_y8))
)

(:action move_10_8_9_8
 :parameters ()
 :precondition (and (at_x10)(at_y8))
 :poss-precondition (and (bridge_9_8_10_8))
 :effect (and (not (at_x10)) (at_x9))
)

(:action move_10_8_11_8
 :parameters ()
 :precondition (and (at_x10)(at_y8))
 :poss-precondition (and (bridge_10_8_11_8))
 :effect (and (not (at_x10)) (at_x11))
)

(:action move_10_8_10_7
 :parameters ()
 :precondition (and (at_x10)(at_y8))
 :poss-precondition (and (bridge_10_7_10_8))
 :effect (and (not (at_y8)) (at_y7))
)

(:action move_10_8_10_9
 :parameters ()
 :precondition (and (at_x10)(at_y8))
 :poss-precondition (and (bridge_10_8_10_9))
 :effect (and (not (at_y8)) (at_y9))
)

(:action move_10_9_9_9
 :parameters ()
 :precondition (and (at_x10)(at_y9))
 :poss-precondition (and (bridge_9_9_10_9))
 :effect (and (not (at_x10)) (at_x9))
)

(:action move_10_9_11_9
 :parameters ()
 :precondition (and (at_x10)(at_y9))
 :poss-precondition (and (bridge_10_9_11_9))
 :effect (and (not (at_x10)) (at_x11))
)

(:action move_10_9_10_8
 :parameters ()
 :precondition (and (at_x10)(at_y9))
 :poss-precondition (and (bridge_10_8_10_9))
 :effect (and (not (at_y9)) (at_y8))
)

(:action move_10_9_10_10
 :parameters ()
 :precondition (and (at_x10)(at_y9))
 :poss-precondition (and (bridge_10_9_10_10))
 :effect (and (not (at_y9)) (at_y10))
)

(:action move_10_10_9_10
 :parameters ()
 :precondition (and (at_x10)(at_y10))
 :poss-precondition (and (bridge_9_10_10_10))
 :effect (and (not (at_x10)) (at_x9))
)

(:action move_10_10_11_10
 :parameters ()
 :precondition (and (at_x10)(at_y10))
 :poss-precondition (and (bridge_10_10_11_10))
 :effect (and (not (at_x10)) (at_x11))
)

(:action move_10_10_10_9
 :parameters ()
 :precondition (and (at_x10)(at_y10))
 :poss-precondition (and (bridge_10_9_10_10))
 :effect (and (not (at_y10)) (at_y9))
)

(:action move_10_10_10_11
 :parameters ()
 :precondition (and (at_x10)(at_y10))
 :poss-precondition (and (bridge_10_10_10_11))
 :effect (and (not (at_y10)) (at_y11))
)

(:action move_10_11_9_11
 :parameters ()
 :precondition (and (at_x10)(at_y11))
 :poss-precondition (and (bridge_9_11_10_11))
 :effect (and (not (at_x10)) (at_x9))
)

(:action move_10_11_11_11
 :parameters ()
 :precondition (and (at_x10)(at_y11))
 :poss-precondition (and (bridge_10_11_11_11))
 :effect (and (not (at_x10)) (at_x11))
)

(:action move_10_11_10_10
 :parameters ()
 :precondition (and (at_x10)(at_y11))
 :poss-precondition (and (bridge_10_10_10_11))
 :effect (and (not (at_y11)) (at_y10))
)

(:action move_10_11_10_12
 :parameters ()
 :precondition (and (at_x10)(at_y11))
 :poss-precondition (and (bridge_10_11_10_12))
 :effect (and (not (at_y11)) (at_y12))
)

(:action move_10_12_9_12
 :parameters ()
 :precondition (and (at_x10)(at_y12))
 :poss-precondition (and (bridge_9_12_10_12))
 :effect (and (not (at_x10)) (at_x9))
)

(:action move_10_12_11_12
 :parameters ()
 :precondition (and (at_x10)(at_y12))
 :poss-precondition (and (bridge_10_12_11_12))
 :effect (and (not (at_x10)) (at_x11))
)

(:action move_10_12_10_11
 :parameters ()
 :precondition (and (at_x10)(at_y12))
 :poss-precondition (and (bridge_10_11_10_12))
 :effect (and (not (at_y12)) (at_y11))
)

(:action move_10_12_10_13
 :parameters ()
 :precondition (and (at_x10)(at_y12))
 :poss-precondition (and (bridge_10_12_10_13))
 :effect (and (not (at_y12)) (at_y13))
)

(:action move_10_13_9_13
 :parameters ()
 :precondition (and (at_x10)(at_y13))
 :poss-precondition (and (bridge_9_13_10_13))
 :effect (and (not (at_x10)) (at_x9))
)

(:action move_10_13_11_13
 :parameters ()
 :precondition (and (at_x10)(at_y13))
 :poss-precondition (and (bridge_10_13_11_13))
 :effect (and (not (at_x10)) (at_x11))
)

(:action move_10_13_10_12
 :parameters ()
 :precondition (and (at_x10)(at_y13))
 :poss-precondition (and (bridge_10_12_10_13))
 :effect (and (not (at_y13)) (at_y12))
)

(:action move_10_13_10_14
 :parameters ()
 :precondition (and (at_x10)(at_y13))
 :poss-precondition (and (bridge_10_13_10_14))
 :effect (and (not (at_y13)) (at_y14))
)

(:action move_10_14_9_14
 :parameters ()
 :precondition (and (at_x10)(at_y14))
 :poss-precondition (and (bridge_9_14_10_14))
 :effect (and (not (at_x10)) (at_x9))
)

(:action move_10_14_11_14
 :parameters ()
 :precondition (and (at_x10)(at_y14))
 :poss-precondition (and (bridge_10_14_11_14))
 :effect (and (not (at_x10)) (at_x11))
)

(:action move_10_14_10_13
 :parameters ()
 :precondition (and (at_x10)(at_y14))
 :poss-precondition (and (bridge_10_13_10_14))
 :effect (and (not (at_y14)) (at_y13))
)

(:action move_10_14_10_15
 :parameters ()
 :precondition (and (at_x10)(at_y14))
 :poss-precondition (and (bridge_10_14_10_15))
 :effect (and (not (at_y14)) (at_y15))
)

(:action move_10_15_9_15
 :parameters ()
 :precondition (and (at_x10)(at_y15))
 :poss-precondition (and (bridge_9_15_10_15))
 :effect (and (not (at_x10)) (at_x9))
)

(:action move_10_15_11_15
 :parameters ()
 :precondition (and (at_x10)(at_y15))
 :poss-precondition (and (bridge_10_15_11_15))
 :effect (and (not (at_x10)) (at_x11))
)

(:action move_10_15_10_14
 :parameters ()
 :precondition (and (at_x10)(at_y15))
 :poss-precondition (and (bridge_10_14_10_15))
 :effect (and (not (at_y15)) (at_y14))
)

(:action move_10_15_10_16
 :parameters ()
 :precondition (and (at_x10)(at_y15))
 :poss-precondition (and (bridge_10_15_10_16))
 :effect (and (not (at_y15)) (at_y16))
)

(:action move_10_16_9_16
 :parameters ()
 :precondition (and (at_x10)(at_y16))
 :poss-precondition (and (bridge_9_16_10_16))
 :effect (and (not (at_x10)) (at_x9))
)

(:action move_10_16_11_16
 :parameters ()
 :precondition (and (at_x10)(at_y16))
 :poss-precondition (and (bridge_10_16_11_16))
 :effect (and (not (at_x10)) (at_x11))
)

(:action move_10_16_10_15
 :parameters ()
 :precondition (and (at_x10)(at_y16))
 :poss-precondition (and (bridge_10_15_10_16))
 :effect (and (not (at_y16)) (at_y15))
)

(:action move_10_16_10_17
 :parameters ()
 :precondition (and (at_x10)(at_y16))
 :poss-precondition (and (bridge_10_16_10_17))
 :effect (and (not (at_y16)) (at_y17))
)

(:action move_10_17_9_17
 :parameters ()
 :precondition (and (at_x10)(at_y17))
 :poss-precondition (and (bridge_9_17_10_17))
 :effect (and (not (at_x10)) (at_x9))
)

(:action move_10_17_11_17
 :parameters ()
 :precondition (and (at_x10)(at_y17))
 :poss-precondition (and (bridge_10_17_11_17))
 :effect (and (not (at_x10)) (at_x11))
)

(:action move_10_17_10_16
 :parameters ()
 :precondition (and (at_x10)(at_y17))
 :poss-precondition (and (bridge_10_16_10_17))
 :effect (and (not (at_y17)) (at_y16))
)

(:action move_10_17_10_18
 :parameters ()
 :precondition (and (at_x10)(at_y17))
 :poss-precondition (and (bridge_10_17_10_18))
 :effect (and (not (at_y17)) (at_y18))
)

(:action move_10_18_9_18
 :parameters ()
 :precondition (and (at_x10)(at_y18))
 :poss-precondition (and (bridge_9_18_10_18))
 :effect (and (not (at_x10)) (at_x9))
)

(:action move_10_18_11_18
 :parameters ()
 :precondition (and (at_x10)(at_y18))
 :poss-precondition (and (bridge_10_18_11_18))
 :effect (and (not (at_x10)) (at_x11))
)

(:action move_10_18_10_17
 :parameters ()
 :precondition (and (at_x10)(at_y18))
 :poss-precondition (and (bridge_10_17_10_18))
 :effect (and (not (at_y18)) (at_y17))
)

(:action move_10_18_10_19
 :parameters ()
 :precondition (and (at_x10)(at_y18))
 :poss-precondition (and (bridge_10_18_10_19))
 :effect (and (not (at_y18)) (at_y19))
)

(:action move_10_19_9_19
 :parameters ()
 :precondition (and (at_x10)(at_y19))
 :poss-precondition (and (bridge_9_19_10_19))
 :effect (and (not (at_x10)) (at_x9))
)

(:action move_10_19_11_19
 :parameters ()
 :precondition (and (at_x10)(at_y19))
 :poss-precondition (and (bridge_10_19_11_19))
 :effect (and (not (at_x10)) (at_x11))
)

(:action move_10_19_10_18
 :parameters ()
 :precondition (and (at_x10)(at_y19))
 :poss-precondition (and (bridge_10_18_10_19))
 :effect (and (not (at_y19)) (at_y18))
)

(:action move_10_19_10_20
 :parameters ()
 :precondition (and (at_x10)(at_y19))
 :poss-precondition (and (bridge_10_19_10_20))
 :effect (and (not (at_y19)) (at_y20))
)

(:action move_10_20_9_20
 :parameters ()
 :precondition (and (at_x10)(at_y20))
 :poss-precondition (and (bridge_9_20_10_20))
 :effect (and (not (at_x10)) (at_x9))
)

(:action move_10_20_11_20
 :parameters ()
 :precondition (and (at_x10)(at_y20))
 :poss-precondition (and (bridge_10_20_11_20))
 :effect (and (not (at_x10)) (at_x11))
)

(:action move_10_20_10_19
 :parameters ()
 :precondition (and (at_x10)(at_y20))
 :poss-precondition (and (bridge_10_19_10_20))
 :effect (and (not (at_y20)) (at_y19))
)

(:action move_10_20_10_21
 :parameters ()
 :precondition (and (at_x10)(at_y20))
 :poss-precondition (and (bridge_10_20_10_21))
 :effect (and (not (at_y20)) (at_y21))
)

(:action move_10_21_9_21
 :parameters ()
 :precondition (and (at_x10)(at_y21))
 :poss-precondition (and (bridge_9_21_10_21))
 :effect (and (not (at_x10)) (at_x9))
)

(:action move_10_21_11_21
 :parameters ()
 :precondition (and (at_x10)(at_y21))
 :poss-precondition (and (bridge_10_21_11_21))
 :effect (and (not (at_x10)) (at_x11))
)

(:action move_10_21_10_20
 :parameters ()
 :precondition (and (at_x10)(at_y21))
 :poss-precondition (and (bridge_10_20_10_21))
 :effect (and (not (at_y21)) (at_y20))
)

(:action move_10_21_10_22
 :parameters ()
 :precondition (and (at_x10)(at_y21))
 :poss-precondition (and (bridge_10_21_10_22))
 :effect (and (not (at_y21)) (at_y22))
)

(:action move_10_22_9_22
 :parameters ()
 :precondition (and (at_x10)(at_y22))
 :poss-precondition (and (bridge_9_22_10_22))
 :effect (and (not (at_x10)) (at_x9))
)

(:action move_10_22_11_22
 :parameters ()
 :precondition (and (at_x10)(at_y22))
 :poss-precondition (and (bridge_10_22_11_22))
 :effect (and (not (at_x10)) (at_x11))
)

(:action move_10_22_10_21
 :parameters ()
 :precondition (and (at_x10)(at_y22))
 :poss-precondition (and (bridge_10_21_10_22))
 :effect (and (not (at_y22)) (at_y21))
)

(:action move_10_22_10_23
 :parameters ()
 :precondition (and (at_x10)(at_y22))
 :poss-precondition (and (bridge_10_22_10_23))
 :effect (and (not (at_y22)) (at_y23))
)

(:action move_10_23_9_23
 :parameters ()
 :precondition (and (at_x10)(at_y23))
 :poss-precondition (and (bridge_9_23_10_23))
 :effect (and (not (at_x10)) (at_x9))
)

(:action move_10_23_11_23
 :parameters ()
 :precondition (and (at_x10)(at_y23))
 :poss-precondition (and (bridge_10_23_11_23))
 :effect (and (not (at_x10)) (at_x11))
)

(:action move_10_23_10_22
 :parameters ()
 :precondition (and (at_x10)(at_y23))
 :poss-precondition (and (bridge_10_22_10_23))
 :effect (and (not (at_y23)) (at_y22))
)

(:action move_10_23_10_24
 :parameters ()
 :precondition (and (at_x10)(at_y23))
 :poss-precondition (and (bridge_10_23_10_24))
 :effect (and (not (at_y23)) (at_y24))
)

(:action move_10_24_9_24
 :parameters ()
 :precondition (and (at_x10)(at_y24))
 :poss-precondition (and (bridge_9_24_10_24))
 :effect (and (not (at_x10)) (at_x9))
)

(:action move_10_24_11_24
 :parameters ()
 :precondition (and (at_x10)(at_y24))
 :poss-precondition (and (bridge_10_24_11_24))
 :effect (and (not (at_x10)) (at_x11))
)

(:action move_10_24_10_23
 :parameters ()
 :precondition (and (at_x10)(at_y24))
 :poss-precondition (and (bridge_10_23_10_24))
 :effect (and (not (at_y24)) (at_y23))
)

(:action move_10_24_10_25
 :parameters ()
 :precondition (and (at_x10)(at_y24))
 :poss-precondition (and (bridge_10_24_10_25))
 :effect (and (not (at_y24)) (at_y25))
)

(:action move_10_25_9_25
 :parameters ()
 :precondition (and (at_x10)(at_y25))
 :poss-precondition (and (bridge_9_25_10_25))
 :effect (and (not (at_x10)) (at_x9))
)

(:action move_10_25_11_25
 :parameters ()
 :precondition (and (at_x10)(at_y25))
 :poss-precondition (and (bridge_10_25_11_25))
 :effect (and (not (at_x10)) (at_x11))
)

(:action move_10_25_10_24
 :parameters ()
 :precondition (and (at_x10)(at_y25))
 :poss-precondition (and (bridge_10_24_10_25))
 :effect (and (not (at_y25)) (at_y24))
)

(:action move_10_25_10_26
 :parameters ()
 :precondition (and (at_x10)(at_y25))
 :poss-precondition (and (bridge_10_25_10_26))
 :effect (and (not (at_y25)) (at_y26))
)

(:action move_10_26_9_26
 :parameters ()
 :precondition (and (at_x10)(at_y26))
 :poss-precondition (and (bridge_9_26_10_26))
 :effect (and (not (at_x10)) (at_x9))
)

(:action move_10_26_11_26
 :parameters ()
 :precondition (and (at_x10)(at_y26))
 :poss-precondition (and (bridge_10_26_11_26))
 :effect (and (not (at_x10)) (at_x11))
)

(:action move_10_26_10_25
 :parameters ()
 :precondition (and (at_x10)(at_y26))
 :poss-precondition (and (bridge_10_25_10_26))
 :effect (and (not (at_y26)) (at_y25))
)

(:action move_10_26_10_27
 :parameters ()
 :precondition (and (at_x10)(at_y26))
 :poss-precondition (and (bridge_10_26_10_27))
 :effect (and (not (at_y26)) (at_y27))
)

(:action move_10_27_9_27
 :parameters ()
 :precondition (and (at_x10)(at_y27))
 :poss-precondition (and (bridge_9_27_10_27))
 :effect (and (not (at_x10)) (at_x9))
)

(:action move_10_27_11_27
 :parameters ()
 :precondition (and (at_x10)(at_y27))
 :poss-precondition (and (bridge_10_27_11_27))
 :effect (and (not (at_x10)) (at_x11))
)

(:action move_10_27_10_26
 :parameters ()
 :precondition (and (at_x10)(at_y27))
 :poss-precondition (and (bridge_10_26_10_27))
 :effect (and (not (at_y27)) (at_y26))
)

(:action move_10_27_10_28
 :parameters ()
 :precondition (and (at_x10)(at_y27))
 :poss-precondition (and (bridge_10_27_10_28))
 :effect (and (not (at_y27)) (at_y28))
)

(:action move_10_28_9_28
 :parameters ()
 :precondition (and (at_x10)(at_y28))
 :poss-precondition (and (bridge_9_28_10_28))
 :effect (and (not (at_x10)) (at_x9))
)

(:action move_10_28_11_28
 :parameters ()
 :precondition (and (at_x10)(at_y28))
 :poss-precondition (and (bridge_10_28_11_28))
 :effect (and (not (at_x10)) (at_x11))
)

(:action move_10_28_10_27
 :parameters ()
 :precondition (and (at_x10)(at_y28))
 :poss-precondition (and (bridge_10_27_10_28))
 :effect (and (not (at_y28)) (at_y27))
)

(:action move_10_28_10_29
 :parameters ()
 :precondition (and (at_x10)(at_y28))
 :poss-precondition (and (bridge_10_28_10_29))
 :effect (and (not (at_y28)) (at_y29))
)

(:action move_10_29_9_29
 :parameters ()
 :precondition (and (at_x10)(at_y29))
 :poss-precondition (and (bridge_9_29_10_29))
 :effect (and (not (at_x10)) (at_x9))
)

(:action move_10_29_11_29
 :parameters ()
 :precondition (and (at_x10)(at_y29))
 :poss-precondition (and (bridge_10_29_11_29))
 :effect (and (not (at_x10)) (at_x11))
)

(:action move_10_29_10_28
 :parameters ()
 :precondition (and (at_x10)(at_y29))
 :poss-precondition (and (bridge_10_28_10_29))
 :effect (and (not (at_y29)) (at_y28))
)

(:action move_10_29_10_30
 :parameters ()
 :precondition (and (at_x10)(at_y29))
 :poss-precondition (and (bridge_10_29_10_30))
 :effect (and (not (at_y29)) (at_y30))
)

(:action move_10_30_9_30
 :parameters ()
 :precondition (and (at_x10)(at_y30))
 :poss-precondition (and (bridge_9_30_10_30))
 :effect (and (not (at_x10)) (at_x9))
)

(:action move_10_30_11_30
 :parameters ()
 :precondition (and (at_x10)(at_y30))
 :poss-precondition (and (bridge_10_30_11_30))
 :effect (and (not (at_x10)) (at_x11))
)

(:action move_10_30_10_29
 :parameters ()
 :precondition (and (at_x10)(at_y30))
 :poss-precondition (and (bridge_10_29_10_30))
 :effect (and (not (at_y30)) (at_y29))
)

(:action move_10_30_10_31
 :parameters ()
 :precondition (and (at_x10)(at_y30))
 :poss-precondition (and (bridge_10_30_10_31))
 :effect (and (not (at_y30)) (at_y31))
)

(:action move_10_31_9_31
 :parameters ()
 :precondition (and (at_x10)(at_y31))
 :poss-precondition (and (bridge_9_31_10_31))
 :effect (and (not (at_x10)) (at_x9))
)

(:action move_10_31_11_31
 :parameters ()
 :precondition (and (at_x10)(at_y31))
 :poss-precondition (and (bridge_10_31_11_31))
 :effect (and (not (at_x10)) (at_x11))
)

(:action move_10_31_10_30
 :parameters ()
 :precondition (and (at_x10)(at_y31))
 :poss-precondition (and (bridge_10_30_10_31))
 :effect (and (not (at_y31)) (at_y30))
)

(:action move_11_0_10_0
 :parameters ()
 :precondition (and (at_x11)(at_y0))
 :poss-precondition (and (bridge_10_0_11_0))
 :effect (and (not (at_x11)) (at_x10))
)

(:action move_11_0_12_0
 :parameters ()
 :precondition (and (at_x11)(at_y0))
 :poss-precondition (and (bridge_11_0_12_0))
 :effect (and (not (at_x11)) (at_x12))
)

(:action move_11_0_11_1
 :parameters ()
 :precondition (and (at_x11)(at_y0))
 :poss-precondition (and (bridge_11_0_11_1))
 :effect (and (not (at_y0)) (at_y1))
)

(:action move_11_1_10_1
 :parameters ()
 :precondition (and (at_x11)(at_y1))
 :poss-precondition (and (bridge_10_1_11_1))
 :effect (and (not (at_x11)) (at_x10))
)

(:action move_11_1_12_1
 :parameters ()
 :precondition (and (at_x11)(at_y1))
 :poss-precondition (and (bridge_11_1_12_1))
 :effect (and (not (at_x11)) (at_x12))
)

(:action move_11_1_11_0
 :parameters ()
 :precondition (and (at_x11)(at_y1))
 :poss-precondition (and (bridge_11_0_11_1))
 :effect (and (not (at_y1)) (at_y0))
)

(:action move_11_1_11_2
 :parameters ()
 :precondition (and (at_x11)(at_y1))
 :poss-precondition (and (bridge_11_1_11_2))
 :effect (and (not (at_y1)) (at_y2))
)

(:action move_11_2_10_2
 :parameters ()
 :precondition (and (at_x11)(at_y2))
 :poss-precondition (and (bridge_10_2_11_2))
 :effect (and (not (at_x11)) (at_x10))
)

(:action move_11_2_12_2
 :parameters ()
 :precondition (and (at_x11)(at_y2))
 :poss-precondition (and (bridge_11_2_12_2))
 :effect (and (not (at_x11)) (at_x12))
)

(:action move_11_2_11_1
 :parameters ()
 :precondition (and (at_x11)(at_y2))
 :poss-precondition (and (bridge_11_1_11_2))
 :effect (and (not (at_y2)) (at_y1))
)

(:action move_11_2_11_3
 :parameters ()
 :precondition (and (at_x11)(at_y2))
 :poss-precondition (and (bridge_11_2_11_3))
 :effect (and (not (at_y2)) (at_y3))
)

(:action move_11_3_10_3
 :parameters ()
 :precondition (and (at_x11)(at_y3))
 :poss-precondition (and (bridge_10_3_11_3))
 :effect (and (not (at_x11)) (at_x10))
)

(:action move_11_3_12_3
 :parameters ()
 :precondition (and (at_x11)(at_y3))
 :poss-precondition (and (bridge_11_3_12_3))
 :effect (and (not (at_x11)) (at_x12))
)

(:action move_11_3_11_2
 :parameters ()
 :precondition (and (at_x11)(at_y3))
 :poss-precondition (and (bridge_11_2_11_3))
 :effect (and (not (at_y3)) (at_y2))
)

(:action move_11_3_11_4
 :parameters ()
 :precondition (and (at_x11)(at_y3))
 :poss-precondition (and (bridge_11_3_11_4))
 :effect (and (not (at_y3)) (at_y4))
)

(:action move_11_4_10_4
 :parameters ()
 :precondition (and (at_x11)(at_y4))
 :poss-precondition (and (bridge_10_4_11_4))
 :effect (and (not (at_x11)) (at_x10))
)

(:action move_11_4_12_4
 :parameters ()
 :precondition (and (at_x11)(at_y4))
 :poss-precondition (and (bridge_11_4_12_4))
 :effect (and (not (at_x11)) (at_x12))
)

(:action move_11_4_11_3
 :parameters ()
 :precondition (and (at_x11)(at_y4))
 :poss-precondition (and (bridge_11_3_11_4))
 :effect (and (not (at_y4)) (at_y3))
)

(:action move_11_4_11_5
 :parameters ()
 :precondition (and (at_x11)(at_y4))
 :poss-precondition (and (bridge_11_4_11_5))
 :effect (and (not (at_y4)) (at_y5))
)

(:action move_11_5_10_5
 :parameters ()
 :precondition (and (at_x11)(at_y5))
 :poss-precondition (and (bridge_10_5_11_5))
 :effect (and (not (at_x11)) (at_x10))
)

(:action move_11_5_12_5
 :parameters ()
 :precondition (and (at_x11)(at_y5))
 :poss-precondition (and (bridge_11_5_12_5))
 :effect (and (not (at_x11)) (at_x12))
)

(:action move_11_5_11_4
 :parameters ()
 :precondition (and (at_x11)(at_y5))
 :poss-precondition (and (bridge_11_4_11_5))
 :effect (and (not (at_y5)) (at_y4))
)

(:action move_11_5_11_6
 :parameters ()
 :precondition (and (at_x11)(at_y5))
 :poss-precondition (and (bridge_11_5_11_6))
 :effect (and (not (at_y5)) (at_y6))
)

(:action move_11_6_10_6
 :parameters ()
 :precondition (and (at_x11)(at_y6))
 :poss-precondition (and (bridge_10_6_11_6))
 :effect (and (not (at_x11)) (at_x10))
)

(:action move_11_6_12_6
 :parameters ()
 :precondition (and (at_x11)(at_y6))
 :poss-precondition (and (bridge_11_6_12_6))
 :effect (and (not (at_x11)) (at_x12))
)

(:action move_11_6_11_5
 :parameters ()
 :precondition (and (at_x11)(at_y6))
 :poss-precondition (and (bridge_11_5_11_6))
 :effect (and (not (at_y6)) (at_y5))
)

(:action move_11_6_11_7
 :parameters ()
 :precondition (and (at_x11)(at_y6))
 :poss-precondition (and (bridge_11_6_11_7))
 :effect (and (not (at_y6)) (at_y7))
)

(:action move_11_7_10_7
 :parameters ()
 :precondition (and (at_x11)(at_y7))
 :poss-precondition (and (bridge_10_7_11_7))
 :effect (and (not (at_x11)) (at_x10))
)

(:action move_11_7_12_7
 :parameters ()
 :precondition (and (at_x11)(at_y7))
 :poss-precondition (and (bridge_11_7_12_7))
 :effect (and (not (at_x11)) (at_x12))
)

(:action move_11_7_11_6
 :parameters ()
 :precondition (and (at_x11)(at_y7))
 :poss-precondition (and (bridge_11_6_11_7))
 :effect (and (not (at_y7)) (at_y6))
)

(:action move_11_7_11_8
 :parameters ()
 :precondition (and (at_x11)(at_y7))
 :poss-precondition (and (bridge_11_7_11_8))
 :effect (and (not (at_y7)) (at_y8))
)

(:action move_11_8_10_8
 :parameters ()
 :precondition (and (at_x11)(at_y8))
 :poss-precondition (and (bridge_10_8_11_8))
 :effect (and (not (at_x11)) (at_x10))
)

(:action move_11_8_12_8
 :parameters ()
 :precondition (and (at_x11)(at_y8))
 :poss-precondition (and (bridge_11_8_12_8))
 :effect (and (not (at_x11)) (at_x12))
)

(:action move_11_8_11_7
 :parameters ()
 :precondition (and (at_x11)(at_y8))
 :poss-precondition (and (bridge_11_7_11_8))
 :effect (and (not (at_y8)) (at_y7))
)

(:action move_11_8_11_9
 :parameters ()
 :precondition (and (at_x11)(at_y8))
 :poss-precondition (and (bridge_11_8_11_9))
 :effect (and (not (at_y8)) (at_y9))
)

(:action move_11_9_10_9
 :parameters ()
 :precondition (and (at_x11)(at_y9))
 :poss-precondition (and (bridge_10_9_11_9))
 :effect (and (not (at_x11)) (at_x10))
)

(:action move_11_9_12_9
 :parameters ()
 :precondition (and (at_x11)(at_y9))
 :poss-precondition (and (bridge_11_9_12_9))
 :effect (and (not (at_x11)) (at_x12))
)

(:action move_11_9_11_8
 :parameters ()
 :precondition (and (at_x11)(at_y9))
 :poss-precondition (and (bridge_11_8_11_9))
 :effect (and (not (at_y9)) (at_y8))
)

(:action move_11_9_11_10
 :parameters ()
 :precondition (and (at_x11)(at_y9))
 :poss-precondition (and (bridge_11_9_11_10))
 :effect (and (not (at_y9)) (at_y10))
)

(:action move_11_10_10_10
 :parameters ()
 :precondition (and (at_x11)(at_y10))
 :poss-precondition (and (bridge_10_10_11_10))
 :effect (and (not (at_x11)) (at_x10))
)

(:action move_11_10_12_10
 :parameters ()
 :precondition (and (at_x11)(at_y10))
 :poss-precondition (and (bridge_11_10_12_10))
 :effect (and (not (at_x11)) (at_x12))
)

(:action move_11_10_11_9
 :parameters ()
 :precondition (and (at_x11)(at_y10))
 :poss-precondition (and (bridge_11_9_11_10))
 :effect (and (not (at_y10)) (at_y9))
)

(:action move_11_10_11_11
 :parameters ()
 :precondition (and (at_x11)(at_y10))
 :poss-precondition (and (bridge_11_10_11_11))
 :effect (and (not (at_y10)) (at_y11))
)

(:action move_11_11_10_11
 :parameters ()
 :precondition (and (at_x11)(at_y11))
 :poss-precondition (and (bridge_10_11_11_11))
 :effect (and (not (at_x11)) (at_x10))
)

(:action move_11_11_12_11
 :parameters ()
 :precondition (and (at_x11)(at_y11))
 :poss-precondition (and (bridge_11_11_12_11))
 :effect (and (not (at_x11)) (at_x12))
)

(:action move_11_11_11_10
 :parameters ()
 :precondition (and (at_x11)(at_y11))
 :poss-precondition (and (bridge_11_10_11_11))
 :effect (and (not (at_y11)) (at_y10))
)

(:action move_11_11_11_12
 :parameters ()
 :precondition (and (at_x11)(at_y11))
 :poss-precondition (and (bridge_11_11_11_12))
 :effect (and (not (at_y11)) (at_y12))
)

(:action move_11_12_10_12
 :parameters ()
 :precondition (and (at_x11)(at_y12))
 :poss-precondition (and (bridge_10_12_11_12))
 :effect (and (not (at_x11)) (at_x10))
)

(:action move_11_12_12_12
 :parameters ()
 :precondition (and (at_x11)(at_y12))
 :poss-precondition (and (bridge_11_12_12_12))
 :effect (and (not (at_x11)) (at_x12))
)

(:action move_11_12_11_11
 :parameters ()
 :precondition (and (at_x11)(at_y12))
 :poss-precondition (and (bridge_11_11_11_12))
 :effect (and (not (at_y12)) (at_y11))
)

(:action move_11_12_11_13
 :parameters ()
 :precondition (and (at_x11)(at_y12))
 :poss-precondition (and (bridge_11_12_11_13))
 :effect (and (not (at_y12)) (at_y13))
)

(:action move_11_13_10_13
 :parameters ()
 :precondition (and (at_x11)(at_y13))
 :poss-precondition (and (bridge_10_13_11_13))
 :effect (and (not (at_x11)) (at_x10))
)

(:action move_11_13_12_13
 :parameters ()
 :precondition (and (at_x11)(at_y13))
 :poss-precondition (and (bridge_11_13_12_13))
 :effect (and (not (at_x11)) (at_x12))
)

(:action move_11_13_11_12
 :parameters ()
 :precondition (and (at_x11)(at_y13))
 :poss-precondition (and (bridge_11_12_11_13))
 :effect (and (not (at_y13)) (at_y12))
)

(:action move_11_13_11_14
 :parameters ()
 :precondition (and (at_x11)(at_y13))
 :poss-precondition (and (bridge_11_13_11_14))
 :effect (and (not (at_y13)) (at_y14))
)

(:action move_11_14_10_14
 :parameters ()
 :precondition (and (at_x11)(at_y14))
 :poss-precondition (and (bridge_10_14_11_14))
 :effect (and (not (at_x11)) (at_x10))
)

(:action move_11_14_12_14
 :parameters ()
 :precondition (and (at_x11)(at_y14))
 :poss-precondition (and (bridge_11_14_12_14))
 :effect (and (not (at_x11)) (at_x12))
)

(:action move_11_14_11_13
 :parameters ()
 :precondition (and (at_x11)(at_y14))
 :poss-precondition (and (bridge_11_13_11_14))
 :effect (and (not (at_y14)) (at_y13))
)

(:action move_11_14_11_15
 :parameters ()
 :precondition (and (at_x11)(at_y14))
 :poss-precondition (and (bridge_11_14_11_15))
 :effect (and (not (at_y14)) (at_y15))
)

(:action move_11_15_10_15
 :parameters ()
 :precondition (and (at_x11)(at_y15))
 :poss-precondition (and (bridge_10_15_11_15))
 :effect (and (not (at_x11)) (at_x10))
)

(:action move_11_15_12_15
 :parameters ()
 :precondition (and (at_x11)(at_y15))
 :poss-precondition (and (bridge_11_15_12_15))
 :effect (and (not (at_x11)) (at_x12))
)

(:action move_11_15_11_14
 :parameters ()
 :precondition (and (at_x11)(at_y15))
 :poss-precondition (and (bridge_11_14_11_15))
 :effect (and (not (at_y15)) (at_y14))
)

(:action move_11_15_11_16
 :parameters ()
 :precondition (and (at_x11)(at_y15))
 :poss-precondition (and (bridge_11_15_11_16))
 :effect (and (not (at_y15)) (at_y16))
)

(:action move_11_16_10_16
 :parameters ()
 :precondition (and (at_x11)(at_y16))
 :poss-precondition (and (bridge_10_16_11_16))
 :effect (and (not (at_x11)) (at_x10))
)

(:action move_11_16_12_16
 :parameters ()
 :precondition (and (at_x11)(at_y16))
 :poss-precondition (and (bridge_11_16_12_16))
 :effect (and (not (at_x11)) (at_x12))
)

(:action move_11_16_11_15
 :parameters ()
 :precondition (and (at_x11)(at_y16))
 :poss-precondition (and (bridge_11_15_11_16))
 :effect (and (not (at_y16)) (at_y15))
)

(:action move_11_16_11_17
 :parameters ()
 :precondition (and (at_x11)(at_y16))
 :poss-precondition (and (bridge_11_16_11_17))
 :effect (and (not (at_y16)) (at_y17))
)

(:action move_11_17_10_17
 :parameters ()
 :precondition (and (at_x11)(at_y17))
 :poss-precondition (and (bridge_10_17_11_17))
 :effect (and (not (at_x11)) (at_x10))
)

(:action move_11_17_12_17
 :parameters ()
 :precondition (and (at_x11)(at_y17))
 :poss-precondition (and (bridge_11_17_12_17))
 :effect (and (not (at_x11)) (at_x12))
)

(:action move_11_17_11_16
 :parameters ()
 :precondition (and (at_x11)(at_y17))
 :poss-precondition (and (bridge_11_16_11_17))
 :effect (and (not (at_y17)) (at_y16))
)

(:action move_11_17_11_18
 :parameters ()
 :precondition (and (at_x11)(at_y17))
 :poss-precondition (and (bridge_11_17_11_18))
 :effect (and (not (at_y17)) (at_y18))
)

(:action move_11_18_10_18
 :parameters ()
 :precondition (and (at_x11)(at_y18))
 :poss-precondition (and (bridge_10_18_11_18))
 :effect (and (not (at_x11)) (at_x10))
)

(:action move_11_18_12_18
 :parameters ()
 :precondition (and (at_x11)(at_y18))
 :poss-precondition (and (bridge_11_18_12_18))
 :effect (and (not (at_x11)) (at_x12))
)

(:action move_11_18_11_17
 :parameters ()
 :precondition (and (at_x11)(at_y18))
 :poss-precondition (and (bridge_11_17_11_18))
 :effect (and (not (at_y18)) (at_y17))
)

(:action move_11_18_11_19
 :parameters ()
 :precondition (and (at_x11)(at_y18))
 :poss-precondition (and (bridge_11_18_11_19))
 :effect (and (not (at_y18)) (at_y19))
)

(:action move_11_19_10_19
 :parameters ()
 :precondition (and (at_x11)(at_y19))
 :poss-precondition (and (bridge_10_19_11_19))
 :effect (and (not (at_x11)) (at_x10))
)

(:action move_11_19_12_19
 :parameters ()
 :precondition (and (at_x11)(at_y19))
 :poss-precondition (and (bridge_11_19_12_19))
 :effect (and (not (at_x11)) (at_x12))
)

(:action move_11_19_11_18
 :parameters ()
 :precondition (and (at_x11)(at_y19))
 :poss-precondition (and (bridge_11_18_11_19))
 :effect (and (not (at_y19)) (at_y18))
)

(:action move_11_19_11_20
 :parameters ()
 :precondition (and (at_x11)(at_y19))
 :poss-precondition (and (bridge_11_19_11_20))
 :effect (and (not (at_y19)) (at_y20))
)

(:action move_11_20_10_20
 :parameters ()
 :precondition (and (at_x11)(at_y20))
 :poss-precondition (and (bridge_10_20_11_20))
 :effect (and (not (at_x11)) (at_x10))
)

(:action move_11_20_12_20
 :parameters ()
 :precondition (and (at_x11)(at_y20))
 :poss-precondition (and (bridge_11_20_12_20))
 :effect (and (not (at_x11)) (at_x12))
)

(:action move_11_20_11_19
 :parameters ()
 :precondition (and (at_x11)(at_y20))
 :poss-precondition (and (bridge_11_19_11_20))
 :effect (and (not (at_y20)) (at_y19))
)

(:action move_11_20_11_21
 :parameters ()
 :precondition (and (at_x11)(at_y20))
 :poss-precondition (and (bridge_11_20_11_21))
 :effect (and (not (at_y20)) (at_y21))
)

(:action move_11_21_10_21
 :parameters ()
 :precondition (and (at_x11)(at_y21))
 :poss-precondition (and (bridge_10_21_11_21))
 :effect (and (not (at_x11)) (at_x10))
)

(:action move_11_21_12_21
 :parameters ()
 :precondition (and (at_x11)(at_y21))
 :poss-precondition (and (bridge_11_21_12_21))
 :effect (and (not (at_x11)) (at_x12))
)

(:action move_11_21_11_20
 :parameters ()
 :precondition (and (at_x11)(at_y21))
 :poss-precondition (and (bridge_11_20_11_21))
 :effect (and (not (at_y21)) (at_y20))
)

(:action move_11_21_11_22
 :parameters ()
 :precondition (and (at_x11)(at_y21))
 :poss-precondition (and (bridge_11_21_11_22))
 :effect (and (not (at_y21)) (at_y22))
)

(:action move_11_22_10_22
 :parameters ()
 :precondition (and (at_x11)(at_y22))
 :poss-precondition (and (bridge_10_22_11_22))
 :effect (and (not (at_x11)) (at_x10))
)

(:action move_11_22_12_22
 :parameters ()
 :precondition (and (at_x11)(at_y22))
 :poss-precondition (and (bridge_11_22_12_22))
 :effect (and (not (at_x11)) (at_x12))
)

(:action move_11_22_11_21
 :parameters ()
 :precondition (and (at_x11)(at_y22))
 :poss-precondition (and (bridge_11_21_11_22))
 :effect (and (not (at_y22)) (at_y21))
)

(:action move_11_22_11_23
 :parameters ()
 :precondition (and (at_x11)(at_y22))
 :poss-precondition (and (bridge_11_22_11_23))
 :effect (and (not (at_y22)) (at_y23))
)

(:action move_11_23_10_23
 :parameters ()
 :precondition (and (at_x11)(at_y23))
 :poss-precondition (and (bridge_10_23_11_23))
 :effect (and (not (at_x11)) (at_x10))
)

(:action move_11_23_12_23
 :parameters ()
 :precondition (and (at_x11)(at_y23))
 :poss-precondition (and (bridge_11_23_12_23))
 :effect (and (not (at_x11)) (at_x12))
)

(:action move_11_23_11_22
 :parameters ()
 :precondition (and (at_x11)(at_y23))
 :poss-precondition (and (bridge_11_22_11_23))
 :effect (and (not (at_y23)) (at_y22))
)

(:action move_11_23_11_24
 :parameters ()
 :precondition (and (at_x11)(at_y23))
 :poss-precondition (and (bridge_11_23_11_24))
 :effect (and (not (at_y23)) (at_y24))
)

(:action move_11_24_10_24
 :parameters ()
 :precondition (and (at_x11)(at_y24))
 :poss-precondition (and (bridge_10_24_11_24))
 :effect (and (not (at_x11)) (at_x10))
)

(:action move_11_24_12_24
 :parameters ()
 :precondition (and (at_x11)(at_y24))
 :poss-precondition (and (bridge_11_24_12_24))
 :effect (and (not (at_x11)) (at_x12))
)

(:action move_11_24_11_23
 :parameters ()
 :precondition (and (at_x11)(at_y24))
 :poss-precondition (and (bridge_11_23_11_24))
 :effect (and (not (at_y24)) (at_y23))
)

(:action move_11_24_11_25
 :parameters ()
 :precondition (and (at_x11)(at_y24))
 :poss-precondition (and (bridge_11_24_11_25))
 :effect (and (not (at_y24)) (at_y25))
)

(:action move_11_25_10_25
 :parameters ()
 :precondition (and (at_x11)(at_y25))
 :poss-precondition (and (bridge_10_25_11_25))
 :effect (and (not (at_x11)) (at_x10))
)

(:action move_11_25_12_25
 :parameters ()
 :precondition (and (at_x11)(at_y25))
 :poss-precondition (and (bridge_11_25_12_25))
 :effect (and (not (at_x11)) (at_x12))
)

(:action move_11_25_11_24
 :parameters ()
 :precondition (and (at_x11)(at_y25))
 :poss-precondition (and (bridge_11_24_11_25))
 :effect (and (not (at_y25)) (at_y24))
)

(:action move_11_25_11_26
 :parameters ()
 :precondition (and (at_x11)(at_y25))
 :poss-precondition (and (bridge_11_25_11_26))
 :effect (and (not (at_y25)) (at_y26))
)

(:action move_11_26_10_26
 :parameters ()
 :precondition (and (at_x11)(at_y26))
 :poss-precondition (and (bridge_10_26_11_26))
 :effect (and (not (at_x11)) (at_x10))
)

(:action move_11_26_12_26
 :parameters ()
 :precondition (and (at_x11)(at_y26))
 :poss-precondition (and (bridge_11_26_12_26))
 :effect (and (not (at_x11)) (at_x12))
)

(:action move_11_26_11_25
 :parameters ()
 :precondition (and (at_x11)(at_y26))
 :poss-precondition (and (bridge_11_25_11_26))
 :effect (and (not (at_y26)) (at_y25))
)

(:action move_11_26_11_27
 :parameters ()
 :precondition (and (at_x11)(at_y26))
 :poss-precondition (and (bridge_11_26_11_27))
 :effect (and (not (at_y26)) (at_y27))
)

(:action move_11_27_10_27
 :parameters ()
 :precondition (and (at_x11)(at_y27))
 :poss-precondition (and (bridge_10_27_11_27))
 :effect (and (not (at_x11)) (at_x10))
)

(:action move_11_27_12_27
 :parameters ()
 :precondition (and (at_x11)(at_y27))
 :poss-precondition (and (bridge_11_27_12_27))
 :effect (and (not (at_x11)) (at_x12))
)

(:action move_11_27_11_26
 :parameters ()
 :precondition (and (at_x11)(at_y27))
 :poss-precondition (and (bridge_11_26_11_27))
 :effect (and (not (at_y27)) (at_y26))
)

(:action move_11_27_11_28
 :parameters ()
 :precondition (and (at_x11)(at_y27))
 :poss-precondition (and (bridge_11_27_11_28))
 :effect (and (not (at_y27)) (at_y28))
)

(:action move_11_28_10_28
 :parameters ()
 :precondition (and (at_x11)(at_y28))
 :poss-precondition (and (bridge_10_28_11_28))
 :effect (and (not (at_x11)) (at_x10))
)

(:action move_11_28_12_28
 :parameters ()
 :precondition (and (at_x11)(at_y28))
 :poss-precondition (and (bridge_11_28_12_28))
 :effect (and (not (at_x11)) (at_x12))
)

(:action move_11_28_11_27
 :parameters ()
 :precondition (and (at_x11)(at_y28))
 :poss-precondition (and (bridge_11_27_11_28))
 :effect (and (not (at_y28)) (at_y27))
)

(:action move_11_28_11_29
 :parameters ()
 :precondition (and (at_x11)(at_y28))
 :poss-precondition (and (bridge_11_28_11_29))
 :effect (and (not (at_y28)) (at_y29))
)

(:action move_11_29_10_29
 :parameters ()
 :precondition (and (at_x11)(at_y29))
 :poss-precondition (and (bridge_10_29_11_29))
 :effect (and (not (at_x11)) (at_x10))
)

(:action move_11_29_12_29
 :parameters ()
 :precondition (and (at_x11)(at_y29))
 :poss-precondition (and (bridge_11_29_12_29))
 :effect (and (not (at_x11)) (at_x12))
)

(:action move_11_29_11_28
 :parameters ()
 :precondition (and (at_x11)(at_y29))
 :poss-precondition (and (bridge_11_28_11_29))
 :effect (and (not (at_y29)) (at_y28))
)

(:action move_11_29_11_30
 :parameters ()
 :precondition (and (at_x11)(at_y29))
 :poss-precondition (and (bridge_11_29_11_30))
 :effect (and (not (at_y29)) (at_y30))
)

(:action move_11_30_10_30
 :parameters ()
 :precondition (and (at_x11)(at_y30))
 :poss-precondition (and (bridge_10_30_11_30))
 :effect (and (not (at_x11)) (at_x10))
)

(:action move_11_30_12_30
 :parameters ()
 :precondition (and (at_x11)(at_y30))
 :poss-precondition (and (bridge_11_30_12_30))
 :effect (and (not (at_x11)) (at_x12))
)

(:action move_11_30_11_29
 :parameters ()
 :precondition (and (at_x11)(at_y30))
 :poss-precondition (and (bridge_11_29_11_30))
 :effect (and (not (at_y30)) (at_y29))
)

(:action move_11_30_11_31
 :parameters ()
 :precondition (and (at_x11)(at_y30))
 :poss-precondition (and (bridge_11_30_11_31))
 :effect (and (not (at_y30)) (at_y31))
)

(:action move_11_31_10_31
 :parameters ()
 :precondition (and (at_x11)(at_y31))
 :poss-precondition (and (bridge_10_31_11_31))
 :effect (and (not (at_x11)) (at_x10))
)

(:action move_11_31_12_31
 :parameters ()
 :precondition (and (at_x11)(at_y31))
 :poss-precondition (and (bridge_11_31_12_31))
 :effect (and (not (at_x11)) (at_x12))
)

(:action move_11_31_11_30
 :parameters ()
 :precondition (and (at_x11)(at_y31))
 :poss-precondition (and (bridge_11_30_11_31))
 :effect (and (not (at_y31)) (at_y30))
)

(:action move_12_0_11_0
 :parameters ()
 :precondition (and (at_x12)(at_y0))
 :poss-precondition (and (bridge_11_0_12_0))
 :effect (and (not (at_x12)) (at_x11))
)

(:action move_12_0_13_0
 :parameters ()
 :precondition (and (at_x12)(at_y0))
 :poss-precondition (and (bridge_12_0_13_0))
 :effect (and (not (at_x12)) (at_x13))
)

(:action move_12_0_12_1
 :parameters ()
 :precondition (and (at_x12)(at_y0))
 :poss-precondition (and (bridge_12_0_12_1))
 :effect (and (not (at_y0)) (at_y1))
)

(:action move_12_1_11_1
 :parameters ()
 :precondition (and (at_x12)(at_y1))
 :poss-precondition (and (bridge_11_1_12_1))
 :effect (and (not (at_x12)) (at_x11))
)

(:action move_12_1_13_1
 :parameters ()
 :precondition (and (at_x12)(at_y1))
 :poss-precondition (and (bridge_12_1_13_1))
 :effect (and (not (at_x12)) (at_x13))
)

(:action move_12_1_12_0
 :parameters ()
 :precondition (and (at_x12)(at_y1))
 :poss-precondition (and (bridge_12_0_12_1))
 :effect (and (not (at_y1)) (at_y0))
)

(:action move_12_1_12_2
 :parameters ()
 :precondition (and (at_x12)(at_y1))
 :poss-precondition (and (bridge_12_1_12_2))
 :effect (and (not (at_y1)) (at_y2))
)

(:action move_12_2_11_2
 :parameters ()
 :precondition (and (at_x12)(at_y2))
 :poss-precondition (and (bridge_11_2_12_2))
 :effect (and (not (at_x12)) (at_x11))
)

(:action move_12_2_13_2
 :parameters ()
 :precondition (and (at_x12)(at_y2))
 :poss-precondition (and (bridge_12_2_13_2))
 :effect (and (not (at_x12)) (at_x13))
)

(:action move_12_2_12_1
 :parameters ()
 :precondition (and (at_x12)(at_y2))
 :poss-precondition (and (bridge_12_1_12_2))
 :effect (and (not (at_y2)) (at_y1))
)

(:action move_12_2_12_3
 :parameters ()
 :precondition (and (at_x12)(at_y2))
 :poss-precondition (and (bridge_12_2_12_3))
 :effect (and (not (at_y2)) (at_y3))
)

(:action move_12_3_11_3
 :parameters ()
 :precondition (and (at_x12)(at_y3))
 :poss-precondition (and (bridge_11_3_12_3))
 :effect (and (not (at_x12)) (at_x11))
)

(:action move_12_3_13_3
 :parameters ()
 :precondition (and (at_x12)(at_y3))
 :poss-precondition (and (bridge_12_3_13_3))
 :effect (and (not (at_x12)) (at_x13))
)

(:action move_12_3_12_2
 :parameters ()
 :precondition (and (at_x12)(at_y3))
 :poss-precondition (and (bridge_12_2_12_3))
 :effect (and (not (at_y3)) (at_y2))
)

(:action move_12_3_12_4
 :parameters ()
 :precondition (and (at_x12)(at_y3))
 :poss-precondition (and (bridge_12_3_12_4))
 :effect (and (not (at_y3)) (at_y4))
)

(:action move_12_4_11_4
 :parameters ()
 :precondition (and (at_x12)(at_y4))
 :poss-precondition (and (bridge_11_4_12_4))
 :effect (and (not (at_x12)) (at_x11))
)

(:action move_12_4_13_4
 :parameters ()
 :precondition (and (at_x12)(at_y4))
 :poss-precondition (and (bridge_12_4_13_4))
 :effect (and (not (at_x12)) (at_x13))
)

(:action move_12_4_12_3
 :parameters ()
 :precondition (and (at_x12)(at_y4))
 :poss-precondition (and (bridge_12_3_12_4))
 :effect (and (not (at_y4)) (at_y3))
)

(:action move_12_4_12_5
 :parameters ()
 :precondition (and (at_x12)(at_y4))
 :poss-precondition (and (bridge_12_4_12_5))
 :effect (and (not (at_y4)) (at_y5))
)

(:action move_12_5_11_5
 :parameters ()
 :precondition (and (at_x12)(at_y5))
 :poss-precondition (and (bridge_11_5_12_5))
 :effect (and (not (at_x12)) (at_x11))
)

(:action move_12_5_13_5
 :parameters ()
 :precondition (and (at_x12)(at_y5))
 :poss-precondition (and (bridge_12_5_13_5))
 :effect (and (not (at_x12)) (at_x13))
)

(:action move_12_5_12_4
 :parameters ()
 :precondition (and (at_x12)(at_y5))
 :poss-precondition (and (bridge_12_4_12_5))
 :effect (and (not (at_y5)) (at_y4))
)

(:action move_12_5_12_6
 :parameters ()
 :precondition (and (at_x12)(at_y5))
 :poss-precondition (and (bridge_12_5_12_6))
 :effect (and (not (at_y5)) (at_y6))
)

(:action move_12_6_11_6
 :parameters ()
 :precondition (and (at_x12)(at_y6))
 :poss-precondition (and (bridge_11_6_12_6))
 :effect (and (not (at_x12)) (at_x11))
)

(:action move_12_6_13_6
 :parameters ()
 :precondition (and (at_x12)(at_y6))
 :poss-precondition (and (bridge_12_6_13_6))
 :effect (and (not (at_x12)) (at_x13))
)

(:action move_12_6_12_5
 :parameters ()
 :precondition (and (at_x12)(at_y6))
 :poss-precondition (and (bridge_12_5_12_6))
 :effect (and (not (at_y6)) (at_y5))
)

(:action move_12_6_12_7
 :parameters ()
 :precondition (and (at_x12)(at_y6))
 :poss-precondition (and (bridge_12_6_12_7))
 :effect (and (not (at_y6)) (at_y7))
)

(:action move_12_7_11_7
 :parameters ()
 :precondition (and (at_x12)(at_y7))
 :poss-precondition (and (bridge_11_7_12_7))
 :effect (and (not (at_x12)) (at_x11))
)

(:action move_12_7_13_7
 :parameters ()
 :precondition (and (at_x12)(at_y7))
 :poss-precondition (and (bridge_12_7_13_7))
 :effect (and (not (at_x12)) (at_x13))
)

(:action move_12_7_12_6
 :parameters ()
 :precondition (and (at_x12)(at_y7))
 :poss-precondition (and (bridge_12_6_12_7))
 :effect (and (not (at_y7)) (at_y6))
)

(:action move_12_7_12_8
 :parameters ()
 :precondition (and (at_x12)(at_y7))
 :poss-precondition (and (bridge_12_7_12_8))
 :effect (and (not (at_y7)) (at_y8))
)

(:action move_12_8_11_8
 :parameters ()
 :precondition (and (at_x12)(at_y8))
 :poss-precondition (and (bridge_11_8_12_8))
 :effect (and (not (at_x12)) (at_x11))
)

(:action move_12_8_13_8
 :parameters ()
 :precondition (and (at_x12)(at_y8))
 :poss-precondition (and (bridge_12_8_13_8))
 :effect (and (not (at_x12)) (at_x13))
)

(:action move_12_8_12_7
 :parameters ()
 :precondition (and (at_x12)(at_y8))
 :poss-precondition (and (bridge_12_7_12_8))
 :effect (and (not (at_y8)) (at_y7))
)

(:action move_12_8_12_9
 :parameters ()
 :precondition (and (at_x12)(at_y8))
 :poss-precondition (and (bridge_12_8_12_9))
 :effect (and (not (at_y8)) (at_y9))
)

(:action move_12_9_11_9
 :parameters ()
 :precondition (and (at_x12)(at_y9))
 :poss-precondition (and (bridge_11_9_12_9))
 :effect (and (not (at_x12)) (at_x11))
)

(:action move_12_9_13_9
 :parameters ()
 :precondition (and (at_x12)(at_y9))
 :poss-precondition (and (bridge_12_9_13_9))
 :effect (and (not (at_x12)) (at_x13))
)

(:action move_12_9_12_8
 :parameters ()
 :precondition (and (at_x12)(at_y9))
 :poss-precondition (and (bridge_12_8_12_9))
 :effect (and (not (at_y9)) (at_y8))
)

(:action move_12_9_12_10
 :parameters ()
 :precondition (and (at_x12)(at_y9))
 :poss-precondition (and (bridge_12_9_12_10))
 :effect (and (not (at_y9)) (at_y10))
)

(:action move_12_10_11_10
 :parameters ()
 :precondition (and (at_x12)(at_y10))
 :poss-precondition (and (bridge_11_10_12_10))
 :effect (and (not (at_x12)) (at_x11))
)

(:action move_12_10_13_10
 :parameters ()
 :precondition (and (at_x12)(at_y10))
 :poss-precondition (and (bridge_12_10_13_10))
 :effect (and (not (at_x12)) (at_x13))
)

(:action move_12_10_12_9
 :parameters ()
 :precondition (and (at_x12)(at_y10))
 :poss-precondition (and (bridge_12_9_12_10))
 :effect (and (not (at_y10)) (at_y9))
)

(:action move_12_10_12_11
 :parameters ()
 :precondition (and (at_x12)(at_y10))
 :poss-precondition (and (bridge_12_10_12_11))
 :effect (and (not (at_y10)) (at_y11))
)

(:action move_12_11_11_11
 :parameters ()
 :precondition (and (at_x12)(at_y11))
 :poss-precondition (and (bridge_11_11_12_11))
 :effect (and (not (at_x12)) (at_x11))
)

(:action move_12_11_13_11
 :parameters ()
 :precondition (and (at_x12)(at_y11))
 :poss-precondition (and (bridge_12_11_13_11))
 :effect (and (not (at_x12)) (at_x13))
)

(:action move_12_11_12_10
 :parameters ()
 :precondition (and (at_x12)(at_y11))
 :poss-precondition (and (bridge_12_10_12_11))
 :effect (and (not (at_y11)) (at_y10))
)

(:action move_12_11_12_12
 :parameters ()
 :precondition (and (at_x12)(at_y11))
 :poss-precondition (and (bridge_12_11_12_12))
 :effect (and (not (at_y11)) (at_y12))
)

(:action move_12_12_11_12
 :parameters ()
 :precondition (and (at_x12)(at_y12))
 :poss-precondition (and (bridge_11_12_12_12))
 :effect (and (not (at_x12)) (at_x11))
)

(:action move_12_12_13_12
 :parameters ()
 :precondition (and (at_x12)(at_y12))
 :poss-precondition (and (bridge_12_12_13_12))
 :effect (and (not (at_x12)) (at_x13))
)

(:action move_12_12_12_11
 :parameters ()
 :precondition (and (at_x12)(at_y12))
 :poss-precondition (and (bridge_12_11_12_12))
 :effect (and (not (at_y12)) (at_y11))
)

(:action move_12_12_12_13
 :parameters ()
 :precondition (and (at_x12)(at_y12))
 :poss-precondition (and (bridge_12_12_12_13))
 :effect (and (not (at_y12)) (at_y13))
)

(:action move_12_13_11_13
 :parameters ()
 :precondition (and (at_x12)(at_y13))
 :poss-precondition (and (bridge_11_13_12_13))
 :effect (and (not (at_x12)) (at_x11))
)

(:action move_12_13_13_13
 :parameters ()
 :precondition (and (at_x12)(at_y13))
 :poss-precondition (and (bridge_12_13_13_13))
 :effect (and (not (at_x12)) (at_x13))
)

(:action move_12_13_12_12
 :parameters ()
 :precondition (and (at_x12)(at_y13))
 :poss-precondition (and (bridge_12_12_12_13))
 :effect (and (not (at_y13)) (at_y12))
)

(:action move_12_13_12_14
 :parameters ()
 :precondition (and (at_x12)(at_y13))
 :poss-precondition (and (bridge_12_13_12_14))
 :effect (and (not (at_y13)) (at_y14))
)

(:action move_12_14_11_14
 :parameters ()
 :precondition (and (at_x12)(at_y14))
 :poss-precondition (and (bridge_11_14_12_14))
 :effect (and (not (at_x12)) (at_x11))
)

(:action move_12_14_13_14
 :parameters ()
 :precondition (and (at_x12)(at_y14))
 :poss-precondition (and (bridge_12_14_13_14))
 :effect (and (not (at_x12)) (at_x13))
)

(:action move_12_14_12_13
 :parameters ()
 :precondition (and (at_x12)(at_y14))
 :poss-precondition (and (bridge_12_13_12_14))
 :effect (and (not (at_y14)) (at_y13))
)

(:action move_12_14_12_15
 :parameters ()
 :precondition (and (at_x12)(at_y14))
 :poss-precondition (and (bridge_12_14_12_15))
 :effect (and (not (at_y14)) (at_y15))
)

(:action move_12_15_11_15
 :parameters ()
 :precondition (and (at_x12)(at_y15))
 :poss-precondition (and (bridge_11_15_12_15))
 :effect (and (not (at_x12)) (at_x11))
)

(:action move_12_15_13_15
 :parameters ()
 :precondition (and (at_x12)(at_y15))
 :poss-precondition (and (bridge_12_15_13_15))
 :effect (and (not (at_x12)) (at_x13))
)

(:action move_12_15_12_14
 :parameters ()
 :precondition (and (at_x12)(at_y15))
 :poss-precondition (and (bridge_12_14_12_15))
 :effect (and (not (at_y15)) (at_y14))
)

(:action move_12_15_12_16
 :parameters ()
 :precondition (and (at_x12)(at_y15))
 :poss-precondition (and (bridge_12_15_12_16))
 :effect (and (not (at_y15)) (at_y16))
)

(:action move_12_16_11_16
 :parameters ()
 :precondition (and (at_x12)(at_y16))
 :poss-precondition (and (bridge_11_16_12_16))
 :effect (and (not (at_x12)) (at_x11))
)

(:action move_12_16_13_16
 :parameters ()
 :precondition (and (at_x12)(at_y16))
 :poss-precondition (and (bridge_12_16_13_16))
 :effect (and (not (at_x12)) (at_x13))
)

(:action move_12_16_12_15
 :parameters ()
 :precondition (and (at_x12)(at_y16))
 :poss-precondition (and (bridge_12_15_12_16))
 :effect (and (not (at_y16)) (at_y15))
)

(:action move_12_16_12_17
 :parameters ()
 :precondition (and (at_x12)(at_y16))
 :poss-precondition (and (bridge_12_16_12_17))
 :effect (and (not (at_y16)) (at_y17))
)

(:action move_12_17_11_17
 :parameters ()
 :precondition (and (at_x12)(at_y17))
 :poss-precondition (and (bridge_11_17_12_17))
 :effect (and (not (at_x12)) (at_x11))
)

(:action move_12_17_13_17
 :parameters ()
 :precondition (and (at_x12)(at_y17))
 :poss-precondition (and (bridge_12_17_13_17))
 :effect (and (not (at_x12)) (at_x13))
)

(:action move_12_17_12_16
 :parameters ()
 :precondition (and (at_x12)(at_y17))
 :poss-precondition (and (bridge_12_16_12_17))
 :effect (and (not (at_y17)) (at_y16))
)

(:action move_12_17_12_18
 :parameters ()
 :precondition (and (at_x12)(at_y17))
 :poss-precondition (and (bridge_12_17_12_18))
 :effect (and (not (at_y17)) (at_y18))
)

(:action move_12_18_11_18
 :parameters ()
 :precondition (and (at_x12)(at_y18))
 :poss-precondition (and (bridge_11_18_12_18))
 :effect (and (not (at_x12)) (at_x11))
)

(:action move_12_18_13_18
 :parameters ()
 :precondition (and (at_x12)(at_y18))
 :poss-precondition (and (bridge_12_18_13_18))
 :effect (and (not (at_x12)) (at_x13))
)

(:action move_12_18_12_17
 :parameters ()
 :precondition (and (at_x12)(at_y18))
 :poss-precondition (and (bridge_12_17_12_18))
 :effect (and (not (at_y18)) (at_y17))
)

(:action move_12_18_12_19
 :parameters ()
 :precondition (and (at_x12)(at_y18))
 :poss-precondition (and (bridge_12_18_12_19))
 :effect (and (not (at_y18)) (at_y19))
)

(:action move_12_19_11_19
 :parameters ()
 :precondition (and (at_x12)(at_y19))
 :poss-precondition (and (bridge_11_19_12_19))
 :effect (and (not (at_x12)) (at_x11))
)

(:action move_12_19_13_19
 :parameters ()
 :precondition (and (at_x12)(at_y19))
 :poss-precondition (and (bridge_12_19_13_19))
 :effect (and (not (at_x12)) (at_x13))
)

(:action move_12_19_12_18
 :parameters ()
 :precondition (and (at_x12)(at_y19))
 :poss-precondition (and (bridge_12_18_12_19))
 :effect (and (not (at_y19)) (at_y18))
)

(:action move_12_19_12_20
 :parameters ()
 :precondition (and (at_x12)(at_y19))
 :poss-precondition (and (bridge_12_19_12_20))
 :effect (and (not (at_y19)) (at_y20))
)

(:action move_12_20_11_20
 :parameters ()
 :precondition (and (at_x12)(at_y20))
 :poss-precondition (and (bridge_11_20_12_20))
 :effect (and (not (at_x12)) (at_x11))
)

(:action move_12_20_13_20
 :parameters ()
 :precondition (and (at_x12)(at_y20))
 :poss-precondition (and (bridge_12_20_13_20))
 :effect (and (not (at_x12)) (at_x13))
)

(:action move_12_20_12_19
 :parameters ()
 :precondition (and (at_x12)(at_y20))
 :poss-precondition (and (bridge_12_19_12_20))
 :effect (and (not (at_y20)) (at_y19))
)

(:action move_12_20_12_21
 :parameters ()
 :precondition (and (at_x12)(at_y20))
 :poss-precondition (and (bridge_12_20_12_21))
 :effect (and (not (at_y20)) (at_y21))
)

(:action move_12_21_11_21
 :parameters ()
 :precondition (and (at_x12)(at_y21))
 :poss-precondition (and (bridge_11_21_12_21))
 :effect (and (not (at_x12)) (at_x11))
)

(:action move_12_21_13_21
 :parameters ()
 :precondition (and (at_x12)(at_y21))
 :poss-precondition (and (bridge_12_21_13_21))
 :effect (and (not (at_x12)) (at_x13))
)

(:action move_12_21_12_20
 :parameters ()
 :precondition (and (at_x12)(at_y21))
 :poss-precondition (and (bridge_12_20_12_21))
 :effect (and (not (at_y21)) (at_y20))
)

(:action move_12_21_12_22
 :parameters ()
 :precondition (and (at_x12)(at_y21))
 :poss-precondition (and (bridge_12_21_12_22))
 :effect (and (not (at_y21)) (at_y22))
)

(:action move_12_22_11_22
 :parameters ()
 :precondition (and (at_x12)(at_y22))
 :poss-precondition (and (bridge_11_22_12_22))
 :effect (and (not (at_x12)) (at_x11))
)

(:action move_12_22_13_22
 :parameters ()
 :precondition (and (at_x12)(at_y22))
 :poss-precondition (and (bridge_12_22_13_22))
 :effect (and (not (at_x12)) (at_x13))
)

(:action move_12_22_12_21
 :parameters ()
 :precondition (and (at_x12)(at_y22))
 :poss-precondition (and (bridge_12_21_12_22))
 :effect (and (not (at_y22)) (at_y21))
)

(:action move_12_22_12_23
 :parameters ()
 :precondition (and (at_x12)(at_y22))
 :poss-precondition (and (bridge_12_22_12_23))
 :effect (and (not (at_y22)) (at_y23))
)

(:action move_12_23_11_23
 :parameters ()
 :precondition (and (at_x12)(at_y23))
 :poss-precondition (and (bridge_11_23_12_23))
 :effect (and (not (at_x12)) (at_x11))
)

(:action move_12_23_13_23
 :parameters ()
 :precondition (and (at_x12)(at_y23))
 :poss-precondition (and (bridge_12_23_13_23))
 :effect (and (not (at_x12)) (at_x13))
)

(:action move_12_23_12_22
 :parameters ()
 :precondition (and (at_x12)(at_y23))
 :poss-precondition (and (bridge_12_22_12_23))
 :effect (and (not (at_y23)) (at_y22))
)

(:action move_12_23_12_24
 :parameters ()
 :precondition (and (at_x12)(at_y23))
 :poss-precondition (and (bridge_12_23_12_24))
 :effect (and (not (at_y23)) (at_y24))
)

(:action move_12_24_11_24
 :parameters ()
 :precondition (and (at_x12)(at_y24))
 :poss-precondition (and (bridge_11_24_12_24))
 :effect (and (not (at_x12)) (at_x11))
)

(:action move_12_24_13_24
 :parameters ()
 :precondition (and (at_x12)(at_y24))
 :poss-precondition (and (bridge_12_24_13_24))
 :effect (and (not (at_x12)) (at_x13))
)

(:action move_12_24_12_23
 :parameters ()
 :precondition (and (at_x12)(at_y24))
 :poss-precondition (and (bridge_12_23_12_24))
 :effect (and (not (at_y24)) (at_y23))
)

(:action move_12_24_12_25
 :parameters ()
 :precondition (and (at_x12)(at_y24))
 :poss-precondition (and (bridge_12_24_12_25))
 :effect (and (not (at_y24)) (at_y25))
)

(:action move_12_25_11_25
 :parameters ()
 :precondition (and (at_x12)(at_y25))
 :poss-precondition (and (bridge_11_25_12_25))
 :effect (and (not (at_x12)) (at_x11))
)

(:action move_12_25_13_25
 :parameters ()
 :precondition (and (at_x12)(at_y25))
 :poss-precondition (and (bridge_12_25_13_25))
 :effect (and (not (at_x12)) (at_x13))
)

(:action move_12_25_12_24
 :parameters ()
 :precondition (and (at_x12)(at_y25))
 :poss-precondition (and (bridge_12_24_12_25))
 :effect (and (not (at_y25)) (at_y24))
)

(:action move_12_25_12_26
 :parameters ()
 :precondition (and (at_x12)(at_y25))
 :poss-precondition (and (bridge_12_25_12_26))
 :effect (and (not (at_y25)) (at_y26))
)

(:action move_12_26_11_26
 :parameters ()
 :precondition (and (at_x12)(at_y26))
 :poss-precondition (and (bridge_11_26_12_26))
 :effect (and (not (at_x12)) (at_x11))
)

(:action move_12_26_13_26
 :parameters ()
 :precondition (and (at_x12)(at_y26))
 :poss-precondition (and (bridge_12_26_13_26))
 :effect (and (not (at_x12)) (at_x13))
)

(:action move_12_26_12_25
 :parameters ()
 :precondition (and (at_x12)(at_y26))
 :poss-precondition (and (bridge_12_25_12_26))
 :effect (and (not (at_y26)) (at_y25))
)

(:action move_12_26_12_27
 :parameters ()
 :precondition (and (at_x12)(at_y26))
 :poss-precondition (and (bridge_12_26_12_27))
 :effect (and (not (at_y26)) (at_y27))
)

(:action move_12_27_11_27
 :parameters ()
 :precondition (and (at_x12)(at_y27))
 :poss-precondition (and (bridge_11_27_12_27))
 :effect (and (not (at_x12)) (at_x11))
)

(:action move_12_27_13_27
 :parameters ()
 :precondition (and (at_x12)(at_y27))
 :poss-precondition (and (bridge_12_27_13_27))
 :effect (and (not (at_x12)) (at_x13))
)

(:action move_12_27_12_26
 :parameters ()
 :precondition (and (at_x12)(at_y27))
 :poss-precondition (and (bridge_12_26_12_27))
 :effect (and (not (at_y27)) (at_y26))
)

(:action move_12_27_12_28
 :parameters ()
 :precondition (and (at_x12)(at_y27))
 :poss-precondition (and (bridge_12_27_12_28))
 :effect (and (not (at_y27)) (at_y28))
)

(:action move_12_28_11_28
 :parameters ()
 :precondition (and (at_x12)(at_y28))
 :poss-precondition (and (bridge_11_28_12_28))
 :effect (and (not (at_x12)) (at_x11))
)

(:action move_12_28_13_28
 :parameters ()
 :precondition (and (at_x12)(at_y28))
 :poss-precondition (and (bridge_12_28_13_28))
 :effect (and (not (at_x12)) (at_x13))
)

(:action move_12_28_12_27
 :parameters ()
 :precondition (and (at_x12)(at_y28))
 :poss-precondition (and (bridge_12_27_12_28))
 :effect (and (not (at_y28)) (at_y27))
)

(:action move_12_28_12_29
 :parameters ()
 :precondition (and (at_x12)(at_y28))
 :poss-precondition (and (bridge_12_28_12_29))
 :effect (and (not (at_y28)) (at_y29))
)

(:action move_12_29_11_29
 :parameters ()
 :precondition (and (at_x12)(at_y29))
 :poss-precondition (and (bridge_11_29_12_29))
 :effect (and (not (at_x12)) (at_x11))
)

(:action move_12_29_13_29
 :parameters ()
 :precondition (and (at_x12)(at_y29))
 :poss-precondition (and (bridge_12_29_13_29))
 :effect (and (not (at_x12)) (at_x13))
)

(:action move_12_29_12_28
 :parameters ()
 :precondition (and (at_x12)(at_y29))
 :poss-precondition (and (bridge_12_28_12_29))
 :effect (and (not (at_y29)) (at_y28))
)

(:action move_12_29_12_30
 :parameters ()
 :precondition (and (at_x12)(at_y29))
 :poss-precondition (and (bridge_12_29_12_30))
 :effect (and (not (at_y29)) (at_y30))
)

(:action move_12_30_11_30
 :parameters ()
 :precondition (and (at_x12)(at_y30))
 :poss-precondition (and (bridge_11_30_12_30))
 :effect (and (not (at_x12)) (at_x11))
)

(:action move_12_30_13_30
 :parameters ()
 :precondition (and (at_x12)(at_y30))
 :poss-precondition (and (bridge_12_30_13_30))
 :effect (and (not (at_x12)) (at_x13))
)

(:action move_12_30_12_29
 :parameters ()
 :precondition (and (at_x12)(at_y30))
 :poss-precondition (and (bridge_12_29_12_30))
 :effect (and (not (at_y30)) (at_y29))
)

(:action move_12_30_12_31
 :parameters ()
 :precondition (and (at_x12)(at_y30))
 :poss-precondition (and (bridge_12_30_12_31))
 :effect (and (not (at_y30)) (at_y31))
)

(:action move_12_31_11_31
 :parameters ()
 :precondition (and (at_x12)(at_y31))
 :poss-precondition (and (bridge_11_31_12_31))
 :effect (and (not (at_x12)) (at_x11))
)

(:action move_12_31_13_31
 :parameters ()
 :precondition (and (at_x12)(at_y31))
 :poss-precondition (and (bridge_12_31_13_31))
 :effect (and (not (at_x12)) (at_x13))
)

(:action move_12_31_12_30
 :parameters ()
 :precondition (and (at_x12)(at_y31))
 :poss-precondition (and (bridge_12_30_12_31))
 :effect (and (not (at_y31)) (at_y30))
)

(:action move_13_0_12_0
 :parameters ()
 :precondition (and (at_x13)(at_y0))
 :poss-precondition (and (bridge_12_0_13_0))
 :effect (and (not (at_x13)) (at_x12))
)

(:action move_13_0_14_0
 :parameters ()
 :precondition (and (at_x13)(at_y0))
 :poss-precondition (and (bridge_13_0_14_0))
 :effect (and (not (at_x13)) (at_x14))
)

(:action move_13_0_13_1
 :parameters ()
 :precondition (and (at_x13)(at_y0))
 :poss-precondition (and (bridge_13_0_13_1))
 :effect (and (not (at_y0)) (at_y1))
)

(:action move_13_1_12_1
 :parameters ()
 :precondition (and (at_x13)(at_y1))
 :poss-precondition (and (bridge_12_1_13_1))
 :effect (and (not (at_x13)) (at_x12))
)

(:action move_13_1_14_1
 :parameters ()
 :precondition (and (at_x13)(at_y1))
 :poss-precondition (and (bridge_13_1_14_1))
 :effect (and (not (at_x13)) (at_x14))
)

(:action move_13_1_13_0
 :parameters ()
 :precondition (and (at_x13)(at_y1))
 :poss-precondition (and (bridge_13_0_13_1))
 :effect (and (not (at_y1)) (at_y0))
)

(:action move_13_1_13_2
 :parameters ()
 :precondition (and (at_x13)(at_y1))
 :poss-precondition (and (bridge_13_1_13_2))
 :effect (and (not (at_y1)) (at_y2))
)

(:action move_13_2_12_2
 :parameters ()
 :precondition (and (at_x13)(at_y2))
 :poss-precondition (and (bridge_12_2_13_2))
 :effect (and (not (at_x13)) (at_x12))
)

(:action move_13_2_14_2
 :parameters ()
 :precondition (and (at_x13)(at_y2))
 :poss-precondition (and (bridge_13_2_14_2))
 :effect (and (not (at_x13)) (at_x14))
)

(:action move_13_2_13_1
 :parameters ()
 :precondition (and (at_x13)(at_y2))
 :poss-precondition (and (bridge_13_1_13_2))
 :effect (and (not (at_y2)) (at_y1))
)

(:action move_13_2_13_3
 :parameters ()
 :precondition (and (at_x13)(at_y2))
 :poss-precondition (and (bridge_13_2_13_3))
 :effect (and (not (at_y2)) (at_y3))
)

(:action move_13_3_12_3
 :parameters ()
 :precondition (and (at_x13)(at_y3))
 :poss-precondition (and (bridge_12_3_13_3))
 :effect (and (not (at_x13)) (at_x12))
)

(:action move_13_3_14_3
 :parameters ()
 :precondition (and (at_x13)(at_y3))
 :poss-precondition (and (bridge_13_3_14_3))
 :effect (and (not (at_x13)) (at_x14))
)

(:action move_13_3_13_2
 :parameters ()
 :precondition (and (at_x13)(at_y3))
 :poss-precondition (and (bridge_13_2_13_3))
 :effect (and (not (at_y3)) (at_y2))
)

(:action move_13_3_13_4
 :parameters ()
 :precondition (and (at_x13)(at_y3))
 :poss-precondition (and (bridge_13_3_13_4))
 :effect (and (not (at_y3)) (at_y4))
)

(:action move_13_4_12_4
 :parameters ()
 :precondition (and (at_x13)(at_y4))
 :poss-precondition (and (bridge_12_4_13_4))
 :effect (and (not (at_x13)) (at_x12))
)

(:action move_13_4_14_4
 :parameters ()
 :precondition (and (at_x13)(at_y4))
 :poss-precondition (and (bridge_13_4_14_4))
 :effect (and (not (at_x13)) (at_x14))
)

(:action move_13_4_13_3
 :parameters ()
 :precondition (and (at_x13)(at_y4))
 :poss-precondition (and (bridge_13_3_13_4))
 :effect (and (not (at_y4)) (at_y3))
)

(:action move_13_4_13_5
 :parameters ()
 :precondition (and (at_x13)(at_y4))
 :poss-precondition (and (bridge_13_4_13_5))
 :effect (and (not (at_y4)) (at_y5))
)

(:action move_13_5_12_5
 :parameters ()
 :precondition (and (at_x13)(at_y5))
 :poss-precondition (and (bridge_12_5_13_5))
 :effect (and (not (at_x13)) (at_x12))
)

(:action move_13_5_14_5
 :parameters ()
 :precondition (and (at_x13)(at_y5))
 :poss-precondition (and (bridge_13_5_14_5))
 :effect (and (not (at_x13)) (at_x14))
)

(:action move_13_5_13_4
 :parameters ()
 :precondition (and (at_x13)(at_y5))
 :poss-precondition (and (bridge_13_4_13_5))
 :effect (and (not (at_y5)) (at_y4))
)

(:action move_13_5_13_6
 :parameters ()
 :precondition (and (at_x13)(at_y5))
 :poss-precondition (and (bridge_13_5_13_6))
 :effect (and (not (at_y5)) (at_y6))
)

(:action move_13_6_12_6
 :parameters ()
 :precondition (and (at_x13)(at_y6))
 :poss-precondition (and (bridge_12_6_13_6))
 :effect (and (not (at_x13)) (at_x12))
)

(:action move_13_6_14_6
 :parameters ()
 :precondition (and (at_x13)(at_y6))
 :poss-precondition (and (bridge_13_6_14_6))
 :effect (and (not (at_x13)) (at_x14))
)

(:action move_13_6_13_5
 :parameters ()
 :precondition (and (at_x13)(at_y6))
 :poss-precondition (and (bridge_13_5_13_6))
 :effect (and (not (at_y6)) (at_y5))
)

(:action move_13_6_13_7
 :parameters ()
 :precondition (and (at_x13)(at_y6))
 :poss-precondition (and (bridge_13_6_13_7))
 :effect (and (not (at_y6)) (at_y7))
)

(:action move_13_7_12_7
 :parameters ()
 :precondition (and (at_x13)(at_y7))
 :poss-precondition (and (bridge_12_7_13_7))
 :effect (and (not (at_x13)) (at_x12))
)

(:action move_13_7_14_7
 :parameters ()
 :precondition (and (at_x13)(at_y7))
 :poss-precondition (and (bridge_13_7_14_7))
 :effect (and (not (at_x13)) (at_x14))
)

(:action move_13_7_13_6
 :parameters ()
 :precondition (and (at_x13)(at_y7))
 :poss-precondition (and (bridge_13_6_13_7))
 :effect (and (not (at_y7)) (at_y6))
)

(:action move_13_7_13_8
 :parameters ()
 :precondition (and (at_x13)(at_y7))
 :poss-precondition (and (bridge_13_7_13_8))
 :effect (and (not (at_y7)) (at_y8))
)

(:action move_13_8_12_8
 :parameters ()
 :precondition (and (at_x13)(at_y8))
 :poss-precondition (and (bridge_12_8_13_8))
 :effect (and (not (at_x13)) (at_x12))
)

(:action move_13_8_14_8
 :parameters ()
 :precondition (and (at_x13)(at_y8))
 :poss-precondition (and (bridge_13_8_14_8))
 :effect (and (not (at_x13)) (at_x14))
)

(:action move_13_8_13_7
 :parameters ()
 :precondition (and (at_x13)(at_y8))
 :poss-precondition (and (bridge_13_7_13_8))
 :effect (and (not (at_y8)) (at_y7))
)

(:action move_13_8_13_9
 :parameters ()
 :precondition (and (at_x13)(at_y8))
 :poss-precondition (and (bridge_13_8_13_9))
 :effect (and (not (at_y8)) (at_y9))
)

(:action move_13_9_12_9
 :parameters ()
 :precondition (and (at_x13)(at_y9))
 :poss-precondition (and (bridge_12_9_13_9))
 :effect (and (not (at_x13)) (at_x12))
)

(:action move_13_9_14_9
 :parameters ()
 :precondition (and (at_x13)(at_y9))
 :poss-precondition (and (bridge_13_9_14_9))
 :effect (and (not (at_x13)) (at_x14))
)

(:action move_13_9_13_8
 :parameters ()
 :precondition (and (at_x13)(at_y9))
 :poss-precondition (and (bridge_13_8_13_9))
 :effect (and (not (at_y9)) (at_y8))
)

(:action move_13_9_13_10
 :parameters ()
 :precondition (and (at_x13)(at_y9))
 :poss-precondition (and (bridge_13_9_13_10))
 :effect (and (not (at_y9)) (at_y10))
)

(:action move_13_10_12_10
 :parameters ()
 :precondition (and (at_x13)(at_y10))
 :poss-precondition (and (bridge_12_10_13_10))
 :effect (and (not (at_x13)) (at_x12))
)

(:action move_13_10_14_10
 :parameters ()
 :precondition (and (at_x13)(at_y10))
 :poss-precondition (and (bridge_13_10_14_10))
 :effect (and (not (at_x13)) (at_x14))
)

(:action move_13_10_13_9
 :parameters ()
 :precondition (and (at_x13)(at_y10))
 :poss-precondition (and (bridge_13_9_13_10))
 :effect (and (not (at_y10)) (at_y9))
)

(:action move_13_10_13_11
 :parameters ()
 :precondition (and (at_x13)(at_y10))
 :poss-precondition (and (bridge_13_10_13_11))
 :effect (and (not (at_y10)) (at_y11))
)

(:action move_13_11_12_11
 :parameters ()
 :precondition (and (at_x13)(at_y11))
 :poss-precondition (and (bridge_12_11_13_11))
 :effect (and (not (at_x13)) (at_x12))
)

(:action move_13_11_14_11
 :parameters ()
 :precondition (and (at_x13)(at_y11))
 :poss-precondition (and (bridge_13_11_14_11))
 :effect (and (not (at_x13)) (at_x14))
)

(:action move_13_11_13_10
 :parameters ()
 :precondition (and (at_x13)(at_y11))
 :poss-precondition (and (bridge_13_10_13_11))
 :effect (and (not (at_y11)) (at_y10))
)

(:action move_13_11_13_12
 :parameters ()
 :precondition (and (at_x13)(at_y11))
 :poss-precondition (and (bridge_13_11_13_12))
 :effect (and (not (at_y11)) (at_y12))
)

(:action move_13_12_12_12
 :parameters ()
 :precondition (and (at_x13)(at_y12))
 :poss-precondition (and (bridge_12_12_13_12))
 :effect (and (not (at_x13)) (at_x12))
)

(:action move_13_12_14_12
 :parameters ()
 :precondition (and (at_x13)(at_y12))
 :poss-precondition (and (bridge_13_12_14_12))
 :effect (and (not (at_x13)) (at_x14))
)

(:action move_13_12_13_11
 :parameters ()
 :precondition (and (at_x13)(at_y12))
 :poss-precondition (and (bridge_13_11_13_12))
 :effect (and (not (at_y12)) (at_y11))
)

(:action move_13_12_13_13
 :parameters ()
 :precondition (and (at_x13)(at_y12))
 :poss-precondition (and (bridge_13_12_13_13))
 :effect (and (not (at_y12)) (at_y13))
)

(:action move_13_13_12_13
 :parameters ()
 :precondition (and (at_x13)(at_y13))
 :poss-precondition (and (bridge_12_13_13_13))
 :effect (and (not (at_x13)) (at_x12))
)

(:action move_13_13_14_13
 :parameters ()
 :precondition (and (at_x13)(at_y13))
 :poss-precondition (and (bridge_13_13_14_13))
 :effect (and (not (at_x13)) (at_x14))
)

(:action move_13_13_13_12
 :parameters ()
 :precondition (and (at_x13)(at_y13))
 :poss-precondition (and (bridge_13_12_13_13))
 :effect (and (not (at_y13)) (at_y12))
)

(:action move_13_13_13_14
 :parameters ()
 :precondition (and (at_x13)(at_y13))
 :poss-precondition (and (bridge_13_13_13_14))
 :effect (and (not (at_y13)) (at_y14))
)

(:action move_13_14_12_14
 :parameters ()
 :precondition (and (at_x13)(at_y14))
 :poss-precondition (and (bridge_12_14_13_14))
 :effect (and (not (at_x13)) (at_x12))
)

(:action move_13_14_14_14
 :parameters ()
 :precondition (and (at_x13)(at_y14))
 :poss-precondition (and (bridge_13_14_14_14))
 :effect (and (not (at_x13)) (at_x14))
)

(:action move_13_14_13_13
 :parameters ()
 :precondition (and (at_x13)(at_y14))
 :poss-precondition (and (bridge_13_13_13_14))
 :effect (and (not (at_y14)) (at_y13))
)

(:action move_13_14_13_15
 :parameters ()
 :precondition (and (at_x13)(at_y14))
 :poss-precondition (and (bridge_13_14_13_15))
 :effect (and (not (at_y14)) (at_y15))
)

(:action move_13_15_12_15
 :parameters ()
 :precondition (and (at_x13)(at_y15))
 :poss-precondition (and (bridge_12_15_13_15))
 :effect (and (not (at_x13)) (at_x12))
)

(:action move_13_15_14_15
 :parameters ()
 :precondition (and (at_x13)(at_y15))
 :poss-precondition (and (bridge_13_15_14_15))
 :effect (and (not (at_x13)) (at_x14))
)

(:action move_13_15_13_14
 :parameters ()
 :precondition (and (at_x13)(at_y15))
 :poss-precondition (and (bridge_13_14_13_15))
 :effect (and (not (at_y15)) (at_y14))
)

(:action move_13_15_13_16
 :parameters ()
 :precondition (and (at_x13)(at_y15))
 :poss-precondition (and (bridge_13_15_13_16))
 :effect (and (not (at_y15)) (at_y16))
)

(:action move_13_16_12_16
 :parameters ()
 :precondition (and (at_x13)(at_y16))
 :poss-precondition (and (bridge_12_16_13_16))
 :effect (and (not (at_x13)) (at_x12))
)

(:action move_13_16_14_16
 :parameters ()
 :precondition (and (at_x13)(at_y16))
 :poss-precondition (and (bridge_13_16_14_16))
 :effect (and (not (at_x13)) (at_x14))
)

(:action move_13_16_13_15
 :parameters ()
 :precondition (and (at_x13)(at_y16))
 :poss-precondition (and (bridge_13_15_13_16))
 :effect (and (not (at_y16)) (at_y15))
)

(:action move_13_16_13_17
 :parameters ()
 :precondition (and (at_x13)(at_y16))
 :poss-precondition (and (bridge_13_16_13_17))
 :effect (and (not (at_y16)) (at_y17))
)

(:action move_13_17_12_17
 :parameters ()
 :precondition (and (at_x13)(at_y17))
 :poss-precondition (and (bridge_12_17_13_17))
 :effect (and (not (at_x13)) (at_x12))
)

(:action move_13_17_14_17
 :parameters ()
 :precondition (and (at_x13)(at_y17))
 :poss-precondition (and (bridge_13_17_14_17))
 :effect (and (not (at_x13)) (at_x14))
)

(:action move_13_17_13_16
 :parameters ()
 :precondition (and (at_x13)(at_y17))
 :poss-precondition (and (bridge_13_16_13_17))
 :effect (and (not (at_y17)) (at_y16))
)

(:action move_13_17_13_18
 :parameters ()
 :precondition (and (at_x13)(at_y17))
 :poss-precondition (and (bridge_13_17_13_18))
 :effect (and (not (at_y17)) (at_y18))
)

(:action move_13_18_12_18
 :parameters ()
 :precondition (and (at_x13)(at_y18))
 :poss-precondition (and (bridge_12_18_13_18))
 :effect (and (not (at_x13)) (at_x12))
)

(:action move_13_18_14_18
 :parameters ()
 :precondition (and (at_x13)(at_y18))
 :poss-precondition (and (bridge_13_18_14_18))
 :effect (and (not (at_x13)) (at_x14))
)

(:action move_13_18_13_17
 :parameters ()
 :precondition (and (at_x13)(at_y18))
 :poss-precondition (and (bridge_13_17_13_18))
 :effect (and (not (at_y18)) (at_y17))
)

(:action move_13_18_13_19
 :parameters ()
 :precondition (and (at_x13)(at_y18))
 :poss-precondition (and (bridge_13_18_13_19))
 :effect (and (not (at_y18)) (at_y19))
)

(:action move_13_19_12_19
 :parameters ()
 :precondition (and (at_x13)(at_y19))
 :poss-precondition (and (bridge_12_19_13_19))
 :effect (and (not (at_x13)) (at_x12))
)

(:action move_13_19_14_19
 :parameters ()
 :precondition (and (at_x13)(at_y19))
 :poss-precondition (and (bridge_13_19_14_19))
 :effect (and (not (at_x13)) (at_x14))
)

(:action move_13_19_13_18
 :parameters ()
 :precondition (and (at_x13)(at_y19))
 :poss-precondition (and (bridge_13_18_13_19))
 :effect (and (not (at_y19)) (at_y18))
)

(:action move_13_19_13_20
 :parameters ()
 :precondition (and (at_x13)(at_y19))
 :poss-precondition (and (bridge_13_19_13_20))
 :effect (and (not (at_y19)) (at_y20))
)

(:action move_13_20_12_20
 :parameters ()
 :precondition (and (at_x13)(at_y20))
 :poss-precondition (and (bridge_12_20_13_20))
 :effect (and (not (at_x13)) (at_x12))
)

(:action move_13_20_14_20
 :parameters ()
 :precondition (and (at_x13)(at_y20))
 :poss-precondition (and (bridge_13_20_14_20))
 :effect (and (not (at_x13)) (at_x14))
)

(:action move_13_20_13_19
 :parameters ()
 :precondition (and (at_x13)(at_y20))
 :poss-precondition (and (bridge_13_19_13_20))
 :effect (and (not (at_y20)) (at_y19))
)

(:action move_13_20_13_21
 :parameters ()
 :precondition (and (at_x13)(at_y20))
 :poss-precondition (and (bridge_13_20_13_21))
 :effect (and (not (at_y20)) (at_y21))
)

(:action move_13_21_12_21
 :parameters ()
 :precondition (and (at_x13)(at_y21))
 :poss-precondition (and (bridge_12_21_13_21))
 :effect (and (not (at_x13)) (at_x12))
)

(:action move_13_21_14_21
 :parameters ()
 :precondition (and (at_x13)(at_y21))
 :poss-precondition (and (bridge_13_21_14_21))
 :effect (and (not (at_x13)) (at_x14))
)

(:action move_13_21_13_20
 :parameters ()
 :precondition (and (at_x13)(at_y21))
 :poss-precondition (and (bridge_13_20_13_21))
 :effect (and (not (at_y21)) (at_y20))
)

(:action move_13_21_13_22
 :parameters ()
 :precondition (and (at_x13)(at_y21))
 :poss-precondition (and (bridge_13_21_13_22))
 :effect (and (not (at_y21)) (at_y22))
)

(:action move_13_22_12_22
 :parameters ()
 :precondition (and (at_x13)(at_y22))
 :poss-precondition (and (bridge_12_22_13_22))
 :effect (and (not (at_x13)) (at_x12))
)

(:action move_13_22_14_22
 :parameters ()
 :precondition (and (at_x13)(at_y22))
 :poss-precondition (and (bridge_13_22_14_22))
 :effect (and (not (at_x13)) (at_x14))
)

(:action move_13_22_13_21
 :parameters ()
 :precondition (and (at_x13)(at_y22))
 :poss-precondition (and (bridge_13_21_13_22))
 :effect (and (not (at_y22)) (at_y21))
)

(:action move_13_22_13_23
 :parameters ()
 :precondition (and (at_x13)(at_y22))
 :poss-precondition (and (bridge_13_22_13_23))
 :effect (and (not (at_y22)) (at_y23))
)

(:action move_13_23_12_23
 :parameters ()
 :precondition (and (at_x13)(at_y23))
 :poss-precondition (and (bridge_12_23_13_23))
 :effect (and (not (at_x13)) (at_x12))
)

(:action move_13_23_14_23
 :parameters ()
 :precondition (and (at_x13)(at_y23))
 :poss-precondition (and (bridge_13_23_14_23))
 :effect (and (not (at_x13)) (at_x14))
)

(:action move_13_23_13_22
 :parameters ()
 :precondition (and (at_x13)(at_y23))
 :poss-precondition (and (bridge_13_22_13_23))
 :effect (and (not (at_y23)) (at_y22))
)

(:action move_13_23_13_24
 :parameters ()
 :precondition (and (at_x13)(at_y23))
 :poss-precondition (and (bridge_13_23_13_24))
 :effect (and (not (at_y23)) (at_y24))
)

(:action move_13_24_12_24
 :parameters ()
 :precondition (and (at_x13)(at_y24))
 :poss-precondition (and (bridge_12_24_13_24))
 :effect (and (not (at_x13)) (at_x12))
)

(:action move_13_24_14_24
 :parameters ()
 :precondition (and (at_x13)(at_y24))
 :poss-precondition (and (bridge_13_24_14_24))
 :effect (and (not (at_x13)) (at_x14))
)

(:action move_13_24_13_23
 :parameters ()
 :precondition (and (at_x13)(at_y24))
 :poss-precondition (and (bridge_13_23_13_24))
 :effect (and (not (at_y24)) (at_y23))
)

(:action move_13_24_13_25
 :parameters ()
 :precondition (and (at_x13)(at_y24))
 :poss-precondition (and (bridge_13_24_13_25))
 :effect (and (not (at_y24)) (at_y25))
)

(:action move_13_25_12_25
 :parameters ()
 :precondition (and (at_x13)(at_y25))
 :poss-precondition (and (bridge_12_25_13_25))
 :effect (and (not (at_x13)) (at_x12))
)

(:action move_13_25_14_25
 :parameters ()
 :precondition (and (at_x13)(at_y25))
 :poss-precondition (and (bridge_13_25_14_25))
 :effect (and (not (at_x13)) (at_x14))
)

(:action move_13_25_13_24
 :parameters ()
 :precondition (and (at_x13)(at_y25))
 :poss-precondition (and (bridge_13_24_13_25))
 :effect (and (not (at_y25)) (at_y24))
)

(:action move_13_25_13_26
 :parameters ()
 :precondition (and (at_x13)(at_y25))
 :poss-precondition (and (bridge_13_25_13_26))
 :effect (and (not (at_y25)) (at_y26))
)

(:action move_13_26_12_26
 :parameters ()
 :precondition (and (at_x13)(at_y26))
 :poss-precondition (and (bridge_12_26_13_26))
 :effect (and (not (at_x13)) (at_x12))
)

(:action move_13_26_14_26
 :parameters ()
 :precondition (and (at_x13)(at_y26))
 :poss-precondition (and (bridge_13_26_14_26))
 :effect (and (not (at_x13)) (at_x14))
)

(:action move_13_26_13_25
 :parameters ()
 :precondition (and (at_x13)(at_y26))
 :poss-precondition (and (bridge_13_25_13_26))
 :effect (and (not (at_y26)) (at_y25))
)

(:action move_13_26_13_27
 :parameters ()
 :precondition (and (at_x13)(at_y26))
 :poss-precondition (and (bridge_13_26_13_27))
 :effect (and (not (at_y26)) (at_y27))
)

(:action move_13_27_12_27
 :parameters ()
 :precondition (and (at_x13)(at_y27))
 :poss-precondition (and (bridge_12_27_13_27))
 :effect (and (not (at_x13)) (at_x12))
)

(:action move_13_27_14_27
 :parameters ()
 :precondition (and (at_x13)(at_y27))
 :poss-precondition (and (bridge_13_27_14_27))
 :effect (and (not (at_x13)) (at_x14))
)

(:action move_13_27_13_26
 :parameters ()
 :precondition (and (at_x13)(at_y27))
 :poss-precondition (and (bridge_13_26_13_27))
 :effect (and (not (at_y27)) (at_y26))
)

(:action move_13_27_13_28
 :parameters ()
 :precondition (and (at_x13)(at_y27))
 :poss-precondition (and (bridge_13_27_13_28))
 :effect (and (not (at_y27)) (at_y28))
)

(:action move_13_28_12_28
 :parameters ()
 :precondition (and (at_x13)(at_y28))
 :poss-precondition (and (bridge_12_28_13_28))
 :effect (and (not (at_x13)) (at_x12))
)

(:action move_13_28_14_28
 :parameters ()
 :precondition (and (at_x13)(at_y28))
 :poss-precondition (and (bridge_13_28_14_28))
 :effect (and (not (at_x13)) (at_x14))
)

(:action move_13_28_13_27
 :parameters ()
 :precondition (and (at_x13)(at_y28))
 :poss-precondition (and (bridge_13_27_13_28))
 :effect (and (not (at_y28)) (at_y27))
)

(:action move_13_28_13_29
 :parameters ()
 :precondition (and (at_x13)(at_y28))
 :poss-precondition (and (bridge_13_28_13_29))
 :effect (and (not (at_y28)) (at_y29))
)

(:action move_13_29_12_29
 :parameters ()
 :precondition (and (at_x13)(at_y29))
 :poss-precondition (and (bridge_12_29_13_29))
 :effect (and (not (at_x13)) (at_x12))
)

(:action move_13_29_14_29
 :parameters ()
 :precondition (and (at_x13)(at_y29))
 :poss-precondition (and (bridge_13_29_14_29))
 :effect (and (not (at_x13)) (at_x14))
)

(:action move_13_29_13_28
 :parameters ()
 :precondition (and (at_x13)(at_y29))
 :poss-precondition (and (bridge_13_28_13_29))
 :effect (and (not (at_y29)) (at_y28))
)

(:action move_13_29_13_30
 :parameters ()
 :precondition (and (at_x13)(at_y29))
 :poss-precondition (and (bridge_13_29_13_30))
 :effect (and (not (at_y29)) (at_y30))
)

(:action move_13_30_12_30
 :parameters ()
 :precondition (and (at_x13)(at_y30))
 :poss-precondition (and (bridge_12_30_13_30))
 :effect (and (not (at_x13)) (at_x12))
)

(:action move_13_30_14_30
 :parameters ()
 :precondition (and (at_x13)(at_y30))
 :poss-precondition (and (bridge_13_30_14_30))
 :effect (and (not (at_x13)) (at_x14))
)

(:action move_13_30_13_29
 :parameters ()
 :precondition (and (at_x13)(at_y30))
 :poss-precondition (and (bridge_13_29_13_30))
 :effect (and (not (at_y30)) (at_y29))
)

(:action move_13_30_13_31
 :parameters ()
 :precondition (and (at_x13)(at_y30))
 :poss-precondition (and (bridge_13_30_13_31))
 :effect (and (not (at_y30)) (at_y31))
)

(:action move_13_31_12_31
 :parameters ()
 :precondition (and (at_x13)(at_y31))
 :poss-precondition (and (bridge_12_31_13_31))
 :effect (and (not (at_x13)) (at_x12))
)

(:action move_13_31_14_31
 :parameters ()
 :precondition (and (at_x13)(at_y31))
 :poss-precondition (and (bridge_13_31_14_31))
 :effect (and (not (at_x13)) (at_x14))
)

(:action move_13_31_13_30
 :parameters ()
 :precondition (and (at_x13)(at_y31))
 :poss-precondition (and (bridge_13_30_13_31))
 :effect (and (not (at_y31)) (at_y30))
)

(:action move_14_0_13_0
 :parameters ()
 :precondition (and (at_x14)(at_y0))
 :poss-precondition (and (bridge_13_0_14_0))
 :effect (and (not (at_x14)) (at_x13))
)

(:action move_14_0_15_0
 :parameters ()
 :precondition (and (at_x14)(at_y0))
 :poss-precondition (and (bridge_14_0_15_0))
 :effect (and (not (at_x14)) (at_x15))
)

(:action move_14_0_14_1
 :parameters ()
 :precondition (and (at_x14)(at_y0))
 :poss-precondition (and (bridge_14_0_14_1))
 :effect (and (not (at_y0)) (at_y1))
)

(:action move_14_1_13_1
 :parameters ()
 :precondition (and (at_x14)(at_y1))
 :poss-precondition (and (bridge_13_1_14_1))
 :effect (and (not (at_x14)) (at_x13))
)

(:action move_14_1_15_1
 :parameters ()
 :precondition (and (at_x14)(at_y1))
 :poss-precondition (and (bridge_14_1_15_1))
 :effect (and (not (at_x14)) (at_x15))
)

(:action move_14_1_14_0
 :parameters ()
 :precondition (and (at_x14)(at_y1))
 :poss-precondition (and (bridge_14_0_14_1))
 :effect (and (not (at_y1)) (at_y0))
)

(:action move_14_1_14_2
 :parameters ()
 :precondition (and (at_x14)(at_y1))
 :poss-precondition (and (bridge_14_1_14_2))
 :effect (and (not (at_y1)) (at_y2))
)

(:action move_14_2_13_2
 :parameters ()
 :precondition (and (at_x14)(at_y2))
 :poss-precondition (and (bridge_13_2_14_2))
 :effect (and (not (at_x14)) (at_x13))
)

(:action move_14_2_15_2
 :parameters ()
 :precondition (and (at_x14)(at_y2))
 :poss-precondition (and (bridge_14_2_15_2))
 :effect (and (not (at_x14)) (at_x15))
)

(:action move_14_2_14_1
 :parameters ()
 :precondition (and (at_x14)(at_y2))
 :poss-precondition (and (bridge_14_1_14_2))
 :effect (and (not (at_y2)) (at_y1))
)

(:action move_14_2_14_3
 :parameters ()
 :precondition (and (at_x14)(at_y2))
 :poss-precondition (and (bridge_14_2_14_3))
 :effect (and (not (at_y2)) (at_y3))
)

(:action move_14_3_13_3
 :parameters ()
 :precondition (and (at_x14)(at_y3))
 :poss-precondition (and (bridge_13_3_14_3))
 :effect (and (not (at_x14)) (at_x13))
)

(:action move_14_3_15_3
 :parameters ()
 :precondition (and (at_x14)(at_y3))
 :poss-precondition (and (bridge_14_3_15_3))
 :effect (and (not (at_x14)) (at_x15))
)

(:action move_14_3_14_2
 :parameters ()
 :precondition (and (at_x14)(at_y3))
 :poss-precondition (and (bridge_14_2_14_3))
 :effect (and (not (at_y3)) (at_y2))
)

(:action move_14_3_14_4
 :parameters ()
 :precondition (and (at_x14)(at_y3))
 :poss-precondition (and (bridge_14_3_14_4))
 :effect (and (not (at_y3)) (at_y4))
)

(:action move_14_4_13_4
 :parameters ()
 :precondition (and (at_x14)(at_y4))
 :poss-precondition (and (bridge_13_4_14_4))
 :effect (and (not (at_x14)) (at_x13))
)

(:action move_14_4_15_4
 :parameters ()
 :precondition (and (at_x14)(at_y4))
 :poss-precondition (and (bridge_14_4_15_4))
 :effect (and (not (at_x14)) (at_x15))
)

(:action move_14_4_14_3
 :parameters ()
 :precondition (and (at_x14)(at_y4))
 :poss-precondition (and (bridge_14_3_14_4))
 :effect (and (not (at_y4)) (at_y3))
)

(:action move_14_4_14_5
 :parameters ()
 :precondition (and (at_x14)(at_y4))
 :poss-precondition (and (bridge_14_4_14_5))
 :effect (and (not (at_y4)) (at_y5))
)

(:action move_14_5_13_5
 :parameters ()
 :precondition (and (at_x14)(at_y5))
 :poss-precondition (and (bridge_13_5_14_5))
 :effect (and (not (at_x14)) (at_x13))
)

(:action move_14_5_15_5
 :parameters ()
 :precondition (and (at_x14)(at_y5))
 :poss-precondition (and (bridge_14_5_15_5))
 :effect (and (not (at_x14)) (at_x15))
)

(:action move_14_5_14_4
 :parameters ()
 :precondition (and (at_x14)(at_y5))
 :poss-precondition (and (bridge_14_4_14_5))
 :effect (and (not (at_y5)) (at_y4))
)

(:action move_14_5_14_6
 :parameters ()
 :precondition (and (at_x14)(at_y5))
 :poss-precondition (and (bridge_14_5_14_6))
 :effect (and (not (at_y5)) (at_y6))
)

(:action move_14_6_13_6
 :parameters ()
 :precondition (and (at_x14)(at_y6))
 :poss-precondition (and (bridge_13_6_14_6))
 :effect (and (not (at_x14)) (at_x13))
)

(:action move_14_6_15_6
 :parameters ()
 :precondition (and (at_x14)(at_y6))
 :poss-precondition (and (bridge_14_6_15_6))
 :effect (and (not (at_x14)) (at_x15))
)

(:action move_14_6_14_5
 :parameters ()
 :precondition (and (at_x14)(at_y6))
 :poss-precondition (and (bridge_14_5_14_6))
 :effect (and (not (at_y6)) (at_y5))
)

(:action move_14_6_14_7
 :parameters ()
 :precondition (and (at_x14)(at_y6))
 :poss-precondition (and (bridge_14_6_14_7))
 :effect (and (not (at_y6)) (at_y7))
)

(:action move_14_7_13_7
 :parameters ()
 :precondition (and (at_x14)(at_y7))
 :poss-precondition (and (bridge_13_7_14_7))
 :effect (and (not (at_x14)) (at_x13))
)

(:action move_14_7_15_7
 :parameters ()
 :precondition (and (at_x14)(at_y7))
 :poss-precondition (and (bridge_14_7_15_7))
 :effect (and (not (at_x14)) (at_x15))
)

(:action move_14_7_14_6
 :parameters ()
 :precondition (and (at_x14)(at_y7))
 :poss-precondition (and (bridge_14_6_14_7))
 :effect (and (not (at_y7)) (at_y6))
)

(:action move_14_7_14_8
 :parameters ()
 :precondition (and (at_x14)(at_y7))
 :poss-precondition (and (bridge_14_7_14_8))
 :effect (and (not (at_y7)) (at_y8))
)

(:action move_14_8_13_8
 :parameters ()
 :precondition (and (at_x14)(at_y8))
 :poss-precondition (and (bridge_13_8_14_8))
 :effect (and (not (at_x14)) (at_x13))
)

(:action move_14_8_15_8
 :parameters ()
 :precondition (and (at_x14)(at_y8))
 :poss-precondition (and (bridge_14_8_15_8))
 :effect (and (not (at_x14)) (at_x15))
)

(:action move_14_8_14_7
 :parameters ()
 :precondition (and (at_x14)(at_y8))
 :poss-precondition (and (bridge_14_7_14_8))
 :effect (and (not (at_y8)) (at_y7))
)

(:action move_14_8_14_9
 :parameters ()
 :precondition (and (at_x14)(at_y8))
 :poss-precondition (and (bridge_14_8_14_9))
 :effect (and (not (at_y8)) (at_y9))
)

(:action move_14_9_13_9
 :parameters ()
 :precondition (and (at_x14)(at_y9))
 :poss-precondition (and (bridge_13_9_14_9))
 :effect (and (not (at_x14)) (at_x13))
)

(:action move_14_9_15_9
 :parameters ()
 :precondition (and (at_x14)(at_y9))
 :poss-precondition (and (bridge_14_9_15_9))
 :effect (and (not (at_x14)) (at_x15))
)

(:action move_14_9_14_8
 :parameters ()
 :precondition (and (at_x14)(at_y9))
 :poss-precondition (and (bridge_14_8_14_9))
 :effect (and (not (at_y9)) (at_y8))
)

(:action move_14_9_14_10
 :parameters ()
 :precondition (and (at_x14)(at_y9))
 :poss-precondition (and (bridge_14_9_14_10))
 :effect (and (not (at_y9)) (at_y10))
)

(:action move_14_10_13_10
 :parameters ()
 :precondition (and (at_x14)(at_y10))
 :poss-precondition (and (bridge_13_10_14_10))
 :effect (and (not (at_x14)) (at_x13))
)

(:action move_14_10_15_10
 :parameters ()
 :precondition (and (at_x14)(at_y10))
 :poss-precondition (and (bridge_14_10_15_10))
 :effect (and (not (at_x14)) (at_x15))
)

(:action move_14_10_14_9
 :parameters ()
 :precondition (and (at_x14)(at_y10))
 :poss-precondition (and (bridge_14_9_14_10))
 :effect (and (not (at_y10)) (at_y9))
)

(:action move_14_10_14_11
 :parameters ()
 :precondition (and (at_x14)(at_y10))
 :poss-precondition (and (bridge_14_10_14_11))
 :effect (and (not (at_y10)) (at_y11))
)

(:action move_14_11_13_11
 :parameters ()
 :precondition (and (at_x14)(at_y11))
 :poss-precondition (and (bridge_13_11_14_11))
 :effect (and (not (at_x14)) (at_x13))
)

(:action move_14_11_15_11
 :parameters ()
 :precondition (and (at_x14)(at_y11))
 :poss-precondition (and (bridge_14_11_15_11))
 :effect (and (not (at_x14)) (at_x15))
)

(:action move_14_11_14_10
 :parameters ()
 :precondition (and (at_x14)(at_y11))
 :poss-precondition (and (bridge_14_10_14_11))
 :effect (and (not (at_y11)) (at_y10))
)

(:action move_14_11_14_12
 :parameters ()
 :precondition (and (at_x14)(at_y11))
 :poss-precondition (and (bridge_14_11_14_12))
 :effect (and (not (at_y11)) (at_y12))
)

(:action move_14_12_13_12
 :parameters ()
 :precondition (and (at_x14)(at_y12))
 :poss-precondition (and (bridge_13_12_14_12))
 :effect (and (not (at_x14)) (at_x13))
)

(:action move_14_12_15_12
 :parameters ()
 :precondition (and (at_x14)(at_y12))
 :poss-precondition (and (bridge_14_12_15_12))
 :effect (and (not (at_x14)) (at_x15))
)

(:action move_14_12_14_11
 :parameters ()
 :precondition (and (at_x14)(at_y12))
 :poss-precondition (and (bridge_14_11_14_12))
 :effect (and (not (at_y12)) (at_y11))
)

(:action move_14_12_14_13
 :parameters ()
 :precondition (and (at_x14)(at_y12))
 :poss-precondition (and (bridge_14_12_14_13))
 :effect (and (not (at_y12)) (at_y13))
)

(:action move_14_13_13_13
 :parameters ()
 :precondition (and (at_x14)(at_y13))
 :poss-precondition (and (bridge_13_13_14_13))
 :effect (and (not (at_x14)) (at_x13))
)

(:action move_14_13_15_13
 :parameters ()
 :precondition (and (at_x14)(at_y13))
 :poss-precondition (and (bridge_14_13_15_13))
 :effect (and (not (at_x14)) (at_x15))
)

(:action move_14_13_14_12
 :parameters ()
 :precondition (and (at_x14)(at_y13))
 :poss-precondition (and (bridge_14_12_14_13))
 :effect (and (not (at_y13)) (at_y12))
)

(:action move_14_13_14_14
 :parameters ()
 :precondition (and (at_x14)(at_y13))
 :poss-precondition (and (bridge_14_13_14_14))
 :effect (and (not (at_y13)) (at_y14))
)

(:action move_14_14_13_14
 :parameters ()
 :precondition (and (at_x14)(at_y14))
 :poss-precondition (and (bridge_13_14_14_14))
 :effect (and (not (at_x14)) (at_x13))
)

(:action move_14_14_15_14
 :parameters ()
 :precondition (and (at_x14)(at_y14))
 :poss-precondition (and (bridge_14_14_15_14))
 :effect (and (not (at_x14)) (at_x15))
)

(:action move_14_14_14_13
 :parameters ()
 :precondition (and (at_x14)(at_y14))
 :poss-precondition (and (bridge_14_13_14_14))
 :effect (and (not (at_y14)) (at_y13))
)

(:action move_14_14_14_15
 :parameters ()
 :precondition (and (at_x14)(at_y14))
 :poss-precondition (and (bridge_14_14_14_15))
 :effect (and (not (at_y14)) (at_y15))
)

(:action move_14_15_13_15
 :parameters ()
 :precondition (and (at_x14)(at_y15))
 :poss-precondition (and (bridge_13_15_14_15))
 :effect (and (not (at_x14)) (at_x13))
)

(:action move_14_15_15_15
 :parameters ()
 :precondition (and (at_x14)(at_y15))
 :poss-precondition (and (bridge_14_15_15_15))
 :effect (and (not (at_x14)) (at_x15))
)

(:action move_14_15_14_14
 :parameters ()
 :precondition (and (at_x14)(at_y15))
 :poss-precondition (and (bridge_14_14_14_15))
 :effect (and (not (at_y15)) (at_y14))
)

(:action move_14_15_14_16
 :parameters ()
 :precondition (and (at_x14)(at_y15))
 :poss-precondition (and (bridge_14_15_14_16))
 :effect (and (not (at_y15)) (at_y16))
)

(:action move_14_16_13_16
 :parameters ()
 :precondition (and (at_x14)(at_y16))
 :poss-precondition (and (bridge_13_16_14_16))
 :effect (and (not (at_x14)) (at_x13))
)

(:action move_14_16_15_16
 :parameters ()
 :precondition (and (at_x14)(at_y16))
 :poss-precondition (and (bridge_14_16_15_16))
 :effect (and (not (at_x14)) (at_x15))
)

(:action move_14_16_14_15
 :parameters ()
 :precondition (and (at_x14)(at_y16))
 :poss-precondition (and (bridge_14_15_14_16))
 :effect (and (not (at_y16)) (at_y15))
)

(:action move_14_16_14_17
 :parameters ()
 :precondition (and (at_x14)(at_y16))
 :poss-precondition (and (bridge_14_16_14_17))
 :effect (and (not (at_y16)) (at_y17))
)

(:action move_14_17_13_17
 :parameters ()
 :precondition (and (at_x14)(at_y17))
 :poss-precondition (and (bridge_13_17_14_17))
 :effect (and (not (at_x14)) (at_x13))
)

(:action move_14_17_15_17
 :parameters ()
 :precondition (and (at_x14)(at_y17))
 :poss-precondition (and (bridge_14_17_15_17))
 :effect (and (not (at_x14)) (at_x15))
)

(:action move_14_17_14_16
 :parameters ()
 :precondition (and (at_x14)(at_y17))
 :poss-precondition (and (bridge_14_16_14_17))
 :effect (and (not (at_y17)) (at_y16))
)

(:action move_14_17_14_18
 :parameters ()
 :precondition (and (at_x14)(at_y17))
 :poss-precondition (and (bridge_14_17_14_18))
 :effect (and (not (at_y17)) (at_y18))
)

(:action move_14_18_13_18
 :parameters ()
 :precondition (and (at_x14)(at_y18))
 :poss-precondition (and (bridge_13_18_14_18))
 :effect (and (not (at_x14)) (at_x13))
)

(:action move_14_18_15_18
 :parameters ()
 :precondition (and (at_x14)(at_y18))
 :poss-precondition (and (bridge_14_18_15_18))
 :effect (and (not (at_x14)) (at_x15))
)

(:action move_14_18_14_17
 :parameters ()
 :precondition (and (at_x14)(at_y18))
 :poss-precondition (and (bridge_14_17_14_18))
 :effect (and (not (at_y18)) (at_y17))
)

(:action move_14_18_14_19
 :parameters ()
 :precondition (and (at_x14)(at_y18))
 :poss-precondition (and (bridge_14_18_14_19))
 :effect (and (not (at_y18)) (at_y19))
)

(:action move_14_19_13_19
 :parameters ()
 :precondition (and (at_x14)(at_y19))
 :poss-precondition (and (bridge_13_19_14_19))
 :effect (and (not (at_x14)) (at_x13))
)

(:action move_14_19_15_19
 :parameters ()
 :precondition (and (at_x14)(at_y19))
 :poss-precondition (and (bridge_14_19_15_19))
 :effect (and (not (at_x14)) (at_x15))
)

(:action move_14_19_14_18
 :parameters ()
 :precondition (and (at_x14)(at_y19))
 :poss-precondition (and (bridge_14_18_14_19))
 :effect (and (not (at_y19)) (at_y18))
)

(:action move_14_19_14_20
 :parameters ()
 :precondition (and (at_x14)(at_y19))
 :poss-precondition (and (bridge_14_19_14_20))
 :effect (and (not (at_y19)) (at_y20))
)

(:action move_14_20_13_20
 :parameters ()
 :precondition (and (at_x14)(at_y20))
 :poss-precondition (and (bridge_13_20_14_20))
 :effect (and (not (at_x14)) (at_x13))
)

(:action move_14_20_15_20
 :parameters ()
 :precondition (and (at_x14)(at_y20))
 :poss-precondition (and (bridge_14_20_15_20))
 :effect (and (not (at_x14)) (at_x15))
)

(:action move_14_20_14_19
 :parameters ()
 :precondition (and (at_x14)(at_y20))
 :poss-precondition (and (bridge_14_19_14_20))
 :effect (and (not (at_y20)) (at_y19))
)

(:action move_14_20_14_21
 :parameters ()
 :precondition (and (at_x14)(at_y20))
 :poss-precondition (and (bridge_14_20_14_21))
 :effect (and (not (at_y20)) (at_y21))
)

(:action move_14_21_13_21
 :parameters ()
 :precondition (and (at_x14)(at_y21))
 :poss-precondition (and (bridge_13_21_14_21))
 :effect (and (not (at_x14)) (at_x13))
)

(:action move_14_21_15_21
 :parameters ()
 :precondition (and (at_x14)(at_y21))
 :poss-precondition (and (bridge_14_21_15_21))
 :effect (and (not (at_x14)) (at_x15))
)

(:action move_14_21_14_20
 :parameters ()
 :precondition (and (at_x14)(at_y21))
 :poss-precondition (and (bridge_14_20_14_21))
 :effect (and (not (at_y21)) (at_y20))
)

(:action move_14_21_14_22
 :parameters ()
 :precondition (and (at_x14)(at_y21))
 :poss-precondition (and (bridge_14_21_14_22))
 :effect (and (not (at_y21)) (at_y22))
)

(:action move_14_22_13_22
 :parameters ()
 :precondition (and (at_x14)(at_y22))
 :poss-precondition (and (bridge_13_22_14_22))
 :effect (and (not (at_x14)) (at_x13))
)

(:action move_14_22_15_22
 :parameters ()
 :precondition (and (at_x14)(at_y22))
 :poss-precondition (and (bridge_14_22_15_22))
 :effect (and (not (at_x14)) (at_x15))
)

(:action move_14_22_14_21
 :parameters ()
 :precondition (and (at_x14)(at_y22))
 :poss-precondition (and (bridge_14_21_14_22))
 :effect (and (not (at_y22)) (at_y21))
)

(:action move_14_22_14_23
 :parameters ()
 :precondition (and (at_x14)(at_y22))
 :poss-precondition (and (bridge_14_22_14_23))
 :effect (and (not (at_y22)) (at_y23))
)

(:action move_14_23_13_23
 :parameters ()
 :precondition (and (at_x14)(at_y23))
 :poss-precondition (and (bridge_13_23_14_23))
 :effect (and (not (at_x14)) (at_x13))
)

(:action move_14_23_15_23
 :parameters ()
 :precondition (and (at_x14)(at_y23))
 :poss-precondition (and (bridge_14_23_15_23))
 :effect (and (not (at_x14)) (at_x15))
)

(:action move_14_23_14_22
 :parameters ()
 :precondition (and (at_x14)(at_y23))
 :poss-precondition (and (bridge_14_22_14_23))
 :effect (and (not (at_y23)) (at_y22))
)

(:action move_14_23_14_24
 :parameters ()
 :precondition (and (at_x14)(at_y23))
 :poss-precondition (and (bridge_14_23_14_24))
 :effect (and (not (at_y23)) (at_y24))
)

(:action move_14_24_13_24
 :parameters ()
 :precondition (and (at_x14)(at_y24))
 :poss-precondition (and (bridge_13_24_14_24))
 :effect (and (not (at_x14)) (at_x13))
)

(:action move_14_24_15_24
 :parameters ()
 :precondition (and (at_x14)(at_y24))
 :poss-precondition (and (bridge_14_24_15_24))
 :effect (and (not (at_x14)) (at_x15))
)

(:action move_14_24_14_23
 :parameters ()
 :precondition (and (at_x14)(at_y24))
 :poss-precondition (and (bridge_14_23_14_24))
 :effect (and (not (at_y24)) (at_y23))
)

(:action move_14_24_14_25
 :parameters ()
 :precondition (and (at_x14)(at_y24))
 :poss-precondition (and (bridge_14_24_14_25))
 :effect (and (not (at_y24)) (at_y25))
)

(:action move_14_25_13_25
 :parameters ()
 :precondition (and (at_x14)(at_y25))
 :poss-precondition (and (bridge_13_25_14_25))
 :effect (and (not (at_x14)) (at_x13))
)

(:action move_14_25_15_25
 :parameters ()
 :precondition (and (at_x14)(at_y25))
 :poss-precondition (and (bridge_14_25_15_25))
 :effect (and (not (at_x14)) (at_x15))
)

(:action move_14_25_14_24
 :parameters ()
 :precondition (and (at_x14)(at_y25))
 :poss-precondition (and (bridge_14_24_14_25))
 :effect (and (not (at_y25)) (at_y24))
)

(:action move_14_25_14_26
 :parameters ()
 :precondition (and (at_x14)(at_y25))
 :poss-precondition (and (bridge_14_25_14_26))
 :effect (and (not (at_y25)) (at_y26))
)

(:action move_14_26_13_26
 :parameters ()
 :precondition (and (at_x14)(at_y26))
 :poss-precondition (and (bridge_13_26_14_26))
 :effect (and (not (at_x14)) (at_x13))
)

(:action move_14_26_15_26
 :parameters ()
 :precondition (and (at_x14)(at_y26))
 :poss-precondition (and (bridge_14_26_15_26))
 :effect (and (not (at_x14)) (at_x15))
)

(:action move_14_26_14_25
 :parameters ()
 :precondition (and (at_x14)(at_y26))
 :poss-precondition (and (bridge_14_25_14_26))
 :effect (and (not (at_y26)) (at_y25))
)

(:action move_14_26_14_27
 :parameters ()
 :precondition (and (at_x14)(at_y26))
 :poss-precondition (and (bridge_14_26_14_27))
 :effect (and (not (at_y26)) (at_y27))
)

(:action move_14_27_13_27
 :parameters ()
 :precondition (and (at_x14)(at_y27))
 :poss-precondition (and (bridge_13_27_14_27))
 :effect (and (not (at_x14)) (at_x13))
)

(:action move_14_27_15_27
 :parameters ()
 :precondition (and (at_x14)(at_y27))
 :poss-precondition (and (bridge_14_27_15_27))
 :effect (and (not (at_x14)) (at_x15))
)

(:action move_14_27_14_26
 :parameters ()
 :precondition (and (at_x14)(at_y27))
 :poss-precondition (and (bridge_14_26_14_27))
 :effect (and (not (at_y27)) (at_y26))
)

(:action move_14_27_14_28
 :parameters ()
 :precondition (and (at_x14)(at_y27))
 :poss-precondition (and (bridge_14_27_14_28))
 :effect (and (not (at_y27)) (at_y28))
)

(:action move_14_28_13_28
 :parameters ()
 :precondition (and (at_x14)(at_y28))
 :poss-precondition (and (bridge_13_28_14_28))
 :effect (and (not (at_x14)) (at_x13))
)

(:action move_14_28_15_28
 :parameters ()
 :precondition (and (at_x14)(at_y28))
 :poss-precondition (and (bridge_14_28_15_28))
 :effect (and (not (at_x14)) (at_x15))
)

(:action move_14_28_14_27
 :parameters ()
 :precondition (and (at_x14)(at_y28))
 :poss-precondition (and (bridge_14_27_14_28))
 :effect (and (not (at_y28)) (at_y27))
)

(:action move_14_28_14_29
 :parameters ()
 :precondition (and (at_x14)(at_y28))
 :poss-precondition (and (bridge_14_28_14_29))
 :effect (and (not (at_y28)) (at_y29))
)

(:action move_14_29_13_29
 :parameters ()
 :precondition (and (at_x14)(at_y29))
 :poss-precondition (and (bridge_13_29_14_29))
 :effect (and (not (at_x14)) (at_x13))
)

(:action move_14_29_15_29
 :parameters ()
 :precondition (and (at_x14)(at_y29))
 :poss-precondition (and (bridge_14_29_15_29))
 :effect (and (not (at_x14)) (at_x15))
)

(:action move_14_29_14_28
 :parameters ()
 :precondition (and (at_x14)(at_y29))
 :poss-precondition (and (bridge_14_28_14_29))
 :effect (and (not (at_y29)) (at_y28))
)

(:action move_14_29_14_30
 :parameters ()
 :precondition (and (at_x14)(at_y29))
 :poss-precondition (and (bridge_14_29_14_30))
 :effect (and (not (at_y29)) (at_y30))
)

(:action move_14_30_13_30
 :parameters ()
 :precondition (and (at_x14)(at_y30))
 :poss-precondition (and (bridge_13_30_14_30))
 :effect (and (not (at_x14)) (at_x13))
)

(:action move_14_30_15_30
 :parameters ()
 :precondition (and (at_x14)(at_y30))
 :poss-precondition (and (bridge_14_30_15_30))
 :effect (and (not (at_x14)) (at_x15))
)

(:action move_14_30_14_29
 :parameters ()
 :precondition (and (at_x14)(at_y30))
 :poss-precondition (and (bridge_14_29_14_30))
 :effect (and (not (at_y30)) (at_y29))
)

(:action move_14_30_14_31
 :parameters ()
 :precondition (and (at_x14)(at_y30))
 :poss-precondition (and (bridge_14_30_14_31))
 :effect (and (not (at_y30)) (at_y31))
)

(:action move_14_31_13_31
 :parameters ()
 :precondition (and (at_x14)(at_y31))
 :poss-precondition (and (bridge_13_31_14_31))
 :effect (and (not (at_x14)) (at_x13))
)

(:action move_14_31_15_31
 :parameters ()
 :precondition (and (at_x14)(at_y31))
 :poss-precondition (and (bridge_14_31_15_31))
 :effect (and (not (at_x14)) (at_x15))
)

(:action move_14_31_14_30
 :parameters ()
 :precondition (and (at_x14)(at_y31))
 :poss-precondition (and (bridge_14_30_14_31))
 :effect (and (not (at_y31)) (at_y30))
)

(:action move_15_0_14_0
 :parameters ()
 :precondition (and (at_x15)(at_y0))
 :poss-precondition (and (bridge_14_0_15_0))
 :effect (and (not (at_x15)) (at_x14))
)

(:action move_15_0_16_0
 :parameters ()
 :precondition (and (at_x15)(at_y0))
 :poss-precondition (and (bridge_15_0_16_0))
 :effect (and (not (at_x15)) (at_x16))
)

(:action move_15_0_15_1
 :parameters ()
 :precondition (and (at_x15)(at_y0))
 :poss-precondition (and (bridge_15_0_15_1))
 :effect (and (not (at_y0)) (at_y1))
)

(:action move_15_1_14_1
 :parameters ()
 :precondition (and (at_x15)(at_y1))
 :poss-precondition (and (bridge_14_1_15_1))
 :effect (and (not (at_x15)) (at_x14))
)

(:action move_15_1_16_1
 :parameters ()
 :precondition (and (at_x15)(at_y1))
 :poss-precondition (and (bridge_15_1_16_1))
 :effect (and (not (at_x15)) (at_x16))
)

(:action move_15_1_15_0
 :parameters ()
 :precondition (and (at_x15)(at_y1))
 :poss-precondition (and (bridge_15_0_15_1))
 :effect (and (not (at_y1)) (at_y0))
)

(:action move_15_1_15_2
 :parameters ()
 :precondition (and (at_x15)(at_y1))
 :poss-precondition (and (bridge_15_1_15_2))
 :effect (and (not (at_y1)) (at_y2))
)

(:action move_15_2_14_2
 :parameters ()
 :precondition (and (at_x15)(at_y2))
 :poss-precondition (and (bridge_14_2_15_2))
 :effect (and (not (at_x15)) (at_x14))
)

(:action move_15_2_16_2
 :parameters ()
 :precondition (and (at_x15)(at_y2))
 :poss-precondition (and (bridge_15_2_16_2))
 :effect (and (not (at_x15)) (at_x16))
)

(:action move_15_2_15_1
 :parameters ()
 :precondition (and (at_x15)(at_y2))
 :poss-precondition (and (bridge_15_1_15_2))
 :effect (and (not (at_y2)) (at_y1))
)

(:action move_15_2_15_3
 :parameters ()
 :precondition (and (at_x15)(at_y2))
 :poss-precondition (and (bridge_15_2_15_3))
 :effect (and (not (at_y2)) (at_y3))
)

(:action move_15_3_14_3
 :parameters ()
 :precondition (and (at_x15)(at_y3))
 :poss-precondition (and (bridge_14_3_15_3))
 :effect (and (not (at_x15)) (at_x14))
)

(:action move_15_3_16_3
 :parameters ()
 :precondition (and (at_x15)(at_y3))
 :poss-precondition (and (bridge_15_3_16_3))
 :effect (and (not (at_x15)) (at_x16))
)

(:action move_15_3_15_2
 :parameters ()
 :precondition (and (at_x15)(at_y3))
 :poss-precondition (and (bridge_15_2_15_3))
 :effect (and (not (at_y3)) (at_y2))
)

(:action move_15_3_15_4
 :parameters ()
 :precondition (and (at_x15)(at_y3))
 :poss-precondition (and (bridge_15_3_15_4))
 :effect (and (not (at_y3)) (at_y4))
)

(:action move_15_4_14_4
 :parameters ()
 :precondition (and (at_x15)(at_y4))
 :poss-precondition (and (bridge_14_4_15_4))
 :effect (and (not (at_x15)) (at_x14))
)

(:action move_15_4_16_4
 :parameters ()
 :precondition (and (at_x15)(at_y4))
 :poss-precondition (and (bridge_15_4_16_4))
 :effect (and (not (at_x15)) (at_x16))
)

(:action move_15_4_15_3
 :parameters ()
 :precondition (and (at_x15)(at_y4))
 :poss-precondition (and (bridge_15_3_15_4))
 :effect (and (not (at_y4)) (at_y3))
)

(:action move_15_4_15_5
 :parameters ()
 :precondition (and (at_x15)(at_y4))
 :poss-precondition (and (bridge_15_4_15_5))
 :effect (and (not (at_y4)) (at_y5))
)

(:action move_15_5_14_5
 :parameters ()
 :precondition (and (at_x15)(at_y5))
 :poss-precondition (and (bridge_14_5_15_5))
 :effect (and (not (at_x15)) (at_x14))
)

(:action move_15_5_16_5
 :parameters ()
 :precondition (and (at_x15)(at_y5))
 :poss-precondition (and (bridge_15_5_16_5))
 :effect (and (not (at_x15)) (at_x16))
)

(:action move_15_5_15_4
 :parameters ()
 :precondition (and (at_x15)(at_y5))
 :poss-precondition (and (bridge_15_4_15_5))
 :effect (and (not (at_y5)) (at_y4))
)

(:action move_15_5_15_6
 :parameters ()
 :precondition (and (at_x15)(at_y5))
 :poss-precondition (and (bridge_15_5_15_6))
 :effect (and (not (at_y5)) (at_y6))
)

(:action move_15_6_14_6
 :parameters ()
 :precondition (and (at_x15)(at_y6))
 :poss-precondition (and (bridge_14_6_15_6))
 :effect (and (not (at_x15)) (at_x14))
)

(:action move_15_6_16_6
 :parameters ()
 :precondition (and (at_x15)(at_y6))
 :poss-precondition (and (bridge_15_6_16_6))
 :effect (and (not (at_x15)) (at_x16))
)

(:action move_15_6_15_5
 :parameters ()
 :precondition (and (at_x15)(at_y6))
 :poss-precondition (and (bridge_15_5_15_6))
 :effect (and (not (at_y6)) (at_y5))
)

(:action move_15_6_15_7
 :parameters ()
 :precondition (and (at_x15)(at_y6))
 :poss-precondition (and (bridge_15_6_15_7))
 :effect (and (not (at_y6)) (at_y7))
)

(:action move_15_7_14_7
 :parameters ()
 :precondition (and (at_x15)(at_y7))
 :poss-precondition (and (bridge_14_7_15_7))
 :effect (and (not (at_x15)) (at_x14))
)

(:action move_15_7_16_7
 :parameters ()
 :precondition (and (at_x15)(at_y7))
 :poss-precondition (and (bridge_15_7_16_7))
 :effect (and (not (at_x15)) (at_x16))
)

(:action move_15_7_15_6
 :parameters ()
 :precondition (and (at_x15)(at_y7))
 :poss-precondition (and (bridge_15_6_15_7))
 :effect (and (not (at_y7)) (at_y6))
)

(:action move_15_7_15_8
 :parameters ()
 :precondition (and (at_x15)(at_y7))
 :poss-precondition (and (bridge_15_7_15_8))
 :effect (and (not (at_y7)) (at_y8))
)

(:action move_15_8_14_8
 :parameters ()
 :precondition (and (at_x15)(at_y8))
 :poss-precondition (and (bridge_14_8_15_8))
 :effect (and (not (at_x15)) (at_x14))
)

(:action move_15_8_16_8
 :parameters ()
 :precondition (and (at_x15)(at_y8))
 :poss-precondition (and (bridge_15_8_16_8))
 :effect (and (not (at_x15)) (at_x16))
)

(:action move_15_8_15_7
 :parameters ()
 :precondition (and (at_x15)(at_y8))
 :poss-precondition (and (bridge_15_7_15_8))
 :effect (and (not (at_y8)) (at_y7))
)

(:action move_15_8_15_9
 :parameters ()
 :precondition (and (at_x15)(at_y8))
 :poss-precondition (and (bridge_15_8_15_9))
 :effect (and (not (at_y8)) (at_y9))
)

(:action move_15_9_14_9
 :parameters ()
 :precondition (and (at_x15)(at_y9))
 :poss-precondition (and (bridge_14_9_15_9))
 :effect (and (not (at_x15)) (at_x14))
)

(:action move_15_9_16_9
 :parameters ()
 :precondition (and (at_x15)(at_y9))
 :poss-precondition (and (bridge_15_9_16_9))
 :effect (and (not (at_x15)) (at_x16))
)

(:action move_15_9_15_8
 :parameters ()
 :precondition (and (at_x15)(at_y9))
 :poss-precondition (and (bridge_15_8_15_9))
 :effect (and (not (at_y9)) (at_y8))
)

(:action move_15_9_15_10
 :parameters ()
 :precondition (and (at_x15)(at_y9))
 :poss-precondition (and (bridge_15_9_15_10))
 :effect (and (not (at_y9)) (at_y10))
)

(:action move_15_10_14_10
 :parameters ()
 :precondition (and (at_x15)(at_y10))
 :poss-precondition (and (bridge_14_10_15_10))
 :effect (and (not (at_x15)) (at_x14))
)

(:action move_15_10_16_10
 :parameters ()
 :precondition (and (at_x15)(at_y10))
 :poss-precondition (and (bridge_15_10_16_10))
 :effect (and (not (at_x15)) (at_x16))
)

(:action move_15_10_15_9
 :parameters ()
 :precondition (and (at_x15)(at_y10))
 :poss-precondition (and (bridge_15_9_15_10))
 :effect (and (not (at_y10)) (at_y9))
)

(:action move_15_10_15_11
 :parameters ()
 :precondition (and (at_x15)(at_y10))
 :poss-precondition (and (bridge_15_10_15_11))
 :effect (and (not (at_y10)) (at_y11))
)

(:action move_15_11_14_11
 :parameters ()
 :precondition (and (at_x15)(at_y11))
 :poss-precondition (and (bridge_14_11_15_11))
 :effect (and (not (at_x15)) (at_x14))
)

(:action move_15_11_16_11
 :parameters ()
 :precondition (and (at_x15)(at_y11))
 :poss-precondition (and (bridge_15_11_16_11))
 :effect (and (not (at_x15)) (at_x16))
)

(:action move_15_11_15_10
 :parameters ()
 :precondition (and (at_x15)(at_y11))
 :poss-precondition (and (bridge_15_10_15_11))
 :effect (and (not (at_y11)) (at_y10))
)

(:action move_15_11_15_12
 :parameters ()
 :precondition (and (at_x15)(at_y11))
 :poss-precondition (and (bridge_15_11_15_12))
 :effect (and (not (at_y11)) (at_y12))
)

(:action move_15_12_14_12
 :parameters ()
 :precondition (and (at_x15)(at_y12))
 :poss-precondition (and (bridge_14_12_15_12))
 :effect (and (not (at_x15)) (at_x14))
)

(:action move_15_12_16_12
 :parameters ()
 :precondition (and (at_x15)(at_y12))
 :poss-precondition (and (bridge_15_12_16_12))
 :effect (and (not (at_x15)) (at_x16))
)

(:action move_15_12_15_11
 :parameters ()
 :precondition (and (at_x15)(at_y12))
 :poss-precondition (and (bridge_15_11_15_12))
 :effect (and (not (at_y12)) (at_y11))
)

(:action move_15_12_15_13
 :parameters ()
 :precondition (and (at_x15)(at_y12))
 :poss-precondition (and (bridge_15_12_15_13))
 :effect (and (not (at_y12)) (at_y13))
)

(:action move_15_13_14_13
 :parameters ()
 :precondition (and (at_x15)(at_y13))
 :poss-precondition (and (bridge_14_13_15_13))
 :effect (and (not (at_x15)) (at_x14))
)

(:action move_15_13_16_13
 :parameters ()
 :precondition (and (at_x15)(at_y13))
 :poss-precondition (and (bridge_15_13_16_13))
 :effect (and (not (at_x15)) (at_x16))
)

(:action move_15_13_15_12
 :parameters ()
 :precondition (and (at_x15)(at_y13))
 :poss-precondition (and (bridge_15_12_15_13))
 :effect (and (not (at_y13)) (at_y12))
)

(:action move_15_13_15_14
 :parameters ()
 :precondition (and (at_x15)(at_y13))
 :poss-precondition (and (bridge_15_13_15_14))
 :effect (and (not (at_y13)) (at_y14))
)

(:action move_15_14_14_14
 :parameters ()
 :precondition (and (at_x15)(at_y14))
 :poss-precondition (and (bridge_14_14_15_14))
 :effect (and (not (at_x15)) (at_x14))
)

(:action move_15_14_16_14
 :parameters ()
 :precondition (and (at_x15)(at_y14))
 :poss-precondition (and (bridge_15_14_16_14))
 :effect (and (not (at_x15)) (at_x16))
)

(:action move_15_14_15_13
 :parameters ()
 :precondition (and (at_x15)(at_y14))
 :poss-precondition (and (bridge_15_13_15_14))
 :effect (and (not (at_y14)) (at_y13))
)

(:action move_15_14_15_15
 :parameters ()
 :precondition (and (at_x15)(at_y14))
 :poss-precondition (and (bridge_15_14_15_15))
 :effect (and (not (at_y14)) (at_y15))
)

(:action move_15_15_14_15
 :parameters ()
 :precondition (and (at_x15)(at_y15))
 :poss-precondition (and (bridge_14_15_15_15))
 :effect (and (not (at_x15)) (at_x14))
)

(:action move_15_15_16_15
 :parameters ()
 :precondition (and (at_x15)(at_y15))
 :poss-precondition (and (bridge_15_15_16_15))
 :effect (and (not (at_x15)) (at_x16))
)

(:action move_15_15_15_14
 :parameters ()
 :precondition (and (at_x15)(at_y15))
 :poss-precondition (and (bridge_15_14_15_15))
 :effect (and (not (at_y15)) (at_y14))
)

(:action move_15_15_15_16
 :parameters ()
 :precondition (and (at_x15)(at_y15))
 :poss-precondition (and (bridge_15_15_15_16))
 :effect (and (not (at_y15)) (at_y16))
)

(:action move_15_16_14_16
 :parameters ()
 :precondition (and (at_x15)(at_y16))
 :poss-precondition (and (bridge_14_16_15_16))
 :effect (and (not (at_x15)) (at_x14))
)

(:action move_15_16_16_16
 :parameters ()
 :precondition (and (at_x15)(at_y16))
 :poss-precondition (and (bridge_15_16_16_16))
 :effect (and (not (at_x15)) (at_x16))
)

(:action move_15_16_15_15
 :parameters ()
 :precondition (and (at_x15)(at_y16))
 :poss-precondition (and (bridge_15_15_15_16))
 :effect (and (not (at_y16)) (at_y15))
)

(:action move_15_16_15_17
 :parameters ()
 :precondition (and (at_x15)(at_y16))
 :poss-precondition (and (bridge_15_16_15_17))
 :effect (and (not (at_y16)) (at_y17))
)

(:action move_15_17_14_17
 :parameters ()
 :precondition (and (at_x15)(at_y17))
 :poss-precondition (and (bridge_14_17_15_17))
 :effect (and (not (at_x15)) (at_x14))
)

(:action move_15_17_16_17
 :parameters ()
 :precondition (and (at_x15)(at_y17))
 :poss-precondition (and (bridge_15_17_16_17))
 :effect (and (not (at_x15)) (at_x16))
)

(:action move_15_17_15_16
 :parameters ()
 :precondition (and (at_x15)(at_y17))
 :poss-precondition (and (bridge_15_16_15_17))
 :effect (and (not (at_y17)) (at_y16))
)

(:action move_15_17_15_18
 :parameters ()
 :precondition (and (at_x15)(at_y17))
 :poss-precondition (and (bridge_15_17_15_18))
 :effect (and (not (at_y17)) (at_y18))
)

(:action move_15_18_14_18
 :parameters ()
 :precondition (and (at_x15)(at_y18))
 :poss-precondition (and (bridge_14_18_15_18))
 :effect (and (not (at_x15)) (at_x14))
)

(:action move_15_18_16_18
 :parameters ()
 :precondition (and (at_x15)(at_y18))
 :poss-precondition (and (bridge_15_18_16_18))
 :effect (and (not (at_x15)) (at_x16))
)

(:action move_15_18_15_17
 :parameters ()
 :precondition (and (at_x15)(at_y18))
 :poss-precondition (and (bridge_15_17_15_18))
 :effect (and (not (at_y18)) (at_y17))
)

(:action move_15_18_15_19
 :parameters ()
 :precondition (and (at_x15)(at_y18))
 :poss-precondition (and (bridge_15_18_15_19))
 :effect (and (not (at_y18)) (at_y19))
)

(:action move_15_19_14_19
 :parameters ()
 :precondition (and (at_x15)(at_y19))
 :poss-precondition (and (bridge_14_19_15_19))
 :effect (and (not (at_x15)) (at_x14))
)

(:action move_15_19_16_19
 :parameters ()
 :precondition (and (at_x15)(at_y19))
 :poss-precondition (and (bridge_15_19_16_19))
 :effect (and (not (at_x15)) (at_x16))
)

(:action move_15_19_15_18
 :parameters ()
 :precondition (and (at_x15)(at_y19))
 :poss-precondition (and (bridge_15_18_15_19))
 :effect (and (not (at_y19)) (at_y18))
)

(:action move_15_19_15_20
 :parameters ()
 :precondition (and (at_x15)(at_y19))
 :poss-precondition (and (bridge_15_19_15_20))
 :effect (and (not (at_y19)) (at_y20))
)

(:action move_15_20_14_20
 :parameters ()
 :precondition (and (at_x15)(at_y20))
 :poss-precondition (and (bridge_14_20_15_20))
 :effect (and (not (at_x15)) (at_x14))
)

(:action move_15_20_16_20
 :parameters ()
 :precondition (and (at_x15)(at_y20))
 :poss-precondition (and (bridge_15_20_16_20))
 :effect (and (not (at_x15)) (at_x16))
)

(:action move_15_20_15_19
 :parameters ()
 :precondition (and (at_x15)(at_y20))
 :poss-precondition (and (bridge_15_19_15_20))
 :effect (and (not (at_y20)) (at_y19))
)

(:action move_15_20_15_21
 :parameters ()
 :precondition (and (at_x15)(at_y20))
 :poss-precondition (and (bridge_15_20_15_21))
 :effect (and (not (at_y20)) (at_y21))
)

(:action move_15_21_14_21
 :parameters ()
 :precondition (and (at_x15)(at_y21))
 :poss-precondition (and (bridge_14_21_15_21))
 :effect (and (not (at_x15)) (at_x14))
)

(:action move_15_21_16_21
 :parameters ()
 :precondition (and (at_x15)(at_y21))
 :poss-precondition (and (bridge_15_21_16_21))
 :effect (and (not (at_x15)) (at_x16))
)

(:action move_15_21_15_20
 :parameters ()
 :precondition (and (at_x15)(at_y21))
 :poss-precondition (and (bridge_15_20_15_21))
 :effect (and (not (at_y21)) (at_y20))
)

(:action move_15_21_15_22
 :parameters ()
 :precondition (and (at_x15)(at_y21))
 :poss-precondition (and (bridge_15_21_15_22))
 :effect (and (not (at_y21)) (at_y22))
)

(:action move_15_22_14_22
 :parameters ()
 :precondition (and (at_x15)(at_y22))
 :poss-precondition (and (bridge_14_22_15_22))
 :effect (and (not (at_x15)) (at_x14))
)

(:action move_15_22_16_22
 :parameters ()
 :precondition (and (at_x15)(at_y22))
 :poss-precondition (and (bridge_15_22_16_22))
 :effect (and (not (at_x15)) (at_x16))
)

(:action move_15_22_15_21
 :parameters ()
 :precondition (and (at_x15)(at_y22))
 :poss-precondition (and (bridge_15_21_15_22))
 :effect (and (not (at_y22)) (at_y21))
)

(:action move_15_22_15_23
 :parameters ()
 :precondition (and (at_x15)(at_y22))
 :poss-precondition (and (bridge_15_22_15_23))
 :effect (and (not (at_y22)) (at_y23))
)

(:action move_15_23_14_23
 :parameters ()
 :precondition (and (at_x15)(at_y23))
 :poss-precondition (and (bridge_14_23_15_23))
 :effect (and (not (at_x15)) (at_x14))
)

(:action move_15_23_16_23
 :parameters ()
 :precondition (and (at_x15)(at_y23))
 :poss-precondition (and (bridge_15_23_16_23))
 :effect (and (not (at_x15)) (at_x16))
)

(:action move_15_23_15_22
 :parameters ()
 :precondition (and (at_x15)(at_y23))
 :poss-precondition (and (bridge_15_22_15_23))
 :effect (and (not (at_y23)) (at_y22))
)

(:action move_15_23_15_24
 :parameters ()
 :precondition (and (at_x15)(at_y23))
 :poss-precondition (and (bridge_15_23_15_24))
 :effect (and (not (at_y23)) (at_y24))
)

(:action move_15_24_14_24
 :parameters ()
 :precondition (and (at_x15)(at_y24))
 :poss-precondition (and (bridge_14_24_15_24))
 :effect (and (not (at_x15)) (at_x14))
)

(:action move_15_24_16_24
 :parameters ()
 :precondition (and (at_x15)(at_y24))
 :poss-precondition (and (bridge_15_24_16_24))
 :effect (and (not (at_x15)) (at_x16))
)

(:action move_15_24_15_23
 :parameters ()
 :precondition (and (at_x15)(at_y24))
 :poss-precondition (and (bridge_15_23_15_24))
 :effect (and (not (at_y24)) (at_y23))
)

(:action move_15_24_15_25
 :parameters ()
 :precondition (and (at_x15)(at_y24))
 :poss-precondition (and (bridge_15_24_15_25))
 :effect (and (not (at_y24)) (at_y25))
)

(:action move_15_25_14_25
 :parameters ()
 :precondition (and (at_x15)(at_y25))
 :poss-precondition (and (bridge_14_25_15_25))
 :effect (and (not (at_x15)) (at_x14))
)

(:action move_15_25_16_25
 :parameters ()
 :precondition (and (at_x15)(at_y25))
 :poss-precondition (and (bridge_15_25_16_25))
 :effect (and (not (at_x15)) (at_x16))
)

(:action move_15_25_15_24
 :parameters ()
 :precondition (and (at_x15)(at_y25))
 :poss-precondition (and (bridge_15_24_15_25))
 :effect (and (not (at_y25)) (at_y24))
)

(:action move_15_25_15_26
 :parameters ()
 :precondition (and (at_x15)(at_y25))
 :poss-precondition (and (bridge_15_25_15_26))
 :effect (and (not (at_y25)) (at_y26))
)

(:action move_15_26_14_26
 :parameters ()
 :precondition (and (at_x15)(at_y26))
 :poss-precondition (and (bridge_14_26_15_26))
 :effect (and (not (at_x15)) (at_x14))
)

(:action move_15_26_16_26
 :parameters ()
 :precondition (and (at_x15)(at_y26))
 :poss-precondition (and (bridge_15_26_16_26))
 :effect (and (not (at_x15)) (at_x16))
)

(:action move_15_26_15_25
 :parameters ()
 :precondition (and (at_x15)(at_y26))
 :poss-precondition (and (bridge_15_25_15_26))
 :effect (and (not (at_y26)) (at_y25))
)

(:action move_15_26_15_27
 :parameters ()
 :precondition (and (at_x15)(at_y26))
 :poss-precondition (and (bridge_15_26_15_27))
 :effect (and (not (at_y26)) (at_y27))
)

(:action move_15_27_14_27
 :parameters ()
 :precondition (and (at_x15)(at_y27))
 :poss-precondition (and (bridge_14_27_15_27))
 :effect (and (not (at_x15)) (at_x14))
)

(:action move_15_27_16_27
 :parameters ()
 :precondition (and (at_x15)(at_y27))
 :poss-precondition (and (bridge_15_27_16_27))
 :effect (and (not (at_x15)) (at_x16))
)

(:action move_15_27_15_26
 :parameters ()
 :precondition (and (at_x15)(at_y27))
 :poss-precondition (and (bridge_15_26_15_27))
 :effect (and (not (at_y27)) (at_y26))
)

(:action move_15_27_15_28
 :parameters ()
 :precondition (and (at_x15)(at_y27))
 :poss-precondition (and (bridge_15_27_15_28))
 :effect (and (not (at_y27)) (at_y28))
)

(:action move_15_28_14_28
 :parameters ()
 :precondition (and (at_x15)(at_y28))
 :poss-precondition (and (bridge_14_28_15_28))
 :effect (and (not (at_x15)) (at_x14))
)

(:action move_15_28_16_28
 :parameters ()
 :precondition (and (at_x15)(at_y28))
 :poss-precondition (and (bridge_15_28_16_28))
 :effect (and (not (at_x15)) (at_x16))
)

(:action move_15_28_15_27
 :parameters ()
 :precondition (and (at_x15)(at_y28))
 :poss-precondition (and (bridge_15_27_15_28))
 :effect (and (not (at_y28)) (at_y27))
)

(:action move_15_28_15_29
 :parameters ()
 :precondition (and (at_x15)(at_y28))
 :poss-precondition (and (bridge_15_28_15_29))
 :effect (and (not (at_y28)) (at_y29))
)

(:action move_15_29_14_29
 :parameters ()
 :precondition (and (at_x15)(at_y29))
 :poss-precondition (and (bridge_14_29_15_29))
 :effect (and (not (at_x15)) (at_x14))
)

(:action move_15_29_16_29
 :parameters ()
 :precondition (and (at_x15)(at_y29))
 :poss-precondition (and (bridge_15_29_16_29))
 :effect (and (not (at_x15)) (at_x16))
)

(:action move_15_29_15_28
 :parameters ()
 :precondition (and (at_x15)(at_y29))
 :poss-precondition (and (bridge_15_28_15_29))
 :effect (and (not (at_y29)) (at_y28))
)

(:action move_15_29_15_30
 :parameters ()
 :precondition (and (at_x15)(at_y29))
 :poss-precondition (and (bridge_15_29_15_30))
 :effect (and (not (at_y29)) (at_y30))
)

(:action move_15_30_14_30
 :parameters ()
 :precondition (and (at_x15)(at_y30))
 :poss-precondition (and (bridge_14_30_15_30))
 :effect (and (not (at_x15)) (at_x14))
)

(:action move_15_30_16_30
 :parameters ()
 :precondition (and (at_x15)(at_y30))
 :poss-precondition (and (bridge_15_30_16_30))
 :effect (and (not (at_x15)) (at_x16))
)

(:action move_15_30_15_29
 :parameters ()
 :precondition (and (at_x15)(at_y30))
 :poss-precondition (and (bridge_15_29_15_30))
 :effect (and (not (at_y30)) (at_y29))
)

(:action move_15_30_15_31
 :parameters ()
 :precondition (and (at_x15)(at_y30))
 :poss-precondition (and (bridge_15_30_15_31))
 :effect (and (not (at_y30)) (at_y31))
)

(:action move_15_31_14_31
 :parameters ()
 :precondition (and (at_x15)(at_y31))
 :poss-precondition (and (bridge_14_31_15_31))
 :effect (and (not (at_x15)) (at_x14))
)

(:action move_15_31_16_31
 :parameters ()
 :precondition (and (at_x15)(at_y31))
 :poss-precondition (and (bridge_15_31_16_31))
 :effect (and (not (at_x15)) (at_x16))
)

(:action move_15_31_15_30
 :parameters ()
 :precondition (and (at_x15)(at_y31))
 :poss-precondition (and (bridge_15_30_15_31))
 :effect (and (not (at_y31)) (at_y30))
)

(:action move_16_0_15_0
 :parameters ()
 :precondition (and (at_x16)(at_y0))
 :poss-precondition (and (bridge_15_0_16_0))
 :effect (and (not (at_x16)) (at_x15))
)

(:action move_16_0_17_0
 :parameters ()
 :precondition (and (at_x16)(at_y0))
 :poss-precondition (and (bridge_16_0_17_0))
 :effect (and (not (at_x16)) (at_x17))
)

(:action move_16_0_16_1
 :parameters ()
 :precondition (and (at_x16)(at_y0))
 :poss-precondition (and (bridge_16_0_16_1))
 :effect (and (not (at_y0)) (at_y1))
)

(:action move_16_1_15_1
 :parameters ()
 :precondition (and (at_x16)(at_y1))
 :poss-precondition (and (bridge_15_1_16_1))
 :effect (and (not (at_x16)) (at_x15))
)

(:action move_16_1_17_1
 :parameters ()
 :precondition (and (at_x16)(at_y1))
 :poss-precondition (and (bridge_16_1_17_1))
 :effect (and (not (at_x16)) (at_x17))
)

(:action move_16_1_16_0
 :parameters ()
 :precondition (and (at_x16)(at_y1))
 :poss-precondition (and (bridge_16_0_16_1))
 :effect (and (not (at_y1)) (at_y0))
)

(:action move_16_1_16_2
 :parameters ()
 :precondition (and (at_x16)(at_y1))
 :poss-precondition (and (bridge_16_1_16_2))
 :effect (and (not (at_y1)) (at_y2))
)

(:action move_16_2_15_2
 :parameters ()
 :precondition (and (at_x16)(at_y2))
 :poss-precondition (and (bridge_15_2_16_2))
 :effect (and (not (at_x16)) (at_x15))
)

(:action move_16_2_17_2
 :parameters ()
 :precondition (and (at_x16)(at_y2))
 :poss-precondition (and (bridge_16_2_17_2))
 :effect (and (not (at_x16)) (at_x17))
)

(:action move_16_2_16_1
 :parameters ()
 :precondition (and (at_x16)(at_y2))
 :poss-precondition (and (bridge_16_1_16_2))
 :effect (and (not (at_y2)) (at_y1))
)

(:action move_16_2_16_3
 :parameters ()
 :precondition (and (at_x16)(at_y2))
 :poss-precondition (and (bridge_16_2_16_3))
 :effect (and (not (at_y2)) (at_y3))
)

(:action move_16_3_15_3
 :parameters ()
 :precondition (and (at_x16)(at_y3))
 :poss-precondition (and (bridge_15_3_16_3))
 :effect (and (not (at_x16)) (at_x15))
)

(:action move_16_3_17_3
 :parameters ()
 :precondition (and (at_x16)(at_y3))
 :poss-precondition (and (bridge_16_3_17_3))
 :effect (and (not (at_x16)) (at_x17))
)

(:action move_16_3_16_2
 :parameters ()
 :precondition (and (at_x16)(at_y3))
 :poss-precondition (and (bridge_16_2_16_3))
 :effect (and (not (at_y3)) (at_y2))
)

(:action move_16_3_16_4
 :parameters ()
 :precondition (and (at_x16)(at_y3))
 :poss-precondition (and (bridge_16_3_16_4))
 :effect (and (not (at_y3)) (at_y4))
)

(:action move_16_4_15_4
 :parameters ()
 :precondition (and (at_x16)(at_y4))
 :poss-precondition (and (bridge_15_4_16_4))
 :effect (and (not (at_x16)) (at_x15))
)

(:action move_16_4_17_4
 :parameters ()
 :precondition (and (at_x16)(at_y4))
 :poss-precondition (and (bridge_16_4_17_4))
 :effect (and (not (at_x16)) (at_x17))
)

(:action move_16_4_16_3
 :parameters ()
 :precondition (and (at_x16)(at_y4))
 :poss-precondition (and (bridge_16_3_16_4))
 :effect (and (not (at_y4)) (at_y3))
)

(:action move_16_4_16_5
 :parameters ()
 :precondition (and (at_x16)(at_y4))
 :poss-precondition (and (bridge_16_4_16_5))
 :effect (and (not (at_y4)) (at_y5))
)

(:action move_16_5_15_5
 :parameters ()
 :precondition (and (at_x16)(at_y5))
 :poss-precondition (and (bridge_15_5_16_5))
 :effect (and (not (at_x16)) (at_x15))
)

(:action move_16_5_17_5
 :parameters ()
 :precondition (and (at_x16)(at_y5))
 :poss-precondition (and (bridge_16_5_17_5))
 :effect (and (not (at_x16)) (at_x17))
)

(:action move_16_5_16_4
 :parameters ()
 :precondition (and (at_x16)(at_y5))
 :poss-precondition (and (bridge_16_4_16_5))
 :effect (and (not (at_y5)) (at_y4))
)

(:action move_16_5_16_6
 :parameters ()
 :precondition (and (at_x16)(at_y5))
 :poss-precondition (and (bridge_16_5_16_6))
 :effect (and (not (at_y5)) (at_y6))
)

(:action move_16_6_15_6
 :parameters ()
 :precondition (and (at_x16)(at_y6))
 :poss-precondition (and (bridge_15_6_16_6))
 :effect (and (not (at_x16)) (at_x15))
)

(:action move_16_6_17_6
 :parameters ()
 :precondition (and (at_x16)(at_y6))
 :poss-precondition (and (bridge_16_6_17_6))
 :effect (and (not (at_x16)) (at_x17))
)

(:action move_16_6_16_5
 :parameters ()
 :precondition (and (at_x16)(at_y6))
 :poss-precondition (and (bridge_16_5_16_6))
 :effect (and (not (at_y6)) (at_y5))
)

(:action move_16_6_16_7
 :parameters ()
 :precondition (and (at_x16)(at_y6))
 :poss-precondition (and (bridge_16_6_16_7))
 :effect (and (not (at_y6)) (at_y7))
)

(:action move_16_7_15_7
 :parameters ()
 :precondition (and (at_x16)(at_y7))
 :poss-precondition (and (bridge_15_7_16_7))
 :effect (and (not (at_x16)) (at_x15))
)

(:action move_16_7_17_7
 :parameters ()
 :precondition (and (at_x16)(at_y7))
 :poss-precondition (and (bridge_16_7_17_7))
 :effect (and (not (at_x16)) (at_x17))
)

(:action move_16_7_16_6
 :parameters ()
 :precondition (and (at_x16)(at_y7))
 :poss-precondition (and (bridge_16_6_16_7))
 :effect (and (not (at_y7)) (at_y6))
)

(:action move_16_7_16_8
 :parameters ()
 :precondition (and (at_x16)(at_y7))
 :poss-precondition (and (bridge_16_7_16_8))
 :effect (and (not (at_y7)) (at_y8))
)

(:action move_16_8_15_8
 :parameters ()
 :precondition (and (at_x16)(at_y8))
 :poss-precondition (and (bridge_15_8_16_8))
 :effect (and (not (at_x16)) (at_x15))
)

(:action move_16_8_17_8
 :parameters ()
 :precondition (and (at_x16)(at_y8))
 :poss-precondition (and (bridge_16_8_17_8))
 :effect (and (not (at_x16)) (at_x17))
)

(:action move_16_8_16_7
 :parameters ()
 :precondition (and (at_x16)(at_y8))
 :poss-precondition (and (bridge_16_7_16_8))
 :effect (and (not (at_y8)) (at_y7))
)

(:action move_16_8_16_9
 :parameters ()
 :precondition (and (at_x16)(at_y8))
 :poss-precondition (and (bridge_16_8_16_9))
 :effect (and (not (at_y8)) (at_y9))
)

(:action move_16_9_15_9
 :parameters ()
 :precondition (and (at_x16)(at_y9))
 :poss-precondition (and (bridge_15_9_16_9))
 :effect (and (not (at_x16)) (at_x15))
)

(:action move_16_9_17_9
 :parameters ()
 :precondition (and (at_x16)(at_y9))
 :poss-precondition (and (bridge_16_9_17_9))
 :effect (and (not (at_x16)) (at_x17))
)

(:action move_16_9_16_8
 :parameters ()
 :precondition (and (at_x16)(at_y9))
 :poss-precondition (and (bridge_16_8_16_9))
 :effect (and (not (at_y9)) (at_y8))
)

(:action move_16_9_16_10
 :parameters ()
 :precondition (and (at_x16)(at_y9))
 :poss-precondition (and (bridge_16_9_16_10))
 :effect (and (not (at_y9)) (at_y10))
)

(:action move_16_10_15_10
 :parameters ()
 :precondition (and (at_x16)(at_y10))
 :poss-precondition (and (bridge_15_10_16_10))
 :effect (and (not (at_x16)) (at_x15))
)

(:action move_16_10_17_10
 :parameters ()
 :precondition (and (at_x16)(at_y10))
 :poss-precondition (and (bridge_16_10_17_10))
 :effect (and (not (at_x16)) (at_x17))
)

(:action move_16_10_16_9
 :parameters ()
 :precondition (and (at_x16)(at_y10))
 :poss-precondition (and (bridge_16_9_16_10))
 :effect (and (not (at_y10)) (at_y9))
)

(:action move_16_10_16_11
 :parameters ()
 :precondition (and (at_x16)(at_y10))
 :poss-precondition (and (bridge_16_10_16_11))
 :effect (and (not (at_y10)) (at_y11))
)

(:action move_16_11_15_11
 :parameters ()
 :precondition (and (at_x16)(at_y11))
 :poss-precondition (and (bridge_15_11_16_11))
 :effect (and (not (at_x16)) (at_x15))
)

(:action move_16_11_17_11
 :parameters ()
 :precondition (and (at_x16)(at_y11))
 :poss-precondition (and (bridge_16_11_17_11))
 :effect (and (not (at_x16)) (at_x17))
)

(:action move_16_11_16_10
 :parameters ()
 :precondition (and (at_x16)(at_y11))
 :poss-precondition (and (bridge_16_10_16_11))
 :effect (and (not (at_y11)) (at_y10))
)

(:action move_16_11_16_12
 :parameters ()
 :precondition (and (at_x16)(at_y11))
 :poss-precondition (and (bridge_16_11_16_12))
 :effect (and (not (at_y11)) (at_y12))
)

(:action move_16_12_15_12
 :parameters ()
 :precondition (and (at_x16)(at_y12))
 :poss-precondition (and (bridge_15_12_16_12))
 :effect (and (not (at_x16)) (at_x15))
)

(:action move_16_12_17_12
 :parameters ()
 :precondition (and (at_x16)(at_y12))
 :poss-precondition (and (bridge_16_12_17_12))
 :effect (and (not (at_x16)) (at_x17))
)

(:action move_16_12_16_11
 :parameters ()
 :precondition (and (at_x16)(at_y12))
 :poss-precondition (and (bridge_16_11_16_12))
 :effect (and (not (at_y12)) (at_y11))
)

(:action move_16_12_16_13
 :parameters ()
 :precondition (and (at_x16)(at_y12))
 :poss-precondition (and (bridge_16_12_16_13))
 :effect (and (not (at_y12)) (at_y13))
)

(:action move_16_13_15_13
 :parameters ()
 :precondition (and (at_x16)(at_y13))
 :poss-precondition (and (bridge_15_13_16_13))
 :effect (and (not (at_x16)) (at_x15))
)

(:action move_16_13_17_13
 :parameters ()
 :precondition (and (at_x16)(at_y13))
 :poss-precondition (and (bridge_16_13_17_13))
 :effect (and (not (at_x16)) (at_x17))
)

(:action move_16_13_16_12
 :parameters ()
 :precondition (and (at_x16)(at_y13))
 :poss-precondition (and (bridge_16_12_16_13))
 :effect (and (not (at_y13)) (at_y12))
)

(:action move_16_13_16_14
 :parameters ()
 :precondition (and (at_x16)(at_y13))
 :poss-precondition (and (bridge_16_13_16_14))
 :effect (and (not (at_y13)) (at_y14))
)

(:action move_16_14_15_14
 :parameters ()
 :precondition (and (at_x16)(at_y14))
 :poss-precondition (and (bridge_15_14_16_14))
 :effect (and (not (at_x16)) (at_x15))
)

(:action move_16_14_17_14
 :parameters ()
 :precondition (and (at_x16)(at_y14))
 :poss-precondition (and (bridge_16_14_17_14))
 :effect (and (not (at_x16)) (at_x17))
)

(:action move_16_14_16_13
 :parameters ()
 :precondition (and (at_x16)(at_y14))
 :poss-precondition (and (bridge_16_13_16_14))
 :effect (and (not (at_y14)) (at_y13))
)

(:action move_16_14_16_15
 :parameters ()
 :precondition (and (at_x16)(at_y14))
 :poss-precondition (and (bridge_16_14_16_15))
 :effect (and (not (at_y14)) (at_y15))
)

(:action move_16_15_15_15
 :parameters ()
 :precondition (and (at_x16)(at_y15))
 :poss-precondition (and (bridge_15_15_16_15))
 :effect (and (not (at_x16)) (at_x15))
)

(:action move_16_15_17_15
 :parameters ()
 :precondition (and (at_x16)(at_y15))
 :poss-precondition (and (bridge_16_15_17_15))
 :effect (and (not (at_x16)) (at_x17))
)

(:action move_16_15_16_14
 :parameters ()
 :precondition (and (at_x16)(at_y15))
 :poss-precondition (and (bridge_16_14_16_15))
 :effect (and (not (at_y15)) (at_y14))
)

(:action move_16_15_16_16
 :parameters ()
 :precondition (and (at_x16)(at_y15))
 :poss-precondition (and (bridge_16_15_16_16))
 :effect (and (not (at_y15)) (at_y16))
)

(:action move_16_16_15_16
 :parameters ()
 :precondition (and (at_x16)(at_y16))
 :poss-precondition (and (bridge_15_16_16_16))
 :effect (and (not (at_x16)) (at_x15))
)

(:action move_16_16_17_16
 :parameters ()
 :precondition (and (at_x16)(at_y16))
 :poss-precondition (and (bridge_16_16_17_16))
 :effect (and (not (at_x16)) (at_x17))
)

(:action move_16_16_16_15
 :parameters ()
 :precondition (and (at_x16)(at_y16))
 :poss-precondition (and (bridge_16_15_16_16))
 :effect (and (not (at_y16)) (at_y15))
)

(:action move_16_16_16_17
 :parameters ()
 :precondition (and (at_x16)(at_y16))
 :poss-precondition (and (bridge_16_16_16_17))
 :effect (and (not (at_y16)) (at_y17))
)

(:action move_16_17_15_17
 :parameters ()
 :precondition (and (at_x16)(at_y17))
 :poss-precondition (and (bridge_15_17_16_17))
 :effect (and (not (at_x16)) (at_x15))
)

(:action move_16_17_17_17
 :parameters ()
 :precondition (and (at_x16)(at_y17))
 :poss-precondition (and (bridge_16_17_17_17))
 :effect (and (not (at_x16)) (at_x17))
)

(:action move_16_17_16_16
 :parameters ()
 :precondition (and (at_x16)(at_y17))
 :poss-precondition (and (bridge_16_16_16_17))
 :effect (and (not (at_y17)) (at_y16))
)

(:action move_16_17_16_18
 :parameters ()
 :precondition (and (at_x16)(at_y17))
 :poss-precondition (and (bridge_16_17_16_18))
 :effect (and (not (at_y17)) (at_y18))
)

(:action move_16_18_15_18
 :parameters ()
 :precondition (and (at_x16)(at_y18))
 :poss-precondition (and (bridge_15_18_16_18))
 :effect (and (not (at_x16)) (at_x15))
)

(:action move_16_18_17_18
 :parameters ()
 :precondition (and (at_x16)(at_y18))
 :poss-precondition (and (bridge_16_18_17_18))
 :effect (and (not (at_x16)) (at_x17))
)

(:action move_16_18_16_17
 :parameters ()
 :precondition (and (at_x16)(at_y18))
 :poss-precondition (and (bridge_16_17_16_18))
 :effect (and (not (at_y18)) (at_y17))
)

(:action move_16_18_16_19
 :parameters ()
 :precondition (and (at_x16)(at_y18))
 :poss-precondition (and (bridge_16_18_16_19))
 :effect (and (not (at_y18)) (at_y19))
)

(:action move_16_19_15_19
 :parameters ()
 :precondition (and (at_x16)(at_y19))
 :poss-precondition (and (bridge_15_19_16_19))
 :effect (and (not (at_x16)) (at_x15))
)

(:action move_16_19_17_19
 :parameters ()
 :precondition (and (at_x16)(at_y19))
 :poss-precondition (and (bridge_16_19_17_19))
 :effect (and (not (at_x16)) (at_x17))
)

(:action move_16_19_16_18
 :parameters ()
 :precondition (and (at_x16)(at_y19))
 :poss-precondition (and (bridge_16_18_16_19))
 :effect (and (not (at_y19)) (at_y18))
)

(:action move_16_19_16_20
 :parameters ()
 :precondition (and (at_x16)(at_y19))
 :poss-precondition (and (bridge_16_19_16_20))
 :effect (and (not (at_y19)) (at_y20))
)

(:action move_16_20_15_20
 :parameters ()
 :precondition (and (at_x16)(at_y20))
 :poss-precondition (and (bridge_15_20_16_20))
 :effect (and (not (at_x16)) (at_x15))
)

(:action move_16_20_17_20
 :parameters ()
 :precondition (and (at_x16)(at_y20))
 :poss-precondition (and (bridge_16_20_17_20))
 :effect (and (not (at_x16)) (at_x17))
)

(:action move_16_20_16_19
 :parameters ()
 :precondition (and (at_x16)(at_y20))
 :poss-precondition (and (bridge_16_19_16_20))
 :effect (and (not (at_y20)) (at_y19))
)

(:action move_16_20_16_21
 :parameters ()
 :precondition (and (at_x16)(at_y20))
 :poss-precondition (and (bridge_16_20_16_21))
 :effect (and (not (at_y20)) (at_y21))
)

(:action move_16_21_15_21
 :parameters ()
 :precondition (and (at_x16)(at_y21))
 :poss-precondition (and (bridge_15_21_16_21))
 :effect (and (not (at_x16)) (at_x15))
)

(:action move_16_21_17_21
 :parameters ()
 :precondition (and (at_x16)(at_y21))
 :poss-precondition (and (bridge_16_21_17_21))
 :effect (and (not (at_x16)) (at_x17))
)

(:action move_16_21_16_20
 :parameters ()
 :precondition (and (at_x16)(at_y21))
 :poss-precondition (and (bridge_16_20_16_21))
 :effect (and (not (at_y21)) (at_y20))
)

(:action move_16_21_16_22
 :parameters ()
 :precondition (and (at_x16)(at_y21))
 :poss-precondition (and (bridge_16_21_16_22))
 :effect (and (not (at_y21)) (at_y22))
)

(:action move_16_22_15_22
 :parameters ()
 :precondition (and (at_x16)(at_y22))
 :poss-precondition (and (bridge_15_22_16_22))
 :effect (and (not (at_x16)) (at_x15))
)

(:action move_16_22_17_22
 :parameters ()
 :precondition (and (at_x16)(at_y22))
 :poss-precondition (and (bridge_16_22_17_22))
 :effect (and (not (at_x16)) (at_x17))
)

(:action move_16_22_16_21
 :parameters ()
 :precondition (and (at_x16)(at_y22))
 :poss-precondition (and (bridge_16_21_16_22))
 :effect (and (not (at_y22)) (at_y21))
)

(:action move_16_22_16_23
 :parameters ()
 :precondition (and (at_x16)(at_y22))
 :poss-precondition (and (bridge_16_22_16_23))
 :effect (and (not (at_y22)) (at_y23))
)

(:action move_16_23_15_23
 :parameters ()
 :precondition (and (at_x16)(at_y23))
 :poss-precondition (and (bridge_15_23_16_23))
 :effect (and (not (at_x16)) (at_x15))
)

(:action move_16_23_17_23
 :parameters ()
 :precondition (and (at_x16)(at_y23))
 :poss-precondition (and (bridge_16_23_17_23))
 :effect (and (not (at_x16)) (at_x17))
)

(:action move_16_23_16_22
 :parameters ()
 :precondition (and (at_x16)(at_y23))
 :poss-precondition (and (bridge_16_22_16_23))
 :effect (and (not (at_y23)) (at_y22))
)

(:action move_16_23_16_24
 :parameters ()
 :precondition (and (at_x16)(at_y23))
 :poss-precondition (and (bridge_16_23_16_24))
 :effect (and (not (at_y23)) (at_y24))
)

(:action move_16_24_15_24
 :parameters ()
 :precondition (and (at_x16)(at_y24))
 :poss-precondition (and (bridge_15_24_16_24))
 :effect (and (not (at_x16)) (at_x15))
)

(:action move_16_24_17_24
 :parameters ()
 :precondition (and (at_x16)(at_y24))
 :poss-precondition (and (bridge_16_24_17_24))
 :effect (and (not (at_x16)) (at_x17))
)

(:action move_16_24_16_23
 :parameters ()
 :precondition (and (at_x16)(at_y24))
 :poss-precondition (and (bridge_16_23_16_24))
 :effect (and (not (at_y24)) (at_y23))
)

(:action move_16_24_16_25
 :parameters ()
 :precondition (and (at_x16)(at_y24))
 :poss-precondition (and (bridge_16_24_16_25))
 :effect (and (not (at_y24)) (at_y25))
)

(:action move_16_25_15_25
 :parameters ()
 :precondition (and (at_x16)(at_y25))
 :poss-precondition (and (bridge_15_25_16_25))
 :effect (and (not (at_x16)) (at_x15))
)

(:action move_16_25_17_25
 :parameters ()
 :precondition (and (at_x16)(at_y25))
 :poss-precondition (and (bridge_16_25_17_25))
 :effect (and (not (at_x16)) (at_x17))
)

(:action move_16_25_16_24
 :parameters ()
 :precondition (and (at_x16)(at_y25))
 :poss-precondition (and (bridge_16_24_16_25))
 :effect (and (not (at_y25)) (at_y24))
)

(:action move_16_25_16_26
 :parameters ()
 :precondition (and (at_x16)(at_y25))
 :poss-precondition (and (bridge_16_25_16_26))
 :effect (and (not (at_y25)) (at_y26))
)

(:action move_16_26_15_26
 :parameters ()
 :precondition (and (at_x16)(at_y26))
 :poss-precondition (and (bridge_15_26_16_26))
 :effect (and (not (at_x16)) (at_x15))
)

(:action move_16_26_17_26
 :parameters ()
 :precondition (and (at_x16)(at_y26))
 :poss-precondition (and (bridge_16_26_17_26))
 :effect (and (not (at_x16)) (at_x17))
)

(:action move_16_26_16_25
 :parameters ()
 :precondition (and (at_x16)(at_y26))
 :poss-precondition (and (bridge_16_25_16_26))
 :effect (and (not (at_y26)) (at_y25))
)

(:action move_16_26_16_27
 :parameters ()
 :precondition (and (at_x16)(at_y26))
 :poss-precondition (and (bridge_16_26_16_27))
 :effect (and (not (at_y26)) (at_y27))
)

(:action move_16_27_15_27
 :parameters ()
 :precondition (and (at_x16)(at_y27))
 :poss-precondition (and (bridge_15_27_16_27))
 :effect (and (not (at_x16)) (at_x15))
)

(:action move_16_27_17_27
 :parameters ()
 :precondition (and (at_x16)(at_y27))
 :poss-precondition (and (bridge_16_27_17_27))
 :effect (and (not (at_x16)) (at_x17))
)

(:action move_16_27_16_26
 :parameters ()
 :precondition (and (at_x16)(at_y27))
 :poss-precondition (and (bridge_16_26_16_27))
 :effect (and (not (at_y27)) (at_y26))
)

(:action move_16_27_16_28
 :parameters ()
 :precondition (and (at_x16)(at_y27))
 :poss-precondition (and (bridge_16_27_16_28))
 :effect (and (not (at_y27)) (at_y28))
)

(:action move_16_28_15_28
 :parameters ()
 :precondition (and (at_x16)(at_y28))
 :poss-precondition (and (bridge_15_28_16_28))
 :effect (and (not (at_x16)) (at_x15))
)

(:action move_16_28_17_28
 :parameters ()
 :precondition (and (at_x16)(at_y28))
 :poss-precondition (and (bridge_16_28_17_28))
 :effect (and (not (at_x16)) (at_x17))
)

(:action move_16_28_16_27
 :parameters ()
 :precondition (and (at_x16)(at_y28))
 :poss-precondition (and (bridge_16_27_16_28))
 :effect (and (not (at_y28)) (at_y27))
)

(:action move_16_28_16_29
 :parameters ()
 :precondition (and (at_x16)(at_y28))
 :poss-precondition (and (bridge_16_28_16_29))
 :effect (and (not (at_y28)) (at_y29))
)

(:action move_16_29_15_29
 :parameters ()
 :precondition (and (at_x16)(at_y29))
 :poss-precondition (and (bridge_15_29_16_29))
 :effect (and (not (at_x16)) (at_x15))
)

(:action move_16_29_17_29
 :parameters ()
 :precondition (and (at_x16)(at_y29))
 :poss-precondition (and (bridge_16_29_17_29))
 :effect (and (not (at_x16)) (at_x17))
)

(:action move_16_29_16_28
 :parameters ()
 :precondition (and (at_x16)(at_y29))
 :poss-precondition (and (bridge_16_28_16_29))
 :effect (and (not (at_y29)) (at_y28))
)

(:action move_16_29_16_30
 :parameters ()
 :precondition (and (at_x16)(at_y29))
 :poss-precondition (and (bridge_16_29_16_30))
 :effect (and (not (at_y29)) (at_y30))
)

(:action move_16_30_15_30
 :parameters ()
 :precondition (and (at_x16)(at_y30))
 :poss-precondition (and (bridge_15_30_16_30))
 :effect (and (not (at_x16)) (at_x15))
)

(:action move_16_30_17_30
 :parameters ()
 :precondition (and (at_x16)(at_y30))
 :poss-precondition (and (bridge_16_30_17_30))
 :effect (and (not (at_x16)) (at_x17))
)

(:action move_16_30_16_29
 :parameters ()
 :precondition (and (at_x16)(at_y30))
 :poss-precondition (and (bridge_16_29_16_30))
 :effect (and (not (at_y30)) (at_y29))
)

(:action move_16_30_16_31
 :parameters ()
 :precondition (and (at_x16)(at_y30))
 :poss-precondition (and (bridge_16_30_16_31))
 :effect (and (not (at_y30)) (at_y31))
)

(:action move_16_31_15_31
 :parameters ()
 :precondition (and (at_x16)(at_y31))
 :poss-precondition (and (bridge_15_31_16_31))
 :effect (and (not (at_x16)) (at_x15))
)

(:action move_16_31_17_31
 :parameters ()
 :precondition (and (at_x16)(at_y31))
 :poss-precondition (and (bridge_16_31_17_31))
 :effect (and (not (at_x16)) (at_x17))
)

(:action move_16_31_16_30
 :parameters ()
 :precondition (and (at_x16)(at_y31))
 :poss-precondition (and (bridge_16_30_16_31))
 :effect (and (not (at_y31)) (at_y30))
)

(:action move_17_0_16_0
 :parameters ()
 :precondition (and (at_x17)(at_y0))
 :poss-precondition (and (bridge_16_0_17_0))
 :effect (and (not (at_x17)) (at_x16))
)

(:action move_17_0_18_0
 :parameters ()
 :precondition (and (at_x17)(at_y0))
 :poss-precondition (and (bridge_17_0_18_0))
 :effect (and (not (at_x17)) (at_x18))
)

(:action move_17_0_17_1
 :parameters ()
 :precondition (and (at_x17)(at_y0))
 :poss-precondition (and (bridge_17_0_17_1))
 :effect (and (not (at_y0)) (at_y1))
)

(:action move_17_1_16_1
 :parameters ()
 :precondition (and (at_x17)(at_y1))
 :poss-precondition (and (bridge_16_1_17_1))
 :effect (and (not (at_x17)) (at_x16))
)

(:action move_17_1_18_1
 :parameters ()
 :precondition (and (at_x17)(at_y1))
 :poss-precondition (and (bridge_17_1_18_1))
 :effect (and (not (at_x17)) (at_x18))
)

(:action move_17_1_17_0
 :parameters ()
 :precondition (and (at_x17)(at_y1))
 :poss-precondition (and (bridge_17_0_17_1))
 :effect (and (not (at_y1)) (at_y0))
)

(:action move_17_1_17_2
 :parameters ()
 :precondition (and (at_x17)(at_y1))
 :poss-precondition (and (bridge_17_1_17_2))
 :effect (and (not (at_y1)) (at_y2))
)

(:action move_17_2_16_2
 :parameters ()
 :precondition (and (at_x17)(at_y2))
 :poss-precondition (and (bridge_16_2_17_2))
 :effect (and (not (at_x17)) (at_x16))
)

(:action move_17_2_18_2
 :parameters ()
 :precondition (and (at_x17)(at_y2))
 :poss-precondition (and (bridge_17_2_18_2))
 :effect (and (not (at_x17)) (at_x18))
)

(:action move_17_2_17_1
 :parameters ()
 :precondition (and (at_x17)(at_y2))
 :poss-precondition (and (bridge_17_1_17_2))
 :effect (and (not (at_y2)) (at_y1))
)

(:action move_17_2_17_3
 :parameters ()
 :precondition (and (at_x17)(at_y2))
 :poss-precondition (and (bridge_17_2_17_3))
 :effect (and (not (at_y2)) (at_y3))
)

(:action move_17_3_16_3
 :parameters ()
 :precondition (and (at_x17)(at_y3))
 :poss-precondition (and (bridge_16_3_17_3))
 :effect (and (not (at_x17)) (at_x16))
)

(:action move_17_3_18_3
 :parameters ()
 :precondition (and (at_x17)(at_y3))
 :poss-precondition (and (bridge_17_3_18_3))
 :effect (and (not (at_x17)) (at_x18))
)

(:action move_17_3_17_2
 :parameters ()
 :precondition (and (at_x17)(at_y3))
 :poss-precondition (and (bridge_17_2_17_3))
 :effect (and (not (at_y3)) (at_y2))
)

(:action move_17_3_17_4
 :parameters ()
 :precondition (and (at_x17)(at_y3))
 :poss-precondition (and (bridge_17_3_17_4))
 :effect (and (not (at_y3)) (at_y4))
)

(:action move_17_4_16_4
 :parameters ()
 :precondition (and (at_x17)(at_y4))
 :poss-precondition (and (bridge_16_4_17_4))
 :effect (and (not (at_x17)) (at_x16))
)

(:action move_17_4_18_4
 :parameters ()
 :precondition (and (at_x17)(at_y4))
 :poss-precondition (and (bridge_17_4_18_4))
 :effect (and (not (at_x17)) (at_x18))
)

(:action move_17_4_17_3
 :parameters ()
 :precondition (and (at_x17)(at_y4))
 :poss-precondition (and (bridge_17_3_17_4))
 :effect (and (not (at_y4)) (at_y3))
)

(:action move_17_4_17_5
 :parameters ()
 :precondition (and (at_x17)(at_y4))
 :poss-precondition (and (bridge_17_4_17_5))
 :effect (and (not (at_y4)) (at_y5))
)

(:action move_17_5_16_5
 :parameters ()
 :precondition (and (at_x17)(at_y5))
 :poss-precondition (and (bridge_16_5_17_5))
 :effect (and (not (at_x17)) (at_x16))
)

(:action move_17_5_18_5
 :parameters ()
 :precondition (and (at_x17)(at_y5))
 :poss-precondition (and (bridge_17_5_18_5))
 :effect (and (not (at_x17)) (at_x18))
)

(:action move_17_5_17_4
 :parameters ()
 :precondition (and (at_x17)(at_y5))
 :poss-precondition (and (bridge_17_4_17_5))
 :effect (and (not (at_y5)) (at_y4))
)

(:action move_17_5_17_6
 :parameters ()
 :precondition (and (at_x17)(at_y5))
 :poss-precondition (and (bridge_17_5_17_6))
 :effect (and (not (at_y5)) (at_y6))
)

(:action move_17_6_16_6
 :parameters ()
 :precondition (and (at_x17)(at_y6))
 :poss-precondition (and (bridge_16_6_17_6))
 :effect (and (not (at_x17)) (at_x16))
)

(:action move_17_6_18_6
 :parameters ()
 :precondition (and (at_x17)(at_y6))
 :poss-precondition (and (bridge_17_6_18_6))
 :effect (and (not (at_x17)) (at_x18))
)

(:action move_17_6_17_5
 :parameters ()
 :precondition (and (at_x17)(at_y6))
 :poss-precondition (and (bridge_17_5_17_6))
 :effect (and (not (at_y6)) (at_y5))
)

(:action move_17_6_17_7
 :parameters ()
 :precondition (and (at_x17)(at_y6))
 :poss-precondition (and (bridge_17_6_17_7))
 :effect (and (not (at_y6)) (at_y7))
)

(:action move_17_7_16_7
 :parameters ()
 :precondition (and (at_x17)(at_y7))
 :poss-precondition (and (bridge_16_7_17_7))
 :effect (and (not (at_x17)) (at_x16))
)

(:action move_17_7_18_7
 :parameters ()
 :precondition (and (at_x17)(at_y7))
 :poss-precondition (and (bridge_17_7_18_7))
 :effect (and (not (at_x17)) (at_x18))
)

(:action move_17_7_17_6
 :parameters ()
 :precondition (and (at_x17)(at_y7))
 :poss-precondition (and (bridge_17_6_17_7))
 :effect (and (not (at_y7)) (at_y6))
)

(:action move_17_7_17_8
 :parameters ()
 :precondition (and (at_x17)(at_y7))
 :poss-precondition (and (bridge_17_7_17_8))
 :effect (and (not (at_y7)) (at_y8))
)

(:action move_17_8_16_8
 :parameters ()
 :precondition (and (at_x17)(at_y8))
 :poss-precondition (and (bridge_16_8_17_8))
 :effect (and (not (at_x17)) (at_x16))
)

(:action move_17_8_18_8
 :parameters ()
 :precondition (and (at_x17)(at_y8))
 :poss-precondition (and (bridge_17_8_18_8))
 :effect (and (not (at_x17)) (at_x18))
)

(:action move_17_8_17_7
 :parameters ()
 :precondition (and (at_x17)(at_y8))
 :poss-precondition (and (bridge_17_7_17_8))
 :effect (and (not (at_y8)) (at_y7))
)

(:action move_17_8_17_9
 :parameters ()
 :precondition (and (at_x17)(at_y8))
 :poss-precondition (and (bridge_17_8_17_9))
 :effect (and (not (at_y8)) (at_y9))
)

(:action move_17_9_16_9
 :parameters ()
 :precondition (and (at_x17)(at_y9))
 :poss-precondition (and (bridge_16_9_17_9))
 :effect (and (not (at_x17)) (at_x16))
)

(:action move_17_9_18_9
 :parameters ()
 :precondition (and (at_x17)(at_y9))
 :poss-precondition (and (bridge_17_9_18_9))
 :effect (and (not (at_x17)) (at_x18))
)

(:action move_17_9_17_8
 :parameters ()
 :precondition (and (at_x17)(at_y9))
 :poss-precondition (and (bridge_17_8_17_9))
 :effect (and (not (at_y9)) (at_y8))
)

(:action move_17_9_17_10
 :parameters ()
 :precondition (and (at_x17)(at_y9))
 :poss-precondition (and (bridge_17_9_17_10))
 :effect (and (not (at_y9)) (at_y10))
)

(:action move_17_10_16_10
 :parameters ()
 :precondition (and (at_x17)(at_y10))
 :poss-precondition (and (bridge_16_10_17_10))
 :effect (and (not (at_x17)) (at_x16))
)

(:action move_17_10_18_10
 :parameters ()
 :precondition (and (at_x17)(at_y10))
 :poss-precondition (and (bridge_17_10_18_10))
 :effect (and (not (at_x17)) (at_x18))
)

(:action move_17_10_17_9
 :parameters ()
 :precondition (and (at_x17)(at_y10))
 :poss-precondition (and (bridge_17_9_17_10))
 :effect (and (not (at_y10)) (at_y9))
)

(:action move_17_10_17_11
 :parameters ()
 :precondition (and (at_x17)(at_y10))
 :poss-precondition (and (bridge_17_10_17_11))
 :effect (and (not (at_y10)) (at_y11))
)

(:action move_17_11_16_11
 :parameters ()
 :precondition (and (at_x17)(at_y11))
 :poss-precondition (and (bridge_16_11_17_11))
 :effect (and (not (at_x17)) (at_x16))
)

(:action move_17_11_18_11
 :parameters ()
 :precondition (and (at_x17)(at_y11))
 :poss-precondition (and (bridge_17_11_18_11))
 :effect (and (not (at_x17)) (at_x18))
)

(:action move_17_11_17_10
 :parameters ()
 :precondition (and (at_x17)(at_y11))
 :poss-precondition (and (bridge_17_10_17_11))
 :effect (and (not (at_y11)) (at_y10))
)

(:action move_17_11_17_12
 :parameters ()
 :precondition (and (at_x17)(at_y11))
 :poss-precondition (and (bridge_17_11_17_12))
 :effect (and (not (at_y11)) (at_y12))
)

(:action move_17_12_16_12
 :parameters ()
 :precondition (and (at_x17)(at_y12))
 :poss-precondition (and (bridge_16_12_17_12))
 :effect (and (not (at_x17)) (at_x16))
)

(:action move_17_12_18_12
 :parameters ()
 :precondition (and (at_x17)(at_y12))
 :poss-precondition (and (bridge_17_12_18_12))
 :effect (and (not (at_x17)) (at_x18))
)

(:action move_17_12_17_11
 :parameters ()
 :precondition (and (at_x17)(at_y12))
 :poss-precondition (and (bridge_17_11_17_12))
 :effect (and (not (at_y12)) (at_y11))
)

(:action move_17_12_17_13
 :parameters ()
 :precondition (and (at_x17)(at_y12))
 :poss-precondition (and (bridge_17_12_17_13))
 :effect (and (not (at_y12)) (at_y13))
)

(:action move_17_13_16_13
 :parameters ()
 :precondition (and (at_x17)(at_y13))
 :poss-precondition (and (bridge_16_13_17_13))
 :effect (and (not (at_x17)) (at_x16))
)

(:action move_17_13_18_13
 :parameters ()
 :precondition (and (at_x17)(at_y13))
 :poss-precondition (and (bridge_17_13_18_13))
 :effect (and (not (at_x17)) (at_x18))
)

(:action move_17_13_17_12
 :parameters ()
 :precondition (and (at_x17)(at_y13))
 :poss-precondition (and (bridge_17_12_17_13))
 :effect (and (not (at_y13)) (at_y12))
)

(:action move_17_13_17_14
 :parameters ()
 :precondition (and (at_x17)(at_y13))
 :poss-precondition (and (bridge_17_13_17_14))
 :effect (and (not (at_y13)) (at_y14))
)

(:action move_17_14_16_14
 :parameters ()
 :precondition (and (at_x17)(at_y14))
 :poss-precondition (and (bridge_16_14_17_14))
 :effect (and (not (at_x17)) (at_x16))
)

(:action move_17_14_18_14
 :parameters ()
 :precondition (and (at_x17)(at_y14))
 :poss-precondition (and (bridge_17_14_18_14))
 :effect (and (not (at_x17)) (at_x18))
)

(:action move_17_14_17_13
 :parameters ()
 :precondition (and (at_x17)(at_y14))
 :poss-precondition (and (bridge_17_13_17_14))
 :effect (and (not (at_y14)) (at_y13))
)

(:action move_17_14_17_15
 :parameters ()
 :precondition (and (at_x17)(at_y14))
 :poss-precondition (and (bridge_17_14_17_15))
 :effect (and (not (at_y14)) (at_y15))
)

(:action move_17_15_16_15
 :parameters ()
 :precondition (and (at_x17)(at_y15))
 :poss-precondition (and (bridge_16_15_17_15))
 :effect (and (not (at_x17)) (at_x16))
)

(:action move_17_15_18_15
 :parameters ()
 :precondition (and (at_x17)(at_y15))
 :poss-precondition (and (bridge_17_15_18_15))
 :effect (and (not (at_x17)) (at_x18))
)

(:action move_17_15_17_14
 :parameters ()
 :precondition (and (at_x17)(at_y15))
 :poss-precondition (and (bridge_17_14_17_15))
 :effect (and (not (at_y15)) (at_y14))
)

(:action move_17_15_17_16
 :parameters ()
 :precondition (and (at_x17)(at_y15))
 :poss-precondition (and (bridge_17_15_17_16))
 :effect (and (not (at_y15)) (at_y16))
)

(:action move_17_16_16_16
 :parameters ()
 :precondition (and (at_x17)(at_y16))
 :poss-precondition (and (bridge_16_16_17_16))
 :effect (and (not (at_x17)) (at_x16))
)

(:action move_17_16_18_16
 :parameters ()
 :precondition (and (at_x17)(at_y16))
 :poss-precondition (and (bridge_17_16_18_16))
 :effect (and (not (at_x17)) (at_x18))
)

(:action move_17_16_17_15
 :parameters ()
 :precondition (and (at_x17)(at_y16))
 :poss-precondition (and (bridge_17_15_17_16))
 :effect (and (not (at_y16)) (at_y15))
)

(:action move_17_16_17_17
 :parameters ()
 :precondition (and (at_x17)(at_y16))
 :poss-precondition (and (bridge_17_16_17_17))
 :effect (and (not (at_y16)) (at_y17))
)

(:action move_17_17_16_17
 :parameters ()
 :precondition (and (at_x17)(at_y17))
 :poss-precondition (and (bridge_16_17_17_17))
 :effect (and (not (at_x17)) (at_x16))
)

(:action move_17_17_18_17
 :parameters ()
 :precondition (and (at_x17)(at_y17))
 :poss-precondition (and (bridge_17_17_18_17))
 :effect (and (not (at_x17)) (at_x18))
)

(:action move_17_17_17_16
 :parameters ()
 :precondition (and (at_x17)(at_y17))
 :poss-precondition (and (bridge_17_16_17_17))
 :effect (and (not (at_y17)) (at_y16))
)

(:action move_17_17_17_18
 :parameters ()
 :precondition (and (at_x17)(at_y17))
 :poss-precondition (and (bridge_17_17_17_18))
 :effect (and (not (at_y17)) (at_y18))
)

(:action move_17_18_16_18
 :parameters ()
 :precondition (and (at_x17)(at_y18))
 :poss-precondition (and (bridge_16_18_17_18))
 :effect (and (not (at_x17)) (at_x16))
)

(:action move_17_18_18_18
 :parameters ()
 :precondition (and (at_x17)(at_y18))
 :poss-precondition (and (bridge_17_18_18_18))
 :effect (and (not (at_x17)) (at_x18))
)

(:action move_17_18_17_17
 :parameters ()
 :precondition (and (at_x17)(at_y18))
 :poss-precondition (and (bridge_17_17_17_18))
 :effect (and (not (at_y18)) (at_y17))
)

(:action move_17_18_17_19
 :parameters ()
 :precondition (and (at_x17)(at_y18))
 :poss-precondition (and (bridge_17_18_17_19))
 :effect (and (not (at_y18)) (at_y19))
)

(:action move_17_19_16_19
 :parameters ()
 :precondition (and (at_x17)(at_y19))
 :poss-precondition (and (bridge_16_19_17_19))
 :effect (and (not (at_x17)) (at_x16))
)

(:action move_17_19_18_19
 :parameters ()
 :precondition (and (at_x17)(at_y19))
 :poss-precondition (and (bridge_17_19_18_19))
 :effect (and (not (at_x17)) (at_x18))
)

(:action move_17_19_17_18
 :parameters ()
 :precondition (and (at_x17)(at_y19))
 :poss-precondition (and (bridge_17_18_17_19))
 :effect (and (not (at_y19)) (at_y18))
)

(:action move_17_19_17_20
 :parameters ()
 :precondition (and (at_x17)(at_y19))
 :poss-precondition (and (bridge_17_19_17_20))
 :effect (and (not (at_y19)) (at_y20))
)

(:action move_17_20_16_20
 :parameters ()
 :precondition (and (at_x17)(at_y20))
 :poss-precondition (and (bridge_16_20_17_20))
 :effect (and (not (at_x17)) (at_x16))
)

(:action move_17_20_18_20
 :parameters ()
 :precondition (and (at_x17)(at_y20))
 :poss-precondition (and (bridge_17_20_18_20))
 :effect (and (not (at_x17)) (at_x18))
)

(:action move_17_20_17_19
 :parameters ()
 :precondition (and (at_x17)(at_y20))
 :poss-precondition (and (bridge_17_19_17_20))
 :effect (and (not (at_y20)) (at_y19))
)

(:action move_17_20_17_21
 :parameters ()
 :precondition (and (at_x17)(at_y20))
 :poss-precondition (and (bridge_17_20_17_21))
 :effect (and (not (at_y20)) (at_y21))
)

(:action move_17_21_16_21
 :parameters ()
 :precondition (and (at_x17)(at_y21))
 :poss-precondition (and (bridge_16_21_17_21))
 :effect (and (not (at_x17)) (at_x16))
)

(:action move_17_21_18_21
 :parameters ()
 :precondition (and (at_x17)(at_y21))
 :poss-precondition (and (bridge_17_21_18_21))
 :effect (and (not (at_x17)) (at_x18))
)

(:action move_17_21_17_20
 :parameters ()
 :precondition (and (at_x17)(at_y21))
 :poss-precondition (and (bridge_17_20_17_21))
 :effect (and (not (at_y21)) (at_y20))
)

(:action move_17_21_17_22
 :parameters ()
 :precondition (and (at_x17)(at_y21))
 :poss-precondition (and (bridge_17_21_17_22))
 :effect (and (not (at_y21)) (at_y22))
)

(:action move_17_22_16_22
 :parameters ()
 :precondition (and (at_x17)(at_y22))
 :poss-precondition (and (bridge_16_22_17_22))
 :effect (and (not (at_x17)) (at_x16))
)

(:action move_17_22_18_22
 :parameters ()
 :precondition (and (at_x17)(at_y22))
 :poss-precondition (and (bridge_17_22_18_22))
 :effect (and (not (at_x17)) (at_x18))
)

(:action move_17_22_17_21
 :parameters ()
 :precondition (and (at_x17)(at_y22))
 :poss-precondition (and (bridge_17_21_17_22))
 :effect (and (not (at_y22)) (at_y21))
)

(:action move_17_22_17_23
 :parameters ()
 :precondition (and (at_x17)(at_y22))
 :poss-precondition (and (bridge_17_22_17_23))
 :effect (and (not (at_y22)) (at_y23))
)

(:action move_17_23_16_23
 :parameters ()
 :precondition (and (at_x17)(at_y23))
 :poss-precondition (and (bridge_16_23_17_23))
 :effect (and (not (at_x17)) (at_x16))
)

(:action move_17_23_18_23
 :parameters ()
 :precondition (and (at_x17)(at_y23))
 :poss-precondition (and (bridge_17_23_18_23))
 :effect (and (not (at_x17)) (at_x18))
)

(:action move_17_23_17_22
 :parameters ()
 :precondition (and (at_x17)(at_y23))
 :poss-precondition (and (bridge_17_22_17_23))
 :effect (and (not (at_y23)) (at_y22))
)

(:action move_17_23_17_24
 :parameters ()
 :precondition (and (at_x17)(at_y23))
 :poss-precondition (and (bridge_17_23_17_24))
 :effect (and (not (at_y23)) (at_y24))
)

(:action move_17_24_16_24
 :parameters ()
 :precondition (and (at_x17)(at_y24))
 :poss-precondition (and (bridge_16_24_17_24))
 :effect (and (not (at_x17)) (at_x16))
)

(:action move_17_24_18_24
 :parameters ()
 :precondition (and (at_x17)(at_y24))
 :poss-precondition (and (bridge_17_24_18_24))
 :effect (and (not (at_x17)) (at_x18))
)

(:action move_17_24_17_23
 :parameters ()
 :precondition (and (at_x17)(at_y24))
 :poss-precondition (and (bridge_17_23_17_24))
 :effect (and (not (at_y24)) (at_y23))
)

(:action move_17_24_17_25
 :parameters ()
 :precondition (and (at_x17)(at_y24))
 :poss-precondition (and (bridge_17_24_17_25))
 :effect (and (not (at_y24)) (at_y25))
)

(:action move_17_25_16_25
 :parameters ()
 :precondition (and (at_x17)(at_y25))
 :poss-precondition (and (bridge_16_25_17_25))
 :effect (and (not (at_x17)) (at_x16))
)

(:action move_17_25_18_25
 :parameters ()
 :precondition (and (at_x17)(at_y25))
 :poss-precondition (and (bridge_17_25_18_25))
 :effect (and (not (at_x17)) (at_x18))
)

(:action move_17_25_17_24
 :parameters ()
 :precondition (and (at_x17)(at_y25))
 :poss-precondition (and (bridge_17_24_17_25))
 :effect (and (not (at_y25)) (at_y24))
)

(:action move_17_25_17_26
 :parameters ()
 :precondition (and (at_x17)(at_y25))
 :poss-precondition (and (bridge_17_25_17_26))
 :effect (and (not (at_y25)) (at_y26))
)

(:action move_17_26_16_26
 :parameters ()
 :precondition (and (at_x17)(at_y26))
 :poss-precondition (and (bridge_16_26_17_26))
 :effect (and (not (at_x17)) (at_x16))
)

(:action move_17_26_18_26
 :parameters ()
 :precondition (and (at_x17)(at_y26))
 :poss-precondition (and (bridge_17_26_18_26))
 :effect (and (not (at_x17)) (at_x18))
)

(:action move_17_26_17_25
 :parameters ()
 :precondition (and (at_x17)(at_y26))
 :poss-precondition (and (bridge_17_25_17_26))
 :effect (and (not (at_y26)) (at_y25))
)

(:action move_17_26_17_27
 :parameters ()
 :precondition (and (at_x17)(at_y26))
 :poss-precondition (and (bridge_17_26_17_27))
 :effect (and (not (at_y26)) (at_y27))
)

(:action move_17_27_16_27
 :parameters ()
 :precondition (and (at_x17)(at_y27))
 :poss-precondition (and (bridge_16_27_17_27))
 :effect (and (not (at_x17)) (at_x16))
)

(:action move_17_27_18_27
 :parameters ()
 :precondition (and (at_x17)(at_y27))
 :poss-precondition (and (bridge_17_27_18_27))
 :effect (and (not (at_x17)) (at_x18))
)

(:action move_17_27_17_26
 :parameters ()
 :precondition (and (at_x17)(at_y27))
 :poss-precondition (and (bridge_17_26_17_27))
 :effect (and (not (at_y27)) (at_y26))
)

(:action move_17_27_17_28
 :parameters ()
 :precondition (and (at_x17)(at_y27))
 :poss-precondition (and (bridge_17_27_17_28))
 :effect (and (not (at_y27)) (at_y28))
)

(:action move_17_28_16_28
 :parameters ()
 :precondition (and (at_x17)(at_y28))
 :poss-precondition (and (bridge_16_28_17_28))
 :effect (and (not (at_x17)) (at_x16))
)

(:action move_17_28_18_28
 :parameters ()
 :precondition (and (at_x17)(at_y28))
 :poss-precondition (and (bridge_17_28_18_28))
 :effect (and (not (at_x17)) (at_x18))
)

(:action move_17_28_17_27
 :parameters ()
 :precondition (and (at_x17)(at_y28))
 :poss-precondition (and (bridge_17_27_17_28))
 :effect (and (not (at_y28)) (at_y27))
)

(:action move_17_28_17_29
 :parameters ()
 :precondition (and (at_x17)(at_y28))
 :poss-precondition (and (bridge_17_28_17_29))
 :effect (and (not (at_y28)) (at_y29))
)

(:action move_17_29_16_29
 :parameters ()
 :precondition (and (at_x17)(at_y29))
 :poss-precondition (and (bridge_16_29_17_29))
 :effect (and (not (at_x17)) (at_x16))
)

(:action move_17_29_18_29
 :parameters ()
 :precondition (and (at_x17)(at_y29))
 :poss-precondition (and (bridge_17_29_18_29))
 :effect (and (not (at_x17)) (at_x18))
)

(:action move_17_29_17_28
 :parameters ()
 :precondition (and (at_x17)(at_y29))
 :poss-precondition (and (bridge_17_28_17_29))
 :effect (and (not (at_y29)) (at_y28))
)

(:action move_17_29_17_30
 :parameters ()
 :precondition (and (at_x17)(at_y29))
 :poss-precondition (and (bridge_17_29_17_30))
 :effect (and (not (at_y29)) (at_y30))
)

(:action move_17_30_16_30
 :parameters ()
 :precondition (and (at_x17)(at_y30))
 :poss-precondition (and (bridge_16_30_17_30))
 :effect (and (not (at_x17)) (at_x16))
)

(:action move_17_30_18_30
 :parameters ()
 :precondition (and (at_x17)(at_y30))
 :poss-precondition (and (bridge_17_30_18_30))
 :effect (and (not (at_x17)) (at_x18))
)

(:action move_17_30_17_29
 :parameters ()
 :precondition (and (at_x17)(at_y30))
 :poss-precondition (and (bridge_17_29_17_30))
 :effect (and (not (at_y30)) (at_y29))
)

(:action move_17_30_17_31
 :parameters ()
 :precondition (and (at_x17)(at_y30))
 :poss-precondition (and (bridge_17_30_17_31))
 :effect (and (not (at_y30)) (at_y31))
)

(:action move_17_31_16_31
 :parameters ()
 :precondition (and (at_x17)(at_y31))
 :poss-precondition (and (bridge_16_31_17_31))
 :effect (and (not (at_x17)) (at_x16))
)

(:action move_17_31_18_31
 :parameters ()
 :precondition (and (at_x17)(at_y31))
 :poss-precondition (and (bridge_17_31_18_31))
 :effect (and (not (at_x17)) (at_x18))
)

(:action move_17_31_17_30
 :parameters ()
 :precondition (and (at_x17)(at_y31))
 :poss-precondition (and (bridge_17_30_17_31))
 :effect (and (not (at_y31)) (at_y30))
)

(:action move_18_0_17_0
 :parameters ()
 :precondition (and (at_x18)(at_y0))
 :poss-precondition (and (bridge_17_0_18_0))
 :effect (and (not (at_x18)) (at_x17))
)

(:action move_18_0_19_0
 :parameters ()
 :precondition (and (at_x18)(at_y0))
 :poss-precondition (and (bridge_18_0_19_0))
 :effect (and (not (at_x18)) (at_x19))
)

(:action move_18_0_18_1
 :parameters ()
 :precondition (and (at_x18)(at_y0))
 :poss-precondition (and (bridge_18_0_18_1))
 :effect (and (not (at_y0)) (at_y1))
)

(:action move_18_1_17_1
 :parameters ()
 :precondition (and (at_x18)(at_y1))
 :poss-precondition (and (bridge_17_1_18_1))
 :effect (and (not (at_x18)) (at_x17))
)

(:action move_18_1_19_1
 :parameters ()
 :precondition (and (at_x18)(at_y1))
 :poss-precondition (and (bridge_18_1_19_1))
 :effect (and (not (at_x18)) (at_x19))
)

(:action move_18_1_18_0
 :parameters ()
 :precondition (and (at_x18)(at_y1))
 :poss-precondition (and (bridge_18_0_18_1))
 :effect (and (not (at_y1)) (at_y0))
)

(:action move_18_1_18_2
 :parameters ()
 :precondition (and (at_x18)(at_y1))
 :poss-precondition (and (bridge_18_1_18_2))
 :effect (and (not (at_y1)) (at_y2))
)

(:action move_18_2_17_2
 :parameters ()
 :precondition (and (at_x18)(at_y2))
 :poss-precondition (and (bridge_17_2_18_2))
 :effect (and (not (at_x18)) (at_x17))
)

(:action move_18_2_19_2
 :parameters ()
 :precondition (and (at_x18)(at_y2))
 :poss-precondition (and (bridge_18_2_19_2))
 :effect (and (not (at_x18)) (at_x19))
)

(:action move_18_2_18_1
 :parameters ()
 :precondition (and (at_x18)(at_y2))
 :poss-precondition (and (bridge_18_1_18_2))
 :effect (and (not (at_y2)) (at_y1))
)

(:action move_18_2_18_3
 :parameters ()
 :precondition (and (at_x18)(at_y2))
 :poss-precondition (and (bridge_18_2_18_3))
 :effect (and (not (at_y2)) (at_y3))
)

(:action move_18_3_17_3
 :parameters ()
 :precondition (and (at_x18)(at_y3))
 :poss-precondition (and (bridge_17_3_18_3))
 :effect (and (not (at_x18)) (at_x17))
)

(:action move_18_3_19_3
 :parameters ()
 :precondition (and (at_x18)(at_y3))
 :poss-precondition (and (bridge_18_3_19_3))
 :effect (and (not (at_x18)) (at_x19))
)

(:action move_18_3_18_2
 :parameters ()
 :precondition (and (at_x18)(at_y3))
 :poss-precondition (and (bridge_18_2_18_3))
 :effect (and (not (at_y3)) (at_y2))
)

(:action move_18_3_18_4
 :parameters ()
 :precondition (and (at_x18)(at_y3))
 :poss-precondition (and (bridge_18_3_18_4))
 :effect (and (not (at_y3)) (at_y4))
)

(:action move_18_4_17_4
 :parameters ()
 :precondition (and (at_x18)(at_y4))
 :poss-precondition (and (bridge_17_4_18_4))
 :effect (and (not (at_x18)) (at_x17))
)

(:action move_18_4_19_4
 :parameters ()
 :precondition (and (at_x18)(at_y4))
 :poss-precondition (and (bridge_18_4_19_4))
 :effect (and (not (at_x18)) (at_x19))
)

(:action move_18_4_18_3
 :parameters ()
 :precondition (and (at_x18)(at_y4))
 :poss-precondition (and (bridge_18_3_18_4))
 :effect (and (not (at_y4)) (at_y3))
)

(:action move_18_4_18_5
 :parameters ()
 :precondition (and (at_x18)(at_y4))
 :poss-precondition (and (bridge_18_4_18_5))
 :effect (and (not (at_y4)) (at_y5))
)

(:action move_18_5_17_5
 :parameters ()
 :precondition (and (at_x18)(at_y5))
 :poss-precondition (and (bridge_17_5_18_5))
 :effect (and (not (at_x18)) (at_x17))
)

(:action move_18_5_19_5
 :parameters ()
 :precondition (and (at_x18)(at_y5))
 :poss-precondition (and (bridge_18_5_19_5))
 :effect (and (not (at_x18)) (at_x19))
)

(:action move_18_5_18_4
 :parameters ()
 :precondition (and (at_x18)(at_y5))
 :poss-precondition (and (bridge_18_4_18_5))
 :effect (and (not (at_y5)) (at_y4))
)

(:action move_18_5_18_6
 :parameters ()
 :precondition (and (at_x18)(at_y5))
 :poss-precondition (and (bridge_18_5_18_6))
 :effect (and (not (at_y5)) (at_y6))
)

(:action move_18_6_17_6
 :parameters ()
 :precondition (and (at_x18)(at_y6))
 :poss-precondition (and (bridge_17_6_18_6))
 :effect (and (not (at_x18)) (at_x17))
)

(:action move_18_6_19_6
 :parameters ()
 :precondition (and (at_x18)(at_y6))
 :poss-precondition (and (bridge_18_6_19_6))
 :effect (and (not (at_x18)) (at_x19))
)

(:action move_18_6_18_5
 :parameters ()
 :precondition (and (at_x18)(at_y6))
 :poss-precondition (and (bridge_18_5_18_6))
 :effect (and (not (at_y6)) (at_y5))
)

(:action move_18_6_18_7
 :parameters ()
 :precondition (and (at_x18)(at_y6))
 :poss-precondition (and (bridge_18_6_18_7))
 :effect (and (not (at_y6)) (at_y7))
)

(:action move_18_7_17_7
 :parameters ()
 :precondition (and (at_x18)(at_y7))
 :poss-precondition (and (bridge_17_7_18_7))
 :effect (and (not (at_x18)) (at_x17))
)

(:action move_18_7_19_7
 :parameters ()
 :precondition (and (at_x18)(at_y7))
 :poss-precondition (and (bridge_18_7_19_7))
 :effect (and (not (at_x18)) (at_x19))
)

(:action move_18_7_18_6
 :parameters ()
 :precondition (and (at_x18)(at_y7))
 :poss-precondition (and (bridge_18_6_18_7))
 :effect (and (not (at_y7)) (at_y6))
)

(:action move_18_7_18_8
 :parameters ()
 :precondition (and (at_x18)(at_y7))
 :poss-precondition (and (bridge_18_7_18_8))
 :effect (and (not (at_y7)) (at_y8))
)

(:action move_18_8_17_8
 :parameters ()
 :precondition (and (at_x18)(at_y8))
 :poss-precondition (and (bridge_17_8_18_8))
 :effect (and (not (at_x18)) (at_x17))
)

(:action move_18_8_19_8
 :parameters ()
 :precondition (and (at_x18)(at_y8))
 :poss-precondition (and (bridge_18_8_19_8))
 :effect (and (not (at_x18)) (at_x19))
)

(:action move_18_8_18_7
 :parameters ()
 :precondition (and (at_x18)(at_y8))
 :poss-precondition (and (bridge_18_7_18_8))
 :effect (and (not (at_y8)) (at_y7))
)

(:action move_18_8_18_9
 :parameters ()
 :precondition (and (at_x18)(at_y8))
 :poss-precondition (and (bridge_18_8_18_9))
 :effect (and (not (at_y8)) (at_y9))
)

(:action move_18_9_17_9
 :parameters ()
 :precondition (and (at_x18)(at_y9))
 :poss-precondition (and (bridge_17_9_18_9))
 :effect (and (not (at_x18)) (at_x17))
)

(:action move_18_9_19_9
 :parameters ()
 :precondition (and (at_x18)(at_y9))
 :poss-precondition (and (bridge_18_9_19_9))
 :effect (and (not (at_x18)) (at_x19))
)

(:action move_18_9_18_8
 :parameters ()
 :precondition (and (at_x18)(at_y9))
 :poss-precondition (and (bridge_18_8_18_9))
 :effect (and (not (at_y9)) (at_y8))
)

(:action move_18_9_18_10
 :parameters ()
 :precondition (and (at_x18)(at_y9))
 :poss-precondition (and (bridge_18_9_18_10))
 :effect (and (not (at_y9)) (at_y10))
)

(:action move_18_10_17_10
 :parameters ()
 :precondition (and (at_x18)(at_y10))
 :poss-precondition (and (bridge_17_10_18_10))
 :effect (and (not (at_x18)) (at_x17))
)

(:action move_18_10_19_10
 :parameters ()
 :precondition (and (at_x18)(at_y10))
 :poss-precondition (and (bridge_18_10_19_10))
 :effect (and (not (at_x18)) (at_x19))
)

(:action move_18_10_18_9
 :parameters ()
 :precondition (and (at_x18)(at_y10))
 :poss-precondition (and (bridge_18_9_18_10))
 :effect (and (not (at_y10)) (at_y9))
)

(:action move_18_10_18_11
 :parameters ()
 :precondition (and (at_x18)(at_y10))
 :poss-precondition (and (bridge_18_10_18_11))
 :effect (and (not (at_y10)) (at_y11))
)

(:action move_18_11_17_11
 :parameters ()
 :precondition (and (at_x18)(at_y11))
 :poss-precondition (and (bridge_17_11_18_11))
 :effect (and (not (at_x18)) (at_x17))
)

(:action move_18_11_19_11
 :parameters ()
 :precondition (and (at_x18)(at_y11))
 :poss-precondition (and (bridge_18_11_19_11))
 :effect (and (not (at_x18)) (at_x19))
)

(:action move_18_11_18_10
 :parameters ()
 :precondition (and (at_x18)(at_y11))
 :poss-precondition (and (bridge_18_10_18_11))
 :effect (and (not (at_y11)) (at_y10))
)

(:action move_18_11_18_12
 :parameters ()
 :precondition (and (at_x18)(at_y11))
 :poss-precondition (and (bridge_18_11_18_12))
 :effect (and (not (at_y11)) (at_y12))
)

(:action move_18_12_17_12
 :parameters ()
 :precondition (and (at_x18)(at_y12))
 :poss-precondition (and (bridge_17_12_18_12))
 :effect (and (not (at_x18)) (at_x17))
)

(:action move_18_12_19_12
 :parameters ()
 :precondition (and (at_x18)(at_y12))
 :poss-precondition (and (bridge_18_12_19_12))
 :effect (and (not (at_x18)) (at_x19))
)

(:action move_18_12_18_11
 :parameters ()
 :precondition (and (at_x18)(at_y12))
 :poss-precondition (and (bridge_18_11_18_12))
 :effect (and (not (at_y12)) (at_y11))
)

(:action move_18_12_18_13
 :parameters ()
 :precondition (and (at_x18)(at_y12))
 :poss-precondition (and (bridge_18_12_18_13))
 :effect (and (not (at_y12)) (at_y13))
)

(:action move_18_13_17_13
 :parameters ()
 :precondition (and (at_x18)(at_y13))
 :poss-precondition (and (bridge_17_13_18_13))
 :effect (and (not (at_x18)) (at_x17))
)

(:action move_18_13_19_13
 :parameters ()
 :precondition (and (at_x18)(at_y13))
 :poss-precondition (and (bridge_18_13_19_13))
 :effect (and (not (at_x18)) (at_x19))
)

(:action move_18_13_18_12
 :parameters ()
 :precondition (and (at_x18)(at_y13))
 :poss-precondition (and (bridge_18_12_18_13))
 :effect (and (not (at_y13)) (at_y12))
)

(:action move_18_13_18_14
 :parameters ()
 :precondition (and (at_x18)(at_y13))
 :poss-precondition (and (bridge_18_13_18_14))
 :effect (and (not (at_y13)) (at_y14))
)

(:action move_18_14_17_14
 :parameters ()
 :precondition (and (at_x18)(at_y14))
 :poss-precondition (and (bridge_17_14_18_14))
 :effect (and (not (at_x18)) (at_x17))
)

(:action move_18_14_19_14
 :parameters ()
 :precondition (and (at_x18)(at_y14))
 :poss-precondition (and (bridge_18_14_19_14))
 :effect (and (not (at_x18)) (at_x19))
)

(:action move_18_14_18_13
 :parameters ()
 :precondition (and (at_x18)(at_y14))
 :poss-precondition (and (bridge_18_13_18_14))
 :effect (and (not (at_y14)) (at_y13))
)

(:action move_18_14_18_15
 :parameters ()
 :precondition (and (at_x18)(at_y14))
 :poss-precondition (and (bridge_18_14_18_15))
 :effect (and (not (at_y14)) (at_y15))
)

(:action move_18_15_17_15
 :parameters ()
 :precondition (and (at_x18)(at_y15))
 :poss-precondition (and (bridge_17_15_18_15))
 :effect (and (not (at_x18)) (at_x17))
)

(:action move_18_15_19_15
 :parameters ()
 :precondition (and (at_x18)(at_y15))
 :poss-precondition (and (bridge_18_15_19_15))
 :effect (and (not (at_x18)) (at_x19))
)

(:action move_18_15_18_14
 :parameters ()
 :precondition (and (at_x18)(at_y15))
 :poss-precondition (and (bridge_18_14_18_15))
 :effect (and (not (at_y15)) (at_y14))
)

(:action move_18_15_18_16
 :parameters ()
 :precondition (and (at_x18)(at_y15))
 :poss-precondition (and (bridge_18_15_18_16))
 :effect (and (not (at_y15)) (at_y16))
)

(:action move_18_16_17_16
 :parameters ()
 :precondition (and (at_x18)(at_y16))
 :poss-precondition (and (bridge_17_16_18_16))
 :effect (and (not (at_x18)) (at_x17))
)

(:action move_18_16_19_16
 :parameters ()
 :precondition (and (at_x18)(at_y16))
 :poss-precondition (and (bridge_18_16_19_16))
 :effect (and (not (at_x18)) (at_x19))
)

(:action move_18_16_18_15
 :parameters ()
 :precondition (and (at_x18)(at_y16))
 :poss-precondition (and (bridge_18_15_18_16))
 :effect (and (not (at_y16)) (at_y15))
)

(:action move_18_16_18_17
 :parameters ()
 :precondition (and (at_x18)(at_y16))
 :poss-precondition (and (bridge_18_16_18_17))
 :effect (and (not (at_y16)) (at_y17))
)

(:action move_18_17_17_17
 :parameters ()
 :precondition (and (at_x18)(at_y17))
 :poss-precondition (and (bridge_17_17_18_17))
 :effect (and (not (at_x18)) (at_x17))
)

(:action move_18_17_19_17
 :parameters ()
 :precondition (and (at_x18)(at_y17))
 :poss-precondition (and (bridge_18_17_19_17))
 :effect (and (not (at_x18)) (at_x19))
)

(:action move_18_17_18_16
 :parameters ()
 :precondition (and (at_x18)(at_y17))
 :poss-precondition (and (bridge_18_16_18_17))
 :effect (and (not (at_y17)) (at_y16))
)

(:action move_18_17_18_18
 :parameters ()
 :precondition (and (at_x18)(at_y17))
 :poss-precondition (and (bridge_18_17_18_18))
 :effect (and (not (at_y17)) (at_y18))
)

(:action move_18_18_17_18
 :parameters ()
 :precondition (and (at_x18)(at_y18))
 :poss-precondition (and (bridge_17_18_18_18))
 :effect (and (not (at_x18)) (at_x17))
)

(:action move_18_18_19_18
 :parameters ()
 :precondition (and (at_x18)(at_y18))
 :poss-precondition (and (bridge_18_18_19_18))
 :effect (and (not (at_x18)) (at_x19))
)

(:action move_18_18_18_17
 :parameters ()
 :precondition (and (at_x18)(at_y18))
 :poss-precondition (and (bridge_18_17_18_18))
 :effect (and (not (at_y18)) (at_y17))
)

(:action move_18_18_18_19
 :parameters ()
 :precondition (and (at_x18)(at_y18))
 :poss-precondition (and (bridge_18_18_18_19))
 :effect (and (not (at_y18)) (at_y19))
)

(:action move_18_19_17_19
 :parameters ()
 :precondition (and (at_x18)(at_y19))
 :poss-precondition (and (bridge_17_19_18_19))
 :effect (and (not (at_x18)) (at_x17))
)

(:action move_18_19_19_19
 :parameters ()
 :precondition (and (at_x18)(at_y19))
 :poss-precondition (and (bridge_18_19_19_19))
 :effect (and (not (at_x18)) (at_x19))
)

(:action move_18_19_18_18
 :parameters ()
 :precondition (and (at_x18)(at_y19))
 :poss-precondition (and (bridge_18_18_18_19))
 :effect (and (not (at_y19)) (at_y18))
)

(:action move_18_19_18_20
 :parameters ()
 :precondition (and (at_x18)(at_y19))
 :poss-precondition (and (bridge_18_19_18_20))
 :effect (and (not (at_y19)) (at_y20))
)

(:action move_18_20_17_20
 :parameters ()
 :precondition (and (at_x18)(at_y20))
 :poss-precondition (and (bridge_17_20_18_20))
 :effect (and (not (at_x18)) (at_x17))
)

(:action move_18_20_19_20
 :parameters ()
 :precondition (and (at_x18)(at_y20))
 :poss-precondition (and (bridge_18_20_19_20))
 :effect (and (not (at_x18)) (at_x19))
)

(:action move_18_20_18_19
 :parameters ()
 :precondition (and (at_x18)(at_y20))
 :poss-precondition (and (bridge_18_19_18_20))
 :effect (and (not (at_y20)) (at_y19))
)

(:action move_18_20_18_21
 :parameters ()
 :precondition (and (at_x18)(at_y20))
 :poss-precondition (and (bridge_18_20_18_21))
 :effect (and (not (at_y20)) (at_y21))
)

(:action move_18_21_17_21
 :parameters ()
 :precondition (and (at_x18)(at_y21))
 :poss-precondition (and (bridge_17_21_18_21))
 :effect (and (not (at_x18)) (at_x17))
)

(:action move_18_21_19_21
 :parameters ()
 :precondition (and (at_x18)(at_y21))
 :poss-precondition (and (bridge_18_21_19_21))
 :effect (and (not (at_x18)) (at_x19))
)

(:action move_18_21_18_20
 :parameters ()
 :precondition (and (at_x18)(at_y21))
 :poss-precondition (and (bridge_18_20_18_21))
 :effect (and (not (at_y21)) (at_y20))
)

(:action move_18_21_18_22
 :parameters ()
 :precondition (and (at_x18)(at_y21))
 :poss-precondition (and (bridge_18_21_18_22))
 :effect (and (not (at_y21)) (at_y22))
)

(:action move_18_22_17_22
 :parameters ()
 :precondition (and (at_x18)(at_y22))
 :poss-precondition (and (bridge_17_22_18_22))
 :effect (and (not (at_x18)) (at_x17))
)

(:action move_18_22_19_22
 :parameters ()
 :precondition (and (at_x18)(at_y22))
 :poss-precondition (and (bridge_18_22_19_22))
 :effect (and (not (at_x18)) (at_x19))
)

(:action move_18_22_18_21
 :parameters ()
 :precondition (and (at_x18)(at_y22))
 :poss-precondition (and (bridge_18_21_18_22))
 :effect (and (not (at_y22)) (at_y21))
)

(:action move_18_22_18_23
 :parameters ()
 :precondition (and (at_x18)(at_y22))
 :poss-precondition (and (bridge_18_22_18_23))
 :effect (and (not (at_y22)) (at_y23))
)

(:action move_18_23_17_23
 :parameters ()
 :precondition (and (at_x18)(at_y23))
 :poss-precondition (and (bridge_17_23_18_23))
 :effect (and (not (at_x18)) (at_x17))
)

(:action move_18_23_19_23
 :parameters ()
 :precondition (and (at_x18)(at_y23))
 :poss-precondition (and (bridge_18_23_19_23))
 :effect (and (not (at_x18)) (at_x19))
)

(:action move_18_23_18_22
 :parameters ()
 :precondition (and (at_x18)(at_y23))
 :poss-precondition (and (bridge_18_22_18_23))
 :effect (and (not (at_y23)) (at_y22))
)

(:action move_18_23_18_24
 :parameters ()
 :precondition (and (at_x18)(at_y23))
 :poss-precondition (and (bridge_18_23_18_24))
 :effect (and (not (at_y23)) (at_y24))
)

(:action move_18_24_17_24
 :parameters ()
 :precondition (and (at_x18)(at_y24))
 :poss-precondition (and (bridge_17_24_18_24))
 :effect (and (not (at_x18)) (at_x17))
)

(:action move_18_24_19_24
 :parameters ()
 :precondition (and (at_x18)(at_y24))
 :poss-precondition (and (bridge_18_24_19_24))
 :effect (and (not (at_x18)) (at_x19))
)

(:action move_18_24_18_23
 :parameters ()
 :precondition (and (at_x18)(at_y24))
 :poss-precondition (and (bridge_18_23_18_24))
 :effect (and (not (at_y24)) (at_y23))
)

(:action move_18_24_18_25
 :parameters ()
 :precondition (and (at_x18)(at_y24))
 :poss-precondition (and (bridge_18_24_18_25))
 :effect (and (not (at_y24)) (at_y25))
)

(:action move_18_25_17_25
 :parameters ()
 :precondition (and (at_x18)(at_y25))
 :poss-precondition (and (bridge_17_25_18_25))
 :effect (and (not (at_x18)) (at_x17))
)

(:action move_18_25_19_25
 :parameters ()
 :precondition (and (at_x18)(at_y25))
 :poss-precondition (and (bridge_18_25_19_25))
 :effect (and (not (at_x18)) (at_x19))
)

(:action move_18_25_18_24
 :parameters ()
 :precondition (and (at_x18)(at_y25))
 :poss-precondition (and (bridge_18_24_18_25))
 :effect (and (not (at_y25)) (at_y24))
)

(:action move_18_25_18_26
 :parameters ()
 :precondition (and (at_x18)(at_y25))
 :poss-precondition (and (bridge_18_25_18_26))
 :effect (and (not (at_y25)) (at_y26))
)

(:action move_18_26_17_26
 :parameters ()
 :precondition (and (at_x18)(at_y26))
 :poss-precondition (and (bridge_17_26_18_26))
 :effect (and (not (at_x18)) (at_x17))
)

(:action move_18_26_19_26
 :parameters ()
 :precondition (and (at_x18)(at_y26))
 :poss-precondition (and (bridge_18_26_19_26))
 :effect (and (not (at_x18)) (at_x19))
)

(:action move_18_26_18_25
 :parameters ()
 :precondition (and (at_x18)(at_y26))
 :poss-precondition (and (bridge_18_25_18_26))
 :effect (and (not (at_y26)) (at_y25))
)

(:action move_18_26_18_27
 :parameters ()
 :precondition (and (at_x18)(at_y26))
 :poss-precondition (and (bridge_18_26_18_27))
 :effect (and (not (at_y26)) (at_y27))
)

(:action move_18_27_17_27
 :parameters ()
 :precondition (and (at_x18)(at_y27))
 :poss-precondition (and (bridge_17_27_18_27))
 :effect (and (not (at_x18)) (at_x17))
)

(:action move_18_27_19_27
 :parameters ()
 :precondition (and (at_x18)(at_y27))
 :poss-precondition (and (bridge_18_27_19_27))
 :effect (and (not (at_x18)) (at_x19))
)

(:action move_18_27_18_26
 :parameters ()
 :precondition (and (at_x18)(at_y27))
 :poss-precondition (and (bridge_18_26_18_27))
 :effect (and (not (at_y27)) (at_y26))
)

(:action move_18_27_18_28
 :parameters ()
 :precondition (and (at_x18)(at_y27))
 :poss-precondition (and (bridge_18_27_18_28))
 :effect (and (not (at_y27)) (at_y28))
)

(:action move_18_28_17_28
 :parameters ()
 :precondition (and (at_x18)(at_y28))
 :poss-precondition (and (bridge_17_28_18_28))
 :effect (and (not (at_x18)) (at_x17))
)

(:action move_18_28_19_28
 :parameters ()
 :precondition (and (at_x18)(at_y28))
 :poss-precondition (and (bridge_18_28_19_28))
 :effect (and (not (at_x18)) (at_x19))
)

(:action move_18_28_18_27
 :parameters ()
 :precondition (and (at_x18)(at_y28))
 :poss-precondition (and (bridge_18_27_18_28))
 :effect (and (not (at_y28)) (at_y27))
)

(:action move_18_28_18_29
 :parameters ()
 :precondition (and (at_x18)(at_y28))
 :poss-precondition (and (bridge_18_28_18_29))
 :effect (and (not (at_y28)) (at_y29))
)

(:action move_18_29_17_29
 :parameters ()
 :precondition (and (at_x18)(at_y29))
 :poss-precondition (and (bridge_17_29_18_29))
 :effect (and (not (at_x18)) (at_x17))
)

(:action move_18_29_19_29
 :parameters ()
 :precondition (and (at_x18)(at_y29))
 :poss-precondition (and (bridge_18_29_19_29))
 :effect (and (not (at_x18)) (at_x19))
)

(:action move_18_29_18_28
 :parameters ()
 :precondition (and (at_x18)(at_y29))
 :poss-precondition (and (bridge_18_28_18_29))
 :effect (and (not (at_y29)) (at_y28))
)

(:action move_18_29_18_30
 :parameters ()
 :precondition (and (at_x18)(at_y29))
 :poss-precondition (and (bridge_18_29_18_30))
 :effect (and (not (at_y29)) (at_y30))
)

(:action move_18_30_17_30
 :parameters ()
 :precondition (and (at_x18)(at_y30))
 :poss-precondition (and (bridge_17_30_18_30))
 :effect (and (not (at_x18)) (at_x17))
)

(:action move_18_30_19_30
 :parameters ()
 :precondition (and (at_x18)(at_y30))
 :poss-precondition (and (bridge_18_30_19_30))
 :effect (and (not (at_x18)) (at_x19))
)

(:action move_18_30_18_29
 :parameters ()
 :precondition (and (at_x18)(at_y30))
 :poss-precondition (and (bridge_18_29_18_30))
 :effect (and (not (at_y30)) (at_y29))
)

(:action move_18_30_18_31
 :parameters ()
 :precondition (and (at_x18)(at_y30))
 :poss-precondition (and (bridge_18_30_18_31))
 :effect (and (not (at_y30)) (at_y31))
)

(:action move_18_31_17_31
 :parameters ()
 :precondition (and (at_x18)(at_y31))
 :poss-precondition (and (bridge_17_31_18_31))
 :effect (and (not (at_x18)) (at_x17))
)

(:action move_18_31_19_31
 :parameters ()
 :precondition (and (at_x18)(at_y31))
 :poss-precondition (and (bridge_18_31_19_31))
 :effect (and (not (at_x18)) (at_x19))
)

(:action move_18_31_18_30
 :parameters ()
 :precondition (and (at_x18)(at_y31))
 :poss-precondition (and (bridge_18_30_18_31))
 :effect (and (not (at_y31)) (at_y30))
)

(:action move_19_0_18_0
 :parameters ()
 :precondition (and (at_x19)(at_y0))
 :poss-precondition (and (bridge_18_0_19_0))
 :effect (and (not (at_x19)) (at_x18))
)

(:action move_19_0_20_0
 :parameters ()
 :precondition (and (at_x19)(at_y0))
 :poss-precondition (and (bridge_19_0_20_0))
 :effect (and (not (at_x19)) (at_x20))
)

(:action move_19_0_19_1
 :parameters ()
 :precondition (and (at_x19)(at_y0))
 :poss-precondition (and (bridge_19_0_19_1))
 :effect (and (not (at_y0)) (at_y1))
)

(:action move_19_1_18_1
 :parameters ()
 :precondition (and (at_x19)(at_y1))
 :poss-precondition (and (bridge_18_1_19_1))
 :effect (and (not (at_x19)) (at_x18))
)

(:action move_19_1_20_1
 :parameters ()
 :precondition (and (at_x19)(at_y1))
 :poss-precondition (and (bridge_19_1_20_1))
 :effect (and (not (at_x19)) (at_x20))
)

(:action move_19_1_19_0
 :parameters ()
 :precondition (and (at_x19)(at_y1))
 :poss-precondition (and (bridge_19_0_19_1))
 :effect (and (not (at_y1)) (at_y0))
)

(:action move_19_1_19_2
 :parameters ()
 :precondition (and (at_x19)(at_y1))
 :poss-precondition (and (bridge_19_1_19_2))
 :effect (and (not (at_y1)) (at_y2))
)

(:action move_19_2_18_2
 :parameters ()
 :precondition (and (at_x19)(at_y2))
 :poss-precondition (and (bridge_18_2_19_2))
 :effect (and (not (at_x19)) (at_x18))
)

(:action move_19_2_20_2
 :parameters ()
 :precondition (and (at_x19)(at_y2))
 :poss-precondition (and (bridge_19_2_20_2))
 :effect (and (not (at_x19)) (at_x20))
)

(:action move_19_2_19_1
 :parameters ()
 :precondition (and (at_x19)(at_y2))
 :poss-precondition (and (bridge_19_1_19_2))
 :effect (and (not (at_y2)) (at_y1))
)

(:action move_19_2_19_3
 :parameters ()
 :precondition (and (at_x19)(at_y2))
 :poss-precondition (and (bridge_19_2_19_3))
 :effect (and (not (at_y2)) (at_y3))
)

(:action move_19_3_18_3
 :parameters ()
 :precondition (and (at_x19)(at_y3))
 :poss-precondition (and (bridge_18_3_19_3))
 :effect (and (not (at_x19)) (at_x18))
)

(:action move_19_3_20_3
 :parameters ()
 :precondition (and (at_x19)(at_y3))
 :poss-precondition (and (bridge_19_3_20_3))
 :effect (and (not (at_x19)) (at_x20))
)

(:action move_19_3_19_2
 :parameters ()
 :precondition (and (at_x19)(at_y3))
 :poss-precondition (and (bridge_19_2_19_3))
 :effect (and (not (at_y3)) (at_y2))
)

(:action move_19_3_19_4
 :parameters ()
 :precondition (and (at_x19)(at_y3))
 :poss-precondition (and (bridge_19_3_19_4))
 :effect (and (not (at_y3)) (at_y4))
)

(:action move_19_4_18_4
 :parameters ()
 :precondition (and (at_x19)(at_y4))
 :poss-precondition (and (bridge_18_4_19_4))
 :effect (and (not (at_x19)) (at_x18))
)

(:action move_19_4_20_4
 :parameters ()
 :precondition (and (at_x19)(at_y4))
 :poss-precondition (and (bridge_19_4_20_4))
 :effect (and (not (at_x19)) (at_x20))
)

(:action move_19_4_19_3
 :parameters ()
 :precondition (and (at_x19)(at_y4))
 :poss-precondition (and (bridge_19_3_19_4))
 :effect (and (not (at_y4)) (at_y3))
)

(:action move_19_4_19_5
 :parameters ()
 :precondition (and (at_x19)(at_y4))
 :poss-precondition (and (bridge_19_4_19_5))
 :effect (and (not (at_y4)) (at_y5))
)

(:action move_19_5_18_5
 :parameters ()
 :precondition (and (at_x19)(at_y5))
 :poss-precondition (and (bridge_18_5_19_5))
 :effect (and (not (at_x19)) (at_x18))
)

(:action move_19_5_20_5
 :parameters ()
 :precondition (and (at_x19)(at_y5))
 :poss-precondition (and (bridge_19_5_20_5))
 :effect (and (not (at_x19)) (at_x20))
)

(:action move_19_5_19_4
 :parameters ()
 :precondition (and (at_x19)(at_y5))
 :poss-precondition (and (bridge_19_4_19_5))
 :effect (and (not (at_y5)) (at_y4))
)

(:action move_19_5_19_6
 :parameters ()
 :precondition (and (at_x19)(at_y5))
 :poss-precondition (and (bridge_19_5_19_6))
 :effect (and (not (at_y5)) (at_y6))
)

(:action move_19_6_18_6
 :parameters ()
 :precondition (and (at_x19)(at_y6))
 :poss-precondition (and (bridge_18_6_19_6))
 :effect (and (not (at_x19)) (at_x18))
)

(:action move_19_6_20_6
 :parameters ()
 :precondition (and (at_x19)(at_y6))
 :poss-precondition (and (bridge_19_6_20_6))
 :effect (and (not (at_x19)) (at_x20))
)

(:action move_19_6_19_5
 :parameters ()
 :precondition (and (at_x19)(at_y6))
 :poss-precondition (and (bridge_19_5_19_6))
 :effect (and (not (at_y6)) (at_y5))
)

(:action move_19_6_19_7
 :parameters ()
 :precondition (and (at_x19)(at_y6))
 :poss-precondition (and (bridge_19_6_19_7))
 :effect (and (not (at_y6)) (at_y7))
)

(:action move_19_7_18_7
 :parameters ()
 :precondition (and (at_x19)(at_y7))
 :poss-precondition (and (bridge_18_7_19_7))
 :effect (and (not (at_x19)) (at_x18))
)

(:action move_19_7_20_7
 :parameters ()
 :precondition (and (at_x19)(at_y7))
 :poss-precondition (and (bridge_19_7_20_7))
 :effect (and (not (at_x19)) (at_x20))
)

(:action move_19_7_19_6
 :parameters ()
 :precondition (and (at_x19)(at_y7))
 :poss-precondition (and (bridge_19_6_19_7))
 :effect (and (not (at_y7)) (at_y6))
)

(:action move_19_7_19_8
 :parameters ()
 :precondition (and (at_x19)(at_y7))
 :poss-precondition (and (bridge_19_7_19_8))
 :effect (and (not (at_y7)) (at_y8))
)

(:action move_19_8_18_8
 :parameters ()
 :precondition (and (at_x19)(at_y8))
 :poss-precondition (and (bridge_18_8_19_8))
 :effect (and (not (at_x19)) (at_x18))
)

(:action move_19_8_20_8
 :parameters ()
 :precondition (and (at_x19)(at_y8))
 :poss-precondition (and (bridge_19_8_20_8))
 :effect (and (not (at_x19)) (at_x20))
)

(:action move_19_8_19_7
 :parameters ()
 :precondition (and (at_x19)(at_y8))
 :poss-precondition (and (bridge_19_7_19_8))
 :effect (and (not (at_y8)) (at_y7))
)

(:action move_19_8_19_9
 :parameters ()
 :precondition (and (at_x19)(at_y8))
 :poss-precondition (and (bridge_19_8_19_9))
 :effect (and (not (at_y8)) (at_y9))
)

(:action move_19_9_18_9
 :parameters ()
 :precondition (and (at_x19)(at_y9))
 :poss-precondition (and (bridge_18_9_19_9))
 :effect (and (not (at_x19)) (at_x18))
)

(:action move_19_9_20_9
 :parameters ()
 :precondition (and (at_x19)(at_y9))
 :poss-precondition (and (bridge_19_9_20_9))
 :effect (and (not (at_x19)) (at_x20))
)

(:action move_19_9_19_8
 :parameters ()
 :precondition (and (at_x19)(at_y9))
 :poss-precondition (and (bridge_19_8_19_9))
 :effect (and (not (at_y9)) (at_y8))
)

(:action move_19_9_19_10
 :parameters ()
 :precondition (and (at_x19)(at_y9))
 :poss-precondition (and (bridge_19_9_19_10))
 :effect (and (not (at_y9)) (at_y10))
)

(:action move_19_10_18_10
 :parameters ()
 :precondition (and (at_x19)(at_y10))
 :poss-precondition (and (bridge_18_10_19_10))
 :effect (and (not (at_x19)) (at_x18))
)

(:action move_19_10_20_10
 :parameters ()
 :precondition (and (at_x19)(at_y10))
 :poss-precondition (and (bridge_19_10_20_10))
 :effect (and (not (at_x19)) (at_x20))
)

(:action move_19_10_19_9
 :parameters ()
 :precondition (and (at_x19)(at_y10))
 :poss-precondition (and (bridge_19_9_19_10))
 :effect (and (not (at_y10)) (at_y9))
)

(:action move_19_10_19_11
 :parameters ()
 :precondition (and (at_x19)(at_y10))
 :poss-precondition (and (bridge_19_10_19_11))
 :effect (and (not (at_y10)) (at_y11))
)

(:action move_19_11_18_11
 :parameters ()
 :precondition (and (at_x19)(at_y11))
 :poss-precondition (and (bridge_18_11_19_11))
 :effect (and (not (at_x19)) (at_x18))
)

(:action move_19_11_20_11
 :parameters ()
 :precondition (and (at_x19)(at_y11))
 :poss-precondition (and (bridge_19_11_20_11))
 :effect (and (not (at_x19)) (at_x20))
)

(:action move_19_11_19_10
 :parameters ()
 :precondition (and (at_x19)(at_y11))
 :poss-precondition (and (bridge_19_10_19_11))
 :effect (and (not (at_y11)) (at_y10))
)

(:action move_19_11_19_12
 :parameters ()
 :precondition (and (at_x19)(at_y11))
 :poss-precondition (and (bridge_19_11_19_12))
 :effect (and (not (at_y11)) (at_y12))
)

(:action move_19_12_18_12
 :parameters ()
 :precondition (and (at_x19)(at_y12))
 :poss-precondition (and (bridge_18_12_19_12))
 :effect (and (not (at_x19)) (at_x18))
)

(:action move_19_12_20_12
 :parameters ()
 :precondition (and (at_x19)(at_y12))
 :poss-precondition (and (bridge_19_12_20_12))
 :effect (and (not (at_x19)) (at_x20))
)

(:action move_19_12_19_11
 :parameters ()
 :precondition (and (at_x19)(at_y12))
 :poss-precondition (and (bridge_19_11_19_12))
 :effect (and (not (at_y12)) (at_y11))
)

(:action move_19_12_19_13
 :parameters ()
 :precondition (and (at_x19)(at_y12))
 :poss-precondition (and (bridge_19_12_19_13))
 :effect (and (not (at_y12)) (at_y13))
)

(:action move_19_13_18_13
 :parameters ()
 :precondition (and (at_x19)(at_y13))
 :poss-precondition (and (bridge_18_13_19_13))
 :effect (and (not (at_x19)) (at_x18))
)

(:action move_19_13_20_13
 :parameters ()
 :precondition (and (at_x19)(at_y13))
 :poss-precondition (and (bridge_19_13_20_13))
 :effect (and (not (at_x19)) (at_x20))
)

(:action move_19_13_19_12
 :parameters ()
 :precondition (and (at_x19)(at_y13))
 :poss-precondition (and (bridge_19_12_19_13))
 :effect (and (not (at_y13)) (at_y12))
)

(:action move_19_13_19_14
 :parameters ()
 :precondition (and (at_x19)(at_y13))
 :poss-precondition (and (bridge_19_13_19_14))
 :effect (and (not (at_y13)) (at_y14))
)

(:action move_19_14_18_14
 :parameters ()
 :precondition (and (at_x19)(at_y14))
 :poss-precondition (and (bridge_18_14_19_14))
 :effect (and (not (at_x19)) (at_x18))
)

(:action move_19_14_20_14
 :parameters ()
 :precondition (and (at_x19)(at_y14))
 :poss-precondition (and (bridge_19_14_20_14))
 :effect (and (not (at_x19)) (at_x20))
)

(:action move_19_14_19_13
 :parameters ()
 :precondition (and (at_x19)(at_y14))
 :poss-precondition (and (bridge_19_13_19_14))
 :effect (and (not (at_y14)) (at_y13))
)

(:action move_19_14_19_15
 :parameters ()
 :precondition (and (at_x19)(at_y14))
 :poss-precondition (and (bridge_19_14_19_15))
 :effect (and (not (at_y14)) (at_y15))
)

(:action move_19_15_18_15
 :parameters ()
 :precondition (and (at_x19)(at_y15))
 :poss-precondition (and (bridge_18_15_19_15))
 :effect (and (not (at_x19)) (at_x18))
)

(:action move_19_15_20_15
 :parameters ()
 :precondition (and (at_x19)(at_y15))
 :poss-precondition (and (bridge_19_15_20_15))
 :effect (and (not (at_x19)) (at_x20))
)

(:action move_19_15_19_14
 :parameters ()
 :precondition (and (at_x19)(at_y15))
 :poss-precondition (and (bridge_19_14_19_15))
 :effect (and (not (at_y15)) (at_y14))
)

(:action move_19_15_19_16
 :parameters ()
 :precondition (and (at_x19)(at_y15))
 :poss-precondition (and (bridge_19_15_19_16))
 :effect (and (not (at_y15)) (at_y16))
)

(:action move_19_16_18_16
 :parameters ()
 :precondition (and (at_x19)(at_y16))
 :poss-precondition (and (bridge_18_16_19_16))
 :effect (and (not (at_x19)) (at_x18))
)

(:action move_19_16_20_16
 :parameters ()
 :precondition (and (at_x19)(at_y16))
 :poss-precondition (and (bridge_19_16_20_16))
 :effect (and (not (at_x19)) (at_x20))
)

(:action move_19_16_19_15
 :parameters ()
 :precondition (and (at_x19)(at_y16))
 :poss-precondition (and (bridge_19_15_19_16))
 :effect (and (not (at_y16)) (at_y15))
)

(:action move_19_16_19_17
 :parameters ()
 :precondition (and (at_x19)(at_y16))
 :poss-precondition (and (bridge_19_16_19_17))
 :effect (and (not (at_y16)) (at_y17))
)

(:action move_19_17_18_17
 :parameters ()
 :precondition (and (at_x19)(at_y17))
 :poss-precondition (and (bridge_18_17_19_17))
 :effect (and (not (at_x19)) (at_x18))
)

(:action move_19_17_20_17
 :parameters ()
 :precondition (and (at_x19)(at_y17))
 :poss-precondition (and (bridge_19_17_20_17))
 :effect (and (not (at_x19)) (at_x20))
)

(:action move_19_17_19_16
 :parameters ()
 :precondition (and (at_x19)(at_y17))
 :poss-precondition (and (bridge_19_16_19_17))
 :effect (and (not (at_y17)) (at_y16))
)

(:action move_19_17_19_18
 :parameters ()
 :precondition (and (at_x19)(at_y17))
 :poss-precondition (and (bridge_19_17_19_18))
 :effect (and (not (at_y17)) (at_y18))
)

(:action move_19_18_18_18
 :parameters ()
 :precondition (and (at_x19)(at_y18))
 :poss-precondition (and (bridge_18_18_19_18))
 :effect (and (not (at_x19)) (at_x18))
)

(:action move_19_18_20_18
 :parameters ()
 :precondition (and (at_x19)(at_y18))
 :poss-precondition (and (bridge_19_18_20_18))
 :effect (and (not (at_x19)) (at_x20))
)

(:action move_19_18_19_17
 :parameters ()
 :precondition (and (at_x19)(at_y18))
 :poss-precondition (and (bridge_19_17_19_18))
 :effect (and (not (at_y18)) (at_y17))
)

(:action move_19_18_19_19
 :parameters ()
 :precondition (and (at_x19)(at_y18))
 :poss-precondition (and (bridge_19_18_19_19))
 :effect (and (not (at_y18)) (at_y19))
)

(:action move_19_19_18_19
 :parameters ()
 :precondition (and (at_x19)(at_y19))
 :poss-precondition (and (bridge_18_19_19_19))
 :effect (and (not (at_x19)) (at_x18))
)

(:action move_19_19_20_19
 :parameters ()
 :precondition (and (at_x19)(at_y19))
 :poss-precondition (and (bridge_19_19_20_19))
 :effect (and (not (at_x19)) (at_x20))
)

(:action move_19_19_19_18
 :parameters ()
 :precondition (and (at_x19)(at_y19))
 :poss-precondition (and (bridge_19_18_19_19))
 :effect (and (not (at_y19)) (at_y18))
)

(:action move_19_19_19_20
 :parameters ()
 :precondition (and (at_x19)(at_y19))
 :poss-precondition (and (bridge_19_19_19_20))
 :effect (and (not (at_y19)) (at_y20))
)

(:action move_19_20_18_20
 :parameters ()
 :precondition (and (at_x19)(at_y20))
 :poss-precondition (and (bridge_18_20_19_20))
 :effect (and (not (at_x19)) (at_x18))
)

(:action move_19_20_20_20
 :parameters ()
 :precondition (and (at_x19)(at_y20))
 :poss-precondition (and (bridge_19_20_20_20))
 :effect (and (not (at_x19)) (at_x20))
)

(:action move_19_20_19_19
 :parameters ()
 :precondition (and (at_x19)(at_y20))
 :poss-precondition (and (bridge_19_19_19_20))
 :effect (and (not (at_y20)) (at_y19))
)

(:action move_19_20_19_21
 :parameters ()
 :precondition (and (at_x19)(at_y20))
 :poss-precondition (and (bridge_19_20_19_21))
 :effect (and (not (at_y20)) (at_y21))
)

(:action move_19_21_18_21
 :parameters ()
 :precondition (and (at_x19)(at_y21))
 :poss-precondition (and (bridge_18_21_19_21))
 :effect (and (not (at_x19)) (at_x18))
)

(:action move_19_21_20_21
 :parameters ()
 :precondition (and (at_x19)(at_y21))
 :poss-precondition (and (bridge_19_21_20_21))
 :effect (and (not (at_x19)) (at_x20))
)

(:action move_19_21_19_20
 :parameters ()
 :precondition (and (at_x19)(at_y21))
 :poss-precondition (and (bridge_19_20_19_21))
 :effect (and (not (at_y21)) (at_y20))
)

(:action move_19_21_19_22
 :parameters ()
 :precondition (and (at_x19)(at_y21))
 :poss-precondition (and (bridge_19_21_19_22))
 :effect (and (not (at_y21)) (at_y22))
)

(:action move_19_22_18_22
 :parameters ()
 :precondition (and (at_x19)(at_y22))
 :poss-precondition (and (bridge_18_22_19_22))
 :effect (and (not (at_x19)) (at_x18))
)

(:action move_19_22_20_22
 :parameters ()
 :precondition (and (at_x19)(at_y22))
 :poss-precondition (and (bridge_19_22_20_22))
 :effect (and (not (at_x19)) (at_x20))
)

(:action move_19_22_19_21
 :parameters ()
 :precondition (and (at_x19)(at_y22))
 :poss-precondition (and (bridge_19_21_19_22))
 :effect (and (not (at_y22)) (at_y21))
)

(:action move_19_22_19_23
 :parameters ()
 :precondition (and (at_x19)(at_y22))
 :poss-precondition (and (bridge_19_22_19_23))
 :effect (and (not (at_y22)) (at_y23))
)

(:action move_19_23_18_23
 :parameters ()
 :precondition (and (at_x19)(at_y23))
 :poss-precondition (and (bridge_18_23_19_23))
 :effect (and (not (at_x19)) (at_x18))
)

(:action move_19_23_20_23
 :parameters ()
 :precondition (and (at_x19)(at_y23))
 :poss-precondition (and (bridge_19_23_20_23))
 :effect (and (not (at_x19)) (at_x20))
)

(:action move_19_23_19_22
 :parameters ()
 :precondition (and (at_x19)(at_y23))
 :poss-precondition (and (bridge_19_22_19_23))
 :effect (and (not (at_y23)) (at_y22))
)

(:action move_19_23_19_24
 :parameters ()
 :precondition (and (at_x19)(at_y23))
 :poss-precondition (and (bridge_19_23_19_24))
 :effect (and (not (at_y23)) (at_y24))
)

(:action move_19_24_18_24
 :parameters ()
 :precondition (and (at_x19)(at_y24))
 :poss-precondition (and (bridge_18_24_19_24))
 :effect (and (not (at_x19)) (at_x18))
)

(:action move_19_24_20_24
 :parameters ()
 :precondition (and (at_x19)(at_y24))
 :poss-precondition (and (bridge_19_24_20_24))
 :effect (and (not (at_x19)) (at_x20))
)

(:action move_19_24_19_23
 :parameters ()
 :precondition (and (at_x19)(at_y24))
 :poss-precondition (and (bridge_19_23_19_24))
 :effect (and (not (at_y24)) (at_y23))
)

(:action move_19_24_19_25
 :parameters ()
 :precondition (and (at_x19)(at_y24))
 :poss-precondition (and (bridge_19_24_19_25))
 :effect (and (not (at_y24)) (at_y25))
)

(:action move_19_25_18_25
 :parameters ()
 :precondition (and (at_x19)(at_y25))
 :poss-precondition (and (bridge_18_25_19_25))
 :effect (and (not (at_x19)) (at_x18))
)

(:action move_19_25_20_25
 :parameters ()
 :precondition (and (at_x19)(at_y25))
 :poss-precondition (and (bridge_19_25_20_25))
 :effect (and (not (at_x19)) (at_x20))
)

(:action move_19_25_19_24
 :parameters ()
 :precondition (and (at_x19)(at_y25))
 :poss-precondition (and (bridge_19_24_19_25))
 :effect (and (not (at_y25)) (at_y24))
)

(:action move_19_25_19_26
 :parameters ()
 :precondition (and (at_x19)(at_y25))
 :poss-precondition (and (bridge_19_25_19_26))
 :effect (and (not (at_y25)) (at_y26))
)

(:action move_19_26_18_26
 :parameters ()
 :precondition (and (at_x19)(at_y26))
 :poss-precondition (and (bridge_18_26_19_26))
 :effect (and (not (at_x19)) (at_x18))
)

(:action move_19_26_20_26
 :parameters ()
 :precondition (and (at_x19)(at_y26))
 :poss-precondition (and (bridge_19_26_20_26))
 :effect (and (not (at_x19)) (at_x20))
)

(:action move_19_26_19_25
 :parameters ()
 :precondition (and (at_x19)(at_y26))
 :poss-precondition (and (bridge_19_25_19_26))
 :effect (and (not (at_y26)) (at_y25))
)

(:action move_19_26_19_27
 :parameters ()
 :precondition (and (at_x19)(at_y26))
 :poss-precondition (and (bridge_19_26_19_27))
 :effect (and (not (at_y26)) (at_y27))
)

(:action move_19_27_18_27
 :parameters ()
 :precondition (and (at_x19)(at_y27))
 :poss-precondition (and (bridge_18_27_19_27))
 :effect (and (not (at_x19)) (at_x18))
)

(:action move_19_27_20_27
 :parameters ()
 :precondition (and (at_x19)(at_y27))
 :poss-precondition (and (bridge_19_27_20_27))
 :effect (and (not (at_x19)) (at_x20))
)

(:action move_19_27_19_26
 :parameters ()
 :precondition (and (at_x19)(at_y27))
 :poss-precondition (and (bridge_19_26_19_27))
 :effect (and (not (at_y27)) (at_y26))
)

(:action move_19_27_19_28
 :parameters ()
 :precondition (and (at_x19)(at_y27))
 :poss-precondition (and (bridge_19_27_19_28))
 :effect (and (not (at_y27)) (at_y28))
)

(:action move_19_28_18_28
 :parameters ()
 :precondition (and (at_x19)(at_y28))
 :poss-precondition (and (bridge_18_28_19_28))
 :effect (and (not (at_x19)) (at_x18))
)

(:action move_19_28_20_28
 :parameters ()
 :precondition (and (at_x19)(at_y28))
 :poss-precondition (and (bridge_19_28_20_28))
 :effect (and (not (at_x19)) (at_x20))
)

(:action move_19_28_19_27
 :parameters ()
 :precondition (and (at_x19)(at_y28))
 :poss-precondition (and (bridge_19_27_19_28))
 :effect (and (not (at_y28)) (at_y27))
)

(:action move_19_28_19_29
 :parameters ()
 :precondition (and (at_x19)(at_y28))
 :poss-precondition (and (bridge_19_28_19_29))
 :effect (and (not (at_y28)) (at_y29))
)

(:action move_19_29_18_29
 :parameters ()
 :precondition (and (at_x19)(at_y29))
 :poss-precondition (and (bridge_18_29_19_29))
 :effect (and (not (at_x19)) (at_x18))
)

(:action move_19_29_20_29
 :parameters ()
 :precondition (and (at_x19)(at_y29))
 :poss-precondition (and (bridge_19_29_20_29))
 :effect (and (not (at_x19)) (at_x20))
)

(:action move_19_29_19_28
 :parameters ()
 :precondition (and (at_x19)(at_y29))
 :poss-precondition (and (bridge_19_28_19_29))
 :effect (and (not (at_y29)) (at_y28))
)

(:action move_19_29_19_30
 :parameters ()
 :precondition (and (at_x19)(at_y29))
 :poss-precondition (and (bridge_19_29_19_30))
 :effect (and (not (at_y29)) (at_y30))
)

(:action move_19_30_18_30
 :parameters ()
 :precondition (and (at_x19)(at_y30))
 :poss-precondition (and (bridge_18_30_19_30))
 :effect (and (not (at_x19)) (at_x18))
)

(:action move_19_30_20_30
 :parameters ()
 :precondition (and (at_x19)(at_y30))
 :poss-precondition (and (bridge_19_30_20_30))
 :effect (and (not (at_x19)) (at_x20))
)

(:action move_19_30_19_29
 :parameters ()
 :precondition (and (at_x19)(at_y30))
 :poss-precondition (and (bridge_19_29_19_30))
 :effect (and (not (at_y30)) (at_y29))
)

(:action move_19_30_19_31
 :parameters ()
 :precondition (and (at_x19)(at_y30))
 :poss-precondition (and (bridge_19_30_19_31))
 :effect (and (not (at_y30)) (at_y31))
)

(:action move_19_31_18_31
 :parameters ()
 :precondition (and (at_x19)(at_y31))
 :poss-precondition (and (bridge_18_31_19_31))
 :effect (and (not (at_x19)) (at_x18))
)

(:action move_19_31_20_31
 :parameters ()
 :precondition (and (at_x19)(at_y31))
 :poss-precondition (and (bridge_19_31_20_31))
 :effect (and (not (at_x19)) (at_x20))
)

(:action move_19_31_19_30
 :parameters ()
 :precondition (and (at_x19)(at_y31))
 :poss-precondition (and (bridge_19_30_19_31))
 :effect (and (not (at_y31)) (at_y30))
)

(:action move_20_0_19_0
 :parameters ()
 :precondition (and (at_x20)(at_y0))
 :poss-precondition (and (bridge_19_0_20_0))
 :effect (and (not (at_x20)) (at_x19))
)

(:action move_20_0_21_0
 :parameters ()
 :precondition (and (at_x20)(at_y0))
 :poss-precondition (and (bridge_20_0_21_0))
 :effect (and (not (at_x20)) (at_x21))
)

(:action move_20_0_20_1
 :parameters ()
 :precondition (and (at_x20)(at_y0))
 :poss-precondition (and (bridge_20_0_20_1))
 :effect (and (not (at_y0)) (at_y1))
)

(:action move_20_1_19_1
 :parameters ()
 :precondition (and (at_x20)(at_y1))
 :poss-precondition (and (bridge_19_1_20_1))
 :effect (and (not (at_x20)) (at_x19))
)

(:action move_20_1_21_1
 :parameters ()
 :precondition (and (at_x20)(at_y1))
 :poss-precondition (and (bridge_20_1_21_1))
 :effect (and (not (at_x20)) (at_x21))
)

(:action move_20_1_20_0
 :parameters ()
 :precondition (and (at_x20)(at_y1))
 :poss-precondition (and (bridge_20_0_20_1))
 :effect (and (not (at_y1)) (at_y0))
)

(:action move_20_1_20_2
 :parameters ()
 :precondition (and (at_x20)(at_y1))
 :poss-precondition (and (bridge_20_1_20_2))
 :effect (and (not (at_y1)) (at_y2))
)

(:action move_20_2_19_2
 :parameters ()
 :precondition (and (at_x20)(at_y2))
 :poss-precondition (and (bridge_19_2_20_2))
 :effect (and (not (at_x20)) (at_x19))
)

(:action move_20_2_21_2
 :parameters ()
 :precondition (and (at_x20)(at_y2))
 :poss-precondition (and (bridge_20_2_21_2))
 :effect (and (not (at_x20)) (at_x21))
)

(:action move_20_2_20_1
 :parameters ()
 :precondition (and (at_x20)(at_y2))
 :poss-precondition (and (bridge_20_1_20_2))
 :effect (and (not (at_y2)) (at_y1))
)

(:action move_20_2_20_3
 :parameters ()
 :precondition (and (at_x20)(at_y2))
 :poss-precondition (and (bridge_20_2_20_3))
 :effect (and (not (at_y2)) (at_y3))
)

(:action move_20_3_19_3
 :parameters ()
 :precondition (and (at_x20)(at_y3))
 :poss-precondition (and (bridge_19_3_20_3))
 :effect (and (not (at_x20)) (at_x19))
)

(:action move_20_3_21_3
 :parameters ()
 :precondition (and (at_x20)(at_y3))
 :poss-precondition (and (bridge_20_3_21_3))
 :effect (and (not (at_x20)) (at_x21))
)

(:action move_20_3_20_2
 :parameters ()
 :precondition (and (at_x20)(at_y3))
 :poss-precondition (and (bridge_20_2_20_3))
 :effect (and (not (at_y3)) (at_y2))
)

(:action move_20_3_20_4
 :parameters ()
 :precondition (and (at_x20)(at_y3))
 :poss-precondition (and (bridge_20_3_20_4))
 :effect (and (not (at_y3)) (at_y4))
)

(:action move_20_4_19_4
 :parameters ()
 :precondition (and (at_x20)(at_y4))
 :poss-precondition (and (bridge_19_4_20_4))
 :effect (and (not (at_x20)) (at_x19))
)

(:action move_20_4_21_4
 :parameters ()
 :precondition (and (at_x20)(at_y4))
 :poss-precondition (and (bridge_20_4_21_4))
 :effect (and (not (at_x20)) (at_x21))
)

(:action move_20_4_20_3
 :parameters ()
 :precondition (and (at_x20)(at_y4))
 :poss-precondition (and (bridge_20_3_20_4))
 :effect (and (not (at_y4)) (at_y3))
)

(:action move_20_4_20_5
 :parameters ()
 :precondition (and (at_x20)(at_y4))
 :poss-precondition (and (bridge_20_4_20_5))
 :effect (and (not (at_y4)) (at_y5))
)

(:action move_20_5_19_5
 :parameters ()
 :precondition (and (at_x20)(at_y5))
 :poss-precondition (and (bridge_19_5_20_5))
 :effect (and (not (at_x20)) (at_x19))
)

(:action move_20_5_21_5
 :parameters ()
 :precondition (and (at_x20)(at_y5))
 :poss-precondition (and (bridge_20_5_21_5))
 :effect (and (not (at_x20)) (at_x21))
)

(:action move_20_5_20_4
 :parameters ()
 :precondition (and (at_x20)(at_y5))
 :poss-precondition (and (bridge_20_4_20_5))
 :effect (and (not (at_y5)) (at_y4))
)

(:action move_20_5_20_6
 :parameters ()
 :precondition (and (at_x20)(at_y5))
 :poss-precondition (and (bridge_20_5_20_6))
 :effect (and (not (at_y5)) (at_y6))
)

(:action move_20_6_19_6
 :parameters ()
 :precondition (and (at_x20)(at_y6))
 :poss-precondition (and (bridge_19_6_20_6))
 :effect (and (not (at_x20)) (at_x19))
)

(:action move_20_6_21_6
 :parameters ()
 :precondition (and (at_x20)(at_y6))
 :poss-precondition (and (bridge_20_6_21_6))
 :effect (and (not (at_x20)) (at_x21))
)

(:action move_20_6_20_5
 :parameters ()
 :precondition (and (at_x20)(at_y6))
 :poss-precondition (and (bridge_20_5_20_6))
 :effect (and (not (at_y6)) (at_y5))
)

(:action move_20_6_20_7
 :parameters ()
 :precondition (and (at_x20)(at_y6))
 :poss-precondition (and (bridge_20_6_20_7))
 :effect (and (not (at_y6)) (at_y7))
)

(:action move_20_7_19_7
 :parameters ()
 :precondition (and (at_x20)(at_y7))
 :poss-precondition (and (bridge_19_7_20_7))
 :effect (and (not (at_x20)) (at_x19))
)

(:action move_20_7_21_7
 :parameters ()
 :precondition (and (at_x20)(at_y7))
 :poss-precondition (and (bridge_20_7_21_7))
 :effect (and (not (at_x20)) (at_x21))
)

(:action move_20_7_20_6
 :parameters ()
 :precondition (and (at_x20)(at_y7))
 :poss-precondition (and (bridge_20_6_20_7))
 :effect (and (not (at_y7)) (at_y6))
)

(:action move_20_7_20_8
 :parameters ()
 :precondition (and (at_x20)(at_y7))
 :poss-precondition (and (bridge_20_7_20_8))
 :effect (and (not (at_y7)) (at_y8))
)

(:action move_20_8_19_8
 :parameters ()
 :precondition (and (at_x20)(at_y8))
 :poss-precondition (and (bridge_19_8_20_8))
 :effect (and (not (at_x20)) (at_x19))
)

(:action move_20_8_21_8
 :parameters ()
 :precondition (and (at_x20)(at_y8))
 :poss-precondition (and (bridge_20_8_21_8))
 :effect (and (not (at_x20)) (at_x21))
)

(:action move_20_8_20_7
 :parameters ()
 :precondition (and (at_x20)(at_y8))
 :poss-precondition (and (bridge_20_7_20_8))
 :effect (and (not (at_y8)) (at_y7))
)

(:action move_20_8_20_9
 :parameters ()
 :precondition (and (at_x20)(at_y8))
 :poss-precondition (and (bridge_20_8_20_9))
 :effect (and (not (at_y8)) (at_y9))
)

(:action move_20_9_19_9
 :parameters ()
 :precondition (and (at_x20)(at_y9))
 :poss-precondition (and (bridge_19_9_20_9))
 :effect (and (not (at_x20)) (at_x19))
)

(:action move_20_9_21_9
 :parameters ()
 :precondition (and (at_x20)(at_y9))
 :poss-precondition (and (bridge_20_9_21_9))
 :effect (and (not (at_x20)) (at_x21))
)

(:action move_20_9_20_8
 :parameters ()
 :precondition (and (at_x20)(at_y9))
 :poss-precondition (and (bridge_20_8_20_9))
 :effect (and (not (at_y9)) (at_y8))
)

(:action move_20_9_20_10
 :parameters ()
 :precondition (and (at_x20)(at_y9))
 :poss-precondition (and (bridge_20_9_20_10))
 :effect (and (not (at_y9)) (at_y10))
)

(:action move_20_10_19_10
 :parameters ()
 :precondition (and (at_x20)(at_y10))
 :poss-precondition (and (bridge_19_10_20_10))
 :effect (and (not (at_x20)) (at_x19))
)

(:action move_20_10_21_10
 :parameters ()
 :precondition (and (at_x20)(at_y10))
 :poss-precondition (and (bridge_20_10_21_10))
 :effect (and (not (at_x20)) (at_x21))
)

(:action move_20_10_20_9
 :parameters ()
 :precondition (and (at_x20)(at_y10))
 :poss-precondition (and (bridge_20_9_20_10))
 :effect (and (not (at_y10)) (at_y9))
)

(:action move_20_10_20_11
 :parameters ()
 :precondition (and (at_x20)(at_y10))
 :poss-precondition (and (bridge_20_10_20_11))
 :effect (and (not (at_y10)) (at_y11))
)

(:action move_20_11_19_11
 :parameters ()
 :precondition (and (at_x20)(at_y11))
 :poss-precondition (and (bridge_19_11_20_11))
 :effect (and (not (at_x20)) (at_x19))
)

(:action move_20_11_21_11
 :parameters ()
 :precondition (and (at_x20)(at_y11))
 :poss-precondition (and (bridge_20_11_21_11))
 :effect (and (not (at_x20)) (at_x21))
)

(:action move_20_11_20_10
 :parameters ()
 :precondition (and (at_x20)(at_y11))
 :poss-precondition (and (bridge_20_10_20_11))
 :effect (and (not (at_y11)) (at_y10))
)

(:action move_20_11_20_12
 :parameters ()
 :precondition (and (at_x20)(at_y11))
 :poss-precondition (and (bridge_20_11_20_12))
 :effect (and (not (at_y11)) (at_y12))
)

(:action move_20_12_19_12
 :parameters ()
 :precondition (and (at_x20)(at_y12))
 :poss-precondition (and (bridge_19_12_20_12))
 :effect (and (not (at_x20)) (at_x19))
)

(:action move_20_12_21_12
 :parameters ()
 :precondition (and (at_x20)(at_y12))
 :poss-precondition (and (bridge_20_12_21_12))
 :effect (and (not (at_x20)) (at_x21))
)

(:action move_20_12_20_11
 :parameters ()
 :precondition (and (at_x20)(at_y12))
 :poss-precondition (and (bridge_20_11_20_12))
 :effect (and (not (at_y12)) (at_y11))
)

(:action move_20_12_20_13
 :parameters ()
 :precondition (and (at_x20)(at_y12))
 :poss-precondition (and (bridge_20_12_20_13))
 :effect (and (not (at_y12)) (at_y13))
)

(:action move_20_13_19_13
 :parameters ()
 :precondition (and (at_x20)(at_y13))
 :poss-precondition (and (bridge_19_13_20_13))
 :effect (and (not (at_x20)) (at_x19))
)

(:action move_20_13_21_13
 :parameters ()
 :precondition (and (at_x20)(at_y13))
 :poss-precondition (and (bridge_20_13_21_13))
 :effect (and (not (at_x20)) (at_x21))
)

(:action move_20_13_20_12
 :parameters ()
 :precondition (and (at_x20)(at_y13))
 :poss-precondition (and (bridge_20_12_20_13))
 :effect (and (not (at_y13)) (at_y12))
)

(:action move_20_13_20_14
 :parameters ()
 :precondition (and (at_x20)(at_y13))
 :poss-precondition (and (bridge_20_13_20_14))
 :effect (and (not (at_y13)) (at_y14))
)

(:action move_20_14_19_14
 :parameters ()
 :precondition (and (at_x20)(at_y14))
 :poss-precondition (and (bridge_19_14_20_14))
 :effect (and (not (at_x20)) (at_x19))
)

(:action move_20_14_21_14
 :parameters ()
 :precondition (and (at_x20)(at_y14))
 :poss-precondition (and (bridge_20_14_21_14))
 :effect (and (not (at_x20)) (at_x21))
)

(:action move_20_14_20_13
 :parameters ()
 :precondition (and (at_x20)(at_y14))
 :poss-precondition (and (bridge_20_13_20_14))
 :effect (and (not (at_y14)) (at_y13))
)

(:action move_20_14_20_15
 :parameters ()
 :precondition (and (at_x20)(at_y14))
 :poss-precondition (and (bridge_20_14_20_15))
 :effect (and (not (at_y14)) (at_y15))
)

(:action move_20_15_19_15
 :parameters ()
 :precondition (and (at_x20)(at_y15))
 :poss-precondition (and (bridge_19_15_20_15))
 :effect (and (not (at_x20)) (at_x19))
)

(:action move_20_15_21_15
 :parameters ()
 :precondition (and (at_x20)(at_y15))
 :poss-precondition (and (bridge_20_15_21_15))
 :effect (and (not (at_x20)) (at_x21))
)

(:action move_20_15_20_14
 :parameters ()
 :precondition (and (at_x20)(at_y15))
 :poss-precondition (and (bridge_20_14_20_15))
 :effect (and (not (at_y15)) (at_y14))
)

(:action move_20_15_20_16
 :parameters ()
 :precondition (and (at_x20)(at_y15))
 :poss-precondition (and (bridge_20_15_20_16))
 :effect (and (not (at_y15)) (at_y16))
)

(:action move_20_16_19_16
 :parameters ()
 :precondition (and (at_x20)(at_y16))
 :poss-precondition (and (bridge_19_16_20_16))
 :effect (and (not (at_x20)) (at_x19))
)

(:action move_20_16_21_16
 :parameters ()
 :precondition (and (at_x20)(at_y16))
 :poss-precondition (and (bridge_20_16_21_16))
 :effect (and (not (at_x20)) (at_x21))
)

(:action move_20_16_20_15
 :parameters ()
 :precondition (and (at_x20)(at_y16))
 :poss-precondition (and (bridge_20_15_20_16))
 :effect (and (not (at_y16)) (at_y15))
)

(:action move_20_16_20_17
 :parameters ()
 :precondition (and (at_x20)(at_y16))
 :poss-precondition (and (bridge_20_16_20_17))
 :effect (and (not (at_y16)) (at_y17))
)

(:action move_20_17_19_17
 :parameters ()
 :precondition (and (at_x20)(at_y17))
 :poss-precondition (and (bridge_19_17_20_17))
 :effect (and (not (at_x20)) (at_x19))
)

(:action move_20_17_21_17
 :parameters ()
 :precondition (and (at_x20)(at_y17))
 :poss-precondition (and (bridge_20_17_21_17))
 :effect (and (not (at_x20)) (at_x21))
)

(:action move_20_17_20_16
 :parameters ()
 :precondition (and (at_x20)(at_y17))
 :poss-precondition (and (bridge_20_16_20_17))
 :effect (and (not (at_y17)) (at_y16))
)

(:action move_20_17_20_18
 :parameters ()
 :precondition (and (at_x20)(at_y17))
 :poss-precondition (and (bridge_20_17_20_18))
 :effect (and (not (at_y17)) (at_y18))
)

(:action move_20_18_19_18
 :parameters ()
 :precondition (and (at_x20)(at_y18))
 :poss-precondition (and (bridge_19_18_20_18))
 :effect (and (not (at_x20)) (at_x19))
)

(:action move_20_18_21_18
 :parameters ()
 :precondition (and (at_x20)(at_y18))
 :poss-precondition (and (bridge_20_18_21_18))
 :effect (and (not (at_x20)) (at_x21))
)

(:action move_20_18_20_17
 :parameters ()
 :precondition (and (at_x20)(at_y18))
 :poss-precondition (and (bridge_20_17_20_18))
 :effect (and (not (at_y18)) (at_y17))
)

(:action move_20_18_20_19
 :parameters ()
 :precondition (and (at_x20)(at_y18))
 :poss-precondition (and (bridge_20_18_20_19))
 :effect (and (not (at_y18)) (at_y19))
)

(:action move_20_19_19_19
 :parameters ()
 :precondition (and (at_x20)(at_y19))
 :poss-precondition (and (bridge_19_19_20_19))
 :effect (and (not (at_x20)) (at_x19))
)

(:action move_20_19_21_19
 :parameters ()
 :precondition (and (at_x20)(at_y19))
 :poss-precondition (and (bridge_20_19_21_19))
 :effect (and (not (at_x20)) (at_x21))
)

(:action move_20_19_20_18
 :parameters ()
 :precondition (and (at_x20)(at_y19))
 :poss-precondition (and (bridge_20_18_20_19))
 :effect (and (not (at_y19)) (at_y18))
)

(:action move_20_19_20_20
 :parameters ()
 :precondition (and (at_x20)(at_y19))
 :poss-precondition (and (bridge_20_19_20_20))
 :effect (and (not (at_y19)) (at_y20))
)

(:action move_20_20_19_20
 :parameters ()
 :precondition (and (at_x20)(at_y20))
 :poss-precondition (and (bridge_19_20_20_20))
 :effect (and (not (at_x20)) (at_x19))
)

(:action move_20_20_21_20
 :parameters ()
 :precondition (and (at_x20)(at_y20))
 :poss-precondition (and (bridge_20_20_21_20))
 :effect (and (not (at_x20)) (at_x21))
)

(:action move_20_20_20_19
 :parameters ()
 :precondition (and (at_x20)(at_y20))
 :poss-precondition (and (bridge_20_19_20_20))
 :effect (and (not (at_y20)) (at_y19))
)

(:action move_20_20_20_21
 :parameters ()
 :precondition (and (at_x20)(at_y20))
 :poss-precondition (and (bridge_20_20_20_21))
 :effect (and (not (at_y20)) (at_y21))
)

(:action move_20_21_19_21
 :parameters ()
 :precondition (and (at_x20)(at_y21))
 :poss-precondition (and (bridge_19_21_20_21))
 :effect (and (not (at_x20)) (at_x19))
)

(:action move_20_21_21_21
 :parameters ()
 :precondition (and (at_x20)(at_y21))
 :poss-precondition (and (bridge_20_21_21_21))
 :effect (and (not (at_x20)) (at_x21))
)

(:action move_20_21_20_20
 :parameters ()
 :precondition (and (at_x20)(at_y21))
 :poss-precondition (and (bridge_20_20_20_21))
 :effect (and (not (at_y21)) (at_y20))
)

(:action move_20_21_20_22
 :parameters ()
 :precondition (and (at_x20)(at_y21))
 :poss-precondition (and (bridge_20_21_20_22))
 :effect (and (not (at_y21)) (at_y22))
)

(:action move_20_22_19_22
 :parameters ()
 :precondition (and (at_x20)(at_y22))
 :poss-precondition (and (bridge_19_22_20_22))
 :effect (and (not (at_x20)) (at_x19))
)

(:action move_20_22_21_22
 :parameters ()
 :precondition (and (at_x20)(at_y22))
 :poss-precondition (and (bridge_20_22_21_22))
 :effect (and (not (at_x20)) (at_x21))
)

(:action move_20_22_20_21
 :parameters ()
 :precondition (and (at_x20)(at_y22))
 :poss-precondition (and (bridge_20_21_20_22))
 :effect (and (not (at_y22)) (at_y21))
)

(:action move_20_22_20_23
 :parameters ()
 :precondition (and (at_x20)(at_y22))
 :poss-precondition (and (bridge_20_22_20_23))
 :effect (and (not (at_y22)) (at_y23))
)

(:action move_20_23_19_23
 :parameters ()
 :precondition (and (at_x20)(at_y23))
 :poss-precondition (and (bridge_19_23_20_23))
 :effect (and (not (at_x20)) (at_x19))
)

(:action move_20_23_21_23
 :parameters ()
 :precondition (and (at_x20)(at_y23))
 :poss-precondition (and (bridge_20_23_21_23))
 :effect (and (not (at_x20)) (at_x21))
)

(:action move_20_23_20_22
 :parameters ()
 :precondition (and (at_x20)(at_y23))
 :poss-precondition (and (bridge_20_22_20_23))
 :effect (and (not (at_y23)) (at_y22))
)

(:action move_20_23_20_24
 :parameters ()
 :precondition (and (at_x20)(at_y23))
 :poss-precondition (and (bridge_20_23_20_24))
 :effect (and (not (at_y23)) (at_y24))
)

(:action move_20_24_19_24
 :parameters ()
 :precondition (and (at_x20)(at_y24))
 :poss-precondition (and (bridge_19_24_20_24))
 :effect (and (not (at_x20)) (at_x19))
)

(:action move_20_24_21_24
 :parameters ()
 :precondition (and (at_x20)(at_y24))
 :poss-precondition (and (bridge_20_24_21_24))
 :effect (and (not (at_x20)) (at_x21))
)

(:action move_20_24_20_23
 :parameters ()
 :precondition (and (at_x20)(at_y24))
 :poss-precondition (and (bridge_20_23_20_24))
 :effect (and (not (at_y24)) (at_y23))
)

(:action move_20_24_20_25
 :parameters ()
 :precondition (and (at_x20)(at_y24))
 :poss-precondition (and (bridge_20_24_20_25))
 :effect (and (not (at_y24)) (at_y25))
)

(:action move_20_25_19_25
 :parameters ()
 :precondition (and (at_x20)(at_y25))
 :poss-precondition (and (bridge_19_25_20_25))
 :effect (and (not (at_x20)) (at_x19))
)

(:action move_20_25_21_25
 :parameters ()
 :precondition (and (at_x20)(at_y25))
 :poss-precondition (and (bridge_20_25_21_25))
 :effect (and (not (at_x20)) (at_x21))
)

(:action move_20_25_20_24
 :parameters ()
 :precondition (and (at_x20)(at_y25))
 :poss-precondition (and (bridge_20_24_20_25))
 :effect (and (not (at_y25)) (at_y24))
)

(:action move_20_25_20_26
 :parameters ()
 :precondition (and (at_x20)(at_y25))
 :poss-precondition (and (bridge_20_25_20_26))
 :effect (and (not (at_y25)) (at_y26))
)

(:action move_20_26_19_26
 :parameters ()
 :precondition (and (at_x20)(at_y26))
 :poss-precondition (and (bridge_19_26_20_26))
 :effect (and (not (at_x20)) (at_x19))
)

(:action move_20_26_21_26
 :parameters ()
 :precondition (and (at_x20)(at_y26))
 :poss-precondition (and (bridge_20_26_21_26))
 :effect (and (not (at_x20)) (at_x21))
)

(:action move_20_26_20_25
 :parameters ()
 :precondition (and (at_x20)(at_y26))
 :poss-precondition (and (bridge_20_25_20_26))
 :effect (and (not (at_y26)) (at_y25))
)

(:action move_20_26_20_27
 :parameters ()
 :precondition (and (at_x20)(at_y26))
 :poss-precondition (and (bridge_20_26_20_27))
 :effect (and (not (at_y26)) (at_y27))
)

(:action move_20_27_19_27
 :parameters ()
 :precondition (and (at_x20)(at_y27))
 :poss-precondition (and (bridge_19_27_20_27))
 :effect (and (not (at_x20)) (at_x19))
)

(:action move_20_27_21_27
 :parameters ()
 :precondition (and (at_x20)(at_y27))
 :poss-precondition (and (bridge_20_27_21_27))
 :effect (and (not (at_x20)) (at_x21))
)

(:action move_20_27_20_26
 :parameters ()
 :precondition (and (at_x20)(at_y27))
 :poss-precondition (and (bridge_20_26_20_27))
 :effect (and (not (at_y27)) (at_y26))
)

(:action move_20_27_20_28
 :parameters ()
 :precondition (and (at_x20)(at_y27))
 :poss-precondition (and (bridge_20_27_20_28))
 :effect (and (not (at_y27)) (at_y28))
)

(:action move_20_28_19_28
 :parameters ()
 :precondition (and (at_x20)(at_y28))
 :poss-precondition (and (bridge_19_28_20_28))
 :effect (and (not (at_x20)) (at_x19))
)

(:action move_20_28_21_28
 :parameters ()
 :precondition (and (at_x20)(at_y28))
 :poss-precondition (and (bridge_20_28_21_28))
 :effect (and (not (at_x20)) (at_x21))
)

(:action move_20_28_20_27
 :parameters ()
 :precondition (and (at_x20)(at_y28))
 :poss-precondition (and (bridge_20_27_20_28))
 :effect (and (not (at_y28)) (at_y27))
)

(:action move_20_28_20_29
 :parameters ()
 :precondition (and (at_x20)(at_y28))
 :poss-precondition (and (bridge_20_28_20_29))
 :effect (and (not (at_y28)) (at_y29))
)

(:action move_20_29_19_29
 :parameters ()
 :precondition (and (at_x20)(at_y29))
 :poss-precondition (and (bridge_19_29_20_29))
 :effect (and (not (at_x20)) (at_x19))
)

(:action move_20_29_21_29
 :parameters ()
 :precondition (and (at_x20)(at_y29))
 :poss-precondition (and (bridge_20_29_21_29))
 :effect (and (not (at_x20)) (at_x21))
)

(:action move_20_29_20_28
 :parameters ()
 :precondition (and (at_x20)(at_y29))
 :poss-precondition (and (bridge_20_28_20_29))
 :effect (and (not (at_y29)) (at_y28))
)

(:action move_20_29_20_30
 :parameters ()
 :precondition (and (at_x20)(at_y29))
 :poss-precondition (and (bridge_20_29_20_30))
 :effect (and (not (at_y29)) (at_y30))
)

(:action move_20_30_19_30
 :parameters ()
 :precondition (and (at_x20)(at_y30))
 :poss-precondition (and (bridge_19_30_20_30))
 :effect (and (not (at_x20)) (at_x19))
)

(:action move_20_30_21_30
 :parameters ()
 :precondition (and (at_x20)(at_y30))
 :poss-precondition (and (bridge_20_30_21_30))
 :effect (and (not (at_x20)) (at_x21))
)

(:action move_20_30_20_29
 :parameters ()
 :precondition (and (at_x20)(at_y30))
 :poss-precondition (and (bridge_20_29_20_30))
 :effect (and (not (at_y30)) (at_y29))
)

(:action move_20_30_20_31
 :parameters ()
 :precondition (and (at_x20)(at_y30))
 :poss-precondition (and (bridge_20_30_20_31))
 :effect (and (not (at_y30)) (at_y31))
)

(:action move_20_31_19_31
 :parameters ()
 :precondition (and (at_x20)(at_y31))
 :poss-precondition (and (bridge_19_31_20_31))
 :effect (and (not (at_x20)) (at_x19))
)

(:action move_20_31_21_31
 :parameters ()
 :precondition (and (at_x20)(at_y31))
 :poss-precondition (and (bridge_20_31_21_31))
 :effect (and (not (at_x20)) (at_x21))
)

(:action move_20_31_20_30
 :parameters ()
 :precondition (and (at_x20)(at_y31))
 :poss-precondition (and (bridge_20_30_20_31))
 :effect (and (not (at_y31)) (at_y30))
)

(:action move_21_0_20_0
 :parameters ()
 :precondition (and (at_x21)(at_y0))
 :poss-precondition (and (bridge_20_0_21_0))
 :effect (and (not (at_x21)) (at_x20))
)

(:action move_21_0_22_0
 :parameters ()
 :precondition (and (at_x21)(at_y0))
 :poss-precondition (and (bridge_21_0_22_0))
 :effect (and (not (at_x21)) (at_x22))
)

(:action move_21_0_21_1
 :parameters ()
 :precondition (and (at_x21)(at_y0))
 :poss-precondition (and (bridge_21_0_21_1))
 :effect (and (not (at_y0)) (at_y1))
)

(:action move_21_1_20_1
 :parameters ()
 :precondition (and (at_x21)(at_y1))
 :poss-precondition (and (bridge_20_1_21_1))
 :effect (and (not (at_x21)) (at_x20))
)

(:action move_21_1_22_1
 :parameters ()
 :precondition (and (at_x21)(at_y1))
 :poss-precondition (and (bridge_21_1_22_1))
 :effect (and (not (at_x21)) (at_x22))
)

(:action move_21_1_21_0
 :parameters ()
 :precondition (and (at_x21)(at_y1))
 :poss-precondition (and (bridge_21_0_21_1))
 :effect (and (not (at_y1)) (at_y0))
)

(:action move_21_1_21_2
 :parameters ()
 :precondition (and (at_x21)(at_y1))
 :poss-precondition (and (bridge_21_1_21_2))
 :effect (and (not (at_y1)) (at_y2))
)

(:action move_21_2_20_2
 :parameters ()
 :precondition (and (at_x21)(at_y2))
 :poss-precondition (and (bridge_20_2_21_2))
 :effect (and (not (at_x21)) (at_x20))
)

(:action move_21_2_22_2
 :parameters ()
 :precondition (and (at_x21)(at_y2))
 :poss-precondition (and (bridge_21_2_22_2))
 :effect (and (not (at_x21)) (at_x22))
)

(:action move_21_2_21_1
 :parameters ()
 :precondition (and (at_x21)(at_y2))
 :poss-precondition (and (bridge_21_1_21_2))
 :effect (and (not (at_y2)) (at_y1))
)

(:action move_21_2_21_3
 :parameters ()
 :precondition (and (at_x21)(at_y2))
 :poss-precondition (and (bridge_21_2_21_3))
 :effect (and (not (at_y2)) (at_y3))
)

(:action move_21_3_20_3
 :parameters ()
 :precondition (and (at_x21)(at_y3))
 :poss-precondition (and (bridge_20_3_21_3))
 :effect (and (not (at_x21)) (at_x20))
)

(:action move_21_3_22_3
 :parameters ()
 :precondition (and (at_x21)(at_y3))
 :poss-precondition (and (bridge_21_3_22_3))
 :effect (and (not (at_x21)) (at_x22))
)

(:action move_21_3_21_2
 :parameters ()
 :precondition (and (at_x21)(at_y3))
 :poss-precondition (and (bridge_21_2_21_3))
 :effect (and (not (at_y3)) (at_y2))
)

(:action move_21_3_21_4
 :parameters ()
 :precondition (and (at_x21)(at_y3))
 :poss-precondition (and (bridge_21_3_21_4))
 :effect (and (not (at_y3)) (at_y4))
)

(:action move_21_4_20_4
 :parameters ()
 :precondition (and (at_x21)(at_y4))
 :poss-precondition (and (bridge_20_4_21_4))
 :effect (and (not (at_x21)) (at_x20))
)

(:action move_21_4_22_4
 :parameters ()
 :precondition (and (at_x21)(at_y4))
 :poss-precondition (and (bridge_21_4_22_4))
 :effect (and (not (at_x21)) (at_x22))
)

(:action move_21_4_21_3
 :parameters ()
 :precondition (and (at_x21)(at_y4))
 :poss-precondition (and (bridge_21_3_21_4))
 :effect (and (not (at_y4)) (at_y3))
)

(:action move_21_4_21_5
 :parameters ()
 :precondition (and (at_x21)(at_y4))
 :poss-precondition (and (bridge_21_4_21_5))
 :effect (and (not (at_y4)) (at_y5))
)

(:action move_21_5_20_5
 :parameters ()
 :precondition (and (at_x21)(at_y5))
 :poss-precondition (and (bridge_20_5_21_5))
 :effect (and (not (at_x21)) (at_x20))
)

(:action move_21_5_22_5
 :parameters ()
 :precondition (and (at_x21)(at_y5))
 :poss-precondition (and (bridge_21_5_22_5))
 :effect (and (not (at_x21)) (at_x22))
)

(:action move_21_5_21_4
 :parameters ()
 :precondition (and (at_x21)(at_y5))
 :poss-precondition (and (bridge_21_4_21_5))
 :effect (and (not (at_y5)) (at_y4))
)

(:action move_21_5_21_6
 :parameters ()
 :precondition (and (at_x21)(at_y5))
 :poss-precondition (and (bridge_21_5_21_6))
 :effect (and (not (at_y5)) (at_y6))
)

(:action move_21_6_20_6
 :parameters ()
 :precondition (and (at_x21)(at_y6))
 :poss-precondition (and (bridge_20_6_21_6))
 :effect (and (not (at_x21)) (at_x20))
)

(:action move_21_6_22_6
 :parameters ()
 :precondition (and (at_x21)(at_y6))
 :poss-precondition (and (bridge_21_6_22_6))
 :effect (and (not (at_x21)) (at_x22))
)

(:action move_21_6_21_5
 :parameters ()
 :precondition (and (at_x21)(at_y6))
 :poss-precondition (and (bridge_21_5_21_6))
 :effect (and (not (at_y6)) (at_y5))
)

(:action move_21_6_21_7
 :parameters ()
 :precondition (and (at_x21)(at_y6))
 :poss-precondition (and (bridge_21_6_21_7))
 :effect (and (not (at_y6)) (at_y7))
)

(:action move_21_7_20_7
 :parameters ()
 :precondition (and (at_x21)(at_y7))
 :poss-precondition (and (bridge_20_7_21_7))
 :effect (and (not (at_x21)) (at_x20))
)

(:action move_21_7_22_7
 :parameters ()
 :precondition (and (at_x21)(at_y7))
 :poss-precondition (and (bridge_21_7_22_7))
 :effect (and (not (at_x21)) (at_x22))
)

(:action move_21_7_21_6
 :parameters ()
 :precondition (and (at_x21)(at_y7))
 :poss-precondition (and (bridge_21_6_21_7))
 :effect (and (not (at_y7)) (at_y6))
)

(:action move_21_7_21_8
 :parameters ()
 :precondition (and (at_x21)(at_y7))
 :poss-precondition (and (bridge_21_7_21_8))
 :effect (and (not (at_y7)) (at_y8))
)

(:action move_21_8_20_8
 :parameters ()
 :precondition (and (at_x21)(at_y8))
 :poss-precondition (and (bridge_20_8_21_8))
 :effect (and (not (at_x21)) (at_x20))
)

(:action move_21_8_22_8
 :parameters ()
 :precondition (and (at_x21)(at_y8))
 :poss-precondition (and (bridge_21_8_22_8))
 :effect (and (not (at_x21)) (at_x22))
)

(:action move_21_8_21_7
 :parameters ()
 :precondition (and (at_x21)(at_y8))
 :poss-precondition (and (bridge_21_7_21_8))
 :effect (and (not (at_y8)) (at_y7))
)

(:action move_21_8_21_9
 :parameters ()
 :precondition (and (at_x21)(at_y8))
 :poss-precondition (and (bridge_21_8_21_9))
 :effect (and (not (at_y8)) (at_y9))
)

(:action move_21_9_20_9
 :parameters ()
 :precondition (and (at_x21)(at_y9))
 :poss-precondition (and (bridge_20_9_21_9))
 :effect (and (not (at_x21)) (at_x20))
)

(:action move_21_9_22_9
 :parameters ()
 :precondition (and (at_x21)(at_y9))
 :poss-precondition (and (bridge_21_9_22_9))
 :effect (and (not (at_x21)) (at_x22))
)

(:action move_21_9_21_8
 :parameters ()
 :precondition (and (at_x21)(at_y9))
 :poss-precondition (and (bridge_21_8_21_9))
 :effect (and (not (at_y9)) (at_y8))
)

(:action move_21_9_21_10
 :parameters ()
 :precondition (and (at_x21)(at_y9))
 :poss-precondition (and (bridge_21_9_21_10))
 :effect (and (not (at_y9)) (at_y10))
)

(:action move_21_10_20_10
 :parameters ()
 :precondition (and (at_x21)(at_y10))
 :poss-precondition (and (bridge_20_10_21_10))
 :effect (and (not (at_x21)) (at_x20))
)

(:action move_21_10_22_10
 :parameters ()
 :precondition (and (at_x21)(at_y10))
 :poss-precondition (and (bridge_21_10_22_10))
 :effect (and (not (at_x21)) (at_x22))
)

(:action move_21_10_21_9
 :parameters ()
 :precondition (and (at_x21)(at_y10))
 :poss-precondition (and (bridge_21_9_21_10))
 :effect (and (not (at_y10)) (at_y9))
)

(:action move_21_10_21_11
 :parameters ()
 :precondition (and (at_x21)(at_y10))
 :poss-precondition (and (bridge_21_10_21_11))
 :effect (and (not (at_y10)) (at_y11))
)

(:action move_21_11_20_11
 :parameters ()
 :precondition (and (at_x21)(at_y11))
 :poss-precondition (and (bridge_20_11_21_11))
 :effect (and (not (at_x21)) (at_x20))
)

(:action move_21_11_22_11
 :parameters ()
 :precondition (and (at_x21)(at_y11))
 :poss-precondition (and (bridge_21_11_22_11))
 :effect (and (not (at_x21)) (at_x22))
)

(:action move_21_11_21_10
 :parameters ()
 :precondition (and (at_x21)(at_y11))
 :poss-precondition (and (bridge_21_10_21_11))
 :effect (and (not (at_y11)) (at_y10))
)

(:action move_21_11_21_12
 :parameters ()
 :precondition (and (at_x21)(at_y11))
 :poss-precondition (and (bridge_21_11_21_12))
 :effect (and (not (at_y11)) (at_y12))
)

(:action move_21_12_20_12
 :parameters ()
 :precondition (and (at_x21)(at_y12))
 :poss-precondition (and (bridge_20_12_21_12))
 :effect (and (not (at_x21)) (at_x20))
)

(:action move_21_12_22_12
 :parameters ()
 :precondition (and (at_x21)(at_y12))
 :poss-precondition (and (bridge_21_12_22_12))
 :effect (and (not (at_x21)) (at_x22))
)

(:action move_21_12_21_11
 :parameters ()
 :precondition (and (at_x21)(at_y12))
 :poss-precondition (and (bridge_21_11_21_12))
 :effect (and (not (at_y12)) (at_y11))
)

(:action move_21_12_21_13
 :parameters ()
 :precondition (and (at_x21)(at_y12))
 :poss-precondition (and (bridge_21_12_21_13))
 :effect (and (not (at_y12)) (at_y13))
)

(:action move_21_13_20_13
 :parameters ()
 :precondition (and (at_x21)(at_y13))
 :poss-precondition (and (bridge_20_13_21_13))
 :effect (and (not (at_x21)) (at_x20))
)

(:action move_21_13_22_13
 :parameters ()
 :precondition (and (at_x21)(at_y13))
 :poss-precondition (and (bridge_21_13_22_13))
 :effect (and (not (at_x21)) (at_x22))
)

(:action move_21_13_21_12
 :parameters ()
 :precondition (and (at_x21)(at_y13))
 :poss-precondition (and (bridge_21_12_21_13))
 :effect (and (not (at_y13)) (at_y12))
)

(:action move_21_13_21_14
 :parameters ()
 :precondition (and (at_x21)(at_y13))
 :poss-precondition (and (bridge_21_13_21_14))
 :effect (and (not (at_y13)) (at_y14))
)

(:action move_21_14_20_14
 :parameters ()
 :precondition (and (at_x21)(at_y14))
 :poss-precondition (and (bridge_20_14_21_14))
 :effect (and (not (at_x21)) (at_x20))
)

(:action move_21_14_22_14
 :parameters ()
 :precondition (and (at_x21)(at_y14))
 :poss-precondition (and (bridge_21_14_22_14))
 :effect (and (not (at_x21)) (at_x22))
)

(:action move_21_14_21_13
 :parameters ()
 :precondition (and (at_x21)(at_y14))
 :poss-precondition (and (bridge_21_13_21_14))
 :effect (and (not (at_y14)) (at_y13))
)

(:action move_21_14_21_15
 :parameters ()
 :precondition (and (at_x21)(at_y14))
 :poss-precondition (and (bridge_21_14_21_15))
 :effect (and (not (at_y14)) (at_y15))
)

(:action move_21_15_20_15
 :parameters ()
 :precondition (and (at_x21)(at_y15))
 :poss-precondition (and (bridge_20_15_21_15))
 :effect (and (not (at_x21)) (at_x20))
)

(:action move_21_15_22_15
 :parameters ()
 :precondition (and (at_x21)(at_y15))
 :poss-precondition (and (bridge_21_15_22_15))
 :effect (and (not (at_x21)) (at_x22))
)

(:action move_21_15_21_14
 :parameters ()
 :precondition (and (at_x21)(at_y15))
 :poss-precondition (and (bridge_21_14_21_15))
 :effect (and (not (at_y15)) (at_y14))
)

(:action move_21_15_21_16
 :parameters ()
 :precondition (and (at_x21)(at_y15))
 :poss-precondition (and (bridge_21_15_21_16))
 :effect (and (not (at_y15)) (at_y16))
)

(:action move_21_16_20_16
 :parameters ()
 :precondition (and (at_x21)(at_y16))
 :poss-precondition (and (bridge_20_16_21_16))
 :effect (and (not (at_x21)) (at_x20))
)

(:action move_21_16_22_16
 :parameters ()
 :precondition (and (at_x21)(at_y16))
 :poss-precondition (and (bridge_21_16_22_16))
 :effect (and (not (at_x21)) (at_x22))
)

(:action move_21_16_21_15
 :parameters ()
 :precondition (and (at_x21)(at_y16))
 :poss-precondition (and (bridge_21_15_21_16))
 :effect (and (not (at_y16)) (at_y15))
)

(:action move_21_16_21_17
 :parameters ()
 :precondition (and (at_x21)(at_y16))
 :poss-precondition (and (bridge_21_16_21_17))
 :effect (and (not (at_y16)) (at_y17))
)

(:action move_21_17_20_17
 :parameters ()
 :precondition (and (at_x21)(at_y17))
 :poss-precondition (and (bridge_20_17_21_17))
 :effect (and (not (at_x21)) (at_x20))
)

(:action move_21_17_22_17
 :parameters ()
 :precondition (and (at_x21)(at_y17))
 :poss-precondition (and (bridge_21_17_22_17))
 :effect (and (not (at_x21)) (at_x22))
)

(:action move_21_17_21_16
 :parameters ()
 :precondition (and (at_x21)(at_y17))
 :poss-precondition (and (bridge_21_16_21_17))
 :effect (and (not (at_y17)) (at_y16))
)

(:action move_21_17_21_18
 :parameters ()
 :precondition (and (at_x21)(at_y17))
 :poss-precondition (and (bridge_21_17_21_18))
 :effect (and (not (at_y17)) (at_y18))
)

(:action move_21_18_20_18
 :parameters ()
 :precondition (and (at_x21)(at_y18))
 :poss-precondition (and (bridge_20_18_21_18))
 :effect (and (not (at_x21)) (at_x20))
)

(:action move_21_18_22_18
 :parameters ()
 :precondition (and (at_x21)(at_y18))
 :poss-precondition (and (bridge_21_18_22_18))
 :effect (and (not (at_x21)) (at_x22))
)

(:action move_21_18_21_17
 :parameters ()
 :precondition (and (at_x21)(at_y18))
 :poss-precondition (and (bridge_21_17_21_18))
 :effect (and (not (at_y18)) (at_y17))
)

(:action move_21_18_21_19
 :parameters ()
 :precondition (and (at_x21)(at_y18))
 :poss-precondition (and (bridge_21_18_21_19))
 :effect (and (not (at_y18)) (at_y19))
)

(:action move_21_19_20_19
 :parameters ()
 :precondition (and (at_x21)(at_y19))
 :poss-precondition (and (bridge_20_19_21_19))
 :effect (and (not (at_x21)) (at_x20))
)

(:action move_21_19_22_19
 :parameters ()
 :precondition (and (at_x21)(at_y19))
 :poss-precondition (and (bridge_21_19_22_19))
 :effect (and (not (at_x21)) (at_x22))
)

(:action move_21_19_21_18
 :parameters ()
 :precondition (and (at_x21)(at_y19))
 :poss-precondition (and (bridge_21_18_21_19))
 :effect (and (not (at_y19)) (at_y18))
)

(:action move_21_19_21_20
 :parameters ()
 :precondition (and (at_x21)(at_y19))
 :poss-precondition (and (bridge_21_19_21_20))
 :effect (and (not (at_y19)) (at_y20))
)

(:action move_21_20_20_20
 :parameters ()
 :precondition (and (at_x21)(at_y20))
 :poss-precondition (and (bridge_20_20_21_20))
 :effect (and (not (at_x21)) (at_x20))
)

(:action move_21_20_22_20
 :parameters ()
 :precondition (and (at_x21)(at_y20))
 :poss-precondition (and (bridge_21_20_22_20))
 :effect (and (not (at_x21)) (at_x22))
)

(:action move_21_20_21_19
 :parameters ()
 :precondition (and (at_x21)(at_y20))
 :poss-precondition (and (bridge_21_19_21_20))
 :effect (and (not (at_y20)) (at_y19))
)

(:action move_21_20_21_21
 :parameters ()
 :precondition (and (at_x21)(at_y20))
 :poss-precondition (and (bridge_21_20_21_21))
 :effect (and (not (at_y20)) (at_y21))
)

(:action move_21_21_20_21
 :parameters ()
 :precondition (and (at_x21)(at_y21))
 :poss-precondition (and (bridge_20_21_21_21))
 :effect (and (not (at_x21)) (at_x20))
)

(:action move_21_21_22_21
 :parameters ()
 :precondition (and (at_x21)(at_y21))
 :poss-precondition (and (bridge_21_21_22_21))
 :effect (and (not (at_x21)) (at_x22))
)

(:action move_21_21_21_20
 :parameters ()
 :precondition (and (at_x21)(at_y21))
 :poss-precondition (and (bridge_21_20_21_21))
 :effect (and (not (at_y21)) (at_y20))
)

(:action move_21_21_21_22
 :parameters ()
 :precondition (and (at_x21)(at_y21))
 :poss-precondition (and (bridge_21_21_21_22))
 :effect (and (not (at_y21)) (at_y22))
)

(:action move_21_22_20_22
 :parameters ()
 :precondition (and (at_x21)(at_y22))
 :poss-precondition (and (bridge_20_22_21_22))
 :effect (and (not (at_x21)) (at_x20))
)

(:action move_21_22_22_22
 :parameters ()
 :precondition (and (at_x21)(at_y22))
 :poss-precondition (and (bridge_21_22_22_22))
 :effect (and (not (at_x21)) (at_x22))
)

(:action move_21_22_21_21
 :parameters ()
 :precondition (and (at_x21)(at_y22))
 :poss-precondition (and (bridge_21_21_21_22))
 :effect (and (not (at_y22)) (at_y21))
)

(:action move_21_22_21_23
 :parameters ()
 :precondition (and (at_x21)(at_y22))
 :poss-precondition (and (bridge_21_22_21_23))
 :effect (and (not (at_y22)) (at_y23))
)

(:action move_21_23_20_23
 :parameters ()
 :precondition (and (at_x21)(at_y23))
 :poss-precondition (and (bridge_20_23_21_23))
 :effect (and (not (at_x21)) (at_x20))
)

(:action move_21_23_22_23
 :parameters ()
 :precondition (and (at_x21)(at_y23))
 :poss-precondition (and (bridge_21_23_22_23))
 :effect (and (not (at_x21)) (at_x22))
)

(:action move_21_23_21_22
 :parameters ()
 :precondition (and (at_x21)(at_y23))
 :poss-precondition (and (bridge_21_22_21_23))
 :effect (and (not (at_y23)) (at_y22))
)

(:action move_21_23_21_24
 :parameters ()
 :precondition (and (at_x21)(at_y23))
 :poss-precondition (and (bridge_21_23_21_24))
 :effect (and (not (at_y23)) (at_y24))
)

(:action move_21_24_20_24
 :parameters ()
 :precondition (and (at_x21)(at_y24))
 :poss-precondition (and (bridge_20_24_21_24))
 :effect (and (not (at_x21)) (at_x20))
)

(:action move_21_24_22_24
 :parameters ()
 :precondition (and (at_x21)(at_y24))
 :poss-precondition (and (bridge_21_24_22_24))
 :effect (and (not (at_x21)) (at_x22))
)

(:action move_21_24_21_23
 :parameters ()
 :precondition (and (at_x21)(at_y24))
 :poss-precondition (and (bridge_21_23_21_24))
 :effect (and (not (at_y24)) (at_y23))
)

(:action move_21_24_21_25
 :parameters ()
 :precondition (and (at_x21)(at_y24))
 :poss-precondition (and (bridge_21_24_21_25))
 :effect (and (not (at_y24)) (at_y25))
)

(:action move_21_25_20_25
 :parameters ()
 :precondition (and (at_x21)(at_y25))
 :poss-precondition (and (bridge_20_25_21_25))
 :effect (and (not (at_x21)) (at_x20))
)

(:action move_21_25_22_25
 :parameters ()
 :precondition (and (at_x21)(at_y25))
 :poss-precondition (and (bridge_21_25_22_25))
 :effect (and (not (at_x21)) (at_x22))
)

(:action move_21_25_21_24
 :parameters ()
 :precondition (and (at_x21)(at_y25))
 :poss-precondition (and (bridge_21_24_21_25))
 :effect (and (not (at_y25)) (at_y24))
)

(:action move_21_25_21_26
 :parameters ()
 :precondition (and (at_x21)(at_y25))
 :poss-precondition (and (bridge_21_25_21_26))
 :effect (and (not (at_y25)) (at_y26))
)

(:action move_21_26_20_26
 :parameters ()
 :precondition (and (at_x21)(at_y26))
 :poss-precondition (and (bridge_20_26_21_26))
 :effect (and (not (at_x21)) (at_x20))
)

(:action move_21_26_22_26
 :parameters ()
 :precondition (and (at_x21)(at_y26))
 :poss-precondition (and (bridge_21_26_22_26))
 :effect (and (not (at_x21)) (at_x22))
)

(:action move_21_26_21_25
 :parameters ()
 :precondition (and (at_x21)(at_y26))
 :poss-precondition (and (bridge_21_25_21_26))
 :effect (and (not (at_y26)) (at_y25))
)

(:action move_21_26_21_27
 :parameters ()
 :precondition (and (at_x21)(at_y26))
 :poss-precondition (and (bridge_21_26_21_27))
 :effect (and (not (at_y26)) (at_y27))
)

(:action move_21_27_20_27
 :parameters ()
 :precondition (and (at_x21)(at_y27))
 :poss-precondition (and (bridge_20_27_21_27))
 :effect (and (not (at_x21)) (at_x20))
)

(:action move_21_27_22_27
 :parameters ()
 :precondition (and (at_x21)(at_y27))
 :poss-precondition (and (bridge_21_27_22_27))
 :effect (and (not (at_x21)) (at_x22))
)

(:action move_21_27_21_26
 :parameters ()
 :precondition (and (at_x21)(at_y27))
 :poss-precondition (and (bridge_21_26_21_27))
 :effect (and (not (at_y27)) (at_y26))
)

(:action move_21_27_21_28
 :parameters ()
 :precondition (and (at_x21)(at_y27))
 :poss-precondition (and (bridge_21_27_21_28))
 :effect (and (not (at_y27)) (at_y28))
)

(:action move_21_28_20_28
 :parameters ()
 :precondition (and (at_x21)(at_y28))
 :poss-precondition (and (bridge_20_28_21_28))
 :effect (and (not (at_x21)) (at_x20))
)

(:action move_21_28_22_28
 :parameters ()
 :precondition (and (at_x21)(at_y28))
 :poss-precondition (and (bridge_21_28_22_28))
 :effect (and (not (at_x21)) (at_x22))
)

(:action move_21_28_21_27
 :parameters ()
 :precondition (and (at_x21)(at_y28))
 :poss-precondition (and (bridge_21_27_21_28))
 :effect (and (not (at_y28)) (at_y27))
)

(:action move_21_28_21_29
 :parameters ()
 :precondition (and (at_x21)(at_y28))
 :poss-precondition (and (bridge_21_28_21_29))
 :effect (and (not (at_y28)) (at_y29))
)

(:action move_21_29_20_29
 :parameters ()
 :precondition (and (at_x21)(at_y29))
 :poss-precondition (and (bridge_20_29_21_29))
 :effect (and (not (at_x21)) (at_x20))
)

(:action move_21_29_22_29
 :parameters ()
 :precondition (and (at_x21)(at_y29))
 :poss-precondition (and (bridge_21_29_22_29))
 :effect (and (not (at_x21)) (at_x22))
)

(:action move_21_29_21_28
 :parameters ()
 :precondition (and (at_x21)(at_y29))
 :poss-precondition (and (bridge_21_28_21_29))
 :effect (and (not (at_y29)) (at_y28))
)

(:action move_21_29_21_30
 :parameters ()
 :precondition (and (at_x21)(at_y29))
 :poss-precondition (and (bridge_21_29_21_30))
 :effect (and (not (at_y29)) (at_y30))
)

(:action move_21_30_20_30
 :parameters ()
 :precondition (and (at_x21)(at_y30))
 :poss-precondition (and (bridge_20_30_21_30))
 :effect (and (not (at_x21)) (at_x20))
)

(:action move_21_30_22_30
 :parameters ()
 :precondition (and (at_x21)(at_y30))
 :poss-precondition (and (bridge_21_30_22_30))
 :effect (and (not (at_x21)) (at_x22))
)

(:action move_21_30_21_29
 :parameters ()
 :precondition (and (at_x21)(at_y30))
 :poss-precondition (and (bridge_21_29_21_30))
 :effect (and (not (at_y30)) (at_y29))
)

(:action move_21_30_21_31
 :parameters ()
 :precondition (and (at_x21)(at_y30))
 :poss-precondition (and (bridge_21_30_21_31))
 :effect (and (not (at_y30)) (at_y31))
)

(:action move_21_31_20_31
 :parameters ()
 :precondition (and (at_x21)(at_y31))
 :poss-precondition (and (bridge_20_31_21_31))
 :effect (and (not (at_x21)) (at_x20))
)

(:action move_21_31_22_31
 :parameters ()
 :precondition (and (at_x21)(at_y31))
 :poss-precondition (and (bridge_21_31_22_31))
 :effect (and (not (at_x21)) (at_x22))
)

(:action move_21_31_21_30
 :parameters ()
 :precondition (and (at_x21)(at_y31))
 :poss-precondition (and (bridge_21_30_21_31))
 :effect (and (not (at_y31)) (at_y30))
)

(:action move_22_0_21_0
 :parameters ()
 :precondition (and (at_x22)(at_y0))
 :poss-precondition (and (bridge_21_0_22_0))
 :effect (and (not (at_x22)) (at_x21))
)

(:action move_22_0_23_0
 :parameters ()
 :precondition (and (at_x22)(at_y0))
 :poss-precondition (and (bridge_22_0_23_0))
 :effect (and (not (at_x22)) (at_x23))
)

(:action move_22_0_22_1
 :parameters ()
 :precondition (and (at_x22)(at_y0))
 :poss-precondition (and (bridge_22_0_22_1))
 :effect (and (not (at_y0)) (at_y1))
)

(:action move_22_1_21_1
 :parameters ()
 :precondition (and (at_x22)(at_y1))
 :poss-precondition (and (bridge_21_1_22_1))
 :effect (and (not (at_x22)) (at_x21))
)

(:action move_22_1_23_1
 :parameters ()
 :precondition (and (at_x22)(at_y1))
 :poss-precondition (and (bridge_22_1_23_1))
 :effect (and (not (at_x22)) (at_x23))
)

(:action move_22_1_22_0
 :parameters ()
 :precondition (and (at_x22)(at_y1))
 :poss-precondition (and (bridge_22_0_22_1))
 :effect (and (not (at_y1)) (at_y0))
)

(:action move_22_1_22_2
 :parameters ()
 :precondition (and (at_x22)(at_y1))
 :poss-precondition (and (bridge_22_1_22_2))
 :effect (and (not (at_y1)) (at_y2))
)

(:action move_22_2_21_2
 :parameters ()
 :precondition (and (at_x22)(at_y2))
 :poss-precondition (and (bridge_21_2_22_2))
 :effect (and (not (at_x22)) (at_x21))
)

(:action move_22_2_23_2
 :parameters ()
 :precondition (and (at_x22)(at_y2))
 :poss-precondition (and (bridge_22_2_23_2))
 :effect (and (not (at_x22)) (at_x23))
)

(:action move_22_2_22_1
 :parameters ()
 :precondition (and (at_x22)(at_y2))
 :poss-precondition (and (bridge_22_1_22_2))
 :effect (and (not (at_y2)) (at_y1))
)

(:action move_22_2_22_3
 :parameters ()
 :precondition (and (at_x22)(at_y2))
 :poss-precondition (and (bridge_22_2_22_3))
 :effect (and (not (at_y2)) (at_y3))
)

(:action move_22_3_21_3
 :parameters ()
 :precondition (and (at_x22)(at_y3))
 :poss-precondition (and (bridge_21_3_22_3))
 :effect (and (not (at_x22)) (at_x21))
)

(:action move_22_3_23_3
 :parameters ()
 :precondition (and (at_x22)(at_y3))
 :poss-precondition (and (bridge_22_3_23_3))
 :effect (and (not (at_x22)) (at_x23))
)

(:action move_22_3_22_2
 :parameters ()
 :precondition (and (at_x22)(at_y3))
 :poss-precondition (and (bridge_22_2_22_3))
 :effect (and (not (at_y3)) (at_y2))
)

(:action move_22_3_22_4
 :parameters ()
 :precondition (and (at_x22)(at_y3))
 :poss-precondition (and (bridge_22_3_22_4))
 :effect (and (not (at_y3)) (at_y4))
)

(:action move_22_4_21_4
 :parameters ()
 :precondition (and (at_x22)(at_y4))
 :poss-precondition (and (bridge_21_4_22_4))
 :effect (and (not (at_x22)) (at_x21))
)

(:action move_22_4_23_4
 :parameters ()
 :precondition (and (at_x22)(at_y4))
 :poss-precondition (and (bridge_22_4_23_4))
 :effect (and (not (at_x22)) (at_x23))
)

(:action move_22_4_22_3
 :parameters ()
 :precondition (and (at_x22)(at_y4))
 :poss-precondition (and (bridge_22_3_22_4))
 :effect (and (not (at_y4)) (at_y3))
)

(:action move_22_4_22_5
 :parameters ()
 :precondition (and (at_x22)(at_y4))
 :poss-precondition (and (bridge_22_4_22_5))
 :effect (and (not (at_y4)) (at_y5))
)

(:action move_22_5_21_5
 :parameters ()
 :precondition (and (at_x22)(at_y5))
 :poss-precondition (and (bridge_21_5_22_5))
 :effect (and (not (at_x22)) (at_x21))
)

(:action move_22_5_23_5
 :parameters ()
 :precondition (and (at_x22)(at_y5))
 :poss-precondition (and (bridge_22_5_23_5))
 :effect (and (not (at_x22)) (at_x23))
)

(:action move_22_5_22_4
 :parameters ()
 :precondition (and (at_x22)(at_y5))
 :poss-precondition (and (bridge_22_4_22_5))
 :effect (and (not (at_y5)) (at_y4))
)

(:action move_22_5_22_6
 :parameters ()
 :precondition (and (at_x22)(at_y5))
 :poss-precondition (and (bridge_22_5_22_6))
 :effect (and (not (at_y5)) (at_y6))
)

(:action move_22_6_21_6
 :parameters ()
 :precondition (and (at_x22)(at_y6))
 :poss-precondition (and (bridge_21_6_22_6))
 :effect (and (not (at_x22)) (at_x21))
)

(:action move_22_6_23_6
 :parameters ()
 :precondition (and (at_x22)(at_y6))
 :poss-precondition (and (bridge_22_6_23_6))
 :effect (and (not (at_x22)) (at_x23))
)

(:action move_22_6_22_5
 :parameters ()
 :precondition (and (at_x22)(at_y6))
 :poss-precondition (and (bridge_22_5_22_6))
 :effect (and (not (at_y6)) (at_y5))
)

(:action move_22_6_22_7
 :parameters ()
 :precondition (and (at_x22)(at_y6))
 :poss-precondition (and (bridge_22_6_22_7))
 :effect (and (not (at_y6)) (at_y7))
)

(:action move_22_7_21_7
 :parameters ()
 :precondition (and (at_x22)(at_y7))
 :poss-precondition (and (bridge_21_7_22_7))
 :effect (and (not (at_x22)) (at_x21))
)

(:action move_22_7_23_7
 :parameters ()
 :precondition (and (at_x22)(at_y7))
 :poss-precondition (and (bridge_22_7_23_7))
 :effect (and (not (at_x22)) (at_x23))
)

(:action move_22_7_22_6
 :parameters ()
 :precondition (and (at_x22)(at_y7))
 :poss-precondition (and (bridge_22_6_22_7))
 :effect (and (not (at_y7)) (at_y6))
)

(:action move_22_7_22_8
 :parameters ()
 :precondition (and (at_x22)(at_y7))
 :poss-precondition (and (bridge_22_7_22_8))
 :effect (and (not (at_y7)) (at_y8))
)

(:action move_22_8_21_8
 :parameters ()
 :precondition (and (at_x22)(at_y8))
 :poss-precondition (and (bridge_21_8_22_8))
 :effect (and (not (at_x22)) (at_x21))
)

(:action move_22_8_23_8
 :parameters ()
 :precondition (and (at_x22)(at_y8))
 :poss-precondition (and (bridge_22_8_23_8))
 :effect (and (not (at_x22)) (at_x23))
)

(:action move_22_8_22_7
 :parameters ()
 :precondition (and (at_x22)(at_y8))
 :poss-precondition (and (bridge_22_7_22_8))
 :effect (and (not (at_y8)) (at_y7))
)

(:action move_22_8_22_9
 :parameters ()
 :precondition (and (at_x22)(at_y8))
 :poss-precondition (and (bridge_22_8_22_9))
 :effect (and (not (at_y8)) (at_y9))
)

(:action move_22_9_21_9
 :parameters ()
 :precondition (and (at_x22)(at_y9))
 :poss-precondition (and (bridge_21_9_22_9))
 :effect (and (not (at_x22)) (at_x21))
)

(:action move_22_9_23_9
 :parameters ()
 :precondition (and (at_x22)(at_y9))
 :poss-precondition (and (bridge_22_9_23_9))
 :effect (and (not (at_x22)) (at_x23))
)

(:action move_22_9_22_8
 :parameters ()
 :precondition (and (at_x22)(at_y9))
 :poss-precondition (and (bridge_22_8_22_9))
 :effect (and (not (at_y9)) (at_y8))
)

(:action move_22_9_22_10
 :parameters ()
 :precondition (and (at_x22)(at_y9))
 :poss-precondition (and (bridge_22_9_22_10))
 :effect (and (not (at_y9)) (at_y10))
)

(:action move_22_10_21_10
 :parameters ()
 :precondition (and (at_x22)(at_y10))
 :poss-precondition (and (bridge_21_10_22_10))
 :effect (and (not (at_x22)) (at_x21))
)

(:action move_22_10_23_10
 :parameters ()
 :precondition (and (at_x22)(at_y10))
 :poss-precondition (and (bridge_22_10_23_10))
 :effect (and (not (at_x22)) (at_x23))
)

(:action move_22_10_22_9
 :parameters ()
 :precondition (and (at_x22)(at_y10))
 :poss-precondition (and (bridge_22_9_22_10))
 :effect (and (not (at_y10)) (at_y9))
)

(:action move_22_10_22_11
 :parameters ()
 :precondition (and (at_x22)(at_y10))
 :poss-precondition (and (bridge_22_10_22_11))
 :effect (and (not (at_y10)) (at_y11))
)

(:action move_22_11_21_11
 :parameters ()
 :precondition (and (at_x22)(at_y11))
 :poss-precondition (and (bridge_21_11_22_11))
 :effect (and (not (at_x22)) (at_x21))
)

(:action move_22_11_23_11
 :parameters ()
 :precondition (and (at_x22)(at_y11))
 :poss-precondition (and (bridge_22_11_23_11))
 :effect (and (not (at_x22)) (at_x23))
)

(:action move_22_11_22_10
 :parameters ()
 :precondition (and (at_x22)(at_y11))
 :poss-precondition (and (bridge_22_10_22_11))
 :effect (and (not (at_y11)) (at_y10))
)

(:action move_22_11_22_12
 :parameters ()
 :precondition (and (at_x22)(at_y11))
 :poss-precondition (and (bridge_22_11_22_12))
 :effect (and (not (at_y11)) (at_y12))
)

(:action move_22_12_21_12
 :parameters ()
 :precondition (and (at_x22)(at_y12))
 :poss-precondition (and (bridge_21_12_22_12))
 :effect (and (not (at_x22)) (at_x21))
)

(:action move_22_12_23_12
 :parameters ()
 :precondition (and (at_x22)(at_y12))
 :poss-precondition (and (bridge_22_12_23_12))
 :effect (and (not (at_x22)) (at_x23))
)

(:action move_22_12_22_11
 :parameters ()
 :precondition (and (at_x22)(at_y12))
 :poss-precondition (and (bridge_22_11_22_12))
 :effect (and (not (at_y12)) (at_y11))
)

(:action move_22_12_22_13
 :parameters ()
 :precondition (and (at_x22)(at_y12))
 :poss-precondition (and (bridge_22_12_22_13))
 :effect (and (not (at_y12)) (at_y13))
)

(:action move_22_13_21_13
 :parameters ()
 :precondition (and (at_x22)(at_y13))
 :poss-precondition (and (bridge_21_13_22_13))
 :effect (and (not (at_x22)) (at_x21))
)

(:action move_22_13_23_13
 :parameters ()
 :precondition (and (at_x22)(at_y13))
 :poss-precondition (and (bridge_22_13_23_13))
 :effect (and (not (at_x22)) (at_x23))
)

(:action move_22_13_22_12
 :parameters ()
 :precondition (and (at_x22)(at_y13))
 :poss-precondition (and (bridge_22_12_22_13))
 :effect (and (not (at_y13)) (at_y12))
)

(:action move_22_13_22_14
 :parameters ()
 :precondition (and (at_x22)(at_y13))
 :poss-precondition (and (bridge_22_13_22_14))
 :effect (and (not (at_y13)) (at_y14))
)

(:action move_22_14_21_14
 :parameters ()
 :precondition (and (at_x22)(at_y14))
 :poss-precondition (and (bridge_21_14_22_14))
 :effect (and (not (at_x22)) (at_x21))
)

(:action move_22_14_23_14
 :parameters ()
 :precondition (and (at_x22)(at_y14))
 :poss-precondition (and (bridge_22_14_23_14))
 :effect (and (not (at_x22)) (at_x23))
)

(:action move_22_14_22_13
 :parameters ()
 :precondition (and (at_x22)(at_y14))
 :poss-precondition (and (bridge_22_13_22_14))
 :effect (and (not (at_y14)) (at_y13))
)

(:action move_22_14_22_15
 :parameters ()
 :precondition (and (at_x22)(at_y14))
 :poss-precondition (and (bridge_22_14_22_15))
 :effect (and (not (at_y14)) (at_y15))
)

(:action move_22_15_21_15
 :parameters ()
 :precondition (and (at_x22)(at_y15))
 :poss-precondition (and (bridge_21_15_22_15))
 :effect (and (not (at_x22)) (at_x21))
)

(:action move_22_15_23_15
 :parameters ()
 :precondition (and (at_x22)(at_y15))
 :poss-precondition (and (bridge_22_15_23_15))
 :effect (and (not (at_x22)) (at_x23))
)

(:action move_22_15_22_14
 :parameters ()
 :precondition (and (at_x22)(at_y15))
 :poss-precondition (and (bridge_22_14_22_15))
 :effect (and (not (at_y15)) (at_y14))
)

(:action move_22_15_22_16
 :parameters ()
 :precondition (and (at_x22)(at_y15))
 :poss-precondition (and (bridge_22_15_22_16))
 :effect (and (not (at_y15)) (at_y16))
)

(:action move_22_16_21_16
 :parameters ()
 :precondition (and (at_x22)(at_y16))
 :poss-precondition (and (bridge_21_16_22_16))
 :effect (and (not (at_x22)) (at_x21))
)

(:action move_22_16_23_16
 :parameters ()
 :precondition (and (at_x22)(at_y16))
 :poss-precondition (and (bridge_22_16_23_16))
 :effect (and (not (at_x22)) (at_x23))
)

(:action move_22_16_22_15
 :parameters ()
 :precondition (and (at_x22)(at_y16))
 :poss-precondition (and (bridge_22_15_22_16))
 :effect (and (not (at_y16)) (at_y15))
)

(:action move_22_16_22_17
 :parameters ()
 :precondition (and (at_x22)(at_y16))
 :poss-precondition (and (bridge_22_16_22_17))
 :effect (and (not (at_y16)) (at_y17))
)

(:action move_22_17_21_17
 :parameters ()
 :precondition (and (at_x22)(at_y17))
 :poss-precondition (and (bridge_21_17_22_17))
 :effect (and (not (at_x22)) (at_x21))
)

(:action move_22_17_23_17
 :parameters ()
 :precondition (and (at_x22)(at_y17))
 :poss-precondition (and (bridge_22_17_23_17))
 :effect (and (not (at_x22)) (at_x23))
)

(:action move_22_17_22_16
 :parameters ()
 :precondition (and (at_x22)(at_y17))
 :poss-precondition (and (bridge_22_16_22_17))
 :effect (and (not (at_y17)) (at_y16))
)

(:action move_22_17_22_18
 :parameters ()
 :precondition (and (at_x22)(at_y17))
 :poss-precondition (and (bridge_22_17_22_18))
 :effect (and (not (at_y17)) (at_y18))
)

(:action move_22_18_21_18
 :parameters ()
 :precondition (and (at_x22)(at_y18))
 :poss-precondition (and (bridge_21_18_22_18))
 :effect (and (not (at_x22)) (at_x21))
)

(:action move_22_18_23_18
 :parameters ()
 :precondition (and (at_x22)(at_y18))
 :poss-precondition (and (bridge_22_18_23_18))
 :effect (and (not (at_x22)) (at_x23))
)

(:action move_22_18_22_17
 :parameters ()
 :precondition (and (at_x22)(at_y18))
 :poss-precondition (and (bridge_22_17_22_18))
 :effect (and (not (at_y18)) (at_y17))
)

(:action move_22_18_22_19
 :parameters ()
 :precondition (and (at_x22)(at_y18))
 :poss-precondition (and (bridge_22_18_22_19))
 :effect (and (not (at_y18)) (at_y19))
)

(:action move_22_19_21_19
 :parameters ()
 :precondition (and (at_x22)(at_y19))
 :poss-precondition (and (bridge_21_19_22_19))
 :effect (and (not (at_x22)) (at_x21))
)

(:action move_22_19_23_19
 :parameters ()
 :precondition (and (at_x22)(at_y19))
 :poss-precondition (and (bridge_22_19_23_19))
 :effect (and (not (at_x22)) (at_x23))
)

(:action move_22_19_22_18
 :parameters ()
 :precondition (and (at_x22)(at_y19))
 :poss-precondition (and (bridge_22_18_22_19))
 :effect (and (not (at_y19)) (at_y18))
)

(:action move_22_19_22_20
 :parameters ()
 :precondition (and (at_x22)(at_y19))
 :poss-precondition (and (bridge_22_19_22_20))
 :effect (and (not (at_y19)) (at_y20))
)

(:action move_22_20_21_20
 :parameters ()
 :precondition (and (at_x22)(at_y20))
 :poss-precondition (and (bridge_21_20_22_20))
 :effect (and (not (at_x22)) (at_x21))
)

(:action move_22_20_23_20
 :parameters ()
 :precondition (and (at_x22)(at_y20))
 :poss-precondition (and (bridge_22_20_23_20))
 :effect (and (not (at_x22)) (at_x23))
)

(:action move_22_20_22_19
 :parameters ()
 :precondition (and (at_x22)(at_y20))
 :poss-precondition (and (bridge_22_19_22_20))
 :effect (and (not (at_y20)) (at_y19))
)

(:action move_22_20_22_21
 :parameters ()
 :precondition (and (at_x22)(at_y20))
 :poss-precondition (and (bridge_22_20_22_21))
 :effect (and (not (at_y20)) (at_y21))
)

(:action move_22_21_21_21
 :parameters ()
 :precondition (and (at_x22)(at_y21))
 :poss-precondition (and (bridge_21_21_22_21))
 :effect (and (not (at_x22)) (at_x21))
)

(:action move_22_21_23_21
 :parameters ()
 :precondition (and (at_x22)(at_y21))
 :poss-precondition (and (bridge_22_21_23_21))
 :effect (and (not (at_x22)) (at_x23))
)

(:action move_22_21_22_20
 :parameters ()
 :precondition (and (at_x22)(at_y21))
 :poss-precondition (and (bridge_22_20_22_21))
 :effect (and (not (at_y21)) (at_y20))
)

(:action move_22_21_22_22
 :parameters ()
 :precondition (and (at_x22)(at_y21))
 :poss-precondition (and (bridge_22_21_22_22))
 :effect (and (not (at_y21)) (at_y22))
)

(:action move_22_22_21_22
 :parameters ()
 :precondition (and (at_x22)(at_y22))
 :poss-precondition (and (bridge_21_22_22_22))
 :effect (and (not (at_x22)) (at_x21))
)

(:action move_22_22_23_22
 :parameters ()
 :precondition (and (at_x22)(at_y22))
 :poss-precondition (and (bridge_22_22_23_22))
 :effect (and (not (at_x22)) (at_x23))
)

(:action move_22_22_22_21
 :parameters ()
 :precondition (and (at_x22)(at_y22))
 :poss-precondition (and (bridge_22_21_22_22))
 :effect (and (not (at_y22)) (at_y21))
)

(:action move_22_22_22_23
 :parameters ()
 :precondition (and (at_x22)(at_y22))
 :poss-precondition (and (bridge_22_22_22_23))
 :effect (and (not (at_y22)) (at_y23))
)

(:action move_22_23_21_23
 :parameters ()
 :precondition (and (at_x22)(at_y23))
 :poss-precondition (and (bridge_21_23_22_23))
 :effect (and (not (at_x22)) (at_x21))
)

(:action move_22_23_23_23
 :parameters ()
 :precondition (and (at_x22)(at_y23))
 :poss-precondition (and (bridge_22_23_23_23))
 :effect (and (not (at_x22)) (at_x23))
)

(:action move_22_23_22_22
 :parameters ()
 :precondition (and (at_x22)(at_y23))
 :poss-precondition (and (bridge_22_22_22_23))
 :effect (and (not (at_y23)) (at_y22))
)

(:action move_22_23_22_24
 :parameters ()
 :precondition (and (at_x22)(at_y23))
 :poss-precondition (and (bridge_22_23_22_24))
 :effect (and (not (at_y23)) (at_y24))
)

(:action move_22_24_21_24
 :parameters ()
 :precondition (and (at_x22)(at_y24))
 :poss-precondition (and (bridge_21_24_22_24))
 :effect (and (not (at_x22)) (at_x21))
)

(:action move_22_24_23_24
 :parameters ()
 :precondition (and (at_x22)(at_y24))
 :poss-precondition (and (bridge_22_24_23_24))
 :effect (and (not (at_x22)) (at_x23))
)

(:action move_22_24_22_23
 :parameters ()
 :precondition (and (at_x22)(at_y24))
 :poss-precondition (and (bridge_22_23_22_24))
 :effect (and (not (at_y24)) (at_y23))
)

(:action move_22_24_22_25
 :parameters ()
 :precondition (and (at_x22)(at_y24))
 :poss-precondition (and (bridge_22_24_22_25))
 :effect (and (not (at_y24)) (at_y25))
)

(:action move_22_25_21_25
 :parameters ()
 :precondition (and (at_x22)(at_y25))
 :poss-precondition (and (bridge_21_25_22_25))
 :effect (and (not (at_x22)) (at_x21))
)

(:action move_22_25_23_25
 :parameters ()
 :precondition (and (at_x22)(at_y25))
 :poss-precondition (and (bridge_22_25_23_25))
 :effect (and (not (at_x22)) (at_x23))
)

(:action move_22_25_22_24
 :parameters ()
 :precondition (and (at_x22)(at_y25))
 :poss-precondition (and (bridge_22_24_22_25))
 :effect (and (not (at_y25)) (at_y24))
)

(:action move_22_25_22_26
 :parameters ()
 :precondition (and (at_x22)(at_y25))
 :poss-precondition (and (bridge_22_25_22_26))
 :effect (and (not (at_y25)) (at_y26))
)

(:action move_22_26_21_26
 :parameters ()
 :precondition (and (at_x22)(at_y26))
 :poss-precondition (and (bridge_21_26_22_26))
 :effect (and (not (at_x22)) (at_x21))
)

(:action move_22_26_23_26
 :parameters ()
 :precondition (and (at_x22)(at_y26))
 :poss-precondition (and (bridge_22_26_23_26))
 :effect (and (not (at_x22)) (at_x23))
)

(:action move_22_26_22_25
 :parameters ()
 :precondition (and (at_x22)(at_y26))
 :poss-precondition (and (bridge_22_25_22_26))
 :effect (and (not (at_y26)) (at_y25))
)

(:action move_22_26_22_27
 :parameters ()
 :precondition (and (at_x22)(at_y26))
 :poss-precondition (and (bridge_22_26_22_27))
 :effect (and (not (at_y26)) (at_y27))
)

(:action move_22_27_21_27
 :parameters ()
 :precondition (and (at_x22)(at_y27))
 :poss-precondition (and (bridge_21_27_22_27))
 :effect (and (not (at_x22)) (at_x21))
)

(:action move_22_27_23_27
 :parameters ()
 :precondition (and (at_x22)(at_y27))
 :poss-precondition (and (bridge_22_27_23_27))
 :effect (and (not (at_x22)) (at_x23))
)

(:action move_22_27_22_26
 :parameters ()
 :precondition (and (at_x22)(at_y27))
 :poss-precondition (and (bridge_22_26_22_27))
 :effect (and (not (at_y27)) (at_y26))
)

(:action move_22_27_22_28
 :parameters ()
 :precondition (and (at_x22)(at_y27))
 :poss-precondition (and (bridge_22_27_22_28))
 :effect (and (not (at_y27)) (at_y28))
)

(:action move_22_28_21_28
 :parameters ()
 :precondition (and (at_x22)(at_y28))
 :poss-precondition (and (bridge_21_28_22_28))
 :effect (and (not (at_x22)) (at_x21))
)

(:action move_22_28_23_28
 :parameters ()
 :precondition (and (at_x22)(at_y28))
 :poss-precondition (and (bridge_22_28_23_28))
 :effect (and (not (at_x22)) (at_x23))
)

(:action move_22_28_22_27
 :parameters ()
 :precondition (and (at_x22)(at_y28))
 :poss-precondition (and (bridge_22_27_22_28))
 :effect (and (not (at_y28)) (at_y27))
)

(:action move_22_28_22_29
 :parameters ()
 :precondition (and (at_x22)(at_y28))
 :poss-precondition (and (bridge_22_28_22_29))
 :effect (and (not (at_y28)) (at_y29))
)

(:action move_22_29_21_29
 :parameters ()
 :precondition (and (at_x22)(at_y29))
 :poss-precondition (and (bridge_21_29_22_29))
 :effect (and (not (at_x22)) (at_x21))
)

(:action move_22_29_23_29
 :parameters ()
 :precondition (and (at_x22)(at_y29))
 :poss-precondition (and (bridge_22_29_23_29))
 :effect (and (not (at_x22)) (at_x23))
)

(:action move_22_29_22_28
 :parameters ()
 :precondition (and (at_x22)(at_y29))
 :poss-precondition (and (bridge_22_28_22_29))
 :effect (and (not (at_y29)) (at_y28))
)

(:action move_22_29_22_30
 :parameters ()
 :precondition (and (at_x22)(at_y29))
 :poss-precondition (and (bridge_22_29_22_30))
 :effect (and (not (at_y29)) (at_y30))
)

(:action move_22_30_21_30
 :parameters ()
 :precondition (and (at_x22)(at_y30))
 :poss-precondition (and (bridge_21_30_22_30))
 :effect (and (not (at_x22)) (at_x21))
)

(:action move_22_30_23_30
 :parameters ()
 :precondition (and (at_x22)(at_y30))
 :poss-precondition (and (bridge_22_30_23_30))
 :effect (and (not (at_x22)) (at_x23))
)

(:action move_22_30_22_29
 :parameters ()
 :precondition (and (at_x22)(at_y30))
 :poss-precondition (and (bridge_22_29_22_30))
 :effect (and (not (at_y30)) (at_y29))
)

(:action move_22_30_22_31
 :parameters ()
 :precondition (and (at_x22)(at_y30))
 :poss-precondition (and (bridge_22_30_22_31))
 :effect (and (not (at_y30)) (at_y31))
)

(:action move_22_31_21_31
 :parameters ()
 :precondition (and (at_x22)(at_y31))
 :poss-precondition (and (bridge_21_31_22_31))
 :effect (and (not (at_x22)) (at_x21))
)

(:action move_22_31_23_31
 :parameters ()
 :precondition (and (at_x22)(at_y31))
 :poss-precondition (and (bridge_22_31_23_31))
 :effect (and (not (at_x22)) (at_x23))
)

(:action move_22_31_22_30
 :parameters ()
 :precondition (and (at_x22)(at_y31))
 :poss-precondition (and (bridge_22_30_22_31))
 :effect (and (not (at_y31)) (at_y30))
)

(:action move_23_0_22_0
 :parameters ()
 :precondition (and (at_x23)(at_y0))
 :poss-precondition (and (bridge_22_0_23_0))
 :effect (and (not (at_x23)) (at_x22))
)

(:action move_23_0_24_0
 :parameters ()
 :precondition (and (at_x23)(at_y0))
 :poss-precondition (and (bridge_23_0_24_0))
 :effect (and (not (at_x23)) (at_x24))
)

(:action move_23_0_23_1
 :parameters ()
 :precondition (and (at_x23)(at_y0))
 :poss-precondition (and (bridge_23_0_23_1))
 :effect (and (not (at_y0)) (at_y1))
)

(:action move_23_1_22_1
 :parameters ()
 :precondition (and (at_x23)(at_y1))
 :poss-precondition (and (bridge_22_1_23_1))
 :effect (and (not (at_x23)) (at_x22))
)

(:action move_23_1_24_1
 :parameters ()
 :precondition (and (at_x23)(at_y1))
 :poss-precondition (and (bridge_23_1_24_1))
 :effect (and (not (at_x23)) (at_x24))
)

(:action move_23_1_23_0
 :parameters ()
 :precondition (and (at_x23)(at_y1))
 :poss-precondition (and (bridge_23_0_23_1))
 :effect (and (not (at_y1)) (at_y0))
)

(:action move_23_1_23_2
 :parameters ()
 :precondition (and (at_x23)(at_y1))
 :poss-precondition (and (bridge_23_1_23_2))
 :effect (and (not (at_y1)) (at_y2))
)

(:action move_23_2_22_2
 :parameters ()
 :precondition (and (at_x23)(at_y2))
 :poss-precondition (and (bridge_22_2_23_2))
 :effect (and (not (at_x23)) (at_x22))
)

(:action move_23_2_24_2
 :parameters ()
 :precondition (and (at_x23)(at_y2))
 :poss-precondition (and (bridge_23_2_24_2))
 :effect (and (not (at_x23)) (at_x24))
)

(:action move_23_2_23_1
 :parameters ()
 :precondition (and (at_x23)(at_y2))
 :poss-precondition (and (bridge_23_1_23_2))
 :effect (and (not (at_y2)) (at_y1))
)

(:action move_23_2_23_3
 :parameters ()
 :precondition (and (at_x23)(at_y2))
 :poss-precondition (and (bridge_23_2_23_3))
 :effect (and (not (at_y2)) (at_y3))
)

(:action move_23_3_22_3
 :parameters ()
 :precondition (and (at_x23)(at_y3))
 :poss-precondition (and (bridge_22_3_23_3))
 :effect (and (not (at_x23)) (at_x22))
)

(:action move_23_3_24_3
 :parameters ()
 :precondition (and (at_x23)(at_y3))
 :poss-precondition (and (bridge_23_3_24_3))
 :effect (and (not (at_x23)) (at_x24))
)

(:action move_23_3_23_2
 :parameters ()
 :precondition (and (at_x23)(at_y3))
 :poss-precondition (and (bridge_23_2_23_3))
 :effect (and (not (at_y3)) (at_y2))
)

(:action move_23_3_23_4
 :parameters ()
 :precondition (and (at_x23)(at_y3))
 :poss-precondition (and (bridge_23_3_23_4))
 :effect (and (not (at_y3)) (at_y4))
)

(:action move_23_4_22_4
 :parameters ()
 :precondition (and (at_x23)(at_y4))
 :poss-precondition (and (bridge_22_4_23_4))
 :effect (and (not (at_x23)) (at_x22))
)

(:action move_23_4_24_4
 :parameters ()
 :precondition (and (at_x23)(at_y4))
 :poss-precondition (and (bridge_23_4_24_4))
 :effect (and (not (at_x23)) (at_x24))
)

(:action move_23_4_23_3
 :parameters ()
 :precondition (and (at_x23)(at_y4))
 :poss-precondition (and (bridge_23_3_23_4))
 :effect (and (not (at_y4)) (at_y3))
)

(:action move_23_4_23_5
 :parameters ()
 :precondition (and (at_x23)(at_y4))
 :poss-precondition (and (bridge_23_4_23_5))
 :effect (and (not (at_y4)) (at_y5))
)

(:action move_23_5_22_5
 :parameters ()
 :precondition (and (at_x23)(at_y5))
 :poss-precondition (and (bridge_22_5_23_5))
 :effect (and (not (at_x23)) (at_x22))
)

(:action move_23_5_24_5
 :parameters ()
 :precondition (and (at_x23)(at_y5))
 :poss-precondition (and (bridge_23_5_24_5))
 :effect (and (not (at_x23)) (at_x24))
)

(:action move_23_5_23_4
 :parameters ()
 :precondition (and (at_x23)(at_y5))
 :poss-precondition (and (bridge_23_4_23_5))
 :effect (and (not (at_y5)) (at_y4))
)

(:action move_23_5_23_6
 :parameters ()
 :precondition (and (at_x23)(at_y5))
 :poss-precondition (and (bridge_23_5_23_6))
 :effect (and (not (at_y5)) (at_y6))
)

(:action move_23_6_22_6
 :parameters ()
 :precondition (and (at_x23)(at_y6))
 :poss-precondition (and (bridge_22_6_23_6))
 :effect (and (not (at_x23)) (at_x22))
)

(:action move_23_6_24_6
 :parameters ()
 :precondition (and (at_x23)(at_y6))
 :poss-precondition (and (bridge_23_6_24_6))
 :effect (and (not (at_x23)) (at_x24))
)

(:action move_23_6_23_5
 :parameters ()
 :precondition (and (at_x23)(at_y6))
 :poss-precondition (and (bridge_23_5_23_6))
 :effect (and (not (at_y6)) (at_y5))
)

(:action move_23_6_23_7
 :parameters ()
 :precondition (and (at_x23)(at_y6))
 :poss-precondition (and (bridge_23_6_23_7))
 :effect (and (not (at_y6)) (at_y7))
)

(:action move_23_7_22_7
 :parameters ()
 :precondition (and (at_x23)(at_y7))
 :poss-precondition (and (bridge_22_7_23_7))
 :effect (and (not (at_x23)) (at_x22))
)

(:action move_23_7_24_7
 :parameters ()
 :precondition (and (at_x23)(at_y7))
 :poss-precondition (and (bridge_23_7_24_7))
 :effect (and (not (at_x23)) (at_x24))
)

(:action move_23_7_23_6
 :parameters ()
 :precondition (and (at_x23)(at_y7))
 :poss-precondition (and (bridge_23_6_23_7))
 :effect (and (not (at_y7)) (at_y6))
)

(:action move_23_7_23_8
 :parameters ()
 :precondition (and (at_x23)(at_y7))
 :poss-precondition (and (bridge_23_7_23_8))
 :effect (and (not (at_y7)) (at_y8))
)

(:action move_23_8_22_8
 :parameters ()
 :precondition (and (at_x23)(at_y8))
 :poss-precondition (and (bridge_22_8_23_8))
 :effect (and (not (at_x23)) (at_x22))
)

(:action move_23_8_24_8
 :parameters ()
 :precondition (and (at_x23)(at_y8))
 :poss-precondition (and (bridge_23_8_24_8))
 :effect (and (not (at_x23)) (at_x24))
)

(:action move_23_8_23_7
 :parameters ()
 :precondition (and (at_x23)(at_y8))
 :poss-precondition (and (bridge_23_7_23_8))
 :effect (and (not (at_y8)) (at_y7))
)

(:action move_23_8_23_9
 :parameters ()
 :precondition (and (at_x23)(at_y8))
 :poss-precondition (and (bridge_23_8_23_9))
 :effect (and (not (at_y8)) (at_y9))
)

(:action move_23_9_22_9
 :parameters ()
 :precondition (and (at_x23)(at_y9))
 :poss-precondition (and (bridge_22_9_23_9))
 :effect (and (not (at_x23)) (at_x22))
)

(:action move_23_9_24_9
 :parameters ()
 :precondition (and (at_x23)(at_y9))
 :poss-precondition (and (bridge_23_9_24_9))
 :effect (and (not (at_x23)) (at_x24))
)

(:action move_23_9_23_8
 :parameters ()
 :precondition (and (at_x23)(at_y9))
 :poss-precondition (and (bridge_23_8_23_9))
 :effect (and (not (at_y9)) (at_y8))
)

(:action move_23_9_23_10
 :parameters ()
 :precondition (and (at_x23)(at_y9))
 :poss-precondition (and (bridge_23_9_23_10))
 :effect (and (not (at_y9)) (at_y10))
)

(:action move_23_10_22_10
 :parameters ()
 :precondition (and (at_x23)(at_y10))
 :poss-precondition (and (bridge_22_10_23_10))
 :effect (and (not (at_x23)) (at_x22))
)

(:action move_23_10_24_10
 :parameters ()
 :precondition (and (at_x23)(at_y10))
 :poss-precondition (and (bridge_23_10_24_10))
 :effect (and (not (at_x23)) (at_x24))
)

(:action move_23_10_23_9
 :parameters ()
 :precondition (and (at_x23)(at_y10))
 :poss-precondition (and (bridge_23_9_23_10))
 :effect (and (not (at_y10)) (at_y9))
)

(:action move_23_10_23_11
 :parameters ()
 :precondition (and (at_x23)(at_y10))
 :poss-precondition (and (bridge_23_10_23_11))
 :effect (and (not (at_y10)) (at_y11))
)

(:action move_23_11_22_11
 :parameters ()
 :precondition (and (at_x23)(at_y11))
 :poss-precondition (and (bridge_22_11_23_11))
 :effect (and (not (at_x23)) (at_x22))
)

(:action move_23_11_24_11
 :parameters ()
 :precondition (and (at_x23)(at_y11))
 :poss-precondition (and (bridge_23_11_24_11))
 :effect (and (not (at_x23)) (at_x24))
)

(:action move_23_11_23_10
 :parameters ()
 :precondition (and (at_x23)(at_y11))
 :poss-precondition (and (bridge_23_10_23_11))
 :effect (and (not (at_y11)) (at_y10))
)

(:action move_23_11_23_12
 :parameters ()
 :precondition (and (at_x23)(at_y11))
 :poss-precondition (and (bridge_23_11_23_12))
 :effect (and (not (at_y11)) (at_y12))
)

(:action move_23_12_22_12
 :parameters ()
 :precondition (and (at_x23)(at_y12))
 :poss-precondition (and (bridge_22_12_23_12))
 :effect (and (not (at_x23)) (at_x22))
)

(:action move_23_12_24_12
 :parameters ()
 :precondition (and (at_x23)(at_y12))
 :poss-precondition (and (bridge_23_12_24_12))
 :effect (and (not (at_x23)) (at_x24))
)

(:action move_23_12_23_11
 :parameters ()
 :precondition (and (at_x23)(at_y12))
 :poss-precondition (and (bridge_23_11_23_12))
 :effect (and (not (at_y12)) (at_y11))
)

(:action move_23_12_23_13
 :parameters ()
 :precondition (and (at_x23)(at_y12))
 :poss-precondition (and (bridge_23_12_23_13))
 :effect (and (not (at_y12)) (at_y13))
)

(:action move_23_13_22_13
 :parameters ()
 :precondition (and (at_x23)(at_y13))
 :poss-precondition (and (bridge_22_13_23_13))
 :effect (and (not (at_x23)) (at_x22))
)

(:action move_23_13_24_13
 :parameters ()
 :precondition (and (at_x23)(at_y13))
 :poss-precondition (and (bridge_23_13_24_13))
 :effect (and (not (at_x23)) (at_x24))
)

(:action move_23_13_23_12
 :parameters ()
 :precondition (and (at_x23)(at_y13))
 :poss-precondition (and (bridge_23_12_23_13))
 :effect (and (not (at_y13)) (at_y12))
)

(:action move_23_13_23_14
 :parameters ()
 :precondition (and (at_x23)(at_y13))
 :poss-precondition (and (bridge_23_13_23_14))
 :effect (and (not (at_y13)) (at_y14))
)

(:action move_23_14_22_14
 :parameters ()
 :precondition (and (at_x23)(at_y14))
 :poss-precondition (and (bridge_22_14_23_14))
 :effect (and (not (at_x23)) (at_x22))
)

(:action move_23_14_24_14
 :parameters ()
 :precondition (and (at_x23)(at_y14))
 :poss-precondition (and (bridge_23_14_24_14))
 :effect (and (not (at_x23)) (at_x24))
)

(:action move_23_14_23_13
 :parameters ()
 :precondition (and (at_x23)(at_y14))
 :poss-precondition (and (bridge_23_13_23_14))
 :effect (and (not (at_y14)) (at_y13))
)

(:action move_23_14_23_15
 :parameters ()
 :precondition (and (at_x23)(at_y14))
 :poss-precondition (and (bridge_23_14_23_15))
 :effect (and (not (at_y14)) (at_y15))
)

(:action move_23_15_22_15
 :parameters ()
 :precondition (and (at_x23)(at_y15))
 :poss-precondition (and (bridge_22_15_23_15))
 :effect (and (not (at_x23)) (at_x22))
)

(:action move_23_15_24_15
 :parameters ()
 :precondition (and (at_x23)(at_y15))
 :poss-precondition (and (bridge_23_15_24_15))
 :effect (and (not (at_x23)) (at_x24))
)

(:action move_23_15_23_14
 :parameters ()
 :precondition (and (at_x23)(at_y15))
 :poss-precondition (and (bridge_23_14_23_15))
 :effect (and (not (at_y15)) (at_y14))
)

(:action move_23_15_23_16
 :parameters ()
 :precondition (and (at_x23)(at_y15))
 :poss-precondition (and (bridge_23_15_23_16))
 :effect (and (not (at_y15)) (at_y16))
)

(:action move_23_16_22_16
 :parameters ()
 :precondition (and (at_x23)(at_y16))
 :poss-precondition (and (bridge_22_16_23_16))
 :effect (and (not (at_x23)) (at_x22))
)

(:action move_23_16_24_16
 :parameters ()
 :precondition (and (at_x23)(at_y16))
 :poss-precondition (and (bridge_23_16_24_16))
 :effect (and (not (at_x23)) (at_x24))
)

(:action move_23_16_23_15
 :parameters ()
 :precondition (and (at_x23)(at_y16))
 :poss-precondition (and (bridge_23_15_23_16))
 :effect (and (not (at_y16)) (at_y15))
)

(:action move_23_16_23_17
 :parameters ()
 :precondition (and (at_x23)(at_y16))
 :poss-precondition (and (bridge_23_16_23_17))
 :effect (and (not (at_y16)) (at_y17))
)

(:action move_23_17_22_17
 :parameters ()
 :precondition (and (at_x23)(at_y17))
 :poss-precondition (and (bridge_22_17_23_17))
 :effect (and (not (at_x23)) (at_x22))
)

(:action move_23_17_24_17
 :parameters ()
 :precondition (and (at_x23)(at_y17))
 :poss-precondition (and (bridge_23_17_24_17))
 :effect (and (not (at_x23)) (at_x24))
)

(:action move_23_17_23_16
 :parameters ()
 :precondition (and (at_x23)(at_y17))
 :poss-precondition (and (bridge_23_16_23_17))
 :effect (and (not (at_y17)) (at_y16))
)

(:action move_23_17_23_18
 :parameters ()
 :precondition (and (at_x23)(at_y17))
 :poss-precondition (and (bridge_23_17_23_18))
 :effect (and (not (at_y17)) (at_y18))
)

(:action move_23_18_22_18
 :parameters ()
 :precondition (and (at_x23)(at_y18))
 :poss-precondition (and (bridge_22_18_23_18))
 :effect (and (not (at_x23)) (at_x22))
)

(:action move_23_18_24_18
 :parameters ()
 :precondition (and (at_x23)(at_y18))
 :poss-precondition (and (bridge_23_18_24_18))
 :effect (and (not (at_x23)) (at_x24))
)

(:action move_23_18_23_17
 :parameters ()
 :precondition (and (at_x23)(at_y18))
 :poss-precondition (and (bridge_23_17_23_18))
 :effect (and (not (at_y18)) (at_y17))
)

(:action move_23_18_23_19
 :parameters ()
 :precondition (and (at_x23)(at_y18))
 :poss-precondition (and (bridge_23_18_23_19))
 :effect (and (not (at_y18)) (at_y19))
)

(:action move_23_19_22_19
 :parameters ()
 :precondition (and (at_x23)(at_y19))
 :poss-precondition (and (bridge_22_19_23_19))
 :effect (and (not (at_x23)) (at_x22))
)

(:action move_23_19_24_19
 :parameters ()
 :precondition (and (at_x23)(at_y19))
 :poss-precondition (and (bridge_23_19_24_19))
 :effect (and (not (at_x23)) (at_x24))
)

(:action move_23_19_23_18
 :parameters ()
 :precondition (and (at_x23)(at_y19))
 :poss-precondition (and (bridge_23_18_23_19))
 :effect (and (not (at_y19)) (at_y18))
)

(:action move_23_19_23_20
 :parameters ()
 :precondition (and (at_x23)(at_y19))
 :poss-precondition (and (bridge_23_19_23_20))
 :effect (and (not (at_y19)) (at_y20))
)

(:action move_23_20_22_20
 :parameters ()
 :precondition (and (at_x23)(at_y20))
 :poss-precondition (and (bridge_22_20_23_20))
 :effect (and (not (at_x23)) (at_x22))
)

(:action move_23_20_24_20
 :parameters ()
 :precondition (and (at_x23)(at_y20))
 :poss-precondition (and (bridge_23_20_24_20))
 :effect (and (not (at_x23)) (at_x24))
)

(:action move_23_20_23_19
 :parameters ()
 :precondition (and (at_x23)(at_y20))
 :poss-precondition (and (bridge_23_19_23_20))
 :effect (and (not (at_y20)) (at_y19))
)

(:action move_23_20_23_21
 :parameters ()
 :precondition (and (at_x23)(at_y20))
 :poss-precondition (and (bridge_23_20_23_21))
 :effect (and (not (at_y20)) (at_y21))
)

(:action move_23_21_22_21
 :parameters ()
 :precondition (and (at_x23)(at_y21))
 :poss-precondition (and (bridge_22_21_23_21))
 :effect (and (not (at_x23)) (at_x22))
)

(:action move_23_21_24_21
 :parameters ()
 :precondition (and (at_x23)(at_y21))
 :poss-precondition (and (bridge_23_21_24_21))
 :effect (and (not (at_x23)) (at_x24))
)

(:action move_23_21_23_20
 :parameters ()
 :precondition (and (at_x23)(at_y21))
 :poss-precondition (and (bridge_23_20_23_21))
 :effect (and (not (at_y21)) (at_y20))
)

(:action move_23_21_23_22
 :parameters ()
 :precondition (and (at_x23)(at_y21))
 :poss-precondition (and (bridge_23_21_23_22))
 :effect (and (not (at_y21)) (at_y22))
)

(:action move_23_22_22_22
 :parameters ()
 :precondition (and (at_x23)(at_y22))
 :poss-precondition (and (bridge_22_22_23_22))
 :effect (and (not (at_x23)) (at_x22))
)

(:action move_23_22_24_22
 :parameters ()
 :precondition (and (at_x23)(at_y22))
 :poss-precondition (and (bridge_23_22_24_22))
 :effect (and (not (at_x23)) (at_x24))
)

(:action move_23_22_23_21
 :parameters ()
 :precondition (and (at_x23)(at_y22))
 :poss-precondition (and (bridge_23_21_23_22))
 :effect (and (not (at_y22)) (at_y21))
)

(:action move_23_22_23_23
 :parameters ()
 :precondition (and (at_x23)(at_y22))
 :poss-precondition (and (bridge_23_22_23_23))
 :effect (and (not (at_y22)) (at_y23))
)

(:action move_23_23_22_23
 :parameters ()
 :precondition (and (at_x23)(at_y23))
 :poss-precondition (and (bridge_22_23_23_23))
 :effect (and (not (at_x23)) (at_x22))
)

(:action move_23_23_24_23
 :parameters ()
 :precondition (and (at_x23)(at_y23))
 :poss-precondition (and (bridge_23_23_24_23))
 :effect (and (not (at_x23)) (at_x24))
)

(:action move_23_23_23_22
 :parameters ()
 :precondition (and (at_x23)(at_y23))
 :poss-precondition (and (bridge_23_22_23_23))
 :effect (and (not (at_y23)) (at_y22))
)

(:action move_23_23_23_24
 :parameters ()
 :precondition (and (at_x23)(at_y23))
 :poss-precondition (and (bridge_23_23_23_24))
 :effect (and (not (at_y23)) (at_y24))
)

(:action move_23_24_22_24
 :parameters ()
 :precondition (and (at_x23)(at_y24))
 :poss-precondition (and (bridge_22_24_23_24))
 :effect (and (not (at_x23)) (at_x22))
)

(:action move_23_24_24_24
 :parameters ()
 :precondition (and (at_x23)(at_y24))
 :poss-precondition (and (bridge_23_24_24_24))
 :effect (and (not (at_x23)) (at_x24))
)

(:action move_23_24_23_23
 :parameters ()
 :precondition (and (at_x23)(at_y24))
 :poss-precondition (and (bridge_23_23_23_24))
 :effect (and (not (at_y24)) (at_y23))
)

(:action move_23_24_23_25
 :parameters ()
 :precondition (and (at_x23)(at_y24))
 :poss-precondition (and (bridge_23_24_23_25))
 :effect (and (not (at_y24)) (at_y25))
)

(:action move_23_25_22_25
 :parameters ()
 :precondition (and (at_x23)(at_y25))
 :poss-precondition (and (bridge_22_25_23_25))
 :effect (and (not (at_x23)) (at_x22))
)

(:action move_23_25_24_25
 :parameters ()
 :precondition (and (at_x23)(at_y25))
 :poss-precondition (and (bridge_23_25_24_25))
 :effect (and (not (at_x23)) (at_x24))
)

(:action move_23_25_23_24
 :parameters ()
 :precondition (and (at_x23)(at_y25))
 :poss-precondition (and (bridge_23_24_23_25))
 :effect (and (not (at_y25)) (at_y24))
)

(:action move_23_25_23_26
 :parameters ()
 :precondition (and (at_x23)(at_y25))
 :poss-precondition (and (bridge_23_25_23_26))
 :effect (and (not (at_y25)) (at_y26))
)

(:action move_23_26_22_26
 :parameters ()
 :precondition (and (at_x23)(at_y26))
 :poss-precondition (and (bridge_22_26_23_26))
 :effect (and (not (at_x23)) (at_x22))
)

(:action move_23_26_24_26
 :parameters ()
 :precondition (and (at_x23)(at_y26))
 :poss-precondition (and (bridge_23_26_24_26))
 :effect (and (not (at_x23)) (at_x24))
)

(:action move_23_26_23_25
 :parameters ()
 :precondition (and (at_x23)(at_y26))
 :poss-precondition (and (bridge_23_25_23_26))
 :effect (and (not (at_y26)) (at_y25))
)

(:action move_23_26_23_27
 :parameters ()
 :precondition (and (at_x23)(at_y26))
 :poss-precondition (and (bridge_23_26_23_27))
 :effect (and (not (at_y26)) (at_y27))
)

(:action move_23_27_22_27
 :parameters ()
 :precondition (and (at_x23)(at_y27))
 :poss-precondition (and (bridge_22_27_23_27))
 :effect (and (not (at_x23)) (at_x22))
)

(:action move_23_27_24_27
 :parameters ()
 :precondition (and (at_x23)(at_y27))
 :poss-precondition (and (bridge_23_27_24_27))
 :effect (and (not (at_x23)) (at_x24))
)

(:action move_23_27_23_26
 :parameters ()
 :precondition (and (at_x23)(at_y27))
 :poss-precondition (and (bridge_23_26_23_27))
 :effect (and (not (at_y27)) (at_y26))
)

(:action move_23_27_23_28
 :parameters ()
 :precondition (and (at_x23)(at_y27))
 :poss-precondition (and (bridge_23_27_23_28))
 :effect (and (not (at_y27)) (at_y28))
)

(:action move_23_28_22_28
 :parameters ()
 :precondition (and (at_x23)(at_y28))
 :poss-precondition (and (bridge_22_28_23_28))
 :effect (and (not (at_x23)) (at_x22))
)

(:action move_23_28_24_28
 :parameters ()
 :precondition (and (at_x23)(at_y28))
 :poss-precondition (and (bridge_23_28_24_28))
 :effect (and (not (at_x23)) (at_x24))
)

(:action move_23_28_23_27
 :parameters ()
 :precondition (and (at_x23)(at_y28))
 :poss-precondition (and (bridge_23_27_23_28))
 :effect (and (not (at_y28)) (at_y27))
)

(:action move_23_28_23_29
 :parameters ()
 :precondition (and (at_x23)(at_y28))
 :poss-precondition (and (bridge_23_28_23_29))
 :effect (and (not (at_y28)) (at_y29))
)

(:action move_23_29_22_29
 :parameters ()
 :precondition (and (at_x23)(at_y29))
 :poss-precondition (and (bridge_22_29_23_29))
 :effect (and (not (at_x23)) (at_x22))
)

(:action move_23_29_24_29
 :parameters ()
 :precondition (and (at_x23)(at_y29))
 :poss-precondition (and (bridge_23_29_24_29))
 :effect (and (not (at_x23)) (at_x24))
)

(:action move_23_29_23_28
 :parameters ()
 :precondition (and (at_x23)(at_y29))
 :poss-precondition (and (bridge_23_28_23_29))
 :effect (and (not (at_y29)) (at_y28))
)

(:action move_23_29_23_30
 :parameters ()
 :precondition (and (at_x23)(at_y29))
 :poss-precondition (and (bridge_23_29_23_30))
 :effect (and (not (at_y29)) (at_y30))
)

(:action move_23_30_22_30
 :parameters ()
 :precondition (and (at_x23)(at_y30))
 :poss-precondition (and (bridge_22_30_23_30))
 :effect (and (not (at_x23)) (at_x22))
)

(:action move_23_30_24_30
 :parameters ()
 :precondition (and (at_x23)(at_y30))
 :poss-precondition (and (bridge_23_30_24_30))
 :effect (and (not (at_x23)) (at_x24))
)

(:action move_23_30_23_29
 :parameters ()
 :precondition (and (at_x23)(at_y30))
 :poss-precondition (and (bridge_23_29_23_30))
 :effect (and (not (at_y30)) (at_y29))
)

(:action move_23_30_23_31
 :parameters ()
 :precondition (and (at_x23)(at_y30))
 :poss-precondition (and (bridge_23_30_23_31))
 :effect (and (not (at_y30)) (at_y31))
)

(:action move_23_31_22_31
 :parameters ()
 :precondition (and (at_x23)(at_y31))
 :poss-precondition (and (bridge_22_31_23_31))
 :effect (and (not (at_x23)) (at_x22))
)

(:action move_23_31_24_31
 :parameters ()
 :precondition (and (at_x23)(at_y31))
 :poss-precondition (and (bridge_23_31_24_31))
 :effect (and (not (at_x23)) (at_x24))
)

(:action move_23_31_23_30
 :parameters ()
 :precondition (and (at_x23)(at_y31))
 :poss-precondition (and (bridge_23_30_23_31))
 :effect (and (not (at_y31)) (at_y30))
)

(:action move_24_0_23_0
 :parameters ()
 :precondition (and (at_x24)(at_y0))
 :poss-precondition (and (bridge_23_0_24_0))
 :effect (and (not (at_x24)) (at_x23))
)

(:action move_24_0_25_0
 :parameters ()
 :precondition (and (at_x24)(at_y0))
 :poss-precondition (and (bridge_24_0_25_0))
 :effect (and (not (at_x24)) (at_x25))
)

(:action move_24_0_24_1
 :parameters ()
 :precondition (and (at_x24)(at_y0))
 :poss-precondition (and (bridge_24_0_24_1))
 :effect (and (not (at_y0)) (at_y1))
)

(:action move_24_1_23_1
 :parameters ()
 :precondition (and (at_x24)(at_y1))
 :poss-precondition (and (bridge_23_1_24_1))
 :effect (and (not (at_x24)) (at_x23))
)

(:action move_24_1_25_1
 :parameters ()
 :precondition (and (at_x24)(at_y1))
 :poss-precondition (and (bridge_24_1_25_1))
 :effect (and (not (at_x24)) (at_x25))
)

(:action move_24_1_24_0
 :parameters ()
 :precondition (and (at_x24)(at_y1))
 :poss-precondition (and (bridge_24_0_24_1))
 :effect (and (not (at_y1)) (at_y0))
)

(:action move_24_1_24_2
 :parameters ()
 :precondition (and (at_x24)(at_y1))
 :poss-precondition (and (bridge_24_1_24_2))
 :effect (and (not (at_y1)) (at_y2))
)

(:action move_24_2_23_2
 :parameters ()
 :precondition (and (at_x24)(at_y2))
 :poss-precondition (and (bridge_23_2_24_2))
 :effect (and (not (at_x24)) (at_x23))
)

(:action move_24_2_25_2
 :parameters ()
 :precondition (and (at_x24)(at_y2))
 :poss-precondition (and (bridge_24_2_25_2))
 :effect (and (not (at_x24)) (at_x25))
)

(:action move_24_2_24_1
 :parameters ()
 :precondition (and (at_x24)(at_y2))
 :poss-precondition (and (bridge_24_1_24_2))
 :effect (and (not (at_y2)) (at_y1))
)

(:action move_24_2_24_3
 :parameters ()
 :precondition (and (at_x24)(at_y2))
 :poss-precondition (and (bridge_24_2_24_3))
 :effect (and (not (at_y2)) (at_y3))
)

(:action move_24_3_23_3
 :parameters ()
 :precondition (and (at_x24)(at_y3))
 :poss-precondition (and (bridge_23_3_24_3))
 :effect (and (not (at_x24)) (at_x23))
)

(:action move_24_3_25_3
 :parameters ()
 :precondition (and (at_x24)(at_y3))
 :poss-precondition (and (bridge_24_3_25_3))
 :effect (and (not (at_x24)) (at_x25))
)

(:action move_24_3_24_2
 :parameters ()
 :precondition (and (at_x24)(at_y3))
 :poss-precondition (and (bridge_24_2_24_3))
 :effect (and (not (at_y3)) (at_y2))
)

(:action move_24_3_24_4
 :parameters ()
 :precondition (and (at_x24)(at_y3))
 :poss-precondition (and (bridge_24_3_24_4))
 :effect (and (not (at_y3)) (at_y4))
)

(:action move_24_4_23_4
 :parameters ()
 :precondition (and (at_x24)(at_y4))
 :poss-precondition (and (bridge_23_4_24_4))
 :effect (and (not (at_x24)) (at_x23))
)

(:action move_24_4_25_4
 :parameters ()
 :precondition (and (at_x24)(at_y4))
 :poss-precondition (and (bridge_24_4_25_4))
 :effect (and (not (at_x24)) (at_x25))
)

(:action move_24_4_24_3
 :parameters ()
 :precondition (and (at_x24)(at_y4))
 :poss-precondition (and (bridge_24_3_24_4))
 :effect (and (not (at_y4)) (at_y3))
)

(:action move_24_4_24_5
 :parameters ()
 :precondition (and (at_x24)(at_y4))
 :poss-precondition (and (bridge_24_4_24_5))
 :effect (and (not (at_y4)) (at_y5))
)

(:action move_24_5_23_5
 :parameters ()
 :precondition (and (at_x24)(at_y5))
 :poss-precondition (and (bridge_23_5_24_5))
 :effect (and (not (at_x24)) (at_x23))
)

(:action move_24_5_25_5
 :parameters ()
 :precondition (and (at_x24)(at_y5))
 :poss-precondition (and (bridge_24_5_25_5))
 :effect (and (not (at_x24)) (at_x25))
)

(:action move_24_5_24_4
 :parameters ()
 :precondition (and (at_x24)(at_y5))
 :poss-precondition (and (bridge_24_4_24_5))
 :effect (and (not (at_y5)) (at_y4))
)

(:action move_24_5_24_6
 :parameters ()
 :precondition (and (at_x24)(at_y5))
 :poss-precondition (and (bridge_24_5_24_6))
 :effect (and (not (at_y5)) (at_y6))
)

(:action move_24_6_23_6
 :parameters ()
 :precondition (and (at_x24)(at_y6))
 :poss-precondition (and (bridge_23_6_24_6))
 :effect (and (not (at_x24)) (at_x23))
)

(:action move_24_6_25_6
 :parameters ()
 :precondition (and (at_x24)(at_y6))
 :poss-precondition (and (bridge_24_6_25_6))
 :effect (and (not (at_x24)) (at_x25))
)

(:action move_24_6_24_5
 :parameters ()
 :precondition (and (at_x24)(at_y6))
 :poss-precondition (and (bridge_24_5_24_6))
 :effect (and (not (at_y6)) (at_y5))
)

(:action move_24_6_24_7
 :parameters ()
 :precondition (and (at_x24)(at_y6))
 :poss-precondition (and (bridge_24_6_24_7))
 :effect (and (not (at_y6)) (at_y7))
)

(:action move_24_7_23_7
 :parameters ()
 :precondition (and (at_x24)(at_y7))
 :poss-precondition (and (bridge_23_7_24_7))
 :effect (and (not (at_x24)) (at_x23))
)

(:action move_24_7_25_7
 :parameters ()
 :precondition (and (at_x24)(at_y7))
 :poss-precondition (and (bridge_24_7_25_7))
 :effect (and (not (at_x24)) (at_x25))
)

(:action move_24_7_24_6
 :parameters ()
 :precondition (and (at_x24)(at_y7))
 :poss-precondition (and (bridge_24_6_24_7))
 :effect (and (not (at_y7)) (at_y6))
)

(:action move_24_7_24_8
 :parameters ()
 :precondition (and (at_x24)(at_y7))
 :poss-precondition (and (bridge_24_7_24_8))
 :effect (and (not (at_y7)) (at_y8))
)

(:action move_24_8_23_8
 :parameters ()
 :precondition (and (at_x24)(at_y8))
 :poss-precondition (and (bridge_23_8_24_8))
 :effect (and (not (at_x24)) (at_x23))
)

(:action move_24_8_25_8
 :parameters ()
 :precondition (and (at_x24)(at_y8))
 :poss-precondition (and (bridge_24_8_25_8))
 :effect (and (not (at_x24)) (at_x25))
)

(:action move_24_8_24_7
 :parameters ()
 :precondition (and (at_x24)(at_y8))
 :poss-precondition (and (bridge_24_7_24_8))
 :effect (and (not (at_y8)) (at_y7))
)

(:action move_24_8_24_9
 :parameters ()
 :precondition (and (at_x24)(at_y8))
 :poss-precondition (and (bridge_24_8_24_9))
 :effect (and (not (at_y8)) (at_y9))
)

(:action move_24_9_23_9
 :parameters ()
 :precondition (and (at_x24)(at_y9))
 :poss-precondition (and (bridge_23_9_24_9))
 :effect (and (not (at_x24)) (at_x23))
)

(:action move_24_9_25_9
 :parameters ()
 :precondition (and (at_x24)(at_y9))
 :poss-precondition (and (bridge_24_9_25_9))
 :effect (and (not (at_x24)) (at_x25))
)

(:action move_24_9_24_8
 :parameters ()
 :precondition (and (at_x24)(at_y9))
 :poss-precondition (and (bridge_24_8_24_9))
 :effect (and (not (at_y9)) (at_y8))
)

(:action move_24_9_24_10
 :parameters ()
 :precondition (and (at_x24)(at_y9))
 :poss-precondition (and (bridge_24_9_24_10))
 :effect (and (not (at_y9)) (at_y10))
)

(:action move_24_10_23_10
 :parameters ()
 :precondition (and (at_x24)(at_y10))
 :poss-precondition (and (bridge_23_10_24_10))
 :effect (and (not (at_x24)) (at_x23))
)

(:action move_24_10_25_10
 :parameters ()
 :precondition (and (at_x24)(at_y10))
 :poss-precondition (and (bridge_24_10_25_10))
 :effect (and (not (at_x24)) (at_x25))
)

(:action move_24_10_24_9
 :parameters ()
 :precondition (and (at_x24)(at_y10))
 :poss-precondition (and (bridge_24_9_24_10))
 :effect (and (not (at_y10)) (at_y9))
)

(:action move_24_10_24_11
 :parameters ()
 :precondition (and (at_x24)(at_y10))
 :poss-precondition (and (bridge_24_10_24_11))
 :effect (and (not (at_y10)) (at_y11))
)

(:action move_24_11_23_11
 :parameters ()
 :precondition (and (at_x24)(at_y11))
 :poss-precondition (and (bridge_23_11_24_11))
 :effect (and (not (at_x24)) (at_x23))
)

(:action move_24_11_25_11
 :parameters ()
 :precondition (and (at_x24)(at_y11))
 :poss-precondition (and (bridge_24_11_25_11))
 :effect (and (not (at_x24)) (at_x25))
)

(:action move_24_11_24_10
 :parameters ()
 :precondition (and (at_x24)(at_y11))
 :poss-precondition (and (bridge_24_10_24_11))
 :effect (and (not (at_y11)) (at_y10))
)

(:action move_24_11_24_12
 :parameters ()
 :precondition (and (at_x24)(at_y11))
 :poss-precondition (and (bridge_24_11_24_12))
 :effect (and (not (at_y11)) (at_y12))
)

(:action move_24_12_23_12
 :parameters ()
 :precondition (and (at_x24)(at_y12))
 :poss-precondition (and (bridge_23_12_24_12))
 :effect (and (not (at_x24)) (at_x23))
)

(:action move_24_12_25_12
 :parameters ()
 :precondition (and (at_x24)(at_y12))
 :poss-precondition (and (bridge_24_12_25_12))
 :effect (and (not (at_x24)) (at_x25))
)

(:action move_24_12_24_11
 :parameters ()
 :precondition (and (at_x24)(at_y12))
 :poss-precondition (and (bridge_24_11_24_12))
 :effect (and (not (at_y12)) (at_y11))
)

(:action move_24_12_24_13
 :parameters ()
 :precondition (and (at_x24)(at_y12))
 :poss-precondition (and (bridge_24_12_24_13))
 :effect (and (not (at_y12)) (at_y13))
)

(:action move_24_13_23_13
 :parameters ()
 :precondition (and (at_x24)(at_y13))
 :poss-precondition (and (bridge_23_13_24_13))
 :effect (and (not (at_x24)) (at_x23))
)

(:action move_24_13_25_13
 :parameters ()
 :precondition (and (at_x24)(at_y13))
 :poss-precondition (and (bridge_24_13_25_13))
 :effect (and (not (at_x24)) (at_x25))
)

(:action move_24_13_24_12
 :parameters ()
 :precondition (and (at_x24)(at_y13))
 :poss-precondition (and (bridge_24_12_24_13))
 :effect (and (not (at_y13)) (at_y12))
)

(:action move_24_13_24_14
 :parameters ()
 :precondition (and (at_x24)(at_y13))
 :poss-precondition (and (bridge_24_13_24_14))
 :effect (and (not (at_y13)) (at_y14))
)

(:action move_24_14_23_14
 :parameters ()
 :precondition (and (at_x24)(at_y14))
 :poss-precondition (and (bridge_23_14_24_14))
 :effect (and (not (at_x24)) (at_x23))
)

(:action move_24_14_25_14
 :parameters ()
 :precondition (and (at_x24)(at_y14))
 :poss-precondition (and (bridge_24_14_25_14))
 :effect (and (not (at_x24)) (at_x25))
)

(:action move_24_14_24_13
 :parameters ()
 :precondition (and (at_x24)(at_y14))
 :poss-precondition (and (bridge_24_13_24_14))
 :effect (and (not (at_y14)) (at_y13))
)

(:action move_24_14_24_15
 :parameters ()
 :precondition (and (at_x24)(at_y14))
 :poss-precondition (and (bridge_24_14_24_15))
 :effect (and (not (at_y14)) (at_y15))
)

(:action move_24_15_23_15
 :parameters ()
 :precondition (and (at_x24)(at_y15))
 :poss-precondition (and (bridge_23_15_24_15))
 :effect (and (not (at_x24)) (at_x23))
)

(:action move_24_15_25_15
 :parameters ()
 :precondition (and (at_x24)(at_y15))
 :poss-precondition (and (bridge_24_15_25_15))
 :effect (and (not (at_x24)) (at_x25))
)

(:action move_24_15_24_14
 :parameters ()
 :precondition (and (at_x24)(at_y15))
 :poss-precondition (and (bridge_24_14_24_15))
 :effect (and (not (at_y15)) (at_y14))
)

(:action move_24_15_24_16
 :parameters ()
 :precondition (and (at_x24)(at_y15))
 :poss-precondition (and (bridge_24_15_24_16))
 :effect (and (not (at_y15)) (at_y16))
)

(:action move_24_16_23_16
 :parameters ()
 :precondition (and (at_x24)(at_y16))
 :poss-precondition (and (bridge_23_16_24_16))
 :effect (and (not (at_x24)) (at_x23))
)

(:action move_24_16_25_16
 :parameters ()
 :precondition (and (at_x24)(at_y16))
 :poss-precondition (and (bridge_24_16_25_16))
 :effect (and (not (at_x24)) (at_x25))
)

(:action move_24_16_24_15
 :parameters ()
 :precondition (and (at_x24)(at_y16))
 :poss-precondition (and (bridge_24_15_24_16))
 :effect (and (not (at_y16)) (at_y15))
)

(:action move_24_16_24_17
 :parameters ()
 :precondition (and (at_x24)(at_y16))
 :poss-precondition (and (bridge_24_16_24_17))
 :effect (and (not (at_y16)) (at_y17))
)

(:action move_24_17_23_17
 :parameters ()
 :precondition (and (at_x24)(at_y17))
 :poss-precondition (and (bridge_23_17_24_17))
 :effect (and (not (at_x24)) (at_x23))
)

(:action move_24_17_25_17
 :parameters ()
 :precondition (and (at_x24)(at_y17))
 :poss-precondition (and (bridge_24_17_25_17))
 :effect (and (not (at_x24)) (at_x25))
)

(:action move_24_17_24_16
 :parameters ()
 :precondition (and (at_x24)(at_y17))
 :poss-precondition (and (bridge_24_16_24_17))
 :effect (and (not (at_y17)) (at_y16))
)

(:action move_24_17_24_18
 :parameters ()
 :precondition (and (at_x24)(at_y17))
 :poss-precondition (and (bridge_24_17_24_18))
 :effect (and (not (at_y17)) (at_y18))
)

(:action move_24_18_23_18
 :parameters ()
 :precondition (and (at_x24)(at_y18))
 :poss-precondition (and (bridge_23_18_24_18))
 :effect (and (not (at_x24)) (at_x23))
)

(:action move_24_18_25_18
 :parameters ()
 :precondition (and (at_x24)(at_y18))
 :poss-precondition (and (bridge_24_18_25_18))
 :effect (and (not (at_x24)) (at_x25))
)

(:action move_24_18_24_17
 :parameters ()
 :precondition (and (at_x24)(at_y18))
 :poss-precondition (and (bridge_24_17_24_18))
 :effect (and (not (at_y18)) (at_y17))
)

(:action move_24_18_24_19
 :parameters ()
 :precondition (and (at_x24)(at_y18))
 :poss-precondition (and (bridge_24_18_24_19))
 :effect (and (not (at_y18)) (at_y19))
)

(:action move_24_19_23_19
 :parameters ()
 :precondition (and (at_x24)(at_y19))
 :poss-precondition (and (bridge_23_19_24_19))
 :effect (and (not (at_x24)) (at_x23))
)

(:action move_24_19_25_19
 :parameters ()
 :precondition (and (at_x24)(at_y19))
 :poss-precondition (and (bridge_24_19_25_19))
 :effect (and (not (at_x24)) (at_x25))
)

(:action move_24_19_24_18
 :parameters ()
 :precondition (and (at_x24)(at_y19))
 :poss-precondition (and (bridge_24_18_24_19))
 :effect (and (not (at_y19)) (at_y18))
)

(:action move_24_19_24_20
 :parameters ()
 :precondition (and (at_x24)(at_y19))
 :poss-precondition (and (bridge_24_19_24_20))
 :effect (and (not (at_y19)) (at_y20))
)

(:action move_24_20_23_20
 :parameters ()
 :precondition (and (at_x24)(at_y20))
 :poss-precondition (and (bridge_23_20_24_20))
 :effect (and (not (at_x24)) (at_x23))
)

(:action move_24_20_25_20
 :parameters ()
 :precondition (and (at_x24)(at_y20))
 :poss-precondition (and (bridge_24_20_25_20))
 :effect (and (not (at_x24)) (at_x25))
)

(:action move_24_20_24_19
 :parameters ()
 :precondition (and (at_x24)(at_y20))
 :poss-precondition (and (bridge_24_19_24_20))
 :effect (and (not (at_y20)) (at_y19))
)

(:action move_24_20_24_21
 :parameters ()
 :precondition (and (at_x24)(at_y20))
 :poss-precondition (and (bridge_24_20_24_21))
 :effect (and (not (at_y20)) (at_y21))
)

(:action move_24_21_23_21
 :parameters ()
 :precondition (and (at_x24)(at_y21))
 :poss-precondition (and (bridge_23_21_24_21))
 :effect (and (not (at_x24)) (at_x23))
)

(:action move_24_21_25_21
 :parameters ()
 :precondition (and (at_x24)(at_y21))
 :poss-precondition (and (bridge_24_21_25_21))
 :effect (and (not (at_x24)) (at_x25))
)

(:action move_24_21_24_20
 :parameters ()
 :precondition (and (at_x24)(at_y21))
 :poss-precondition (and (bridge_24_20_24_21))
 :effect (and (not (at_y21)) (at_y20))
)

(:action move_24_21_24_22
 :parameters ()
 :precondition (and (at_x24)(at_y21))
 :poss-precondition (and (bridge_24_21_24_22))
 :effect (and (not (at_y21)) (at_y22))
)

(:action move_24_22_23_22
 :parameters ()
 :precondition (and (at_x24)(at_y22))
 :poss-precondition (and (bridge_23_22_24_22))
 :effect (and (not (at_x24)) (at_x23))
)

(:action move_24_22_25_22
 :parameters ()
 :precondition (and (at_x24)(at_y22))
 :poss-precondition (and (bridge_24_22_25_22))
 :effect (and (not (at_x24)) (at_x25))
)

(:action move_24_22_24_21
 :parameters ()
 :precondition (and (at_x24)(at_y22))
 :poss-precondition (and (bridge_24_21_24_22))
 :effect (and (not (at_y22)) (at_y21))
)

(:action move_24_22_24_23
 :parameters ()
 :precondition (and (at_x24)(at_y22))
 :poss-precondition (and (bridge_24_22_24_23))
 :effect (and (not (at_y22)) (at_y23))
)

(:action move_24_23_23_23
 :parameters ()
 :precondition (and (at_x24)(at_y23))
 :poss-precondition (and (bridge_23_23_24_23))
 :effect (and (not (at_x24)) (at_x23))
)

(:action move_24_23_25_23
 :parameters ()
 :precondition (and (at_x24)(at_y23))
 :poss-precondition (and (bridge_24_23_25_23))
 :effect (and (not (at_x24)) (at_x25))
)

(:action move_24_23_24_22
 :parameters ()
 :precondition (and (at_x24)(at_y23))
 :poss-precondition (and (bridge_24_22_24_23))
 :effect (and (not (at_y23)) (at_y22))
)

(:action move_24_23_24_24
 :parameters ()
 :precondition (and (at_x24)(at_y23))
 :poss-precondition (and (bridge_24_23_24_24))
 :effect (and (not (at_y23)) (at_y24))
)

(:action move_24_24_23_24
 :parameters ()
 :precondition (and (at_x24)(at_y24))
 :poss-precondition (and (bridge_23_24_24_24))
 :effect (and (not (at_x24)) (at_x23))
)

(:action move_24_24_25_24
 :parameters ()
 :precondition (and (at_x24)(at_y24))
 :poss-precondition (and (bridge_24_24_25_24))
 :effect (and (not (at_x24)) (at_x25))
)

(:action move_24_24_24_23
 :parameters ()
 :precondition (and (at_x24)(at_y24))
 :poss-precondition (and (bridge_24_23_24_24))
 :effect (and (not (at_y24)) (at_y23))
)

(:action move_24_24_24_25
 :parameters ()
 :precondition (and (at_x24)(at_y24))
 :poss-precondition (and (bridge_24_24_24_25))
 :effect (and (not (at_y24)) (at_y25))
)

(:action move_24_25_23_25
 :parameters ()
 :precondition (and (at_x24)(at_y25))
 :poss-precondition (and (bridge_23_25_24_25))
 :effect (and (not (at_x24)) (at_x23))
)

(:action move_24_25_25_25
 :parameters ()
 :precondition (and (at_x24)(at_y25))
 :poss-precondition (and (bridge_24_25_25_25))
 :effect (and (not (at_x24)) (at_x25))
)

(:action move_24_25_24_24
 :parameters ()
 :precondition (and (at_x24)(at_y25))
 :poss-precondition (and (bridge_24_24_24_25))
 :effect (and (not (at_y25)) (at_y24))
)

(:action move_24_25_24_26
 :parameters ()
 :precondition (and (at_x24)(at_y25))
 :poss-precondition (and (bridge_24_25_24_26))
 :effect (and (not (at_y25)) (at_y26))
)

(:action move_24_26_23_26
 :parameters ()
 :precondition (and (at_x24)(at_y26))
 :poss-precondition (and (bridge_23_26_24_26))
 :effect (and (not (at_x24)) (at_x23))
)

(:action move_24_26_25_26
 :parameters ()
 :precondition (and (at_x24)(at_y26))
 :poss-precondition (and (bridge_24_26_25_26))
 :effect (and (not (at_x24)) (at_x25))
)

(:action move_24_26_24_25
 :parameters ()
 :precondition (and (at_x24)(at_y26))
 :poss-precondition (and (bridge_24_25_24_26))
 :effect (and (not (at_y26)) (at_y25))
)

(:action move_24_26_24_27
 :parameters ()
 :precondition (and (at_x24)(at_y26))
 :poss-precondition (and (bridge_24_26_24_27))
 :effect (and (not (at_y26)) (at_y27))
)

(:action move_24_27_23_27
 :parameters ()
 :precondition (and (at_x24)(at_y27))
 :poss-precondition (and (bridge_23_27_24_27))
 :effect (and (not (at_x24)) (at_x23))
)

(:action move_24_27_25_27
 :parameters ()
 :precondition (and (at_x24)(at_y27))
 :poss-precondition (and (bridge_24_27_25_27))
 :effect (and (not (at_x24)) (at_x25))
)

(:action move_24_27_24_26
 :parameters ()
 :precondition (and (at_x24)(at_y27))
 :poss-precondition (and (bridge_24_26_24_27))
 :effect (and (not (at_y27)) (at_y26))
)

(:action move_24_27_24_28
 :parameters ()
 :precondition (and (at_x24)(at_y27))
 :poss-precondition (and (bridge_24_27_24_28))
 :effect (and (not (at_y27)) (at_y28))
)

(:action move_24_28_23_28
 :parameters ()
 :precondition (and (at_x24)(at_y28))
 :poss-precondition (and (bridge_23_28_24_28))
 :effect (and (not (at_x24)) (at_x23))
)

(:action move_24_28_25_28
 :parameters ()
 :precondition (and (at_x24)(at_y28))
 :poss-precondition (and (bridge_24_28_25_28))
 :effect (and (not (at_x24)) (at_x25))
)

(:action move_24_28_24_27
 :parameters ()
 :precondition (and (at_x24)(at_y28))
 :poss-precondition (and (bridge_24_27_24_28))
 :effect (and (not (at_y28)) (at_y27))
)

(:action move_24_28_24_29
 :parameters ()
 :precondition (and (at_x24)(at_y28))
 :poss-precondition (and (bridge_24_28_24_29))
 :effect (and (not (at_y28)) (at_y29))
)

(:action move_24_29_23_29
 :parameters ()
 :precondition (and (at_x24)(at_y29))
 :poss-precondition (and (bridge_23_29_24_29))
 :effect (and (not (at_x24)) (at_x23))
)

(:action move_24_29_25_29
 :parameters ()
 :precondition (and (at_x24)(at_y29))
 :poss-precondition (and (bridge_24_29_25_29))
 :effect (and (not (at_x24)) (at_x25))
)

(:action move_24_29_24_28
 :parameters ()
 :precondition (and (at_x24)(at_y29))
 :poss-precondition (and (bridge_24_28_24_29))
 :effect (and (not (at_y29)) (at_y28))
)

(:action move_24_29_24_30
 :parameters ()
 :precondition (and (at_x24)(at_y29))
 :poss-precondition (and (bridge_24_29_24_30))
 :effect (and (not (at_y29)) (at_y30))
)

(:action move_24_30_23_30
 :parameters ()
 :precondition (and (at_x24)(at_y30))
 :poss-precondition (and (bridge_23_30_24_30))
 :effect (and (not (at_x24)) (at_x23))
)

(:action move_24_30_25_30
 :parameters ()
 :precondition (and (at_x24)(at_y30))
 :poss-precondition (and (bridge_24_30_25_30))
 :effect (and (not (at_x24)) (at_x25))
)

(:action move_24_30_24_29
 :parameters ()
 :precondition (and (at_x24)(at_y30))
 :poss-precondition (and (bridge_24_29_24_30))
 :effect (and (not (at_y30)) (at_y29))
)

(:action move_24_30_24_31
 :parameters ()
 :precondition (and (at_x24)(at_y30))
 :poss-precondition (and (bridge_24_30_24_31))
 :effect (and (not (at_y30)) (at_y31))
)

(:action move_24_31_23_31
 :parameters ()
 :precondition (and (at_x24)(at_y31))
 :poss-precondition (and (bridge_23_31_24_31))
 :effect (and (not (at_x24)) (at_x23))
)

(:action move_24_31_25_31
 :parameters ()
 :precondition (and (at_x24)(at_y31))
 :poss-precondition (and (bridge_24_31_25_31))
 :effect (and (not (at_x24)) (at_x25))
)

(:action move_24_31_24_30
 :parameters ()
 :precondition (and (at_x24)(at_y31))
 :poss-precondition (and (bridge_24_30_24_31))
 :effect (and (not (at_y31)) (at_y30))
)

(:action move_25_0_24_0
 :parameters ()
 :precondition (and (at_x25)(at_y0))
 :poss-precondition (and (bridge_24_0_25_0))
 :effect (and (not (at_x25)) (at_x24))
)

(:action move_25_0_26_0
 :parameters ()
 :precondition (and (at_x25)(at_y0))
 :poss-precondition (and (bridge_25_0_26_0))
 :effect (and (not (at_x25)) (at_x26))
)

(:action move_25_0_25_1
 :parameters ()
 :precondition (and (at_x25)(at_y0))
 :poss-precondition (and (bridge_25_0_25_1))
 :effect (and (not (at_y0)) (at_y1))
)

(:action move_25_1_24_1
 :parameters ()
 :precondition (and (at_x25)(at_y1))
 :poss-precondition (and (bridge_24_1_25_1))
 :effect (and (not (at_x25)) (at_x24))
)

(:action move_25_1_26_1
 :parameters ()
 :precondition (and (at_x25)(at_y1))
 :poss-precondition (and (bridge_25_1_26_1))
 :effect (and (not (at_x25)) (at_x26))
)

(:action move_25_1_25_0
 :parameters ()
 :precondition (and (at_x25)(at_y1))
 :poss-precondition (and (bridge_25_0_25_1))
 :effect (and (not (at_y1)) (at_y0))
)

(:action move_25_1_25_2
 :parameters ()
 :precondition (and (at_x25)(at_y1))
 :poss-precondition (and (bridge_25_1_25_2))
 :effect (and (not (at_y1)) (at_y2))
)

(:action move_25_2_24_2
 :parameters ()
 :precondition (and (at_x25)(at_y2))
 :poss-precondition (and (bridge_24_2_25_2))
 :effect (and (not (at_x25)) (at_x24))
)

(:action move_25_2_26_2
 :parameters ()
 :precondition (and (at_x25)(at_y2))
 :poss-precondition (and (bridge_25_2_26_2))
 :effect (and (not (at_x25)) (at_x26))
)

(:action move_25_2_25_1
 :parameters ()
 :precondition (and (at_x25)(at_y2))
 :poss-precondition (and (bridge_25_1_25_2))
 :effect (and (not (at_y2)) (at_y1))
)

(:action move_25_2_25_3
 :parameters ()
 :precondition (and (at_x25)(at_y2))
 :poss-precondition (and (bridge_25_2_25_3))
 :effect (and (not (at_y2)) (at_y3))
)

(:action move_25_3_24_3
 :parameters ()
 :precondition (and (at_x25)(at_y3))
 :poss-precondition (and (bridge_24_3_25_3))
 :effect (and (not (at_x25)) (at_x24))
)

(:action move_25_3_26_3
 :parameters ()
 :precondition (and (at_x25)(at_y3))
 :poss-precondition (and (bridge_25_3_26_3))
 :effect (and (not (at_x25)) (at_x26))
)

(:action move_25_3_25_2
 :parameters ()
 :precondition (and (at_x25)(at_y3))
 :poss-precondition (and (bridge_25_2_25_3))
 :effect (and (not (at_y3)) (at_y2))
)

(:action move_25_3_25_4
 :parameters ()
 :precondition (and (at_x25)(at_y3))
 :poss-precondition (and (bridge_25_3_25_4))
 :effect (and (not (at_y3)) (at_y4))
)

(:action move_25_4_24_4
 :parameters ()
 :precondition (and (at_x25)(at_y4))
 :poss-precondition (and (bridge_24_4_25_4))
 :effect (and (not (at_x25)) (at_x24))
)

(:action move_25_4_26_4
 :parameters ()
 :precondition (and (at_x25)(at_y4))
 :poss-precondition (and (bridge_25_4_26_4))
 :effect (and (not (at_x25)) (at_x26))
)

(:action move_25_4_25_3
 :parameters ()
 :precondition (and (at_x25)(at_y4))
 :poss-precondition (and (bridge_25_3_25_4))
 :effect (and (not (at_y4)) (at_y3))
)

(:action move_25_4_25_5
 :parameters ()
 :precondition (and (at_x25)(at_y4))
 :poss-precondition (and (bridge_25_4_25_5))
 :effect (and (not (at_y4)) (at_y5))
)

(:action move_25_5_24_5
 :parameters ()
 :precondition (and (at_x25)(at_y5))
 :poss-precondition (and (bridge_24_5_25_5))
 :effect (and (not (at_x25)) (at_x24))
)

(:action move_25_5_26_5
 :parameters ()
 :precondition (and (at_x25)(at_y5))
 :poss-precondition (and (bridge_25_5_26_5))
 :effect (and (not (at_x25)) (at_x26))
)

(:action move_25_5_25_4
 :parameters ()
 :precondition (and (at_x25)(at_y5))
 :poss-precondition (and (bridge_25_4_25_5))
 :effect (and (not (at_y5)) (at_y4))
)

(:action move_25_5_25_6
 :parameters ()
 :precondition (and (at_x25)(at_y5))
 :poss-precondition (and (bridge_25_5_25_6))
 :effect (and (not (at_y5)) (at_y6))
)

(:action move_25_6_24_6
 :parameters ()
 :precondition (and (at_x25)(at_y6))
 :poss-precondition (and (bridge_24_6_25_6))
 :effect (and (not (at_x25)) (at_x24))
)

(:action move_25_6_26_6
 :parameters ()
 :precondition (and (at_x25)(at_y6))
 :poss-precondition (and (bridge_25_6_26_6))
 :effect (and (not (at_x25)) (at_x26))
)

(:action move_25_6_25_5
 :parameters ()
 :precondition (and (at_x25)(at_y6))
 :poss-precondition (and (bridge_25_5_25_6))
 :effect (and (not (at_y6)) (at_y5))
)

(:action move_25_6_25_7
 :parameters ()
 :precondition (and (at_x25)(at_y6))
 :poss-precondition (and (bridge_25_6_25_7))
 :effect (and (not (at_y6)) (at_y7))
)

(:action move_25_7_24_7
 :parameters ()
 :precondition (and (at_x25)(at_y7))
 :poss-precondition (and (bridge_24_7_25_7))
 :effect (and (not (at_x25)) (at_x24))
)

(:action move_25_7_26_7
 :parameters ()
 :precondition (and (at_x25)(at_y7))
 :poss-precondition (and (bridge_25_7_26_7))
 :effect (and (not (at_x25)) (at_x26))
)

(:action move_25_7_25_6
 :parameters ()
 :precondition (and (at_x25)(at_y7))
 :poss-precondition (and (bridge_25_6_25_7))
 :effect (and (not (at_y7)) (at_y6))
)

(:action move_25_7_25_8
 :parameters ()
 :precondition (and (at_x25)(at_y7))
 :poss-precondition (and (bridge_25_7_25_8))
 :effect (and (not (at_y7)) (at_y8))
)

(:action move_25_8_24_8
 :parameters ()
 :precondition (and (at_x25)(at_y8))
 :poss-precondition (and (bridge_24_8_25_8))
 :effect (and (not (at_x25)) (at_x24))
)

(:action move_25_8_26_8
 :parameters ()
 :precondition (and (at_x25)(at_y8))
 :poss-precondition (and (bridge_25_8_26_8))
 :effect (and (not (at_x25)) (at_x26))
)

(:action move_25_8_25_7
 :parameters ()
 :precondition (and (at_x25)(at_y8))
 :poss-precondition (and (bridge_25_7_25_8))
 :effect (and (not (at_y8)) (at_y7))
)

(:action move_25_8_25_9
 :parameters ()
 :precondition (and (at_x25)(at_y8))
 :poss-precondition (and (bridge_25_8_25_9))
 :effect (and (not (at_y8)) (at_y9))
)

(:action move_25_9_24_9
 :parameters ()
 :precondition (and (at_x25)(at_y9))
 :poss-precondition (and (bridge_24_9_25_9))
 :effect (and (not (at_x25)) (at_x24))
)

(:action move_25_9_26_9
 :parameters ()
 :precondition (and (at_x25)(at_y9))
 :poss-precondition (and (bridge_25_9_26_9))
 :effect (and (not (at_x25)) (at_x26))
)

(:action move_25_9_25_8
 :parameters ()
 :precondition (and (at_x25)(at_y9))
 :poss-precondition (and (bridge_25_8_25_9))
 :effect (and (not (at_y9)) (at_y8))
)

(:action move_25_9_25_10
 :parameters ()
 :precondition (and (at_x25)(at_y9))
 :poss-precondition (and (bridge_25_9_25_10))
 :effect (and (not (at_y9)) (at_y10))
)

(:action move_25_10_24_10
 :parameters ()
 :precondition (and (at_x25)(at_y10))
 :poss-precondition (and (bridge_24_10_25_10))
 :effect (and (not (at_x25)) (at_x24))
)

(:action move_25_10_26_10
 :parameters ()
 :precondition (and (at_x25)(at_y10))
 :poss-precondition (and (bridge_25_10_26_10))
 :effect (and (not (at_x25)) (at_x26))
)

(:action move_25_10_25_9
 :parameters ()
 :precondition (and (at_x25)(at_y10))
 :poss-precondition (and (bridge_25_9_25_10))
 :effect (and (not (at_y10)) (at_y9))
)

(:action move_25_10_25_11
 :parameters ()
 :precondition (and (at_x25)(at_y10))
 :poss-precondition (and (bridge_25_10_25_11))
 :effect (and (not (at_y10)) (at_y11))
)

(:action move_25_11_24_11
 :parameters ()
 :precondition (and (at_x25)(at_y11))
 :poss-precondition (and (bridge_24_11_25_11))
 :effect (and (not (at_x25)) (at_x24))
)

(:action move_25_11_26_11
 :parameters ()
 :precondition (and (at_x25)(at_y11))
 :poss-precondition (and (bridge_25_11_26_11))
 :effect (and (not (at_x25)) (at_x26))
)

(:action move_25_11_25_10
 :parameters ()
 :precondition (and (at_x25)(at_y11))
 :poss-precondition (and (bridge_25_10_25_11))
 :effect (and (not (at_y11)) (at_y10))
)

(:action move_25_11_25_12
 :parameters ()
 :precondition (and (at_x25)(at_y11))
 :poss-precondition (and (bridge_25_11_25_12))
 :effect (and (not (at_y11)) (at_y12))
)

(:action move_25_12_24_12
 :parameters ()
 :precondition (and (at_x25)(at_y12))
 :poss-precondition (and (bridge_24_12_25_12))
 :effect (and (not (at_x25)) (at_x24))
)

(:action move_25_12_26_12
 :parameters ()
 :precondition (and (at_x25)(at_y12))
 :poss-precondition (and (bridge_25_12_26_12))
 :effect (and (not (at_x25)) (at_x26))
)

(:action move_25_12_25_11
 :parameters ()
 :precondition (and (at_x25)(at_y12))
 :poss-precondition (and (bridge_25_11_25_12))
 :effect (and (not (at_y12)) (at_y11))
)

(:action move_25_12_25_13
 :parameters ()
 :precondition (and (at_x25)(at_y12))
 :poss-precondition (and (bridge_25_12_25_13))
 :effect (and (not (at_y12)) (at_y13))
)

(:action move_25_13_24_13
 :parameters ()
 :precondition (and (at_x25)(at_y13))
 :poss-precondition (and (bridge_24_13_25_13))
 :effect (and (not (at_x25)) (at_x24))
)

(:action move_25_13_26_13
 :parameters ()
 :precondition (and (at_x25)(at_y13))
 :poss-precondition (and (bridge_25_13_26_13))
 :effect (and (not (at_x25)) (at_x26))
)

(:action move_25_13_25_12
 :parameters ()
 :precondition (and (at_x25)(at_y13))
 :poss-precondition (and (bridge_25_12_25_13))
 :effect (and (not (at_y13)) (at_y12))
)

(:action move_25_13_25_14
 :parameters ()
 :precondition (and (at_x25)(at_y13))
 :poss-precondition (and (bridge_25_13_25_14))
 :effect (and (not (at_y13)) (at_y14))
)

(:action move_25_14_24_14
 :parameters ()
 :precondition (and (at_x25)(at_y14))
 :poss-precondition (and (bridge_24_14_25_14))
 :effect (and (not (at_x25)) (at_x24))
)

(:action move_25_14_26_14
 :parameters ()
 :precondition (and (at_x25)(at_y14))
 :poss-precondition (and (bridge_25_14_26_14))
 :effect (and (not (at_x25)) (at_x26))
)

(:action move_25_14_25_13
 :parameters ()
 :precondition (and (at_x25)(at_y14))
 :poss-precondition (and (bridge_25_13_25_14))
 :effect (and (not (at_y14)) (at_y13))
)

(:action move_25_14_25_15
 :parameters ()
 :precondition (and (at_x25)(at_y14))
 :poss-precondition (and (bridge_25_14_25_15))
 :effect (and (not (at_y14)) (at_y15))
)

(:action move_25_15_24_15
 :parameters ()
 :precondition (and (at_x25)(at_y15))
 :poss-precondition (and (bridge_24_15_25_15))
 :effect (and (not (at_x25)) (at_x24))
)

(:action move_25_15_26_15
 :parameters ()
 :precondition (and (at_x25)(at_y15))
 :poss-precondition (and (bridge_25_15_26_15))
 :effect (and (not (at_x25)) (at_x26))
)

(:action move_25_15_25_14
 :parameters ()
 :precondition (and (at_x25)(at_y15))
 :poss-precondition (and (bridge_25_14_25_15))
 :effect (and (not (at_y15)) (at_y14))
)

(:action move_25_15_25_16
 :parameters ()
 :precondition (and (at_x25)(at_y15))
 :poss-precondition (and (bridge_25_15_25_16))
 :effect (and (not (at_y15)) (at_y16))
)

(:action move_25_16_24_16
 :parameters ()
 :precondition (and (at_x25)(at_y16))
 :poss-precondition (and (bridge_24_16_25_16))
 :effect (and (not (at_x25)) (at_x24))
)

(:action move_25_16_26_16
 :parameters ()
 :precondition (and (at_x25)(at_y16))
 :poss-precondition (and (bridge_25_16_26_16))
 :effect (and (not (at_x25)) (at_x26))
)

(:action move_25_16_25_15
 :parameters ()
 :precondition (and (at_x25)(at_y16))
 :poss-precondition (and (bridge_25_15_25_16))
 :effect (and (not (at_y16)) (at_y15))
)

(:action move_25_16_25_17
 :parameters ()
 :precondition (and (at_x25)(at_y16))
 :poss-precondition (and (bridge_25_16_25_17))
 :effect (and (not (at_y16)) (at_y17))
)

(:action move_25_17_24_17
 :parameters ()
 :precondition (and (at_x25)(at_y17))
 :poss-precondition (and (bridge_24_17_25_17))
 :effect (and (not (at_x25)) (at_x24))
)

(:action move_25_17_26_17
 :parameters ()
 :precondition (and (at_x25)(at_y17))
 :poss-precondition (and (bridge_25_17_26_17))
 :effect (and (not (at_x25)) (at_x26))
)

(:action move_25_17_25_16
 :parameters ()
 :precondition (and (at_x25)(at_y17))
 :poss-precondition (and (bridge_25_16_25_17))
 :effect (and (not (at_y17)) (at_y16))
)

(:action move_25_17_25_18
 :parameters ()
 :precondition (and (at_x25)(at_y17))
 :poss-precondition (and (bridge_25_17_25_18))
 :effect (and (not (at_y17)) (at_y18))
)

(:action move_25_18_24_18
 :parameters ()
 :precondition (and (at_x25)(at_y18))
 :poss-precondition (and (bridge_24_18_25_18))
 :effect (and (not (at_x25)) (at_x24))
)

(:action move_25_18_26_18
 :parameters ()
 :precondition (and (at_x25)(at_y18))
 :poss-precondition (and (bridge_25_18_26_18))
 :effect (and (not (at_x25)) (at_x26))
)

(:action move_25_18_25_17
 :parameters ()
 :precondition (and (at_x25)(at_y18))
 :poss-precondition (and (bridge_25_17_25_18))
 :effect (and (not (at_y18)) (at_y17))
)

(:action move_25_18_25_19
 :parameters ()
 :precondition (and (at_x25)(at_y18))
 :poss-precondition (and (bridge_25_18_25_19))
 :effect (and (not (at_y18)) (at_y19))
)

(:action move_25_19_24_19
 :parameters ()
 :precondition (and (at_x25)(at_y19))
 :poss-precondition (and (bridge_24_19_25_19))
 :effect (and (not (at_x25)) (at_x24))
)

(:action move_25_19_26_19
 :parameters ()
 :precondition (and (at_x25)(at_y19))
 :poss-precondition (and (bridge_25_19_26_19))
 :effect (and (not (at_x25)) (at_x26))
)

(:action move_25_19_25_18
 :parameters ()
 :precondition (and (at_x25)(at_y19))
 :poss-precondition (and (bridge_25_18_25_19))
 :effect (and (not (at_y19)) (at_y18))
)

(:action move_25_19_25_20
 :parameters ()
 :precondition (and (at_x25)(at_y19))
 :poss-precondition (and (bridge_25_19_25_20))
 :effect (and (not (at_y19)) (at_y20))
)

(:action move_25_20_24_20
 :parameters ()
 :precondition (and (at_x25)(at_y20))
 :poss-precondition (and (bridge_24_20_25_20))
 :effect (and (not (at_x25)) (at_x24))
)

(:action move_25_20_26_20
 :parameters ()
 :precondition (and (at_x25)(at_y20))
 :poss-precondition (and (bridge_25_20_26_20))
 :effect (and (not (at_x25)) (at_x26))
)

(:action move_25_20_25_19
 :parameters ()
 :precondition (and (at_x25)(at_y20))
 :poss-precondition (and (bridge_25_19_25_20))
 :effect (and (not (at_y20)) (at_y19))
)

(:action move_25_20_25_21
 :parameters ()
 :precondition (and (at_x25)(at_y20))
 :poss-precondition (and (bridge_25_20_25_21))
 :effect (and (not (at_y20)) (at_y21))
)

(:action move_25_21_24_21
 :parameters ()
 :precondition (and (at_x25)(at_y21))
 :poss-precondition (and (bridge_24_21_25_21))
 :effect (and (not (at_x25)) (at_x24))
)

(:action move_25_21_26_21
 :parameters ()
 :precondition (and (at_x25)(at_y21))
 :poss-precondition (and (bridge_25_21_26_21))
 :effect (and (not (at_x25)) (at_x26))
)

(:action move_25_21_25_20
 :parameters ()
 :precondition (and (at_x25)(at_y21))
 :poss-precondition (and (bridge_25_20_25_21))
 :effect (and (not (at_y21)) (at_y20))
)

(:action move_25_21_25_22
 :parameters ()
 :precondition (and (at_x25)(at_y21))
 :poss-precondition (and (bridge_25_21_25_22))
 :effect (and (not (at_y21)) (at_y22))
)

(:action move_25_22_24_22
 :parameters ()
 :precondition (and (at_x25)(at_y22))
 :poss-precondition (and (bridge_24_22_25_22))
 :effect (and (not (at_x25)) (at_x24))
)

(:action move_25_22_26_22
 :parameters ()
 :precondition (and (at_x25)(at_y22))
 :poss-precondition (and (bridge_25_22_26_22))
 :effect (and (not (at_x25)) (at_x26))
)

(:action move_25_22_25_21
 :parameters ()
 :precondition (and (at_x25)(at_y22))
 :poss-precondition (and (bridge_25_21_25_22))
 :effect (and (not (at_y22)) (at_y21))
)

(:action move_25_22_25_23
 :parameters ()
 :precondition (and (at_x25)(at_y22))
 :poss-precondition (and (bridge_25_22_25_23))
 :effect (and (not (at_y22)) (at_y23))
)

(:action move_25_23_24_23
 :parameters ()
 :precondition (and (at_x25)(at_y23))
 :poss-precondition (and (bridge_24_23_25_23))
 :effect (and (not (at_x25)) (at_x24))
)

(:action move_25_23_26_23
 :parameters ()
 :precondition (and (at_x25)(at_y23))
 :poss-precondition (and (bridge_25_23_26_23))
 :effect (and (not (at_x25)) (at_x26))
)

(:action move_25_23_25_22
 :parameters ()
 :precondition (and (at_x25)(at_y23))
 :poss-precondition (and (bridge_25_22_25_23))
 :effect (and (not (at_y23)) (at_y22))
)

(:action move_25_23_25_24
 :parameters ()
 :precondition (and (at_x25)(at_y23))
 :poss-precondition (and (bridge_25_23_25_24))
 :effect (and (not (at_y23)) (at_y24))
)

(:action move_25_24_24_24
 :parameters ()
 :precondition (and (at_x25)(at_y24))
 :poss-precondition (and (bridge_24_24_25_24))
 :effect (and (not (at_x25)) (at_x24))
)

(:action move_25_24_26_24
 :parameters ()
 :precondition (and (at_x25)(at_y24))
 :poss-precondition (and (bridge_25_24_26_24))
 :effect (and (not (at_x25)) (at_x26))
)

(:action move_25_24_25_23
 :parameters ()
 :precondition (and (at_x25)(at_y24))
 :poss-precondition (and (bridge_25_23_25_24))
 :effect (and (not (at_y24)) (at_y23))
)

(:action move_25_24_25_25
 :parameters ()
 :precondition (and (at_x25)(at_y24))
 :poss-precondition (and (bridge_25_24_25_25))
 :effect (and (not (at_y24)) (at_y25))
)

(:action move_25_25_24_25
 :parameters ()
 :precondition (and (at_x25)(at_y25))
 :poss-precondition (and (bridge_24_25_25_25))
 :effect (and (not (at_x25)) (at_x24))
)

(:action move_25_25_26_25
 :parameters ()
 :precondition (and (at_x25)(at_y25))
 :poss-precondition (and (bridge_25_25_26_25))
 :effect (and (not (at_x25)) (at_x26))
)

(:action move_25_25_25_24
 :parameters ()
 :precondition (and (at_x25)(at_y25))
 :poss-precondition (and (bridge_25_24_25_25))
 :effect (and (not (at_y25)) (at_y24))
)

(:action move_25_25_25_26
 :parameters ()
 :precondition (and (at_x25)(at_y25))
 :poss-precondition (and (bridge_25_25_25_26))
 :effect (and (not (at_y25)) (at_y26))
)

(:action move_25_26_24_26
 :parameters ()
 :precondition (and (at_x25)(at_y26))
 :poss-precondition (and (bridge_24_26_25_26))
 :effect (and (not (at_x25)) (at_x24))
)

(:action move_25_26_26_26
 :parameters ()
 :precondition (and (at_x25)(at_y26))
 :poss-precondition (and (bridge_25_26_26_26))
 :effect (and (not (at_x25)) (at_x26))
)

(:action move_25_26_25_25
 :parameters ()
 :precondition (and (at_x25)(at_y26))
 :poss-precondition (and (bridge_25_25_25_26))
 :effect (and (not (at_y26)) (at_y25))
)

(:action move_25_26_25_27
 :parameters ()
 :precondition (and (at_x25)(at_y26))
 :poss-precondition (and (bridge_25_26_25_27))
 :effect (and (not (at_y26)) (at_y27))
)

(:action move_25_27_24_27
 :parameters ()
 :precondition (and (at_x25)(at_y27))
 :poss-precondition (and (bridge_24_27_25_27))
 :effect (and (not (at_x25)) (at_x24))
)

(:action move_25_27_26_27
 :parameters ()
 :precondition (and (at_x25)(at_y27))
 :poss-precondition (and (bridge_25_27_26_27))
 :effect (and (not (at_x25)) (at_x26))
)

(:action move_25_27_25_26
 :parameters ()
 :precondition (and (at_x25)(at_y27))
 :poss-precondition (and (bridge_25_26_25_27))
 :effect (and (not (at_y27)) (at_y26))
)

(:action move_25_27_25_28
 :parameters ()
 :precondition (and (at_x25)(at_y27))
 :poss-precondition (and (bridge_25_27_25_28))
 :effect (and (not (at_y27)) (at_y28))
)

(:action move_25_28_24_28
 :parameters ()
 :precondition (and (at_x25)(at_y28))
 :poss-precondition (and (bridge_24_28_25_28))
 :effect (and (not (at_x25)) (at_x24))
)

(:action move_25_28_26_28
 :parameters ()
 :precondition (and (at_x25)(at_y28))
 :poss-precondition (and (bridge_25_28_26_28))
 :effect (and (not (at_x25)) (at_x26))
)

(:action move_25_28_25_27
 :parameters ()
 :precondition (and (at_x25)(at_y28))
 :poss-precondition (and (bridge_25_27_25_28))
 :effect (and (not (at_y28)) (at_y27))
)

(:action move_25_28_25_29
 :parameters ()
 :precondition (and (at_x25)(at_y28))
 :poss-precondition (and (bridge_25_28_25_29))
 :effect (and (not (at_y28)) (at_y29))
)

(:action move_25_29_24_29
 :parameters ()
 :precondition (and (at_x25)(at_y29))
 :poss-precondition (and (bridge_24_29_25_29))
 :effect (and (not (at_x25)) (at_x24))
)

(:action move_25_29_26_29
 :parameters ()
 :precondition (and (at_x25)(at_y29))
 :poss-precondition (and (bridge_25_29_26_29))
 :effect (and (not (at_x25)) (at_x26))
)

(:action move_25_29_25_28
 :parameters ()
 :precondition (and (at_x25)(at_y29))
 :poss-precondition (and (bridge_25_28_25_29))
 :effect (and (not (at_y29)) (at_y28))
)

(:action move_25_29_25_30
 :parameters ()
 :precondition (and (at_x25)(at_y29))
 :poss-precondition (and (bridge_25_29_25_30))
 :effect (and (not (at_y29)) (at_y30))
)

(:action move_25_30_24_30
 :parameters ()
 :precondition (and (at_x25)(at_y30))
 :poss-precondition (and (bridge_24_30_25_30))
 :effect (and (not (at_x25)) (at_x24))
)

(:action move_25_30_26_30
 :parameters ()
 :precondition (and (at_x25)(at_y30))
 :poss-precondition (and (bridge_25_30_26_30))
 :effect (and (not (at_x25)) (at_x26))
)

(:action move_25_30_25_29
 :parameters ()
 :precondition (and (at_x25)(at_y30))
 :poss-precondition (and (bridge_25_29_25_30))
 :effect (and (not (at_y30)) (at_y29))
)

(:action move_25_30_25_31
 :parameters ()
 :precondition (and (at_x25)(at_y30))
 :poss-precondition (and (bridge_25_30_25_31))
 :effect (and (not (at_y30)) (at_y31))
)

(:action move_25_31_24_31
 :parameters ()
 :precondition (and (at_x25)(at_y31))
 :poss-precondition (and (bridge_24_31_25_31))
 :effect (and (not (at_x25)) (at_x24))
)

(:action move_25_31_26_31
 :parameters ()
 :precondition (and (at_x25)(at_y31))
 :poss-precondition (and (bridge_25_31_26_31))
 :effect (and (not (at_x25)) (at_x26))
)

(:action move_25_31_25_30
 :parameters ()
 :precondition (and (at_x25)(at_y31))
 :poss-precondition (and (bridge_25_30_25_31))
 :effect (and (not (at_y31)) (at_y30))
)

(:action move_26_0_25_0
 :parameters ()
 :precondition (and (at_x26)(at_y0))
 :poss-precondition (and (bridge_25_0_26_0))
 :effect (and (not (at_x26)) (at_x25))
)

(:action move_26_0_27_0
 :parameters ()
 :precondition (and (at_x26)(at_y0))
 :poss-precondition (and (bridge_26_0_27_0))
 :effect (and (not (at_x26)) (at_x27))
)

(:action move_26_0_26_1
 :parameters ()
 :precondition (and (at_x26)(at_y0))
 :poss-precondition (and (bridge_26_0_26_1))
 :effect (and (not (at_y0)) (at_y1))
)

(:action move_26_1_25_1
 :parameters ()
 :precondition (and (at_x26)(at_y1))
 :poss-precondition (and (bridge_25_1_26_1))
 :effect (and (not (at_x26)) (at_x25))
)

(:action move_26_1_27_1
 :parameters ()
 :precondition (and (at_x26)(at_y1))
 :poss-precondition (and (bridge_26_1_27_1))
 :effect (and (not (at_x26)) (at_x27))
)

(:action move_26_1_26_0
 :parameters ()
 :precondition (and (at_x26)(at_y1))
 :poss-precondition (and (bridge_26_0_26_1))
 :effect (and (not (at_y1)) (at_y0))
)

(:action move_26_1_26_2
 :parameters ()
 :precondition (and (at_x26)(at_y1))
 :poss-precondition (and (bridge_26_1_26_2))
 :effect (and (not (at_y1)) (at_y2))
)

(:action move_26_2_25_2
 :parameters ()
 :precondition (and (at_x26)(at_y2))
 :poss-precondition (and (bridge_25_2_26_2))
 :effect (and (not (at_x26)) (at_x25))
)

(:action move_26_2_27_2
 :parameters ()
 :precondition (and (at_x26)(at_y2))
 :poss-precondition (and (bridge_26_2_27_2))
 :effect (and (not (at_x26)) (at_x27))
)

(:action move_26_2_26_1
 :parameters ()
 :precondition (and (at_x26)(at_y2))
 :poss-precondition (and (bridge_26_1_26_2))
 :effect (and (not (at_y2)) (at_y1))
)

(:action move_26_2_26_3
 :parameters ()
 :precondition (and (at_x26)(at_y2))
 :poss-precondition (and (bridge_26_2_26_3))
 :effect (and (not (at_y2)) (at_y3))
)

(:action move_26_3_25_3
 :parameters ()
 :precondition (and (at_x26)(at_y3))
 :poss-precondition (and (bridge_25_3_26_3))
 :effect (and (not (at_x26)) (at_x25))
)

(:action move_26_3_27_3
 :parameters ()
 :precondition (and (at_x26)(at_y3))
 :poss-precondition (and (bridge_26_3_27_3))
 :effect (and (not (at_x26)) (at_x27))
)

(:action move_26_3_26_2
 :parameters ()
 :precondition (and (at_x26)(at_y3))
 :poss-precondition (and (bridge_26_2_26_3))
 :effect (and (not (at_y3)) (at_y2))
)

(:action move_26_3_26_4
 :parameters ()
 :precondition (and (at_x26)(at_y3))
 :poss-precondition (and (bridge_26_3_26_4))
 :effect (and (not (at_y3)) (at_y4))
)

(:action move_26_4_25_4
 :parameters ()
 :precondition (and (at_x26)(at_y4))
 :poss-precondition (and (bridge_25_4_26_4))
 :effect (and (not (at_x26)) (at_x25))
)

(:action move_26_4_27_4
 :parameters ()
 :precondition (and (at_x26)(at_y4))
 :poss-precondition (and (bridge_26_4_27_4))
 :effect (and (not (at_x26)) (at_x27))
)

(:action move_26_4_26_3
 :parameters ()
 :precondition (and (at_x26)(at_y4))
 :poss-precondition (and (bridge_26_3_26_4))
 :effect (and (not (at_y4)) (at_y3))
)

(:action move_26_4_26_5
 :parameters ()
 :precondition (and (at_x26)(at_y4))
 :poss-precondition (and (bridge_26_4_26_5))
 :effect (and (not (at_y4)) (at_y5))
)

(:action move_26_5_25_5
 :parameters ()
 :precondition (and (at_x26)(at_y5))
 :poss-precondition (and (bridge_25_5_26_5))
 :effect (and (not (at_x26)) (at_x25))
)

(:action move_26_5_27_5
 :parameters ()
 :precondition (and (at_x26)(at_y5))
 :poss-precondition (and (bridge_26_5_27_5))
 :effect (and (not (at_x26)) (at_x27))
)

(:action move_26_5_26_4
 :parameters ()
 :precondition (and (at_x26)(at_y5))
 :poss-precondition (and (bridge_26_4_26_5))
 :effect (and (not (at_y5)) (at_y4))
)

(:action move_26_5_26_6
 :parameters ()
 :precondition (and (at_x26)(at_y5))
 :poss-precondition (and (bridge_26_5_26_6))
 :effect (and (not (at_y5)) (at_y6))
)

(:action move_26_6_25_6
 :parameters ()
 :precondition (and (at_x26)(at_y6))
 :poss-precondition (and (bridge_25_6_26_6))
 :effect (and (not (at_x26)) (at_x25))
)

(:action move_26_6_27_6
 :parameters ()
 :precondition (and (at_x26)(at_y6))
 :poss-precondition (and (bridge_26_6_27_6))
 :effect (and (not (at_x26)) (at_x27))
)

(:action move_26_6_26_5
 :parameters ()
 :precondition (and (at_x26)(at_y6))
 :poss-precondition (and (bridge_26_5_26_6))
 :effect (and (not (at_y6)) (at_y5))
)

(:action move_26_6_26_7
 :parameters ()
 :precondition (and (at_x26)(at_y6))
 :poss-precondition (and (bridge_26_6_26_7))
 :effect (and (not (at_y6)) (at_y7))
)

(:action move_26_7_25_7
 :parameters ()
 :precondition (and (at_x26)(at_y7))
 :poss-precondition (and (bridge_25_7_26_7))
 :effect (and (not (at_x26)) (at_x25))
)

(:action move_26_7_27_7
 :parameters ()
 :precondition (and (at_x26)(at_y7))
 :poss-precondition (and (bridge_26_7_27_7))
 :effect (and (not (at_x26)) (at_x27))
)

(:action move_26_7_26_6
 :parameters ()
 :precondition (and (at_x26)(at_y7))
 :poss-precondition (and (bridge_26_6_26_7))
 :effect (and (not (at_y7)) (at_y6))
)

(:action move_26_7_26_8
 :parameters ()
 :precondition (and (at_x26)(at_y7))
 :poss-precondition (and (bridge_26_7_26_8))
 :effect (and (not (at_y7)) (at_y8))
)

(:action move_26_8_25_8
 :parameters ()
 :precondition (and (at_x26)(at_y8))
 :poss-precondition (and (bridge_25_8_26_8))
 :effect (and (not (at_x26)) (at_x25))
)

(:action move_26_8_27_8
 :parameters ()
 :precondition (and (at_x26)(at_y8))
 :poss-precondition (and (bridge_26_8_27_8))
 :effect (and (not (at_x26)) (at_x27))
)

(:action move_26_8_26_7
 :parameters ()
 :precondition (and (at_x26)(at_y8))
 :poss-precondition (and (bridge_26_7_26_8))
 :effect (and (not (at_y8)) (at_y7))
)

(:action move_26_8_26_9
 :parameters ()
 :precondition (and (at_x26)(at_y8))
 :poss-precondition (and (bridge_26_8_26_9))
 :effect (and (not (at_y8)) (at_y9))
)

(:action move_26_9_25_9
 :parameters ()
 :precondition (and (at_x26)(at_y9))
 :poss-precondition (and (bridge_25_9_26_9))
 :effect (and (not (at_x26)) (at_x25))
)

(:action move_26_9_27_9
 :parameters ()
 :precondition (and (at_x26)(at_y9))
 :poss-precondition (and (bridge_26_9_27_9))
 :effect (and (not (at_x26)) (at_x27))
)

(:action move_26_9_26_8
 :parameters ()
 :precondition (and (at_x26)(at_y9))
 :poss-precondition (and (bridge_26_8_26_9))
 :effect (and (not (at_y9)) (at_y8))
)

(:action move_26_9_26_10
 :parameters ()
 :precondition (and (at_x26)(at_y9))
 :poss-precondition (and (bridge_26_9_26_10))
 :effect (and (not (at_y9)) (at_y10))
)

(:action move_26_10_25_10
 :parameters ()
 :precondition (and (at_x26)(at_y10))
 :poss-precondition (and (bridge_25_10_26_10))
 :effect (and (not (at_x26)) (at_x25))
)

(:action move_26_10_27_10
 :parameters ()
 :precondition (and (at_x26)(at_y10))
 :poss-precondition (and (bridge_26_10_27_10))
 :effect (and (not (at_x26)) (at_x27))
)

(:action move_26_10_26_9
 :parameters ()
 :precondition (and (at_x26)(at_y10))
 :poss-precondition (and (bridge_26_9_26_10))
 :effect (and (not (at_y10)) (at_y9))
)

(:action move_26_10_26_11
 :parameters ()
 :precondition (and (at_x26)(at_y10))
 :poss-precondition (and (bridge_26_10_26_11))
 :effect (and (not (at_y10)) (at_y11))
)

(:action move_26_11_25_11
 :parameters ()
 :precondition (and (at_x26)(at_y11))
 :poss-precondition (and (bridge_25_11_26_11))
 :effect (and (not (at_x26)) (at_x25))
)

(:action move_26_11_27_11
 :parameters ()
 :precondition (and (at_x26)(at_y11))
 :poss-precondition (and (bridge_26_11_27_11))
 :effect (and (not (at_x26)) (at_x27))
)

(:action move_26_11_26_10
 :parameters ()
 :precondition (and (at_x26)(at_y11))
 :poss-precondition (and (bridge_26_10_26_11))
 :effect (and (not (at_y11)) (at_y10))
)

(:action move_26_11_26_12
 :parameters ()
 :precondition (and (at_x26)(at_y11))
 :poss-precondition (and (bridge_26_11_26_12))
 :effect (and (not (at_y11)) (at_y12))
)

(:action move_26_12_25_12
 :parameters ()
 :precondition (and (at_x26)(at_y12))
 :poss-precondition (and (bridge_25_12_26_12))
 :effect (and (not (at_x26)) (at_x25))
)

(:action move_26_12_27_12
 :parameters ()
 :precondition (and (at_x26)(at_y12))
 :poss-precondition (and (bridge_26_12_27_12))
 :effect (and (not (at_x26)) (at_x27))
)

(:action move_26_12_26_11
 :parameters ()
 :precondition (and (at_x26)(at_y12))
 :poss-precondition (and (bridge_26_11_26_12))
 :effect (and (not (at_y12)) (at_y11))
)

(:action move_26_12_26_13
 :parameters ()
 :precondition (and (at_x26)(at_y12))
 :poss-precondition (and (bridge_26_12_26_13))
 :effect (and (not (at_y12)) (at_y13))
)

(:action move_26_13_25_13
 :parameters ()
 :precondition (and (at_x26)(at_y13))
 :poss-precondition (and (bridge_25_13_26_13))
 :effect (and (not (at_x26)) (at_x25))
)

(:action move_26_13_27_13
 :parameters ()
 :precondition (and (at_x26)(at_y13))
 :poss-precondition (and (bridge_26_13_27_13))
 :effect (and (not (at_x26)) (at_x27))
)

(:action move_26_13_26_12
 :parameters ()
 :precondition (and (at_x26)(at_y13))
 :poss-precondition (and (bridge_26_12_26_13))
 :effect (and (not (at_y13)) (at_y12))
)

(:action move_26_13_26_14
 :parameters ()
 :precondition (and (at_x26)(at_y13))
 :poss-precondition (and (bridge_26_13_26_14))
 :effect (and (not (at_y13)) (at_y14))
)

(:action move_26_14_25_14
 :parameters ()
 :precondition (and (at_x26)(at_y14))
 :poss-precondition (and (bridge_25_14_26_14))
 :effect (and (not (at_x26)) (at_x25))
)

(:action move_26_14_27_14
 :parameters ()
 :precondition (and (at_x26)(at_y14))
 :poss-precondition (and (bridge_26_14_27_14))
 :effect (and (not (at_x26)) (at_x27))
)

(:action move_26_14_26_13
 :parameters ()
 :precondition (and (at_x26)(at_y14))
 :poss-precondition (and (bridge_26_13_26_14))
 :effect (and (not (at_y14)) (at_y13))
)

(:action move_26_14_26_15
 :parameters ()
 :precondition (and (at_x26)(at_y14))
 :poss-precondition (and (bridge_26_14_26_15))
 :effect (and (not (at_y14)) (at_y15))
)

(:action move_26_15_25_15
 :parameters ()
 :precondition (and (at_x26)(at_y15))
 :poss-precondition (and (bridge_25_15_26_15))
 :effect (and (not (at_x26)) (at_x25))
)

(:action move_26_15_27_15
 :parameters ()
 :precondition (and (at_x26)(at_y15))
 :poss-precondition (and (bridge_26_15_27_15))
 :effect (and (not (at_x26)) (at_x27))
)

(:action move_26_15_26_14
 :parameters ()
 :precondition (and (at_x26)(at_y15))
 :poss-precondition (and (bridge_26_14_26_15))
 :effect (and (not (at_y15)) (at_y14))
)

(:action move_26_15_26_16
 :parameters ()
 :precondition (and (at_x26)(at_y15))
 :poss-precondition (and (bridge_26_15_26_16))
 :effect (and (not (at_y15)) (at_y16))
)

(:action move_26_16_25_16
 :parameters ()
 :precondition (and (at_x26)(at_y16))
 :poss-precondition (and (bridge_25_16_26_16))
 :effect (and (not (at_x26)) (at_x25))
)

(:action move_26_16_27_16
 :parameters ()
 :precondition (and (at_x26)(at_y16))
 :poss-precondition (and (bridge_26_16_27_16))
 :effect (and (not (at_x26)) (at_x27))
)

(:action move_26_16_26_15
 :parameters ()
 :precondition (and (at_x26)(at_y16))
 :poss-precondition (and (bridge_26_15_26_16))
 :effect (and (not (at_y16)) (at_y15))
)

(:action move_26_16_26_17
 :parameters ()
 :precondition (and (at_x26)(at_y16))
 :poss-precondition (and (bridge_26_16_26_17))
 :effect (and (not (at_y16)) (at_y17))
)

(:action move_26_17_25_17
 :parameters ()
 :precondition (and (at_x26)(at_y17))
 :poss-precondition (and (bridge_25_17_26_17))
 :effect (and (not (at_x26)) (at_x25))
)

(:action move_26_17_27_17
 :parameters ()
 :precondition (and (at_x26)(at_y17))
 :poss-precondition (and (bridge_26_17_27_17))
 :effect (and (not (at_x26)) (at_x27))
)

(:action move_26_17_26_16
 :parameters ()
 :precondition (and (at_x26)(at_y17))
 :poss-precondition (and (bridge_26_16_26_17))
 :effect (and (not (at_y17)) (at_y16))
)

(:action move_26_17_26_18
 :parameters ()
 :precondition (and (at_x26)(at_y17))
 :poss-precondition (and (bridge_26_17_26_18))
 :effect (and (not (at_y17)) (at_y18))
)

(:action move_26_18_25_18
 :parameters ()
 :precondition (and (at_x26)(at_y18))
 :poss-precondition (and (bridge_25_18_26_18))
 :effect (and (not (at_x26)) (at_x25))
)

(:action move_26_18_27_18
 :parameters ()
 :precondition (and (at_x26)(at_y18))
 :poss-precondition (and (bridge_26_18_27_18))
 :effect (and (not (at_x26)) (at_x27))
)

(:action move_26_18_26_17
 :parameters ()
 :precondition (and (at_x26)(at_y18))
 :poss-precondition (and (bridge_26_17_26_18))
 :effect (and (not (at_y18)) (at_y17))
)

(:action move_26_18_26_19
 :parameters ()
 :precondition (and (at_x26)(at_y18))
 :poss-precondition (and (bridge_26_18_26_19))
 :effect (and (not (at_y18)) (at_y19))
)

(:action move_26_19_25_19
 :parameters ()
 :precondition (and (at_x26)(at_y19))
 :poss-precondition (and (bridge_25_19_26_19))
 :effect (and (not (at_x26)) (at_x25))
)

(:action move_26_19_27_19
 :parameters ()
 :precondition (and (at_x26)(at_y19))
 :poss-precondition (and (bridge_26_19_27_19))
 :effect (and (not (at_x26)) (at_x27))
)

(:action move_26_19_26_18
 :parameters ()
 :precondition (and (at_x26)(at_y19))
 :poss-precondition (and (bridge_26_18_26_19))
 :effect (and (not (at_y19)) (at_y18))
)

(:action move_26_19_26_20
 :parameters ()
 :precondition (and (at_x26)(at_y19))
 :poss-precondition (and (bridge_26_19_26_20))
 :effect (and (not (at_y19)) (at_y20))
)

(:action move_26_20_25_20
 :parameters ()
 :precondition (and (at_x26)(at_y20))
 :poss-precondition (and (bridge_25_20_26_20))
 :effect (and (not (at_x26)) (at_x25))
)

(:action move_26_20_27_20
 :parameters ()
 :precondition (and (at_x26)(at_y20))
 :poss-precondition (and (bridge_26_20_27_20))
 :effect (and (not (at_x26)) (at_x27))
)

(:action move_26_20_26_19
 :parameters ()
 :precondition (and (at_x26)(at_y20))
 :poss-precondition (and (bridge_26_19_26_20))
 :effect (and (not (at_y20)) (at_y19))
)

(:action move_26_20_26_21
 :parameters ()
 :precondition (and (at_x26)(at_y20))
 :poss-precondition (and (bridge_26_20_26_21))
 :effect (and (not (at_y20)) (at_y21))
)

(:action move_26_21_25_21
 :parameters ()
 :precondition (and (at_x26)(at_y21))
 :poss-precondition (and (bridge_25_21_26_21))
 :effect (and (not (at_x26)) (at_x25))
)

(:action move_26_21_27_21
 :parameters ()
 :precondition (and (at_x26)(at_y21))
 :poss-precondition (and (bridge_26_21_27_21))
 :effect (and (not (at_x26)) (at_x27))
)

(:action move_26_21_26_20
 :parameters ()
 :precondition (and (at_x26)(at_y21))
 :poss-precondition (and (bridge_26_20_26_21))
 :effect (and (not (at_y21)) (at_y20))
)

(:action move_26_21_26_22
 :parameters ()
 :precondition (and (at_x26)(at_y21))
 :poss-precondition (and (bridge_26_21_26_22))
 :effect (and (not (at_y21)) (at_y22))
)

(:action move_26_22_25_22
 :parameters ()
 :precondition (and (at_x26)(at_y22))
 :poss-precondition (and (bridge_25_22_26_22))
 :effect (and (not (at_x26)) (at_x25))
)

(:action move_26_22_27_22
 :parameters ()
 :precondition (and (at_x26)(at_y22))
 :poss-precondition (and (bridge_26_22_27_22))
 :effect (and (not (at_x26)) (at_x27))
)

(:action move_26_22_26_21
 :parameters ()
 :precondition (and (at_x26)(at_y22))
 :poss-precondition (and (bridge_26_21_26_22))
 :effect (and (not (at_y22)) (at_y21))
)

(:action move_26_22_26_23
 :parameters ()
 :precondition (and (at_x26)(at_y22))
 :poss-precondition (and (bridge_26_22_26_23))
 :effect (and (not (at_y22)) (at_y23))
)

(:action move_26_23_25_23
 :parameters ()
 :precondition (and (at_x26)(at_y23))
 :poss-precondition (and (bridge_25_23_26_23))
 :effect (and (not (at_x26)) (at_x25))
)

(:action move_26_23_27_23
 :parameters ()
 :precondition (and (at_x26)(at_y23))
 :poss-precondition (and (bridge_26_23_27_23))
 :effect (and (not (at_x26)) (at_x27))
)

(:action move_26_23_26_22
 :parameters ()
 :precondition (and (at_x26)(at_y23))
 :poss-precondition (and (bridge_26_22_26_23))
 :effect (and (not (at_y23)) (at_y22))
)

(:action move_26_23_26_24
 :parameters ()
 :precondition (and (at_x26)(at_y23))
 :poss-precondition (and (bridge_26_23_26_24))
 :effect (and (not (at_y23)) (at_y24))
)

(:action move_26_24_25_24
 :parameters ()
 :precondition (and (at_x26)(at_y24))
 :poss-precondition (and (bridge_25_24_26_24))
 :effect (and (not (at_x26)) (at_x25))
)

(:action move_26_24_27_24
 :parameters ()
 :precondition (and (at_x26)(at_y24))
 :poss-precondition (and (bridge_26_24_27_24))
 :effect (and (not (at_x26)) (at_x27))
)

(:action move_26_24_26_23
 :parameters ()
 :precondition (and (at_x26)(at_y24))
 :poss-precondition (and (bridge_26_23_26_24))
 :effect (and (not (at_y24)) (at_y23))
)

(:action move_26_24_26_25
 :parameters ()
 :precondition (and (at_x26)(at_y24))
 :poss-precondition (and (bridge_26_24_26_25))
 :effect (and (not (at_y24)) (at_y25))
)

(:action move_26_25_25_25
 :parameters ()
 :precondition (and (at_x26)(at_y25))
 :poss-precondition (and (bridge_25_25_26_25))
 :effect (and (not (at_x26)) (at_x25))
)

(:action move_26_25_27_25
 :parameters ()
 :precondition (and (at_x26)(at_y25))
 :poss-precondition (and (bridge_26_25_27_25))
 :effect (and (not (at_x26)) (at_x27))
)

(:action move_26_25_26_24
 :parameters ()
 :precondition (and (at_x26)(at_y25))
 :poss-precondition (and (bridge_26_24_26_25))
 :effect (and (not (at_y25)) (at_y24))
)

(:action move_26_25_26_26
 :parameters ()
 :precondition (and (at_x26)(at_y25))
 :poss-precondition (and (bridge_26_25_26_26))
 :effect (and (not (at_y25)) (at_y26))
)

(:action move_26_26_25_26
 :parameters ()
 :precondition (and (at_x26)(at_y26))
 :poss-precondition (and (bridge_25_26_26_26))
 :effect (and (not (at_x26)) (at_x25))
)

(:action move_26_26_27_26
 :parameters ()
 :precondition (and (at_x26)(at_y26))
 :poss-precondition (and (bridge_26_26_27_26))
 :effect (and (not (at_x26)) (at_x27))
)

(:action move_26_26_26_25
 :parameters ()
 :precondition (and (at_x26)(at_y26))
 :poss-precondition (and (bridge_26_25_26_26))
 :effect (and (not (at_y26)) (at_y25))
)

(:action move_26_26_26_27
 :parameters ()
 :precondition (and (at_x26)(at_y26))
 :poss-precondition (and (bridge_26_26_26_27))
 :effect (and (not (at_y26)) (at_y27))
)

(:action move_26_27_25_27
 :parameters ()
 :precondition (and (at_x26)(at_y27))
 :poss-precondition (and (bridge_25_27_26_27))
 :effect (and (not (at_x26)) (at_x25))
)

(:action move_26_27_27_27
 :parameters ()
 :precondition (and (at_x26)(at_y27))
 :poss-precondition (and (bridge_26_27_27_27))
 :effect (and (not (at_x26)) (at_x27))
)

(:action move_26_27_26_26
 :parameters ()
 :precondition (and (at_x26)(at_y27))
 :poss-precondition (and (bridge_26_26_26_27))
 :effect (and (not (at_y27)) (at_y26))
)

(:action move_26_27_26_28
 :parameters ()
 :precondition (and (at_x26)(at_y27))
 :poss-precondition (and (bridge_26_27_26_28))
 :effect (and (not (at_y27)) (at_y28))
)

(:action move_26_28_25_28
 :parameters ()
 :precondition (and (at_x26)(at_y28))
 :poss-precondition (and (bridge_25_28_26_28))
 :effect (and (not (at_x26)) (at_x25))
)

(:action move_26_28_27_28
 :parameters ()
 :precondition (and (at_x26)(at_y28))
 :poss-precondition (and (bridge_26_28_27_28))
 :effect (and (not (at_x26)) (at_x27))
)

(:action move_26_28_26_27
 :parameters ()
 :precondition (and (at_x26)(at_y28))
 :poss-precondition (and (bridge_26_27_26_28))
 :effect (and (not (at_y28)) (at_y27))
)

(:action move_26_28_26_29
 :parameters ()
 :precondition (and (at_x26)(at_y28))
 :poss-precondition (and (bridge_26_28_26_29))
 :effect (and (not (at_y28)) (at_y29))
)

(:action move_26_29_25_29
 :parameters ()
 :precondition (and (at_x26)(at_y29))
 :poss-precondition (and (bridge_25_29_26_29))
 :effect (and (not (at_x26)) (at_x25))
)

(:action move_26_29_27_29
 :parameters ()
 :precondition (and (at_x26)(at_y29))
 :poss-precondition (and (bridge_26_29_27_29))
 :effect (and (not (at_x26)) (at_x27))
)

(:action move_26_29_26_28
 :parameters ()
 :precondition (and (at_x26)(at_y29))
 :poss-precondition (and (bridge_26_28_26_29))
 :effect (and (not (at_y29)) (at_y28))
)

(:action move_26_29_26_30
 :parameters ()
 :precondition (and (at_x26)(at_y29))
 :poss-precondition (and (bridge_26_29_26_30))
 :effect (and (not (at_y29)) (at_y30))
)

(:action move_26_30_25_30
 :parameters ()
 :precondition (and (at_x26)(at_y30))
 :poss-precondition (and (bridge_25_30_26_30))
 :effect (and (not (at_x26)) (at_x25))
)

(:action move_26_30_27_30
 :parameters ()
 :precondition (and (at_x26)(at_y30))
 :poss-precondition (and (bridge_26_30_27_30))
 :effect (and (not (at_x26)) (at_x27))
)

(:action move_26_30_26_29
 :parameters ()
 :precondition (and (at_x26)(at_y30))
 :poss-precondition (and (bridge_26_29_26_30))
 :effect (and (not (at_y30)) (at_y29))
)

(:action move_26_30_26_31
 :parameters ()
 :precondition (and (at_x26)(at_y30))
 :poss-precondition (and (bridge_26_30_26_31))
 :effect (and (not (at_y30)) (at_y31))
)

(:action move_26_31_25_31
 :parameters ()
 :precondition (and (at_x26)(at_y31))
 :poss-precondition (and (bridge_25_31_26_31))
 :effect (and (not (at_x26)) (at_x25))
)

(:action move_26_31_27_31
 :parameters ()
 :precondition (and (at_x26)(at_y31))
 :poss-precondition (and (bridge_26_31_27_31))
 :effect (and (not (at_x26)) (at_x27))
)

(:action move_26_31_26_30
 :parameters ()
 :precondition (and (at_x26)(at_y31))
 :poss-precondition (and (bridge_26_30_26_31))
 :effect (and (not (at_y31)) (at_y30))
)

(:action move_27_0_26_0
 :parameters ()
 :precondition (and (at_x27)(at_y0))
 :poss-precondition (and (bridge_26_0_27_0))
 :effect (and (not (at_x27)) (at_x26))
)

(:action move_27_0_28_0
 :parameters ()
 :precondition (and (at_x27)(at_y0))
 :poss-precondition (and (bridge_27_0_28_0))
 :effect (and (not (at_x27)) (at_x28))
)

(:action move_27_0_27_1
 :parameters ()
 :precondition (and (at_x27)(at_y0))
 :poss-precondition (and (bridge_27_0_27_1))
 :effect (and (not (at_y0)) (at_y1))
)

(:action move_27_1_26_1
 :parameters ()
 :precondition (and (at_x27)(at_y1))
 :poss-precondition (and (bridge_26_1_27_1))
 :effect (and (not (at_x27)) (at_x26))
)

(:action move_27_1_28_1
 :parameters ()
 :precondition (and (at_x27)(at_y1))
 :poss-precondition (and (bridge_27_1_28_1))
 :effect (and (not (at_x27)) (at_x28))
)

(:action move_27_1_27_0
 :parameters ()
 :precondition (and (at_x27)(at_y1))
 :poss-precondition (and (bridge_27_0_27_1))
 :effect (and (not (at_y1)) (at_y0))
)

(:action move_27_1_27_2
 :parameters ()
 :precondition (and (at_x27)(at_y1))
 :poss-precondition (and (bridge_27_1_27_2))
 :effect (and (not (at_y1)) (at_y2))
)

(:action move_27_2_26_2
 :parameters ()
 :precondition (and (at_x27)(at_y2))
 :poss-precondition (and (bridge_26_2_27_2))
 :effect (and (not (at_x27)) (at_x26))
)

(:action move_27_2_28_2
 :parameters ()
 :precondition (and (at_x27)(at_y2))
 :poss-precondition (and (bridge_27_2_28_2))
 :effect (and (not (at_x27)) (at_x28))
)

(:action move_27_2_27_1
 :parameters ()
 :precondition (and (at_x27)(at_y2))
 :poss-precondition (and (bridge_27_1_27_2))
 :effect (and (not (at_y2)) (at_y1))
)

(:action move_27_2_27_3
 :parameters ()
 :precondition (and (at_x27)(at_y2))
 :poss-precondition (and (bridge_27_2_27_3))
 :effect (and (not (at_y2)) (at_y3))
)

(:action move_27_3_26_3
 :parameters ()
 :precondition (and (at_x27)(at_y3))
 :poss-precondition (and (bridge_26_3_27_3))
 :effect (and (not (at_x27)) (at_x26))
)

(:action move_27_3_28_3
 :parameters ()
 :precondition (and (at_x27)(at_y3))
 :poss-precondition (and (bridge_27_3_28_3))
 :effect (and (not (at_x27)) (at_x28))
)

(:action move_27_3_27_2
 :parameters ()
 :precondition (and (at_x27)(at_y3))
 :poss-precondition (and (bridge_27_2_27_3))
 :effect (and (not (at_y3)) (at_y2))
)

(:action move_27_3_27_4
 :parameters ()
 :precondition (and (at_x27)(at_y3))
 :poss-precondition (and (bridge_27_3_27_4))
 :effect (and (not (at_y3)) (at_y4))
)

(:action move_27_4_26_4
 :parameters ()
 :precondition (and (at_x27)(at_y4))
 :poss-precondition (and (bridge_26_4_27_4))
 :effect (and (not (at_x27)) (at_x26))
)

(:action move_27_4_28_4
 :parameters ()
 :precondition (and (at_x27)(at_y4))
 :poss-precondition (and (bridge_27_4_28_4))
 :effect (and (not (at_x27)) (at_x28))
)

(:action move_27_4_27_3
 :parameters ()
 :precondition (and (at_x27)(at_y4))
 :poss-precondition (and (bridge_27_3_27_4))
 :effect (and (not (at_y4)) (at_y3))
)

(:action move_27_4_27_5
 :parameters ()
 :precondition (and (at_x27)(at_y4))
 :poss-precondition (and (bridge_27_4_27_5))
 :effect (and (not (at_y4)) (at_y5))
)

(:action move_27_5_26_5
 :parameters ()
 :precondition (and (at_x27)(at_y5))
 :poss-precondition (and (bridge_26_5_27_5))
 :effect (and (not (at_x27)) (at_x26))
)

(:action move_27_5_28_5
 :parameters ()
 :precondition (and (at_x27)(at_y5))
 :poss-precondition (and (bridge_27_5_28_5))
 :effect (and (not (at_x27)) (at_x28))
)

(:action move_27_5_27_4
 :parameters ()
 :precondition (and (at_x27)(at_y5))
 :poss-precondition (and (bridge_27_4_27_5))
 :effect (and (not (at_y5)) (at_y4))
)

(:action move_27_5_27_6
 :parameters ()
 :precondition (and (at_x27)(at_y5))
 :poss-precondition (and (bridge_27_5_27_6))
 :effect (and (not (at_y5)) (at_y6))
)

(:action move_27_6_26_6
 :parameters ()
 :precondition (and (at_x27)(at_y6))
 :poss-precondition (and (bridge_26_6_27_6))
 :effect (and (not (at_x27)) (at_x26))
)

(:action move_27_6_28_6
 :parameters ()
 :precondition (and (at_x27)(at_y6))
 :poss-precondition (and (bridge_27_6_28_6))
 :effect (and (not (at_x27)) (at_x28))
)

(:action move_27_6_27_5
 :parameters ()
 :precondition (and (at_x27)(at_y6))
 :poss-precondition (and (bridge_27_5_27_6))
 :effect (and (not (at_y6)) (at_y5))
)

(:action move_27_6_27_7
 :parameters ()
 :precondition (and (at_x27)(at_y6))
 :poss-precondition (and (bridge_27_6_27_7))
 :effect (and (not (at_y6)) (at_y7))
)

(:action move_27_7_26_7
 :parameters ()
 :precondition (and (at_x27)(at_y7))
 :poss-precondition (and (bridge_26_7_27_7))
 :effect (and (not (at_x27)) (at_x26))
)

(:action move_27_7_28_7
 :parameters ()
 :precondition (and (at_x27)(at_y7))
 :poss-precondition (and (bridge_27_7_28_7))
 :effect (and (not (at_x27)) (at_x28))
)

(:action move_27_7_27_6
 :parameters ()
 :precondition (and (at_x27)(at_y7))
 :poss-precondition (and (bridge_27_6_27_7))
 :effect (and (not (at_y7)) (at_y6))
)

(:action move_27_7_27_8
 :parameters ()
 :precondition (and (at_x27)(at_y7))
 :poss-precondition (and (bridge_27_7_27_8))
 :effect (and (not (at_y7)) (at_y8))
)

(:action move_27_8_26_8
 :parameters ()
 :precondition (and (at_x27)(at_y8))
 :poss-precondition (and (bridge_26_8_27_8))
 :effect (and (not (at_x27)) (at_x26))
)

(:action move_27_8_28_8
 :parameters ()
 :precondition (and (at_x27)(at_y8))
 :poss-precondition (and (bridge_27_8_28_8))
 :effect (and (not (at_x27)) (at_x28))
)

(:action move_27_8_27_7
 :parameters ()
 :precondition (and (at_x27)(at_y8))
 :poss-precondition (and (bridge_27_7_27_8))
 :effect (and (not (at_y8)) (at_y7))
)

(:action move_27_8_27_9
 :parameters ()
 :precondition (and (at_x27)(at_y8))
 :poss-precondition (and (bridge_27_8_27_9))
 :effect (and (not (at_y8)) (at_y9))
)

(:action move_27_9_26_9
 :parameters ()
 :precondition (and (at_x27)(at_y9))
 :poss-precondition (and (bridge_26_9_27_9))
 :effect (and (not (at_x27)) (at_x26))
)

(:action move_27_9_28_9
 :parameters ()
 :precondition (and (at_x27)(at_y9))
 :poss-precondition (and (bridge_27_9_28_9))
 :effect (and (not (at_x27)) (at_x28))
)

(:action move_27_9_27_8
 :parameters ()
 :precondition (and (at_x27)(at_y9))
 :poss-precondition (and (bridge_27_8_27_9))
 :effect (and (not (at_y9)) (at_y8))
)

(:action move_27_9_27_10
 :parameters ()
 :precondition (and (at_x27)(at_y9))
 :poss-precondition (and (bridge_27_9_27_10))
 :effect (and (not (at_y9)) (at_y10))
)

(:action move_27_10_26_10
 :parameters ()
 :precondition (and (at_x27)(at_y10))
 :poss-precondition (and (bridge_26_10_27_10))
 :effect (and (not (at_x27)) (at_x26))
)

(:action move_27_10_28_10
 :parameters ()
 :precondition (and (at_x27)(at_y10))
 :poss-precondition (and (bridge_27_10_28_10))
 :effect (and (not (at_x27)) (at_x28))
)

(:action move_27_10_27_9
 :parameters ()
 :precondition (and (at_x27)(at_y10))
 :poss-precondition (and (bridge_27_9_27_10))
 :effect (and (not (at_y10)) (at_y9))
)

(:action move_27_10_27_11
 :parameters ()
 :precondition (and (at_x27)(at_y10))
 :poss-precondition (and (bridge_27_10_27_11))
 :effect (and (not (at_y10)) (at_y11))
)

(:action move_27_11_26_11
 :parameters ()
 :precondition (and (at_x27)(at_y11))
 :poss-precondition (and (bridge_26_11_27_11))
 :effect (and (not (at_x27)) (at_x26))
)

(:action move_27_11_28_11
 :parameters ()
 :precondition (and (at_x27)(at_y11))
 :poss-precondition (and (bridge_27_11_28_11))
 :effect (and (not (at_x27)) (at_x28))
)

(:action move_27_11_27_10
 :parameters ()
 :precondition (and (at_x27)(at_y11))
 :poss-precondition (and (bridge_27_10_27_11))
 :effect (and (not (at_y11)) (at_y10))
)

(:action move_27_11_27_12
 :parameters ()
 :precondition (and (at_x27)(at_y11))
 :poss-precondition (and (bridge_27_11_27_12))
 :effect (and (not (at_y11)) (at_y12))
)

(:action move_27_12_26_12
 :parameters ()
 :precondition (and (at_x27)(at_y12))
 :poss-precondition (and (bridge_26_12_27_12))
 :effect (and (not (at_x27)) (at_x26))
)

(:action move_27_12_28_12
 :parameters ()
 :precondition (and (at_x27)(at_y12))
 :poss-precondition (and (bridge_27_12_28_12))
 :effect (and (not (at_x27)) (at_x28))
)

(:action move_27_12_27_11
 :parameters ()
 :precondition (and (at_x27)(at_y12))
 :poss-precondition (and (bridge_27_11_27_12))
 :effect (and (not (at_y12)) (at_y11))
)

(:action move_27_12_27_13
 :parameters ()
 :precondition (and (at_x27)(at_y12))
 :poss-precondition (and (bridge_27_12_27_13))
 :effect (and (not (at_y12)) (at_y13))
)

(:action move_27_13_26_13
 :parameters ()
 :precondition (and (at_x27)(at_y13))
 :poss-precondition (and (bridge_26_13_27_13))
 :effect (and (not (at_x27)) (at_x26))
)

(:action move_27_13_28_13
 :parameters ()
 :precondition (and (at_x27)(at_y13))
 :poss-precondition (and (bridge_27_13_28_13))
 :effect (and (not (at_x27)) (at_x28))
)

(:action move_27_13_27_12
 :parameters ()
 :precondition (and (at_x27)(at_y13))
 :poss-precondition (and (bridge_27_12_27_13))
 :effect (and (not (at_y13)) (at_y12))
)

(:action move_27_13_27_14
 :parameters ()
 :precondition (and (at_x27)(at_y13))
 :poss-precondition (and (bridge_27_13_27_14))
 :effect (and (not (at_y13)) (at_y14))
)

(:action move_27_14_26_14
 :parameters ()
 :precondition (and (at_x27)(at_y14))
 :poss-precondition (and (bridge_26_14_27_14))
 :effect (and (not (at_x27)) (at_x26))
)

(:action move_27_14_28_14
 :parameters ()
 :precondition (and (at_x27)(at_y14))
 :poss-precondition (and (bridge_27_14_28_14))
 :effect (and (not (at_x27)) (at_x28))
)

(:action move_27_14_27_13
 :parameters ()
 :precondition (and (at_x27)(at_y14))
 :poss-precondition (and (bridge_27_13_27_14))
 :effect (and (not (at_y14)) (at_y13))
)

(:action move_27_14_27_15
 :parameters ()
 :precondition (and (at_x27)(at_y14))
 :poss-precondition (and (bridge_27_14_27_15))
 :effect (and (not (at_y14)) (at_y15))
)

(:action move_27_15_26_15
 :parameters ()
 :precondition (and (at_x27)(at_y15))
 :poss-precondition (and (bridge_26_15_27_15))
 :effect (and (not (at_x27)) (at_x26))
)

(:action move_27_15_28_15
 :parameters ()
 :precondition (and (at_x27)(at_y15))
 :poss-precondition (and (bridge_27_15_28_15))
 :effect (and (not (at_x27)) (at_x28))
)

(:action move_27_15_27_14
 :parameters ()
 :precondition (and (at_x27)(at_y15))
 :poss-precondition (and (bridge_27_14_27_15))
 :effect (and (not (at_y15)) (at_y14))
)

(:action move_27_15_27_16
 :parameters ()
 :precondition (and (at_x27)(at_y15))
 :poss-precondition (and (bridge_27_15_27_16))
 :effect (and (not (at_y15)) (at_y16))
)

(:action move_27_16_26_16
 :parameters ()
 :precondition (and (at_x27)(at_y16))
 :poss-precondition (and (bridge_26_16_27_16))
 :effect (and (not (at_x27)) (at_x26))
)

(:action move_27_16_28_16
 :parameters ()
 :precondition (and (at_x27)(at_y16))
 :poss-precondition (and (bridge_27_16_28_16))
 :effect (and (not (at_x27)) (at_x28))
)

(:action move_27_16_27_15
 :parameters ()
 :precondition (and (at_x27)(at_y16))
 :poss-precondition (and (bridge_27_15_27_16))
 :effect (and (not (at_y16)) (at_y15))
)

(:action move_27_16_27_17
 :parameters ()
 :precondition (and (at_x27)(at_y16))
 :poss-precondition (and (bridge_27_16_27_17))
 :effect (and (not (at_y16)) (at_y17))
)

(:action move_27_17_26_17
 :parameters ()
 :precondition (and (at_x27)(at_y17))
 :poss-precondition (and (bridge_26_17_27_17))
 :effect (and (not (at_x27)) (at_x26))
)

(:action move_27_17_28_17
 :parameters ()
 :precondition (and (at_x27)(at_y17))
 :poss-precondition (and (bridge_27_17_28_17))
 :effect (and (not (at_x27)) (at_x28))
)

(:action move_27_17_27_16
 :parameters ()
 :precondition (and (at_x27)(at_y17))
 :poss-precondition (and (bridge_27_16_27_17))
 :effect (and (not (at_y17)) (at_y16))
)

(:action move_27_17_27_18
 :parameters ()
 :precondition (and (at_x27)(at_y17))
 :poss-precondition (and (bridge_27_17_27_18))
 :effect (and (not (at_y17)) (at_y18))
)

(:action move_27_18_26_18
 :parameters ()
 :precondition (and (at_x27)(at_y18))
 :poss-precondition (and (bridge_26_18_27_18))
 :effect (and (not (at_x27)) (at_x26))
)

(:action move_27_18_28_18
 :parameters ()
 :precondition (and (at_x27)(at_y18))
 :poss-precondition (and (bridge_27_18_28_18))
 :effect (and (not (at_x27)) (at_x28))
)

(:action move_27_18_27_17
 :parameters ()
 :precondition (and (at_x27)(at_y18))
 :poss-precondition (and (bridge_27_17_27_18))
 :effect (and (not (at_y18)) (at_y17))
)

(:action move_27_18_27_19
 :parameters ()
 :precondition (and (at_x27)(at_y18))
 :poss-precondition (and (bridge_27_18_27_19))
 :effect (and (not (at_y18)) (at_y19))
)

(:action move_27_19_26_19
 :parameters ()
 :precondition (and (at_x27)(at_y19))
 :poss-precondition (and (bridge_26_19_27_19))
 :effect (and (not (at_x27)) (at_x26))
)

(:action move_27_19_28_19
 :parameters ()
 :precondition (and (at_x27)(at_y19))
 :poss-precondition (and (bridge_27_19_28_19))
 :effect (and (not (at_x27)) (at_x28))
)

(:action move_27_19_27_18
 :parameters ()
 :precondition (and (at_x27)(at_y19))
 :poss-precondition (and (bridge_27_18_27_19))
 :effect (and (not (at_y19)) (at_y18))
)

(:action move_27_19_27_20
 :parameters ()
 :precondition (and (at_x27)(at_y19))
 :poss-precondition (and (bridge_27_19_27_20))
 :effect (and (not (at_y19)) (at_y20))
)

(:action move_27_20_26_20
 :parameters ()
 :precondition (and (at_x27)(at_y20))
 :poss-precondition (and (bridge_26_20_27_20))
 :effect (and (not (at_x27)) (at_x26))
)

(:action move_27_20_28_20
 :parameters ()
 :precondition (and (at_x27)(at_y20))
 :poss-precondition (and (bridge_27_20_28_20))
 :effect (and (not (at_x27)) (at_x28))
)

(:action move_27_20_27_19
 :parameters ()
 :precondition (and (at_x27)(at_y20))
 :poss-precondition (and (bridge_27_19_27_20))
 :effect (and (not (at_y20)) (at_y19))
)

(:action move_27_20_27_21
 :parameters ()
 :precondition (and (at_x27)(at_y20))
 :poss-precondition (and (bridge_27_20_27_21))
 :effect (and (not (at_y20)) (at_y21))
)

(:action move_27_21_26_21
 :parameters ()
 :precondition (and (at_x27)(at_y21))
 :poss-precondition (and (bridge_26_21_27_21))
 :effect (and (not (at_x27)) (at_x26))
)

(:action move_27_21_28_21
 :parameters ()
 :precondition (and (at_x27)(at_y21))
 :poss-precondition (and (bridge_27_21_28_21))
 :effect (and (not (at_x27)) (at_x28))
)

(:action move_27_21_27_20
 :parameters ()
 :precondition (and (at_x27)(at_y21))
 :poss-precondition (and (bridge_27_20_27_21))
 :effect (and (not (at_y21)) (at_y20))
)

(:action move_27_21_27_22
 :parameters ()
 :precondition (and (at_x27)(at_y21))
 :poss-precondition (and (bridge_27_21_27_22))
 :effect (and (not (at_y21)) (at_y22))
)

(:action move_27_22_26_22
 :parameters ()
 :precondition (and (at_x27)(at_y22))
 :poss-precondition (and (bridge_26_22_27_22))
 :effect (and (not (at_x27)) (at_x26))
)

(:action move_27_22_28_22
 :parameters ()
 :precondition (and (at_x27)(at_y22))
 :poss-precondition (and (bridge_27_22_28_22))
 :effect (and (not (at_x27)) (at_x28))
)

(:action move_27_22_27_21
 :parameters ()
 :precondition (and (at_x27)(at_y22))
 :poss-precondition (and (bridge_27_21_27_22))
 :effect (and (not (at_y22)) (at_y21))
)

(:action move_27_22_27_23
 :parameters ()
 :precondition (and (at_x27)(at_y22))
 :poss-precondition (and (bridge_27_22_27_23))
 :effect (and (not (at_y22)) (at_y23))
)

(:action move_27_23_26_23
 :parameters ()
 :precondition (and (at_x27)(at_y23))
 :poss-precondition (and (bridge_26_23_27_23))
 :effect (and (not (at_x27)) (at_x26))
)

(:action move_27_23_28_23
 :parameters ()
 :precondition (and (at_x27)(at_y23))
 :poss-precondition (and (bridge_27_23_28_23))
 :effect (and (not (at_x27)) (at_x28))
)

(:action move_27_23_27_22
 :parameters ()
 :precondition (and (at_x27)(at_y23))
 :poss-precondition (and (bridge_27_22_27_23))
 :effect (and (not (at_y23)) (at_y22))
)

(:action move_27_23_27_24
 :parameters ()
 :precondition (and (at_x27)(at_y23))
 :poss-precondition (and (bridge_27_23_27_24))
 :effect (and (not (at_y23)) (at_y24))
)

(:action move_27_24_26_24
 :parameters ()
 :precondition (and (at_x27)(at_y24))
 :poss-precondition (and (bridge_26_24_27_24))
 :effect (and (not (at_x27)) (at_x26))
)

(:action move_27_24_28_24
 :parameters ()
 :precondition (and (at_x27)(at_y24))
 :poss-precondition (and (bridge_27_24_28_24))
 :effect (and (not (at_x27)) (at_x28))
)

(:action move_27_24_27_23
 :parameters ()
 :precondition (and (at_x27)(at_y24))
 :poss-precondition (and (bridge_27_23_27_24))
 :effect (and (not (at_y24)) (at_y23))
)

(:action move_27_24_27_25
 :parameters ()
 :precondition (and (at_x27)(at_y24))
 :poss-precondition (and (bridge_27_24_27_25))
 :effect (and (not (at_y24)) (at_y25))
)

(:action move_27_25_26_25
 :parameters ()
 :precondition (and (at_x27)(at_y25))
 :poss-precondition (and (bridge_26_25_27_25))
 :effect (and (not (at_x27)) (at_x26))
)

(:action move_27_25_28_25
 :parameters ()
 :precondition (and (at_x27)(at_y25))
 :poss-precondition (and (bridge_27_25_28_25))
 :effect (and (not (at_x27)) (at_x28))
)

(:action move_27_25_27_24
 :parameters ()
 :precondition (and (at_x27)(at_y25))
 :poss-precondition (and (bridge_27_24_27_25))
 :effect (and (not (at_y25)) (at_y24))
)

(:action move_27_25_27_26
 :parameters ()
 :precondition (and (at_x27)(at_y25))
 :poss-precondition (and (bridge_27_25_27_26))
 :effect (and (not (at_y25)) (at_y26))
)

(:action move_27_26_26_26
 :parameters ()
 :precondition (and (at_x27)(at_y26))
 :poss-precondition (and (bridge_26_26_27_26))
 :effect (and (not (at_x27)) (at_x26))
)

(:action move_27_26_28_26
 :parameters ()
 :precondition (and (at_x27)(at_y26))
 :poss-precondition (and (bridge_27_26_28_26))
 :effect (and (not (at_x27)) (at_x28))
)

(:action move_27_26_27_25
 :parameters ()
 :precondition (and (at_x27)(at_y26))
 :poss-precondition (and (bridge_27_25_27_26))
 :effect (and (not (at_y26)) (at_y25))
)

(:action move_27_26_27_27
 :parameters ()
 :precondition (and (at_x27)(at_y26))
 :poss-precondition (and (bridge_27_26_27_27))
 :effect (and (not (at_y26)) (at_y27))
)

(:action move_27_27_26_27
 :parameters ()
 :precondition (and (at_x27)(at_y27))
 :poss-precondition (and (bridge_26_27_27_27))
 :effect (and (not (at_x27)) (at_x26))
)

(:action move_27_27_28_27
 :parameters ()
 :precondition (and (at_x27)(at_y27))
 :poss-precondition (and (bridge_27_27_28_27))
 :effect (and (not (at_x27)) (at_x28))
)

(:action move_27_27_27_26
 :parameters ()
 :precondition (and (at_x27)(at_y27))
 :poss-precondition (and (bridge_27_26_27_27))
 :effect (and (not (at_y27)) (at_y26))
)

(:action move_27_27_27_28
 :parameters ()
 :precondition (and (at_x27)(at_y27))
 :poss-precondition (and (bridge_27_27_27_28))
 :effect (and (not (at_y27)) (at_y28))
)

(:action move_27_28_26_28
 :parameters ()
 :precondition (and (at_x27)(at_y28))
 :poss-precondition (and (bridge_26_28_27_28))
 :effect (and (not (at_x27)) (at_x26))
)

(:action move_27_28_28_28
 :parameters ()
 :precondition (and (at_x27)(at_y28))
 :poss-precondition (and (bridge_27_28_28_28))
 :effect (and (not (at_x27)) (at_x28))
)

(:action move_27_28_27_27
 :parameters ()
 :precondition (and (at_x27)(at_y28))
 :poss-precondition (and (bridge_27_27_27_28))
 :effect (and (not (at_y28)) (at_y27))
)

(:action move_27_28_27_29
 :parameters ()
 :precondition (and (at_x27)(at_y28))
 :poss-precondition (and (bridge_27_28_27_29))
 :effect (and (not (at_y28)) (at_y29))
)

(:action move_27_29_26_29
 :parameters ()
 :precondition (and (at_x27)(at_y29))
 :poss-precondition (and (bridge_26_29_27_29))
 :effect (and (not (at_x27)) (at_x26))
)

(:action move_27_29_28_29
 :parameters ()
 :precondition (and (at_x27)(at_y29))
 :poss-precondition (and (bridge_27_29_28_29))
 :effect (and (not (at_x27)) (at_x28))
)

(:action move_27_29_27_28
 :parameters ()
 :precondition (and (at_x27)(at_y29))
 :poss-precondition (and (bridge_27_28_27_29))
 :effect (and (not (at_y29)) (at_y28))
)

(:action move_27_29_27_30
 :parameters ()
 :precondition (and (at_x27)(at_y29))
 :poss-precondition (and (bridge_27_29_27_30))
 :effect (and (not (at_y29)) (at_y30))
)

(:action move_27_30_26_30
 :parameters ()
 :precondition (and (at_x27)(at_y30))
 :poss-precondition (and (bridge_26_30_27_30))
 :effect (and (not (at_x27)) (at_x26))
)

(:action move_27_30_28_30
 :parameters ()
 :precondition (and (at_x27)(at_y30))
 :poss-precondition (and (bridge_27_30_28_30))
 :effect (and (not (at_x27)) (at_x28))
)

(:action move_27_30_27_29
 :parameters ()
 :precondition (and (at_x27)(at_y30))
 :poss-precondition (and (bridge_27_29_27_30))
 :effect (and (not (at_y30)) (at_y29))
)

(:action move_27_30_27_31
 :parameters ()
 :precondition (and (at_x27)(at_y30))
 :poss-precondition (and (bridge_27_30_27_31))
 :effect (and (not (at_y30)) (at_y31))
)

(:action move_27_31_26_31
 :parameters ()
 :precondition (and (at_x27)(at_y31))
 :poss-precondition (and (bridge_26_31_27_31))
 :effect (and (not (at_x27)) (at_x26))
)

(:action move_27_31_28_31
 :parameters ()
 :precondition (and (at_x27)(at_y31))
 :poss-precondition (and (bridge_27_31_28_31))
 :effect (and (not (at_x27)) (at_x28))
)

(:action move_27_31_27_30
 :parameters ()
 :precondition (and (at_x27)(at_y31))
 :poss-precondition (and (bridge_27_30_27_31))
 :effect (and (not (at_y31)) (at_y30))
)

(:action move_28_0_27_0
 :parameters ()
 :precondition (and (at_x28)(at_y0))
 :poss-precondition (and (bridge_27_0_28_0))
 :effect (and (not (at_x28)) (at_x27))
)

(:action move_28_0_29_0
 :parameters ()
 :precondition (and (at_x28)(at_y0))
 :poss-precondition (and (bridge_28_0_29_0))
 :effect (and (not (at_x28)) (at_x29))
)

(:action move_28_0_28_1
 :parameters ()
 :precondition (and (at_x28)(at_y0))
 :poss-precondition (and (bridge_28_0_28_1))
 :effect (and (not (at_y0)) (at_y1))
)

(:action move_28_1_27_1
 :parameters ()
 :precondition (and (at_x28)(at_y1))
 :poss-precondition (and (bridge_27_1_28_1))
 :effect (and (not (at_x28)) (at_x27))
)

(:action move_28_1_29_1
 :parameters ()
 :precondition (and (at_x28)(at_y1))
 :poss-precondition (and (bridge_28_1_29_1))
 :effect (and (not (at_x28)) (at_x29))
)

(:action move_28_1_28_0
 :parameters ()
 :precondition (and (at_x28)(at_y1))
 :poss-precondition (and (bridge_28_0_28_1))
 :effect (and (not (at_y1)) (at_y0))
)

(:action move_28_1_28_2
 :parameters ()
 :precondition (and (at_x28)(at_y1))
 :poss-precondition (and (bridge_28_1_28_2))
 :effect (and (not (at_y1)) (at_y2))
)

(:action move_28_2_27_2
 :parameters ()
 :precondition (and (at_x28)(at_y2))
 :poss-precondition (and (bridge_27_2_28_2))
 :effect (and (not (at_x28)) (at_x27))
)

(:action move_28_2_29_2
 :parameters ()
 :precondition (and (at_x28)(at_y2))
 :poss-precondition (and (bridge_28_2_29_2))
 :effect (and (not (at_x28)) (at_x29))
)

(:action move_28_2_28_1
 :parameters ()
 :precondition (and (at_x28)(at_y2))
 :poss-precondition (and (bridge_28_1_28_2))
 :effect (and (not (at_y2)) (at_y1))
)

(:action move_28_2_28_3
 :parameters ()
 :precondition (and (at_x28)(at_y2))
 :poss-precondition (and (bridge_28_2_28_3))
 :effect (and (not (at_y2)) (at_y3))
)

(:action move_28_3_27_3
 :parameters ()
 :precondition (and (at_x28)(at_y3))
 :poss-precondition (and (bridge_27_3_28_3))
 :effect (and (not (at_x28)) (at_x27))
)

(:action move_28_3_29_3
 :parameters ()
 :precondition (and (at_x28)(at_y3))
 :poss-precondition (and (bridge_28_3_29_3))
 :effect (and (not (at_x28)) (at_x29))
)

(:action move_28_3_28_2
 :parameters ()
 :precondition (and (at_x28)(at_y3))
 :poss-precondition (and (bridge_28_2_28_3))
 :effect (and (not (at_y3)) (at_y2))
)

(:action move_28_3_28_4
 :parameters ()
 :precondition (and (at_x28)(at_y3))
 :poss-precondition (and (bridge_28_3_28_4))
 :effect (and (not (at_y3)) (at_y4))
)

(:action move_28_4_27_4
 :parameters ()
 :precondition (and (at_x28)(at_y4))
 :poss-precondition (and (bridge_27_4_28_4))
 :effect (and (not (at_x28)) (at_x27))
)

(:action move_28_4_29_4
 :parameters ()
 :precondition (and (at_x28)(at_y4))
 :poss-precondition (and (bridge_28_4_29_4))
 :effect (and (not (at_x28)) (at_x29))
)

(:action move_28_4_28_3
 :parameters ()
 :precondition (and (at_x28)(at_y4))
 :poss-precondition (and (bridge_28_3_28_4))
 :effect (and (not (at_y4)) (at_y3))
)

(:action move_28_4_28_5
 :parameters ()
 :precondition (and (at_x28)(at_y4))
 :poss-precondition (and (bridge_28_4_28_5))
 :effect (and (not (at_y4)) (at_y5))
)

(:action move_28_5_27_5
 :parameters ()
 :precondition (and (at_x28)(at_y5))
 :poss-precondition (and (bridge_27_5_28_5))
 :effect (and (not (at_x28)) (at_x27))
)

(:action move_28_5_29_5
 :parameters ()
 :precondition (and (at_x28)(at_y5))
 :poss-precondition (and (bridge_28_5_29_5))
 :effect (and (not (at_x28)) (at_x29))
)

(:action move_28_5_28_4
 :parameters ()
 :precondition (and (at_x28)(at_y5))
 :poss-precondition (and (bridge_28_4_28_5))
 :effect (and (not (at_y5)) (at_y4))
)

(:action move_28_5_28_6
 :parameters ()
 :precondition (and (at_x28)(at_y5))
 :poss-precondition (and (bridge_28_5_28_6))
 :effect (and (not (at_y5)) (at_y6))
)

(:action move_28_6_27_6
 :parameters ()
 :precondition (and (at_x28)(at_y6))
 :poss-precondition (and (bridge_27_6_28_6))
 :effect (and (not (at_x28)) (at_x27))
)

(:action move_28_6_29_6
 :parameters ()
 :precondition (and (at_x28)(at_y6))
 :poss-precondition (and (bridge_28_6_29_6))
 :effect (and (not (at_x28)) (at_x29))
)

(:action move_28_6_28_5
 :parameters ()
 :precondition (and (at_x28)(at_y6))
 :poss-precondition (and (bridge_28_5_28_6))
 :effect (and (not (at_y6)) (at_y5))
)

(:action move_28_6_28_7
 :parameters ()
 :precondition (and (at_x28)(at_y6))
 :poss-precondition (and (bridge_28_6_28_7))
 :effect (and (not (at_y6)) (at_y7))
)

(:action move_28_7_27_7
 :parameters ()
 :precondition (and (at_x28)(at_y7))
 :poss-precondition (and (bridge_27_7_28_7))
 :effect (and (not (at_x28)) (at_x27))
)

(:action move_28_7_29_7
 :parameters ()
 :precondition (and (at_x28)(at_y7))
 :poss-precondition (and (bridge_28_7_29_7))
 :effect (and (not (at_x28)) (at_x29))
)

(:action move_28_7_28_6
 :parameters ()
 :precondition (and (at_x28)(at_y7))
 :poss-precondition (and (bridge_28_6_28_7))
 :effect (and (not (at_y7)) (at_y6))
)

(:action move_28_7_28_8
 :parameters ()
 :precondition (and (at_x28)(at_y7))
 :poss-precondition (and (bridge_28_7_28_8))
 :effect (and (not (at_y7)) (at_y8))
)

(:action move_28_8_27_8
 :parameters ()
 :precondition (and (at_x28)(at_y8))
 :poss-precondition (and (bridge_27_8_28_8))
 :effect (and (not (at_x28)) (at_x27))
)

(:action move_28_8_29_8
 :parameters ()
 :precondition (and (at_x28)(at_y8))
 :poss-precondition (and (bridge_28_8_29_8))
 :effect (and (not (at_x28)) (at_x29))
)

(:action move_28_8_28_7
 :parameters ()
 :precondition (and (at_x28)(at_y8))
 :poss-precondition (and (bridge_28_7_28_8))
 :effect (and (not (at_y8)) (at_y7))
)

(:action move_28_8_28_9
 :parameters ()
 :precondition (and (at_x28)(at_y8))
 :poss-precondition (and (bridge_28_8_28_9))
 :effect (and (not (at_y8)) (at_y9))
)

(:action move_28_9_27_9
 :parameters ()
 :precondition (and (at_x28)(at_y9))
 :poss-precondition (and (bridge_27_9_28_9))
 :effect (and (not (at_x28)) (at_x27))
)

(:action move_28_9_29_9
 :parameters ()
 :precondition (and (at_x28)(at_y9))
 :poss-precondition (and (bridge_28_9_29_9))
 :effect (and (not (at_x28)) (at_x29))
)

(:action move_28_9_28_8
 :parameters ()
 :precondition (and (at_x28)(at_y9))
 :poss-precondition (and (bridge_28_8_28_9))
 :effect (and (not (at_y9)) (at_y8))
)

(:action move_28_9_28_10
 :parameters ()
 :precondition (and (at_x28)(at_y9))
 :poss-precondition (and (bridge_28_9_28_10))
 :effect (and (not (at_y9)) (at_y10))
)

(:action move_28_10_27_10
 :parameters ()
 :precondition (and (at_x28)(at_y10))
 :poss-precondition (and (bridge_27_10_28_10))
 :effect (and (not (at_x28)) (at_x27))
)

(:action move_28_10_29_10
 :parameters ()
 :precondition (and (at_x28)(at_y10))
 :poss-precondition (and (bridge_28_10_29_10))
 :effect (and (not (at_x28)) (at_x29))
)

(:action move_28_10_28_9
 :parameters ()
 :precondition (and (at_x28)(at_y10))
 :poss-precondition (and (bridge_28_9_28_10))
 :effect (and (not (at_y10)) (at_y9))
)

(:action move_28_10_28_11
 :parameters ()
 :precondition (and (at_x28)(at_y10))
 :poss-precondition (and (bridge_28_10_28_11))
 :effect (and (not (at_y10)) (at_y11))
)

(:action move_28_11_27_11
 :parameters ()
 :precondition (and (at_x28)(at_y11))
 :poss-precondition (and (bridge_27_11_28_11))
 :effect (and (not (at_x28)) (at_x27))
)

(:action move_28_11_29_11
 :parameters ()
 :precondition (and (at_x28)(at_y11))
 :poss-precondition (and (bridge_28_11_29_11))
 :effect (and (not (at_x28)) (at_x29))
)

(:action move_28_11_28_10
 :parameters ()
 :precondition (and (at_x28)(at_y11))
 :poss-precondition (and (bridge_28_10_28_11))
 :effect (and (not (at_y11)) (at_y10))
)

(:action move_28_11_28_12
 :parameters ()
 :precondition (and (at_x28)(at_y11))
 :poss-precondition (and (bridge_28_11_28_12))
 :effect (and (not (at_y11)) (at_y12))
)

(:action move_28_12_27_12
 :parameters ()
 :precondition (and (at_x28)(at_y12))
 :poss-precondition (and (bridge_27_12_28_12))
 :effect (and (not (at_x28)) (at_x27))
)

(:action move_28_12_29_12
 :parameters ()
 :precondition (and (at_x28)(at_y12))
 :poss-precondition (and (bridge_28_12_29_12))
 :effect (and (not (at_x28)) (at_x29))
)

(:action move_28_12_28_11
 :parameters ()
 :precondition (and (at_x28)(at_y12))
 :poss-precondition (and (bridge_28_11_28_12))
 :effect (and (not (at_y12)) (at_y11))
)

(:action move_28_12_28_13
 :parameters ()
 :precondition (and (at_x28)(at_y12))
 :poss-precondition (and (bridge_28_12_28_13))
 :effect (and (not (at_y12)) (at_y13))
)

(:action move_28_13_27_13
 :parameters ()
 :precondition (and (at_x28)(at_y13))
 :poss-precondition (and (bridge_27_13_28_13))
 :effect (and (not (at_x28)) (at_x27))
)

(:action move_28_13_29_13
 :parameters ()
 :precondition (and (at_x28)(at_y13))
 :poss-precondition (and (bridge_28_13_29_13))
 :effect (and (not (at_x28)) (at_x29))
)

(:action move_28_13_28_12
 :parameters ()
 :precondition (and (at_x28)(at_y13))
 :poss-precondition (and (bridge_28_12_28_13))
 :effect (and (not (at_y13)) (at_y12))
)

(:action move_28_13_28_14
 :parameters ()
 :precondition (and (at_x28)(at_y13))
 :poss-precondition (and (bridge_28_13_28_14))
 :effect (and (not (at_y13)) (at_y14))
)

(:action move_28_14_27_14
 :parameters ()
 :precondition (and (at_x28)(at_y14))
 :poss-precondition (and (bridge_27_14_28_14))
 :effect (and (not (at_x28)) (at_x27))
)

(:action move_28_14_29_14
 :parameters ()
 :precondition (and (at_x28)(at_y14))
 :poss-precondition (and (bridge_28_14_29_14))
 :effect (and (not (at_x28)) (at_x29))
)

(:action move_28_14_28_13
 :parameters ()
 :precondition (and (at_x28)(at_y14))
 :poss-precondition (and (bridge_28_13_28_14))
 :effect (and (not (at_y14)) (at_y13))
)

(:action move_28_14_28_15
 :parameters ()
 :precondition (and (at_x28)(at_y14))
 :poss-precondition (and (bridge_28_14_28_15))
 :effect (and (not (at_y14)) (at_y15))
)

(:action move_28_15_27_15
 :parameters ()
 :precondition (and (at_x28)(at_y15))
 :poss-precondition (and (bridge_27_15_28_15))
 :effect (and (not (at_x28)) (at_x27))
)

(:action move_28_15_29_15
 :parameters ()
 :precondition (and (at_x28)(at_y15))
 :poss-precondition (and (bridge_28_15_29_15))
 :effect (and (not (at_x28)) (at_x29))
)

(:action move_28_15_28_14
 :parameters ()
 :precondition (and (at_x28)(at_y15))
 :poss-precondition (and (bridge_28_14_28_15))
 :effect (and (not (at_y15)) (at_y14))
)

(:action move_28_15_28_16
 :parameters ()
 :precondition (and (at_x28)(at_y15))
 :poss-precondition (and (bridge_28_15_28_16))
 :effect (and (not (at_y15)) (at_y16))
)

(:action move_28_16_27_16
 :parameters ()
 :precondition (and (at_x28)(at_y16))
 :poss-precondition (and (bridge_27_16_28_16))
 :effect (and (not (at_x28)) (at_x27))
)

(:action move_28_16_29_16
 :parameters ()
 :precondition (and (at_x28)(at_y16))
 :poss-precondition (and (bridge_28_16_29_16))
 :effect (and (not (at_x28)) (at_x29))
)

(:action move_28_16_28_15
 :parameters ()
 :precondition (and (at_x28)(at_y16))
 :poss-precondition (and (bridge_28_15_28_16))
 :effect (and (not (at_y16)) (at_y15))
)

(:action move_28_16_28_17
 :parameters ()
 :precondition (and (at_x28)(at_y16))
 :poss-precondition (and (bridge_28_16_28_17))
 :effect (and (not (at_y16)) (at_y17))
)

(:action move_28_17_27_17
 :parameters ()
 :precondition (and (at_x28)(at_y17))
 :poss-precondition (and (bridge_27_17_28_17))
 :effect (and (not (at_x28)) (at_x27))
)

(:action move_28_17_29_17
 :parameters ()
 :precondition (and (at_x28)(at_y17))
 :poss-precondition (and (bridge_28_17_29_17))
 :effect (and (not (at_x28)) (at_x29))
)

(:action move_28_17_28_16
 :parameters ()
 :precondition (and (at_x28)(at_y17))
 :poss-precondition (and (bridge_28_16_28_17))
 :effect (and (not (at_y17)) (at_y16))
)

(:action move_28_17_28_18
 :parameters ()
 :precondition (and (at_x28)(at_y17))
 :poss-precondition (and (bridge_28_17_28_18))
 :effect (and (not (at_y17)) (at_y18))
)

(:action move_28_18_27_18
 :parameters ()
 :precondition (and (at_x28)(at_y18))
 :poss-precondition (and (bridge_27_18_28_18))
 :effect (and (not (at_x28)) (at_x27))
)

(:action move_28_18_29_18
 :parameters ()
 :precondition (and (at_x28)(at_y18))
 :poss-precondition (and (bridge_28_18_29_18))
 :effect (and (not (at_x28)) (at_x29))
)

(:action move_28_18_28_17
 :parameters ()
 :precondition (and (at_x28)(at_y18))
 :poss-precondition (and (bridge_28_17_28_18))
 :effect (and (not (at_y18)) (at_y17))
)

(:action move_28_18_28_19
 :parameters ()
 :precondition (and (at_x28)(at_y18))
 :poss-precondition (and (bridge_28_18_28_19))
 :effect (and (not (at_y18)) (at_y19))
)

(:action move_28_19_27_19
 :parameters ()
 :precondition (and (at_x28)(at_y19))
 :poss-precondition (and (bridge_27_19_28_19))
 :effect (and (not (at_x28)) (at_x27))
)

(:action move_28_19_29_19
 :parameters ()
 :precondition (and (at_x28)(at_y19))
 :poss-precondition (and (bridge_28_19_29_19))
 :effect (and (not (at_x28)) (at_x29))
)

(:action move_28_19_28_18
 :parameters ()
 :precondition (and (at_x28)(at_y19))
 :poss-precondition (and (bridge_28_18_28_19))
 :effect (and (not (at_y19)) (at_y18))
)

(:action move_28_19_28_20
 :parameters ()
 :precondition (and (at_x28)(at_y19))
 :poss-precondition (and (bridge_28_19_28_20))
 :effect (and (not (at_y19)) (at_y20))
)

(:action move_28_20_27_20
 :parameters ()
 :precondition (and (at_x28)(at_y20))
 :poss-precondition (and (bridge_27_20_28_20))
 :effect (and (not (at_x28)) (at_x27))
)

(:action move_28_20_29_20
 :parameters ()
 :precondition (and (at_x28)(at_y20))
 :poss-precondition (and (bridge_28_20_29_20))
 :effect (and (not (at_x28)) (at_x29))
)

(:action move_28_20_28_19
 :parameters ()
 :precondition (and (at_x28)(at_y20))
 :poss-precondition (and (bridge_28_19_28_20))
 :effect (and (not (at_y20)) (at_y19))
)

(:action move_28_20_28_21
 :parameters ()
 :precondition (and (at_x28)(at_y20))
 :poss-precondition (and (bridge_28_20_28_21))
 :effect (and (not (at_y20)) (at_y21))
)

(:action move_28_21_27_21
 :parameters ()
 :precondition (and (at_x28)(at_y21))
 :poss-precondition (and (bridge_27_21_28_21))
 :effect (and (not (at_x28)) (at_x27))
)

(:action move_28_21_29_21
 :parameters ()
 :precondition (and (at_x28)(at_y21))
 :poss-precondition (and (bridge_28_21_29_21))
 :effect (and (not (at_x28)) (at_x29))
)

(:action move_28_21_28_20
 :parameters ()
 :precondition (and (at_x28)(at_y21))
 :poss-precondition (and (bridge_28_20_28_21))
 :effect (and (not (at_y21)) (at_y20))
)

(:action move_28_21_28_22
 :parameters ()
 :precondition (and (at_x28)(at_y21))
 :poss-precondition (and (bridge_28_21_28_22))
 :effect (and (not (at_y21)) (at_y22))
)

(:action move_28_22_27_22
 :parameters ()
 :precondition (and (at_x28)(at_y22))
 :poss-precondition (and (bridge_27_22_28_22))
 :effect (and (not (at_x28)) (at_x27))
)

(:action move_28_22_29_22
 :parameters ()
 :precondition (and (at_x28)(at_y22))
 :poss-precondition (and (bridge_28_22_29_22))
 :effect (and (not (at_x28)) (at_x29))
)

(:action move_28_22_28_21
 :parameters ()
 :precondition (and (at_x28)(at_y22))
 :poss-precondition (and (bridge_28_21_28_22))
 :effect (and (not (at_y22)) (at_y21))
)

(:action move_28_22_28_23
 :parameters ()
 :precondition (and (at_x28)(at_y22))
 :poss-precondition (and (bridge_28_22_28_23))
 :effect (and (not (at_y22)) (at_y23))
)

(:action move_28_23_27_23
 :parameters ()
 :precondition (and (at_x28)(at_y23))
 :poss-precondition (and (bridge_27_23_28_23))
 :effect (and (not (at_x28)) (at_x27))
)

(:action move_28_23_29_23
 :parameters ()
 :precondition (and (at_x28)(at_y23))
 :poss-precondition (and (bridge_28_23_29_23))
 :effect (and (not (at_x28)) (at_x29))
)

(:action move_28_23_28_22
 :parameters ()
 :precondition (and (at_x28)(at_y23))
 :poss-precondition (and (bridge_28_22_28_23))
 :effect (and (not (at_y23)) (at_y22))
)

(:action move_28_23_28_24
 :parameters ()
 :precondition (and (at_x28)(at_y23))
 :poss-precondition (and (bridge_28_23_28_24))
 :effect (and (not (at_y23)) (at_y24))
)

(:action move_28_24_27_24
 :parameters ()
 :precondition (and (at_x28)(at_y24))
 :poss-precondition (and (bridge_27_24_28_24))
 :effect (and (not (at_x28)) (at_x27))
)

(:action move_28_24_29_24
 :parameters ()
 :precondition (and (at_x28)(at_y24))
 :poss-precondition (and (bridge_28_24_29_24))
 :effect (and (not (at_x28)) (at_x29))
)

(:action move_28_24_28_23
 :parameters ()
 :precondition (and (at_x28)(at_y24))
 :poss-precondition (and (bridge_28_23_28_24))
 :effect (and (not (at_y24)) (at_y23))
)

(:action move_28_24_28_25
 :parameters ()
 :precondition (and (at_x28)(at_y24))
 :poss-precondition (and (bridge_28_24_28_25))
 :effect (and (not (at_y24)) (at_y25))
)

(:action move_28_25_27_25
 :parameters ()
 :precondition (and (at_x28)(at_y25))
 :poss-precondition (and (bridge_27_25_28_25))
 :effect (and (not (at_x28)) (at_x27))
)

(:action move_28_25_29_25
 :parameters ()
 :precondition (and (at_x28)(at_y25))
 :poss-precondition (and (bridge_28_25_29_25))
 :effect (and (not (at_x28)) (at_x29))
)

(:action move_28_25_28_24
 :parameters ()
 :precondition (and (at_x28)(at_y25))
 :poss-precondition (and (bridge_28_24_28_25))
 :effect (and (not (at_y25)) (at_y24))
)

(:action move_28_25_28_26
 :parameters ()
 :precondition (and (at_x28)(at_y25))
 :poss-precondition (and (bridge_28_25_28_26))
 :effect (and (not (at_y25)) (at_y26))
)

(:action move_28_26_27_26
 :parameters ()
 :precondition (and (at_x28)(at_y26))
 :poss-precondition (and (bridge_27_26_28_26))
 :effect (and (not (at_x28)) (at_x27))
)

(:action move_28_26_29_26
 :parameters ()
 :precondition (and (at_x28)(at_y26))
 :poss-precondition (and (bridge_28_26_29_26))
 :effect (and (not (at_x28)) (at_x29))
)

(:action move_28_26_28_25
 :parameters ()
 :precondition (and (at_x28)(at_y26))
 :poss-precondition (and (bridge_28_25_28_26))
 :effect (and (not (at_y26)) (at_y25))
)

(:action move_28_26_28_27
 :parameters ()
 :precondition (and (at_x28)(at_y26))
 :poss-precondition (and (bridge_28_26_28_27))
 :effect (and (not (at_y26)) (at_y27))
)

(:action move_28_27_27_27
 :parameters ()
 :precondition (and (at_x28)(at_y27))
 :poss-precondition (and (bridge_27_27_28_27))
 :effect (and (not (at_x28)) (at_x27))
)

(:action move_28_27_29_27
 :parameters ()
 :precondition (and (at_x28)(at_y27))
 :poss-precondition (and (bridge_28_27_29_27))
 :effect (and (not (at_x28)) (at_x29))
)

(:action move_28_27_28_26
 :parameters ()
 :precondition (and (at_x28)(at_y27))
 :poss-precondition (and (bridge_28_26_28_27))
 :effect (and (not (at_y27)) (at_y26))
)

(:action move_28_27_28_28
 :parameters ()
 :precondition (and (at_x28)(at_y27))
 :poss-precondition (and (bridge_28_27_28_28))
 :effect (and (not (at_y27)) (at_y28))
)

(:action move_28_28_27_28
 :parameters ()
 :precondition (and (at_x28)(at_y28))
 :poss-precondition (and (bridge_27_28_28_28))
 :effect (and (not (at_x28)) (at_x27))
)

(:action move_28_28_29_28
 :parameters ()
 :precondition (and (at_x28)(at_y28))
 :poss-precondition (and (bridge_28_28_29_28))
 :effect (and (not (at_x28)) (at_x29))
)

(:action move_28_28_28_27
 :parameters ()
 :precondition (and (at_x28)(at_y28))
 :poss-precondition (and (bridge_28_27_28_28))
 :effect (and (not (at_y28)) (at_y27))
)

(:action move_28_28_28_29
 :parameters ()
 :precondition (and (at_x28)(at_y28))
 :poss-precondition (and (bridge_28_28_28_29))
 :effect (and (not (at_y28)) (at_y29))
)

(:action move_28_29_27_29
 :parameters ()
 :precondition (and (at_x28)(at_y29))
 :poss-precondition (and (bridge_27_29_28_29))
 :effect (and (not (at_x28)) (at_x27))
)

(:action move_28_29_29_29
 :parameters ()
 :precondition (and (at_x28)(at_y29))
 :poss-precondition (and (bridge_28_29_29_29))
 :effect (and (not (at_x28)) (at_x29))
)

(:action move_28_29_28_28
 :parameters ()
 :precondition (and (at_x28)(at_y29))
 :poss-precondition (and (bridge_28_28_28_29))
 :effect (and (not (at_y29)) (at_y28))
)

(:action move_28_29_28_30
 :parameters ()
 :precondition (and (at_x28)(at_y29))
 :poss-precondition (and (bridge_28_29_28_30))
 :effect (and (not (at_y29)) (at_y30))
)

(:action move_28_30_27_30
 :parameters ()
 :precondition (and (at_x28)(at_y30))
 :poss-precondition (and (bridge_27_30_28_30))
 :effect (and (not (at_x28)) (at_x27))
)

(:action move_28_30_29_30
 :parameters ()
 :precondition (and (at_x28)(at_y30))
 :poss-precondition (and (bridge_28_30_29_30))
 :effect (and (not (at_x28)) (at_x29))
)

(:action move_28_30_28_29
 :parameters ()
 :precondition (and (at_x28)(at_y30))
 :poss-precondition (and (bridge_28_29_28_30))
 :effect (and (not (at_y30)) (at_y29))
)

(:action move_28_30_28_31
 :parameters ()
 :precondition (and (at_x28)(at_y30))
 :poss-precondition (and (bridge_28_30_28_31))
 :effect (and (not (at_y30)) (at_y31))
)

(:action move_28_31_27_31
 :parameters ()
 :precondition (and (at_x28)(at_y31))
 :poss-precondition (and (bridge_27_31_28_31))
 :effect (and (not (at_x28)) (at_x27))
)

(:action move_28_31_29_31
 :parameters ()
 :precondition (and (at_x28)(at_y31))
 :poss-precondition (and (bridge_28_31_29_31))
 :effect (and (not (at_x28)) (at_x29))
)

(:action move_28_31_28_30
 :parameters ()
 :precondition (and (at_x28)(at_y31))
 :poss-precondition (and (bridge_28_30_28_31))
 :effect (and (not (at_y31)) (at_y30))
)

(:action move_29_0_28_0
 :parameters ()
 :precondition (and (at_x29)(at_y0))
 :poss-precondition (and (bridge_28_0_29_0))
 :effect (and (not (at_x29)) (at_x28))
)

(:action move_29_0_30_0
 :parameters ()
 :precondition (and (at_x29)(at_y0))
 :poss-precondition (and (bridge_29_0_30_0))
 :effect (and (not (at_x29)) (at_x30))
)

(:action move_29_0_29_1
 :parameters ()
 :precondition (and (at_x29)(at_y0))
 :poss-precondition (and (bridge_29_0_29_1))
 :effect (and (not (at_y0)) (at_y1))
)

(:action move_29_1_28_1
 :parameters ()
 :precondition (and (at_x29)(at_y1))
 :poss-precondition (and (bridge_28_1_29_1))
 :effect (and (not (at_x29)) (at_x28))
)

(:action move_29_1_30_1
 :parameters ()
 :precondition (and (at_x29)(at_y1))
 :poss-precondition (and (bridge_29_1_30_1))
 :effect (and (not (at_x29)) (at_x30))
)

(:action move_29_1_29_0
 :parameters ()
 :precondition (and (at_x29)(at_y1))
 :poss-precondition (and (bridge_29_0_29_1))
 :effect (and (not (at_y1)) (at_y0))
)

(:action move_29_1_29_2
 :parameters ()
 :precondition (and (at_x29)(at_y1))
 :poss-precondition (and (bridge_29_1_29_2))
 :effect (and (not (at_y1)) (at_y2))
)

(:action move_29_2_28_2
 :parameters ()
 :precondition (and (at_x29)(at_y2))
 :poss-precondition (and (bridge_28_2_29_2))
 :effect (and (not (at_x29)) (at_x28))
)

(:action move_29_2_30_2
 :parameters ()
 :precondition (and (at_x29)(at_y2))
 :poss-precondition (and (bridge_29_2_30_2))
 :effect (and (not (at_x29)) (at_x30))
)

(:action move_29_2_29_1
 :parameters ()
 :precondition (and (at_x29)(at_y2))
 :poss-precondition (and (bridge_29_1_29_2))
 :effect (and (not (at_y2)) (at_y1))
)

(:action move_29_2_29_3
 :parameters ()
 :precondition (and (at_x29)(at_y2))
 :poss-precondition (and (bridge_29_2_29_3))
 :effect (and (not (at_y2)) (at_y3))
)

(:action move_29_3_28_3
 :parameters ()
 :precondition (and (at_x29)(at_y3))
 :poss-precondition (and (bridge_28_3_29_3))
 :effect (and (not (at_x29)) (at_x28))
)

(:action move_29_3_30_3
 :parameters ()
 :precondition (and (at_x29)(at_y3))
 :poss-precondition (and (bridge_29_3_30_3))
 :effect (and (not (at_x29)) (at_x30))
)

(:action move_29_3_29_2
 :parameters ()
 :precondition (and (at_x29)(at_y3))
 :poss-precondition (and (bridge_29_2_29_3))
 :effect (and (not (at_y3)) (at_y2))
)

(:action move_29_3_29_4
 :parameters ()
 :precondition (and (at_x29)(at_y3))
 :poss-precondition (and (bridge_29_3_29_4))
 :effect (and (not (at_y3)) (at_y4))
)

(:action move_29_4_28_4
 :parameters ()
 :precondition (and (at_x29)(at_y4))
 :poss-precondition (and (bridge_28_4_29_4))
 :effect (and (not (at_x29)) (at_x28))
)

(:action move_29_4_30_4
 :parameters ()
 :precondition (and (at_x29)(at_y4))
 :poss-precondition (and (bridge_29_4_30_4))
 :effect (and (not (at_x29)) (at_x30))
)

(:action move_29_4_29_3
 :parameters ()
 :precondition (and (at_x29)(at_y4))
 :poss-precondition (and (bridge_29_3_29_4))
 :effect (and (not (at_y4)) (at_y3))
)

(:action move_29_4_29_5
 :parameters ()
 :precondition (and (at_x29)(at_y4))
 :poss-precondition (and (bridge_29_4_29_5))
 :effect (and (not (at_y4)) (at_y5))
)

(:action move_29_5_28_5
 :parameters ()
 :precondition (and (at_x29)(at_y5))
 :poss-precondition (and (bridge_28_5_29_5))
 :effect (and (not (at_x29)) (at_x28))
)

(:action move_29_5_30_5
 :parameters ()
 :precondition (and (at_x29)(at_y5))
 :poss-precondition (and (bridge_29_5_30_5))
 :effect (and (not (at_x29)) (at_x30))
)

(:action move_29_5_29_4
 :parameters ()
 :precondition (and (at_x29)(at_y5))
 :poss-precondition (and (bridge_29_4_29_5))
 :effect (and (not (at_y5)) (at_y4))
)

(:action move_29_5_29_6
 :parameters ()
 :precondition (and (at_x29)(at_y5))
 :poss-precondition (and (bridge_29_5_29_6))
 :effect (and (not (at_y5)) (at_y6))
)

(:action move_29_6_28_6
 :parameters ()
 :precondition (and (at_x29)(at_y6))
 :poss-precondition (and (bridge_28_6_29_6))
 :effect (and (not (at_x29)) (at_x28))
)

(:action move_29_6_30_6
 :parameters ()
 :precondition (and (at_x29)(at_y6))
 :poss-precondition (and (bridge_29_6_30_6))
 :effect (and (not (at_x29)) (at_x30))
)

(:action move_29_6_29_5
 :parameters ()
 :precondition (and (at_x29)(at_y6))
 :poss-precondition (and (bridge_29_5_29_6))
 :effect (and (not (at_y6)) (at_y5))
)

(:action move_29_6_29_7
 :parameters ()
 :precondition (and (at_x29)(at_y6))
 :poss-precondition (and (bridge_29_6_29_7))
 :effect (and (not (at_y6)) (at_y7))
)

(:action move_29_7_28_7
 :parameters ()
 :precondition (and (at_x29)(at_y7))
 :poss-precondition (and (bridge_28_7_29_7))
 :effect (and (not (at_x29)) (at_x28))
)

(:action move_29_7_30_7
 :parameters ()
 :precondition (and (at_x29)(at_y7))
 :poss-precondition (and (bridge_29_7_30_7))
 :effect (and (not (at_x29)) (at_x30))
)

(:action move_29_7_29_6
 :parameters ()
 :precondition (and (at_x29)(at_y7))
 :poss-precondition (and (bridge_29_6_29_7))
 :effect (and (not (at_y7)) (at_y6))
)

(:action move_29_7_29_8
 :parameters ()
 :precondition (and (at_x29)(at_y7))
 :poss-precondition (and (bridge_29_7_29_8))
 :effect (and (not (at_y7)) (at_y8))
)

(:action move_29_8_28_8
 :parameters ()
 :precondition (and (at_x29)(at_y8))
 :poss-precondition (and (bridge_28_8_29_8))
 :effect (and (not (at_x29)) (at_x28))
)

(:action move_29_8_30_8
 :parameters ()
 :precondition (and (at_x29)(at_y8))
 :poss-precondition (and (bridge_29_8_30_8))
 :effect (and (not (at_x29)) (at_x30))
)

(:action move_29_8_29_7
 :parameters ()
 :precondition (and (at_x29)(at_y8))
 :poss-precondition (and (bridge_29_7_29_8))
 :effect (and (not (at_y8)) (at_y7))
)

(:action move_29_8_29_9
 :parameters ()
 :precondition (and (at_x29)(at_y8))
 :poss-precondition (and (bridge_29_8_29_9))
 :effect (and (not (at_y8)) (at_y9))
)

(:action move_29_9_28_9
 :parameters ()
 :precondition (and (at_x29)(at_y9))
 :poss-precondition (and (bridge_28_9_29_9))
 :effect (and (not (at_x29)) (at_x28))
)

(:action move_29_9_30_9
 :parameters ()
 :precondition (and (at_x29)(at_y9))
 :poss-precondition (and (bridge_29_9_30_9))
 :effect (and (not (at_x29)) (at_x30))
)

(:action move_29_9_29_8
 :parameters ()
 :precondition (and (at_x29)(at_y9))
 :poss-precondition (and (bridge_29_8_29_9))
 :effect (and (not (at_y9)) (at_y8))
)

(:action move_29_9_29_10
 :parameters ()
 :precondition (and (at_x29)(at_y9))
 :poss-precondition (and (bridge_29_9_29_10))
 :effect (and (not (at_y9)) (at_y10))
)

(:action move_29_10_28_10
 :parameters ()
 :precondition (and (at_x29)(at_y10))
 :poss-precondition (and (bridge_28_10_29_10))
 :effect (and (not (at_x29)) (at_x28))
)

(:action move_29_10_30_10
 :parameters ()
 :precondition (and (at_x29)(at_y10))
 :poss-precondition (and (bridge_29_10_30_10))
 :effect (and (not (at_x29)) (at_x30))
)

(:action move_29_10_29_9
 :parameters ()
 :precondition (and (at_x29)(at_y10))
 :poss-precondition (and (bridge_29_9_29_10))
 :effect (and (not (at_y10)) (at_y9))
)

(:action move_29_10_29_11
 :parameters ()
 :precondition (and (at_x29)(at_y10))
 :poss-precondition (and (bridge_29_10_29_11))
 :effect (and (not (at_y10)) (at_y11))
)

(:action move_29_11_28_11
 :parameters ()
 :precondition (and (at_x29)(at_y11))
 :poss-precondition (and (bridge_28_11_29_11))
 :effect (and (not (at_x29)) (at_x28))
)

(:action move_29_11_30_11
 :parameters ()
 :precondition (and (at_x29)(at_y11))
 :poss-precondition (and (bridge_29_11_30_11))
 :effect (and (not (at_x29)) (at_x30))
)

(:action move_29_11_29_10
 :parameters ()
 :precondition (and (at_x29)(at_y11))
 :poss-precondition (and (bridge_29_10_29_11))
 :effect (and (not (at_y11)) (at_y10))
)

(:action move_29_11_29_12
 :parameters ()
 :precondition (and (at_x29)(at_y11))
 :poss-precondition (and (bridge_29_11_29_12))
 :effect (and (not (at_y11)) (at_y12))
)

(:action move_29_12_28_12
 :parameters ()
 :precondition (and (at_x29)(at_y12))
 :poss-precondition (and (bridge_28_12_29_12))
 :effect (and (not (at_x29)) (at_x28))
)

(:action move_29_12_30_12
 :parameters ()
 :precondition (and (at_x29)(at_y12))
 :poss-precondition (and (bridge_29_12_30_12))
 :effect (and (not (at_x29)) (at_x30))
)

(:action move_29_12_29_11
 :parameters ()
 :precondition (and (at_x29)(at_y12))
 :poss-precondition (and (bridge_29_11_29_12))
 :effect (and (not (at_y12)) (at_y11))
)

(:action move_29_12_29_13
 :parameters ()
 :precondition (and (at_x29)(at_y12))
 :poss-precondition (and (bridge_29_12_29_13))
 :effect (and (not (at_y12)) (at_y13))
)

(:action move_29_13_28_13
 :parameters ()
 :precondition (and (at_x29)(at_y13))
 :poss-precondition (and (bridge_28_13_29_13))
 :effect (and (not (at_x29)) (at_x28))
)

(:action move_29_13_30_13
 :parameters ()
 :precondition (and (at_x29)(at_y13))
 :poss-precondition (and (bridge_29_13_30_13))
 :effect (and (not (at_x29)) (at_x30))
)

(:action move_29_13_29_12
 :parameters ()
 :precondition (and (at_x29)(at_y13))
 :poss-precondition (and (bridge_29_12_29_13))
 :effect (and (not (at_y13)) (at_y12))
)

(:action move_29_13_29_14
 :parameters ()
 :precondition (and (at_x29)(at_y13))
 :poss-precondition (and (bridge_29_13_29_14))
 :effect (and (not (at_y13)) (at_y14))
)

(:action move_29_14_28_14
 :parameters ()
 :precondition (and (at_x29)(at_y14))
 :poss-precondition (and (bridge_28_14_29_14))
 :effect (and (not (at_x29)) (at_x28))
)

(:action move_29_14_30_14
 :parameters ()
 :precondition (and (at_x29)(at_y14))
 :poss-precondition (and (bridge_29_14_30_14))
 :effect (and (not (at_x29)) (at_x30))
)

(:action move_29_14_29_13
 :parameters ()
 :precondition (and (at_x29)(at_y14))
 :poss-precondition (and (bridge_29_13_29_14))
 :effect (and (not (at_y14)) (at_y13))
)

(:action move_29_14_29_15
 :parameters ()
 :precondition (and (at_x29)(at_y14))
 :poss-precondition (and (bridge_29_14_29_15))
 :effect (and (not (at_y14)) (at_y15))
)

(:action move_29_15_28_15
 :parameters ()
 :precondition (and (at_x29)(at_y15))
 :poss-precondition (and (bridge_28_15_29_15))
 :effect (and (not (at_x29)) (at_x28))
)

(:action move_29_15_30_15
 :parameters ()
 :precondition (and (at_x29)(at_y15))
 :poss-precondition (and (bridge_29_15_30_15))
 :effect (and (not (at_x29)) (at_x30))
)

(:action move_29_15_29_14
 :parameters ()
 :precondition (and (at_x29)(at_y15))
 :poss-precondition (and (bridge_29_14_29_15))
 :effect (and (not (at_y15)) (at_y14))
)

(:action move_29_15_29_16
 :parameters ()
 :precondition (and (at_x29)(at_y15))
 :poss-precondition (and (bridge_29_15_29_16))
 :effect (and (not (at_y15)) (at_y16))
)

(:action move_29_16_28_16
 :parameters ()
 :precondition (and (at_x29)(at_y16))
 :poss-precondition (and (bridge_28_16_29_16))
 :effect (and (not (at_x29)) (at_x28))
)

(:action move_29_16_30_16
 :parameters ()
 :precondition (and (at_x29)(at_y16))
 :poss-precondition (and (bridge_29_16_30_16))
 :effect (and (not (at_x29)) (at_x30))
)

(:action move_29_16_29_15
 :parameters ()
 :precondition (and (at_x29)(at_y16))
 :poss-precondition (and (bridge_29_15_29_16))
 :effect (and (not (at_y16)) (at_y15))
)

(:action move_29_16_29_17
 :parameters ()
 :precondition (and (at_x29)(at_y16))
 :poss-precondition (and (bridge_29_16_29_17))
 :effect (and (not (at_y16)) (at_y17))
)

(:action move_29_17_28_17
 :parameters ()
 :precondition (and (at_x29)(at_y17))
 :poss-precondition (and (bridge_28_17_29_17))
 :effect (and (not (at_x29)) (at_x28))
)

(:action move_29_17_30_17
 :parameters ()
 :precondition (and (at_x29)(at_y17))
 :poss-precondition (and (bridge_29_17_30_17))
 :effect (and (not (at_x29)) (at_x30))
)

(:action move_29_17_29_16
 :parameters ()
 :precondition (and (at_x29)(at_y17))
 :poss-precondition (and (bridge_29_16_29_17))
 :effect (and (not (at_y17)) (at_y16))
)

(:action move_29_17_29_18
 :parameters ()
 :precondition (and (at_x29)(at_y17))
 :poss-precondition (and (bridge_29_17_29_18))
 :effect (and (not (at_y17)) (at_y18))
)

(:action move_29_18_28_18
 :parameters ()
 :precondition (and (at_x29)(at_y18))
 :poss-precondition (and (bridge_28_18_29_18))
 :effect (and (not (at_x29)) (at_x28))
)

(:action move_29_18_30_18
 :parameters ()
 :precondition (and (at_x29)(at_y18))
 :poss-precondition (and (bridge_29_18_30_18))
 :effect (and (not (at_x29)) (at_x30))
)

(:action move_29_18_29_17
 :parameters ()
 :precondition (and (at_x29)(at_y18))
 :poss-precondition (and (bridge_29_17_29_18))
 :effect (and (not (at_y18)) (at_y17))
)

(:action move_29_18_29_19
 :parameters ()
 :precondition (and (at_x29)(at_y18))
 :poss-precondition (and (bridge_29_18_29_19))
 :effect (and (not (at_y18)) (at_y19))
)

(:action move_29_19_28_19
 :parameters ()
 :precondition (and (at_x29)(at_y19))
 :poss-precondition (and (bridge_28_19_29_19))
 :effect (and (not (at_x29)) (at_x28))
)

(:action move_29_19_30_19
 :parameters ()
 :precondition (and (at_x29)(at_y19))
 :poss-precondition (and (bridge_29_19_30_19))
 :effect (and (not (at_x29)) (at_x30))
)

(:action move_29_19_29_18
 :parameters ()
 :precondition (and (at_x29)(at_y19))
 :poss-precondition (and (bridge_29_18_29_19))
 :effect (and (not (at_y19)) (at_y18))
)

(:action move_29_19_29_20
 :parameters ()
 :precondition (and (at_x29)(at_y19))
 :poss-precondition (and (bridge_29_19_29_20))
 :effect (and (not (at_y19)) (at_y20))
)

(:action move_29_20_28_20
 :parameters ()
 :precondition (and (at_x29)(at_y20))
 :poss-precondition (and (bridge_28_20_29_20))
 :effect (and (not (at_x29)) (at_x28))
)

(:action move_29_20_30_20
 :parameters ()
 :precondition (and (at_x29)(at_y20))
 :poss-precondition (and (bridge_29_20_30_20))
 :effect (and (not (at_x29)) (at_x30))
)

(:action move_29_20_29_19
 :parameters ()
 :precondition (and (at_x29)(at_y20))
 :poss-precondition (and (bridge_29_19_29_20))
 :effect (and (not (at_y20)) (at_y19))
)

(:action move_29_20_29_21
 :parameters ()
 :precondition (and (at_x29)(at_y20))
 :poss-precondition (and (bridge_29_20_29_21))
 :effect (and (not (at_y20)) (at_y21))
)

(:action move_29_21_28_21
 :parameters ()
 :precondition (and (at_x29)(at_y21))
 :poss-precondition (and (bridge_28_21_29_21))
 :effect (and (not (at_x29)) (at_x28))
)

(:action move_29_21_30_21
 :parameters ()
 :precondition (and (at_x29)(at_y21))
 :poss-precondition (and (bridge_29_21_30_21))
 :effect (and (not (at_x29)) (at_x30))
)

(:action move_29_21_29_20
 :parameters ()
 :precondition (and (at_x29)(at_y21))
 :poss-precondition (and (bridge_29_20_29_21))
 :effect (and (not (at_y21)) (at_y20))
)

(:action move_29_21_29_22
 :parameters ()
 :precondition (and (at_x29)(at_y21))
 :poss-precondition (and (bridge_29_21_29_22))
 :effect (and (not (at_y21)) (at_y22))
)

(:action move_29_22_28_22
 :parameters ()
 :precondition (and (at_x29)(at_y22))
 :poss-precondition (and (bridge_28_22_29_22))
 :effect (and (not (at_x29)) (at_x28))
)

(:action move_29_22_30_22
 :parameters ()
 :precondition (and (at_x29)(at_y22))
 :poss-precondition (and (bridge_29_22_30_22))
 :effect (and (not (at_x29)) (at_x30))
)

(:action move_29_22_29_21
 :parameters ()
 :precondition (and (at_x29)(at_y22))
 :poss-precondition (and (bridge_29_21_29_22))
 :effect (and (not (at_y22)) (at_y21))
)

(:action move_29_22_29_23
 :parameters ()
 :precondition (and (at_x29)(at_y22))
 :poss-precondition (and (bridge_29_22_29_23))
 :effect (and (not (at_y22)) (at_y23))
)

(:action move_29_23_28_23
 :parameters ()
 :precondition (and (at_x29)(at_y23))
 :poss-precondition (and (bridge_28_23_29_23))
 :effect (and (not (at_x29)) (at_x28))
)

(:action move_29_23_30_23
 :parameters ()
 :precondition (and (at_x29)(at_y23))
 :poss-precondition (and (bridge_29_23_30_23))
 :effect (and (not (at_x29)) (at_x30))
)

(:action move_29_23_29_22
 :parameters ()
 :precondition (and (at_x29)(at_y23))
 :poss-precondition (and (bridge_29_22_29_23))
 :effect (and (not (at_y23)) (at_y22))
)

(:action move_29_23_29_24
 :parameters ()
 :precondition (and (at_x29)(at_y23))
 :poss-precondition (and (bridge_29_23_29_24))
 :effect (and (not (at_y23)) (at_y24))
)

(:action move_29_24_28_24
 :parameters ()
 :precondition (and (at_x29)(at_y24))
 :poss-precondition (and (bridge_28_24_29_24))
 :effect (and (not (at_x29)) (at_x28))
)

(:action move_29_24_30_24
 :parameters ()
 :precondition (and (at_x29)(at_y24))
 :poss-precondition (and (bridge_29_24_30_24))
 :effect (and (not (at_x29)) (at_x30))
)

(:action move_29_24_29_23
 :parameters ()
 :precondition (and (at_x29)(at_y24))
 :poss-precondition (and (bridge_29_23_29_24))
 :effect (and (not (at_y24)) (at_y23))
)

(:action move_29_24_29_25
 :parameters ()
 :precondition (and (at_x29)(at_y24))
 :poss-precondition (and (bridge_29_24_29_25))
 :effect (and (not (at_y24)) (at_y25))
)

(:action move_29_25_28_25
 :parameters ()
 :precondition (and (at_x29)(at_y25))
 :poss-precondition (and (bridge_28_25_29_25))
 :effect (and (not (at_x29)) (at_x28))
)

(:action move_29_25_30_25
 :parameters ()
 :precondition (and (at_x29)(at_y25))
 :poss-precondition (and (bridge_29_25_30_25))
 :effect (and (not (at_x29)) (at_x30))
)

(:action move_29_25_29_24
 :parameters ()
 :precondition (and (at_x29)(at_y25))
 :poss-precondition (and (bridge_29_24_29_25))
 :effect (and (not (at_y25)) (at_y24))
)

(:action move_29_25_29_26
 :parameters ()
 :precondition (and (at_x29)(at_y25))
 :poss-precondition (and (bridge_29_25_29_26))
 :effect (and (not (at_y25)) (at_y26))
)

(:action move_29_26_28_26
 :parameters ()
 :precondition (and (at_x29)(at_y26))
 :poss-precondition (and (bridge_28_26_29_26))
 :effect (and (not (at_x29)) (at_x28))
)

(:action move_29_26_30_26
 :parameters ()
 :precondition (and (at_x29)(at_y26))
 :poss-precondition (and (bridge_29_26_30_26))
 :effect (and (not (at_x29)) (at_x30))
)

(:action move_29_26_29_25
 :parameters ()
 :precondition (and (at_x29)(at_y26))
 :poss-precondition (and (bridge_29_25_29_26))
 :effect (and (not (at_y26)) (at_y25))
)

(:action move_29_26_29_27
 :parameters ()
 :precondition (and (at_x29)(at_y26))
 :poss-precondition (and (bridge_29_26_29_27))
 :effect (and (not (at_y26)) (at_y27))
)

(:action move_29_27_28_27
 :parameters ()
 :precondition (and (at_x29)(at_y27))
 :poss-precondition (and (bridge_28_27_29_27))
 :effect (and (not (at_x29)) (at_x28))
)

(:action move_29_27_30_27
 :parameters ()
 :precondition (and (at_x29)(at_y27))
 :poss-precondition (and (bridge_29_27_30_27))
 :effect (and (not (at_x29)) (at_x30))
)

(:action move_29_27_29_26
 :parameters ()
 :precondition (and (at_x29)(at_y27))
 :poss-precondition (and (bridge_29_26_29_27))
 :effect (and (not (at_y27)) (at_y26))
)

(:action move_29_27_29_28
 :parameters ()
 :precondition (and (at_x29)(at_y27))
 :poss-precondition (and (bridge_29_27_29_28))
 :effect (and (not (at_y27)) (at_y28))
)

(:action move_29_28_28_28
 :parameters ()
 :precondition (and (at_x29)(at_y28))
 :poss-precondition (and (bridge_28_28_29_28))
 :effect (and (not (at_x29)) (at_x28))
)

(:action move_29_28_30_28
 :parameters ()
 :precondition (and (at_x29)(at_y28))
 :poss-precondition (and (bridge_29_28_30_28))
 :effect (and (not (at_x29)) (at_x30))
)

(:action move_29_28_29_27
 :parameters ()
 :precondition (and (at_x29)(at_y28))
 :poss-precondition (and (bridge_29_27_29_28))
 :effect (and (not (at_y28)) (at_y27))
)

(:action move_29_28_29_29
 :parameters ()
 :precondition (and (at_x29)(at_y28))
 :poss-precondition (and (bridge_29_28_29_29))
 :effect (and (not (at_y28)) (at_y29))
)

(:action move_29_29_28_29
 :parameters ()
 :precondition (and (at_x29)(at_y29))
 :poss-precondition (and (bridge_28_29_29_29))
 :effect (and (not (at_x29)) (at_x28))
)

(:action move_29_29_30_29
 :parameters ()
 :precondition (and (at_x29)(at_y29))
 :poss-precondition (and (bridge_29_29_30_29))
 :effect (and (not (at_x29)) (at_x30))
)

(:action move_29_29_29_28
 :parameters ()
 :precondition (and (at_x29)(at_y29))
 :poss-precondition (and (bridge_29_28_29_29))
 :effect (and (not (at_y29)) (at_y28))
)

(:action move_29_29_29_30
 :parameters ()
 :precondition (and (at_x29)(at_y29))
 :poss-precondition (and (bridge_29_29_29_30))
 :effect (and (not (at_y29)) (at_y30))
)

(:action move_29_30_28_30
 :parameters ()
 :precondition (and (at_x29)(at_y30))
 :poss-precondition (and (bridge_28_30_29_30))
 :effect (and (not (at_x29)) (at_x28))
)

(:action move_29_30_30_30
 :parameters ()
 :precondition (and (at_x29)(at_y30))
 :poss-precondition (and (bridge_29_30_30_30))
 :effect (and (not (at_x29)) (at_x30))
)

(:action move_29_30_29_29
 :parameters ()
 :precondition (and (at_x29)(at_y30))
 :poss-precondition (and (bridge_29_29_29_30))
 :effect (and (not (at_y30)) (at_y29))
)

(:action move_29_30_29_31
 :parameters ()
 :precondition (and (at_x29)(at_y30))
 :poss-precondition (and (bridge_29_30_29_31))
 :effect (and (not (at_y30)) (at_y31))
)

(:action move_29_31_28_31
 :parameters ()
 :precondition (and (at_x29)(at_y31))
 :poss-precondition (and (bridge_28_31_29_31))
 :effect (and (not (at_x29)) (at_x28))
)

(:action move_29_31_30_31
 :parameters ()
 :precondition (and (at_x29)(at_y31))
 :poss-precondition (and (bridge_29_31_30_31))
 :effect (and (not (at_x29)) (at_x30))
)

(:action move_29_31_29_30
 :parameters ()
 :precondition (and (at_x29)(at_y31))
 :poss-precondition (and (bridge_29_30_29_31))
 :effect (and (not (at_y31)) (at_y30))
)

(:action move_30_0_29_0
 :parameters ()
 :precondition (and (at_x30)(at_y0))
 :poss-precondition (and (bridge_29_0_30_0))
 :effect (and (not (at_x30)) (at_x29))
)

(:action move_30_0_31_0
 :parameters ()
 :precondition (and (at_x30)(at_y0))
 :poss-precondition (and (bridge_30_0_31_0))
 :effect (and (not (at_x30)) (at_x31))
)

(:action move_30_0_30_1
 :parameters ()
 :precondition (and (at_x30)(at_y0))
 :poss-precondition (and (bridge_30_0_30_1))
 :effect (and (not (at_y0)) (at_y1))
)

(:action move_30_1_29_1
 :parameters ()
 :precondition (and (at_x30)(at_y1))
 :poss-precondition (and (bridge_29_1_30_1))
 :effect (and (not (at_x30)) (at_x29))
)

(:action move_30_1_31_1
 :parameters ()
 :precondition (and (at_x30)(at_y1))
 :poss-precondition (and (bridge_30_1_31_1))
 :effect (and (not (at_x30)) (at_x31))
)

(:action move_30_1_30_0
 :parameters ()
 :precondition (and (at_x30)(at_y1))
 :poss-precondition (and (bridge_30_0_30_1))
 :effect (and (not (at_y1)) (at_y0))
)

(:action move_30_1_30_2
 :parameters ()
 :precondition (and (at_x30)(at_y1))
 :poss-precondition (and (bridge_30_1_30_2))
 :effect (and (not (at_y1)) (at_y2))
)

(:action move_30_2_29_2
 :parameters ()
 :precondition (and (at_x30)(at_y2))
 :poss-precondition (and (bridge_29_2_30_2))
 :effect (and (not (at_x30)) (at_x29))
)

(:action move_30_2_31_2
 :parameters ()
 :precondition (and (at_x30)(at_y2))
 :poss-precondition (and (bridge_30_2_31_2))
 :effect (and (not (at_x30)) (at_x31))
)

(:action move_30_2_30_1
 :parameters ()
 :precondition (and (at_x30)(at_y2))
 :poss-precondition (and (bridge_30_1_30_2))
 :effect (and (not (at_y2)) (at_y1))
)

(:action move_30_2_30_3
 :parameters ()
 :precondition (and (at_x30)(at_y2))
 :poss-precondition (and (bridge_30_2_30_3))
 :effect (and (not (at_y2)) (at_y3))
)

(:action move_30_3_29_3
 :parameters ()
 :precondition (and (at_x30)(at_y3))
 :poss-precondition (and (bridge_29_3_30_3))
 :effect (and (not (at_x30)) (at_x29))
)

(:action move_30_3_31_3
 :parameters ()
 :precondition (and (at_x30)(at_y3))
 :poss-precondition (and (bridge_30_3_31_3))
 :effect (and (not (at_x30)) (at_x31))
)

(:action move_30_3_30_2
 :parameters ()
 :precondition (and (at_x30)(at_y3))
 :poss-precondition (and (bridge_30_2_30_3))
 :effect (and (not (at_y3)) (at_y2))
)

(:action move_30_3_30_4
 :parameters ()
 :precondition (and (at_x30)(at_y3))
 :poss-precondition (and (bridge_30_3_30_4))
 :effect (and (not (at_y3)) (at_y4))
)

(:action move_30_4_29_4
 :parameters ()
 :precondition (and (at_x30)(at_y4))
 :poss-precondition (and (bridge_29_4_30_4))
 :effect (and (not (at_x30)) (at_x29))
)

(:action move_30_4_31_4
 :parameters ()
 :precondition (and (at_x30)(at_y4))
 :poss-precondition (and (bridge_30_4_31_4))
 :effect (and (not (at_x30)) (at_x31))
)

(:action move_30_4_30_3
 :parameters ()
 :precondition (and (at_x30)(at_y4))
 :poss-precondition (and (bridge_30_3_30_4))
 :effect (and (not (at_y4)) (at_y3))
)

(:action move_30_4_30_5
 :parameters ()
 :precondition (and (at_x30)(at_y4))
 :poss-precondition (and (bridge_30_4_30_5))
 :effect (and (not (at_y4)) (at_y5))
)

(:action move_30_5_29_5
 :parameters ()
 :precondition (and (at_x30)(at_y5))
 :poss-precondition (and (bridge_29_5_30_5))
 :effect (and (not (at_x30)) (at_x29))
)

(:action move_30_5_31_5
 :parameters ()
 :precondition (and (at_x30)(at_y5))
 :poss-precondition (and (bridge_30_5_31_5))
 :effect (and (not (at_x30)) (at_x31))
)

(:action move_30_5_30_4
 :parameters ()
 :precondition (and (at_x30)(at_y5))
 :poss-precondition (and (bridge_30_4_30_5))
 :effect (and (not (at_y5)) (at_y4))
)

(:action move_30_5_30_6
 :parameters ()
 :precondition (and (at_x30)(at_y5))
 :poss-precondition (and (bridge_30_5_30_6))
 :effect (and (not (at_y5)) (at_y6))
)

(:action move_30_6_29_6
 :parameters ()
 :precondition (and (at_x30)(at_y6))
 :poss-precondition (and (bridge_29_6_30_6))
 :effect (and (not (at_x30)) (at_x29))
)

(:action move_30_6_31_6
 :parameters ()
 :precondition (and (at_x30)(at_y6))
 :poss-precondition (and (bridge_30_6_31_6))
 :effect (and (not (at_x30)) (at_x31))
)

(:action move_30_6_30_5
 :parameters ()
 :precondition (and (at_x30)(at_y6))
 :poss-precondition (and (bridge_30_5_30_6))
 :effect (and (not (at_y6)) (at_y5))
)

(:action move_30_6_30_7
 :parameters ()
 :precondition (and (at_x30)(at_y6))
 :poss-precondition (and (bridge_30_6_30_7))
 :effect (and (not (at_y6)) (at_y7))
)

(:action move_30_7_29_7
 :parameters ()
 :precondition (and (at_x30)(at_y7))
 :poss-precondition (and (bridge_29_7_30_7))
 :effect (and (not (at_x30)) (at_x29))
)

(:action move_30_7_31_7
 :parameters ()
 :precondition (and (at_x30)(at_y7))
 :poss-precondition (and (bridge_30_7_31_7))
 :effect (and (not (at_x30)) (at_x31))
)

(:action move_30_7_30_6
 :parameters ()
 :precondition (and (at_x30)(at_y7))
 :poss-precondition (and (bridge_30_6_30_7))
 :effect (and (not (at_y7)) (at_y6))
)

(:action move_30_7_30_8
 :parameters ()
 :precondition (and (at_x30)(at_y7))
 :poss-precondition (and (bridge_30_7_30_8))
 :effect (and (not (at_y7)) (at_y8))
)

(:action move_30_8_29_8
 :parameters ()
 :precondition (and (at_x30)(at_y8))
 :poss-precondition (and (bridge_29_8_30_8))
 :effect (and (not (at_x30)) (at_x29))
)

(:action move_30_8_31_8
 :parameters ()
 :precondition (and (at_x30)(at_y8))
 :poss-precondition (and (bridge_30_8_31_8))
 :effect (and (not (at_x30)) (at_x31))
)

(:action move_30_8_30_7
 :parameters ()
 :precondition (and (at_x30)(at_y8))
 :poss-precondition (and (bridge_30_7_30_8))
 :effect (and (not (at_y8)) (at_y7))
)

(:action move_30_8_30_9
 :parameters ()
 :precondition (and (at_x30)(at_y8))
 :poss-precondition (and (bridge_30_8_30_9))
 :effect (and (not (at_y8)) (at_y9))
)

(:action move_30_9_29_9
 :parameters ()
 :precondition (and (at_x30)(at_y9))
 :poss-precondition (and (bridge_29_9_30_9))
 :effect (and (not (at_x30)) (at_x29))
)

(:action move_30_9_31_9
 :parameters ()
 :precondition (and (at_x30)(at_y9))
 :poss-precondition (and (bridge_30_9_31_9))
 :effect (and (not (at_x30)) (at_x31))
)

(:action move_30_9_30_8
 :parameters ()
 :precondition (and (at_x30)(at_y9))
 :poss-precondition (and (bridge_30_8_30_9))
 :effect (and (not (at_y9)) (at_y8))
)

(:action move_30_9_30_10
 :parameters ()
 :precondition (and (at_x30)(at_y9))
 :poss-precondition (and (bridge_30_9_30_10))
 :effect (and (not (at_y9)) (at_y10))
)

(:action move_30_10_29_10
 :parameters ()
 :precondition (and (at_x30)(at_y10))
 :poss-precondition (and (bridge_29_10_30_10))
 :effect (and (not (at_x30)) (at_x29))
)

(:action move_30_10_31_10
 :parameters ()
 :precondition (and (at_x30)(at_y10))
 :poss-precondition (and (bridge_30_10_31_10))
 :effect (and (not (at_x30)) (at_x31))
)

(:action move_30_10_30_9
 :parameters ()
 :precondition (and (at_x30)(at_y10))
 :poss-precondition (and (bridge_30_9_30_10))
 :effect (and (not (at_y10)) (at_y9))
)

(:action move_30_10_30_11
 :parameters ()
 :precondition (and (at_x30)(at_y10))
 :poss-precondition (and (bridge_30_10_30_11))
 :effect (and (not (at_y10)) (at_y11))
)

(:action move_30_11_29_11
 :parameters ()
 :precondition (and (at_x30)(at_y11))
 :poss-precondition (and (bridge_29_11_30_11))
 :effect (and (not (at_x30)) (at_x29))
)

(:action move_30_11_31_11
 :parameters ()
 :precondition (and (at_x30)(at_y11))
 :poss-precondition (and (bridge_30_11_31_11))
 :effect (and (not (at_x30)) (at_x31))
)

(:action move_30_11_30_10
 :parameters ()
 :precondition (and (at_x30)(at_y11))
 :poss-precondition (and (bridge_30_10_30_11))
 :effect (and (not (at_y11)) (at_y10))
)

(:action move_30_11_30_12
 :parameters ()
 :precondition (and (at_x30)(at_y11))
 :poss-precondition (and (bridge_30_11_30_12))
 :effect (and (not (at_y11)) (at_y12))
)

(:action move_30_12_29_12
 :parameters ()
 :precondition (and (at_x30)(at_y12))
 :poss-precondition (and (bridge_29_12_30_12))
 :effect (and (not (at_x30)) (at_x29))
)

(:action move_30_12_31_12
 :parameters ()
 :precondition (and (at_x30)(at_y12))
 :poss-precondition (and (bridge_30_12_31_12))
 :effect (and (not (at_x30)) (at_x31))
)

(:action move_30_12_30_11
 :parameters ()
 :precondition (and (at_x30)(at_y12))
 :poss-precondition (and (bridge_30_11_30_12))
 :effect (and (not (at_y12)) (at_y11))
)

(:action move_30_12_30_13
 :parameters ()
 :precondition (and (at_x30)(at_y12))
 :poss-precondition (and (bridge_30_12_30_13))
 :effect (and (not (at_y12)) (at_y13))
)

(:action move_30_13_29_13
 :parameters ()
 :precondition (and (at_x30)(at_y13))
 :poss-precondition (and (bridge_29_13_30_13))
 :effect (and (not (at_x30)) (at_x29))
)

(:action move_30_13_31_13
 :parameters ()
 :precondition (and (at_x30)(at_y13))
 :poss-precondition (and (bridge_30_13_31_13))
 :effect (and (not (at_x30)) (at_x31))
)

(:action move_30_13_30_12
 :parameters ()
 :precondition (and (at_x30)(at_y13))
 :poss-precondition (and (bridge_30_12_30_13))
 :effect (and (not (at_y13)) (at_y12))
)

(:action move_30_13_30_14
 :parameters ()
 :precondition (and (at_x30)(at_y13))
 :poss-precondition (and (bridge_30_13_30_14))
 :effect (and (not (at_y13)) (at_y14))
)

(:action move_30_14_29_14
 :parameters ()
 :precondition (and (at_x30)(at_y14))
 :poss-precondition (and (bridge_29_14_30_14))
 :effect (and (not (at_x30)) (at_x29))
)

(:action move_30_14_31_14
 :parameters ()
 :precondition (and (at_x30)(at_y14))
 :poss-precondition (and (bridge_30_14_31_14))
 :effect (and (not (at_x30)) (at_x31))
)

(:action move_30_14_30_13
 :parameters ()
 :precondition (and (at_x30)(at_y14))
 :poss-precondition (and (bridge_30_13_30_14))
 :effect (and (not (at_y14)) (at_y13))
)

(:action move_30_14_30_15
 :parameters ()
 :precondition (and (at_x30)(at_y14))
 :poss-precondition (and (bridge_30_14_30_15))
 :effect (and (not (at_y14)) (at_y15))
)

(:action move_30_15_29_15
 :parameters ()
 :precondition (and (at_x30)(at_y15))
 :poss-precondition (and (bridge_29_15_30_15))
 :effect (and (not (at_x30)) (at_x29))
)

(:action move_30_15_31_15
 :parameters ()
 :precondition (and (at_x30)(at_y15))
 :poss-precondition (and (bridge_30_15_31_15))
 :effect (and (not (at_x30)) (at_x31))
)

(:action move_30_15_30_14
 :parameters ()
 :precondition (and (at_x30)(at_y15))
 :poss-precondition (and (bridge_30_14_30_15))
 :effect (and (not (at_y15)) (at_y14))
)

(:action move_30_15_30_16
 :parameters ()
 :precondition (and (at_x30)(at_y15))
 :poss-precondition (and (bridge_30_15_30_16))
 :effect (and (not (at_y15)) (at_y16))
)

(:action move_30_16_29_16
 :parameters ()
 :precondition (and (at_x30)(at_y16))
 :poss-precondition (and (bridge_29_16_30_16))
 :effect (and (not (at_x30)) (at_x29))
)

(:action move_30_16_31_16
 :parameters ()
 :precondition (and (at_x30)(at_y16))
 :poss-precondition (and (bridge_30_16_31_16))
 :effect (and (not (at_x30)) (at_x31))
)

(:action move_30_16_30_15
 :parameters ()
 :precondition (and (at_x30)(at_y16))
 :poss-precondition (and (bridge_30_15_30_16))
 :effect (and (not (at_y16)) (at_y15))
)

(:action move_30_16_30_17
 :parameters ()
 :precondition (and (at_x30)(at_y16))
 :poss-precondition (and (bridge_30_16_30_17))
 :effect (and (not (at_y16)) (at_y17))
)

(:action move_30_17_29_17
 :parameters ()
 :precondition (and (at_x30)(at_y17))
 :poss-precondition (and (bridge_29_17_30_17))
 :effect (and (not (at_x30)) (at_x29))
)

(:action move_30_17_31_17
 :parameters ()
 :precondition (and (at_x30)(at_y17))
 :poss-precondition (and (bridge_30_17_31_17))
 :effect (and (not (at_x30)) (at_x31))
)

(:action move_30_17_30_16
 :parameters ()
 :precondition (and (at_x30)(at_y17))
 :poss-precondition (and (bridge_30_16_30_17))
 :effect (and (not (at_y17)) (at_y16))
)

(:action move_30_17_30_18
 :parameters ()
 :precondition (and (at_x30)(at_y17))
 :poss-precondition (and (bridge_30_17_30_18))
 :effect (and (not (at_y17)) (at_y18))
)

(:action move_30_18_29_18
 :parameters ()
 :precondition (and (at_x30)(at_y18))
 :poss-precondition (and (bridge_29_18_30_18))
 :effect (and (not (at_x30)) (at_x29))
)

(:action move_30_18_31_18
 :parameters ()
 :precondition (and (at_x30)(at_y18))
 :poss-precondition (and (bridge_30_18_31_18))
 :effect (and (not (at_x30)) (at_x31))
)

(:action move_30_18_30_17
 :parameters ()
 :precondition (and (at_x30)(at_y18))
 :poss-precondition (and (bridge_30_17_30_18))
 :effect (and (not (at_y18)) (at_y17))
)

(:action move_30_18_30_19
 :parameters ()
 :precondition (and (at_x30)(at_y18))
 :poss-precondition (and (bridge_30_18_30_19))
 :effect (and (not (at_y18)) (at_y19))
)

(:action move_30_19_29_19
 :parameters ()
 :precondition (and (at_x30)(at_y19))
 :poss-precondition (and (bridge_29_19_30_19))
 :effect (and (not (at_x30)) (at_x29))
)

(:action move_30_19_31_19
 :parameters ()
 :precondition (and (at_x30)(at_y19))
 :poss-precondition (and (bridge_30_19_31_19))
 :effect (and (not (at_x30)) (at_x31))
)

(:action move_30_19_30_18
 :parameters ()
 :precondition (and (at_x30)(at_y19))
 :poss-precondition (and (bridge_30_18_30_19))
 :effect (and (not (at_y19)) (at_y18))
)

(:action move_30_19_30_20
 :parameters ()
 :precondition (and (at_x30)(at_y19))
 :poss-precondition (and (bridge_30_19_30_20))
 :effect (and (not (at_y19)) (at_y20))
)

(:action move_30_20_29_20
 :parameters ()
 :precondition (and (at_x30)(at_y20))
 :poss-precondition (and (bridge_29_20_30_20))
 :effect (and (not (at_x30)) (at_x29))
)

(:action move_30_20_31_20
 :parameters ()
 :precondition (and (at_x30)(at_y20))
 :poss-precondition (and (bridge_30_20_31_20))
 :effect (and (not (at_x30)) (at_x31))
)

(:action move_30_20_30_19
 :parameters ()
 :precondition (and (at_x30)(at_y20))
 :poss-precondition (and (bridge_30_19_30_20))
 :effect (and (not (at_y20)) (at_y19))
)

(:action move_30_20_30_21
 :parameters ()
 :precondition (and (at_x30)(at_y20))
 :poss-precondition (and (bridge_30_20_30_21))
 :effect (and (not (at_y20)) (at_y21))
)

(:action move_30_21_29_21
 :parameters ()
 :precondition (and (at_x30)(at_y21))
 :poss-precondition (and (bridge_29_21_30_21))
 :effect (and (not (at_x30)) (at_x29))
)

(:action move_30_21_31_21
 :parameters ()
 :precondition (and (at_x30)(at_y21))
 :poss-precondition (and (bridge_30_21_31_21))
 :effect (and (not (at_x30)) (at_x31))
)

(:action move_30_21_30_20
 :parameters ()
 :precondition (and (at_x30)(at_y21))
 :poss-precondition (and (bridge_30_20_30_21))
 :effect (and (not (at_y21)) (at_y20))
)

(:action move_30_21_30_22
 :parameters ()
 :precondition (and (at_x30)(at_y21))
 :poss-precondition (and (bridge_30_21_30_22))
 :effect (and (not (at_y21)) (at_y22))
)

(:action move_30_22_29_22
 :parameters ()
 :precondition (and (at_x30)(at_y22))
 :poss-precondition (and (bridge_29_22_30_22))
 :effect (and (not (at_x30)) (at_x29))
)

(:action move_30_22_31_22
 :parameters ()
 :precondition (and (at_x30)(at_y22))
 :poss-precondition (and (bridge_30_22_31_22))
 :effect (and (not (at_x30)) (at_x31))
)

(:action move_30_22_30_21
 :parameters ()
 :precondition (and (at_x30)(at_y22))
 :poss-precondition (and (bridge_30_21_30_22))
 :effect (and (not (at_y22)) (at_y21))
)

(:action move_30_22_30_23
 :parameters ()
 :precondition (and (at_x30)(at_y22))
 :poss-precondition (and (bridge_30_22_30_23))
 :effect (and (not (at_y22)) (at_y23))
)

(:action move_30_23_29_23
 :parameters ()
 :precondition (and (at_x30)(at_y23))
 :poss-precondition (and (bridge_29_23_30_23))
 :effect (and (not (at_x30)) (at_x29))
)

(:action move_30_23_31_23
 :parameters ()
 :precondition (and (at_x30)(at_y23))
 :poss-precondition (and (bridge_30_23_31_23))
 :effect (and (not (at_x30)) (at_x31))
)

(:action move_30_23_30_22
 :parameters ()
 :precondition (and (at_x30)(at_y23))
 :poss-precondition (and (bridge_30_22_30_23))
 :effect (and (not (at_y23)) (at_y22))
)

(:action move_30_23_30_24
 :parameters ()
 :precondition (and (at_x30)(at_y23))
 :poss-precondition (and (bridge_30_23_30_24))
 :effect (and (not (at_y23)) (at_y24))
)

(:action move_30_24_29_24
 :parameters ()
 :precondition (and (at_x30)(at_y24))
 :poss-precondition (and (bridge_29_24_30_24))
 :effect (and (not (at_x30)) (at_x29))
)

(:action move_30_24_31_24
 :parameters ()
 :precondition (and (at_x30)(at_y24))
 :poss-precondition (and (bridge_30_24_31_24))
 :effect (and (not (at_x30)) (at_x31))
)

(:action move_30_24_30_23
 :parameters ()
 :precondition (and (at_x30)(at_y24))
 :poss-precondition (and (bridge_30_23_30_24))
 :effect (and (not (at_y24)) (at_y23))
)

(:action move_30_24_30_25
 :parameters ()
 :precondition (and (at_x30)(at_y24))
 :poss-precondition (and (bridge_30_24_30_25))
 :effect (and (not (at_y24)) (at_y25))
)

(:action move_30_25_29_25
 :parameters ()
 :precondition (and (at_x30)(at_y25))
 :poss-precondition (and (bridge_29_25_30_25))
 :effect (and (not (at_x30)) (at_x29))
)

(:action move_30_25_31_25
 :parameters ()
 :precondition (and (at_x30)(at_y25))
 :poss-precondition (and (bridge_30_25_31_25))
 :effect (and (not (at_x30)) (at_x31))
)

(:action move_30_25_30_24
 :parameters ()
 :precondition (and (at_x30)(at_y25))
 :poss-precondition (and (bridge_30_24_30_25))
 :effect (and (not (at_y25)) (at_y24))
)

(:action move_30_25_30_26
 :parameters ()
 :precondition (and (at_x30)(at_y25))
 :poss-precondition (and (bridge_30_25_30_26))
 :effect (and (not (at_y25)) (at_y26))
)

(:action move_30_26_29_26
 :parameters ()
 :precondition (and (at_x30)(at_y26))
 :poss-precondition (and (bridge_29_26_30_26))
 :effect (and (not (at_x30)) (at_x29))
)

(:action move_30_26_31_26
 :parameters ()
 :precondition (and (at_x30)(at_y26))
 :poss-precondition (and (bridge_30_26_31_26))
 :effect (and (not (at_x30)) (at_x31))
)

(:action move_30_26_30_25
 :parameters ()
 :precondition (and (at_x30)(at_y26))
 :poss-precondition (and (bridge_30_25_30_26))
 :effect (and (not (at_y26)) (at_y25))
)

(:action move_30_26_30_27
 :parameters ()
 :precondition (and (at_x30)(at_y26))
 :poss-precondition (and (bridge_30_26_30_27))
 :effect (and (not (at_y26)) (at_y27))
)

(:action move_30_27_29_27
 :parameters ()
 :precondition (and (at_x30)(at_y27))
 :poss-precondition (and (bridge_29_27_30_27))
 :effect (and (not (at_x30)) (at_x29))
)

(:action move_30_27_31_27
 :parameters ()
 :precondition (and (at_x30)(at_y27))
 :poss-precondition (and (bridge_30_27_31_27))
 :effect (and (not (at_x30)) (at_x31))
)

(:action move_30_27_30_26
 :parameters ()
 :precondition (and (at_x30)(at_y27))
 :poss-precondition (and (bridge_30_26_30_27))
 :effect (and (not (at_y27)) (at_y26))
)

(:action move_30_27_30_28
 :parameters ()
 :precondition (and (at_x30)(at_y27))
 :poss-precondition (and (bridge_30_27_30_28))
 :effect (and (not (at_y27)) (at_y28))
)

(:action move_30_28_29_28
 :parameters ()
 :precondition (and (at_x30)(at_y28))
 :poss-precondition (and (bridge_29_28_30_28))
 :effect (and (not (at_x30)) (at_x29))
)

(:action move_30_28_31_28
 :parameters ()
 :precondition (and (at_x30)(at_y28))
 :poss-precondition (and (bridge_30_28_31_28))
 :effect (and (not (at_x30)) (at_x31))
)

(:action move_30_28_30_27
 :parameters ()
 :precondition (and (at_x30)(at_y28))
 :poss-precondition (and (bridge_30_27_30_28))
 :effect (and (not (at_y28)) (at_y27))
)

(:action move_30_28_30_29
 :parameters ()
 :precondition (and (at_x30)(at_y28))
 :poss-precondition (and (bridge_30_28_30_29))
 :effect (and (not (at_y28)) (at_y29))
)

(:action move_30_29_29_29
 :parameters ()
 :precondition (and (at_x30)(at_y29))
 :poss-precondition (and (bridge_29_29_30_29))
 :effect (and (not (at_x30)) (at_x29))
)

(:action move_30_29_31_29
 :parameters ()
 :precondition (and (at_x30)(at_y29))
 :poss-precondition (and (bridge_30_29_31_29))
 :effect (and (not (at_x30)) (at_x31))
)

(:action move_30_29_30_28
 :parameters ()
 :precondition (and (at_x30)(at_y29))
 :poss-precondition (and (bridge_30_28_30_29))
 :effect (and (not (at_y29)) (at_y28))
)

(:action move_30_29_30_30
 :parameters ()
 :precondition (and (at_x30)(at_y29))
 :poss-precondition (and (bridge_30_29_30_30))
 :effect (and (not (at_y29)) (at_y30))
)

(:action move_30_30_29_30
 :parameters ()
 :precondition (and (at_x30)(at_y30))
 :poss-precondition (and (bridge_29_30_30_30))
 :effect (and (not (at_x30)) (at_x29))
)

(:action move_30_30_31_30
 :parameters ()
 :precondition (and (at_x30)(at_y30))
 :poss-precondition (and (bridge_30_30_31_30))
 :effect (and (not (at_x30)) (at_x31))
)

(:action move_30_30_30_29
 :parameters ()
 :precondition (and (at_x30)(at_y30))
 :poss-precondition (and (bridge_30_29_30_30))
 :effect (and (not (at_y30)) (at_y29))
)

(:action move_30_30_30_31
 :parameters ()
 :precondition (and (at_x30)(at_y30))
 :poss-precondition (and (bridge_30_30_30_31))
 :effect (and (not (at_y30)) (at_y31))
)

(:action move_30_31_29_31
 :parameters ()
 :precondition (and (at_x30)(at_y31))
 :poss-precondition (and (bridge_29_31_30_31))
 :effect (and (not (at_x30)) (at_x29))
)

(:action move_30_31_31_31
 :parameters ()
 :precondition (and (at_x30)(at_y31))
 :poss-precondition (and (bridge_30_31_31_31))
 :effect (and (not (at_x30)) (at_x31))
)

(:action move_30_31_30_30
 :parameters ()
 :precondition (and (at_x30)(at_y31))
 :poss-precondition (and (bridge_30_30_30_31))
 :effect (and (not (at_y31)) (at_y30))
)

(:action move_31_0_30_0
 :parameters ()
 :precondition (and (at_x31)(at_y0))
 :poss-precondition (and (bridge_30_0_31_0))
 :effect (and (not (at_x31)) (at_x30))
)

(:action move_31_0_31_1
 :parameters ()
 :precondition (and (at_x31)(at_y0))
 :poss-precondition (and (bridge_31_0_31_1))
 :effect (and (not (at_y0)) (at_y1))
)

(:action move_31_1_30_1
 :parameters ()
 :precondition (and (at_x31)(at_y1))
 :poss-precondition (and (bridge_30_1_31_1))
 :effect (and (not (at_x31)) (at_x30))
)

(:action move_31_1_31_0
 :parameters ()
 :precondition (and (at_x31)(at_y1))
 :poss-precondition (and (bridge_31_0_31_1))
 :effect (and (not (at_y1)) (at_y0))
)

(:action move_31_1_31_2
 :parameters ()
 :precondition (and (at_x31)(at_y1))
 :poss-precondition (and (bridge_31_1_31_2))
 :effect (and (not (at_y1)) (at_y2))
)

(:action move_31_2_30_2
 :parameters ()
 :precondition (and (at_x31)(at_y2))
 :poss-precondition (and (bridge_30_2_31_2))
 :effect (and (not (at_x31)) (at_x30))
)

(:action move_31_2_31_1
 :parameters ()
 :precondition (and (at_x31)(at_y2))
 :poss-precondition (and (bridge_31_1_31_2))
 :effect (and (not (at_y2)) (at_y1))
)

(:action move_31_2_31_3
 :parameters ()
 :precondition (and (at_x31)(at_y2))
 :poss-precondition (and (bridge_31_2_31_3))
 :effect (and (not (at_y2)) (at_y3))
)

(:action move_31_3_30_3
 :parameters ()
 :precondition (and (at_x31)(at_y3))
 :poss-precondition (and (bridge_30_3_31_3))
 :effect (and (not (at_x31)) (at_x30))
)

(:action move_31_3_31_2
 :parameters ()
 :precondition (and (at_x31)(at_y3))
 :poss-precondition (and (bridge_31_2_31_3))
 :effect (and (not (at_y3)) (at_y2))
)

(:action move_31_3_31_4
 :parameters ()
 :precondition (and (at_x31)(at_y3))
 :poss-precondition (and (bridge_31_3_31_4))
 :effect (and (not (at_y3)) (at_y4))
)

(:action move_31_4_30_4
 :parameters ()
 :precondition (and (at_x31)(at_y4))
 :poss-precondition (and (bridge_30_4_31_4))
 :effect (and (not (at_x31)) (at_x30))
)

(:action move_31_4_31_3
 :parameters ()
 :precondition (and (at_x31)(at_y4))
 :poss-precondition (and (bridge_31_3_31_4))
 :effect (and (not (at_y4)) (at_y3))
)

(:action move_31_4_31_5
 :parameters ()
 :precondition (and (at_x31)(at_y4))
 :poss-precondition (and (bridge_31_4_31_5))
 :effect (and (not (at_y4)) (at_y5))
)

(:action move_31_5_30_5
 :parameters ()
 :precondition (and (at_x31)(at_y5))
 :poss-precondition (and (bridge_30_5_31_5))
 :effect (and (not (at_x31)) (at_x30))
)

(:action move_31_5_31_4
 :parameters ()
 :precondition (and (at_x31)(at_y5))
 :poss-precondition (and (bridge_31_4_31_5))
 :effect (and (not (at_y5)) (at_y4))
)

(:action move_31_5_31_6
 :parameters ()
 :precondition (and (at_x31)(at_y5))
 :poss-precondition (and (bridge_31_5_31_6))
 :effect (and (not (at_y5)) (at_y6))
)

(:action move_31_6_30_6
 :parameters ()
 :precondition (and (at_x31)(at_y6))
 :poss-precondition (and (bridge_30_6_31_6))
 :effect (and (not (at_x31)) (at_x30))
)

(:action move_31_6_31_5
 :parameters ()
 :precondition (and (at_x31)(at_y6))
 :poss-precondition (and (bridge_31_5_31_6))
 :effect (and (not (at_y6)) (at_y5))
)

(:action move_31_6_31_7
 :parameters ()
 :precondition (and (at_x31)(at_y6))
 :poss-precondition (and (bridge_31_6_31_7))
 :effect (and (not (at_y6)) (at_y7))
)

(:action move_31_7_30_7
 :parameters ()
 :precondition (and (at_x31)(at_y7))
 :poss-precondition (and (bridge_30_7_31_7))
 :effect (and (not (at_x31)) (at_x30))
)

(:action move_31_7_31_6
 :parameters ()
 :precondition (and (at_x31)(at_y7))
 :poss-precondition (and (bridge_31_6_31_7))
 :effect (and (not (at_y7)) (at_y6))
)

(:action move_31_7_31_8
 :parameters ()
 :precondition (and (at_x31)(at_y7))
 :poss-precondition (and (bridge_31_7_31_8))
 :effect (and (not (at_y7)) (at_y8))
)

(:action move_31_8_30_8
 :parameters ()
 :precondition (and (at_x31)(at_y8))
 :poss-precondition (and (bridge_30_8_31_8))
 :effect (and (not (at_x31)) (at_x30))
)

(:action move_31_8_31_7
 :parameters ()
 :precondition (and (at_x31)(at_y8))
 :poss-precondition (and (bridge_31_7_31_8))
 :effect (and (not (at_y8)) (at_y7))
)

(:action move_31_8_31_9
 :parameters ()
 :precondition (and (at_x31)(at_y8))
 :poss-precondition (and (bridge_31_8_31_9))
 :effect (and (not (at_y8)) (at_y9))
)

(:action move_31_9_30_9
 :parameters ()
 :precondition (and (at_x31)(at_y9))
 :poss-precondition (and (bridge_30_9_31_9))
 :effect (and (not (at_x31)) (at_x30))
)

(:action move_31_9_31_8
 :parameters ()
 :precondition (and (at_x31)(at_y9))
 :poss-precondition (and (bridge_31_8_31_9))
 :effect (and (not (at_y9)) (at_y8))
)

(:action move_31_9_31_10
 :parameters ()
 :precondition (and (at_x31)(at_y9))
 :poss-precondition (and (bridge_31_9_31_10))
 :effect (and (not (at_y9)) (at_y10))
)

(:action move_31_10_30_10
 :parameters ()
 :precondition (and (at_x31)(at_y10))
 :poss-precondition (and (bridge_30_10_31_10))
 :effect (and (not (at_x31)) (at_x30))
)

(:action move_31_10_31_9
 :parameters ()
 :precondition (and (at_x31)(at_y10))
 :poss-precondition (and (bridge_31_9_31_10))
 :effect (and (not (at_y10)) (at_y9))
)

(:action move_31_10_31_11
 :parameters ()
 :precondition (and (at_x31)(at_y10))
 :poss-precondition (and (bridge_31_10_31_11))
 :effect (and (not (at_y10)) (at_y11))
)

(:action move_31_11_30_11
 :parameters ()
 :precondition (and (at_x31)(at_y11))
 :poss-precondition (and (bridge_30_11_31_11))
 :effect (and (not (at_x31)) (at_x30))
)

(:action move_31_11_31_10
 :parameters ()
 :precondition (and (at_x31)(at_y11))
 :poss-precondition (and (bridge_31_10_31_11))
 :effect (and (not (at_y11)) (at_y10))
)

(:action move_31_11_31_12
 :parameters ()
 :precondition (and (at_x31)(at_y11))
 :poss-precondition (and (bridge_31_11_31_12))
 :effect (and (not (at_y11)) (at_y12))
)

(:action move_31_12_30_12
 :parameters ()
 :precondition (and (at_x31)(at_y12))
 :poss-precondition (and (bridge_30_12_31_12))
 :effect (and (not (at_x31)) (at_x30))
)

(:action move_31_12_31_11
 :parameters ()
 :precondition (and (at_x31)(at_y12))
 :poss-precondition (and (bridge_31_11_31_12))
 :effect (and (not (at_y12)) (at_y11))
)

(:action move_31_12_31_13
 :parameters ()
 :precondition (and (at_x31)(at_y12))
 :poss-precondition (and (bridge_31_12_31_13))
 :effect (and (not (at_y12)) (at_y13))
)

(:action move_31_13_30_13
 :parameters ()
 :precondition (and (at_x31)(at_y13))
 :poss-precondition (and (bridge_30_13_31_13))
 :effect (and (not (at_x31)) (at_x30))
)

(:action move_31_13_31_12
 :parameters ()
 :precondition (and (at_x31)(at_y13))
 :poss-precondition (and (bridge_31_12_31_13))
 :effect (and (not (at_y13)) (at_y12))
)

(:action move_31_13_31_14
 :parameters ()
 :precondition (and (at_x31)(at_y13))
 :poss-precondition (and (bridge_31_13_31_14))
 :effect (and (not (at_y13)) (at_y14))
)

(:action move_31_14_30_14
 :parameters ()
 :precondition (and (at_x31)(at_y14))
 :poss-precondition (and (bridge_30_14_31_14))
 :effect (and (not (at_x31)) (at_x30))
)

(:action move_31_14_31_13
 :parameters ()
 :precondition (and (at_x31)(at_y14))
 :poss-precondition (and (bridge_31_13_31_14))
 :effect (and (not (at_y14)) (at_y13))
)

(:action move_31_14_31_15
 :parameters ()
 :precondition (and (at_x31)(at_y14))
 :poss-precondition (and (bridge_31_14_31_15))
 :effect (and (not (at_y14)) (at_y15))
)

(:action move_31_15_30_15
 :parameters ()
 :precondition (and (at_x31)(at_y15))
 :poss-precondition (and (bridge_30_15_31_15))
 :effect (and (not (at_x31)) (at_x30))
)

(:action move_31_15_31_14
 :parameters ()
 :precondition (and (at_x31)(at_y15))
 :poss-precondition (and (bridge_31_14_31_15))
 :effect (and (not (at_y15)) (at_y14))
)

(:action move_31_15_31_16
 :parameters ()
 :precondition (and (at_x31)(at_y15))
 :poss-precondition (and (bridge_31_15_31_16))
 :effect (and (not (at_y15)) (at_y16))
)

(:action move_31_16_30_16
 :parameters ()
 :precondition (and (at_x31)(at_y16))
 :poss-precondition (and (bridge_30_16_31_16))
 :effect (and (not (at_x31)) (at_x30))
)

(:action move_31_16_31_15
 :parameters ()
 :precondition (and (at_x31)(at_y16))
 :poss-precondition (and (bridge_31_15_31_16))
 :effect (and (not (at_y16)) (at_y15))
)

(:action move_31_16_31_17
 :parameters ()
 :precondition (and (at_x31)(at_y16))
 :poss-precondition (and (bridge_31_16_31_17))
 :effect (and (not (at_y16)) (at_y17))
)

(:action move_31_17_30_17
 :parameters ()
 :precondition (and (at_x31)(at_y17))
 :poss-precondition (and (bridge_30_17_31_17))
 :effect (and (not (at_x31)) (at_x30))
)

(:action move_31_17_31_16
 :parameters ()
 :precondition (and (at_x31)(at_y17))
 :poss-precondition (and (bridge_31_16_31_17))
 :effect (and (not (at_y17)) (at_y16))
)

(:action move_31_17_31_18
 :parameters ()
 :precondition (and (at_x31)(at_y17))
 :poss-precondition (and (bridge_31_17_31_18))
 :effect (and (not (at_y17)) (at_y18))
)

(:action move_31_18_30_18
 :parameters ()
 :precondition (and (at_x31)(at_y18))
 :poss-precondition (and (bridge_30_18_31_18))
 :effect (and (not (at_x31)) (at_x30))
)

(:action move_31_18_31_17
 :parameters ()
 :precondition (and (at_x31)(at_y18))
 :poss-precondition (and (bridge_31_17_31_18))
 :effect (and (not (at_y18)) (at_y17))
)

(:action move_31_18_31_19
 :parameters ()
 :precondition (and (at_x31)(at_y18))
 :poss-precondition (and (bridge_31_18_31_19))
 :effect (and (not (at_y18)) (at_y19))
)

(:action move_31_19_30_19
 :parameters ()
 :precondition (and (at_x31)(at_y19))
 :poss-precondition (and (bridge_30_19_31_19))
 :effect (and (not (at_x31)) (at_x30))
)

(:action move_31_19_31_18
 :parameters ()
 :precondition (and (at_x31)(at_y19))
 :poss-precondition (and (bridge_31_18_31_19))
 :effect (and (not (at_y19)) (at_y18))
)

(:action move_31_19_31_20
 :parameters ()
 :precondition (and (at_x31)(at_y19))
 :poss-precondition (and (bridge_31_19_31_20))
 :effect (and (not (at_y19)) (at_y20))
)

(:action move_31_20_30_20
 :parameters ()
 :precondition (and (at_x31)(at_y20))
 :poss-precondition (and (bridge_30_20_31_20))
 :effect (and (not (at_x31)) (at_x30))
)

(:action move_31_20_31_19
 :parameters ()
 :precondition (and (at_x31)(at_y20))
 :poss-precondition (and (bridge_31_19_31_20))
 :effect (and (not (at_y20)) (at_y19))
)

(:action move_31_20_31_21
 :parameters ()
 :precondition (and (at_x31)(at_y20))
 :poss-precondition (and (bridge_31_20_31_21))
 :effect (and (not (at_y20)) (at_y21))
)

(:action move_31_21_30_21
 :parameters ()
 :precondition (and (at_x31)(at_y21))
 :poss-precondition (and (bridge_30_21_31_21))
 :effect (and (not (at_x31)) (at_x30))
)

(:action move_31_21_31_20
 :parameters ()
 :precondition (and (at_x31)(at_y21))
 :poss-precondition (and (bridge_31_20_31_21))
 :effect (and (not (at_y21)) (at_y20))
)

(:action move_31_21_31_22
 :parameters ()
 :precondition (and (at_x31)(at_y21))
 :poss-precondition (and (bridge_31_21_31_22))
 :effect (and (not (at_y21)) (at_y22))
)

(:action move_31_22_30_22
 :parameters ()
 :precondition (and (at_x31)(at_y22))
 :poss-precondition (and (bridge_30_22_31_22))
 :effect (and (not (at_x31)) (at_x30))
)

(:action move_31_22_31_21
 :parameters ()
 :precondition (and (at_x31)(at_y22))
 :poss-precondition (and (bridge_31_21_31_22))
 :effect (and (not (at_y22)) (at_y21))
)

(:action move_31_22_31_23
 :parameters ()
 :precondition (and (at_x31)(at_y22))
 :poss-precondition (and (bridge_31_22_31_23))
 :effect (and (not (at_y22)) (at_y23))
)

(:action move_31_23_30_23
 :parameters ()
 :precondition (and (at_x31)(at_y23))
 :poss-precondition (and (bridge_30_23_31_23))
 :effect (and (not (at_x31)) (at_x30))
)

(:action move_31_23_31_22
 :parameters ()
 :precondition (and (at_x31)(at_y23))
 :poss-precondition (and (bridge_31_22_31_23))
 :effect (and (not (at_y23)) (at_y22))
)

(:action move_31_23_31_24
 :parameters ()
 :precondition (and (at_x31)(at_y23))
 :poss-precondition (and (bridge_31_23_31_24))
 :effect (and (not (at_y23)) (at_y24))
)

(:action move_31_24_30_24
 :parameters ()
 :precondition (and (at_x31)(at_y24))
 :poss-precondition (and (bridge_30_24_31_24))
 :effect (and (not (at_x31)) (at_x30))
)

(:action move_31_24_31_23
 :parameters ()
 :precondition (and (at_x31)(at_y24))
 :poss-precondition (and (bridge_31_23_31_24))
 :effect (and (not (at_y24)) (at_y23))
)

(:action move_31_24_31_25
 :parameters ()
 :precondition (and (at_x31)(at_y24))
 :poss-precondition (and (bridge_31_24_31_25))
 :effect (and (not (at_y24)) (at_y25))
)

(:action move_31_25_30_25
 :parameters ()
 :precondition (and (at_x31)(at_y25))
 :poss-precondition (and (bridge_30_25_31_25))
 :effect (and (not (at_x31)) (at_x30))
)

(:action move_31_25_31_24
 :parameters ()
 :precondition (and (at_x31)(at_y25))
 :poss-precondition (and (bridge_31_24_31_25))
 :effect (and (not (at_y25)) (at_y24))
)

(:action move_31_25_31_26
 :parameters ()
 :precondition (and (at_x31)(at_y25))
 :poss-precondition (and (bridge_31_25_31_26))
 :effect (and (not (at_y25)) (at_y26))
)

(:action move_31_26_30_26
 :parameters ()
 :precondition (and (at_x31)(at_y26))
 :poss-precondition (and (bridge_30_26_31_26))
 :effect (and (not (at_x31)) (at_x30))
)

(:action move_31_26_31_25
 :parameters ()
 :precondition (and (at_x31)(at_y26))
 :poss-precondition (and (bridge_31_25_31_26))
 :effect (and (not (at_y26)) (at_y25))
)

(:action move_31_26_31_27
 :parameters ()
 :precondition (and (at_x31)(at_y26))
 :poss-precondition (and (bridge_31_26_31_27))
 :effect (and (not (at_y26)) (at_y27))
)

(:action move_31_27_30_27
 :parameters ()
 :precondition (and (at_x31)(at_y27))
 :poss-precondition (and (bridge_30_27_31_27))
 :effect (and (not (at_x31)) (at_x30))
)

(:action move_31_27_31_26
 :parameters ()
 :precondition (and (at_x31)(at_y27))
 :poss-precondition (and (bridge_31_26_31_27))
 :effect (and (not (at_y27)) (at_y26))
)

(:action move_31_27_31_28
 :parameters ()
 :precondition (and (at_x31)(at_y27))
 :poss-precondition (and (bridge_31_27_31_28))
 :effect (and (not (at_y27)) (at_y28))
)

(:action move_31_28_30_28
 :parameters ()
 :precondition (and (at_x31)(at_y28))
 :poss-precondition (and (bridge_30_28_31_28))
 :effect (and (not (at_x31)) (at_x30))
)

(:action move_31_28_31_27
 :parameters ()
 :precondition (and (at_x31)(at_y28))
 :poss-precondition (and (bridge_31_27_31_28))
 :effect (and (not (at_y28)) (at_y27))
)

(:action move_31_28_31_29
 :parameters ()
 :precondition (and (at_x31)(at_y28))
 :poss-precondition (and (bridge_31_28_31_29))
 :effect (and (not (at_y28)) (at_y29))
)

(:action move_31_29_30_29
 :parameters ()
 :precondition (and (at_x31)(at_y29))
 :poss-precondition (and (bridge_30_29_31_29))
 :effect (and (not (at_x31)) (at_x30))
)

(:action move_31_29_31_28
 :parameters ()
 :precondition (and (at_x31)(at_y29))
 :poss-precondition (and (bridge_31_28_31_29))
 :effect (and (not (at_y29)) (at_y28))
)

(:action move_31_29_31_30
 :parameters ()
 :precondition (and (at_x31)(at_y29))
 :poss-precondition (and (bridge_31_29_31_30))
 :effect (and (not (at_y29)) (at_y30))
)

(:action move_31_30_30_30
 :parameters ()
 :precondition (and (at_x31)(at_y30))
 :poss-precondition (and (bridge_30_30_31_30))
 :effect (and (not (at_x31)) (at_x30))
)

(:action move_31_30_31_29
 :parameters ()
 :precondition (and (at_x31)(at_y30))
 :poss-precondition (and (bridge_31_29_31_30))
 :effect (and (not (at_y30)) (at_y29))
)

(:action move_31_30_31_31
 :parameters ()
 :precondition (and (at_x31)(at_y30))
 :poss-precondition (and (bridge_31_30_31_31))
 :effect (and (not (at_y30)) (at_y31))
)

(:action move_31_31_30_31
 :parameters ()
 :precondition (and (at_x31)(at_y31))
 :poss-precondition (and (bridge_30_31_31_31))
 :effect (and (not (at_x31)) (at_x30))
)

(:action move_31_31_31_30
 :parameters ()
 :precondition (and (at_x31)(at_y31))
 :poss-precondition (and (bridge_31_30_31_31))
 :effect (and (not (at_y31)) (at_y30))
)

(:action pickup_treasure1
 :parameters ()
 :precondition (and (at_x31) (at_y0))
 :effect (and (holding_treasure_1))
)

(:action pickup_treasure2
 :parameters ()
 :precondition (and (at_x31) (at_y31))
 :effect (and (holding_treasure_2))
)

(:action pickup_treasure3
 :parameters ()
 :precondition (and (at_x0) (at_y31))
 :effect (and (holding_treasure_3))
)

)