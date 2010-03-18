(define (problem bridges)
 (:domain Bridges)
 (:init
  (at_0_0)
  (valid)
  (probabilistic 0.5 (openprec_move_0_2_1_2_bridge_0_2_1_2))
  (probabilistic 0.5 (possclob_move_0_2_1_2_holding_treasure_2))
  (probabilistic 0.5 (possclob_move_0_2_1_2_holding_treasure_3))
  (probabilistic 0.5 (possclob_move_0_2_1_2_holding_treasure_1))
  (probabilistic 0.5 (openprec_move_0_4_1_4_bridge_0_4_1_4))
  (probabilistic 0.5 (openprec_move_0_4_0_5_bridge_0_4_0_5))
  (probabilistic 0.5 (openprec_move_0_5_1_5_bridge_0_5_1_5))
  (probabilistic 0.5 (openprec_move_0_5_0_4_bridge_0_4_0_5))
  (probabilistic 0.5 (possclob_move_0_5_0_4_holding_treasure_2))
  (probabilistic 0.5 (possclob_move_0_5_0_4_holding_treasure_3))
  (probabilistic 0.5 (possclob_move_0_5_0_4_holding_treasure_1))
  (probabilistic 0.5 (openprec_move_0_6_1_6_bridge_0_6_1_6))
  (probabilistic 0.5 (possclob_move_0_6_1_6_holding_treasure_2))
  (probabilistic 0.5 (possclob_move_0_6_1_6_holding_treasure_3))
  (probabilistic 0.5 (possclob_move_0_6_1_6_holding_treasure_1))
  (probabilistic 0.5 (openprec_move_1_0_1_1_bridge_1_0_1_1))
  (probabilistic 0.5 (openprec_move_1_1_1_0_bridge_1_0_1_1))
  (probabilistic 0.5 (possclob_move_1_1_1_0_holding_treasure_2))
  (probabilistic 0.5 (possclob_move_1_1_1_0_holding_treasure_3))
  (probabilistic 0.5 (possclob_move_1_1_1_0_holding_treasure_1))
  (probabilistic 0.5 (openprec_move_1_2_0_2_bridge_0_2_1_2))
  (probabilistic 0.5 (possclob_move_1_2_0_2_holding_treasure_2))
  (probabilistic 0.5 (possclob_move_1_2_0_2_holding_treasure_3))
  (probabilistic 0.5 (possclob_move_1_2_0_2_holding_treasure_1))
  (probabilistic 0.5 (openprec_move_1_4_0_4_bridge_0_4_1_4))
  (probabilistic 0.5 (possclob_move_1_4_0_4_holding_treasure_2))
  (probabilistic 0.5 (possclob_move_1_4_0_4_holding_treasure_3))
  (probabilistic 0.5 (possclob_move_1_4_0_4_holding_treasure_1))
  (probabilistic 0.5 (openprec_move_1_5_0_5_bridge_0_5_1_5))
  (probabilistic 0.5 (possclob_move_1_5_0_5_holding_treasure_2))
  (probabilistic 0.5 (possclob_move_1_5_0_5_holding_treasure_3))
  (probabilistic 0.5 (possclob_move_1_5_0_5_holding_treasure_1))
  (probabilistic 0.5 (openprec_move_1_6_0_6_bridge_0_6_1_6))
  (probabilistic 0.5 (possclob_move_1_6_0_6_holding_treasure_2))
  (probabilistic 0.5 (possclob_move_1_6_0_6_holding_treasure_3))
  (probabilistic 0.5 (possclob_move_1_6_0_6_holding_treasure_1))
  (probabilistic 0.5 (openprec_move_1_6_2_6_bridge_1_6_2_6))
  (probabilistic 0.5 (possclob_move_1_6_2_6_holding_treasure_2))
  (probabilistic 0.5 (possclob_move_1_6_2_6_holding_treasure_3))
  (probabilistic 0.5 (possclob_move_1_6_2_6_holding_treasure_1))
  (probabilistic 0.5 (openprec_move_1_6_1_7_bridge_1_6_1_7))
  (probabilistic 0.5 (openprec_move_1_7_1_6_bridge_1_6_1_7))
  (probabilistic 0.5 (possclob_move_1_7_1_6_holding_treasure_2))
  (probabilistic 0.5 (possclob_move_1_7_1_6_holding_treasure_3))
  (probabilistic 0.5 (possclob_move_1_7_1_6_holding_treasure_1))
  (probabilistic 0.5 (openprec_move_2_0_2_1_bridge_2_0_2_1))
  (probabilistic 0.5 (openprec_move_2_1_2_0_bridge_2_0_2_1))
  (probabilistic 0.5 (possclob_move_2_1_2_0_holding_treasure_2))
  (probabilistic 0.5 (possclob_move_2_1_2_0_holding_treasure_3))
  (probabilistic 0.5 (possclob_move_2_1_2_0_holding_treasure_1))
  (probabilistic 0.5 (openprec_move_2_2_2_3_bridge_2_2_2_3))
  (probabilistic 0.5 (openprec_move_2_3_3_3_bridge_2_3_3_3))
  (probabilistic 0.5 (openprec_move_2_3_2_2_bridge_2_2_2_3))
  (probabilistic 0.5 (possclob_move_2_3_2_2_holding_treasure_2))
  (probabilistic 0.5 (possclob_move_2_3_2_2_holding_treasure_3))
  (probabilistic 0.5 (possclob_move_2_3_2_2_holding_treasure_1))
  (probabilistic 0.5 (openprec_move_2_6_1_6_bridge_1_6_2_6))
  (probabilistic 0.5 (openprec_move_3_1_4_1_bridge_3_1_4_1))
  (probabilistic 0.5 (openprec_move_3_1_3_2_bridge_3_1_3_2))
  (probabilistic 0.5 (possclob_move_3_1_3_2_holding_treasure_2))
  (probabilistic 0.5 (possclob_move_3_1_3_2_holding_treasure_3))
  (probabilistic 0.5 (possclob_move_3_1_3_2_holding_treasure_1))
  (probabilistic 0.5 (openprec_move_3_2_3_1_bridge_3_1_3_2))
  (probabilistic 0.5 (possclob_move_3_2_3_1_holding_treasure_2))
  (probabilistic 0.5 (possclob_move_3_2_3_1_holding_treasure_3))
  (probabilistic 0.5 (possclob_move_3_2_3_1_holding_treasure_1))
  (probabilistic 0.5 (openprec_move_3_3_2_3_bridge_2_3_3_3))
  (probabilistic 0.5 (openprec_move_3_4_4_4_bridge_3_4_4_4))
  (probabilistic 0.5 (openprec_move_3_4_3_5_bridge_3_4_3_5))
  (probabilistic 0.5 (openprec_move_3_5_3_4_bridge_3_4_3_5))
  (probabilistic 0.5 (possclob_move_3_5_3_4_holding_treasure_2))
  (probabilistic 0.5 (possclob_move_3_5_3_4_holding_treasure_3))
  (probabilistic 0.5 (possclob_move_3_5_3_4_holding_treasure_1))
  (probabilistic 0.5 (openprec_move_4_1_3_1_bridge_3_1_4_1))
  (probabilistic 0.5 (possclob_move_4_1_3_1_holding_treasure_2))
  (probabilistic 0.5 (possclob_move_4_1_3_1_holding_treasure_3))
  (probabilistic 0.5 (possclob_move_4_1_3_1_holding_treasure_1))
  (probabilistic 0.5 (openprec_move_4_1_4_2_bridge_4_1_4_2))
  (probabilistic 0.5 (possclob_move_4_1_4_2_holding_treasure_2))
  (probabilistic 0.5 (possclob_move_4_1_4_2_holding_treasure_3))
  (probabilistic 0.5 (possclob_move_4_1_4_2_holding_treasure_1))
  (probabilistic 0.5 (openprec_move_4_2_4_1_bridge_4_1_4_2))
  (probabilistic 0.5 (openprec_move_4_4_3_4_bridge_3_4_4_4))
  (probabilistic 0.5 (openprec_move_4_4_5_4_bridge_4_4_5_4))
  (probabilistic 0.5 (possclob_move_4_4_5_4_holding_treasure_2))
  (probabilistic 0.5 (possclob_move_4_4_5_4_holding_treasure_3))
  (probabilistic 0.5 (possclob_move_4_4_5_4_holding_treasure_1))
  (probabilistic 0.5 (openprec_move_4_4_4_5_bridge_4_4_4_5))
  (probabilistic 0.5 (possclob_move_4_4_4_5_holding_treasure_2))
  (probabilistic 0.5 (possclob_move_4_4_4_5_holding_treasure_3))
  (probabilistic 0.5 (possclob_move_4_4_4_5_holding_treasure_1))
  (probabilistic 0.5 (openprec_move_4_5_4_4_bridge_4_4_4_5))
  (probabilistic 0.5 (openprec_move_4_6_5_6_bridge_4_6_5_6))
  (probabilistic 0.5 (openprec_move_4_7_5_7_bridge_4_7_5_7))
  (probabilistic 0.5 (possclob_move_4_7_5_7_holding_treasure_2))
  (probabilistic 0.5 (possclob_move_4_7_5_7_holding_treasure_3))
  (probabilistic 0.5 (possclob_move_4_7_5_7_holding_treasure_1))
  (probabilistic 0.5 (openprec_move_5_1_5_2_bridge_5_1_5_2))
  (probabilistic 0.5 (possclob_move_5_1_5_2_holding_treasure_2))
  (probabilistic 0.5 (possclob_move_5_1_5_2_holding_treasure_3))
  (probabilistic 0.5 (possclob_move_5_1_5_2_holding_treasure_1))
  (probabilistic 0.5 (openprec_move_5_2_5_1_bridge_5_1_5_2))
  (probabilistic 0.5 (possclob_move_5_2_5_1_holding_treasure_2))
  (probabilistic 0.5 (possclob_move_5_2_5_1_holding_treasure_3))
  (probabilistic 0.5 (possclob_move_5_2_5_1_holding_treasure_1))
  (probabilistic 0.5 (openprec_move_5_3_6_3_bridge_5_3_6_3))
  (probabilistic 0.5 (possclob_move_5_3_6_3_holding_treasure_2))
  (probabilistic 0.5 (possclob_move_5_3_6_3_holding_treasure_3))
  (probabilistic 0.5 (possclob_move_5_3_6_3_holding_treasure_1))
  (probabilistic 0.5 (openprec_move_5_4_4_4_bridge_4_4_5_4))
  (probabilistic 0.5 (openprec_move_5_4_6_4_bridge_5_4_6_4))
  (probabilistic 0.5 (openprec_move_5_4_5_5_bridge_5_4_5_5))
  (probabilistic 0.5 (openprec_move_5_5_5_4_bridge_5_4_5_5))
  (probabilistic 0.5 (possclob_move_5_5_5_4_holding_treasure_2))
  (probabilistic 0.5 (possclob_move_5_5_5_4_holding_treasure_3))
  (probabilistic 0.5 (possclob_move_5_5_5_4_holding_treasure_1))
  (probabilistic 0.5 (openprec_move_5_6_4_6_bridge_4_6_5_6))
  (probabilistic 0.5 (openprec_move_5_7_4_7_bridge_4_7_5_7))
  (probabilistic 0.5 (openprec_move_5_7_6_7_bridge_5_7_6_7))
  (probabilistic 0.5 (openprec_move_6_0_6_1_bridge_6_0_6_1))
  (probabilistic 0.5 (openprec_move_6_1_6_0_bridge_6_0_6_1))
  (probabilistic 0.5 (openprec_move_6_3_5_3_bridge_5_3_6_3))
  (probabilistic 0.5 (possclob_move_6_3_5_3_holding_treasure_2))
  (probabilistic 0.5 (possclob_move_6_3_5_3_holding_treasure_3))
  (probabilistic 0.5 (possclob_move_6_3_5_3_holding_treasure_1))
  (probabilistic 0.5 (openprec_move_6_3_6_4_bridge_6_3_6_4))
  (probabilistic 0.5 (possclob_move_6_3_6_4_holding_treasure_2))
  (probabilistic 0.5 (possclob_move_6_3_6_4_holding_treasure_3))
  (probabilistic 0.5 (possclob_move_6_3_6_4_holding_treasure_1))
  (probabilistic 0.5 (openprec_move_6_4_5_4_bridge_5_4_6_4))
  (probabilistic 0.5 (possclob_move_6_4_5_4_holding_treasure_2))
  (probabilistic 0.5 (possclob_move_6_4_5_4_holding_treasure_3))
  (probabilistic 0.5 (possclob_move_6_4_5_4_holding_treasure_1))
  (probabilistic 0.5 (openprec_move_6_4_6_3_bridge_6_3_6_4))
  (probabilistic 0.5 (possclob_move_6_4_6_3_holding_treasure_2))
  (probabilistic 0.5 (possclob_move_6_4_6_3_holding_treasure_3))
  (probabilistic 0.5 (possclob_move_6_4_6_3_holding_treasure_1))
  (probabilistic 0.5 (openprec_move_6_7_5_7_bridge_5_7_6_7))
  (probabilistic 0.5 (possclob_move_6_7_5_7_holding_treasure_2))
  (probabilistic 0.5 (possclob_move_6_7_5_7_holding_treasure_3))
  (probabilistic 0.5 (possclob_move_6_7_5_7_holding_treasure_1))
  (probabilistic 0.5 (openprec_move_7_6_7_7_bridge_7_6_7_7))
  (probabilistic 0.5 (possclob_move_7_6_7_7_holding_treasure_2))
  (probabilistic 0.5 (possclob_move_7_6_7_7_holding_treasure_3))
  (probabilistic 0.5 (possclob_move_7_6_7_7_holding_treasure_1))
  (probabilistic 0.5 (openprec_move_7_7_7_6_bridge_7_6_7_7))
  (probabilistic 0.5 (possclob_move_7_7_7_6_holding_treasure_2))
  (probabilistic 0.5 (possclob_move_7_7_7_6_holding_treasure_3))
  (probabilistic 0.5 (possclob_move_7_7_7_6_holding_treasure_1))
  (probabilistic 0.5 (unlistedeffect_pickup_treasure1_holding_treasure_2))
  (probabilistic 0.5 (unlistedeffect_pickup_treasure1_holding_treasure_3))
  (probabilistic 0.5 (unlistedeffect_pickup_treasure2_holding_treasure_1))
 )
 (:goal (and (done)))
)