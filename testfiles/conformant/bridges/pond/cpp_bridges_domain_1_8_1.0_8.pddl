(define (domain Bridges)
 (:requirements :probabilistic-effects)
 (:predicates (bridge_3_5_3_6) (bridge_2_1_2_2) (bridge_6_2_7_2) (bridge_6_2_6_3) (holding_treasure_2) (holding_treasure_3) (holding_treasure_1) (bridge_6_5_7_5) (bridge_3_5_4_5) (bridge_6_0_7_0) (bridge_4_7_5_7) (bridge_4_0_5_0) (bridge_2_5_3_5) (bridge_2_4_2_5) (bridge_2_5_2_6) (bridge_2_4_3_4) (bridge_6_0_6_1) (bridge_0_2_1_2) (bridge_4_0_4_1) (bridge_3_0_3_1) (bridge_7_5_7_6) (bridge_0_1_1_1) (bridge_7_3_7_4) (bridge_4_4_4_5) (bridge_4_6_4_7) (bridge_2_7_3_7) (bridge_6_3_6_4) (bridge_1_6_2_6) (bridge_5_3_5_4) (bridge_6_3_7_3) (bridge_7_0_7_1) (bridge_5_3_6_3) (bridge_1_6_1_7) (bridge_4_4_5_4) (bridge_4_6_5_6) (bridge_3_1_4_1) (bridge_2_2_3_2) (bridge_4_2_5_2) (bridge_1_1_2_1) (bridge_6_4_7_4) (bridge_2_6_3_6) (bridge_6_7_7_7) (at_6_5) (at_6_6) (at_6_7) (bridge_2_6_2_7) (at_7_4) (bridge_0_3_0_4) (at_7_5) (at_7_6) (bridge_0_6_0_7) (at_7_7) (bridge_4_2_4_3) (bridge_7_4_7_5) (bridge_0_4_1_4) (bridge_6_1_6_2) (bridge_1_4_2_4) (bridge_6_1_7_1) (bridge_1_2_2_2) (bridge_0_0_1_0) (bridge_5_6_6_6) (bridge_2_3_2_4) (bridge_6_6_6_7) (bridge_1_3_2_3) (bridge_2_0_3_0) (bridge_1_0_2_0) (bridge_4_1_4_2) (at_7_3) (at_7_2) (at_7_1) (bridge_7_6_7_7) (at_7_0) (at_6_4) (at_6_3) (at_6_2) (at_6_1) (at_6_0) (bridge_4_1_5_1) (bridge_0_2_0_3) (at_4_0) (at_3_6) (bridge_5_5_5_6) (at_3_7) (at_4_2) (at_3_4) (at_4_1) (at_3_5) (at_4_4) (at_3_2) (at_4_3) (at_3_3) (at_2_0) (at_4_6) (at_3_0) (at_4_5) (at_3_1) (at_5_3) (at_2_3) (at_5_2) (at_2_4) (bridge_0_5_1_5) (at_5_5) (at_2_1) (bridge_1_5_1_6) (at_5_4) (at_2_2) (at_2_7) (bridge_5_5_6_5) (at_5_1) (at_2_5) (at_5_0) (at_2_6) (bridge_7_1_7_2) (bridge_6_5_6_6) (bridge_5_4_6_4) (bridge_1_7_2_7) (bridge_4_3_4_4) (bridge_2_2_2_3) (bridge_3_3_4_3) (bridge_3_3_3_4) (bridge_5_4_5_5) (bridge_4_3_5_3) (at_1_0) (at_0_5) (at_1_1) (at_0_6) (bridge_5_0_6_0) (at_0_3) (at_0_4) (at_5_6) (at_0_7) (at_5_7) (at_4_7) (at_1_6) (bridge_6_4_6_5) (at_1_7) (at_1_4) (at_0_1) (bridge_1_1_1_2) (bridge_3_0_4_0) (at_0_2) (at_1_5) (bridge_5_0_5_1) (at_1_2) (at_1_3) (at_0_0) (bridge_3_6_3_7) (bridge_5_2_5_3) (bridge_1_2_1_3) (bridge_3_1_3_2) (bridge_3_7_4_7) (bridge_0_0_0_1) (bridge_1_4_1_5) (bridge_0_4_0_5) (bridge_3_6_4_6) (bridge_5_2_6_2) (bridge_0_1_0_2) (bridge_7_2_7_3) (bridge_3_4_3_5) (bridge_0_6_1_6) (bridge_3_2_4_2) (bridge_1_3_1_4) (bridge_3_4_4_4) (bridge_3_2_3_3) (bridge_0_7_1_7) (bridge_2_3_3_3) (bridge_6_6_7_6) (bridge_5_6_5_7) (bridge_5_7_6_7) (bridge_0_5_0_6) (bridge_1_5_2_5) (bridge_5_1_5_2) (bridge_1_0_1_1) (bridge_0_3_1_3) (bridge_4_5_4_6) (bridge_2_1_3_1) (bridge_2_0_2_1) (bridge_4_5_5_5) (bridge_5_1_6_1) (openprec_move_0_0_1_0_bridge_0_0_1_0) (openprec_move_0_0_0_1_bridge_0_0_0_1) (openprec_move_0_1_1_1_bridge_0_1_1_1) (openprec_move_0_1_0_0_bridge_0_0_0_1) (openprec_move_0_1_0_2_bridge_0_1_0_2) (openprec_move_0_2_1_2_bridge_0_2_1_2) (openprec_move_0_2_0_1_bridge_0_1_0_2) (openprec_move_0_2_0_3_bridge_0_2_0_3) (openprec_move_0_3_1_3_bridge_0_3_1_3) (openprec_move_0_3_0_2_bridge_0_2_0_3) (openprec_move_0_3_0_4_bridge_0_3_0_4) (openprec_move_0_4_1_4_bridge_0_4_1_4) (openprec_move_0_4_0_3_bridge_0_3_0_4) (openprec_move_0_4_0_5_bridge_0_4_0_5) (openprec_move_0_5_1_5_bridge_0_5_1_5) (openprec_move_0_5_0_4_bridge_0_4_0_5) (openprec_move_0_5_0_6_bridge_0_5_0_6) (openprec_move_0_6_1_6_bridge_0_6_1_6) (openprec_move_0_6_0_5_bridge_0_5_0_6) (openprec_move_0_6_0_7_bridge_0_6_0_7) (openprec_move_0_7_1_7_bridge_0_7_1_7) (openprec_move_0_7_0_6_bridge_0_6_0_7) (openprec_move_1_0_0_0_bridge_0_0_1_0) (openprec_move_1_0_2_0_bridge_1_0_2_0) (openprec_move_1_0_1_1_bridge_1_0_1_1) (openprec_move_1_1_0_1_bridge_0_1_1_1) (openprec_move_1_1_2_1_bridge_1_1_2_1) (openprec_move_1_1_1_0_bridge_1_0_1_1) (openprec_move_1_1_1_2_bridge_1_1_1_2) (openprec_move_1_2_0_2_bridge_0_2_1_2) (openprec_move_1_2_2_2_bridge_1_2_2_2) (openprec_move_1_2_1_1_bridge_1_1_1_2) (openprec_move_1_2_1_3_bridge_1_2_1_3) (openprec_move_1_3_0_3_bridge_0_3_1_3) (openprec_move_1_3_2_3_bridge_1_3_2_3) (openprec_move_1_3_1_2_bridge_1_2_1_3) (openprec_move_1_3_1_4_bridge_1_3_1_4) (openprec_move_1_4_0_4_bridge_0_4_1_4) (openprec_move_1_4_2_4_bridge_1_4_2_4) (openprec_move_1_4_1_3_bridge_1_3_1_4) (openprec_move_1_4_1_5_bridge_1_4_1_5) (openprec_move_1_5_0_5_bridge_0_5_1_5) (openprec_move_1_5_2_5_bridge_1_5_2_5) (openprec_move_1_5_1_4_bridge_1_4_1_5) (openprec_move_1_5_1_6_bridge_1_5_1_6) (openprec_move_1_6_0_6_bridge_0_6_1_6) (openprec_move_1_6_2_6_bridge_1_6_2_6) (openprec_move_1_6_1_5_bridge_1_5_1_6) (openprec_move_1_6_1_7_bridge_1_6_1_7) (openprec_move_1_7_0_7_bridge_0_7_1_7) (openprec_move_1_7_2_7_bridge_1_7_2_7) (openprec_move_1_7_1_6_bridge_1_6_1_7) (openprec_move_2_0_1_0_bridge_1_0_2_0) (openprec_move_2_0_3_0_bridge_2_0_3_0) (openprec_move_2_0_2_1_bridge_2_0_2_1) (openprec_move_2_1_1_1_bridge_1_1_2_1) (openprec_move_2_1_3_1_bridge_2_1_3_1) (openprec_move_2_1_2_0_bridge_2_0_2_1) (openprec_move_2_1_2_2_bridge_2_1_2_2) (openprec_move_2_2_1_2_bridge_1_2_2_2) (openprec_move_2_2_3_2_bridge_2_2_3_2) (openprec_move_2_2_2_1_bridge_2_1_2_2) (openprec_move_2_2_2_3_bridge_2_2_2_3) (openprec_move_2_3_1_3_bridge_1_3_2_3) (openprec_move_2_3_3_3_bridge_2_3_3_3) (openprec_move_2_3_2_2_bridge_2_2_2_3) (openprec_move_2_3_2_4_bridge_2_3_2_4) (openprec_move_2_4_1_4_bridge_1_4_2_4) (openprec_move_2_4_3_4_bridge_2_4_3_4) (openprec_move_2_4_2_3_bridge_2_3_2_4) (openprec_move_2_4_2_5_bridge_2_4_2_5) (openprec_move_2_5_1_5_bridge_1_5_2_5) (openprec_move_2_5_3_5_bridge_2_5_3_5) (openprec_move_2_5_2_4_bridge_2_4_2_5) (openprec_move_2_5_2_6_bridge_2_5_2_6) (openprec_move_2_6_1_6_bridge_1_6_2_6) (openprec_move_2_6_3_6_bridge_2_6_3_6) (openprec_move_2_6_2_5_bridge_2_5_2_6) (openprec_move_2_6_2_7_bridge_2_6_2_7) (openprec_move_2_7_1_7_bridge_1_7_2_7) (openprec_move_2_7_3_7_bridge_2_7_3_7) (openprec_move_2_7_2_6_bridge_2_6_2_7) (openprec_move_3_0_2_0_bridge_2_0_3_0) (openprec_move_3_0_4_0_bridge_3_0_4_0) (openprec_move_3_0_3_1_bridge_3_0_3_1) (openprec_move_3_1_2_1_bridge_2_1_3_1) (openprec_move_3_1_4_1_bridge_3_1_4_1) (openprec_move_3_1_3_0_bridge_3_0_3_1) (openprec_move_3_1_3_2_bridge_3_1_3_2) (openprec_move_3_2_2_2_bridge_2_2_3_2) (openprec_move_3_2_4_2_bridge_3_2_4_2) (openprec_move_3_2_3_1_bridge_3_1_3_2) (openprec_move_3_2_3_3_bridge_3_2_3_3) (openprec_move_3_3_2_3_bridge_2_3_3_3) (openprec_move_3_3_4_3_bridge_3_3_4_3) (openprec_move_3_3_3_2_bridge_3_2_3_3) (openprec_move_3_3_3_4_bridge_3_3_3_4) (openprec_move_3_4_2_4_bridge_2_4_3_4) (openprec_move_3_4_4_4_bridge_3_4_4_4) (openprec_move_3_4_3_3_bridge_3_3_3_4) (openprec_move_3_4_3_5_bridge_3_4_3_5) (openprec_move_3_5_2_5_bridge_2_5_3_5) (openprec_move_3_5_4_5_bridge_3_5_4_5) (openprec_move_3_5_3_4_bridge_3_4_3_5) (openprec_move_3_5_3_6_bridge_3_5_3_6) (openprec_move_3_6_2_6_bridge_2_6_3_6) (openprec_move_3_6_4_6_bridge_3_6_4_6) (openprec_move_3_6_3_5_bridge_3_5_3_6) (openprec_move_3_6_3_7_bridge_3_6_3_7) (openprec_move_3_7_2_7_bridge_2_7_3_7) (openprec_move_3_7_4_7_bridge_3_7_4_7) (openprec_move_3_7_3_6_bridge_3_6_3_7) (openprec_move_4_0_3_0_bridge_3_0_4_0) (openprec_move_4_0_5_0_bridge_4_0_5_0) (openprec_move_4_0_4_1_bridge_4_0_4_1) (openprec_move_4_1_3_1_bridge_3_1_4_1) (openprec_move_4_1_5_1_bridge_4_1_5_1) (openprec_move_4_1_4_0_bridge_4_0_4_1) (openprec_move_4_1_4_2_bridge_4_1_4_2) (openprec_move_4_2_3_2_bridge_3_2_4_2) (openprec_move_4_2_5_2_bridge_4_2_5_2) (openprec_move_4_2_4_1_bridge_4_1_4_2) (openprec_move_4_2_4_3_bridge_4_2_4_3) (openprec_move_4_3_3_3_bridge_3_3_4_3) (openprec_move_4_3_5_3_bridge_4_3_5_3) (openprec_move_4_3_4_2_bridge_4_2_4_3) (openprec_move_4_3_4_4_bridge_4_3_4_4) (openprec_move_4_4_3_4_bridge_3_4_4_4) (openprec_move_4_4_5_4_bridge_4_4_5_4) (openprec_move_4_4_4_3_bridge_4_3_4_4) (openprec_move_4_4_4_5_bridge_4_4_4_5) (openprec_move_4_5_3_5_bridge_3_5_4_5) (openprec_move_4_5_5_5_bridge_4_5_5_5) (openprec_move_4_5_4_4_bridge_4_4_4_5) (openprec_move_4_5_4_6_bridge_4_5_4_6) (openprec_move_4_6_3_6_bridge_3_6_4_6) (openprec_move_4_6_5_6_bridge_4_6_5_6) (openprec_move_4_6_4_5_bridge_4_5_4_6) (openprec_move_4_6_4_7_bridge_4_6_4_7) (openprec_move_4_7_3_7_bridge_3_7_4_7) (openprec_move_4_7_5_7_bridge_4_7_5_7) (openprec_move_4_7_4_6_bridge_4_6_4_7) (openprec_move_5_0_4_0_bridge_4_0_5_0) (openprec_move_5_0_6_0_bridge_5_0_6_0) (openprec_move_5_0_5_1_bridge_5_0_5_1) (openprec_move_5_1_4_1_bridge_4_1_5_1) (openprec_move_5_1_6_1_bridge_5_1_6_1) (openprec_move_5_1_5_0_bridge_5_0_5_1) (openprec_move_5_1_5_2_bridge_5_1_5_2) (openprec_move_5_2_4_2_bridge_4_2_5_2) (openprec_move_5_2_6_2_bridge_5_2_6_2) (openprec_move_5_2_5_1_bridge_5_1_5_2) (openprec_move_5_2_5_3_bridge_5_2_5_3) (openprec_move_5_3_4_3_bridge_4_3_5_3) (openprec_move_5_3_6_3_bridge_5_3_6_3) (openprec_move_5_3_5_2_bridge_5_2_5_3) (openprec_move_5_3_5_4_bridge_5_3_5_4) (openprec_move_5_4_4_4_bridge_4_4_5_4) (openprec_move_5_4_6_4_bridge_5_4_6_4) (openprec_move_5_4_5_3_bridge_5_3_5_4) (openprec_move_5_4_5_5_bridge_5_4_5_5) (openprec_move_5_5_4_5_bridge_4_5_5_5) (openprec_move_5_5_6_5_bridge_5_5_6_5) (openprec_move_5_5_5_4_bridge_5_4_5_5) (openprec_move_5_5_5_6_bridge_5_5_5_6) (openprec_move_5_6_4_6_bridge_4_6_5_6) (openprec_move_5_6_6_6_bridge_5_6_6_6) (openprec_move_5_6_5_5_bridge_5_5_5_6) (openprec_move_5_6_5_7_bridge_5_6_5_7) (openprec_move_5_7_4_7_bridge_4_7_5_7) (openprec_move_5_7_6_7_bridge_5_7_6_7) (openprec_move_5_7_5_6_bridge_5_6_5_7) (openprec_move_6_0_5_0_bridge_5_0_6_0) (openprec_move_6_0_7_0_bridge_6_0_7_0) (openprec_move_6_0_6_1_bridge_6_0_6_1) (openprec_move_6_1_5_1_bridge_5_1_6_1) (openprec_move_6_1_7_1_bridge_6_1_7_1) (openprec_move_6_1_6_0_bridge_6_0_6_1) (openprec_move_6_1_6_2_bridge_6_1_6_2) (openprec_move_6_2_5_2_bridge_5_2_6_2) (openprec_move_6_2_7_2_bridge_6_2_7_2) (openprec_move_6_2_6_1_bridge_6_1_6_2) (openprec_move_6_2_6_3_bridge_6_2_6_3) (openprec_move_6_3_5_3_bridge_5_3_6_3) (openprec_move_6_3_7_3_bridge_6_3_7_3) (openprec_move_6_3_6_2_bridge_6_2_6_3) (openprec_move_6_3_6_4_bridge_6_3_6_4) (openprec_move_6_4_5_4_bridge_5_4_6_4) (openprec_move_6_4_7_4_bridge_6_4_7_4) (openprec_move_6_4_6_3_bridge_6_3_6_4) (openprec_move_6_4_6_5_bridge_6_4_6_5) (openprec_move_6_5_5_5_bridge_5_5_6_5) (openprec_move_6_5_7_5_bridge_6_5_7_5) (openprec_move_6_5_6_4_bridge_6_4_6_5) (openprec_move_6_5_6_6_bridge_6_5_6_6) (openprec_move_6_6_5_6_bridge_5_6_6_6) (openprec_move_6_6_7_6_bridge_6_6_7_6) (openprec_move_6_6_6_5_bridge_6_5_6_6) (openprec_move_6_6_6_7_bridge_6_6_6_7) (openprec_move_6_7_5_7_bridge_5_7_6_7) (openprec_move_6_7_7_7_bridge_6_7_7_7) (openprec_move_6_7_6_6_bridge_6_6_6_7) (openprec_move_7_0_6_0_bridge_6_0_7_0) (openprec_move_7_0_7_1_bridge_7_0_7_1) (openprec_move_7_1_6_1_bridge_6_1_7_1) (openprec_move_7_1_7_0_bridge_7_0_7_1) (openprec_move_7_1_7_2_bridge_7_1_7_2) (openprec_move_7_2_6_2_bridge_6_2_7_2) (openprec_move_7_2_7_1_bridge_7_1_7_2) (openprec_move_7_2_7_3_bridge_7_2_7_3) (openprec_move_7_3_6_3_bridge_6_3_7_3) (openprec_move_7_3_7_2_bridge_7_2_7_3) (openprec_move_7_3_7_4_bridge_7_3_7_4) (openprec_move_7_4_6_4_bridge_6_4_7_4) (openprec_move_7_4_7_3_bridge_7_3_7_4) (openprec_move_7_4_7_5_bridge_7_4_7_5) (openprec_move_7_5_6_5_bridge_6_5_7_5) (openprec_move_7_5_7_4_bridge_7_4_7_5) (openprec_move_7_5_7_6_bridge_7_5_7_6) (openprec_move_7_6_6_6_bridge_6_6_7_6) (openprec_move_7_6_7_5_bridge_7_5_7_6) (openprec_move_7_6_7_7_bridge_7_6_7_7) (openprec_move_7_7_6_7_bridge_6_7_7_7) (openprec_move_7_7_7_6_bridge_7_6_7_7) (valid) (done))

 (:action move_0_0_1_0
  :effect (and
    (when (and (at_0_0) (or (bridge_0_0_1_0) (not (openprec_move_0_0_1_0_bridge_0_0_1_0))) (valid)) (at_1_0))
    (when (and (at_0_0) (or (bridge_0_0_1_0) (not (openprec_move_0_0_1_0_bridge_0_0_1_0))) (valid)) (not (at_0_0)))
    (when (not (and (at_0_0) (or (bridge_0_0_1_0) (not (openprec_move_0_0_1_0_bridge_0_0_1_0))) (valid))) (not (valid)))
  )
 )

 (:action move_0_0_0_1
  :effect (and
    (when (and (at_0_0) (or (bridge_0_0_0_1) (not (openprec_move_0_0_0_1_bridge_0_0_0_1))) (valid)) (at_0_1))
    (when (and (at_0_0) (or (bridge_0_0_0_1) (not (openprec_move_0_0_0_1_bridge_0_0_0_1))) (valid)) (not (at_0_0)))
    (when (not (and (at_0_0) (or (bridge_0_0_0_1) (not (openprec_move_0_0_0_1_bridge_0_0_0_1))) (valid))) (not (valid)))
  )
 )

 (:action move_0_1_1_1
  :effect (and
    (when (and (at_0_1) (or (bridge_0_1_1_1) (not (openprec_move_0_1_1_1_bridge_0_1_1_1))) (valid)) (at_1_1))
    (when (and (at_0_1) (or (bridge_0_1_1_1) (not (openprec_move_0_1_1_1_bridge_0_1_1_1))) (valid)) (not (at_0_1)))
    (when (not (and (at_0_1) (or (bridge_0_1_1_1) (not (openprec_move_0_1_1_1_bridge_0_1_1_1))) (valid))) (not (valid)))
  )
 )

 (:action move_0_1_0_0
  :effect (and
    (when (and (at_0_1) (or (bridge_0_0_0_1) (not (openprec_move_0_1_0_0_bridge_0_0_0_1))) (valid)) (at_0_0))
    (when (and (at_0_1) (or (bridge_0_0_0_1) (not (openprec_move_0_1_0_0_bridge_0_0_0_1))) (valid)) (not (at_0_1)))
    (when (not (and (at_0_1) (or (bridge_0_0_0_1) (not (openprec_move_0_1_0_0_bridge_0_0_0_1))) (valid))) (not (valid)))
  )
 )

 (:action move_0_1_0_2
  :effect (and
    (when (and (at_0_1) (or (bridge_0_1_0_2) (not (openprec_move_0_1_0_2_bridge_0_1_0_2))) (valid)) (at_0_2))
    (when (and (at_0_1) (or (bridge_0_1_0_2) (not (openprec_move_0_1_0_2_bridge_0_1_0_2))) (valid)) (not (at_0_1)))
    (when (not (and (at_0_1) (or (bridge_0_1_0_2) (not (openprec_move_0_1_0_2_bridge_0_1_0_2))) (valid))) (not (valid)))
  )
 )

 (:action move_0_2_1_2
  :effect (and
    (when (and (at_0_2) (or (bridge_0_2_1_2) (not (openprec_move_0_2_1_2_bridge_0_2_1_2))) (valid)) (at_1_2))
    (when (and (at_0_2) (or (bridge_0_2_1_2) (not (openprec_move_0_2_1_2_bridge_0_2_1_2))) (valid)) (not (at_0_2)))
    (when (not (and (at_0_2) (or (bridge_0_2_1_2) (not (openprec_move_0_2_1_2_bridge_0_2_1_2))) (valid))) (not (valid)))
  )
 )

 (:action move_0_2_0_1
  :effect (and
    (when (and (at_0_2) (or (bridge_0_1_0_2) (not (openprec_move_0_2_0_1_bridge_0_1_0_2))) (valid)) (at_0_1))
    (when (and (at_0_2) (or (bridge_0_1_0_2) (not (openprec_move_0_2_0_1_bridge_0_1_0_2))) (valid)) (not (at_0_2)))
    (when (not (and (at_0_2) (or (bridge_0_1_0_2) (not (openprec_move_0_2_0_1_bridge_0_1_0_2))) (valid))) (not (valid)))
  )
 )

 (:action move_0_2_0_3
  :effect (and
    (when (and (at_0_2) (or (bridge_0_2_0_3) (not (openprec_move_0_2_0_3_bridge_0_2_0_3))) (valid)) (at_0_3))
    (when (and (at_0_2) (or (bridge_0_2_0_3) (not (openprec_move_0_2_0_3_bridge_0_2_0_3))) (valid)) (not (at_0_2)))
    (when (not (and (at_0_2) (or (bridge_0_2_0_3) (not (openprec_move_0_2_0_3_bridge_0_2_0_3))) (valid))) (not (valid)))
  )
 )

 (:action move_0_3_1_3
  :effect (and
    (when (and (at_0_3) (or (bridge_0_3_1_3) (not (openprec_move_0_3_1_3_bridge_0_3_1_3))) (valid)) (at_1_3))
    (when (and (at_0_3) (or (bridge_0_3_1_3) (not (openprec_move_0_3_1_3_bridge_0_3_1_3))) (valid)) (not (at_0_3)))
    (when (not (and (at_0_3) (or (bridge_0_3_1_3) (not (openprec_move_0_3_1_3_bridge_0_3_1_3))) (valid))) (not (valid)))
  )
 )

 (:action move_0_3_0_2
  :effect (and
    (when (and (at_0_3) (or (bridge_0_2_0_3) (not (openprec_move_0_3_0_2_bridge_0_2_0_3))) (valid)) (at_0_2))
    (when (and (at_0_3) (or (bridge_0_2_0_3) (not (openprec_move_0_3_0_2_bridge_0_2_0_3))) (valid)) (not (at_0_3)))
    (when (not (and (at_0_3) (or (bridge_0_2_0_3) (not (openprec_move_0_3_0_2_bridge_0_2_0_3))) (valid))) (not (valid)))
  )
 )

 (:action move_0_3_0_4
  :effect (and
    (when (and (at_0_3) (or (bridge_0_3_0_4) (not (openprec_move_0_3_0_4_bridge_0_3_0_4))) (valid)) (at_0_4))
    (when (and (at_0_3) (or (bridge_0_3_0_4) (not (openprec_move_0_3_0_4_bridge_0_3_0_4))) (valid)) (not (at_0_3)))
    (when (not (and (at_0_3) (or (bridge_0_3_0_4) (not (openprec_move_0_3_0_4_bridge_0_3_0_4))) (valid))) (not (valid)))
  )
 )

 (:action move_0_4_1_4
  :effect (and
    (when (and (at_0_4) (or (bridge_0_4_1_4) (not (openprec_move_0_4_1_4_bridge_0_4_1_4))) (valid)) (at_1_4))
    (when (and (at_0_4) (or (bridge_0_4_1_4) (not (openprec_move_0_4_1_4_bridge_0_4_1_4))) (valid)) (not (at_0_4)))
    (when (not (and (at_0_4) (or (bridge_0_4_1_4) (not (openprec_move_0_4_1_4_bridge_0_4_1_4))) (valid))) (not (valid)))
  )
 )

 (:action move_0_4_0_3
  :effect (and
    (when (and (at_0_4) (or (bridge_0_3_0_4) (not (openprec_move_0_4_0_3_bridge_0_3_0_4))) (valid)) (at_0_3))
    (when (and (at_0_4) (or (bridge_0_3_0_4) (not (openprec_move_0_4_0_3_bridge_0_3_0_4))) (valid)) (not (at_0_4)))
    (when (not (and (at_0_4) (or (bridge_0_3_0_4) (not (openprec_move_0_4_0_3_bridge_0_3_0_4))) (valid))) (not (valid)))
  )
 )

 (:action move_0_4_0_5
  :effect (and
    (when (and (at_0_4) (or (bridge_0_4_0_5) (not (openprec_move_0_4_0_5_bridge_0_4_0_5))) (valid)) (at_0_5))
    (when (and (at_0_4) (or (bridge_0_4_0_5) (not (openprec_move_0_4_0_5_bridge_0_4_0_5))) (valid)) (not (at_0_4)))
    (when (not (and (at_0_4) (or (bridge_0_4_0_5) (not (openprec_move_0_4_0_5_bridge_0_4_0_5))) (valid))) (not (valid)))
  )
 )

 (:action move_0_5_1_5
  :effect (and
    (when (and (at_0_5) (or (bridge_0_5_1_5) (not (openprec_move_0_5_1_5_bridge_0_5_1_5))) (valid)) (at_1_5))
    (when (and (at_0_5) (or (bridge_0_5_1_5) (not (openprec_move_0_5_1_5_bridge_0_5_1_5))) (valid)) (not (at_0_5)))
    (when (not (and (at_0_5) (or (bridge_0_5_1_5) (not (openprec_move_0_5_1_5_bridge_0_5_1_5))) (valid))) (not (valid)))
  )
 )

 (:action move_0_5_0_4
  :effect (and
    (when (and (at_0_5) (or (bridge_0_4_0_5) (not (openprec_move_0_5_0_4_bridge_0_4_0_5))) (valid)) (at_0_4))
    (when (and (at_0_5) (or (bridge_0_4_0_5) (not (openprec_move_0_5_0_4_bridge_0_4_0_5))) (valid)) (not (at_0_5)))
    (when (not (and (at_0_5) (or (bridge_0_4_0_5) (not (openprec_move_0_5_0_4_bridge_0_4_0_5))) (valid))) (not (valid)))
  )
 )

 (:action move_0_5_0_6
  :effect (and
    (when (and (at_0_5) (or (bridge_0_5_0_6) (not (openprec_move_0_5_0_6_bridge_0_5_0_6))) (valid)) (at_0_6))
    (when (and (at_0_5) (or (bridge_0_5_0_6) (not (openprec_move_0_5_0_6_bridge_0_5_0_6))) (valid)) (not (at_0_5)))
    (when (not (and (at_0_5) (or (bridge_0_5_0_6) (not (openprec_move_0_5_0_6_bridge_0_5_0_6))) (valid))) (not (valid)))
  )
 )

 (:action move_0_6_1_6
  :effect (and
    (when (and (at_0_6) (or (bridge_0_6_1_6) (not (openprec_move_0_6_1_6_bridge_0_6_1_6))) (valid)) (at_1_6))
    (when (and (at_0_6) (or (bridge_0_6_1_6) (not (openprec_move_0_6_1_6_bridge_0_6_1_6))) (valid)) (not (at_0_6)))
    (when (not (and (at_0_6) (or (bridge_0_6_1_6) (not (openprec_move_0_6_1_6_bridge_0_6_1_6))) (valid))) (not (valid)))
  )
 )

 (:action move_0_6_0_5
  :effect (and
    (when (and (at_0_6) (or (bridge_0_5_0_6) (not (openprec_move_0_6_0_5_bridge_0_5_0_6))) (valid)) (at_0_5))
    (when (and (at_0_6) (or (bridge_0_5_0_6) (not (openprec_move_0_6_0_5_bridge_0_5_0_6))) (valid)) (not (at_0_6)))
    (when (not (and (at_0_6) (or (bridge_0_5_0_6) (not (openprec_move_0_6_0_5_bridge_0_5_0_6))) (valid))) (not (valid)))
  )
 )

 (:action move_0_6_0_7
  :effect (and
    (when (and (at_0_6) (or (bridge_0_6_0_7) (not (openprec_move_0_6_0_7_bridge_0_6_0_7))) (valid)) (at_0_7))
    (when (and (at_0_6) (or (bridge_0_6_0_7) (not (openprec_move_0_6_0_7_bridge_0_6_0_7))) (valid)) (not (at_0_6)))
    (when (not (and (at_0_6) (or (bridge_0_6_0_7) (not (openprec_move_0_6_0_7_bridge_0_6_0_7))) (valid))) (not (valid)))
  )
 )

 (:action move_0_7_1_7
  :effect (and
    (when (and (at_0_7) (or (bridge_0_7_1_7) (not (openprec_move_0_7_1_7_bridge_0_7_1_7))) (valid)) (at_1_7))
    (when (and (at_0_7) (or (bridge_0_7_1_7) (not (openprec_move_0_7_1_7_bridge_0_7_1_7))) (valid)) (not (at_0_7)))
    (when (not (and (at_0_7) (or (bridge_0_7_1_7) (not (openprec_move_0_7_1_7_bridge_0_7_1_7))) (valid))) (not (valid)))
  )
 )

 (:action move_0_7_0_6
  :effect (and
    (when (and (at_0_7) (or (bridge_0_6_0_7) (not (openprec_move_0_7_0_6_bridge_0_6_0_7))) (valid)) (at_0_6))
    (when (and (at_0_7) (or (bridge_0_6_0_7) (not (openprec_move_0_7_0_6_bridge_0_6_0_7))) (valid)) (not (at_0_7)))
    (when (not (and (at_0_7) (or (bridge_0_6_0_7) (not (openprec_move_0_7_0_6_bridge_0_6_0_7))) (valid))) (not (valid)))
  )
 )

 (:action move_1_0_0_0
  :effect (and
    (when (and (at_1_0) (or (bridge_0_0_1_0) (not (openprec_move_1_0_0_0_bridge_0_0_1_0))) (valid)) (at_0_0))
    (when (and (at_1_0) (or (bridge_0_0_1_0) (not (openprec_move_1_0_0_0_bridge_0_0_1_0))) (valid)) (not (at_1_0)))
    (when (not (and (at_1_0) (or (bridge_0_0_1_0) (not (openprec_move_1_0_0_0_bridge_0_0_1_0))) (valid))) (not (valid)))
  )
 )

 (:action move_1_0_2_0
  :effect (and
    (when (and (at_1_0) (or (bridge_1_0_2_0) (not (openprec_move_1_0_2_0_bridge_1_0_2_0))) (valid)) (at_2_0))
    (when (and (at_1_0) (or (bridge_1_0_2_0) (not (openprec_move_1_0_2_0_bridge_1_0_2_0))) (valid)) (not (at_1_0)))
    (when (not (and (at_1_0) (or (bridge_1_0_2_0) (not (openprec_move_1_0_2_0_bridge_1_0_2_0))) (valid))) (not (valid)))
  )
 )

 (:action move_1_0_1_1
  :effect (and
    (when (and (at_1_0) (or (bridge_1_0_1_1) (not (openprec_move_1_0_1_1_bridge_1_0_1_1))) (valid)) (at_1_1))
    (when (and (at_1_0) (or (bridge_1_0_1_1) (not (openprec_move_1_0_1_1_bridge_1_0_1_1))) (valid)) (not (at_1_0)))
    (when (not (and (at_1_0) (or (bridge_1_0_1_1) (not (openprec_move_1_0_1_1_bridge_1_0_1_1))) (valid))) (not (valid)))
  )
 )

 (:action move_1_1_0_1
  :effect (and
    (when (and (at_1_1) (or (bridge_0_1_1_1) (not (openprec_move_1_1_0_1_bridge_0_1_1_1))) (valid)) (at_0_1))
    (when (and (at_1_1) (or (bridge_0_1_1_1) (not (openprec_move_1_1_0_1_bridge_0_1_1_1))) (valid)) (not (at_1_1)))
    (when (not (and (at_1_1) (or (bridge_0_1_1_1) (not (openprec_move_1_1_0_1_bridge_0_1_1_1))) (valid))) (not (valid)))
  )
 )

 (:action move_1_1_2_1
  :effect (and
    (when (and (at_1_1) (or (bridge_1_1_2_1) (not (openprec_move_1_1_2_1_bridge_1_1_2_1))) (valid)) (at_2_1))
    (when (and (at_1_1) (or (bridge_1_1_2_1) (not (openprec_move_1_1_2_1_bridge_1_1_2_1))) (valid)) (not (at_1_1)))
    (when (not (and (at_1_1) (or (bridge_1_1_2_1) (not (openprec_move_1_1_2_1_bridge_1_1_2_1))) (valid))) (not (valid)))
  )
 )

 (:action move_1_1_1_0
  :effect (and
    (when (and (at_1_1) (or (bridge_1_0_1_1) (not (openprec_move_1_1_1_0_bridge_1_0_1_1))) (valid)) (at_1_0))
    (when (and (at_1_1) (or (bridge_1_0_1_1) (not (openprec_move_1_1_1_0_bridge_1_0_1_1))) (valid)) (not (at_1_1)))
    (when (not (and (at_1_1) (or (bridge_1_0_1_1) (not (openprec_move_1_1_1_0_bridge_1_0_1_1))) (valid))) (not (valid)))
  )
 )

 (:action move_1_1_1_2
  :effect (and
    (when (and (at_1_1) (or (bridge_1_1_1_2) (not (openprec_move_1_1_1_2_bridge_1_1_1_2))) (valid)) (at_1_2))
    (when (and (at_1_1) (or (bridge_1_1_1_2) (not (openprec_move_1_1_1_2_bridge_1_1_1_2))) (valid)) (not (at_1_1)))
    (when (not (and (at_1_1) (or (bridge_1_1_1_2) (not (openprec_move_1_1_1_2_bridge_1_1_1_2))) (valid))) (not (valid)))
  )
 )

 (:action move_1_2_0_2
  :effect (and
    (when (and (at_1_2) (or (bridge_0_2_1_2) (not (openprec_move_1_2_0_2_bridge_0_2_1_2))) (valid)) (at_0_2))
    (when (and (at_1_2) (or (bridge_0_2_1_2) (not (openprec_move_1_2_0_2_bridge_0_2_1_2))) (valid)) (not (at_1_2)))
    (when (not (and (at_1_2) (or (bridge_0_2_1_2) (not (openprec_move_1_2_0_2_bridge_0_2_1_2))) (valid))) (not (valid)))
  )
 )

 (:action move_1_2_2_2
  :effect (and
    (when (and (at_1_2) (or (bridge_1_2_2_2) (not (openprec_move_1_2_2_2_bridge_1_2_2_2))) (valid)) (at_2_2))
    (when (and (at_1_2) (or (bridge_1_2_2_2) (not (openprec_move_1_2_2_2_bridge_1_2_2_2))) (valid)) (not (at_1_2)))
    (when (not (and (at_1_2) (or (bridge_1_2_2_2) (not (openprec_move_1_2_2_2_bridge_1_2_2_2))) (valid))) (not (valid)))
  )
 )

 (:action move_1_2_1_1
  :effect (and
    (when (and (at_1_2) (or (bridge_1_1_1_2) (not (openprec_move_1_2_1_1_bridge_1_1_1_2))) (valid)) (at_1_1))
    (when (and (at_1_2) (or (bridge_1_1_1_2) (not (openprec_move_1_2_1_1_bridge_1_1_1_2))) (valid)) (not (at_1_2)))
    (when (not (and (at_1_2) (or (bridge_1_1_1_2) (not (openprec_move_1_2_1_1_bridge_1_1_1_2))) (valid))) (not (valid)))
  )
 )

 (:action move_1_2_1_3
  :effect (and
    (when (and (at_1_2) (or (bridge_1_2_1_3) (not (openprec_move_1_2_1_3_bridge_1_2_1_3))) (valid)) (at_1_3))
    (when (and (at_1_2) (or (bridge_1_2_1_3) (not (openprec_move_1_2_1_3_bridge_1_2_1_3))) (valid)) (not (at_1_2)))
    (when (not (and (at_1_2) (or (bridge_1_2_1_3) (not (openprec_move_1_2_1_3_bridge_1_2_1_3))) (valid))) (not (valid)))
  )
 )

 (:action move_1_3_0_3
  :effect (and
    (when (and (at_1_3) (or (bridge_0_3_1_3) (not (openprec_move_1_3_0_3_bridge_0_3_1_3))) (valid)) (at_0_3))
    (when (and (at_1_3) (or (bridge_0_3_1_3) (not (openprec_move_1_3_0_3_bridge_0_3_1_3))) (valid)) (not (at_1_3)))
    (when (not (and (at_1_3) (or (bridge_0_3_1_3) (not (openprec_move_1_3_0_3_bridge_0_3_1_3))) (valid))) (not (valid)))
  )
 )

 (:action move_1_3_2_3
  :effect (and
    (when (and (at_1_3) (or (bridge_1_3_2_3) (not (openprec_move_1_3_2_3_bridge_1_3_2_3))) (valid)) (at_2_3))
    (when (and (at_1_3) (or (bridge_1_3_2_3) (not (openprec_move_1_3_2_3_bridge_1_3_2_3))) (valid)) (not (at_1_3)))
    (when (not (and (at_1_3) (or (bridge_1_3_2_3) (not (openprec_move_1_3_2_3_bridge_1_3_2_3))) (valid))) (not (valid)))
  )
 )

 (:action move_1_3_1_2
  :effect (and
    (when (and (at_1_3) (or (bridge_1_2_1_3) (not (openprec_move_1_3_1_2_bridge_1_2_1_3))) (valid)) (at_1_2))
    (when (and (at_1_3) (or (bridge_1_2_1_3) (not (openprec_move_1_3_1_2_bridge_1_2_1_3))) (valid)) (not (at_1_3)))
    (when (not (and (at_1_3) (or (bridge_1_2_1_3) (not (openprec_move_1_3_1_2_bridge_1_2_1_3))) (valid))) (not (valid)))
  )
 )

 (:action move_1_3_1_4
  :effect (and
    (when (and (at_1_3) (or (bridge_1_3_1_4) (not (openprec_move_1_3_1_4_bridge_1_3_1_4))) (valid)) (at_1_4))
    (when (and (at_1_3) (or (bridge_1_3_1_4) (not (openprec_move_1_3_1_4_bridge_1_3_1_4))) (valid)) (not (at_1_3)))
    (when (not (and (at_1_3) (or (bridge_1_3_1_4) (not (openprec_move_1_3_1_4_bridge_1_3_1_4))) (valid))) (not (valid)))
  )
 )

 (:action move_1_4_0_4
  :effect (and
    (when (and (at_1_4) (or (bridge_0_4_1_4) (not (openprec_move_1_4_0_4_bridge_0_4_1_4))) (valid)) (at_0_4))
    (when (and (at_1_4) (or (bridge_0_4_1_4) (not (openprec_move_1_4_0_4_bridge_0_4_1_4))) (valid)) (not (at_1_4)))
    (when (not (and (at_1_4) (or (bridge_0_4_1_4) (not (openprec_move_1_4_0_4_bridge_0_4_1_4))) (valid))) (not (valid)))
  )
 )

 (:action move_1_4_2_4
  :effect (and
    (when (and (at_1_4) (or (bridge_1_4_2_4) (not (openprec_move_1_4_2_4_bridge_1_4_2_4))) (valid)) (at_2_4))
    (when (and (at_1_4) (or (bridge_1_4_2_4) (not (openprec_move_1_4_2_4_bridge_1_4_2_4))) (valid)) (not (at_1_4)))
    (when (not (and (at_1_4) (or (bridge_1_4_2_4) (not (openprec_move_1_4_2_4_bridge_1_4_2_4))) (valid))) (not (valid)))
  )
 )

 (:action move_1_4_1_3
  :effect (and
    (when (and (at_1_4) (or (bridge_1_3_1_4) (not (openprec_move_1_4_1_3_bridge_1_3_1_4))) (valid)) (at_1_3))
    (when (and (at_1_4) (or (bridge_1_3_1_4) (not (openprec_move_1_4_1_3_bridge_1_3_1_4))) (valid)) (not (at_1_4)))
    (when (not (and (at_1_4) (or (bridge_1_3_1_4) (not (openprec_move_1_4_1_3_bridge_1_3_1_4))) (valid))) (not (valid)))
  )
 )

 (:action move_1_4_1_5
  :effect (and
    (when (and (at_1_4) (or (bridge_1_4_1_5) (not (openprec_move_1_4_1_5_bridge_1_4_1_5))) (valid)) (at_1_5))
    (when (and (at_1_4) (or (bridge_1_4_1_5) (not (openprec_move_1_4_1_5_bridge_1_4_1_5))) (valid)) (not (at_1_4)))
    (when (not (and (at_1_4) (or (bridge_1_4_1_5) (not (openprec_move_1_4_1_5_bridge_1_4_1_5))) (valid))) (not (valid)))
  )
 )

 (:action move_1_5_0_5
  :effect (and
    (when (and (at_1_5) (or (bridge_0_5_1_5) (not (openprec_move_1_5_0_5_bridge_0_5_1_5))) (valid)) (at_0_5))
    (when (and (at_1_5) (or (bridge_0_5_1_5) (not (openprec_move_1_5_0_5_bridge_0_5_1_5))) (valid)) (not (at_1_5)))
    (when (not (and (at_1_5) (or (bridge_0_5_1_5) (not (openprec_move_1_5_0_5_bridge_0_5_1_5))) (valid))) (not (valid)))
  )
 )

 (:action move_1_5_2_5
  :effect (and
    (when (and (at_1_5) (or (bridge_1_5_2_5) (not (openprec_move_1_5_2_5_bridge_1_5_2_5))) (valid)) (at_2_5))
    (when (and (at_1_5) (or (bridge_1_5_2_5) (not (openprec_move_1_5_2_5_bridge_1_5_2_5))) (valid)) (not (at_1_5)))
    (when (not (and (at_1_5) (or (bridge_1_5_2_5) (not (openprec_move_1_5_2_5_bridge_1_5_2_5))) (valid))) (not (valid)))
  )
 )

 (:action move_1_5_1_4
  :effect (and
    (when (and (at_1_5) (or (bridge_1_4_1_5) (not (openprec_move_1_5_1_4_bridge_1_4_1_5))) (valid)) (at_1_4))
    (when (and (at_1_5) (or (bridge_1_4_1_5) (not (openprec_move_1_5_1_4_bridge_1_4_1_5))) (valid)) (not (at_1_5)))
    (when (not (and (at_1_5) (or (bridge_1_4_1_5) (not (openprec_move_1_5_1_4_bridge_1_4_1_5))) (valid))) (not (valid)))
  )
 )

 (:action move_1_5_1_6
  :effect (and
    (when (and (at_1_5) (or (bridge_1_5_1_6) (not (openprec_move_1_5_1_6_bridge_1_5_1_6))) (valid)) (at_1_6))
    (when (and (at_1_5) (or (bridge_1_5_1_6) (not (openprec_move_1_5_1_6_bridge_1_5_1_6))) (valid)) (not (at_1_5)))
    (when (not (and (at_1_5) (or (bridge_1_5_1_6) (not (openprec_move_1_5_1_6_bridge_1_5_1_6))) (valid))) (not (valid)))
  )
 )

 (:action move_1_6_0_6
  :effect (and
    (when (and (at_1_6) (or (bridge_0_6_1_6) (not (openprec_move_1_6_0_6_bridge_0_6_1_6))) (valid)) (at_0_6))
    (when (and (at_1_6) (or (bridge_0_6_1_6) (not (openprec_move_1_6_0_6_bridge_0_6_1_6))) (valid)) (not (at_1_6)))
    (when (not (and (at_1_6) (or (bridge_0_6_1_6) (not (openprec_move_1_6_0_6_bridge_0_6_1_6))) (valid))) (not (valid)))
  )
 )

 (:action move_1_6_2_6
  :effect (and
    (when (and (at_1_6) (or (bridge_1_6_2_6) (not (openprec_move_1_6_2_6_bridge_1_6_2_6))) (valid)) (at_2_6))
    (when (and (at_1_6) (or (bridge_1_6_2_6) (not (openprec_move_1_6_2_6_bridge_1_6_2_6))) (valid)) (not (at_1_6)))
    (when (not (and (at_1_6) (or (bridge_1_6_2_6) (not (openprec_move_1_6_2_6_bridge_1_6_2_6))) (valid))) (not (valid)))
  )
 )

 (:action move_1_6_1_5
  :effect (and
    (when (and (at_1_6) (or (bridge_1_5_1_6) (not (openprec_move_1_6_1_5_bridge_1_5_1_6))) (valid)) (at_1_5))
    (when (and (at_1_6) (or (bridge_1_5_1_6) (not (openprec_move_1_6_1_5_bridge_1_5_1_6))) (valid)) (not (at_1_6)))
    (when (not (and (at_1_6) (or (bridge_1_5_1_6) (not (openprec_move_1_6_1_5_bridge_1_5_1_6))) (valid))) (not (valid)))
  )
 )

 (:action move_1_6_1_7
  :effect (and
    (when (and (at_1_6) (or (bridge_1_6_1_7) (not (openprec_move_1_6_1_7_bridge_1_6_1_7))) (valid)) (at_1_7))
    (when (and (at_1_6) (or (bridge_1_6_1_7) (not (openprec_move_1_6_1_7_bridge_1_6_1_7))) (valid)) (not (at_1_6)))
    (when (not (and (at_1_6) (or (bridge_1_6_1_7) (not (openprec_move_1_6_1_7_bridge_1_6_1_7))) (valid))) (not (valid)))
  )
 )

 (:action move_1_7_0_7
  :effect (and
    (when (and (at_1_7) (or (bridge_0_7_1_7) (not (openprec_move_1_7_0_7_bridge_0_7_1_7))) (valid)) (at_0_7))
    (when (and (at_1_7) (or (bridge_0_7_1_7) (not (openprec_move_1_7_0_7_bridge_0_7_1_7))) (valid)) (not (at_1_7)))
    (when (not (and (at_1_7) (or (bridge_0_7_1_7) (not (openprec_move_1_7_0_7_bridge_0_7_1_7))) (valid))) (not (valid)))
  )
 )

 (:action move_1_7_2_7
  :effect (and
    (when (and (at_1_7) (or (bridge_1_7_2_7) (not (openprec_move_1_7_2_7_bridge_1_7_2_7))) (valid)) (at_2_7))
    (when (and (at_1_7) (or (bridge_1_7_2_7) (not (openprec_move_1_7_2_7_bridge_1_7_2_7))) (valid)) (not (at_1_7)))
    (when (not (and (at_1_7) (or (bridge_1_7_2_7) (not (openprec_move_1_7_2_7_bridge_1_7_2_7))) (valid))) (not (valid)))
  )
 )

 (:action move_1_7_1_6
  :effect (and
    (when (and (at_1_7) (or (bridge_1_6_1_7) (not (openprec_move_1_7_1_6_bridge_1_6_1_7))) (valid)) (at_1_6))
    (when (and (at_1_7) (or (bridge_1_6_1_7) (not (openprec_move_1_7_1_6_bridge_1_6_1_7))) (valid)) (not (at_1_7)))
    (when (not (and (at_1_7) (or (bridge_1_6_1_7) (not (openprec_move_1_7_1_6_bridge_1_6_1_7))) (valid))) (not (valid)))
  )
 )

 (:action move_2_0_1_0
  :effect (and
    (when (and (at_2_0) (or (bridge_1_0_2_0) (not (openprec_move_2_0_1_0_bridge_1_0_2_0))) (valid)) (at_1_0))
    (when (and (at_2_0) (or (bridge_1_0_2_0) (not (openprec_move_2_0_1_0_bridge_1_0_2_0))) (valid)) (not (at_2_0)))
    (when (not (and (at_2_0) (or (bridge_1_0_2_0) (not (openprec_move_2_0_1_0_bridge_1_0_2_0))) (valid))) (not (valid)))
  )
 )

 (:action move_2_0_3_0
  :effect (and
    (when (and (at_2_0) (or (bridge_2_0_3_0) (not (openprec_move_2_0_3_0_bridge_2_0_3_0))) (valid)) (at_3_0))
    (when (and (at_2_0) (or (bridge_2_0_3_0) (not (openprec_move_2_0_3_0_bridge_2_0_3_0))) (valid)) (not (at_2_0)))
    (when (not (and (at_2_0) (or (bridge_2_0_3_0) (not (openprec_move_2_0_3_0_bridge_2_0_3_0))) (valid))) (not (valid)))
  )
 )

 (:action move_2_0_2_1
  :effect (and
    (when (and (at_2_0) (or (bridge_2_0_2_1) (not (openprec_move_2_0_2_1_bridge_2_0_2_1))) (valid)) (at_2_1))
    (when (and (at_2_0) (or (bridge_2_0_2_1) (not (openprec_move_2_0_2_1_bridge_2_0_2_1))) (valid)) (not (at_2_0)))
    (when (not (and (at_2_0) (or (bridge_2_0_2_1) (not (openprec_move_2_0_2_1_bridge_2_0_2_1))) (valid))) (not (valid)))
  )
 )

 (:action move_2_1_1_1
  :effect (and
    (when (and (at_2_1) (or (bridge_1_1_2_1) (not (openprec_move_2_1_1_1_bridge_1_1_2_1))) (valid)) (at_1_1))
    (when (and (at_2_1) (or (bridge_1_1_2_1) (not (openprec_move_2_1_1_1_bridge_1_1_2_1))) (valid)) (not (at_2_1)))
    (when (not (and (at_2_1) (or (bridge_1_1_2_1) (not (openprec_move_2_1_1_1_bridge_1_1_2_1))) (valid))) (not (valid)))
  )
 )

 (:action move_2_1_3_1
  :effect (and
    (when (and (at_2_1) (or (bridge_2_1_3_1) (not (openprec_move_2_1_3_1_bridge_2_1_3_1))) (valid)) (at_3_1))
    (when (and (at_2_1) (or (bridge_2_1_3_1) (not (openprec_move_2_1_3_1_bridge_2_1_3_1))) (valid)) (not (at_2_1)))
    (when (not (and (at_2_1) (or (bridge_2_1_3_1) (not (openprec_move_2_1_3_1_bridge_2_1_3_1))) (valid))) (not (valid)))
  )
 )

 (:action move_2_1_2_0
  :effect (and
    (when (and (at_2_1) (or (bridge_2_0_2_1) (not (openprec_move_2_1_2_0_bridge_2_0_2_1))) (valid)) (at_2_0))
    (when (and (at_2_1) (or (bridge_2_0_2_1) (not (openprec_move_2_1_2_0_bridge_2_0_2_1))) (valid)) (not (at_2_1)))
    (when (not (and (at_2_1) (or (bridge_2_0_2_1) (not (openprec_move_2_1_2_0_bridge_2_0_2_1))) (valid))) (not (valid)))
  )
 )

 (:action move_2_1_2_2
  :effect (and
    (when (and (at_2_1) (or (bridge_2_1_2_2) (not (openprec_move_2_1_2_2_bridge_2_1_2_2))) (valid)) (at_2_2))
    (when (and (at_2_1) (or (bridge_2_1_2_2) (not (openprec_move_2_1_2_2_bridge_2_1_2_2))) (valid)) (not (at_2_1)))
    (when (not (and (at_2_1) (or (bridge_2_1_2_2) (not (openprec_move_2_1_2_2_bridge_2_1_2_2))) (valid))) (not (valid)))
  )
 )

 (:action move_2_2_1_2
  :effect (and
    (when (and (at_2_2) (or (bridge_1_2_2_2) (not (openprec_move_2_2_1_2_bridge_1_2_2_2))) (valid)) (at_1_2))
    (when (and (at_2_2) (or (bridge_1_2_2_2) (not (openprec_move_2_2_1_2_bridge_1_2_2_2))) (valid)) (not (at_2_2)))
    (when (not (and (at_2_2) (or (bridge_1_2_2_2) (not (openprec_move_2_2_1_2_bridge_1_2_2_2))) (valid))) (not (valid)))
  )
 )

 (:action move_2_2_3_2
  :effect (and
    (when (and (at_2_2) (or (bridge_2_2_3_2) (not (openprec_move_2_2_3_2_bridge_2_2_3_2))) (valid)) (at_3_2))
    (when (and (at_2_2) (or (bridge_2_2_3_2) (not (openprec_move_2_2_3_2_bridge_2_2_3_2))) (valid)) (not (at_2_2)))
    (when (not (and (at_2_2) (or (bridge_2_2_3_2) (not (openprec_move_2_2_3_2_bridge_2_2_3_2))) (valid))) (not (valid)))
  )
 )

 (:action move_2_2_2_1
  :effect (and
    (when (and (at_2_2) (or (bridge_2_1_2_2) (not (openprec_move_2_2_2_1_bridge_2_1_2_2))) (valid)) (at_2_1))
    (when (and (at_2_2) (or (bridge_2_1_2_2) (not (openprec_move_2_2_2_1_bridge_2_1_2_2))) (valid)) (not (at_2_2)))
    (when (not (and (at_2_2) (or (bridge_2_1_2_2) (not (openprec_move_2_2_2_1_bridge_2_1_2_2))) (valid))) (not (valid)))
  )
 )

 (:action move_2_2_2_3
  :effect (and
    (when (and (at_2_2) (or (bridge_2_2_2_3) (not (openprec_move_2_2_2_3_bridge_2_2_2_3))) (valid)) (at_2_3))
    (when (and (at_2_2) (or (bridge_2_2_2_3) (not (openprec_move_2_2_2_3_bridge_2_2_2_3))) (valid)) (not (at_2_2)))
    (when (not (and (at_2_2) (or (bridge_2_2_2_3) (not (openprec_move_2_2_2_3_bridge_2_2_2_3))) (valid))) (not (valid)))
  )
 )

 (:action move_2_3_1_3
  :effect (and
    (when (and (at_2_3) (or (bridge_1_3_2_3) (not (openprec_move_2_3_1_3_bridge_1_3_2_3))) (valid)) (at_1_3))
    (when (and (at_2_3) (or (bridge_1_3_2_3) (not (openprec_move_2_3_1_3_bridge_1_3_2_3))) (valid)) (not (at_2_3)))
    (when (not (and (at_2_3) (or (bridge_1_3_2_3) (not (openprec_move_2_3_1_3_bridge_1_3_2_3))) (valid))) (not (valid)))
  )
 )

 (:action move_2_3_3_3
  :effect (and
    (when (and (at_2_3) (or (bridge_2_3_3_3) (not (openprec_move_2_3_3_3_bridge_2_3_3_3))) (valid)) (at_3_3))
    (when (and (at_2_3) (or (bridge_2_3_3_3) (not (openprec_move_2_3_3_3_bridge_2_3_3_3))) (valid)) (not (at_2_3)))
    (when (not (and (at_2_3) (or (bridge_2_3_3_3) (not (openprec_move_2_3_3_3_bridge_2_3_3_3))) (valid))) (not (valid)))
  )
 )

 (:action move_2_3_2_2
  :effect (and
    (when (and (at_2_3) (or (bridge_2_2_2_3) (not (openprec_move_2_3_2_2_bridge_2_2_2_3))) (valid)) (at_2_2))
    (when (and (at_2_3) (or (bridge_2_2_2_3) (not (openprec_move_2_3_2_2_bridge_2_2_2_3))) (valid)) (not (at_2_3)))
    (when (not (and (at_2_3) (or (bridge_2_2_2_3) (not (openprec_move_2_3_2_2_bridge_2_2_2_3))) (valid))) (not (valid)))
  )
 )

 (:action move_2_3_2_4
  :effect (and
    (when (and (at_2_3) (or (bridge_2_3_2_4) (not (openprec_move_2_3_2_4_bridge_2_3_2_4))) (valid)) (at_2_4))
    (when (and (at_2_3) (or (bridge_2_3_2_4) (not (openprec_move_2_3_2_4_bridge_2_3_2_4))) (valid)) (not (at_2_3)))
    (when (not (and (at_2_3) (or (bridge_2_3_2_4) (not (openprec_move_2_3_2_4_bridge_2_3_2_4))) (valid))) (not (valid)))
  )
 )

 (:action move_2_4_1_4
  :effect (and
    (when (and (at_2_4) (or (bridge_1_4_2_4) (not (openprec_move_2_4_1_4_bridge_1_4_2_4))) (valid)) (at_1_4))
    (when (and (at_2_4) (or (bridge_1_4_2_4) (not (openprec_move_2_4_1_4_bridge_1_4_2_4))) (valid)) (not (at_2_4)))
    (when (not (and (at_2_4) (or (bridge_1_4_2_4) (not (openprec_move_2_4_1_4_bridge_1_4_2_4))) (valid))) (not (valid)))
  )
 )

 (:action move_2_4_3_4
  :effect (and
    (when (and (at_2_4) (or (bridge_2_4_3_4) (not (openprec_move_2_4_3_4_bridge_2_4_3_4))) (valid)) (at_3_4))
    (when (and (at_2_4) (or (bridge_2_4_3_4) (not (openprec_move_2_4_3_4_bridge_2_4_3_4))) (valid)) (not (at_2_4)))
    (when (not (and (at_2_4) (or (bridge_2_4_3_4) (not (openprec_move_2_4_3_4_bridge_2_4_3_4))) (valid))) (not (valid)))
  )
 )

 (:action move_2_4_2_3
  :effect (and
    (when (and (at_2_4) (or (bridge_2_3_2_4) (not (openprec_move_2_4_2_3_bridge_2_3_2_4))) (valid)) (at_2_3))
    (when (and (at_2_4) (or (bridge_2_3_2_4) (not (openprec_move_2_4_2_3_bridge_2_3_2_4))) (valid)) (not (at_2_4)))
    (when (not (and (at_2_4) (or (bridge_2_3_2_4) (not (openprec_move_2_4_2_3_bridge_2_3_2_4))) (valid))) (not (valid)))
  )
 )

 (:action move_2_4_2_5
  :effect (and
    (when (and (at_2_4) (or (bridge_2_4_2_5) (not (openprec_move_2_4_2_5_bridge_2_4_2_5))) (valid)) (at_2_5))
    (when (and (at_2_4) (or (bridge_2_4_2_5) (not (openprec_move_2_4_2_5_bridge_2_4_2_5))) (valid)) (not (at_2_4)))
    (when (not (and (at_2_4) (or (bridge_2_4_2_5) (not (openprec_move_2_4_2_5_bridge_2_4_2_5))) (valid))) (not (valid)))
  )
 )

 (:action move_2_5_1_5
  :effect (and
    (when (and (at_2_5) (or (bridge_1_5_2_5) (not (openprec_move_2_5_1_5_bridge_1_5_2_5))) (valid)) (at_1_5))
    (when (and (at_2_5) (or (bridge_1_5_2_5) (not (openprec_move_2_5_1_5_bridge_1_5_2_5))) (valid)) (not (at_2_5)))
    (when (not (and (at_2_5) (or (bridge_1_5_2_5) (not (openprec_move_2_5_1_5_bridge_1_5_2_5))) (valid))) (not (valid)))
  )
 )

 (:action move_2_5_3_5
  :effect (and
    (when (and (at_2_5) (or (bridge_2_5_3_5) (not (openprec_move_2_5_3_5_bridge_2_5_3_5))) (valid)) (at_3_5))
    (when (and (at_2_5) (or (bridge_2_5_3_5) (not (openprec_move_2_5_3_5_bridge_2_5_3_5))) (valid)) (not (at_2_5)))
    (when (not (and (at_2_5) (or (bridge_2_5_3_5) (not (openprec_move_2_5_3_5_bridge_2_5_3_5))) (valid))) (not (valid)))
  )
 )

 (:action move_2_5_2_4
  :effect (and
    (when (and (at_2_5) (or (bridge_2_4_2_5) (not (openprec_move_2_5_2_4_bridge_2_4_2_5))) (valid)) (at_2_4))
    (when (and (at_2_5) (or (bridge_2_4_2_5) (not (openprec_move_2_5_2_4_bridge_2_4_2_5))) (valid)) (not (at_2_5)))
    (when (not (and (at_2_5) (or (bridge_2_4_2_5) (not (openprec_move_2_5_2_4_bridge_2_4_2_5))) (valid))) (not (valid)))
  )
 )

 (:action move_2_5_2_6
  :effect (and
    (when (and (at_2_5) (or (bridge_2_5_2_6) (not (openprec_move_2_5_2_6_bridge_2_5_2_6))) (valid)) (at_2_6))
    (when (and (at_2_5) (or (bridge_2_5_2_6) (not (openprec_move_2_5_2_6_bridge_2_5_2_6))) (valid)) (not (at_2_5)))
    (when (not (and (at_2_5) (or (bridge_2_5_2_6) (not (openprec_move_2_5_2_6_bridge_2_5_2_6))) (valid))) (not (valid)))
  )
 )

 (:action move_2_6_1_6
  :effect (and
    (when (and (at_2_6) (or (bridge_1_6_2_6) (not (openprec_move_2_6_1_6_bridge_1_6_2_6))) (valid)) (at_1_6))
    (when (and (at_2_6) (or (bridge_1_6_2_6) (not (openprec_move_2_6_1_6_bridge_1_6_2_6))) (valid)) (not (at_2_6)))
    (when (not (and (at_2_6) (or (bridge_1_6_2_6) (not (openprec_move_2_6_1_6_bridge_1_6_2_6))) (valid))) (not (valid)))
  )
 )

 (:action move_2_6_3_6
  :effect (and
    (when (and (at_2_6) (or (bridge_2_6_3_6) (not (openprec_move_2_6_3_6_bridge_2_6_3_6))) (valid)) (at_3_6))
    (when (and (at_2_6) (or (bridge_2_6_3_6) (not (openprec_move_2_6_3_6_bridge_2_6_3_6))) (valid)) (not (at_2_6)))
    (when (not (and (at_2_6) (or (bridge_2_6_3_6) (not (openprec_move_2_6_3_6_bridge_2_6_3_6))) (valid))) (not (valid)))
  )
 )

 (:action move_2_6_2_5
  :effect (and
    (when (and (at_2_6) (or (bridge_2_5_2_6) (not (openprec_move_2_6_2_5_bridge_2_5_2_6))) (valid)) (at_2_5))
    (when (and (at_2_6) (or (bridge_2_5_2_6) (not (openprec_move_2_6_2_5_bridge_2_5_2_6))) (valid)) (not (at_2_6)))
    (when (not (and (at_2_6) (or (bridge_2_5_2_6) (not (openprec_move_2_6_2_5_bridge_2_5_2_6))) (valid))) (not (valid)))
  )
 )

 (:action move_2_6_2_7
  :effect (and
    (when (and (at_2_6) (or (bridge_2_6_2_7) (not (openprec_move_2_6_2_7_bridge_2_6_2_7))) (valid)) (at_2_7))
    (when (and (at_2_6) (or (bridge_2_6_2_7) (not (openprec_move_2_6_2_7_bridge_2_6_2_7))) (valid)) (not (at_2_6)))
    (when (not (and (at_2_6) (or (bridge_2_6_2_7) (not (openprec_move_2_6_2_7_bridge_2_6_2_7))) (valid))) (not (valid)))
  )
 )

 (:action move_2_7_1_7
  :effect (and
    (when (and (at_2_7) (or (bridge_1_7_2_7) (not (openprec_move_2_7_1_7_bridge_1_7_2_7))) (valid)) (at_1_7))
    (when (and (at_2_7) (or (bridge_1_7_2_7) (not (openprec_move_2_7_1_7_bridge_1_7_2_7))) (valid)) (not (at_2_7)))
    (when (not (and (at_2_7) (or (bridge_1_7_2_7) (not (openprec_move_2_7_1_7_bridge_1_7_2_7))) (valid))) (not (valid)))
  )
 )

 (:action move_2_7_3_7
  :effect (and
    (when (and (at_2_7) (or (bridge_2_7_3_7) (not (openprec_move_2_7_3_7_bridge_2_7_3_7))) (valid)) (at_3_7))
    (when (and (at_2_7) (or (bridge_2_7_3_7) (not (openprec_move_2_7_3_7_bridge_2_7_3_7))) (valid)) (not (at_2_7)))
    (when (not (and (at_2_7) (or (bridge_2_7_3_7) (not (openprec_move_2_7_3_7_bridge_2_7_3_7))) (valid))) (not (valid)))
  )
 )

 (:action move_2_7_2_6
  :effect (and
    (when (and (at_2_7) (or (bridge_2_6_2_7) (not (openprec_move_2_7_2_6_bridge_2_6_2_7))) (valid)) (at_2_6))
    (when (and (at_2_7) (or (bridge_2_6_2_7) (not (openprec_move_2_7_2_6_bridge_2_6_2_7))) (valid)) (not (at_2_7)))
    (when (not (and (at_2_7) (or (bridge_2_6_2_7) (not (openprec_move_2_7_2_6_bridge_2_6_2_7))) (valid))) (not (valid)))
  )
 )

 (:action move_3_0_2_0
  :effect (and
    (when (and (at_3_0) (or (bridge_2_0_3_0) (not (openprec_move_3_0_2_0_bridge_2_0_3_0))) (valid)) (at_2_0))
    (when (and (at_3_0) (or (bridge_2_0_3_0) (not (openprec_move_3_0_2_0_bridge_2_0_3_0))) (valid)) (not (at_3_0)))
    (when (not (and (at_3_0) (or (bridge_2_0_3_0) (not (openprec_move_3_0_2_0_bridge_2_0_3_0))) (valid))) (not (valid)))
  )
 )

 (:action move_3_0_4_0
  :effect (and
    (when (and (at_3_0) (or (bridge_3_0_4_0) (not (openprec_move_3_0_4_0_bridge_3_0_4_0))) (valid)) (at_4_0))
    (when (and (at_3_0) (or (bridge_3_0_4_0) (not (openprec_move_3_0_4_0_bridge_3_0_4_0))) (valid)) (not (at_3_0)))
    (when (not (and (at_3_0) (or (bridge_3_0_4_0) (not (openprec_move_3_0_4_0_bridge_3_0_4_0))) (valid))) (not (valid)))
  )
 )

 (:action move_3_0_3_1
  :effect (and
    (when (and (at_3_0) (or (bridge_3_0_3_1) (not (openprec_move_3_0_3_1_bridge_3_0_3_1))) (valid)) (at_3_1))
    (when (and (at_3_0) (or (bridge_3_0_3_1) (not (openprec_move_3_0_3_1_bridge_3_0_3_1))) (valid)) (not (at_3_0)))
    (when (not (and (at_3_0) (or (bridge_3_0_3_1) (not (openprec_move_3_0_3_1_bridge_3_0_3_1))) (valid))) (not (valid)))
  )
 )

 (:action move_3_1_2_1
  :effect (and
    (when (and (at_3_1) (or (bridge_2_1_3_1) (not (openprec_move_3_1_2_1_bridge_2_1_3_1))) (valid)) (at_2_1))
    (when (and (at_3_1) (or (bridge_2_1_3_1) (not (openprec_move_3_1_2_1_bridge_2_1_3_1))) (valid)) (not (at_3_1)))
    (when (not (and (at_3_1) (or (bridge_2_1_3_1) (not (openprec_move_3_1_2_1_bridge_2_1_3_1))) (valid))) (not (valid)))
  )
 )

 (:action move_3_1_4_1
  :effect (and
    (when (and (at_3_1) (or (bridge_3_1_4_1) (not (openprec_move_3_1_4_1_bridge_3_1_4_1))) (valid)) (at_4_1))
    (when (and (at_3_1) (or (bridge_3_1_4_1) (not (openprec_move_3_1_4_1_bridge_3_1_4_1))) (valid)) (not (at_3_1)))
    (when (not (and (at_3_1) (or (bridge_3_1_4_1) (not (openprec_move_3_1_4_1_bridge_3_1_4_1))) (valid))) (not (valid)))
  )
 )

 (:action move_3_1_3_0
  :effect (and
    (when (and (at_3_1) (or (bridge_3_0_3_1) (not (openprec_move_3_1_3_0_bridge_3_0_3_1))) (valid)) (at_3_0))
    (when (and (at_3_1) (or (bridge_3_0_3_1) (not (openprec_move_3_1_3_0_bridge_3_0_3_1))) (valid)) (not (at_3_1)))
    (when (not (and (at_3_1) (or (bridge_3_0_3_1) (not (openprec_move_3_1_3_0_bridge_3_0_3_1))) (valid))) (not (valid)))
  )
 )

 (:action move_3_1_3_2
  :effect (and
    (when (and (at_3_1) (or (bridge_3_1_3_2) (not (openprec_move_3_1_3_2_bridge_3_1_3_2))) (valid)) (at_3_2))
    (when (and (at_3_1) (or (bridge_3_1_3_2) (not (openprec_move_3_1_3_2_bridge_3_1_3_2))) (valid)) (not (at_3_1)))
    (when (not (and (at_3_1) (or (bridge_3_1_3_2) (not (openprec_move_3_1_3_2_bridge_3_1_3_2))) (valid))) (not (valid)))
  )
 )

 (:action move_3_2_2_2
  :effect (and
    (when (and (at_3_2) (or (bridge_2_2_3_2) (not (openprec_move_3_2_2_2_bridge_2_2_3_2))) (valid)) (at_2_2))
    (when (and (at_3_2) (or (bridge_2_2_3_2) (not (openprec_move_3_2_2_2_bridge_2_2_3_2))) (valid)) (not (at_3_2)))
    (when (not (and (at_3_2) (or (bridge_2_2_3_2) (not (openprec_move_3_2_2_2_bridge_2_2_3_2))) (valid))) (not (valid)))
  )
 )

 (:action move_3_2_4_2
  :effect (and
    (when (and (at_3_2) (or (bridge_3_2_4_2) (not (openprec_move_3_2_4_2_bridge_3_2_4_2))) (valid)) (at_4_2))
    (when (and (at_3_2) (or (bridge_3_2_4_2) (not (openprec_move_3_2_4_2_bridge_3_2_4_2))) (valid)) (not (at_3_2)))
    (when (not (and (at_3_2) (or (bridge_3_2_4_2) (not (openprec_move_3_2_4_2_bridge_3_2_4_2))) (valid))) (not (valid)))
  )
 )

 (:action move_3_2_3_1
  :effect (and
    (when (and (at_3_2) (or (bridge_3_1_3_2) (not (openprec_move_3_2_3_1_bridge_3_1_3_2))) (valid)) (at_3_1))
    (when (and (at_3_2) (or (bridge_3_1_3_2) (not (openprec_move_3_2_3_1_bridge_3_1_3_2))) (valid)) (not (at_3_2)))
    (when (not (and (at_3_2) (or (bridge_3_1_3_2) (not (openprec_move_3_2_3_1_bridge_3_1_3_2))) (valid))) (not (valid)))
  )
 )

 (:action move_3_2_3_3
  :effect (and
    (when (and (at_3_2) (or (bridge_3_2_3_3) (not (openprec_move_3_2_3_3_bridge_3_2_3_3))) (valid)) (at_3_3))
    (when (and (at_3_2) (or (bridge_3_2_3_3) (not (openprec_move_3_2_3_3_bridge_3_2_3_3))) (valid)) (not (at_3_2)))
    (when (not (and (at_3_2) (or (bridge_3_2_3_3) (not (openprec_move_3_2_3_3_bridge_3_2_3_3))) (valid))) (not (valid)))
  )
 )

 (:action move_3_3_2_3
  :effect (and
    (when (and (at_3_3) (or (bridge_2_3_3_3) (not (openprec_move_3_3_2_3_bridge_2_3_3_3))) (valid)) (at_2_3))
    (when (and (at_3_3) (or (bridge_2_3_3_3) (not (openprec_move_3_3_2_3_bridge_2_3_3_3))) (valid)) (not (at_3_3)))
    (when (not (and (at_3_3) (or (bridge_2_3_3_3) (not (openprec_move_3_3_2_3_bridge_2_3_3_3))) (valid))) (not (valid)))
  )
 )

 (:action move_3_3_4_3
  :effect (and
    (when (and (at_3_3) (or (bridge_3_3_4_3) (not (openprec_move_3_3_4_3_bridge_3_3_4_3))) (valid)) (at_4_3))
    (when (and (at_3_3) (or (bridge_3_3_4_3) (not (openprec_move_3_3_4_3_bridge_3_3_4_3))) (valid)) (not (at_3_3)))
    (when (not (and (at_3_3) (or (bridge_3_3_4_3) (not (openprec_move_3_3_4_3_bridge_3_3_4_3))) (valid))) (not (valid)))
  )
 )

 (:action move_3_3_3_2
  :effect (and
    (when (and (at_3_3) (or (bridge_3_2_3_3) (not (openprec_move_3_3_3_2_bridge_3_2_3_3))) (valid)) (at_3_2))
    (when (and (at_3_3) (or (bridge_3_2_3_3) (not (openprec_move_3_3_3_2_bridge_3_2_3_3))) (valid)) (not (at_3_3)))
    (when (not (and (at_3_3) (or (bridge_3_2_3_3) (not (openprec_move_3_3_3_2_bridge_3_2_3_3))) (valid))) (not (valid)))
  )
 )

 (:action move_3_3_3_4
  :effect (and
    (when (and (at_3_3) (or (bridge_3_3_3_4) (not (openprec_move_3_3_3_4_bridge_3_3_3_4))) (valid)) (at_3_4))
    (when (and (at_3_3) (or (bridge_3_3_3_4) (not (openprec_move_3_3_3_4_bridge_3_3_3_4))) (valid)) (not (at_3_3)))
    (when (not (and (at_3_3) (or (bridge_3_3_3_4) (not (openprec_move_3_3_3_4_bridge_3_3_3_4))) (valid))) (not (valid)))
  )
 )

 (:action move_3_4_2_4
  :effect (and
    (when (and (at_3_4) (or (bridge_2_4_3_4) (not (openprec_move_3_4_2_4_bridge_2_4_3_4))) (valid)) (at_2_4))
    (when (and (at_3_4) (or (bridge_2_4_3_4) (not (openprec_move_3_4_2_4_bridge_2_4_3_4))) (valid)) (not (at_3_4)))
    (when (not (and (at_3_4) (or (bridge_2_4_3_4) (not (openprec_move_3_4_2_4_bridge_2_4_3_4))) (valid))) (not (valid)))
  )
 )

 (:action move_3_4_4_4
  :effect (and
    (when (and (at_3_4) (or (bridge_3_4_4_4) (not (openprec_move_3_4_4_4_bridge_3_4_4_4))) (valid)) (at_4_4))
    (when (and (at_3_4) (or (bridge_3_4_4_4) (not (openprec_move_3_4_4_4_bridge_3_4_4_4))) (valid)) (not (at_3_4)))
    (when (not (and (at_3_4) (or (bridge_3_4_4_4) (not (openprec_move_3_4_4_4_bridge_3_4_4_4))) (valid))) (not (valid)))
  )
 )

 (:action move_3_4_3_3
  :effect (and
    (when (and (at_3_4) (or (bridge_3_3_3_4) (not (openprec_move_3_4_3_3_bridge_3_3_3_4))) (valid)) (at_3_3))
    (when (and (at_3_4) (or (bridge_3_3_3_4) (not (openprec_move_3_4_3_3_bridge_3_3_3_4))) (valid)) (not (at_3_4)))
    (when (not (and (at_3_4) (or (bridge_3_3_3_4) (not (openprec_move_3_4_3_3_bridge_3_3_3_4))) (valid))) (not (valid)))
  )
 )

 (:action move_3_4_3_5
  :effect (and
    (when (and (at_3_4) (or (bridge_3_4_3_5) (not (openprec_move_3_4_3_5_bridge_3_4_3_5))) (valid)) (at_3_5))
    (when (and (at_3_4) (or (bridge_3_4_3_5) (not (openprec_move_3_4_3_5_bridge_3_4_3_5))) (valid)) (not (at_3_4)))
    (when (not (and (at_3_4) (or (bridge_3_4_3_5) (not (openprec_move_3_4_3_5_bridge_3_4_3_5))) (valid))) (not (valid)))
  )
 )

 (:action move_3_5_2_5
  :effect (and
    (when (and (at_3_5) (or (bridge_2_5_3_5) (not (openprec_move_3_5_2_5_bridge_2_5_3_5))) (valid)) (at_2_5))
    (when (and (at_3_5) (or (bridge_2_5_3_5) (not (openprec_move_3_5_2_5_bridge_2_5_3_5))) (valid)) (not (at_3_5)))
    (when (not (and (at_3_5) (or (bridge_2_5_3_5) (not (openprec_move_3_5_2_5_bridge_2_5_3_5))) (valid))) (not (valid)))
  )
 )

 (:action move_3_5_4_5
  :effect (and
    (when (and (at_3_5) (or (bridge_3_5_4_5) (not (openprec_move_3_5_4_5_bridge_3_5_4_5))) (valid)) (at_4_5))
    (when (and (at_3_5) (or (bridge_3_5_4_5) (not (openprec_move_3_5_4_5_bridge_3_5_4_5))) (valid)) (not (at_3_5)))
    (when (not (and (at_3_5) (or (bridge_3_5_4_5) (not (openprec_move_3_5_4_5_bridge_3_5_4_5))) (valid))) (not (valid)))
  )
 )

 (:action move_3_5_3_4
  :effect (and
    (when (and (at_3_5) (or (bridge_3_4_3_5) (not (openprec_move_3_5_3_4_bridge_3_4_3_5))) (valid)) (at_3_4))
    (when (and (at_3_5) (or (bridge_3_4_3_5) (not (openprec_move_3_5_3_4_bridge_3_4_3_5))) (valid)) (not (at_3_5)))
    (when (not (and (at_3_5) (or (bridge_3_4_3_5) (not (openprec_move_3_5_3_4_bridge_3_4_3_5))) (valid))) (not (valid)))
  )
 )

 (:action move_3_5_3_6
  :effect (and
    (when (and (at_3_5) (or (bridge_3_5_3_6) (not (openprec_move_3_5_3_6_bridge_3_5_3_6))) (valid)) (at_3_6))
    (when (and (at_3_5) (or (bridge_3_5_3_6) (not (openprec_move_3_5_3_6_bridge_3_5_3_6))) (valid)) (not (at_3_5)))
    (when (not (and (at_3_5) (or (bridge_3_5_3_6) (not (openprec_move_3_5_3_6_bridge_3_5_3_6))) (valid))) (not (valid)))
  )
 )

 (:action move_3_6_2_6
  :effect (and
    (when (and (at_3_6) (or (bridge_2_6_3_6) (not (openprec_move_3_6_2_6_bridge_2_6_3_6))) (valid)) (at_2_6))
    (when (and (at_3_6) (or (bridge_2_6_3_6) (not (openprec_move_3_6_2_6_bridge_2_6_3_6))) (valid)) (not (at_3_6)))
    (when (not (and (at_3_6) (or (bridge_2_6_3_6) (not (openprec_move_3_6_2_6_bridge_2_6_3_6))) (valid))) (not (valid)))
  )
 )

 (:action move_3_6_4_6
  :effect (and
    (when (and (at_3_6) (or (bridge_3_6_4_6) (not (openprec_move_3_6_4_6_bridge_3_6_4_6))) (valid)) (at_4_6))
    (when (and (at_3_6) (or (bridge_3_6_4_6) (not (openprec_move_3_6_4_6_bridge_3_6_4_6))) (valid)) (not (at_3_6)))
    (when (not (and (at_3_6) (or (bridge_3_6_4_6) (not (openprec_move_3_6_4_6_bridge_3_6_4_6))) (valid))) (not (valid)))
  )
 )

 (:action move_3_6_3_5
  :effect (and
    (when (and (at_3_6) (or (bridge_3_5_3_6) (not (openprec_move_3_6_3_5_bridge_3_5_3_6))) (valid)) (at_3_5))
    (when (and (at_3_6) (or (bridge_3_5_3_6) (not (openprec_move_3_6_3_5_bridge_3_5_3_6))) (valid)) (not (at_3_6)))
    (when (not (and (at_3_6) (or (bridge_3_5_3_6) (not (openprec_move_3_6_3_5_bridge_3_5_3_6))) (valid))) (not (valid)))
  )
 )

 (:action move_3_6_3_7
  :effect (and
    (when (and (at_3_6) (or (bridge_3_6_3_7) (not (openprec_move_3_6_3_7_bridge_3_6_3_7))) (valid)) (at_3_7))
    (when (and (at_3_6) (or (bridge_3_6_3_7) (not (openprec_move_3_6_3_7_bridge_3_6_3_7))) (valid)) (not (at_3_6)))
    (when (not (and (at_3_6) (or (bridge_3_6_3_7) (not (openprec_move_3_6_3_7_bridge_3_6_3_7))) (valid))) (not (valid)))
  )
 )

 (:action move_3_7_2_7
  :effect (and
    (when (and (at_3_7) (or (bridge_2_7_3_7) (not (openprec_move_3_7_2_7_bridge_2_7_3_7))) (valid)) (at_2_7))
    (when (and (at_3_7) (or (bridge_2_7_3_7) (not (openprec_move_3_7_2_7_bridge_2_7_3_7))) (valid)) (not (at_3_7)))
    (when (not (and (at_3_7) (or (bridge_2_7_3_7) (not (openprec_move_3_7_2_7_bridge_2_7_3_7))) (valid))) (not (valid)))
  )
 )

 (:action move_3_7_4_7
  :effect (and
    (when (and (at_3_7) (or (bridge_3_7_4_7) (not (openprec_move_3_7_4_7_bridge_3_7_4_7))) (valid)) (at_4_7))
    (when (and (at_3_7) (or (bridge_3_7_4_7) (not (openprec_move_3_7_4_7_bridge_3_7_4_7))) (valid)) (not (at_3_7)))
    (when (not (and (at_3_7) (or (bridge_3_7_4_7) (not (openprec_move_3_7_4_7_bridge_3_7_4_7))) (valid))) (not (valid)))
  )
 )

 (:action move_3_7_3_6
  :effect (and
    (when (and (at_3_7) (or (bridge_3_6_3_7) (not (openprec_move_3_7_3_6_bridge_3_6_3_7))) (valid)) (at_3_6))
    (when (and (at_3_7) (or (bridge_3_6_3_7) (not (openprec_move_3_7_3_6_bridge_3_6_3_7))) (valid)) (not (at_3_7)))
    (when (not (and (at_3_7) (or (bridge_3_6_3_7) (not (openprec_move_3_7_3_6_bridge_3_6_3_7))) (valid))) (not (valid)))
  )
 )

 (:action move_4_0_3_0
  :effect (and
    (when (and (at_4_0) (or (bridge_3_0_4_0) (not (openprec_move_4_0_3_0_bridge_3_0_4_0))) (valid)) (at_3_0))
    (when (and (at_4_0) (or (bridge_3_0_4_0) (not (openprec_move_4_0_3_0_bridge_3_0_4_0))) (valid)) (not (at_4_0)))
    (when (not (and (at_4_0) (or (bridge_3_0_4_0) (not (openprec_move_4_0_3_0_bridge_3_0_4_0))) (valid))) (not (valid)))
  )
 )

 (:action move_4_0_5_0
  :effect (and
    (when (and (at_4_0) (or (bridge_4_0_5_0) (not (openprec_move_4_0_5_0_bridge_4_0_5_0))) (valid)) (at_5_0))
    (when (and (at_4_0) (or (bridge_4_0_5_0) (not (openprec_move_4_0_5_0_bridge_4_0_5_0))) (valid)) (not (at_4_0)))
    (when (not (and (at_4_0) (or (bridge_4_0_5_0) (not (openprec_move_4_0_5_0_bridge_4_0_5_0))) (valid))) (not (valid)))
  )
 )

 (:action move_4_0_4_1
  :effect (and
    (when (and (at_4_0) (or (bridge_4_0_4_1) (not (openprec_move_4_0_4_1_bridge_4_0_4_1))) (valid)) (at_4_1))
    (when (and (at_4_0) (or (bridge_4_0_4_1) (not (openprec_move_4_0_4_1_bridge_4_0_4_1))) (valid)) (not (at_4_0)))
    (when (not (and (at_4_0) (or (bridge_4_0_4_1) (not (openprec_move_4_0_4_1_bridge_4_0_4_1))) (valid))) (not (valid)))
  )
 )

 (:action move_4_1_3_1
  :effect (and
    (when (and (at_4_1) (or (bridge_3_1_4_1) (not (openprec_move_4_1_3_1_bridge_3_1_4_1))) (valid)) (at_3_1))
    (when (and (at_4_1) (or (bridge_3_1_4_1) (not (openprec_move_4_1_3_1_bridge_3_1_4_1))) (valid)) (not (at_4_1)))
    (when (not (and (at_4_1) (or (bridge_3_1_4_1) (not (openprec_move_4_1_3_1_bridge_3_1_4_1))) (valid))) (not (valid)))
  )
 )

 (:action move_4_1_5_1
  :effect (and
    (when (and (at_4_1) (or (bridge_4_1_5_1) (not (openprec_move_4_1_5_1_bridge_4_1_5_1))) (valid)) (at_5_1))
    (when (and (at_4_1) (or (bridge_4_1_5_1) (not (openprec_move_4_1_5_1_bridge_4_1_5_1))) (valid)) (not (at_4_1)))
    (when (not (and (at_4_1) (or (bridge_4_1_5_1) (not (openprec_move_4_1_5_1_bridge_4_1_5_1))) (valid))) (not (valid)))
  )
 )

 (:action move_4_1_4_0
  :effect (and
    (when (and (at_4_1) (or (bridge_4_0_4_1) (not (openprec_move_4_1_4_0_bridge_4_0_4_1))) (valid)) (at_4_0))
    (when (and (at_4_1) (or (bridge_4_0_4_1) (not (openprec_move_4_1_4_0_bridge_4_0_4_1))) (valid)) (not (at_4_1)))
    (when (not (and (at_4_1) (or (bridge_4_0_4_1) (not (openprec_move_4_1_4_0_bridge_4_0_4_1))) (valid))) (not (valid)))
  )
 )

 (:action move_4_1_4_2
  :effect (and
    (when (and (at_4_1) (or (bridge_4_1_4_2) (not (openprec_move_4_1_4_2_bridge_4_1_4_2))) (valid)) (at_4_2))
    (when (and (at_4_1) (or (bridge_4_1_4_2) (not (openprec_move_4_1_4_2_bridge_4_1_4_2))) (valid)) (not (at_4_1)))
    (when (not (and (at_4_1) (or (bridge_4_1_4_2) (not (openprec_move_4_1_4_2_bridge_4_1_4_2))) (valid))) (not (valid)))
  )
 )

 (:action move_4_2_3_2
  :effect (and
    (when (and (at_4_2) (or (bridge_3_2_4_2) (not (openprec_move_4_2_3_2_bridge_3_2_4_2))) (valid)) (at_3_2))
    (when (and (at_4_2) (or (bridge_3_2_4_2) (not (openprec_move_4_2_3_2_bridge_3_2_4_2))) (valid)) (not (at_4_2)))
    (when (not (and (at_4_2) (or (bridge_3_2_4_2) (not (openprec_move_4_2_3_2_bridge_3_2_4_2))) (valid))) (not (valid)))
  )
 )

 (:action move_4_2_5_2
  :effect (and
    (when (and (at_4_2) (or (bridge_4_2_5_2) (not (openprec_move_4_2_5_2_bridge_4_2_5_2))) (valid)) (at_5_2))
    (when (and (at_4_2) (or (bridge_4_2_5_2) (not (openprec_move_4_2_5_2_bridge_4_2_5_2))) (valid)) (not (at_4_2)))
    (when (not (and (at_4_2) (or (bridge_4_2_5_2) (not (openprec_move_4_2_5_2_bridge_4_2_5_2))) (valid))) (not (valid)))
  )
 )

 (:action move_4_2_4_1
  :effect (and
    (when (and (at_4_2) (or (bridge_4_1_4_2) (not (openprec_move_4_2_4_1_bridge_4_1_4_2))) (valid)) (at_4_1))
    (when (and (at_4_2) (or (bridge_4_1_4_2) (not (openprec_move_4_2_4_1_bridge_4_1_4_2))) (valid)) (not (at_4_2)))
    (when (not (and (at_4_2) (or (bridge_4_1_4_2) (not (openprec_move_4_2_4_1_bridge_4_1_4_2))) (valid))) (not (valid)))
  )
 )

 (:action move_4_2_4_3
  :effect (and
    (when (and (at_4_2) (or (bridge_4_2_4_3) (not (openprec_move_4_2_4_3_bridge_4_2_4_3))) (valid)) (at_4_3))
    (when (and (at_4_2) (or (bridge_4_2_4_3) (not (openprec_move_4_2_4_3_bridge_4_2_4_3))) (valid)) (not (at_4_2)))
    (when (not (and (at_4_2) (or (bridge_4_2_4_3) (not (openprec_move_4_2_4_3_bridge_4_2_4_3))) (valid))) (not (valid)))
  )
 )

 (:action move_4_3_3_3
  :effect (and
    (when (and (at_4_3) (or (bridge_3_3_4_3) (not (openprec_move_4_3_3_3_bridge_3_3_4_3))) (valid)) (at_3_3))
    (when (and (at_4_3) (or (bridge_3_3_4_3) (not (openprec_move_4_3_3_3_bridge_3_3_4_3))) (valid)) (not (at_4_3)))
    (when (not (and (at_4_3) (or (bridge_3_3_4_3) (not (openprec_move_4_3_3_3_bridge_3_3_4_3))) (valid))) (not (valid)))
  )
 )

 (:action move_4_3_5_3
  :effect (and
    (when (and (at_4_3) (or (bridge_4_3_5_3) (not (openprec_move_4_3_5_3_bridge_4_3_5_3))) (valid)) (at_5_3))
    (when (and (at_4_3) (or (bridge_4_3_5_3) (not (openprec_move_4_3_5_3_bridge_4_3_5_3))) (valid)) (not (at_4_3)))
    (when (not (and (at_4_3) (or (bridge_4_3_5_3) (not (openprec_move_4_3_5_3_bridge_4_3_5_3))) (valid))) (not (valid)))
  )
 )

 (:action move_4_3_4_2
  :effect (and
    (when (and (at_4_3) (or (bridge_4_2_4_3) (not (openprec_move_4_3_4_2_bridge_4_2_4_3))) (valid)) (at_4_2))
    (when (and (at_4_3) (or (bridge_4_2_4_3) (not (openprec_move_4_3_4_2_bridge_4_2_4_3))) (valid)) (not (at_4_3)))
    (when (not (and (at_4_3) (or (bridge_4_2_4_3) (not (openprec_move_4_3_4_2_bridge_4_2_4_3))) (valid))) (not (valid)))
  )
 )

 (:action move_4_3_4_4
  :effect (and
    (when (and (at_4_3) (or (bridge_4_3_4_4) (not (openprec_move_4_3_4_4_bridge_4_3_4_4))) (valid)) (at_4_4))
    (when (and (at_4_3) (or (bridge_4_3_4_4) (not (openprec_move_4_3_4_4_bridge_4_3_4_4))) (valid)) (not (at_4_3)))
    (when (not (and (at_4_3) (or (bridge_4_3_4_4) (not (openprec_move_4_3_4_4_bridge_4_3_4_4))) (valid))) (not (valid)))
  )
 )

 (:action move_4_4_3_4
  :effect (and
    (when (and (at_4_4) (or (bridge_3_4_4_4) (not (openprec_move_4_4_3_4_bridge_3_4_4_4))) (valid)) (at_3_4))
    (when (and (at_4_4) (or (bridge_3_4_4_4) (not (openprec_move_4_4_3_4_bridge_3_4_4_4))) (valid)) (not (at_4_4)))
    (when (not (and (at_4_4) (or (bridge_3_4_4_4) (not (openprec_move_4_4_3_4_bridge_3_4_4_4))) (valid))) (not (valid)))
  )
 )

 (:action move_4_4_5_4
  :effect (and
    (when (and (at_4_4) (or (bridge_4_4_5_4) (not (openprec_move_4_4_5_4_bridge_4_4_5_4))) (valid)) (at_5_4))
    (when (and (at_4_4) (or (bridge_4_4_5_4) (not (openprec_move_4_4_5_4_bridge_4_4_5_4))) (valid)) (not (at_4_4)))
    (when (not (and (at_4_4) (or (bridge_4_4_5_4) (not (openprec_move_4_4_5_4_bridge_4_4_5_4))) (valid))) (not (valid)))
  )
 )

 (:action move_4_4_4_3
  :effect (and
    (when (and (at_4_4) (or (bridge_4_3_4_4) (not (openprec_move_4_4_4_3_bridge_4_3_4_4))) (valid)) (at_4_3))
    (when (and (at_4_4) (or (bridge_4_3_4_4) (not (openprec_move_4_4_4_3_bridge_4_3_4_4))) (valid)) (not (at_4_4)))
    (when (not (and (at_4_4) (or (bridge_4_3_4_4) (not (openprec_move_4_4_4_3_bridge_4_3_4_4))) (valid))) (not (valid)))
  )
 )

 (:action move_4_4_4_5
  :effect (and
    (when (and (at_4_4) (or (bridge_4_4_4_5) (not (openprec_move_4_4_4_5_bridge_4_4_4_5))) (valid)) (at_4_5))
    (when (and (at_4_4) (or (bridge_4_4_4_5) (not (openprec_move_4_4_4_5_bridge_4_4_4_5))) (valid)) (not (at_4_4)))
    (when (not (and (at_4_4) (or (bridge_4_4_4_5) (not (openprec_move_4_4_4_5_bridge_4_4_4_5))) (valid))) (not (valid)))
  )
 )

 (:action move_4_5_3_5
  :effect (and
    (when (and (at_4_5) (or (bridge_3_5_4_5) (not (openprec_move_4_5_3_5_bridge_3_5_4_5))) (valid)) (at_3_5))
    (when (and (at_4_5) (or (bridge_3_5_4_5) (not (openprec_move_4_5_3_5_bridge_3_5_4_5))) (valid)) (not (at_4_5)))
    (when (not (and (at_4_5) (or (bridge_3_5_4_5) (not (openprec_move_4_5_3_5_bridge_3_5_4_5))) (valid))) (not (valid)))
  )
 )

 (:action move_4_5_5_5
  :effect (and
    (when (and (at_4_5) (or (bridge_4_5_5_5) (not (openprec_move_4_5_5_5_bridge_4_5_5_5))) (valid)) (at_5_5))
    (when (and (at_4_5) (or (bridge_4_5_5_5) (not (openprec_move_4_5_5_5_bridge_4_5_5_5))) (valid)) (not (at_4_5)))
    (when (not (and (at_4_5) (or (bridge_4_5_5_5) (not (openprec_move_4_5_5_5_bridge_4_5_5_5))) (valid))) (not (valid)))
  )
 )

 (:action move_4_5_4_4
  :effect (and
    (when (and (at_4_5) (or (bridge_4_4_4_5) (not (openprec_move_4_5_4_4_bridge_4_4_4_5))) (valid)) (at_4_4))
    (when (and (at_4_5) (or (bridge_4_4_4_5) (not (openprec_move_4_5_4_4_bridge_4_4_4_5))) (valid)) (not (at_4_5)))
    (when (not (and (at_4_5) (or (bridge_4_4_4_5) (not (openprec_move_4_5_4_4_bridge_4_4_4_5))) (valid))) (not (valid)))
  )
 )

 (:action move_4_5_4_6
  :effect (and
    (when (and (at_4_5) (or (bridge_4_5_4_6) (not (openprec_move_4_5_4_6_bridge_4_5_4_6))) (valid)) (at_4_6))
    (when (and (at_4_5) (or (bridge_4_5_4_6) (not (openprec_move_4_5_4_6_bridge_4_5_4_6))) (valid)) (not (at_4_5)))
    (when (not (and (at_4_5) (or (bridge_4_5_4_6) (not (openprec_move_4_5_4_6_bridge_4_5_4_6))) (valid))) (not (valid)))
  )
 )

 (:action move_4_6_3_6
  :effect (and
    (when (and (at_4_6) (or (bridge_3_6_4_6) (not (openprec_move_4_6_3_6_bridge_3_6_4_6))) (valid)) (at_3_6))
    (when (and (at_4_6) (or (bridge_3_6_4_6) (not (openprec_move_4_6_3_6_bridge_3_6_4_6))) (valid)) (not (at_4_6)))
    (when (not (and (at_4_6) (or (bridge_3_6_4_6) (not (openprec_move_4_6_3_6_bridge_3_6_4_6))) (valid))) (not (valid)))
  )
 )

 (:action move_4_6_5_6
  :effect (and
    (when (and (at_4_6) (or (bridge_4_6_5_6) (not (openprec_move_4_6_5_6_bridge_4_6_5_6))) (valid)) (at_5_6))
    (when (and (at_4_6) (or (bridge_4_6_5_6) (not (openprec_move_4_6_5_6_bridge_4_6_5_6))) (valid)) (not (at_4_6)))
    (when (not (and (at_4_6) (or (bridge_4_6_5_6) (not (openprec_move_4_6_5_6_bridge_4_6_5_6))) (valid))) (not (valid)))
  )
 )

 (:action move_4_6_4_5
  :effect (and
    (when (and (at_4_6) (or (bridge_4_5_4_6) (not (openprec_move_4_6_4_5_bridge_4_5_4_6))) (valid)) (at_4_5))
    (when (and (at_4_6) (or (bridge_4_5_4_6) (not (openprec_move_4_6_4_5_bridge_4_5_4_6))) (valid)) (not (at_4_6)))
    (when (not (and (at_4_6) (or (bridge_4_5_4_6) (not (openprec_move_4_6_4_5_bridge_4_5_4_6))) (valid))) (not (valid)))
  )
 )

 (:action move_4_6_4_7
  :effect (and
    (when (and (at_4_6) (or (bridge_4_6_4_7) (not (openprec_move_4_6_4_7_bridge_4_6_4_7))) (valid)) (at_4_7))
    (when (and (at_4_6) (or (bridge_4_6_4_7) (not (openprec_move_4_6_4_7_bridge_4_6_4_7))) (valid)) (not (at_4_6)))
    (when (not (and (at_4_6) (or (bridge_4_6_4_7) (not (openprec_move_4_6_4_7_bridge_4_6_4_7))) (valid))) (not (valid)))
  )
 )

 (:action move_4_7_3_7
  :effect (and
    (when (and (at_4_7) (or (bridge_3_7_4_7) (not (openprec_move_4_7_3_7_bridge_3_7_4_7))) (valid)) (at_3_7))
    (when (and (at_4_7) (or (bridge_3_7_4_7) (not (openprec_move_4_7_3_7_bridge_3_7_4_7))) (valid)) (not (at_4_7)))
    (when (not (and (at_4_7) (or (bridge_3_7_4_7) (not (openprec_move_4_7_3_7_bridge_3_7_4_7))) (valid))) (not (valid)))
  )
 )

 (:action move_4_7_5_7
  :effect (and
    (when (and (at_4_7) (or (bridge_4_7_5_7) (not (openprec_move_4_7_5_7_bridge_4_7_5_7))) (valid)) (at_5_7))
    (when (and (at_4_7) (or (bridge_4_7_5_7) (not (openprec_move_4_7_5_7_bridge_4_7_5_7))) (valid)) (not (at_4_7)))
    (when (not (and (at_4_7) (or (bridge_4_7_5_7) (not (openprec_move_4_7_5_7_bridge_4_7_5_7))) (valid))) (not (valid)))
  )
 )

 (:action move_4_7_4_6
  :effect (and
    (when (and (at_4_7) (or (bridge_4_6_4_7) (not (openprec_move_4_7_4_6_bridge_4_6_4_7))) (valid)) (at_4_6))
    (when (and (at_4_7) (or (bridge_4_6_4_7) (not (openprec_move_4_7_4_6_bridge_4_6_4_7))) (valid)) (not (at_4_7)))
    (when (not (and (at_4_7) (or (bridge_4_6_4_7) (not (openprec_move_4_7_4_6_bridge_4_6_4_7))) (valid))) (not (valid)))
  )
 )

 (:action move_5_0_4_0
  :effect (and
    (when (and (at_5_0) (or (bridge_4_0_5_0) (not (openprec_move_5_0_4_0_bridge_4_0_5_0))) (valid)) (at_4_0))
    (when (and (at_5_0) (or (bridge_4_0_5_0) (not (openprec_move_5_0_4_0_bridge_4_0_5_0))) (valid)) (not (at_5_0)))
    (when (not (and (at_5_0) (or (bridge_4_0_5_0) (not (openprec_move_5_0_4_0_bridge_4_0_5_0))) (valid))) (not (valid)))
  )
 )

 (:action move_5_0_6_0
  :effect (and
    (when (and (at_5_0) (or (bridge_5_0_6_0) (not (openprec_move_5_0_6_0_bridge_5_0_6_0))) (valid)) (at_6_0))
    (when (and (at_5_0) (or (bridge_5_0_6_0) (not (openprec_move_5_0_6_0_bridge_5_0_6_0))) (valid)) (not (at_5_0)))
    (when (not (and (at_5_0) (or (bridge_5_0_6_0) (not (openprec_move_5_0_6_0_bridge_5_0_6_0))) (valid))) (not (valid)))
  )
 )

 (:action move_5_0_5_1
  :effect (and
    (when (and (at_5_0) (or (bridge_5_0_5_1) (not (openprec_move_5_0_5_1_bridge_5_0_5_1))) (valid)) (at_5_1))
    (when (and (at_5_0) (or (bridge_5_0_5_1) (not (openprec_move_5_0_5_1_bridge_5_0_5_1))) (valid)) (not (at_5_0)))
    (when (not (and (at_5_0) (or (bridge_5_0_5_1) (not (openprec_move_5_0_5_1_bridge_5_0_5_1))) (valid))) (not (valid)))
  )
 )

 (:action move_5_1_4_1
  :effect (and
    (when (and (at_5_1) (or (bridge_4_1_5_1) (not (openprec_move_5_1_4_1_bridge_4_1_5_1))) (valid)) (at_4_1))
    (when (and (at_5_1) (or (bridge_4_1_5_1) (not (openprec_move_5_1_4_1_bridge_4_1_5_1))) (valid)) (not (at_5_1)))
    (when (not (and (at_5_1) (or (bridge_4_1_5_1) (not (openprec_move_5_1_4_1_bridge_4_1_5_1))) (valid))) (not (valid)))
  )
 )

 (:action move_5_1_6_1
  :effect (and
    (when (and (at_5_1) (or (bridge_5_1_6_1) (not (openprec_move_5_1_6_1_bridge_5_1_6_1))) (valid)) (at_6_1))
    (when (and (at_5_1) (or (bridge_5_1_6_1) (not (openprec_move_5_1_6_1_bridge_5_1_6_1))) (valid)) (not (at_5_1)))
    (when (not (and (at_5_1) (or (bridge_5_1_6_1) (not (openprec_move_5_1_6_1_bridge_5_1_6_1))) (valid))) (not (valid)))
  )
 )

 (:action move_5_1_5_0
  :effect (and
    (when (and (at_5_1) (or (bridge_5_0_5_1) (not (openprec_move_5_1_5_0_bridge_5_0_5_1))) (valid)) (at_5_0))
    (when (and (at_5_1) (or (bridge_5_0_5_1) (not (openprec_move_5_1_5_0_bridge_5_0_5_1))) (valid)) (not (at_5_1)))
    (when (not (and (at_5_1) (or (bridge_5_0_5_1) (not (openprec_move_5_1_5_0_bridge_5_0_5_1))) (valid))) (not (valid)))
  )
 )

 (:action move_5_1_5_2
  :effect (and
    (when (and (at_5_1) (or (bridge_5_1_5_2) (not (openprec_move_5_1_5_2_bridge_5_1_5_2))) (valid)) (at_5_2))
    (when (and (at_5_1) (or (bridge_5_1_5_2) (not (openprec_move_5_1_5_2_bridge_5_1_5_2))) (valid)) (not (at_5_1)))
    (when (not (and (at_5_1) (or (bridge_5_1_5_2) (not (openprec_move_5_1_5_2_bridge_5_1_5_2))) (valid))) (not (valid)))
  )
 )

 (:action move_5_2_4_2
  :effect (and
    (when (and (at_5_2) (or (bridge_4_2_5_2) (not (openprec_move_5_2_4_2_bridge_4_2_5_2))) (valid)) (at_4_2))
    (when (and (at_5_2) (or (bridge_4_2_5_2) (not (openprec_move_5_2_4_2_bridge_4_2_5_2))) (valid)) (not (at_5_2)))
    (when (not (and (at_5_2) (or (bridge_4_2_5_2) (not (openprec_move_5_2_4_2_bridge_4_2_5_2))) (valid))) (not (valid)))
  )
 )

 (:action move_5_2_6_2
  :effect (and
    (when (and (at_5_2) (or (bridge_5_2_6_2) (not (openprec_move_5_2_6_2_bridge_5_2_6_2))) (valid)) (at_6_2))
    (when (and (at_5_2) (or (bridge_5_2_6_2) (not (openprec_move_5_2_6_2_bridge_5_2_6_2))) (valid)) (not (at_5_2)))
    (when (not (and (at_5_2) (or (bridge_5_2_6_2) (not (openprec_move_5_2_6_2_bridge_5_2_6_2))) (valid))) (not (valid)))
  )
 )

 (:action move_5_2_5_1
  :effect (and
    (when (and (at_5_2) (or (bridge_5_1_5_2) (not (openprec_move_5_2_5_1_bridge_5_1_5_2))) (valid)) (at_5_1))
    (when (and (at_5_2) (or (bridge_5_1_5_2) (not (openprec_move_5_2_5_1_bridge_5_1_5_2))) (valid)) (not (at_5_2)))
    (when (not (and (at_5_2) (or (bridge_5_1_5_2) (not (openprec_move_5_2_5_1_bridge_5_1_5_2))) (valid))) (not (valid)))
  )
 )

 (:action move_5_2_5_3
  :effect (and
    (when (and (at_5_2) (or (bridge_5_2_5_3) (not (openprec_move_5_2_5_3_bridge_5_2_5_3))) (valid)) (at_5_3))
    (when (and (at_5_2) (or (bridge_5_2_5_3) (not (openprec_move_5_2_5_3_bridge_5_2_5_3))) (valid)) (not (at_5_2)))
    (when (not (and (at_5_2) (or (bridge_5_2_5_3) (not (openprec_move_5_2_5_3_bridge_5_2_5_3))) (valid))) (not (valid)))
  )
 )

 (:action move_5_3_4_3
  :effect (and
    (when (and (at_5_3) (or (bridge_4_3_5_3) (not (openprec_move_5_3_4_3_bridge_4_3_5_3))) (valid)) (at_4_3))
    (when (and (at_5_3) (or (bridge_4_3_5_3) (not (openprec_move_5_3_4_3_bridge_4_3_5_3))) (valid)) (not (at_5_3)))
    (when (not (and (at_5_3) (or (bridge_4_3_5_3) (not (openprec_move_5_3_4_3_bridge_4_3_5_3))) (valid))) (not (valid)))
  )
 )

 (:action move_5_3_6_3
  :effect (and
    (when (and (at_5_3) (or (bridge_5_3_6_3) (not (openprec_move_5_3_6_3_bridge_5_3_6_3))) (valid)) (at_6_3))
    (when (and (at_5_3) (or (bridge_5_3_6_3) (not (openprec_move_5_3_6_3_bridge_5_3_6_3))) (valid)) (not (at_5_3)))
    (when (not (and (at_5_3) (or (bridge_5_3_6_3) (not (openprec_move_5_3_6_3_bridge_5_3_6_3))) (valid))) (not (valid)))
  )
 )

 (:action move_5_3_5_2
  :effect (and
    (when (and (at_5_3) (or (bridge_5_2_5_3) (not (openprec_move_5_3_5_2_bridge_5_2_5_3))) (valid)) (at_5_2))
    (when (and (at_5_3) (or (bridge_5_2_5_3) (not (openprec_move_5_3_5_2_bridge_5_2_5_3))) (valid)) (not (at_5_3)))
    (when (not (and (at_5_3) (or (bridge_5_2_5_3) (not (openprec_move_5_3_5_2_bridge_5_2_5_3))) (valid))) (not (valid)))
  )
 )

 (:action move_5_3_5_4
  :effect (and
    (when (and (at_5_3) (or (bridge_5_3_5_4) (not (openprec_move_5_3_5_4_bridge_5_3_5_4))) (valid)) (at_5_4))
    (when (and (at_5_3) (or (bridge_5_3_5_4) (not (openprec_move_5_3_5_4_bridge_5_3_5_4))) (valid)) (not (at_5_3)))
    (when (not (and (at_5_3) (or (bridge_5_3_5_4) (not (openprec_move_5_3_5_4_bridge_5_3_5_4))) (valid))) (not (valid)))
  )
 )

 (:action move_5_4_4_4
  :effect (and
    (when (and (at_5_4) (or (bridge_4_4_5_4) (not (openprec_move_5_4_4_4_bridge_4_4_5_4))) (valid)) (at_4_4))
    (when (and (at_5_4) (or (bridge_4_4_5_4) (not (openprec_move_5_4_4_4_bridge_4_4_5_4))) (valid)) (not (at_5_4)))
    (when (not (and (at_5_4) (or (bridge_4_4_5_4) (not (openprec_move_5_4_4_4_bridge_4_4_5_4))) (valid))) (not (valid)))
  )
 )

 (:action move_5_4_6_4
  :effect (and
    (when (and (at_5_4) (or (bridge_5_4_6_4) (not (openprec_move_5_4_6_4_bridge_5_4_6_4))) (valid)) (at_6_4))
    (when (and (at_5_4) (or (bridge_5_4_6_4) (not (openprec_move_5_4_6_4_bridge_5_4_6_4))) (valid)) (not (at_5_4)))
    (when (not (and (at_5_4) (or (bridge_5_4_6_4) (not (openprec_move_5_4_6_4_bridge_5_4_6_4))) (valid))) (not (valid)))
  )
 )

 (:action move_5_4_5_3
  :effect (and
    (when (and (at_5_4) (or (bridge_5_3_5_4) (not (openprec_move_5_4_5_3_bridge_5_3_5_4))) (valid)) (at_5_3))
    (when (and (at_5_4) (or (bridge_5_3_5_4) (not (openprec_move_5_4_5_3_bridge_5_3_5_4))) (valid)) (not (at_5_4)))
    (when (not (and (at_5_4) (or (bridge_5_3_5_4) (not (openprec_move_5_4_5_3_bridge_5_3_5_4))) (valid))) (not (valid)))
  )
 )

 (:action move_5_4_5_5
  :effect (and
    (when (and (at_5_4) (or (bridge_5_4_5_5) (not (openprec_move_5_4_5_5_bridge_5_4_5_5))) (valid)) (at_5_5))
    (when (and (at_5_4) (or (bridge_5_4_5_5) (not (openprec_move_5_4_5_5_bridge_5_4_5_5))) (valid)) (not (at_5_4)))
    (when (not (and (at_5_4) (or (bridge_5_4_5_5) (not (openprec_move_5_4_5_5_bridge_5_4_5_5))) (valid))) (not (valid)))
  )
 )

 (:action move_5_5_4_5
  :effect (and
    (when (and (at_5_5) (or (bridge_4_5_5_5) (not (openprec_move_5_5_4_5_bridge_4_5_5_5))) (valid)) (at_4_5))
    (when (and (at_5_5) (or (bridge_4_5_5_5) (not (openprec_move_5_5_4_5_bridge_4_5_5_5))) (valid)) (not (at_5_5)))
    (when (not (and (at_5_5) (or (bridge_4_5_5_5) (not (openprec_move_5_5_4_5_bridge_4_5_5_5))) (valid))) (not (valid)))
  )
 )

 (:action move_5_5_6_5
  :effect (and
    (when (and (at_5_5) (or (bridge_5_5_6_5) (not (openprec_move_5_5_6_5_bridge_5_5_6_5))) (valid)) (at_6_5))
    (when (and (at_5_5) (or (bridge_5_5_6_5) (not (openprec_move_5_5_6_5_bridge_5_5_6_5))) (valid)) (not (at_5_5)))
    (when (not (and (at_5_5) (or (bridge_5_5_6_5) (not (openprec_move_5_5_6_5_bridge_5_5_6_5))) (valid))) (not (valid)))
  )
 )

 (:action move_5_5_5_4
  :effect (and
    (when (and (at_5_5) (or (bridge_5_4_5_5) (not (openprec_move_5_5_5_4_bridge_5_4_5_5))) (valid)) (at_5_4))
    (when (and (at_5_5) (or (bridge_5_4_5_5) (not (openprec_move_5_5_5_4_bridge_5_4_5_5))) (valid)) (not (at_5_5)))
    (when (not (and (at_5_5) (or (bridge_5_4_5_5) (not (openprec_move_5_5_5_4_bridge_5_4_5_5))) (valid))) (not (valid)))
  )
 )

 (:action move_5_5_5_6
  :effect (and
    (when (and (at_5_5) (or (bridge_5_5_5_6) (not (openprec_move_5_5_5_6_bridge_5_5_5_6))) (valid)) (at_5_6))
    (when (and (at_5_5) (or (bridge_5_5_5_6) (not (openprec_move_5_5_5_6_bridge_5_5_5_6))) (valid)) (not (at_5_5)))
    (when (not (and (at_5_5) (or (bridge_5_5_5_6) (not (openprec_move_5_5_5_6_bridge_5_5_5_6))) (valid))) (not (valid)))
  )
 )

 (:action move_5_6_4_6
  :effect (and
    (when (and (at_5_6) (or (bridge_4_6_5_6) (not (openprec_move_5_6_4_6_bridge_4_6_5_6))) (valid)) (at_4_6))
    (when (and (at_5_6) (or (bridge_4_6_5_6) (not (openprec_move_5_6_4_6_bridge_4_6_5_6))) (valid)) (not (at_5_6)))
    (when (not (and (at_5_6) (or (bridge_4_6_5_6) (not (openprec_move_5_6_4_6_bridge_4_6_5_6))) (valid))) (not (valid)))
  )
 )

 (:action move_5_6_6_6
  :effect (and
    (when (and (at_5_6) (or (bridge_5_6_6_6) (not (openprec_move_5_6_6_6_bridge_5_6_6_6))) (valid)) (at_6_6))
    (when (and (at_5_6) (or (bridge_5_6_6_6) (not (openprec_move_5_6_6_6_bridge_5_6_6_6))) (valid)) (not (at_5_6)))
    (when (not (and (at_5_6) (or (bridge_5_6_6_6) (not (openprec_move_5_6_6_6_bridge_5_6_6_6))) (valid))) (not (valid)))
  )
 )

 (:action move_5_6_5_5
  :effect (and
    (when (and (at_5_6) (or (bridge_5_5_5_6) (not (openprec_move_5_6_5_5_bridge_5_5_5_6))) (valid)) (at_5_5))
    (when (and (at_5_6) (or (bridge_5_5_5_6) (not (openprec_move_5_6_5_5_bridge_5_5_5_6))) (valid)) (not (at_5_6)))
    (when (not (and (at_5_6) (or (bridge_5_5_5_6) (not (openprec_move_5_6_5_5_bridge_5_5_5_6))) (valid))) (not (valid)))
  )
 )

 (:action move_5_6_5_7
  :effect (and
    (when (and (at_5_6) (or (bridge_5_6_5_7) (not (openprec_move_5_6_5_7_bridge_5_6_5_7))) (valid)) (at_5_7))
    (when (and (at_5_6) (or (bridge_5_6_5_7) (not (openprec_move_5_6_5_7_bridge_5_6_5_7))) (valid)) (not (at_5_6)))
    (when (not (and (at_5_6) (or (bridge_5_6_5_7) (not (openprec_move_5_6_5_7_bridge_5_6_5_7))) (valid))) (not (valid)))
  )
 )

 (:action move_5_7_4_7
  :effect (and
    (when (and (at_5_7) (or (bridge_4_7_5_7) (not (openprec_move_5_7_4_7_bridge_4_7_5_7))) (valid)) (at_4_7))
    (when (and (at_5_7) (or (bridge_4_7_5_7) (not (openprec_move_5_7_4_7_bridge_4_7_5_7))) (valid)) (not (at_5_7)))
    (when (not (and (at_5_7) (or (bridge_4_7_5_7) (not (openprec_move_5_7_4_7_bridge_4_7_5_7))) (valid))) (not (valid)))
  )
 )

 (:action move_5_7_6_7
  :effect (and
    (when (and (at_5_7) (or (bridge_5_7_6_7) (not (openprec_move_5_7_6_7_bridge_5_7_6_7))) (valid)) (at_6_7))
    (when (and (at_5_7) (or (bridge_5_7_6_7) (not (openprec_move_5_7_6_7_bridge_5_7_6_7))) (valid)) (not (at_5_7)))
    (when (not (and (at_5_7) (or (bridge_5_7_6_7) (not (openprec_move_5_7_6_7_bridge_5_7_6_7))) (valid))) (not (valid)))
  )
 )

 (:action move_5_7_5_6
  :effect (and
    (when (and (at_5_7) (or (bridge_5_6_5_7) (not (openprec_move_5_7_5_6_bridge_5_6_5_7))) (valid)) (at_5_6))
    (when (and (at_5_7) (or (bridge_5_6_5_7) (not (openprec_move_5_7_5_6_bridge_5_6_5_7))) (valid)) (not (at_5_7)))
    (when (not (and (at_5_7) (or (bridge_5_6_5_7) (not (openprec_move_5_7_5_6_bridge_5_6_5_7))) (valid))) (not (valid)))
  )
 )

 (:action move_6_0_5_0
  :effect (and
    (when (and (at_6_0) (or (bridge_5_0_6_0) (not (openprec_move_6_0_5_0_bridge_5_0_6_0))) (valid)) (at_5_0))
    (when (and (at_6_0) (or (bridge_5_0_6_0) (not (openprec_move_6_0_5_0_bridge_5_0_6_0))) (valid)) (not (at_6_0)))
    (when (not (and (at_6_0) (or (bridge_5_0_6_0) (not (openprec_move_6_0_5_0_bridge_5_0_6_0))) (valid))) (not (valid)))
  )
 )

 (:action move_6_0_7_0
  :effect (and
    (when (and (at_6_0) (or (bridge_6_0_7_0) (not (openprec_move_6_0_7_0_bridge_6_0_7_0))) (valid)) (at_7_0))
    (when (and (at_6_0) (or (bridge_6_0_7_0) (not (openprec_move_6_0_7_0_bridge_6_0_7_0))) (valid)) (not (at_6_0)))
    (when (not (and (at_6_0) (or (bridge_6_0_7_0) (not (openprec_move_6_0_7_0_bridge_6_0_7_0))) (valid))) (not (valid)))
  )
 )

 (:action move_6_0_6_1
  :effect (and
    (when (and (at_6_0) (or (bridge_6_0_6_1) (not (openprec_move_6_0_6_1_bridge_6_0_6_1))) (valid)) (at_6_1))
    (when (and (at_6_0) (or (bridge_6_0_6_1) (not (openprec_move_6_0_6_1_bridge_6_0_6_1))) (valid)) (not (at_6_0)))
    (when (not (and (at_6_0) (or (bridge_6_0_6_1) (not (openprec_move_6_0_6_1_bridge_6_0_6_1))) (valid))) (not (valid)))
  )
 )

 (:action move_6_1_5_1
  :effect (and
    (when (and (at_6_1) (or (bridge_5_1_6_1) (not (openprec_move_6_1_5_1_bridge_5_1_6_1))) (valid)) (at_5_1))
    (when (and (at_6_1) (or (bridge_5_1_6_1) (not (openprec_move_6_1_5_1_bridge_5_1_6_1))) (valid)) (not (at_6_1)))
    (when (not (and (at_6_1) (or (bridge_5_1_6_1) (not (openprec_move_6_1_5_1_bridge_5_1_6_1))) (valid))) (not (valid)))
  )
 )

 (:action move_6_1_7_1
  :effect (and
    (when (and (at_6_1) (or (bridge_6_1_7_1) (not (openprec_move_6_1_7_1_bridge_6_1_7_1))) (valid)) (at_7_1))
    (when (and (at_6_1) (or (bridge_6_1_7_1) (not (openprec_move_6_1_7_1_bridge_6_1_7_1))) (valid)) (not (at_6_1)))
    (when (not (and (at_6_1) (or (bridge_6_1_7_1) (not (openprec_move_6_1_7_1_bridge_6_1_7_1))) (valid))) (not (valid)))
  )
 )

 (:action move_6_1_6_0
  :effect (and
    (when (and (at_6_1) (or (bridge_6_0_6_1) (not (openprec_move_6_1_6_0_bridge_6_0_6_1))) (valid)) (at_6_0))
    (when (and (at_6_1) (or (bridge_6_0_6_1) (not (openprec_move_6_1_6_0_bridge_6_0_6_1))) (valid)) (not (at_6_1)))
    (when (not (and (at_6_1) (or (bridge_6_0_6_1) (not (openprec_move_6_1_6_0_bridge_6_0_6_1))) (valid))) (not (valid)))
  )
 )

 (:action move_6_1_6_2
  :effect (and
    (when (and (at_6_1) (or (bridge_6_1_6_2) (not (openprec_move_6_1_6_2_bridge_6_1_6_2))) (valid)) (at_6_2))
    (when (and (at_6_1) (or (bridge_6_1_6_2) (not (openprec_move_6_1_6_2_bridge_6_1_6_2))) (valid)) (not (at_6_1)))
    (when (not (and (at_6_1) (or (bridge_6_1_6_2) (not (openprec_move_6_1_6_2_bridge_6_1_6_2))) (valid))) (not (valid)))
  )
 )

 (:action move_6_2_5_2
  :effect (and
    (when (and (at_6_2) (or (bridge_5_2_6_2) (not (openprec_move_6_2_5_2_bridge_5_2_6_2))) (valid)) (at_5_2))
    (when (and (at_6_2) (or (bridge_5_2_6_2) (not (openprec_move_6_2_5_2_bridge_5_2_6_2))) (valid)) (not (at_6_2)))
    (when (not (and (at_6_2) (or (bridge_5_2_6_2) (not (openprec_move_6_2_5_2_bridge_5_2_6_2))) (valid))) (not (valid)))
  )
 )

 (:action move_6_2_7_2
  :effect (and
    (when (and (at_6_2) (or (bridge_6_2_7_2) (not (openprec_move_6_2_7_2_bridge_6_2_7_2))) (valid)) (at_7_2))
    (when (and (at_6_2) (or (bridge_6_2_7_2) (not (openprec_move_6_2_7_2_bridge_6_2_7_2))) (valid)) (not (at_6_2)))
    (when (not (and (at_6_2) (or (bridge_6_2_7_2) (not (openprec_move_6_2_7_2_bridge_6_2_7_2))) (valid))) (not (valid)))
  )
 )

 (:action move_6_2_6_1
  :effect (and
    (when (and (at_6_2) (or (bridge_6_1_6_2) (not (openprec_move_6_2_6_1_bridge_6_1_6_2))) (valid)) (at_6_1))
    (when (and (at_6_2) (or (bridge_6_1_6_2) (not (openprec_move_6_2_6_1_bridge_6_1_6_2))) (valid)) (not (at_6_2)))
    (when (not (and (at_6_2) (or (bridge_6_1_6_2) (not (openprec_move_6_2_6_1_bridge_6_1_6_2))) (valid))) (not (valid)))
  )
 )

 (:action move_6_2_6_3
  :effect (and
    (when (and (at_6_2) (or (bridge_6_2_6_3) (not (openprec_move_6_2_6_3_bridge_6_2_6_3))) (valid)) (at_6_3))
    (when (and (at_6_2) (or (bridge_6_2_6_3) (not (openprec_move_6_2_6_3_bridge_6_2_6_3))) (valid)) (not (at_6_2)))
    (when (not (and (at_6_2) (or (bridge_6_2_6_3) (not (openprec_move_6_2_6_3_bridge_6_2_6_3))) (valid))) (not (valid)))
  )
 )

 (:action move_6_3_5_3
  :effect (and
    (when (and (at_6_3) (or (bridge_5_3_6_3) (not (openprec_move_6_3_5_3_bridge_5_3_6_3))) (valid)) (at_5_3))
    (when (and (at_6_3) (or (bridge_5_3_6_3) (not (openprec_move_6_3_5_3_bridge_5_3_6_3))) (valid)) (not (at_6_3)))
    (when (not (and (at_6_3) (or (bridge_5_3_6_3) (not (openprec_move_6_3_5_3_bridge_5_3_6_3))) (valid))) (not (valid)))
  )
 )

 (:action move_6_3_7_3
  :effect (and
    (when (and (at_6_3) (or (bridge_6_3_7_3) (not (openprec_move_6_3_7_3_bridge_6_3_7_3))) (valid)) (at_7_3))
    (when (and (at_6_3) (or (bridge_6_3_7_3) (not (openprec_move_6_3_7_3_bridge_6_3_7_3))) (valid)) (not (at_6_3)))
    (when (not (and (at_6_3) (or (bridge_6_3_7_3) (not (openprec_move_6_3_7_3_bridge_6_3_7_3))) (valid))) (not (valid)))
  )
 )

 (:action move_6_3_6_2
  :effect (and
    (when (and (at_6_3) (or (bridge_6_2_6_3) (not (openprec_move_6_3_6_2_bridge_6_2_6_3))) (valid)) (at_6_2))
    (when (and (at_6_3) (or (bridge_6_2_6_3) (not (openprec_move_6_3_6_2_bridge_6_2_6_3))) (valid)) (not (at_6_3)))
    (when (not (and (at_6_3) (or (bridge_6_2_6_3) (not (openprec_move_6_3_6_2_bridge_6_2_6_3))) (valid))) (not (valid)))
  )
 )

 (:action move_6_3_6_4
  :effect (and
    (when (and (at_6_3) (or (bridge_6_3_6_4) (not (openprec_move_6_3_6_4_bridge_6_3_6_4))) (valid)) (at_6_4))
    (when (and (at_6_3) (or (bridge_6_3_6_4) (not (openprec_move_6_3_6_4_bridge_6_3_6_4))) (valid)) (not (at_6_3)))
    (when (not (and (at_6_3) (or (bridge_6_3_6_4) (not (openprec_move_6_3_6_4_bridge_6_3_6_4))) (valid))) (not (valid)))
  )
 )

 (:action move_6_4_5_4
  :effect (and
    (when (and (at_6_4) (or (bridge_5_4_6_4) (not (openprec_move_6_4_5_4_bridge_5_4_6_4))) (valid)) (at_5_4))
    (when (and (at_6_4) (or (bridge_5_4_6_4) (not (openprec_move_6_4_5_4_bridge_5_4_6_4))) (valid)) (not (at_6_4)))
    (when (not (and (at_6_4) (or (bridge_5_4_6_4) (not (openprec_move_6_4_5_4_bridge_5_4_6_4))) (valid))) (not (valid)))
  )
 )

 (:action move_6_4_7_4
  :effect (and
    (when (and (at_6_4) (or (bridge_6_4_7_4) (not (openprec_move_6_4_7_4_bridge_6_4_7_4))) (valid)) (at_7_4))
    (when (and (at_6_4) (or (bridge_6_4_7_4) (not (openprec_move_6_4_7_4_bridge_6_4_7_4))) (valid)) (not (at_6_4)))
    (when (not (and (at_6_4) (or (bridge_6_4_7_4) (not (openprec_move_6_4_7_4_bridge_6_4_7_4))) (valid))) (not (valid)))
  )
 )

 (:action move_6_4_6_3
  :effect (and
    (when (and (at_6_4) (or (bridge_6_3_6_4) (not (openprec_move_6_4_6_3_bridge_6_3_6_4))) (valid)) (at_6_3))
    (when (and (at_6_4) (or (bridge_6_3_6_4) (not (openprec_move_6_4_6_3_bridge_6_3_6_4))) (valid)) (not (at_6_4)))
    (when (not (and (at_6_4) (or (bridge_6_3_6_4) (not (openprec_move_6_4_6_3_bridge_6_3_6_4))) (valid))) (not (valid)))
  )
 )

 (:action move_6_4_6_5
  :effect (and
    (when (and (at_6_4) (or (bridge_6_4_6_5) (not (openprec_move_6_4_6_5_bridge_6_4_6_5))) (valid)) (at_6_5))
    (when (and (at_6_4) (or (bridge_6_4_6_5) (not (openprec_move_6_4_6_5_bridge_6_4_6_5))) (valid)) (not (at_6_4)))
    (when (not (and (at_6_4) (or (bridge_6_4_6_5) (not (openprec_move_6_4_6_5_bridge_6_4_6_5))) (valid))) (not (valid)))
  )
 )

 (:action move_6_5_5_5
  :effect (and
    (when (and (at_6_5) (or (bridge_5_5_6_5) (not (openprec_move_6_5_5_5_bridge_5_5_6_5))) (valid)) (at_5_5))
    (when (and (at_6_5) (or (bridge_5_5_6_5) (not (openprec_move_6_5_5_5_bridge_5_5_6_5))) (valid)) (not (at_6_5)))
    (when (not (and (at_6_5) (or (bridge_5_5_6_5) (not (openprec_move_6_5_5_5_bridge_5_5_6_5))) (valid))) (not (valid)))
  )
 )

 (:action move_6_5_7_5
  :effect (and
    (when (and (at_6_5) (or (bridge_6_5_7_5) (not (openprec_move_6_5_7_5_bridge_6_5_7_5))) (valid)) (at_7_5))
    (when (and (at_6_5) (or (bridge_6_5_7_5) (not (openprec_move_6_5_7_5_bridge_6_5_7_5))) (valid)) (not (at_6_5)))
    (when (not (and (at_6_5) (or (bridge_6_5_7_5) (not (openprec_move_6_5_7_5_bridge_6_5_7_5))) (valid))) (not (valid)))
  )
 )

 (:action move_6_5_6_4
  :effect (and
    (when (and (at_6_5) (or (bridge_6_4_6_5) (not (openprec_move_6_5_6_4_bridge_6_4_6_5))) (valid)) (at_6_4))
    (when (and (at_6_5) (or (bridge_6_4_6_5) (not (openprec_move_6_5_6_4_bridge_6_4_6_5))) (valid)) (not (at_6_5)))
    (when (not (and (at_6_5) (or (bridge_6_4_6_5) (not (openprec_move_6_5_6_4_bridge_6_4_6_5))) (valid))) (not (valid)))
  )
 )

 (:action move_6_5_6_6
  :effect (and
    (when (and (at_6_5) (or (bridge_6_5_6_6) (not (openprec_move_6_5_6_6_bridge_6_5_6_6))) (valid)) (at_6_6))
    (when (and (at_6_5) (or (bridge_6_5_6_6) (not (openprec_move_6_5_6_6_bridge_6_5_6_6))) (valid)) (not (at_6_5)))
    (when (not (and (at_6_5) (or (bridge_6_5_6_6) (not (openprec_move_6_5_6_6_bridge_6_5_6_6))) (valid))) (not (valid)))
  )
 )

 (:action move_6_6_5_6
  :effect (and
    (when (and (at_6_6) (or (bridge_5_6_6_6) (not (openprec_move_6_6_5_6_bridge_5_6_6_6))) (valid)) (at_5_6))
    (when (and (at_6_6) (or (bridge_5_6_6_6) (not (openprec_move_6_6_5_6_bridge_5_6_6_6))) (valid)) (not (at_6_6)))
    (when (not (and (at_6_6) (or (bridge_5_6_6_6) (not (openprec_move_6_6_5_6_bridge_5_6_6_6))) (valid))) (not (valid)))
  )
 )

 (:action move_6_6_7_6
  :effect (and
    (when (and (at_6_6) (or (bridge_6_6_7_6) (not (openprec_move_6_6_7_6_bridge_6_6_7_6))) (valid)) (at_7_6))
    (when (and (at_6_6) (or (bridge_6_6_7_6) (not (openprec_move_6_6_7_6_bridge_6_6_7_6))) (valid)) (not (at_6_6)))
    (when (not (and (at_6_6) (or (bridge_6_6_7_6) (not (openprec_move_6_6_7_6_bridge_6_6_7_6))) (valid))) (not (valid)))
  )
 )

 (:action move_6_6_6_5
  :effect (and
    (when (and (at_6_6) (or (bridge_6_5_6_6) (not (openprec_move_6_6_6_5_bridge_6_5_6_6))) (valid)) (at_6_5))
    (when (and (at_6_6) (or (bridge_6_5_6_6) (not (openprec_move_6_6_6_5_bridge_6_5_6_6))) (valid)) (not (at_6_6)))
    (when (not (and (at_6_6) (or (bridge_6_5_6_6) (not (openprec_move_6_6_6_5_bridge_6_5_6_6))) (valid))) (not (valid)))
  )
 )

 (:action move_6_6_6_7
  :effect (and
    (when (and (at_6_6) (or (bridge_6_6_6_7) (not (openprec_move_6_6_6_7_bridge_6_6_6_7))) (valid)) (at_6_7))
    (when (and (at_6_6) (or (bridge_6_6_6_7) (not (openprec_move_6_6_6_7_bridge_6_6_6_7))) (valid)) (not (at_6_6)))
    (when (not (and (at_6_6) (or (bridge_6_6_6_7) (not (openprec_move_6_6_6_7_bridge_6_6_6_7))) (valid))) (not (valid)))
  )
 )

 (:action move_6_7_5_7
  :effect (and
    (when (and (at_6_7) (or (bridge_5_7_6_7) (not (openprec_move_6_7_5_7_bridge_5_7_6_7))) (valid)) (at_5_7))
    (when (and (at_6_7) (or (bridge_5_7_6_7) (not (openprec_move_6_7_5_7_bridge_5_7_6_7))) (valid)) (not (at_6_7)))
    (when (not (and (at_6_7) (or (bridge_5_7_6_7) (not (openprec_move_6_7_5_7_bridge_5_7_6_7))) (valid))) (not (valid)))
  )
 )

 (:action move_6_7_7_7
  :effect (and
    (when (and (at_6_7) (or (bridge_6_7_7_7) (not (openprec_move_6_7_7_7_bridge_6_7_7_7))) (valid)) (at_7_7))
    (when (and (at_6_7) (or (bridge_6_7_7_7) (not (openprec_move_6_7_7_7_bridge_6_7_7_7))) (valid)) (not (at_6_7)))
    (when (not (and (at_6_7) (or (bridge_6_7_7_7) (not (openprec_move_6_7_7_7_bridge_6_7_7_7))) (valid))) (not (valid)))
  )
 )

 (:action move_6_7_6_6
  :effect (and
    (when (and (at_6_7) (or (bridge_6_6_6_7) (not (openprec_move_6_7_6_6_bridge_6_6_6_7))) (valid)) (at_6_6))
    (when (and (at_6_7) (or (bridge_6_6_6_7) (not (openprec_move_6_7_6_6_bridge_6_6_6_7))) (valid)) (not (at_6_7)))
    (when (not (and (at_6_7) (or (bridge_6_6_6_7) (not (openprec_move_6_7_6_6_bridge_6_6_6_7))) (valid))) (not (valid)))
  )
 )

 (:action move_7_0_6_0
  :effect (and
    (when (and (at_7_0) (or (bridge_6_0_7_0) (not (openprec_move_7_0_6_0_bridge_6_0_7_0))) (valid)) (at_6_0))
    (when (and (at_7_0) (or (bridge_6_0_7_0) (not (openprec_move_7_0_6_0_bridge_6_0_7_0))) (valid)) (not (at_7_0)))
    (when (not (and (at_7_0) (or (bridge_6_0_7_0) (not (openprec_move_7_0_6_0_bridge_6_0_7_0))) (valid))) (not (valid)))
  )
 )

 (:action move_7_0_7_1
  :effect (and
    (when (and (at_7_0) (or (bridge_7_0_7_1) (not (openprec_move_7_0_7_1_bridge_7_0_7_1))) (valid)) (at_7_1))
    (when (and (at_7_0) (or (bridge_7_0_7_1) (not (openprec_move_7_0_7_1_bridge_7_0_7_1))) (valid)) (not (at_7_0)))
    (when (not (and (at_7_0) (or (bridge_7_0_7_1) (not (openprec_move_7_0_7_1_bridge_7_0_7_1))) (valid))) (not (valid)))
  )
 )

 (:action move_7_1_6_1
  :effect (and
    (when (and (at_7_1) (or (bridge_6_1_7_1) (not (openprec_move_7_1_6_1_bridge_6_1_7_1))) (valid)) (at_6_1))
    (when (and (at_7_1) (or (bridge_6_1_7_1) (not (openprec_move_7_1_6_1_bridge_6_1_7_1))) (valid)) (not (at_7_1)))
    (when (not (and (at_7_1) (or (bridge_6_1_7_1) (not (openprec_move_7_1_6_1_bridge_6_1_7_1))) (valid))) (not (valid)))
  )
 )

 (:action move_7_1_7_0
  :effect (and
    (when (and (at_7_1) (or (bridge_7_0_7_1) (not (openprec_move_7_1_7_0_bridge_7_0_7_1))) (valid)) (at_7_0))
    (when (and (at_7_1) (or (bridge_7_0_7_1) (not (openprec_move_7_1_7_0_bridge_7_0_7_1))) (valid)) (not (at_7_1)))
    (when (not (and (at_7_1) (or (bridge_7_0_7_1) (not (openprec_move_7_1_7_0_bridge_7_0_7_1))) (valid))) (not (valid)))
  )
 )

 (:action move_7_1_7_2
  :effect (and
    (when (and (at_7_1) (or (bridge_7_1_7_2) (not (openprec_move_7_1_7_2_bridge_7_1_7_2))) (valid)) (at_7_2))
    (when (and (at_7_1) (or (bridge_7_1_7_2) (not (openprec_move_7_1_7_2_bridge_7_1_7_2))) (valid)) (not (at_7_1)))
    (when (not (and (at_7_1) (or (bridge_7_1_7_2) (not (openprec_move_7_1_7_2_bridge_7_1_7_2))) (valid))) (not (valid)))
  )
 )

 (:action move_7_2_6_2
  :effect (and
    (when (and (at_7_2) (or (bridge_6_2_7_2) (not (openprec_move_7_2_6_2_bridge_6_2_7_2))) (valid)) (at_6_2))
    (when (and (at_7_2) (or (bridge_6_2_7_2) (not (openprec_move_7_2_6_2_bridge_6_2_7_2))) (valid)) (not (at_7_2)))
    (when (not (and (at_7_2) (or (bridge_6_2_7_2) (not (openprec_move_7_2_6_2_bridge_6_2_7_2))) (valid))) (not (valid)))
  )
 )

 (:action move_7_2_7_1
  :effect (and
    (when (and (at_7_2) (or (bridge_7_1_7_2) (not (openprec_move_7_2_7_1_bridge_7_1_7_2))) (valid)) (at_7_1))
    (when (and (at_7_2) (or (bridge_7_1_7_2) (not (openprec_move_7_2_7_1_bridge_7_1_7_2))) (valid)) (not (at_7_2)))
    (when (not (and (at_7_2) (or (bridge_7_1_7_2) (not (openprec_move_7_2_7_1_bridge_7_1_7_2))) (valid))) (not (valid)))
  )
 )

 (:action move_7_2_7_3
  :effect (and
    (when (and (at_7_2) (or (bridge_7_2_7_3) (not (openprec_move_7_2_7_3_bridge_7_2_7_3))) (valid)) (at_7_3))
    (when (and (at_7_2) (or (bridge_7_2_7_3) (not (openprec_move_7_2_7_3_bridge_7_2_7_3))) (valid)) (not (at_7_2)))
    (when (not (and (at_7_2) (or (bridge_7_2_7_3) (not (openprec_move_7_2_7_3_bridge_7_2_7_3))) (valid))) (not (valid)))
  )
 )

 (:action move_7_3_6_3
  :effect (and
    (when (and (at_7_3) (or (bridge_6_3_7_3) (not (openprec_move_7_3_6_3_bridge_6_3_7_3))) (valid)) (at_6_3))
    (when (and (at_7_3) (or (bridge_6_3_7_3) (not (openprec_move_7_3_6_3_bridge_6_3_7_3))) (valid)) (not (at_7_3)))
    (when (not (and (at_7_3) (or (bridge_6_3_7_3) (not (openprec_move_7_3_6_3_bridge_6_3_7_3))) (valid))) (not (valid)))
  )
 )

 (:action move_7_3_7_2
  :effect (and
    (when (and (at_7_3) (or (bridge_7_2_7_3) (not (openprec_move_7_3_7_2_bridge_7_2_7_3))) (valid)) (at_7_2))
    (when (and (at_7_3) (or (bridge_7_2_7_3) (not (openprec_move_7_3_7_2_bridge_7_2_7_3))) (valid)) (not (at_7_3)))
    (when (not (and (at_7_3) (or (bridge_7_2_7_3) (not (openprec_move_7_3_7_2_bridge_7_2_7_3))) (valid))) (not (valid)))
  )
 )

 (:action move_7_3_7_4
  :effect (and
    (when (and (at_7_3) (or (bridge_7_3_7_4) (not (openprec_move_7_3_7_4_bridge_7_3_7_4))) (valid)) (at_7_4))
    (when (and (at_7_3) (or (bridge_7_3_7_4) (not (openprec_move_7_3_7_4_bridge_7_3_7_4))) (valid)) (not (at_7_3)))
    (when (not (and (at_7_3) (or (bridge_7_3_7_4) (not (openprec_move_7_3_7_4_bridge_7_3_7_4))) (valid))) (not (valid)))
  )
 )

 (:action move_7_4_6_4
  :effect (and
    (when (and (at_7_4) (or (bridge_6_4_7_4) (not (openprec_move_7_4_6_4_bridge_6_4_7_4))) (valid)) (at_6_4))
    (when (and (at_7_4) (or (bridge_6_4_7_4) (not (openprec_move_7_4_6_4_bridge_6_4_7_4))) (valid)) (not (at_7_4)))
    (when (not (and (at_7_4) (or (bridge_6_4_7_4) (not (openprec_move_7_4_6_4_bridge_6_4_7_4))) (valid))) (not (valid)))
  )
 )

 (:action move_7_4_7_3
  :effect (and
    (when (and (at_7_4) (or (bridge_7_3_7_4) (not (openprec_move_7_4_7_3_bridge_7_3_7_4))) (valid)) (at_7_3))
    (when (and (at_7_4) (or (bridge_7_3_7_4) (not (openprec_move_7_4_7_3_bridge_7_3_7_4))) (valid)) (not (at_7_4)))
    (when (not (and (at_7_4) (or (bridge_7_3_7_4) (not (openprec_move_7_4_7_3_bridge_7_3_7_4))) (valid))) (not (valid)))
  )
 )

 (:action move_7_4_7_5
  :effect (and
    (when (and (at_7_4) (or (bridge_7_4_7_5) (not (openprec_move_7_4_7_5_bridge_7_4_7_5))) (valid)) (at_7_5))
    (when (and (at_7_4) (or (bridge_7_4_7_5) (not (openprec_move_7_4_7_5_bridge_7_4_7_5))) (valid)) (not (at_7_4)))
    (when (not (and (at_7_4) (or (bridge_7_4_7_5) (not (openprec_move_7_4_7_5_bridge_7_4_7_5))) (valid))) (not (valid)))
  )
 )

 (:action move_7_5_6_5
  :effect (and
    (when (and (at_7_5) (or (bridge_6_5_7_5) (not (openprec_move_7_5_6_5_bridge_6_5_7_5))) (valid)) (at_6_5))
    (when (and (at_7_5) (or (bridge_6_5_7_5) (not (openprec_move_7_5_6_5_bridge_6_5_7_5))) (valid)) (not (at_7_5)))
    (when (not (and (at_7_5) (or (bridge_6_5_7_5) (not (openprec_move_7_5_6_5_bridge_6_5_7_5))) (valid))) (not (valid)))
  )
 )

 (:action move_7_5_7_4
  :effect (and
    (when (and (at_7_5) (or (bridge_7_4_7_5) (not (openprec_move_7_5_7_4_bridge_7_4_7_5))) (valid)) (at_7_4))
    (when (and (at_7_5) (or (bridge_7_4_7_5) (not (openprec_move_7_5_7_4_bridge_7_4_7_5))) (valid)) (not (at_7_5)))
    (when (not (and (at_7_5) (or (bridge_7_4_7_5) (not (openprec_move_7_5_7_4_bridge_7_4_7_5))) (valid))) (not (valid)))
  )
 )

 (:action move_7_5_7_6
  :effect (and
    (when (and (at_7_5) (or (bridge_7_5_7_6) (not (openprec_move_7_5_7_6_bridge_7_5_7_6))) (valid)) (at_7_6))
    (when (and (at_7_5) (or (bridge_7_5_7_6) (not (openprec_move_7_5_7_6_bridge_7_5_7_6))) (valid)) (not (at_7_5)))
    (when (not (and (at_7_5) (or (bridge_7_5_7_6) (not (openprec_move_7_5_7_6_bridge_7_5_7_6))) (valid))) (not (valid)))
  )
 )

 (:action move_7_6_6_6
  :effect (and
    (when (and (at_7_6) (or (bridge_6_6_7_6) (not (openprec_move_7_6_6_6_bridge_6_6_7_6))) (valid)) (at_6_6))
    (when (and (at_7_6) (or (bridge_6_6_7_6) (not (openprec_move_7_6_6_6_bridge_6_6_7_6))) (valid)) (not (at_7_6)))
    (when (not (and (at_7_6) (or (bridge_6_6_7_6) (not (openprec_move_7_6_6_6_bridge_6_6_7_6))) (valid))) (not (valid)))
  )
 )

 (:action move_7_6_7_5
  :effect (and
    (when (and (at_7_6) (or (bridge_7_5_7_6) (not (openprec_move_7_6_7_5_bridge_7_5_7_6))) (valid)) (at_7_5))
    (when (and (at_7_6) (or (bridge_7_5_7_6) (not (openprec_move_7_6_7_5_bridge_7_5_7_6))) (valid)) (not (at_7_6)))
    (when (not (and (at_7_6) (or (bridge_7_5_7_6) (not (openprec_move_7_6_7_5_bridge_7_5_7_6))) (valid))) (not (valid)))
  )
 )

 (:action move_7_6_7_7
  :effect (and
    (when (and (at_7_6) (or (bridge_7_6_7_7) (not (openprec_move_7_6_7_7_bridge_7_6_7_7))) (valid)) (at_7_7))
    (when (and (at_7_6) (or (bridge_7_6_7_7) (not (openprec_move_7_6_7_7_bridge_7_6_7_7))) (valid)) (not (at_7_6)))
    (when (not (and (at_7_6) (or (bridge_7_6_7_7) (not (openprec_move_7_6_7_7_bridge_7_6_7_7))) (valid))) (not (valid)))
  )
 )

 (:action move_7_7_6_7
  :effect (and
    (when (and (at_7_7) (or (bridge_6_7_7_7) (not (openprec_move_7_7_6_7_bridge_6_7_7_7))) (valid)) (at_6_7))
    (when (and (at_7_7) (or (bridge_6_7_7_7) (not (openprec_move_7_7_6_7_bridge_6_7_7_7))) (valid)) (not (at_7_7)))
    (when (not (and (at_7_7) (or (bridge_6_7_7_7) (not (openprec_move_7_7_6_7_bridge_6_7_7_7))) (valid))) (not (valid)))
  )
 )

 (:action move_7_7_7_6
  :effect (and
    (when (and (at_7_7) (or (bridge_7_6_7_7) (not (openprec_move_7_7_7_6_bridge_7_6_7_7))) (valid)) (at_7_6))
    (when (and (at_7_7) (or (bridge_7_6_7_7) (not (openprec_move_7_7_7_6_bridge_7_6_7_7))) (valid)) (not (at_7_7)))
    (when (not (and (at_7_7) (or (bridge_7_6_7_7) (not (openprec_move_7_7_7_6_bridge_7_6_7_7))) (valid))) (not (valid)))
  )
 )

 (:action pickup_treasure1
  :effect (and
    (when (and (at_7_0) (valid)) (holding_treasure_1))
    (when (not (and (at_7_0) (valid))) (not (valid)))
  )
 )

 (:action pickup_treasure2
  :effect (and
    (when (and (at_7_7) (valid)) (holding_treasure_2))
    (when (not (and (at_7_7) (valid))) (not (valid)))
  )
 )

 (:action pickup_treasure3
  :effect (and
    (when (and (at_0_7) (valid)) (holding_treasure_3))
    (when (not (and (at_0_7) (valid))) (not (valid)))
  )
 )

 (:action cpp_goal
  :precondition (and )
  :effect (when (and (at_0_0 ) (holding_treasure_1 ) (holding_treasure_2 ) (holding_treasure_3 ) (valid)) (done))
 )
)
