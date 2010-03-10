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
  (probabilistic 0.5 (possclob_move_toward_1_0_0_0_found))
  (probabilistic 0.5 (possclob_move_toward_1_0_1_1_found))
  (probabilistic 0.5 (possclob_move_toward_1_1_0_1_found))
  (probabilistic 0.5 (possclob_move_toward_1_1_1_0_found))
  (probabilistic 0.5 (openprec_arrive_at_0_0_1_0_found))
  (probabilistic 0.5 (openprec_arrive_at_0_0_0_1_found))
  (probabilistic 0.5 (openprec_arrive_at_0_1_1_1_found))
  (probabilistic 0.5 (openprec_arrive_at_0_1_0_0_found))
  (probabilistic 0.5 (openprec_arrive_at_1_0_0_0_found))
  (probabilistic 0.5 (openprec_arrive_at_1_0_1_1_found))
  (probabilistic 0.5 (openprec_arrive_at_1_1_0_1_found))
  (probabilistic 0.5 (openprec_arrive_at_1_1_1_0_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_0_0_1_0_1_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_0_0_1_0_2_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_0_0_0_1_1_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_0_0_0_1_2_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_0_1_1_1_1_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_0_1_1_1_2_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_1_0_1_1_1_found))
  (probabilistic 0.5 (unlistedeffect_observe_low_1_0_1_1_2_found))
 )
 (:goal (and (done)))
)
