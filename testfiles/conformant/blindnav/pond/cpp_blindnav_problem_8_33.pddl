(define (problem blindnav)
 (:domain BlindNav)
 (:init
  (near_0_0)
  (found)
  (at_0_0)
  (valid)
  (probabilistic 0.5 (possclob_move_toward_0_0_1_0_found))
  (probabilistic 0.5 (possclob_move_toward_0_0_0_1_found))
  (probabilistic 0.5 (possclob_move_toward_0_1_1_1_found))
  (probabilistic 0.5 (possclob_move_toward_0_1_0_0_found))
  (probabilistic 0.5 (possclob_move_toward_0_1_0_2_found))
  (probabilistic 0.5 (possclob_move_toward_0_2_1_2_found))
  (probabilistic 0.5 (possclob_move_toward_0_2_0_1_found))
  (probabilistic 0.5 (possclob_move_toward_0_2_0_3_found))
  (probabilistic 0.5 (possclob_move_toward_0_3_1_3_found))
  (probabilistic 0.5 (possclob_move_toward_0_3_0_2_found))
  (probabilistic 0.5 (possclob_move_toward_0_3_0_4_found))
  (probabilistic 0.5 (possclob_move_toward_0_4_1_4_found))
  (probabilistic 0.5 (possclob_move_toward_0_4_0_3_found))
  (probabilistic 0.5 (possclob_move_toward_0_4_0_5_found))
  (probabilistic 0.5 (possclob_move_toward_0_5_1_5_found))
  (probabilistic 0.5 (possclob_move_toward_0_5_0_4_found))
  (probabilistic 0.5 (possclob_move_toward_0_5_0_6_found))
  (probabilistic 0.5 (possclob_move_toward_0_6_1_6_found))
  (probabilistic 0.5 (possclob_move_toward_0_6_0_5_found))
  (probabilistic 0.5 (possclob_move_toward_0_6_0_7_found))
  (probabilistic 0.5 (possclob_move_toward_0_7_1_7_found))
  (probabilistic 0.5 (possclob_move_toward_0_7_0_6_found))
  (probabilistic 0.5 (possclob_move_toward_1_0_0_0_found))
  (probabilistic 0.5 (possclob_move_toward_1_0_2_0_found))
  (probabilistic 0.5 (possclob_move_toward_1_0_1_1_found))
  (probabilistic 0.5 (possclob_move_toward_1_1_0_1_found))
  (probabilistic 0.5 (possclob_move_toward_1_1_2_1_found))
  (probabilistic 0.5 (possclob_move_toward_1_1_1_0_found))
  (probabilistic 0.5 (possclob_move_toward_1_1_1_2_found))
  (probabilistic 0.5 (possclob_move_toward_1_2_0_2_found))
  (probabilistic 0.5 (possclob_move_toward_1_2_2_2_found))
  (probabilistic 0.5 (possclob_move_toward_1_2_1_1_found))
  (probabilistic 0.5 (possclob_move_toward_1_2_1_3_found))
  (probabilistic 0.5 (possclob_move_toward_1_3_0_3_found))
  (probabilistic 0.5 (possclob_move_toward_1_3_2_3_found))
  (probabilistic 0.5 (possclob_move_toward_1_3_1_2_found))
  (probabilistic 0.5 (possclob_move_toward_1_3_1_4_found))
  (probabilistic 0.5 (possclob_move_toward_1_4_0_4_found))
  (probabilistic 0.5 (possclob_move_toward_1_4_2_4_found))
  (probabilistic 0.5 (possclob_move_toward_1_4_1_3_found))
  (probabilistic 0.5 (possclob_move_toward_1_4_1_5_found))
  (probabilistic 0.5 (possclob_move_toward_1_5_0_5_found))
  (probabilistic 0.5 (possclob_move_toward_1_5_2_5_found))
  (probabilistic 0.5 (possclob_move_toward_1_5_1_4_found))
  (probabilistic 0.5 (possclob_move_toward_1_5_1_6_found))
  (probabilistic 0.5 (possclob_move_toward_1_6_0_6_found))
  (probabilistic 0.5 (possclob_move_toward_1_6_2_6_found))
  (probabilistic 0.5 (possclob_move_toward_1_6_1_5_found))
  (probabilistic 0.5 (possclob_move_toward_1_6_1_7_found))
  (probabilistic 0.5 (possclob_move_toward_1_7_0_7_found))
  (probabilistic 0.5 (possclob_move_toward_1_7_2_7_found))
  (probabilistic 0.5 (possclob_move_toward_1_7_1_6_found))
  (probabilistic 0.5 (possclob_move_toward_2_0_1_0_found))
  (probabilistic 0.5 (possclob_move_toward_2_0_3_0_found))
  (probabilistic 0.5 (possclob_move_toward_2_0_2_1_found))
  (probabilistic 0.5 (possclob_move_toward_2_1_1_1_found))
  (probabilistic 0.5 (possclob_move_toward_2_1_3_1_found))
  (probabilistic 0.5 (possclob_move_toward_2_1_2_0_found))
  (probabilistic 0.5 (possclob_move_toward_2_1_2_2_found))
  (probabilistic 0.5 (possclob_move_toward_2_2_1_2_found))
  (probabilistic 0.5 (possclob_move_toward_2_2_3_2_found))
  (probabilistic 0.5 (possclob_move_toward_2_2_2_1_found))
  (probabilistic 0.5 (possclob_move_toward_2_2_2_3_found))
  (probabilistic 0.5 (possclob_move_toward_2_3_1_3_found))
  (probabilistic 0.5 (possclob_move_toward_2_3_3_3_found))
  (probabilistic 0.5 (possclob_move_toward_2_3_2_2_found))
  (probabilistic 0.5 (possclob_move_toward_2_3_2_4_found))
  (probabilistic 0.5 (possclob_move_toward_2_4_1_4_found))
  (probabilistic 0.5 (possclob_move_toward_2_4_3_4_found))
  (probabilistic 0.5 (possclob_move_toward_2_4_2_3_found))
  (probabilistic 0.5 (possclob_move_toward_2_4_2_5_found))
  (probabilistic 0.5 (possclob_move_toward_2_5_1_5_found))
  (probabilistic 0.5 (possclob_move_toward_2_5_3_5_found))
  (probabilistic 0.5 (possclob_move_toward_2_5_2_4_found))
  (probabilistic 0.5 (possclob_move_toward_2_5_2_6_found))
  (probabilistic 0.5 (possclob_move_toward_2_6_1_6_found))
  (probabilistic 0.5 (possclob_move_toward_2_6_3_6_found))
  (probabilistic 0.5 (possclob_move_toward_2_6_2_5_found))
  (probabilistic 0.5 (possclob_move_toward_2_6_2_7_found))
  (probabilistic 0.5 (possclob_move_toward_2_7_1_7_found))
  (probabilistic 0.5 (possclob_move_toward_2_7_3_7_found))
  (probabilistic 0.5 (possclob_move_toward_2_7_2_6_found))
  (probabilistic 0.5 (possclob_move_toward_3_0_2_0_found))
  (probabilistic 0.5 (possclob_move_toward_3_0_4_0_found))
  (probabilistic 0.5 (possclob_move_toward_3_0_3_1_found))
  (probabilistic 0.5 (possclob_move_toward_3_1_2_1_found))
  (probabilistic 0.5 (possclob_move_toward_3_1_4_1_found))
  (probabilistic 0.5 (possclob_move_toward_3_1_3_0_found))
  (probabilistic 0.5 (possclob_move_toward_3_1_3_2_found))
  (probabilistic 0.5 (possclob_move_toward_3_2_2_2_found))
  (probabilistic 0.5 (possclob_move_toward_3_2_4_2_found))
  (probabilistic 0.5 (possclob_move_toward_3_2_3_1_found))
  (probabilistic 0.5 (possclob_move_toward_3_2_3_3_found))
  (probabilistic 0.5 (possclob_move_toward_3_3_2_3_found))
  (probabilistic 0.5 (possclob_move_toward_3_3_4_3_found))
  (probabilistic 0.5 (possclob_move_toward_3_3_3_2_found))
  (probabilistic 0.5 (possclob_move_toward_3_3_3_4_found))
  (probabilistic 0.5 (possclob_move_toward_3_4_2_4_found))
  (probabilistic 0.5 (possclob_move_toward_3_4_4_4_found))
  (probabilistic 0.5 (possclob_move_toward_3_4_3_3_found))
  (probabilistic 0.5 (possclob_move_toward_3_4_3_5_found))
  (probabilistic 0.5 (possclob_move_toward_3_5_2_5_found))
  (probabilistic 0.5 (possclob_move_toward_3_5_4_5_found))
  (probabilistic 0.5 (possclob_move_toward_3_5_3_4_found))
  (probabilistic 0.5 (possclob_move_toward_3_5_3_6_found))
  (probabilistic 0.5 (possclob_move_toward_3_6_2_6_found))
  (probabilistic 0.5 (possclob_move_toward_3_6_4_6_found))
  (probabilistic 0.5 (possclob_move_toward_3_6_3_5_found))
  (probabilistic 0.5 (possclob_move_toward_3_6_3_7_found))
  (probabilistic 0.5 (possclob_move_toward_3_7_2_7_found))
  (probabilistic 0.5 (possclob_move_toward_3_7_4_7_found))
  (probabilistic 0.5 (possclob_move_toward_3_7_3_6_found))
  (probabilistic 0.5 (possclob_move_toward_4_0_3_0_found))
  (probabilistic 0.5 (possclob_move_toward_4_0_5_0_found))
  (probabilistic 0.5 (possclob_move_toward_4_0_4_1_found))
  (probabilistic 0.5 (possclob_move_toward_4_1_3_1_found))
  (probabilistic 0.5 (possclob_move_toward_4_1_5_1_found))
  (probabilistic 0.5 (possclob_move_toward_4_1_4_0_found))
  (probabilistic 0.5 (possclob_move_toward_4_1_4_2_found))
  (probabilistic 0.5 (possclob_move_toward_4_2_3_2_found))
  (probabilistic 0.5 (possclob_move_toward_4_2_5_2_found))
  (probabilistic 0.5 (possclob_move_toward_4_2_4_1_found))
  (probabilistic 0.5 (possclob_move_toward_4_2_4_3_found))
  (probabilistic 0.5 (possclob_move_toward_4_3_3_3_found))
  (probabilistic 0.5 (possclob_move_toward_4_3_5_3_found))
  (probabilistic 0.5 (possclob_move_toward_4_3_4_2_found))
  (probabilistic 0.5 (possclob_move_toward_4_3_4_4_found))
  (probabilistic 0.5 (possclob_move_toward_4_4_3_4_found))
  (probabilistic 0.5 (possclob_move_toward_4_4_5_4_found))
  (probabilistic 0.5 (possclob_move_toward_4_4_4_3_found))
  (probabilistic 0.5 (possclob_move_toward_4_4_4_5_found))
  (probabilistic 0.5 (possclob_move_toward_4_5_3_5_found))
  (probabilistic 0.5 (possclob_move_toward_4_5_5_5_found))
  (probabilistic 0.5 (possclob_move_toward_4_5_4_4_found))
  (probabilistic 0.5 (possclob_move_toward_4_5_4_6_found))
  (probabilistic 0.5 (possclob_move_toward_4_6_3_6_found))
  (probabilistic 0.5 (possclob_move_toward_4_6_5_6_found))
  (probabilistic 0.5 (possclob_move_toward_4_6_4_5_found))
  (probabilistic 0.5 (possclob_move_toward_4_6_4_7_found))
  (probabilistic 0.5 (possclob_move_toward_4_7_3_7_found))
  (probabilistic 0.5 (possclob_move_toward_4_7_5_7_found))
  (probabilistic 0.5 (possclob_move_toward_4_7_4_6_found))
  (probabilistic 0.5 (possclob_move_toward_5_0_4_0_found))
  (probabilistic 0.5 (possclob_move_toward_5_0_6_0_found))
  (probabilistic 0.5 (possclob_move_toward_5_0_5_1_found))
  (probabilistic 0.5 (possclob_move_toward_5_1_4_1_found))
  (probabilistic 0.5 (possclob_move_toward_5_1_6_1_found))
  (probabilistic 0.5 (possclob_move_toward_5_1_5_0_found))
  (probabilistic 0.5 (possclob_move_toward_5_1_5_2_found))
  (probabilistic 0.5 (possclob_move_toward_5_2_4_2_found))
  (probabilistic 0.5 (possclob_move_toward_5_2_6_2_found))
  (probabilistic 0.5 (possclob_move_toward_5_2_5_1_found))
  (probabilistic 0.5 (possclob_move_toward_5_2_5_3_found))
  (probabilistic 0.5 (possclob_move_toward_5_3_4_3_found))
  (probabilistic 0.5 (possclob_move_toward_5_3_6_3_found))
  (probabilistic 0.5 (possclob_move_toward_5_3_5_2_found))
  (probabilistic 0.5 (possclob_move_toward_5_3_5_4_found))
  (probabilistic 0.5 (possclob_move_toward_5_4_4_4_found))
  (probabilistic 0.5 (possclob_move_toward_5_4_6_4_found))
  (probabilistic 0.5 (possclob_move_toward_5_4_5_3_found))
  (probabilistic 0.5 (possclob_move_toward_5_4_5_5_found))
  (probabilistic 0.5 (possclob_move_toward_5_5_4_5_found))
  (probabilistic 0.5 (possclob_move_toward_5_5_6_5_found))
  (probabilistic 0.5 (possclob_move_toward_5_5_5_4_found))
  (probabilistic 0.5 (possclob_move_toward_5_5_5_6_found))
  (probabilistic 0.5 (possclob_move_toward_5_6_4_6_found))
  (probabilistic 0.5 (possclob_move_toward_5_6_6_6_found))
  (probabilistic 0.5 (possclob_move_toward_5_6_5_5_found))
  (probabilistic 0.5 (possclob_move_toward_5_6_5_7_found))
  (probabilistic 0.5 (possclob_move_toward_5_7_4_7_found))
  (probabilistic 0.5 (possclob_move_toward_5_7_6_7_found))
  (probabilistic 0.5 (possclob_move_toward_5_7_5_6_found))
  (probabilistic 0.5 (possclob_move_toward_6_0_5_0_found))
  (probabilistic 0.5 (possclob_move_toward_6_0_7_0_found))
  (probabilistic 0.5 (possclob_move_toward_6_0_6_1_found))
  (probabilistic 0.5 (possclob_move_toward_6_1_5_1_found))
  (probabilistic 0.5 (possclob_move_toward_6_1_7_1_found))
  (probabilistic 0.5 (possclob_move_toward_6_1_6_0_found))
  (probabilistic 0.5 (possclob_move_toward_6_1_6_2_found))
  (probabilistic 0.5 (possclob_move_toward_6_2_5_2_found))
  (probabilistic 0.5 (possclob_move_toward_6_2_7_2_found))
  (probabilistic 0.5 (possclob_move_toward_6_2_6_1_found))
  (probabilistic 0.5 (possclob_move_toward_6_2_6_3_found))
  (probabilistic 0.5 (possclob_move_toward_6_3_5_3_found))
  (probabilistic 0.5 (possclob_move_toward_6_3_7_3_found))
  (probabilistic 0.5 (possclob_move_toward_6_3_6_2_found))
  (probabilistic 0.5 (possclob_move_toward_6_3_6_4_found))
  (probabilistic 0.5 (possclob_move_toward_6_4_5_4_found))
  (probabilistic 0.5 (possclob_move_toward_6_4_7_4_found))
  (probabilistic 0.5 (possclob_move_toward_6_4_6_3_found))
  (probabilistic 0.5 (possclob_move_toward_6_4_6_5_found))
  (probabilistic 0.5 (possclob_move_toward_6_5_5_5_found))
  (probabilistic 0.5 (possclob_move_toward_6_5_7_5_found))
  (probabilistic 0.5 (possclob_move_toward_6_5_6_4_found))
  (probabilistic 0.5 (possclob_move_toward_6_5_6_6_found))
  (probabilistic 0.5 (possclob_move_toward_6_6_5_6_found))
  (probabilistic 0.5 (possclob_move_toward_6_6_7_6_found))
  (probabilistic 0.5 (possclob_move_toward_6_6_6_5_found))
  (probabilistic 0.5 (possclob_move_toward_6_6_6_7_found))
  (probabilistic 0.5 (possclob_move_toward_6_7_5_7_found))
  (probabilistic 0.5 (possclob_move_toward_6_7_7_7_found))
  (probabilistic 0.5 (possclob_move_toward_6_7_6_6_found))
  (probabilistic 0.5 (possclob_move_toward_7_0_6_0_found))
  (probabilistic 0.5 (possclob_move_toward_7_0_7_1_found))
  (probabilistic 0.5 (possclob_move_toward_7_1_6_1_found))
  (probabilistic 0.5 (possclob_move_toward_7_1_7_0_found))
  (probabilistic 0.5 (possclob_move_toward_7_1_7_2_found))
  (probabilistic 0.5 (possclob_move_toward_7_2_6_2_found))
  (probabilistic 0.5 (possclob_move_toward_7_2_7_1_found))
  (probabilistic 0.5 (possclob_move_toward_7_2_7_3_found))
  (probabilistic 0.5 (possclob_move_toward_7_3_6_3_found))
  (probabilistic 0.5 (possclob_move_toward_7_3_7_2_found))
  (probabilistic 0.5 (possclob_move_toward_7_3_7_4_found))
  (probabilistic 0.5 (possclob_move_toward_7_4_6_4_found))
  (probabilistic 0.5 (possclob_move_toward_7_4_7_3_found))
  (probabilistic 0.5 (possclob_move_toward_7_4_7_5_found))
  (probabilistic 0.5 (possclob_move_toward_7_5_6_5_found))
  (probabilistic 0.5 (possclob_move_toward_7_5_7_4_found))
  (probabilistic 0.5 (possclob_move_toward_7_5_7_6_found))
  (probabilistic 0.5 (possclob_move_toward_7_6_6_6_found))
  (probabilistic 0.5 (possclob_move_toward_7_6_7_5_found))
  (probabilistic 0.5 (possclob_move_toward_7_6_7_7_found))
  (probabilistic 0.5 (possclob_move_toward_7_7_6_7_found))
  (probabilistic 0.5 (possclob_move_toward_7_7_7_6_found))
  (probabilistic 0.5 (openprec_arrive_at_0_0_1_0_found))
  (probabilistic 0.5 (openprec_arrive_at_0_0_0_1_found))
  (probabilistic 0.5 (openprec_arrive_at_0_1_1_1_found))
  (probabilistic 0.5 (openprec_arrive_at_0_1_0_0_found))
  (probabilistic 0.5 (openprec_arrive_at_0_1_0_2_found))
  (probabilistic 0.5 (openprec_arrive_at_0_2_1_2_found))
  (probabilistic 0.5 (openprec_arrive_at_0_2_0_1_found))
  (probabilistic 0.5 (openprec_arrive_at_0_2_0_3_found))
  (probabilistic 0.5 (openprec_arrive_at_0_3_1_3_found))
  (probabilistic 0.5 (openprec_arrive_at_0_3_0_2_found))
  (probabilistic 0.5 (openprec_arrive_at_0_3_0_4_found))
  (probabilistic 0.5 (openprec_arrive_at_0_4_1_4_found))
  (probabilistic 0.5 (openprec_arrive_at_0_4_0_3_found))
  (probabilistic 0.5 (openprec_arrive_at_0_4_0_5_found))
  (probabilistic 0.5 (openprec_arrive_at_0_5_1_5_found))
  (probabilistic 0.5 (openprec_arrive_at_0_5_0_4_found))
  (probabilistic 0.5 (openprec_arrive_at_0_5_0_6_found))
  (probabilistic 0.5 (openprec_arrive_at_0_6_1_6_found))
  (probabilistic 0.5 (openprec_arrive_at_0_6_0_5_found))
  (probabilistic 0.5 (openprec_arrive_at_0_6_0_7_found))
  (probabilistic 0.5 (openprec_arrive_at_0_7_1_7_found))
  (probabilistic 0.5 (openprec_arrive_at_0_7_0_6_found))
  (probabilistic 0.5 (openprec_arrive_at_1_0_0_0_found))
  (probabilistic 0.5 (openprec_arrive_at_1_0_2_0_found))
  (probabilistic 0.5 (openprec_arrive_at_1_0_1_1_found))
  (probabilistic 0.5 (openprec_arrive_at_1_1_0_1_found))
  (probabilistic 0.5 (openprec_arrive_at_1_1_2_1_found))
  (probabilistic 0.5 (openprec_arrive_at_1_1_1_0_found))
  (probabilistic 0.5 (openprec_arrive_at_1_1_1_2_found))
  (probabilistic 0.5 (openprec_arrive_at_1_2_0_2_found))
  (probabilistic 0.5 (openprec_arrive_at_1_2_2_2_found))
  (probabilistic 0.5 (openprec_arrive_at_1_2_1_1_found))
  (probabilistic 0.5 (openprec_arrive_at_1_2_1_3_found))
  (probabilistic 0.5 (openprec_arrive_at_1_3_0_3_found))
  (probabilistic 0.5 (openprec_arrive_at_1_3_2_3_found))
  (probabilistic 0.5 (openprec_arrive_at_1_3_1_2_found))
  (probabilistic 0.5 (openprec_arrive_at_1_3_1_4_found))
  (probabilistic 0.5 (openprec_arrive_at_1_4_0_4_found))
  (probabilistic 0.5 (openprec_arrive_at_1_4_2_4_found))
  (probabilistic 0.5 (openprec_arrive_at_1_4_1_3_found))
  (probabilistic 0.5 (openprec_arrive_at_1_4_1_5_found))
  (probabilistic 0.5 (openprec_arrive_at_1_5_0_5_found))
  (probabilistic 0.5 (openprec_arrive_at_1_5_2_5_found))
  (probabilistic 0.5 (openprec_arrive_at_1_5_1_4_found))
  (probabilistic 0.5 (openprec_arrive_at_1_5_1_6_found))
  (probabilistic 0.5 (openprec_arrive_at_1_6_0_6_found))
  (probabilistic 0.5 (openprec_arrive_at_1_6_2_6_found))
  (probabilistic 0.5 (openprec_arrive_at_1_6_1_5_found))
  (probabilistic 0.5 (openprec_arrive_at_1_6_1_7_found))
  (probabilistic 0.5 (openprec_arrive_at_1_7_0_7_found))
  (probabilistic 0.5 (openprec_arrive_at_1_7_2_7_found))
  (probabilistic 0.5 (openprec_arrive_at_1_7_1_6_found))
  (probabilistic 0.5 (openprec_arrive_at_2_0_1_0_found))
  (probabilistic 0.5 (openprec_arrive_at_2_0_3_0_found))
  (probabilistic 0.5 (openprec_arrive_at_2_0_2_1_found))
  (probabilistic 0.5 (openprec_arrive_at_2_1_1_1_found))
  (probabilistic 0.5 (openprec_arrive_at_2_1_3_1_found))
  (probabilistic 0.5 (openprec_arrive_at_2_1_2_0_found))
  (probabilistic 0.5 (openprec_arrive_at_2_1_2_2_found))
  (probabilistic 0.5 (openprec_arrive_at_2_2_1_2_found))
  (probabilistic 0.5 (openprec_arrive_at_2_2_3_2_found))
  (probabilistic 0.5 (openprec_arrive_at_2_2_2_1_found))
  (probabilistic 0.5 (openprec_arrive_at_2_2_2_3_found))
  (probabilistic 0.5 (openprec_arrive_at_2_3_1_3_found))
  (probabilistic 0.5 (openprec_arrive_at_2_3_3_3_found))
  (probabilistic 0.5 (openprec_arrive_at_2_3_2_2_found))
  (probabilistic 0.5 (openprec_arrive_at_2_3_2_4_found))
  (probabilistic 0.5 (openprec_arrive_at_2_4_1_4_found))
  (probabilistic 0.5 (openprec_arrive_at_2_4_3_4_found))
  (probabilistic 0.5 (openprec_arrive_at_2_4_2_3_found))
  (probabilistic 0.5 (openprec_arrive_at_2_4_2_5_found))
  (probabilistic 0.5 (openprec_arrive_at_2_5_1_5_found))
  (probabilistic 0.5 (openprec_arrive_at_2_5_3_5_found))
  (probabilistic 0.5 (openprec_arrive_at_2_5_2_4_found))
  (probabilistic 0.5 (openprec_arrive_at_2_5_2_6_found))
  (probabilistic 0.5 (openprec_arrive_at_2_6_1_6_found))
  (probabilistic 0.5 (openprec_arrive_at_2_6_3_6_found))
  (probabilistic 0.5 (openprec_arrive_at_2_6_2_5_found))
  (probabilistic 0.5 (openprec_arrive_at_2_6_2_7_found))
  (probabilistic 0.5 (openprec_arrive_at_2_7_1_7_found))
  (probabilistic 0.5 (openprec_arrive_at_2_7_3_7_found))
  (probabilistic 0.5 (openprec_arrive_at_2_7_2_6_found))
  (probabilistic 0.5 (openprec_arrive_at_3_0_2_0_found))
  (probabilistic 0.5 (openprec_arrive_at_3_0_4_0_found))
  (probabilistic 0.5 (openprec_arrive_at_3_0_3_1_found))
  (probabilistic 0.5 (openprec_arrive_at_3_1_2_1_found))
  (probabilistic 0.5 (openprec_arrive_at_3_1_4_1_found))
  (probabilistic 0.5 (openprec_arrive_at_3_1_3_0_found))
  (probabilistic 0.5 (openprec_arrive_at_3_1_3_2_found))
  (probabilistic 0.5 (openprec_arrive_at_3_2_2_2_found))
  (probabilistic 0.5 (openprec_arrive_at_3_2_4_2_found))
  (probabilistic 0.5 (openprec_arrive_at_3_2_3_1_found))
  (probabilistic 0.5 (openprec_arrive_at_3_2_3_3_found))
  (probabilistic 0.5 (openprec_arrive_at_3_3_2_3_found))
  (probabilistic 0.5 (openprec_arrive_at_3_3_4_3_found))
  (probabilistic 0.5 (openprec_arrive_at_3_3_3_2_found))
  (probabilistic 0.5 (openprec_arrive_at_3_3_3_4_found))
  (probabilistic 0.5 (openprec_arrive_at_3_4_2_4_found))
  (probabilistic 0.5 (openprec_arrive_at_3_4_4_4_found))
  (probabilistic 0.5 (openprec_arrive_at_3_4_3_3_found))
  (probabilistic 0.5 (openprec_arrive_at_3_4_3_5_found))
  (probabilistic 0.5 (openprec_arrive_at_3_5_2_5_found))
  (probabilistic 0.5 (openprec_arrive_at_3_5_4_5_found))
  (probabilistic 0.5 (openprec_arrive_at_3_5_3_4_found))
  (probabilistic 0.5 (openprec_arrive_at_3_5_3_6_found))
  (probabilistic 0.5 (openprec_arrive_at_3_6_2_6_found))
  (probabilistic 0.5 (openprec_arrive_at_3_6_4_6_found))
  (probabilistic 0.5 (openprec_arrive_at_3_6_3_5_found))
  (probabilistic 0.5 (openprec_arrive_at_3_6_3_7_found))
  (probabilistic 0.5 (openprec_arrive_at_3_7_2_7_found))
  (probabilistic 0.5 (openprec_arrive_at_3_7_4_7_found))
  (probabilistic 0.5 (openprec_arrive_at_3_7_3_6_found))
  (probabilistic 0.5 (openprec_arrive_at_4_0_3_0_found))
  (probabilistic 0.5 (openprec_arrive_at_4_0_5_0_found))
  (probabilistic 0.5 (openprec_arrive_at_4_0_4_1_found))
  (probabilistic 0.5 (openprec_arrive_at_4_1_3_1_found))
  (probabilistic 0.5 (openprec_arrive_at_4_1_5_1_found))
  (probabilistic 0.5 (openprec_arrive_at_4_1_4_0_found))
  (probabilistic 0.5 (openprec_arrive_at_4_1_4_2_found))
  (probabilistic 0.5 (openprec_arrive_at_4_2_3_2_found))
  (probabilistic 0.5 (openprec_arrive_at_4_2_5_2_found))
  (probabilistic 0.5 (openprec_arrive_at_4_2_4_1_found))
  (probabilistic 0.5 (openprec_arrive_at_4_2_4_3_found))
  (probabilistic 0.5 (openprec_arrive_at_4_3_3_3_found))
  (probabilistic 0.5 (openprec_arrive_at_4_3_5_3_found))
  (probabilistic 0.5 (openprec_arrive_at_4_3_4_2_found))
  (probabilistic 0.5 (openprec_arrive_at_4_3_4_4_found))
  (probabilistic 0.5 (openprec_arrive_at_4_4_3_4_found))
  (probabilistic 0.5 (openprec_arrive_at_4_4_5_4_found))
  (probabilistic 0.5 (openprec_arrive_at_4_4_4_3_found))
  (probabilistic 0.5 (openprec_arrive_at_4_4_4_5_found))
  (probabilistic 0.5 (openprec_arrive_at_4_5_3_5_found))
  (probabilistic 0.5 (openprec_arrive_at_4_5_5_5_found))
  (probabilistic 0.5 (openprec_arrive_at_4_5_4_4_found))
  (probabilistic 0.5 (openprec_arrive_at_4_5_4_6_found))
  (probabilistic 0.5 (openprec_arrive_at_4_6_3_6_found))
  (probabilistic 0.5 (openprec_arrive_at_4_6_5_6_found))
  (probabilistic 0.5 (openprec_arrive_at_4_6_4_5_found))
  (probabilistic 0.5 (openprec_arrive_at_4_6_4_7_found))
  (probabilistic 0.5 (openprec_arrive_at_4_7_3_7_found))
  (probabilistic 0.5 (openprec_arrive_at_4_7_5_7_found))
  (probabilistic 0.5 (openprec_arrive_at_4_7_4_6_found))
  (probabilistic 0.5 (openprec_arrive_at_5_0_4_0_found))
  (probabilistic 0.5 (openprec_arrive_at_5_0_6_0_found))
  (probabilistic 0.5 (openprec_arrive_at_5_0_5_1_found))
  (probabilistic 0.5 (openprec_arrive_at_5_1_4_1_found))
  (probabilistic 0.5 (openprec_arrive_at_5_1_6_1_found))
  (probabilistic 0.5 (openprec_arrive_at_5_1_5_0_found))
  (probabilistic 0.5 (openprec_arrive_at_5_1_5_2_found))
  (probabilistic 0.5 (openprec_arrive_at_5_2_4_2_found))
  (probabilistic 0.5 (openprec_arrive_at_5_2_6_2_found))
  (probabilistic 0.5 (openprec_arrive_at_5_2_5_1_found))
  (probabilistic 0.5 (openprec_arrive_at_5_2_5_3_found))
  (probabilistic 0.5 (openprec_arrive_at_5_3_4_3_found))
  (probabilistic 0.5 (openprec_arrive_at_5_3_6_3_found))
  (probabilistic 0.5 (openprec_arrive_at_5_3_5_2_found))
  (probabilistic 0.5 (openprec_arrive_at_5_3_5_4_found))
  (probabilistic 0.5 (openprec_arrive_at_5_4_4_4_found))
  (probabilistic 0.5 (openprec_arrive_at_5_4_6_4_found))
  (probabilistic 0.5 (openprec_arrive_at_5_4_5_3_found))
  (probabilistic 0.5 (openprec_arrive_at_5_4_5_5_found))
  (probabilistic 0.5 (openprec_arrive_at_5_5_4_5_found))
  (probabilistic 0.5 (openprec_arrive_at_5_5_6_5_found))
  (probabilistic 0.5 (openprec_arrive_at_5_5_5_4_found))
  (probabilistic 0.5 (openprec_arrive_at_5_5_5_6_found))
  (probabilistic 0.5 (openprec_arrive_at_5_6_4_6_found))
  (probabilistic 0.5 (openprec_arrive_at_5_6_6_6_found))
  (probabilistic 0.5 (openprec_arrive_at_5_6_5_5_found))
  (probabilistic 0.5 (openprec_arrive_at_5_6_5_7_found))
  (probabilistic 0.5 (openprec_arrive_at_5_7_4_7_found))
  (probabilistic 0.5 (openprec_arrive_at_5_7_6_7_found))
  (probabilistic 0.5 (openprec_arrive_at_5_7_5_6_found))
  (probabilistic 0.5 (openprec_arrive_at_6_0_5_0_found))
  (probabilistic 0.5 (openprec_arrive_at_6_0_7_0_found))
  (probabilistic 0.5 (openprec_arrive_at_6_0_6_1_found))
  (probabilistic 0.5 (openprec_arrive_at_6_1_5_1_found))
  (probabilistic 0.5 (openprec_arrive_at_6_1_7_1_found))
  (probabilistic 0.5 (openprec_arrive_at_6_1_6_0_found))
  (probabilistic 0.5 (openprec_arrive_at_6_1_6_2_found))
  (probabilistic 0.5 (openprec_arrive_at_6_2_5_2_found))
  (probabilistic 0.5 (openprec_arrive_at_6_2_7_2_found))
  (probabilistic 0.5 (openprec_arrive_at_6_2_6_1_found))
  (probabilistic 0.5 (openprec_arrive_at_6_2_6_3_found))
  (probabilistic 0.5 (openprec_arrive_at_6_3_5_3_found))
  (probabilistic 0.5 (openprec_arrive_at_6_3_7_3_found))
  (probabilistic 0.5 (openprec_arrive_at_6_3_6_2_found))
  (probabilistic 0.5 (openprec_arrive_at_6_3_6_4_found))
  (probabilistic 0.5 (openprec_arrive_at_6_4_5_4_found))
  (probabilistic 0.5 (openprec_arrive_at_6_4_7_4_found))
  (probabilistic 0.5 (openprec_arrive_at_6_4_6_3_found))
  (probabilistic 0.5 (openprec_arrive_at_6_4_6_5_found))
  (probabilistic 0.5 (openprec_arrive_at_6_5_5_5_found))
  (probabilistic 0.5 (openprec_arrive_at_6_5_7_5_found))
  (probabilistic 0.5 (openprec_arrive_at_6_5_6_4_found))
  (probabilistic 0.5 (openprec_arrive_at_6_5_6_6_found))
  (probabilistic 0.5 (openprec_arrive_at_6_6_5_6_found))
  (probabilistic 0.5 (openprec_arrive_at_6_6_7_6_found))
  (probabilistic 0.5 (openprec_arrive_at_6_6_6_5_found))
  (probabilistic 0.5 (openprec_arrive_at_6_6_6_7_found))
  (probabilistic 0.5 (openprec_arrive_at_6_7_5_7_found))
  (probabilistic 0.5 (openprec_arrive_at_6_7_7_7_found))
  (probabilistic 0.5 (openprec_arrive_at_6_7_6_6_found))
  (probabilistic 0.5 (openprec_arrive_at_7_0_6_0_found))
  (probabilistic 0.5 (openprec_arrive_at_7_0_7_1_found))
  (probabilistic 0.5 (openprec_arrive_at_7_1_6_1_found))
  (probabilistic 0.5 (openprec_arrive_at_7_1_7_0_found))
  (probabilistic 0.5 (openprec_arrive_at_7_1_7_2_found))
  (probabilistic 0.5 (openprec_arrive_at_7_2_6_2_found))
  (probabilistic 0.5 (openprec_arrive_at_7_2_7_1_found))
  (probabilistic 0.5 (openprec_arrive_at_7_2_7_3_found))
  (probabilistic 0.5 (openprec_arrive_at_7_3_6_3_found))
  (probabilistic 0.5 (openprec_arrive_at_7_3_7_2_found))
  (probabilistic 0.5 (openprec_arrive_at_7_3_7_4_found))
  (probabilistic 0.5 (openprec_arrive_at_7_4_6_4_found))
  (probabilistic 0.5 (openprec_arrive_at_7_4_7_3_found))
  (probabilistic 0.5 (openprec_arrive_at_7_4_7_5_found))
  (probabilistic 0.5 (openprec_arrive_at_7_5_6_5_found))
  (probabilistic 0.5 (openprec_arrive_at_7_5_7_4_found))
  (probabilistic 0.5 (openprec_arrive_at_7_5_7_6_found))
  (probabilistic 0.5 (openprec_arrive_at_7_6_6_6_found))
  (probabilistic 0.5 (openprec_arrive_at_7_6_7_5_found))
  (probabilistic 0.5 (openprec_arrive_at_7_6_7_7_found))
  (probabilistic 0.5 (openprec_arrive_at_7_7_6_7_found))
  (probabilistic 0.5 (openprec_arrive_at_7_7_7_6_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_0_1_1_1_1_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_0_1_1_1_2_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_0_1_0_2_1_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_0_1_0_2_2_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_0_4_1_4_1_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_0_4_0_5_1_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_1_1_2_1_1_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_1_1_2_1_2_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_1_1_1_2_1_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_1_1_1_2_2_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_1_4_2_4_1_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_1_4_2_4_2_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_1_4_1_5_1_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_1_4_1_5_2_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_1_6_2_6_1_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_1_6_2_6_2_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_1_6_1_7_1_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_1_6_1_7_2_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_2_1_3_1_1_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_2_1_2_2_1_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_2_7_3_7_1_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_2_7_3_7_2_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_3_0_4_0_1_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_3_0_4_0_2_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_3_0_3_1_1_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_3_0_3_1_2_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_3_1_4_1_1_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_3_1_4_1_2_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_3_1_3_2_1_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_3_1_3_2_2_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_3_4_4_4_1_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_3_4_3_5_1_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_3_5_4_5_1_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_3_5_4_5_2_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_3_5_3_6_1_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_3_5_3_6_2_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_3_7_4_7_1_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_4_2_5_2_1_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_4_2_5_2_2_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_4_2_4_3_1_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_4_2_4_3_2_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_4_4_5_4_1_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_4_4_5_4_2_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_4_4_4_5_1_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_4_4_4_5_2_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_4_5_5_5_1_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_4_5_4_6_1_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_4_7_5_7_1_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_5_1_6_1_1_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_5_1_5_2_1_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_5_2_6_2_1_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_5_2_6_2_2_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_5_2_5_3_1_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_5_2_5_3_2_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_5_4_6_4_1_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_5_4_6_4_2_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_5_4_5_5_1_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_5_4_5_5_2_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_5_5_6_5_1_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_5_5_5_6_1_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_5_7_6_7_1_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_5_7_6_7_2_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_6_0_7_0_1_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_6_0_7_0_2_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_6_0_6_1_1_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_6_0_6_1_2_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_6_1_7_1_1_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_6_1_7_1_2_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_6_1_6_2_1_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_6_1_6_2_2_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_6_3_7_3_1_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_6_3_6_4_1_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_6_6_7_6_1_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_6_6_6_7_1_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_7_0_7_1_1_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_7_0_7_1_2_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_7_1_7_2_1_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_7_2_7_3_1_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_7_4_7_5_1_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_7_4_7_5_2_found))
 )
 (:goal (and (done)))
)
