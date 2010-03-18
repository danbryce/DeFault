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
  (probabilistic 0.5 (possclob_move_toward_3_0_2_0_found))
  (probabilistic 0.5 (possclob_move_toward_3_0_3_1_found))
  (probabilistic 0.5 (possclob_move_toward_3_1_2_1_found))
  (probabilistic 0.5 (possclob_move_toward_3_1_3_0_found))
  (probabilistic 0.5 (possclob_move_toward_3_1_3_2_found))
  (probabilistic 0.5 (possclob_move_toward_3_2_2_2_found))
  (probabilistic 0.5 (possclob_move_toward_3_2_3_1_found))
  (probabilistic 0.5 (possclob_move_toward_3_2_3_3_found))
  (probabilistic 0.5 (possclob_move_toward_3_3_2_3_found))
  (probabilistic 0.5 (possclob_move_toward_3_3_3_2_found))
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
  (probabilistic 0.5 (openprec_arrive_at_3_0_2_0_found))
  (probabilistic 0.5 (openprec_arrive_at_3_0_3_1_found))
  (probabilistic 0.5 (openprec_arrive_at_3_1_2_1_found))
  (probabilistic 0.5 (openprec_arrive_at_3_1_3_0_found))
  (probabilistic 0.5 (openprec_arrive_at_3_1_3_2_found))
  (probabilistic 0.5 (openprec_arrive_at_3_2_2_2_found))
  (probabilistic 0.5 (openprec_arrive_at_3_2_3_1_found))
  (probabilistic 0.5 (openprec_arrive_at_3_2_3_3_found))
  (probabilistic 0.5 (openprec_arrive_at_3_3_2_3_found))
  (probabilistic 0.5 (openprec_arrive_at_3_3_3_2_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_0_2_1_2_1_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_0_2_1_2_2_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_0_2_0_3_1_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_0_2_0_3_2_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_0_3_1_3_1_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_0_3_1_3_2_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_1_0_2_0_1_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_1_0_1_1_1_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_1_1_2_1_1_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_1_1_1_2_1_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_2_0_3_0_1_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_2_0_2_1_1_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_2_2_3_2_1_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_2_2_2_3_1_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_3_2_3_3_1_found))
 )
 (:goal (and (done)))
)