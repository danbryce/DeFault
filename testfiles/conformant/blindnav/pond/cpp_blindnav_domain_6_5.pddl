(define (domain BlindNav)
 (:requirements :probabilistic-effects)
 (:predicates (at_4_0) (near_0_4) (near_0_5) (at_3_4) (at_4_2) (near_0_2) (at_3_5) (at_4_1) (near_0_3) (near_3_0) (at_3_2) (at_4_4) (near_0_0) (at_3_3) (at_2_0) (at_4_3) (near_0_1) (near_3_2) (at_3_0) (near_3_1) (at_3_1) (at_4_5) (near_2_1) (at_2_3) (at_5_3) (at_2_4) (at_5_2) (near_1_0) (near_2_0) (near_2_3) (at_2_1) (at_5_5) (near_2_2) (at_2_2) (at_5_4) (near_1_3) (near_1_4) (at_2_5) (at_5_1) (near_1_1) (at_5_0) (near_1_2) (near_1_5) (near_2_4) (near_2_5) (near_3_3) (near_3_4) (near_3_5) (near_5_1) (near_5_2) (near_5_3) (near_5_4) (near_5_5) (near_4_2) (near_4_3) (near_4_4) (near_4_5) (at_0_5) (at_1_0) (at_1_1) (near_4_1) (at_0_3) (near_4_0) (at_0_4) (at_0_1) (at_1_4) (at_0_2) (at_1_5) (near_5_0) (at_1_2) (at_0_0) (at_1_3) (at_bus_stop) (found) (possclob_move_toward_0_0_1_0_found) (possclob_move_toward_0_0_0_1_found) (possclob_move_toward_0_1_1_1_found) (possclob_move_toward_0_1_0_0_found) (possclob_move_toward_0_1_0_2_found) (possclob_move_toward_0_2_1_2_found) (possclob_move_toward_0_2_0_1_found) (possclob_move_toward_0_2_0_3_found) (possclob_move_toward_0_3_1_3_found) (possclob_move_toward_0_3_0_2_found) (possclob_move_toward_0_3_0_4_found) (possclob_move_toward_0_4_1_4_found) (possclob_move_toward_0_4_0_3_found) (possclob_move_toward_0_4_0_5_found) (possclob_move_toward_0_5_1_5_found) (possclob_move_toward_0_5_0_4_found) (possclob_move_toward_1_0_0_0_found) (possclob_move_toward_1_0_2_0_found) (possclob_move_toward_1_0_1_1_found) (possclob_move_toward_1_1_0_1_found) (possclob_move_toward_1_1_2_1_found) (possclob_move_toward_1_1_1_0_found) (possclob_move_toward_1_1_1_2_found) (possclob_move_toward_1_2_0_2_found) (possclob_move_toward_1_2_2_2_found) (possclob_move_toward_1_2_1_1_found) (possclob_move_toward_1_2_1_3_found) (possclob_move_toward_1_3_0_3_found) (possclob_move_toward_1_3_2_3_found) (possclob_move_toward_1_3_1_2_found) (possclob_move_toward_1_3_1_4_found) (possclob_move_toward_1_4_0_4_found) (possclob_move_toward_1_4_2_4_found) (possclob_move_toward_1_4_1_3_found) (possclob_move_toward_1_4_1_5_found) (possclob_move_toward_1_5_0_5_found) (possclob_move_toward_1_5_2_5_found) (possclob_move_toward_1_5_1_4_found) (possclob_move_toward_2_0_1_0_found) (possclob_move_toward_2_0_3_0_found) (possclob_move_toward_2_0_2_1_found) (possclob_move_toward_2_1_1_1_found) (possclob_move_toward_2_1_3_1_found) (possclob_move_toward_2_1_2_0_found) (possclob_move_toward_2_1_2_2_found) (possclob_move_toward_2_2_1_2_found) (possclob_move_toward_2_2_3_2_found) (possclob_move_toward_2_2_2_1_found) (possclob_move_toward_2_2_2_3_found) (possclob_move_toward_2_3_1_3_found) (possclob_move_toward_2_3_3_3_found) (possclob_move_toward_2_3_2_2_found) (possclob_move_toward_2_3_2_4_found) (possclob_move_toward_2_4_1_4_found) (possclob_move_toward_2_4_3_4_found) (possclob_move_toward_2_4_2_3_found) (possclob_move_toward_2_4_2_5_found) (possclob_move_toward_2_5_1_5_found) (possclob_move_toward_2_5_3_5_found) (possclob_move_toward_2_5_2_4_found) (possclob_move_toward_3_0_2_0_found) (possclob_move_toward_3_0_4_0_found) (possclob_move_toward_3_0_3_1_found) (possclob_move_toward_3_1_2_1_found) (possclob_move_toward_3_1_4_1_found) (possclob_move_toward_3_1_3_0_found) (possclob_move_toward_3_1_3_2_found) (possclob_move_toward_3_2_2_2_found) (possclob_move_toward_3_2_4_2_found) (possclob_move_toward_3_2_3_1_found) (possclob_move_toward_3_2_3_3_found) (possclob_move_toward_3_3_2_3_found) (possclob_move_toward_3_3_4_3_found) (possclob_move_toward_3_3_3_2_found) (possclob_move_toward_3_3_3_4_found) (possclob_move_toward_3_4_2_4_found) (possclob_move_toward_3_4_4_4_found) (possclob_move_toward_3_4_3_3_found) (possclob_move_toward_3_4_3_5_found) (possclob_move_toward_3_5_2_5_found) (possclob_move_toward_3_5_4_5_found) (possclob_move_toward_3_5_3_4_found) (possclob_move_toward_4_0_3_0_found) (possclob_move_toward_4_0_5_0_found) (possclob_move_toward_4_0_4_1_found) (possclob_move_toward_4_1_3_1_found) (possclob_move_toward_4_1_5_1_found) (possclob_move_toward_4_1_4_0_found) (possclob_move_toward_4_1_4_2_found) (possclob_move_toward_4_2_3_2_found) (possclob_move_toward_4_2_5_2_found) (possclob_move_toward_4_2_4_1_found) (possclob_move_toward_4_2_4_3_found) (possclob_move_toward_4_3_3_3_found) (possclob_move_toward_4_3_5_3_found) (possclob_move_toward_4_3_4_2_found) (possclob_move_toward_4_3_4_4_found) (possclob_move_toward_4_4_3_4_found) (possclob_move_toward_4_4_5_4_found) (possclob_move_toward_4_4_4_3_found) (possclob_move_toward_4_4_4_5_found) (possclob_move_toward_4_5_3_5_found) (possclob_move_toward_4_5_5_5_found) (possclob_move_toward_4_5_4_4_found) (possclob_move_toward_5_0_4_0_found) (possclob_move_toward_5_0_5_1_found) (possclob_move_toward_5_1_4_1_found) (possclob_move_toward_5_1_5_0_found) (possclob_move_toward_5_1_5_2_found) (possclob_move_toward_5_2_4_2_found) (possclob_move_toward_5_2_5_1_found) (possclob_move_toward_5_2_5_3_found) (possclob_move_toward_5_3_4_3_found) (possclob_move_toward_5_3_5_2_found) (possclob_move_toward_5_3_5_4_found) (possclob_move_toward_5_4_4_4_found) (possclob_move_toward_5_4_5_3_found) (possclob_move_toward_5_4_5_5_found) (possclob_move_toward_5_5_4_5_found) (possclob_move_toward_5_5_5_4_found) (openprec_arrive_at_0_0_1_0_found) (openprec_arrive_at_0_0_0_1_found) (openprec_arrive_at_0_1_1_1_found) (openprec_arrive_at_0_1_0_0_found) (openprec_arrive_at_0_1_0_2_found) (openprec_arrive_at_0_2_1_2_found) (openprec_arrive_at_0_2_0_1_found) (openprec_arrive_at_0_2_0_3_found) (openprec_arrive_at_0_3_1_3_found) (openprec_arrive_at_0_3_0_2_found) (openprec_arrive_at_0_3_0_4_found) (openprec_arrive_at_0_4_1_4_found) (openprec_arrive_at_0_4_0_3_found) (openprec_arrive_at_0_4_0_5_found) (openprec_arrive_at_0_5_1_5_found) (openprec_arrive_at_0_5_0_4_found) (openprec_arrive_at_1_0_0_0_found) (openprec_arrive_at_1_0_2_0_found) (openprec_arrive_at_1_0_1_1_found) (openprec_arrive_at_1_1_0_1_found) (openprec_arrive_at_1_1_2_1_found) (openprec_arrive_at_1_1_1_0_found) (openprec_arrive_at_1_1_1_2_found) (openprec_arrive_at_1_2_0_2_found) (openprec_arrive_at_1_2_2_2_found) (openprec_arrive_at_1_2_1_1_found) (openprec_arrive_at_1_2_1_3_found) (openprec_arrive_at_1_3_0_3_found) (openprec_arrive_at_1_3_2_3_found) (openprec_arrive_at_1_3_1_2_found) (openprec_arrive_at_1_3_1_4_found) (openprec_arrive_at_1_4_0_4_found) (openprec_arrive_at_1_4_2_4_found) (openprec_arrive_at_1_4_1_3_found) (openprec_arrive_at_1_4_1_5_found) (openprec_arrive_at_1_5_0_5_found) (openprec_arrive_at_1_5_2_5_found) (openprec_arrive_at_1_5_1_4_found) (openprec_arrive_at_2_0_1_0_found) (openprec_arrive_at_2_0_3_0_found) (openprec_arrive_at_2_0_2_1_found) (openprec_arrive_at_2_1_1_1_found) (openprec_arrive_at_2_1_3_1_found) (openprec_arrive_at_2_1_2_0_found) (openprec_arrive_at_2_1_2_2_found) (openprec_arrive_at_2_2_1_2_found) (openprec_arrive_at_2_2_3_2_found) (openprec_arrive_at_2_2_2_1_found) (openprec_arrive_at_2_2_2_3_found) (openprec_arrive_at_2_3_1_3_found) (openprec_arrive_at_2_3_3_3_found) (openprec_arrive_at_2_3_2_2_found) (openprec_arrive_at_2_3_2_4_found) (openprec_arrive_at_2_4_1_4_found) (openprec_arrive_at_2_4_3_4_found) (openprec_arrive_at_2_4_2_3_found) (openprec_arrive_at_2_4_2_5_found) (openprec_arrive_at_2_5_1_5_found) (openprec_arrive_at_2_5_3_5_found) (openprec_arrive_at_2_5_2_4_found) (openprec_arrive_at_3_0_2_0_found) (openprec_arrive_at_3_0_4_0_found) (openprec_arrive_at_3_0_3_1_found) (openprec_arrive_at_3_1_2_1_found) (openprec_arrive_at_3_1_4_1_found) (openprec_arrive_at_3_1_3_0_found) (openprec_arrive_at_3_1_3_2_found) (openprec_arrive_at_3_2_2_2_found) (openprec_arrive_at_3_2_4_2_found) (openprec_arrive_at_3_2_3_1_found) (openprec_arrive_at_3_2_3_3_found) (openprec_arrive_at_3_3_2_3_found) (openprec_arrive_at_3_3_4_3_found) (openprec_arrive_at_3_3_3_2_found) (openprec_arrive_at_3_3_3_4_found) (openprec_arrive_at_3_4_2_4_found) (openprec_arrive_at_3_4_4_4_found) (openprec_arrive_at_3_4_3_3_found) (openprec_arrive_at_3_4_3_5_found) (openprec_arrive_at_3_5_2_5_found) (openprec_arrive_at_3_5_4_5_found) (openprec_arrive_at_3_5_3_4_found) (openprec_arrive_at_4_0_3_0_found) (openprec_arrive_at_4_0_5_0_found) (openprec_arrive_at_4_0_4_1_found) (openprec_arrive_at_4_1_3_1_found) (openprec_arrive_at_4_1_5_1_found) (openprec_arrive_at_4_1_4_0_found) (openprec_arrive_at_4_1_4_2_found) (openprec_arrive_at_4_2_3_2_found) (openprec_arrive_at_4_2_5_2_found) (openprec_arrive_at_4_2_4_1_found) (openprec_arrive_at_4_2_4_3_found) (openprec_arrive_at_4_3_3_3_found) (openprec_arrive_at_4_3_5_3_found) (openprec_arrive_at_4_3_4_2_found) (openprec_arrive_at_4_3_4_4_found) (openprec_arrive_at_4_4_3_4_found) (openprec_arrive_at_4_4_5_4_found) (openprec_arrive_at_4_4_4_3_found) (openprec_arrive_at_4_4_4_5_found) (openprec_arrive_at_4_5_3_5_found) (openprec_arrive_at_4_5_5_5_found) (openprec_arrive_at_4_5_4_4_found) (openprec_arrive_at_5_0_4_0_found) (openprec_arrive_at_5_0_5_1_found) (openprec_arrive_at_5_1_4_1_found) (openprec_arrive_at_5_1_5_0_found) (openprec_arrive_at_5_1_5_2_found) (openprec_arrive_at_5_2_4_2_found) (openprec_arrive_at_5_2_5_1_found) (openprec_arrive_at_5_2_5_3_found) (openprec_arrive_at_5_3_4_3_found) (openprec_arrive_at_5_3_5_2_found) (openprec_arrive_at_5_3_5_4_found) (openprec_arrive_at_5_4_4_4_found) (openprec_arrive_at_5_4_5_3_found) (openprec_arrive_at_5_4_5_5_found) (openprec_arrive_at_5_5_4_5_found) (openprec_arrive_at_5_5_5_4_found) (unlistedeffect_observe_low_0_0_1_0_1_found) (unlistedeffect_observe_low_0_0_1_0_2_found) (unlistedeffect_observe_low_0_0_0_1_1_found) (unlistedeffect_observe_low_0_0_0_1_2_found) (unlistedeffect_observe_low_0_2_1_2_1_found) (unlistedeffect_observe_low_0_2_1_2_2_found) (unlistedeffect_observe_low_0_2_0_3_1_found) (unlistedeffect_observe_low_0_2_0_3_2_found) (unlistedeffect_observe_low_1_0_2_0_1_found) (unlistedeffect_observe_low_1_0_1_1_1_found) (unlistedeffect_observe_low_1_1_2_1_1_found) (unlistedeffect_observe_low_1_1_1_2_1_found) (unlistedeffect_observe_low_2_0_3_0_1_found) (unlistedeffect_observe_low_2_0_2_1_1_found) (unlistedeffect_observe_low_2_1_3_1_1_found) (unlistedeffect_observe_low_2_1_3_1_2_found) (unlistedeffect_observe_low_2_1_2_2_1_found) (unlistedeffect_observe_low_2_1_2_2_2_found) (unlistedeffect_observe_low_2_2_3_2_1_found) (unlistedeffect_observe_low_2_2_3_2_2_found) (unlistedeffect_observe_low_2_2_2_3_1_found) (unlistedeffect_observe_low_2_2_2_3_2_found) (unlistedeffect_observe_low_2_3_3_3_1_found) (unlistedeffect_observe_low_2_3_3_3_2_found) (unlistedeffect_observe_low_2_3_2_4_1_found) (unlistedeffect_observe_low_2_3_2_4_2_found) (unlistedeffect_observe_low_2_5_3_5_1_found) (unlistedeffect_observe_low_3_0_4_0_1_found) (unlistedeffect_observe_low_3_0_3_1_1_found) (unlistedeffect_observe_low_4_0_5_0_1_found) (unlistedeffect_observe_low_4_0_5_0_2_found) (unlistedeffect_observe_low_4_0_4_1_1_found) (unlistedeffect_observe_low_4_0_4_1_2_found) (unlistedeffect_observe_low_4_3_5_3_1_found) (unlistedeffect_observe_low_4_3_4_4_1_found) (unlistedeffect_observe_low_4_4_5_4_1_found) (unlistedeffect_observe_low_4_4_5_4_2_found) (unlistedeffect_observe_low_4_4_4_5_1_found) (unlistedeffect_observe_low_4_4_4_5_2_found) (unlistedeffect_observe_low_5_0_5_1_1_found) (unlistedeffect_observe_low_5_3_5_4_1_found) (unlistedeffect_observe_low_5_3_5_4_2_found) (valid) (done))

 (:action move_toward_0_0_1_0
  :effect (and
    (when (and (found) (at_0_0) (valid)) (near_1_0))
    (when (and (found) (at_0_0) (valid)) (not (at_0_0)))
    (when (and (found) (at_0_0) (valid) (possclob_move_toward_0_0_1_0_found)) (not (found)))
    (when (not (and (found) (at_0_0) (valid))) (not (valid)))
  )
 )

 (:action move_toward_0_0_0_1
  :effect (and
    (when (and (found) (at_0_0) (valid)) (near_0_1))
    (when (and (found) (at_0_0) (valid)) (not (at_0_0)))
    (when (and (found) (at_0_0) (valid) (possclob_move_toward_0_0_0_1_found)) (not (found)))
    (when (not (and (found) (at_0_0) (valid))) (not (valid)))
  )
 )

 (:action move_toward_0_1_1_1
  :effect (and
    (when (and (at_0_1) (found) (valid)) (near_1_1))
    (when (and (at_0_1) (found) (valid)) (not (at_0_1)))
    (when (and (at_0_1) (found) (valid) (possclob_move_toward_0_1_1_1_found)) (not (found)))
    (when (not (and (at_0_1) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_0_1_0_0
  :effect (and
    (when (and (at_0_1) (found) (valid)) (near_0_0))
    (when (and (at_0_1) (found) (valid)) (not (at_0_1)))
    (when (and (at_0_1) (found) (valid) (possclob_move_toward_0_1_0_0_found)) (not (found)))
    (when (not (and (at_0_1) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_0_1_0_2
  :effect (and
    (when (and (at_0_1) (found) (valid)) (near_0_2))
    (when (and (at_0_1) (found) (valid)) (not (at_0_1)))
    (when (and (at_0_1) (found) (valid) (possclob_move_toward_0_1_0_2_found)) (not (found)))
    (when (not (and (at_0_1) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_0_2_1_2
  :effect (and
    (when (and (at_0_2) (found) (valid)) (near_1_2))
    (when (and (at_0_2) (found) (valid)) (not (at_0_2)))
    (when (and (at_0_2) (found) (valid) (possclob_move_toward_0_2_1_2_found)) (not (found)))
    (when (not (and (at_0_2) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_0_2_0_1
  :effect (and
    (when (and (at_0_2) (found) (valid)) (near_0_1))
    (when (and (at_0_2) (found) (valid)) (not (at_0_2)))
    (when (and (at_0_2) (found) (valid) (possclob_move_toward_0_2_0_1_found)) (not (found)))
    (when (not (and (at_0_2) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_0_2_0_3
  :effect (and
    (when (and (at_0_2) (found) (valid)) (near_0_3))
    (when (and (at_0_2) (found) (valid)) (not (at_0_2)))
    (when (and (at_0_2) (found) (valid) (possclob_move_toward_0_2_0_3_found)) (not (found)))
    (when (not (and (at_0_2) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_0_3_1_3
  :effect (and
    (when (and (at_0_3) (found) (valid)) (near_1_3))
    (when (and (at_0_3) (found) (valid)) (not (at_0_3)))
    (when (and (at_0_3) (found) (valid) (possclob_move_toward_0_3_1_3_found)) (not (found)))
    (when (not (and (at_0_3) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_0_3_0_2
  :effect (and
    (when (and (at_0_3) (found) (valid)) (near_0_2))
    (when (and (at_0_3) (found) (valid)) (not (at_0_3)))
    (when (and (at_0_3) (found) (valid) (possclob_move_toward_0_3_0_2_found)) (not (found)))
    (when (not (and (at_0_3) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_0_3_0_4
  :effect (and
    (when (and (at_0_3) (found) (valid)) (near_0_4))
    (when (and (at_0_3) (found) (valid)) (not (at_0_3)))
    (when (and (at_0_3) (found) (valid) (possclob_move_toward_0_3_0_4_found)) (not (found)))
    (when (not (and (at_0_3) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_0_4_1_4
  :effect (and
    (when (and (at_0_4) (found) (valid)) (near_1_4))
    (when (and (at_0_4) (found) (valid)) (not (at_0_4)))
    (when (and (at_0_4) (found) (valid) (possclob_move_toward_0_4_1_4_found)) (not (found)))
    (when (not (and (at_0_4) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_0_4_0_3
  :effect (and
    (when (and (at_0_4) (found) (valid)) (near_0_3))
    (when (and (at_0_4) (found) (valid)) (not (at_0_4)))
    (when (and (at_0_4) (found) (valid) (possclob_move_toward_0_4_0_3_found)) (not (found)))
    (when (not (and (at_0_4) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_0_4_0_5
  :effect (and
    (when (and (at_0_4) (found) (valid)) (near_0_5))
    (when (and (at_0_4) (found) (valid)) (not (at_0_4)))
    (when (and (at_0_4) (found) (valid) (possclob_move_toward_0_4_0_5_found)) (not (found)))
    (when (not (and (at_0_4) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_0_5_1_5
  :effect (and
    (when (and (at_0_5) (found) (valid)) (near_1_5))
    (when (and (at_0_5) (found) (valid)) (not (at_0_5)))
    (when (and (at_0_5) (found) (valid) (possclob_move_toward_0_5_1_5_found)) (not (found)))
    (when (not (and (at_0_5) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_0_5_0_4
  :effect (and
    (when (and (at_0_5) (found) (valid)) (near_0_4))
    (when (and (at_0_5) (found) (valid)) (not (at_0_5)))
    (when (and (at_0_5) (found) (valid) (possclob_move_toward_0_5_0_4_found)) (not (found)))
    (when (not (and (at_0_5) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_1_0_0_0
  :effect (and
    (when (and (at_1_0) (found) (valid)) (near_0_0))
    (when (and (at_1_0) (found) (valid)) (not (at_1_0)))
    (when (and (at_1_0) (found) (valid) (possclob_move_toward_1_0_0_0_found)) (not (found)))
    (when (not (and (at_1_0) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_1_0_2_0
  :effect (and
    (when (and (at_1_0) (found) (valid)) (near_2_0))
    (when (and (at_1_0) (found) (valid)) (not (at_1_0)))
    (when (and (at_1_0) (found) (valid) (possclob_move_toward_1_0_2_0_found)) (not (found)))
    (when (not (and (at_1_0) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_1_0_1_1
  :effect (and
    (when (and (at_1_0) (found) (valid)) (near_1_1))
    (when (and (at_1_0) (found) (valid)) (not (at_1_0)))
    (when (and (at_1_0) (found) (valid) (possclob_move_toward_1_0_1_1_found)) (not (found)))
    (when (not (and (at_1_0) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_1_1_0_1
  :effect (and
    (when (and (at_1_1) (found) (valid)) (near_0_1))
    (when (and (at_1_1) (found) (valid)) (not (at_1_1)))
    (when (and (at_1_1) (found) (valid) (possclob_move_toward_1_1_0_1_found)) (not (found)))
    (when (not (and (at_1_1) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_1_1_2_1
  :effect (and
    (when (and (at_1_1) (found) (valid)) (near_2_1))
    (when (and (at_1_1) (found) (valid)) (not (at_1_1)))
    (when (and (at_1_1) (found) (valid) (possclob_move_toward_1_1_2_1_found)) (not (found)))
    (when (not (and (at_1_1) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_1_1_1_0
  :effect (and
    (when (and (at_1_1) (found) (valid)) (near_1_0))
    (when (and (at_1_1) (found) (valid)) (not (at_1_1)))
    (when (and (at_1_1) (found) (valid) (possclob_move_toward_1_1_1_0_found)) (not (found)))
    (when (not (and (at_1_1) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_1_1_1_2
  :effect (and
    (when (and (at_1_1) (found) (valid)) (near_1_2))
    (when (and (at_1_1) (found) (valid)) (not (at_1_1)))
    (when (and (at_1_1) (found) (valid) (possclob_move_toward_1_1_1_2_found)) (not (found)))
    (when (not (and (at_1_1) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_1_2_0_2
  :effect (and
    (when (and (at_1_2) (found) (valid)) (near_0_2))
    (when (and (at_1_2) (found) (valid)) (not (at_1_2)))
    (when (and (at_1_2) (found) (valid) (possclob_move_toward_1_2_0_2_found)) (not (found)))
    (when (not (and (at_1_2) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_1_2_2_2
  :effect (and
    (when (and (at_1_2) (found) (valid)) (near_2_2))
    (when (and (at_1_2) (found) (valid)) (not (at_1_2)))
    (when (and (at_1_2) (found) (valid) (possclob_move_toward_1_2_2_2_found)) (not (found)))
    (when (not (and (at_1_2) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_1_2_1_1
  :effect (and
    (when (and (at_1_2) (found) (valid)) (near_1_1))
    (when (and (at_1_2) (found) (valid)) (not (at_1_2)))
    (when (and (at_1_2) (found) (valid) (possclob_move_toward_1_2_1_1_found)) (not (found)))
    (when (not (and (at_1_2) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_1_2_1_3
  :effect (and
    (when (and (at_1_2) (found) (valid)) (near_1_3))
    (when (and (at_1_2) (found) (valid)) (not (at_1_2)))
    (when (and (at_1_2) (found) (valid) (possclob_move_toward_1_2_1_3_found)) (not (found)))
    (when (not (and (at_1_2) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_1_3_0_3
  :effect (and
    (when (and (at_1_3) (found) (valid)) (near_0_3))
    (when (and (at_1_3) (found) (valid)) (not (at_1_3)))
    (when (and (at_1_3) (found) (valid) (possclob_move_toward_1_3_0_3_found)) (not (found)))
    (when (not (and (at_1_3) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_1_3_2_3
  :effect (and
    (when (and (at_1_3) (found) (valid)) (near_2_3))
    (when (and (at_1_3) (found) (valid)) (not (at_1_3)))
    (when (and (at_1_3) (found) (valid) (possclob_move_toward_1_3_2_3_found)) (not (found)))
    (when (not (and (at_1_3) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_1_3_1_2
  :effect (and
    (when (and (at_1_3) (found) (valid)) (near_1_2))
    (when (and (at_1_3) (found) (valid)) (not (at_1_3)))
    (when (and (at_1_3) (found) (valid) (possclob_move_toward_1_3_1_2_found)) (not (found)))
    (when (not (and (at_1_3) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_1_3_1_4
  :effect (and
    (when (and (at_1_3) (found) (valid)) (near_1_4))
    (when (and (at_1_3) (found) (valid)) (not (at_1_3)))
    (when (and (at_1_3) (found) (valid) (possclob_move_toward_1_3_1_4_found)) (not (found)))
    (when (not (and (at_1_3) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_1_4_0_4
  :effect (and
    (when (and (at_1_4) (found) (valid)) (near_0_4))
    (when (and (at_1_4) (found) (valid)) (not (at_1_4)))
    (when (and (at_1_4) (found) (valid) (possclob_move_toward_1_4_0_4_found)) (not (found)))
    (when (not (and (at_1_4) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_1_4_2_4
  :effect (and
    (when (and (at_1_4) (found) (valid)) (near_2_4))
    (when (and (at_1_4) (found) (valid)) (not (at_1_4)))
    (when (and (at_1_4) (found) (valid) (possclob_move_toward_1_4_2_4_found)) (not (found)))
    (when (not (and (at_1_4) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_1_4_1_3
  :effect (and
    (when (and (at_1_4) (found) (valid)) (near_1_3))
    (when (and (at_1_4) (found) (valid)) (not (at_1_4)))
    (when (and (at_1_4) (found) (valid) (possclob_move_toward_1_4_1_3_found)) (not (found)))
    (when (not (and (at_1_4) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_1_4_1_5
  :effect (and
    (when (and (at_1_4) (found) (valid)) (near_1_5))
    (when (and (at_1_4) (found) (valid)) (not (at_1_4)))
    (when (and (at_1_4) (found) (valid) (possclob_move_toward_1_4_1_5_found)) (not (found)))
    (when (not (and (at_1_4) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_1_5_0_5
  :effect (and
    (when (and (at_1_5) (found) (valid)) (near_0_5))
    (when (and (at_1_5) (found) (valid)) (not (at_1_5)))
    (when (and (at_1_5) (found) (valid) (possclob_move_toward_1_5_0_5_found)) (not (found)))
    (when (not (and (at_1_5) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_1_5_2_5
  :effect (and
    (when (and (at_1_5) (found) (valid)) (near_2_5))
    (when (and (at_1_5) (found) (valid)) (not (at_1_5)))
    (when (and (at_1_5) (found) (valid) (possclob_move_toward_1_5_2_5_found)) (not (found)))
    (when (not (and (at_1_5) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_1_5_1_4
  :effect (and
    (when (and (at_1_5) (found) (valid)) (near_1_4))
    (when (and (at_1_5) (found) (valid)) (not (at_1_5)))
    (when (and (at_1_5) (found) (valid) (possclob_move_toward_1_5_1_4_found)) (not (found)))
    (when (not (and (at_1_5) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_2_0_1_0
  :effect (and
    (when (and (at_2_0) (found) (valid)) (near_1_0))
    (when (and (at_2_0) (found) (valid)) (not (at_2_0)))
    (when (and (at_2_0) (found) (valid) (possclob_move_toward_2_0_1_0_found)) (not (found)))
    (when (not (and (at_2_0) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_2_0_3_0
  :effect (and
    (when (and (at_2_0) (found) (valid)) (near_3_0))
    (when (and (at_2_0) (found) (valid)) (not (at_2_0)))
    (when (and (at_2_0) (found) (valid) (possclob_move_toward_2_0_3_0_found)) (not (found)))
    (when (not (and (at_2_0) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_2_0_2_1
  :effect (and
    (when (and (at_2_0) (found) (valid)) (near_2_1))
    (when (and (at_2_0) (found) (valid)) (not (at_2_0)))
    (when (and (at_2_0) (found) (valid) (possclob_move_toward_2_0_2_1_found)) (not (found)))
    (when (not (and (at_2_0) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_2_1_1_1
  :effect (and
    (when (and (at_2_1) (found) (valid)) (near_1_1))
    (when (and (at_2_1) (found) (valid)) (not (at_2_1)))
    (when (and (at_2_1) (found) (valid) (possclob_move_toward_2_1_1_1_found)) (not (found)))
    (when (not (and (at_2_1) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_2_1_3_1
  :effect (and
    (when (and (at_2_1) (found) (valid)) (near_3_1))
    (when (and (at_2_1) (found) (valid)) (not (at_2_1)))
    (when (and (at_2_1) (found) (valid) (possclob_move_toward_2_1_3_1_found)) (not (found)))
    (when (not (and (at_2_1) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_2_1_2_0
  :effect (and
    (when (and (at_2_1) (found) (valid)) (near_2_0))
    (when (and (at_2_1) (found) (valid)) (not (at_2_1)))
    (when (and (at_2_1) (found) (valid) (possclob_move_toward_2_1_2_0_found)) (not (found)))
    (when (not (and (at_2_1) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_2_1_2_2
  :effect (and
    (when (and (at_2_1) (found) (valid)) (near_2_2))
    (when (and (at_2_1) (found) (valid)) (not (at_2_1)))
    (when (and (at_2_1) (found) (valid) (possclob_move_toward_2_1_2_2_found)) (not (found)))
    (when (not (and (at_2_1) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_2_2_1_2
  :effect (and
    (when (and (at_2_2) (found) (valid)) (near_1_2))
    (when (and (at_2_2) (found) (valid)) (not (at_2_2)))
    (when (and (at_2_2) (found) (valid) (possclob_move_toward_2_2_1_2_found)) (not (found)))
    (when (not (and (at_2_2) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_2_2_3_2
  :effect (and
    (when (and (at_2_2) (found) (valid)) (near_3_2))
    (when (and (at_2_2) (found) (valid)) (not (at_2_2)))
    (when (and (at_2_2) (found) (valid) (possclob_move_toward_2_2_3_2_found)) (not (found)))
    (when (not (and (at_2_2) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_2_2_2_1
  :effect (and
    (when (and (at_2_2) (found) (valid)) (near_2_1))
    (when (and (at_2_2) (found) (valid)) (not (at_2_2)))
    (when (and (at_2_2) (found) (valid) (possclob_move_toward_2_2_2_1_found)) (not (found)))
    (when (not (and (at_2_2) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_2_2_2_3
  :effect (and
    (when (and (at_2_2) (found) (valid)) (near_2_3))
    (when (and (at_2_2) (found) (valid)) (not (at_2_2)))
    (when (and (at_2_2) (found) (valid) (possclob_move_toward_2_2_2_3_found)) (not (found)))
    (when (not (and (at_2_2) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_2_3_1_3
  :effect (and
    (when (and (at_2_3) (found) (valid)) (near_1_3))
    (when (and (at_2_3) (found) (valid)) (not (at_2_3)))
    (when (and (at_2_3) (found) (valid) (possclob_move_toward_2_3_1_3_found)) (not (found)))
    (when (not (and (at_2_3) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_2_3_3_3
  :effect (and
    (when (and (at_2_3) (found) (valid)) (near_3_3))
    (when (and (at_2_3) (found) (valid)) (not (at_2_3)))
    (when (and (at_2_3) (found) (valid) (possclob_move_toward_2_3_3_3_found)) (not (found)))
    (when (not (and (at_2_3) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_2_3_2_2
  :effect (and
    (when (and (at_2_3) (found) (valid)) (near_2_2))
    (when (and (at_2_3) (found) (valid)) (not (at_2_3)))
    (when (and (at_2_3) (found) (valid) (possclob_move_toward_2_3_2_2_found)) (not (found)))
    (when (not (and (at_2_3) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_2_3_2_4
  :effect (and
    (when (and (at_2_3) (found) (valid)) (near_2_4))
    (when (and (at_2_3) (found) (valid)) (not (at_2_3)))
    (when (and (at_2_3) (found) (valid) (possclob_move_toward_2_3_2_4_found)) (not (found)))
    (when (not (and (at_2_3) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_2_4_1_4
  :effect (and
    (when (and (at_2_4) (found) (valid)) (near_1_4))
    (when (and (at_2_4) (found) (valid)) (not (at_2_4)))
    (when (and (at_2_4) (found) (valid) (possclob_move_toward_2_4_1_4_found)) (not (found)))
    (when (not (and (at_2_4) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_2_4_3_4
  :effect (and
    (when (and (at_2_4) (found) (valid)) (near_3_4))
    (when (and (at_2_4) (found) (valid)) (not (at_2_4)))
    (when (and (at_2_4) (found) (valid) (possclob_move_toward_2_4_3_4_found)) (not (found)))
    (when (not (and (at_2_4) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_2_4_2_3
  :effect (and
    (when (and (at_2_4) (found) (valid)) (near_2_3))
    (when (and (at_2_4) (found) (valid)) (not (at_2_4)))
    (when (and (at_2_4) (found) (valid) (possclob_move_toward_2_4_2_3_found)) (not (found)))
    (when (not (and (at_2_4) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_2_4_2_5
  :effect (and
    (when (and (at_2_4) (found) (valid)) (near_2_5))
    (when (and (at_2_4) (found) (valid)) (not (at_2_4)))
    (when (and (at_2_4) (found) (valid) (possclob_move_toward_2_4_2_5_found)) (not (found)))
    (when (not (and (at_2_4) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_2_5_1_5
  :effect (and
    (when (and (at_2_5) (found) (valid)) (near_1_5))
    (when (and (at_2_5) (found) (valid)) (not (at_2_5)))
    (when (and (at_2_5) (found) (valid) (possclob_move_toward_2_5_1_5_found)) (not (found)))
    (when (not (and (at_2_5) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_2_5_3_5
  :effect (and
    (when (and (at_2_5) (found) (valid)) (near_3_5))
    (when (and (at_2_5) (found) (valid)) (not (at_2_5)))
    (when (and (at_2_5) (found) (valid) (possclob_move_toward_2_5_3_5_found)) (not (found)))
    (when (not (and (at_2_5) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_2_5_2_4
  :effect (and
    (when (and (at_2_5) (found) (valid)) (near_2_4))
    (when (and (at_2_5) (found) (valid)) (not (at_2_5)))
    (when (and (at_2_5) (found) (valid) (possclob_move_toward_2_5_2_4_found)) (not (found)))
    (when (not (and (at_2_5) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_3_0_2_0
  :effect (and
    (when (and (at_3_0) (found) (valid)) (near_2_0))
    (when (and (at_3_0) (found) (valid)) (not (at_3_0)))
    (when (and (at_3_0) (found) (valid) (possclob_move_toward_3_0_2_0_found)) (not (found)))
    (when (not (and (at_3_0) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_3_0_4_0
  :effect (and
    (when (and (at_3_0) (found) (valid)) (near_4_0))
    (when (and (at_3_0) (found) (valid)) (not (at_3_0)))
    (when (and (at_3_0) (found) (valid) (possclob_move_toward_3_0_4_0_found)) (not (found)))
    (when (not (and (at_3_0) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_3_0_3_1
  :effect (and
    (when (and (at_3_0) (found) (valid)) (near_3_1))
    (when (and (at_3_0) (found) (valid)) (not (at_3_0)))
    (when (and (at_3_0) (found) (valid) (possclob_move_toward_3_0_3_1_found)) (not (found)))
    (when (not (and (at_3_0) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_3_1_2_1
  :effect (and
    (when (and (at_3_1) (found) (valid)) (near_2_1))
    (when (and (at_3_1) (found) (valid)) (not (at_3_1)))
    (when (and (at_3_1) (found) (valid) (possclob_move_toward_3_1_2_1_found)) (not (found)))
    (when (not (and (at_3_1) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_3_1_4_1
  :effect (and
    (when (and (at_3_1) (found) (valid)) (near_4_1))
    (when (and (at_3_1) (found) (valid)) (not (at_3_1)))
    (when (and (at_3_1) (found) (valid) (possclob_move_toward_3_1_4_1_found)) (not (found)))
    (when (not (and (at_3_1) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_3_1_3_0
  :effect (and
    (when (and (at_3_1) (found) (valid)) (near_3_0))
    (when (and (at_3_1) (found) (valid)) (not (at_3_1)))
    (when (and (at_3_1) (found) (valid) (possclob_move_toward_3_1_3_0_found)) (not (found)))
    (when (not (and (at_3_1) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_3_1_3_2
  :effect (and
    (when (and (at_3_1) (found) (valid)) (near_3_2))
    (when (and (at_3_1) (found) (valid)) (not (at_3_1)))
    (when (and (at_3_1) (found) (valid) (possclob_move_toward_3_1_3_2_found)) (not (found)))
    (when (not (and (at_3_1) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_3_2_2_2
  :effect (and
    (when (and (at_3_2) (found) (valid)) (near_2_2))
    (when (and (at_3_2) (found) (valid)) (not (at_3_2)))
    (when (and (at_3_2) (found) (valid) (possclob_move_toward_3_2_2_2_found)) (not (found)))
    (when (not (and (at_3_2) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_3_2_4_2
  :effect (and
    (when (and (at_3_2) (found) (valid)) (near_4_2))
    (when (and (at_3_2) (found) (valid)) (not (at_3_2)))
    (when (and (at_3_2) (found) (valid) (possclob_move_toward_3_2_4_2_found)) (not (found)))
    (when (not (and (at_3_2) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_3_2_3_1
  :effect (and
    (when (and (at_3_2) (found) (valid)) (near_3_1))
    (when (and (at_3_2) (found) (valid)) (not (at_3_2)))
    (when (and (at_3_2) (found) (valid) (possclob_move_toward_3_2_3_1_found)) (not (found)))
    (when (not (and (at_3_2) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_3_2_3_3
  :effect (and
    (when (and (at_3_2) (found) (valid)) (near_3_3))
    (when (and (at_3_2) (found) (valid)) (not (at_3_2)))
    (when (and (at_3_2) (found) (valid) (possclob_move_toward_3_2_3_3_found)) (not (found)))
    (when (not (and (at_3_2) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_3_3_2_3
  :effect (and
    (when (and (at_3_3) (found) (valid)) (near_2_3))
    (when (and (at_3_3) (found) (valid)) (not (at_3_3)))
    (when (and (at_3_3) (found) (valid) (possclob_move_toward_3_3_2_3_found)) (not (found)))
    (when (not (and (at_3_3) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_3_3_4_3
  :effect (and
    (when (and (at_3_3) (found) (valid)) (near_4_3))
    (when (and (at_3_3) (found) (valid)) (not (at_3_3)))
    (when (and (at_3_3) (found) (valid) (possclob_move_toward_3_3_4_3_found)) (not (found)))
    (when (not (and (at_3_3) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_3_3_3_2
  :effect (and
    (when (and (at_3_3) (found) (valid)) (near_3_2))
    (when (and (at_3_3) (found) (valid)) (not (at_3_3)))
    (when (and (at_3_3) (found) (valid) (possclob_move_toward_3_3_3_2_found)) (not (found)))
    (when (not (and (at_3_3) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_3_3_3_4
  :effect (and
    (when (and (at_3_3) (found) (valid)) (near_3_4))
    (when (and (at_3_3) (found) (valid)) (not (at_3_3)))
    (when (and (at_3_3) (found) (valid) (possclob_move_toward_3_3_3_4_found)) (not (found)))
    (when (not (and (at_3_3) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_3_4_2_4
  :effect (and
    (when (and (at_3_4) (found) (valid)) (near_2_4))
    (when (and (at_3_4) (found) (valid)) (not (at_3_4)))
    (when (and (at_3_4) (found) (valid) (possclob_move_toward_3_4_2_4_found)) (not (found)))
    (when (not (and (at_3_4) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_3_4_4_4
  :effect (and
    (when (and (at_3_4) (found) (valid)) (near_4_4))
    (when (and (at_3_4) (found) (valid)) (not (at_3_4)))
    (when (and (at_3_4) (found) (valid) (possclob_move_toward_3_4_4_4_found)) (not (found)))
    (when (not (and (at_3_4) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_3_4_3_3
  :effect (and
    (when (and (at_3_4) (found) (valid)) (near_3_3))
    (when (and (at_3_4) (found) (valid)) (not (at_3_4)))
    (when (and (at_3_4) (found) (valid) (possclob_move_toward_3_4_3_3_found)) (not (found)))
    (when (not (and (at_3_4) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_3_4_3_5
  :effect (and
    (when (and (at_3_4) (found) (valid)) (near_3_5))
    (when (and (at_3_4) (found) (valid)) (not (at_3_4)))
    (when (and (at_3_4) (found) (valid) (possclob_move_toward_3_4_3_5_found)) (not (found)))
    (when (not (and (at_3_4) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_3_5_2_5
  :effect (and
    (when (and (at_3_5) (found) (valid)) (near_2_5))
    (when (and (at_3_5) (found) (valid)) (not (at_3_5)))
    (when (and (at_3_5) (found) (valid) (possclob_move_toward_3_5_2_5_found)) (not (found)))
    (when (not (and (at_3_5) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_3_5_4_5
  :effect (and
    (when (and (at_3_5) (found) (valid)) (near_4_5))
    (when (and (at_3_5) (found) (valid)) (not (at_3_5)))
    (when (and (at_3_5) (found) (valid) (possclob_move_toward_3_5_4_5_found)) (not (found)))
    (when (not (and (at_3_5) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_3_5_3_4
  :effect (and
    (when (and (at_3_5) (found) (valid)) (near_3_4))
    (when (and (at_3_5) (found) (valid)) (not (at_3_5)))
    (when (and (at_3_5) (found) (valid) (possclob_move_toward_3_5_3_4_found)) (not (found)))
    (when (not (and (at_3_5) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_4_0_3_0
  :effect (and
    (when (and (at_4_0) (found) (valid)) (near_3_0))
    (when (and (at_4_0) (found) (valid)) (not (at_4_0)))
    (when (and (at_4_0) (found) (valid) (possclob_move_toward_4_0_3_0_found)) (not (found)))
    (when (not (and (at_4_0) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_4_0_5_0
  :effect (and
    (when (and (at_4_0) (found) (valid)) (near_5_0))
    (when (and (at_4_0) (found) (valid)) (not (at_4_0)))
    (when (and (at_4_0) (found) (valid) (possclob_move_toward_4_0_5_0_found)) (not (found)))
    (when (not (and (at_4_0) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_4_0_4_1
  :effect (and
    (when (and (at_4_0) (found) (valid)) (near_4_1))
    (when (and (at_4_0) (found) (valid)) (not (at_4_0)))
    (when (and (at_4_0) (found) (valid) (possclob_move_toward_4_0_4_1_found)) (not (found)))
    (when (not (and (at_4_0) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_4_1_3_1
  :effect (and
    (when (and (at_4_1) (found) (valid)) (near_3_1))
    (when (and (at_4_1) (found) (valid)) (not (at_4_1)))
    (when (and (at_4_1) (found) (valid) (possclob_move_toward_4_1_3_1_found)) (not (found)))
    (when (not (and (at_4_1) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_4_1_5_1
  :effect (and
    (when (and (at_4_1) (found) (valid)) (near_5_1))
    (when (and (at_4_1) (found) (valid)) (not (at_4_1)))
    (when (and (at_4_1) (found) (valid) (possclob_move_toward_4_1_5_1_found)) (not (found)))
    (when (not (and (at_4_1) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_4_1_4_0
  :effect (and
    (when (and (at_4_1) (found) (valid)) (near_4_0))
    (when (and (at_4_1) (found) (valid)) (not (at_4_1)))
    (when (and (at_4_1) (found) (valid) (possclob_move_toward_4_1_4_0_found)) (not (found)))
    (when (not (and (at_4_1) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_4_1_4_2
  :effect (and
    (when (and (at_4_1) (found) (valid)) (near_4_2))
    (when (and (at_4_1) (found) (valid)) (not (at_4_1)))
    (when (and (at_4_1) (found) (valid) (possclob_move_toward_4_1_4_2_found)) (not (found)))
    (when (not (and (at_4_1) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_4_2_3_2
  :effect (and
    (when (and (at_4_2) (found) (valid)) (near_3_2))
    (when (and (at_4_2) (found) (valid)) (not (at_4_2)))
    (when (and (at_4_2) (found) (valid) (possclob_move_toward_4_2_3_2_found)) (not (found)))
    (when (not (and (at_4_2) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_4_2_5_2
  :effect (and
    (when (and (at_4_2) (found) (valid)) (near_5_2))
    (when (and (at_4_2) (found) (valid)) (not (at_4_2)))
    (when (and (at_4_2) (found) (valid) (possclob_move_toward_4_2_5_2_found)) (not (found)))
    (when (not (and (at_4_2) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_4_2_4_1
  :effect (and
    (when (and (at_4_2) (found) (valid)) (near_4_1))
    (when (and (at_4_2) (found) (valid)) (not (at_4_2)))
    (when (and (at_4_2) (found) (valid) (possclob_move_toward_4_2_4_1_found)) (not (found)))
    (when (not (and (at_4_2) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_4_2_4_3
  :effect (and
    (when (and (at_4_2) (found) (valid)) (near_4_3))
    (when (and (at_4_2) (found) (valid)) (not (at_4_2)))
    (when (and (at_4_2) (found) (valid) (possclob_move_toward_4_2_4_3_found)) (not (found)))
    (when (not (and (at_4_2) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_4_3_3_3
  :effect (and
    (when (and (at_4_3) (found) (valid)) (near_3_3))
    (when (and (at_4_3) (found) (valid)) (not (at_4_3)))
    (when (and (at_4_3) (found) (valid) (possclob_move_toward_4_3_3_3_found)) (not (found)))
    (when (not (and (at_4_3) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_4_3_5_3
  :effect (and
    (when (and (at_4_3) (found) (valid)) (near_5_3))
    (when (and (at_4_3) (found) (valid)) (not (at_4_3)))
    (when (and (at_4_3) (found) (valid) (possclob_move_toward_4_3_5_3_found)) (not (found)))
    (when (not (and (at_4_3) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_4_3_4_2
  :effect (and
    (when (and (at_4_3) (found) (valid)) (near_4_2))
    (when (and (at_4_3) (found) (valid)) (not (at_4_3)))
    (when (and (at_4_3) (found) (valid) (possclob_move_toward_4_3_4_2_found)) (not (found)))
    (when (not (and (at_4_3) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_4_3_4_4
  :effect (and
    (when (and (at_4_3) (found) (valid)) (near_4_4))
    (when (and (at_4_3) (found) (valid)) (not (at_4_3)))
    (when (and (at_4_3) (found) (valid) (possclob_move_toward_4_3_4_4_found)) (not (found)))
    (when (not (and (at_4_3) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_4_4_3_4
  :effect (and
    (when (and (at_4_4) (found) (valid)) (near_3_4))
    (when (and (at_4_4) (found) (valid)) (not (at_4_4)))
    (when (and (at_4_4) (found) (valid) (possclob_move_toward_4_4_3_4_found)) (not (found)))
    (when (not (and (at_4_4) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_4_4_5_4
  :effect (and
    (when (and (at_4_4) (found) (valid)) (near_5_4))
    (when (and (at_4_4) (found) (valid)) (not (at_4_4)))
    (when (and (at_4_4) (found) (valid) (possclob_move_toward_4_4_5_4_found)) (not (found)))
    (when (not (and (at_4_4) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_4_4_4_3
  :effect (and
    (when (and (at_4_4) (found) (valid)) (near_4_3))
    (when (and (at_4_4) (found) (valid)) (not (at_4_4)))
    (when (and (at_4_4) (found) (valid) (possclob_move_toward_4_4_4_3_found)) (not (found)))
    (when (not (and (at_4_4) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_4_4_4_5
  :effect (and
    (when (and (at_4_4) (found) (valid)) (near_4_5))
    (when (and (at_4_4) (found) (valid)) (not (at_4_4)))
    (when (and (at_4_4) (found) (valid) (possclob_move_toward_4_4_4_5_found)) (not (found)))
    (when (not (and (at_4_4) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_4_5_3_5
  :effect (and
    (when (and (at_4_5) (found) (valid)) (near_3_5))
    (when (and (at_4_5) (found) (valid)) (not (at_4_5)))
    (when (and (at_4_5) (found) (valid) (possclob_move_toward_4_5_3_5_found)) (not (found)))
    (when (not (and (at_4_5) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_4_5_5_5
  :effect (and
    (when (and (at_4_5) (found) (valid)) (near_5_5))
    (when (and (at_4_5) (found) (valid)) (not (at_4_5)))
    (when (and (at_4_5) (found) (valid) (possclob_move_toward_4_5_5_5_found)) (not (found)))
    (when (not (and (at_4_5) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_4_5_4_4
  :effect (and
    (when (and (at_4_5) (found) (valid)) (near_4_4))
    (when (and (at_4_5) (found) (valid)) (not (at_4_5)))
    (when (and (at_4_5) (found) (valid) (possclob_move_toward_4_5_4_4_found)) (not (found)))
    (when (not (and (at_4_5) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_5_0_4_0
  :effect (and
    (when (and (at_5_0) (found) (valid)) (near_4_0))
    (when (and (at_5_0) (found) (valid)) (not (at_5_0)))
    (when (and (at_5_0) (found) (valid) (possclob_move_toward_5_0_4_0_found)) (not (found)))
    (when (not (and (at_5_0) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_5_0_5_1
  :effect (and
    (when (and (at_5_0) (found) (valid)) (near_5_1))
    (when (and (at_5_0) (found) (valid)) (not (at_5_0)))
    (when (and (at_5_0) (found) (valid) (possclob_move_toward_5_0_5_1_found)) (not (found)))
    (when (not (and (at_5_0) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_5_1_4_1
  :effect (and
    (when (and (at_5_1) (found) (valid)) (near_4_1))
    (when (and (at_5_1) (found) (valid)) (not (at_5_1)))
    (when (and (at_5_1) (found) (valid) (possclob_move_toward_5_1_4_1_found)) (not (found)))
    (when (not (and (at_5_1) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_5_1_5_0
  :effect (and
    (when (and (at_5_1) (found) (valid)) (near_5_0))
    (when (and (at_5_1) (found) (valid)) (not (at_5_1)))
    (when (and (at_5_1) (found) (valid) (possclob_move_toward_5_1_5_0_found)) (not (found)))
    (when (not (and (at_5_1) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_5_1_5_2
  :effect (and
    (when (and (at_5_1) (found) (valid)) (near_5_2))
    (when (and (at_5_1) (found) (valid)) (not (at_5_1)))
    (when (and (at_5_1) (found) (valid) (possclob_move_toward_5_1_5_2_found)) (not (found)))
    (when (not (and (at_5_1) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_5_2_4_2
  :effect (and
    (when (and (at_5_2) (found) (valid)) (near_4_2))
    (when (and (at_5_2) (found) (valid)) (not (at_5_2)))
    (when (and (at_5_2) (found) (valid) (possclob_move_toward_5_2_4_2_found)) (not (found)))
    (when (not (and (at_5_2) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_5_2_5_1
  :effect (and
    (when (and (at_5_2) (found) (valid)) (near_5_1))
    (when (and (at_5_2) (found) (valid)) (not (at_5_2)))
    (when (and (at_5_2) (found) (valid) (possclob_move_toward_5_2_5_1_found)) (not (found)))
    (when (not (and (at_5_2) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_5_2_5_3
  :effect (and
    (when (and (at_5_2) (found) (valid)) (near_5_3))
    (when (and (at_5_2) (found) (valid)) (not (at_5_2)))
    (when (and (at_5_2) (found) (valid) (possclob_move_toward_5_2_5_3_found)) (not (found)))
    (when (not (and (at_5_2) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_5_3_4_3
  :effect (and
    (when (and (at_5_3) (found) (valid)) (near_4_3))
    (when (and (at_5_3) (found) (valid)) (not (at_5_3)))
    (when (and (at_5_3) (found) (valid) (possclob_move_toward_5_3_4_3_found)) (not (found)))
    (when (not (and (at_5_3) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_5_3_5_2
  :effect (and
    (when (and (at_5_3) (found) (valid)) (near_5_2))
    (when (and (at_5_3) (found) (valid)) (not (at_5_3)))
    (when (and (at_5_3) (found) (valid) (possclob_move_toward_5_3_5_2_found)) (not (found)))
    (when (not (and (at_5_3) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_5_3_5_4
  :effect (and
    (when (and (at_5_3) (found) (valid)) (near_5_4))
    (when (and (at_5_3) (found) (valid)) (not (at_5_3)))
    (when (and (at_5_3) (found) (valid) (possclob_move_toward_5_3_5_4_found)) (not (found)))
    (when (not (and (at_5_3) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_5_4_4_4
  :effect (and
    (when (and (at_5_4) (found) (valid)) (near_4_4))
    (when (and (at_5_4) (found) (valid)) (not (at_5_4)))
    (when (and (at_5_4) (found) (valid) (possclob_move_toward_5_4_4_4_found)) (not (found)))
    (when (not (and (at_5_4) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_5_4_5_3
  :effect (and
    (when (and (at_5_4) (found) (valid)) (near_5_3))
    (when (and (at_5_4) (found) (valid)) (not (at_5_4)))
    (when (and (at_5_4) (found) (valid) (possclob_move_toward_5_4_5_3_found)) (not (found)))
    (when (not (and (at_5_4) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_5_4_5_5
  :effect (and
    (when (and (at_5_4) (found) (valid)) (near_5_5))
    (when (and (at_5_4) (found) (valid)) (not (at_5_4)))
    (when (and (at_5_4) (found) (valid) (possclob_move_toward_5_4_5_5_found)) (not (found)))
    (when (not (and (at_5_4) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_5_5_4_5
  :effect (and
    (when (and (at_5_5) (found) (valid)) (near_4_5))
    (when (and (at_5_5) (found) (valid)) (not (at_5_5)))
    (when (and (at_5_5) (found) (valid) (possclob_move_toward_5_5_4_5_found)) (not (found)))
    (when (not (and (at_5_5) (found) (valid))) (not (valid)))
  )
 )

 (:action move_toward_5_5_5_4
  :effect (and
    (when (and (at_5_5) (found) (valid)) (near_5_4))
    (when (and (at_5_5) (found) (valid)) (not (at_5_5)))
    (when (and (at_5_5) (found) (valid) (possclob_move_toward_5_5_5_4_found)) (not (found)))
    (when (not (and (at_5_5) (found) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_0_0_1_0
  :effect (and
    (when (and (near_0_0) (near_1_0) (or (found) (not (openprec_arrive_at_0_0_1_0_found))) (valid)) (at_1_0))
    (when (and (near_0_0) (near_1_0) (or (found) (not (openprec_arrive_at_0_0_1_0_found))) (valid)) (not (near_0_0)))
    (when (not (and (near_0_0) (near_1_0) (or (found) (not (openprec_arrive_at_0_0_1_0_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_0_0_0_1
  :effect (and
    (when (and (near_0_0) (near_0_1) (or (found) (not (openprec_arrive_at_0_0_0_1_found))) (valid)) (at_0_1))
    (when (and (near_0_0) (near_0_1) (or (found) (not (openprec_arrive_at_0_0_0_1_found))) (valid)) (not (near_0_0)))
    (when (not (and (near_0_0) (near_0_1) (or (found) (not (openprec_arrive_at_0_0_0_1_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_0_1_1_1
  :effect (and
    (when (and (near_0_1) (near_1_1) (or (found) (not (openprec_arrive_at_0_1_1_1_found))) (valid)) (at_1_1))
    (when (and (near_0_1) (near_1_1) (or (found) (not (openprec_arrive_at_0_1_1_1_found))) (valid)) (not (near_0_1)))
    (when (not (and (near_0_1) (near_1_1) (or (found) (not (openprec_arrive_at_0_1_1_1_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_0_1_0_0
  :effect (and
    (when (and (near_0_0) (near_0_1) (or (found) (not (openprec_arrive_at_0_1_0_0_found))) (valid)) (at_0_0))
    (when (and (near_0_0) (near_0_1) (or (found) (not (openprec_arrive_at_0_1_0_0_found))) (valid)) (not (near_0_1)))
    (when (not (and (near_0_0) (near_0_1) (or (found) (not (openprec_arrive_at_0_1_0_0_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_0_1_0_2
  :effect (and
    (when (and (near_0_2) (near_0_1) (or (found) (not (openprec_arrive_at_0_1_0_2_found))) (valid)) (at_0_2))
    (when (and (near_0_2) (near_0_1) (or (found) (not (openprec_arrive_at_0_1_0_2_found))) (valid)) (not (near_0_1)))
    (when (not (and (near_0_2) (near_0_1) (or (found) (not (openprec_arrive_at_0_1_0_2_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_0_2_1_2
  :effect (and
    (when (and (near_0_2) (near_1_2) (or (found) (not (openprec_arrive_at_0_2_1_2_found))) (valid)) (at_1_2))
    (when (and (near_0_2) (near_1_2) (or (found) (not (openprec_arrive_at_0_2_1_2_found))) (valid)) (not (near_0_2)))
    (when (not (and (near_0_2) (near_1_2) (or (found) (not (openprec_arrive_at_0_2_1_2_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_0_2_0_1
  :effect (and
    (when (and (near_0_2) (near_0_1) (or (found) (not (openprec_arrive_at_0_2_0_1_found))) (valid)) (at_0_1))
    (when (and (near_0_2) (near_0_1) (or (found) (not (openprec_arrive_at_0_2_0_1_found))) (valid)) (not (near_0_2)))
    (when (not (and (near_0_2) (near_0_1) (or (found) (not (openprec_arrive_at_0_2_0_1_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_0_2_0_3
  :effect (and
    (when (and (near_0_2) (near_0_3) (or (found) (not (openprec_arrive_at_0_2_0_3_found))) (valid)) (at_0_3))
    (when (and (near_0_2) (near_0_3) (or (found) (not (openprec_arrive_at_0_2_0_3_found))) (valid)) (not (near_0_2)))
    (when (not (and (near_0_2) (near_0_3) (or (found) (not (openprec_arrive_at_0_2_0_3_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_0_3_1_3
  :effect (and
    (when (and (near_0_3) (near_1_3) (or (found) (not (openprec_arrive_at_0_3_1_3_found))) (valid)) (at_1_3))
    (when (and (near_0_3) (near_1_3) (or (found) (not (openprec_arrive_at_0_3_1_3_found))) (valid)) (not (near_0_3)))
    (when (not (and (near_0_3) (near_1_3) (or (found) (not (openprec_arrive_at_0_3_1_3_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_0_3_0_2
  :effect (and
    (when (and (near_0_2) (near_0_3) (or (found) (not (openprec_arrive_at_0_3_0_2_found))) (valid)) (at_0_2))
    (when (and (near_0_2) (near_0_3) (or (found) (not (openprec_arrive_at_0_3_0_2_found))) (valid)) (not (near_0_3)))
    (when (not (and (near_0_2) (near_0_3) (or (found) (not (openprec_arrive_at_0_3_0_2_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_0_3_0_4
  :effect (and
    (when (and (near_0_4) (near_0_3) (or (found) (not (openprec_arrive_at_0_3_0_4_found))) (valid)) (at_0_4))
    (when (and (near_0_4) (near_0_3) (or (found) (not (openprec_arrive_at_0_3_0_4_found))) (valid)) (not (near_0_3)))
    (when (not (and (near_0_4) (near_0_3) (or (found) (not (openprec_arrive_at_0_3_0_4_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_0_4_1_4
  :effect (and
    (when (and (near_0_4) (near_1_4) (or (found) (not (openprec_arrive_at_0_4_1_4_found))) (valid)) (at_1_4))
    (when (and (near_0_4) (near_1_4) (or (found) (not (openprec_arrive_at_0_4_1_4_found))) (valid)) (not (near_0_4)))
    (when (not (and (near_0_4) (near_1_4) (or (found) (not (openprec_arrive_at_0_4_1_4_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_0_4_0_3
  :effect (and
    (when (and (near_0_4) (near_0_3) (or (found) (not (openprec_arrive_at_0_4_0_3_found))) (valid)) (at_0_3))
    (when (and (near_0_4) (near_0_3) (or (found) (not (openprec_arrive_at_0_4_0_3_found))) (valid)) (not (near_0_4)))
    (when (not (and (near_0_4) (near_0_3) (or (found) (not (openprec_arrive_at_0_4_0_3_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_0_4_0_5
  :effect (and
    (when (and (near_0_4) (near_0_5) (or (found) (not (openprec_arrive_at_0_4_0_5_found))) (valid)) (at_0_5))
    (when (and (near_0_4) (near_0_5) (or (found) (not (openprec_arrive_at_0_4_0_5_found))) (valid)) (not (near_0_4)))
    (when (not (and (near_0_4) (near_0_5) (or (found) (not (openprec_arrive_at_0_4_0_5_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_0_5_1_5
  :effect (and
    (when (and (near_0_5) (near_1_5) (or (found) (not (openprec_arrive_at_0_5_1_5_found))) (valid)) (at_1_5))
    (when (and (near_0_5) (near_1_5) (or (found) (not (openprec_arrive_at_0_5_1_5_found))) (valid)) (not (near_0_5)))
    (when (not (and (near_0_5) (near_1_5) (or (found) (not (openprec_arrive_at_0_5_1_5_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_0_5_0_4
  :effect (and
    (when (and (near_0_4) (near_0_5) (or (found) (not (openprec_arrive_at_0_5_0_4_found))) (valid)) (at_0_4))
    (when (and (near_0_4) (near_0_5) (or (found) (not (openprec_arrive_at_0_5_0_4_found))) (valid)) (not (near_0_5)))
    (when (not (and (near_0_4) (near_0_5) (or (found) (not (openprec_arrive_at_0_5_0_4_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_1_0_0_0
  :effect (and
    (when (and (near_0_0) (near_1_0) (or (found) (not (openprec_arrive_at_1_0_0_0_found))) (valid)) (at_0_0))
    (when (and (near_0_0) (near_1_0) (or (found) (not (openprec_arrive_at_1_0_0_0_found))) (valid)) (not (near_1_0)))
    (when (not (and (near_0_0) (near_1_0) (or (found) (not (openprec_arrive_at_1_0_0_0_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_1_0_2_0
  :effect (and
    (when (and (near_1_0) (near_2_0) (or (found) (not (openprec_arrive_at_1_0_2_0_found))) (valid)) (at_2_0))
    (when (and (near_1_0) (near_2_0) (or (found) (not (openprec_arrive_at_1_0_2_0_found))) (valid)) (not (near_1_0)))
    (when (not (and (near_1_0) (near_2_0) (or (found) (not (openprec_arrive_at_1_0_2_0_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_1_0_1_1
  :effect (and
    (when (and (near_1_0) (near_1_1) (or (found) (not (openprec_arrive_at_1_0_1_1_found))) (valid)) (at_1_1))
    (when (and (near_1_0) (near_1_1) (or (found) (not (openprec_arrive_at_1_0_1_1_found))) (valid)) (not (near_1_0)))
    (when (not (and (near_1_0) (near_1_1) (or (found) (not (openprec_arrive_at_1_0_1_1_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_1_1_0_1
  :effect (and
    (when (and (near_0_1) (near_1_1) (or (found) (not (openprec_arrive_at_1_1_0_1_found))) (valid)) (at_0_1))
    (when (and (near_0_1) (near_1_1) (or (found) (not (openprec_arrive_at_1_1_0_1_found))) (valid)) (not (near_1_1)))
    (when (not (and (near_0_1) (near_1_1) (or (found) (not (openprec_arrive_at_1_1_0_1_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_1_1_2_1
  :effect (and
    (when (and (near_2_1) (near_1_1) (or (found) (not (openprec_arrive_at_1_1_2_1_found))) (valid)) (at_2_1))
    (when (and (near_2_1) (near_1_1) (or (found) (not (openprec_arrive_at_1_1_2_1_found))) (valid)) (not (near_1_1)))
    (when (not (and (near_2_1) (near_1_1) (or (found) (not (openprec_arrive_at_1_1_2_1_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_1_1_1_0
  :effect (and
    (when (and (near_1_0) (near_1_1) (or (found) (not (openprec_arrive_at_1_1_1_0_found))) (valid)) (at_1_0))
    (when (and (near_1_0) (near_1_1) (or (found) (not (openprec_arrive_at_1_1_1_0_found))) (valid)) (not (near_1_1)))
    (when (not (and (near_1_0) (near_1_1) (or (found) (not (openprec_arrive_at_1_1_1_0_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_1_1_1_2
  :effect (and
    (when (and (near_1_1) (near_1_2) (or (found) (not (openprec_arrive_at_1_1_1_2_found))) (valid)) (at_1_2))
    (when (and (near_1_1) (near_1_2) (or (found) (not (openprec_arrive_at_1_1_1_2_found))) (valid)) (not (near_1_1)))
    (when (not (and (near_1_1) (near_1_2) (or (found) (not (openprec_arrive_at_1_1_1_2_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_1_2_0_2
  :effect (and
    (when (and (near_0_2) (near_1_2) (or (found) (not (openprec_arrive_at_1_2_0_2_found))) (valid)) (at_0_2))
    (when (and (near_0_2) (near_1_2) (or (found) (not (openprec_arrive_at_1_2_0_2_found))) (valid)) (not (near_1_2)))
    (when (not (and (near_0_2) (near_1_2) (or (found) (not (openprec_arrive_at_1_2_0_2_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_1_2_2_2
  :effect (and
    (when (and (near_2_2) (near_1_2) (or (found) (not (openprec_arrive_at_1_2_2_2_found))) (valid)) (at_2_2))
    (when (and (near_2_2) (near_1_2) (or (found) (not (openprec_arrive_at_1_2_2_2_found))) (valid)) (not (near_1_2)))
    (when (not (and (near_2_2) (near_1_2) (or (found) (not (openprec_arrive_at_1_2_2_2_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_1_2_1_1
  :effect (and
    (when (and (near_1_1) (near_1_2) (or (found) (not (openprec_arrive_at_1_2_1_1_found))) (valid)) (at_1_1))
    (when (and (near_1_1) (near_1_2) (or (found) (not (openprec_arrive_at_1_2_1_1_found))) (valid)) (not (near_1_2)))
    (when (not (and (near_1_1) (near_1_2) (or (found) (not (openprec_arrive_at_1_2_1_1_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_1_2_1_3
  :effect (and
    (when (and (near_1_3) (near_1_2) (or (found) (not (openprec_arrive_at_1_2_1_3_found))) (valid)) (at_1_3))
    (when (and (near_1_3) (near_1_2) (or (found) (not (openprec_arrive_at_1_2_1_3_found))) (valid)) (not (near_1_2)))
    (when (not (and (near_1_3) (near_1_2) (or (found) (not (openprec_arrive_at_1_2_1_3_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_1_3_0_3
  :effect (and
    (when (and (near_0_3) (near_1_3) (or (found) (not (openprec_arrive_at_1_3_0_3_found))) (valid)) (at_0_3))
    (when (and (near_0_3) (near_1_3) (or (found) (not (openprec_arrive_at_1_3_0_3_found))) (valid)) (not (near_1_3)))
    (when (not (and (near_0_3) (near_1_3) (or (found) (not (openprec_arrive_at_1_3_0_3_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_1_3_2_3
  :effect (and
    (when (and (near_2_3) (near_1_3) (or (found) (not (openprec_arrive_at_1_3_2_3_found))) (valid)) (at_2_3))
    (when (and (near_2_3) (near_1_3) (or (found) (not (openprec_arrive_at_1_3_2_3_found))) (valid)) (not (near_1_3)))
    (when (not (and (near_2_3) (near_1_3) (or (found) (not (openprec_arrive_at_1_3_2_3_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_1_3_1_2
  :effect (and
    (when (and (near_1_3) (near_1_2) (or (found) (not (openprec_arrive_at_1_3_1_2_found))) (valid)) (at_1_2))
    (when (and (near_1_3) (near_1_2) (or (found) (not (openprec_arrive_at_1_3_1_2_found))) (valid)) (not (near_1_3)))
    (when (not (and (near_1_3) (near_1_2) (or (found) (not (openprec_arrive_at_1_3_1_2_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_1_3_1_4
  :effect (and
    (when (and (near_1_3) (near_1_4) (or (found) (not (openprec_arrive_at_1_3_1_4_found))) (valid)) (at_1_4))
    (when (and (near_1_3) (near_1_4) (or (found) (not (openprec_arrive_at_1_3_1_4_found))) (valid)) (not (near_1_3)))
    (when (not (and (near_1_3) (near_1_4) (or (found) (not (openprec_arrive_at_1_3_1_4_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_1_4_0_4
  :effect (and
    (when (and (near_0_4) (near_1_4) (or (found) (not (openprec_arrive_at_1_4_0_4_found))) (valid)) (at_0_4))
    (when (and (near_0_4) (near_1_4) (or (found) (not (openprec_arrive_at_1_4_0_4_found))) (valid)) (not (near_1_4)))
    (when (not (and (near_0_4) (near_1_4) (or (found) (not (openprec_arrive_at_1_4_0_4_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_1_4_2_4
  :effect (and
    (when (and (near_2_4) (near_1_4) (or (found) (not (openprec_arrive_at_1_4_2_4_found))) (valid)) (at_2_4))
    (when (and (near_2_4) (near_1_4) (or (found) (not (openprec_arrive_at_1_4_2_4_found))) (valid)) (not (near_1_4)))
    (when (not (and (near_2_4) (near_1_4) (or (found) (not (openprec_arrive_at_1_4_2_4_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_1_4_1_3
  :effect (and
    (when (and (near_1_3) (near_1_4) (or (found) (not (openprec_arrive_at_1_4_1_3_found))) (valid)) (at_1_3))
    (when (and (near_1_3) (near_1_4) (or (found) (not (openprec_arrive_at_1_4_1_3_found))) (valid)) (not (near_1_4)))
    (when (not (and (near_1_3) (near_1_4) (or (found) (not (openprec_arrive_at_1_4_1_3_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_1_4_1_5
  :effect (and
    (when (and (near_1_5) (near_1_4) (or (found) (not (openprec_arrive_at_1_4_1_5_found))) (valid)) (at_1_5))
    (when (and (near_1_5) (near_1_4) (or (found) (not (openprec_arrive_at_1_4_1_5_found))) (valid)) (not (near_1_4)))
    (when (not (and (near_1_5) (near_1_4) (or (found) (not (openprec_arrive_at_1_4_1_5_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_1_5_0_5
  :effect (and
    (when (and (near_0_5) (near_1_5) (or (found) (not (openprec_arrive_at_1_5_0_5_found))) (valid)) (at_0_5))
    (when (and (near_0_5) (near_1_5) (or (found) (not (openprec_arrive_at_1_5_0_5_found))) (valid)) (not (near_1_5)))
    (when (not (and (near_0_5) (near_1_5) (or (found) (not (openprec_arrive_at_1_5_0_5_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_1_5_2_5
  :effect (and
    (when (and (near_1_5) (near_2_5) (or (found) (not (openprec_arrive_at_1_5_2_5_found))) (valid)) (at_2_5))
    (when (and (near_1_5) (near_2_5) (or (found) (not (openprec_arrive_at_1_5_2_5_found))) (valid)) (not (near_1_5)))
    (when (not (and (near_1_5) (near_2_5) (or (found) (not (openprec_arrive_at_1_5_2_5_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_1_5_1_4
  :effect (and
    (when (and (near_1_5) (near_1_4) (or (found) (not (openprec_arrive_at_1_5_1_4_found))) (valid)) (at_1_4))
    (when (and (near_1_5) (near_1_4) (or (found) (not (openprec_arrive_at_1_5_1_4_found))) (valid)) (not (near_1_5)))
    (when (not (and (near_1_5) (near_1_4) (or (found) (not (openprec_arrive_at_1_5_1_4_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_2_0_1_0
  :effect (and
    (when (and (near_1_0) (near_2_0) (or (found) (not (openprec_arrive_at_2_0_1_0_found))) (valid)) (at_1_0))
    (when (and (near_1_0) (near_2_0) (or (found) (not (openprec_arrive_at_2_0_1_0_found))) (valid)) (not (near_2_0)))
    (when (not (and (near_1_0) (near_2_0) (or (found) (not (openprec_arrive_at_2_0_1_0_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_2_0_3_0
  :effect (and
    (when (and (near_3_0) (near_2_0) (or (found) (not (openprec_arrive_at_2_0_3_0_found))) (valid)) (at_3_0))
    (when (and (near_3_0) (near_2_0) (or (found) (not (openprec_arrive_at_2_0_3_0_found))) (valid)) (not (near_2_0)))
    (when (not (and (near_3_0) (near_2_0) (or (found) (not (openprec_arrive_at_2_0_3_0_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_2_0_2_1
  :effect (and
    (when (and (near_2_1) (near_2_0) (or (found) (not (openprec_arrive_at_2_0_2_1_found))) (valid)) (at_2_1))
    (when (and (near_2_1) (near_2_0) (or (found) (not (openprec_arrive_at_2_0_2_1_found))) (valid)) (not (near_2_0)))
    (when (not (and (near_2_1) (near_2_0) (or (found) (not (openprec_arrive_at_2_0_2_1_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_2_1_1_1
  :effect (and
    (when (and (near_2_1) (near_1_1) (or (found) (not (openprec_arrive_at_2_1_1_1_found))) (valid)) (at_1_1))
    (when (and (near_2_1) (near_1_1) (or (found) (not (openprec_arrive_at_2_1_1_1_found))) (valid)) (not (near_2_1)))
    (when (not (and (near_2_1) (near_1_1) (or (found) (not (openprec_arrive_at_2_1_1_1_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_2_1_3_1
  :effect (and
    (when (and (near_3_1) (near_2_1) (or (found) (not (openprec_arrive_at_2_1_3_1_found))) (valid)) (at_3_1))
    (when (and (near_3_1) (near_2_1) (or (found) (not (openprec_arrive_at_2_1_3_1_found))) (valid)) (not (near_2_1)))
    (when (not (and (near_3_1) (near_2_1) (or (found) (not (openprec_arrive_at_2_1_3_1_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_2_1_2_0
  :effect (and
    (when (and (near_2_1) (near_2_0) (or (found) (not (openprec_arrive_at_2_1_2_0_found))) (valid)) (at_2_0))
    (when (and (near_2_1) (near_2_0) (or (found) (not (openprec_arrive_at_2_1_2_0_found))) (valid)) (not (near_2_1)))
    (when (not (and (near_2_1) (near_2_0) (or (found) (not (openprec_arrive_at_2_1_2_0_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_2_1_2_2
  :effect (and
    (when (and (near_2_1) (near_2_2) (or (found) (not (openprec_arrive_at_2_1_2_2_found))) (valid)) (at_2_2))
    (when (and (near_2_1) (near_2_2) (or (found) (not (openprec_arrive_at_2_1_2_2_found))) (valid)) (not (near_2_1)))
    (when (not (and (near_2_1) (near_2_2) (or (found) (not (openprec_arrive_at_2_1_2_2_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_2_2_1_2
  :effect (and
    (when (and (near_2_2) (near_1_2) (or (found) (not (openprec_arrive_at_2_2_1_2_found))) (valid)) (at_1_2))
    (when (and (near_2_2) (near_1_2) (or (found) (not (openprec_arrive_at_2_2_1_2_found))) (valid)) (not (near_2_2)))
    (when (not (and (near_2_2) (near_1_2) (or (found) (not (openprec_arrive_at_2_2_1_2_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_2_2_3_2
  :effect (and
    (when (and (near_3_2) (near_2_2) (or (found) (not (openprec_arrive_at_2_2_3_2_found))) (valid)) (at_3_2))
    (when (and (near_3_2) (near_2_2) (or (found) (not (openprec_arrive_at_2_2_3_2_found))) (valid)) (not (near_2_2)))
    (when (not (and (near_3_2) (near_2_2) (or (found) (not (openprec_arrive_at_2_2_3_2_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_2_2_2_1
  :effect (and
    (when (and (near_2_1) (near_2_2) (or (found) (not (openprec_arrive_at_2_2_2_1_found))) (valid)) (at_2_1))
    (when (and (near_2_1) (near_2_2) (or (found) (not (openprec_arrive_at_2_2_2_1_found))) (valid)) (not (near_2_2)))
    (when (not (and (near_2_1) (near_2_2) (or (found) (not (openprec_arrive_at_2_2_2_1_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_2_2_2_3
  :effect (and
    (when (and (near_2_3) (near_2_2) (or (found) (not (openprec_arrive_at_2_2_2_3_found))) (valid)) (at_2_3))
    (when (and (near_2_3) (near_2_2) (or (found) (not (openprec_arrive_at_2_2_2_3_found))) (valid)) (not (near_2_2)))
    (when (not (and (near_2_3) (near_2_2) (or (found) (not (openprec_arrive_at_2_2_2_3_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_2_3_1_3
  :effect (and
    (when (and (near_2_3) (near_1_3) (or (found) (not (openprec_arrive_at_2_3_1_3_found))) (valid)) (at_1_3))
    (when (and (near_2_3) (near_1_3) (or (found) (not (openprec_arrive_at_2_3_1_3_found))) (valid)) (not (near_2_3)))
    (when (not (and (near_2_3) (near_1_3) (or (found) (not (openprec_arrive_at_2_3_1_3_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_2_3_3_3
  :effect (and
    (when (and (near_3_3) (near_2_3) (or (found) (not (openprec_arrive_at_2_3_3_3_found))) (valid)) (at_3_3))
    (when (and (near_3_3) (near_2_3) (or (found) (not (openprec_arrive_at_2_3_3_3_found))) (valid)) (not (near_2_3)))
    (when (not (and (near_3_3) (near_2_3) (or (found) (not (openprec_arrive_at_2_3_3_3_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_2_3_2_2
  :effect (and
    (when (and (near_2_3) (near_2_2) (or (found) (not (openprec_arrive_at_2_3_2_2_found))) (valid)) (at_2_2))
    (when (and (near_2_3) (near_2_2) (or (found) (not (openprec_arrive_at_2_3_2_2_found))) (valid)) (not (near_2_3)))
    (when (not (and (near_2_3) (near_2_2) (or (found) (not (openprec_arrive_at_2_3_2_2_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_2_3_2_4
  :effect (and
    (when (and (near_2_4) (near_2_3) (or (found) (not (openprec_arrive_at_2_3_2_4_found))) (valid)) (at_2_4))
    (when (and (near_2_4) (near_2_3) (or (found) (not (openprec_arrive_at_2_3_2_4_found))) (valid)) (not (near_2_3)))
    (when (not (and (near_2_4) (near_2_3) (or (found) (not (openprec_arrive_at_2_3_2_4_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_2_4_1_4
  :effect (and
    (when (and (near_2_4) (near_1_4) (or (found) (not (openprec_arrive_at_2_4_1_4_found))) (valid)) (at_1_4))
    (when (and (near_2_4) (near_1_4) (or (found) (not (openprec_arrive_at_2_4_1_4_found))) (valid)) (not (near_2_4)))
    (when (not (and (near_2_4) (near_1_4) (or (found) (not (openprec_arrive_at_2_4_1_4_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_2_4_3_4
  :effect (and
    (when (and (near_2_4) (near_3_4) (or (found) (not (openprec_arrive_at_2_4_3_4_found))) (valid)) (at_3_4))
    (when (and (near_2_4) (near_3_4) (or (found) (not (openprec_arrive_at_2_4_3_4_found))) (valid)) (not (near_2_4)))
    (when (not (and (near_2_4) (near_3_4) (or (found) (not (openprec_arrive_at_2_4_3_4_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_2_4_2_3
  :effect (and
    (when (and (near_2_4) (near_2_3) (or (found) (not (openprec_arrive_at_2_4_2_3_found))) (valid)) (at_2_3))
    (when (and (near_2_4) (near_2_3) (or (found) (not (openprec_arrive_at_2_4_2_3_found))) (valid)) (not (near_2_4)))
    (when (not (and (near_2_4) (near_2_3) (or (found) (not (openprec_arrive_at_2_4_2_3_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_2_4_2_5
  :effect (and
    (when (and (near_2_4) (near_2_5) (or (found) (not (openprec_arrive_at_2_4_2_5_found))) (valid)) (at_2_5))
    (when (and (near_2_4) (near_2_5) (or (found) (not (openprec_arrive_at_2_4_2_5_found))) (valid)) (not (near_2_4)))
    (when (not (and (near_2_4) (near_2_5) (or (found) (not (openprec_arrive_at_2_4_2_5_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_2_5_1_5
  :effect (and
    (when (and (near_1_5) (near_2_5) (or (found) (not (openprec_arrive_at_2_5_1_5_found))) (valid)) (at_1_5))
    (when (and (near_1_5) (near_2_5) (or (found) (not (openprec_arrive_at_2_5_1_5_found))) (valid)) (not (near_2_5)))
    (when (not (and (near_1_5) (near_2_5) (or (found) (not (openprec_arrive_at_2_5_1_5_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_2_5_3_5
  :effect (and
    (when (and (near_2_5) (near_3_5) (or (found) (not (openprec_arrive_at_2_5_3_5_found))) (valid)) (at_3_5))
    (when (and (near_2_5) (near_3_5) (or (found) (not (openprec_arrive_at_2_5_3_5_found))) (valid)) (not (near_2_5)))
    (when (not (and (near_2_5) (near_3_5) (or (found) (not (openprec_arrive_at_2_5_3_5_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_2_5_2_4
  :effect (and
    (when (and (near_2_4) (near_2_5) (or (found) (not (openprec_arrive_at_2_5_2_4_found))) (valid)) (at_2_4))
    (when (and (near_2_4) (near_2_5) (or (found) (not (openprec_arrive_at_2_5_2_4_found))) (valid)) (not (near_2_5)))
    (when (not (and (near_2_4) (near_2_5) (or (found) (not (openprec_arrive_at_2_5_2_4_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_3_0_2_0
  :effect (and
    (when (and (near_3_0) (near_2_0) (or (found) (not (openprec_arrive_at_3_0_2_0_found))) (valid)) (at_2_0))
    (when (and (near_3_0) (near_2_0) (or (found) (not (openprec_arrive_at_3_0_2_0_found))) (valid)) (not (near_3_0)))
    (when (not (and (near_3_0) (near_2_0) (or (found) (not (openprec_arrive_at_3_0_2_0_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_3_0_4_0
  :effect (and
    (when (and (near_4_0) (near_3_0) (or (found) (not (openprec_arrive_at_3_0_4_0_found))) (valid)) (at_4_0))
    (when (and (near_4_0) (near_3_0) (or (found) (not (openprec_arrive_at_3_0_4_0_found))) (valid)) (not (near_3_0)))
    (when (not (and (near_4_0) (near_3_0) (or (found) (not (openprec_arrive_at_3_0_4_0_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_3_0_3_1
  :effect (and
    (when (and (near_3_0) (near_3_1) (or (found) (not (openprec_arrive_at_3_0_3_1_found))) (valid)) (at_3_1))
    (when (and (near_3_0) (near_3_1) (or (found) (not (openprec_arrive_at_3_0_3_1_found))) (valid)) (not (near_3_0)))
    (when (not (and (near_3_0) (near_3_1) (or (found) (not (openprec_arrive_at_3_0_3_1_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_3_1_2_1
  :effect (and
    (when (and (near_3_1) (near_2_1) (or (found) (not (openprec_arrive_at_3_1_2_1_found))) (valid)) (at_2_1))
    (when (and (near_3_1) (near_2_1) (or (found) (not (openprec_arrive_at_3_1_2_1_found))) (valid)) (not (near_3_1)))
    (when (not (and (near_3_1) (near_2_1) (or (found) (not (openprec_arrive_at_3_1_2_1_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_3_1_4_1
  :effect (and
    (when (and (near_4_1) (near_3_1) (or (found) (not (openprec_arrive_at_3_1_4_1_found))) (valid)) (at_4_1))
    (when (and (near_4_1) (near_3_1) (or (found) (not (openprec_arrive_at_3_1_4_1_found))) (valid)) (not (near_3_1)))
    (when (not (and (near_4_1) (near_3_1) (or (found) (not (openprec_arrive_at_3_1_4_1_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_3_1_3_0
  :effect (and
    (when (and (near_3_0) (near_3_1) (or (found) (not (openprec_arrive_at_3_1_3_0_found))) (valid)) (at_3_0))
    (when (and (near_3_0) (near_3_1) (or (found) (not (openprec_arrive_at_3_1_3_0_found))) (valid)) (not (near_3_1)))
    (when (not (and (near_3_0) (near_3_1) (or (found) (not (openprec_arrive_at_3_1_3_0_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_3_1_3_2
  :effect (and
    (when (and (near_3_2) (near_3_1) (or (found) (not (openprec_arrive_at_3_1_3_2_found))) (valid)) (at_3_2))
    (when (and (near_3_2) (near_3_1) (or (found) (not (openprec_arrive_at_3_1_3_2_found))) (valid)) (not (near_3_1)))
    (when (not (and (near_3_2) (near_3_1) (or (found) (not (openprec_arrive_at_3_1_3_2_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_3_2_2_2
  :effect (and
    (when (and (near_3_2) (near_2_2) (or (found) (not (openprec_arrive_at_3_2_2_2_found))) (valid)) (at_2_2))
    (when (and (near_3_2) (near_2_2) (or (found) (not (openprec_arrive_at_3_2_2_2_found))) (valid)) (not (near_3_2)))
    (when (not (and (near_3_2) (near_2_2) (or (found) (not (openprec_arrive_at_3_2_2_2_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_3_2_4_2
  :effect (and
    (when (and (near_3_2) (near_4_2) (or (found) (not (openprec_arrive_at_3_2_4_2_found))) (valid)) (at_4_2))
    (when (and (near_3_2) (near_4_2) (or (found) (not (openprec_arrive_at_3_2_4_2_found))) (valid)) (not (near_3_2)))
    (when (not (and (near_3_2) (near_4_2) (or (found) (not (openprec_arrive_at_3_2_4_2_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_3_2_3_1
  :effect (and
    (when (and (near_3_2) (near_3_1) (or (found) (not (openprec_arrive_at_3_2_3_1_found))) (valid)) (at_3_1))
    (when (and (near_3_2) (near_3_1) (or (found) (not (openprec_arrive_at_3_2_3_1_found))) (valid)) (not (near_3_2)))
    (when (not (and (near_3_2) (near_3_1) (or (found) (not (openprec_arrive_at_3_2_3_1_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_3_2_3_3
  :effect (and
    (when (and (near_3_2) (near_3_3) (or (found) (not (openprec_arrive_at_3_2_3_3_found))) (valid)) (at_3_3))
    (when (and (near_3_2) (near_3_3) (or (found) (not (openprec_arrive_at_3_2_3_3_found))) (valid)) (not (near_3_2)))
    (when (not (and (near_3_2) (near_3_3) (or (found) (not (openprec_arrive_at_3_2_3_3_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_3_3_2_3
  :effect (and
    (when (and (near_3_3) (near_2_3) (or (found) (not (openprec_arrive_at_3_3_2_3_found))) (valid)) (at_2_3))
    (when (and (near_3_3) (near_2_3) (or (found) (not (openprec_arrive_at_3_3_2_3_found))) (valid)) (not (near_3_3)))
    (when (not (and (near_3_3) (near_2_3) (or (found) (not (openprec_arrive_at_3_3_2_3_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_3_3_4_3
  :effect (and
    (when (and (near_3_3) (near_4_3) (or (found) (not (openprec_arrive_at_3_3_4_3_found))) (valid)) (at_4_3))
    (when (and (near_3_3) (near_4_3) (or (found) (not (openprec_arrive_at_3_3_4_3_found))) (valid)) (not (near_3_3)))
    (when (not (and (near_3_3) (near_4_3) (or (found) (not (openprec_arrive_at_3_3_4_3_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_3_3_3_2
  :effect (and
    (when (and (near_3_2) (near_3_3) (or (found) (not (openprec_arrive_at_3_3_3_2_found))) (valid)) (at_3_2))
    (when (and (near_3_2) (near_3_3) (or (found) (not (openprec_arrive_at_3_3_3_2_found))) (valid)) (not (near_3_3)))
    (when (not (and (near_3_2) (near_3_3) (or (found) (not (openprec_arrive_at_3_3_3_2_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_3_3_3_4
  :effect (and
    (when (and (near_3_3) (near_3_4) (or (found) (not (openprec_arrive_at_3_3_3_4_found))) (valid)) (at_3_4))
    (when (and (near_3_3) (near_3_4) (or (found) (not (openprec_arrive_at_3_3_3_4_found))) (valid)) (not (near_3_3)))
    (when (not (and (near_3_3) (near_3_4) (or (found) (not (openprec_arrive_at_3_3_3_4_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_3_4_2_4
  :effect (and
    (when (and (near_2_4) (near_3_4) (or (found) (not (openprec_arrive_at_3_4_2_4_found))) (valid)) (at_2_4))
    (when (and (near_2_4) (near_3_4) (or (found) (not (openprec_arrive_at_3_4_2_4_found))) (valid)) (not (near_3_4)))
    (when (not (and (near_2_4) (near_3_4) (or (found) (not (openprec_arrive_at_3_4_2_4_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_3_4_4_4
  :effect (and
    (when (and (near_3_4) (near_4_4) (or (found) (not (openprec_arrive_at_3_4_4_4_found))) (valid)) (at_4_4))
    (when (and (near_3_4) (near_4_4) (or (found) (not (openprec_arrive_at_3_4_4_4_found))) (valid)) (not (near_3_4)))
    (when (not (and (near_3_4) (near_4_4) (or (found) (not (openprec_arrive_at_3_4_4_4_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_3_4_3_3
  :effect (and
    (when (and (near_3_3) (near_3_4) (or (found) (not (openprec_arrive_at_3_4_3_3_found))) (valid)) (at_3_3))
    (when (and (near_3_3) (near_3_4) (or (found) (not (openprec_arrive_at_3_4_3_3_found))) (valid)) (not (near_3_4)))
    (when (not (and (near_3_3) (near_3_4) (or (found) (not (openprec_arrive_at_3_4_3_3_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_3_4_3_5
  :effect (and
    (when (and (near_3_4) (near_3_5) (or (found) (not (openprec_arrive_at_3_4_3_5_found))) (valid)) (at_3_5))
    (when (and (near_3_4) (near_3_5) (or (found) (not (openprec_arrive_at_3_4_3_5_found))) (valid)) (not (near_3_4)))
    (when (not (and (near_3_4) (near_3_5) (or (found) (not (openprec_arrive_at_3_4_3_5_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_3_5_2_5
  :effect (and
    (when (and (near_2_5) (near_3_5) (or (found) (not (openprec_arrive_at_3_5_2_5_found))) (valid)) (at_2_5))
    (when (and (near_2_5) (near_3_5) (or (found) (not (openprec_arrive_at_3_5_2_5_found))) (valid)) (not (near_3_5)))
    (when (not (and (near_2_5) (near_3_5) (or (found) (not (openprec_arrive_at_3_5_2_5_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_3_5_4_5
  :effect (and
    (when (and (near_3_5) (near_4_5) (or (found) (not (openprec_arrive_at_3_5_4_5_found))) (valid)) (at_4_5))
    (when (and (near_3_5) (near_4_5) (or (found) (not (openprec_arrive_at_3_5_4_5_found))) (valid)) (not (near_3_5)))
    (when (not (and (near_3_5) (near_4_5) (or (found) (not (openprec_arrive_at_3_5_4_5_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_3_5_3_4
  :effect (and
    (when (and (near_3_4) (near_3_5) (or (found) (not (openprec_arrive_at_3_5_3_4_found))) (valid)) (at_3_4))
    (when (and (near_3_4) (near_3_5) (or (found) (not (openprec_arrive_at_3_5_3_4_found))) (valid)) (not (near_3_5)))
    (when (not (and (near_3_4) (near_3_5) (or (found) (not (openprec_arrive_at_3_5_3_4_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_4_0_3_0
  :effect (and
    (when (and (near_4_0) (near_3_0) (or (found) (not (openprec_arrive_at_4_0_3_0_found))) (valid)) (at_3_0))
    (when (and (near_4_0) (near_3_0) (or (found) (not (openprec_arrive_at_4_0_3_0_found))) (valid)) (not (near_4_0)))
    (when (not (and (near_4_0) (near_3_0) (or (found) (not (openprec_arrive_at_4_0_3_0_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_4_0_5_0
  :effect (and
    (when (and (near_4_0) (near_5_0) (or (found) (not (openprec_arrive_at_4_0_5_0_found))) (valid)) (at_5_0))
    (when (and (near_4_0) (near_5_0) (or (found) (not (openprec_arrive_at_4_0_5_0_found))) (valid)) (not (near_4_0)))
    (when (not (and (near_4_0) (near_5_0) (or (found) (not (openprec_arrive_at_4_0_5_0_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_4_0_4_1
  :effect (and
    (when (and (near_4_1) (near_4_0) (or (found) (not (openprec_arrive_at_4_0_4_1_found))) (valid)) (at_4_1))
    (when (and (near_4_1) (near_4_0) (or (found) (not (openprec_arrive_at_4_0_4_1_found))) (valid)) (not (near_4_0)))
    (when (not (and (near_4_1) (near_4_0) (or (found) (not (openprec_arrive_at_4_0_4_1_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_4_1_3_1
  :effect (and
    (when (and (near_4_1) (near_3_1) (or (found) (not (openprec_arrive_at_4_1_3_1_found))) (valid)) (at_3_1))
    (when (and (near_4_1) (near_3_1) (or (found) (not (openprec_arrive_at_4_1_3_1_found))) (valid)) (not (near_4_1)))
    (when (not (and (near_4_1) (near_3_1) (or (found) (not (openprec_arrive_at_4_1_3_1_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_4_1_5_1
  :effect (and
    (when (and (near_5_1) (near_4_1) (or (found) (not (openprec_arrive_at_4_1_5_1_found))) (valid)) (at_5_1))
    (when (and (near_5_1) (near_4_1) (or (found) (not (openprec_arrive_at_4_1_5_1_found))) (valid)) (not (near_4_1)))
    (when (not (and (near_5_1) (near_4_1) (or (found) (not (openprec_arrive_at_4_1_5_1_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_4_1_4_0
  :effect (and
    (when (and (near_4_1) (near_4_0) (or (found) (not (openprec_arrive_at_4_1_4_0_found))) (valid)) (at_4_0))
    (when (and (near_4_1) (near_4_0) (or (found) (not (openprec_arrive_at_4_1_4_0_found))) (valid)) (not (near_4_1)))
    (when (not (and (near_4_1) (near_4_0) (or (found) (not (openprec_arrive_at_4_1_4_0_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_4_1_4_2
  :effect (and
    (when (and (near_4_1) (near_4_2) (or (found) (not (openprec_arrive_at_4_1_4_2_found))) (valid)) (at_4_2))
    (when (and (near_4_1) (near_4_2) (or (found) (not (openprec_arrive_at_4_1_4_2_found))) (valid)) (not (near_4_1)))
    (when (not (and (near_4_1) (near_4_2) (or (found) (not (openprec_arrive_at_4_1_4_2_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_4_2_3_2
  :effect (and
    (when (and (near_3_2) (near_4_2) (or (found) (not (openprec_arrive_at_4_2_3_2_found))) (valid)) (at_3_2))
    (when (and (near_3_2) (near_4_2) (or (found) (not (openprec_arrive_at_4_2_3_2_found))) (valid)) (not (near_4_2)))
    (when (not (and (near_3_2) (near_4_2) (or (found) (not (openprec_arrive_at_4_2_3_2_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_4_2_5_2
  :effect (and
    (when (and (near_5_2) (near_4_2) (or (found) (not (openprec_arrive_at_4_2_5_2_found))) (valid)) (at_5_2))
    (when (and (near_5_2) (near_4_2) (or (found) (not (openprec_arrive_at_4_2_5_2_found))) (valid)) (not (near_4_2)))
    (when (not (and (near_5_2) (near_4_2) (or (found) (not (openprec_arrive_at_4_2_5_2_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_4_2_4_1
  :effect (and
    (when (and (near_4_1) (near_4_2) (or (found) (not (openprec_arrive_at_4_2_4_1_found))) (valid)) (at_4_1))
    (when (and (near_4_1) (near_4_2) (or (found) (not (openprec_arrive_at_4_2_4_1_found))) (valid)) (not (near_4_2)))
    (when (not (and (near_4_1) (near_4_2) (or (found) (not (openprec_arrive_at_4_2_4_1_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_4_2_4_3
  :effect (and
    (when (and (near_4_2) (near_4_3) (or (found) (not (openprec_arrive_at_4_2_4_3_found))) (valid)) (at_4_3))
    (when (and (near_4_2) (near_4_3) (or (found) (not (openprec_arrive_at_4_2_4_3_found))) (valid)) (not (near_4_2)))
    (when (not (and (near_4_2) (near_4_3) (or (found) (not (openprec_arrive_at_4_2_4_3_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_4_3_3_3
  :effect (and
    (when (and (near_3_3) (near_4_3) (or (found) (not (openprec_arrive_at_4_3_3_3_found))) (valid)) (at_3_3))
    (when (and (near_3_3) (near_4_3) (or (found) (not (openprec_arrive_at_4_3_3_3_found))) (valid)) (not (near_4_3)))
    (when (not (and (near_3_3) (near_4_3) (or (found) (not (openprec_arrive_at_4_3_3_3_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_4_3_5_3
  :effect (and
    (when (and (near_5_3) (near_4_3) (or (found) (not (openprec_arrive_at_4_3_5_3_found))) (valid)) (at_5_3))
    (when (and (near_5_3) (near_4_3) (or (found) (not (openprec_arrive_at_4_3_5_3_found))) (valid)) (not (near_4_3)))
    (when (not (and (near_5_3) (near_4_3) (or (found) (not (openprec_arrive_at_4_3_5_3_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_4_3_4_2
  :effect (and
    (when (and (near_4_2) (near_4_3) (or (found) (not (openprec_arrive_at_4_3_4_2_found))) (valid)) (at_4_2))
    (when (and (near_4_2) (near_4_3) (or (found) (not (openprec_arrive_at_4_3_4_2_found))) (valid)) (not (near_4_3)))
    (when (not (and (near_4_2) (near_4_3) (or (found) (not (openprec_arrive_at_4_3_4_2_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_4_3_4_4
  :effect (and
    (when (and (near_4_3) (near_4_4) (or (found) (not (openprec_arrive_at_4_3_4_4_found))) (valid)) (at_4_4))
    (when (and (near_4_3) (near_4_4) (or (found) (not (openprec_arrive_at_4_3_4_4_found))) (valid)) (not (near_4_3)))
    (when (not (and (near_4_3) (near_4_4) (or (found) (not (openprec_arrive_at_4_3_4_4_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_4_4_3_4
  :effect (and
    (when (and (near_3_4) (near_4_4) (or (found) (not (openprec_arrive_at_4_4_3_4_found))) (valid)) (at_3_4))
    (when (and (near_3_4) (near_4_4) (or (found) (not (openprec_arrive_at_4_4_3_4_found))) (valid)) (not (near_4_4)))
    (when (not (and (near_3_4) (near_4_4) (or (found) (not (openprec_arrive_at_4_4_3_4_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_4_4_5_4
  :effect (and
    (when (and (near_5_4) (near_4_4) (or (found) (not (openprec_arrive_at_4_4_5_4_found))) (valid)) (at_5_4))
    (when (and (near_5_4) (near_4_4) (or (found) (not (openprec_arrive_at_4_4_5_4_found))) (valid)) (not (near_4_4)))
    (when (not (and (near_5_4) (near_4_4) (or (found) (not (openprec_arrive_at_4_4_5_4_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_4_4_4_3
  :effect (and
    (when (and (near_4_3) (near_4_4) (or (found) (not (openprec_arrive_at_4_4_4_3_found))) (valid)) (at_4_3))
    (when (and (near_4_3) (near_4_4) (or (found) (not (openprec_arrive_at_4_4_4_3_found))) (valid)) (not (near_4_4)))
    (when (not (and (near_4_3) (near_4_4) (or (found) (not (openprec_arrive_at_4_4_4_3_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_4_4_4_5
  :effect (and
    (when (and (near_4_4) (near_4_5) (or (found) (not (openprec_arrive_at_4_4_4_5_found))) (valid)) (at_4_5))
    (when (and (near_4_4) (near_4_5) (or (found) (not (openprec_arrive_at_4_4_4_5_found))) (valid)) (not (near_4_4)))
    (when (not (and (near_4_4) (near_4_5) (or (found) (not (openprec_arrive_at_4_4_4_5_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_4_5_3_5
  :effect (and
    (when (and (near_3_5) (near_4_5) (or (found) (not (openprec_arrive_at_4_5_3_5_found))) (valid)) (at_3_5))
    (when (and (near_3_5) (near_4_5) (or (found) (not (openprec_arrive_at_4_5_3_5_found))) (valid)) (not (near_4_5)))
    (when (not (and (near_3_5) (near_4_5) (or (found) (not (openprec_arrive_at_4_5_3_5_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_4_5_5_5
  :effect (and
    (when (and (near_5_5) (near_4_5) (or (found) (not (openprec_arrive_at_4_5_5_5_found))) (valid)) (at_5_5))
    (when (and (near_5_5) (near_4_5) (or (found) (not (openprec_arrive_at_4_5_5_5_found))) (valid)) (not (near_4_5)))
    (when (not (and (near_5_5) (near_4_5) (or (found) (not (openprec_arrive_at_4_5_5_5_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_4_5_4_4
  :effect (and
    (when (and (near_4_4) (near_4_5) (or (found) (not (openprec_arrive_at_4_5_4_4_found))) (valid)) (at_4_4))
    (when (and (near_4_4) (near_4_5) (or (found) (not (openprec_arrive_at_4_5_4_4_found))) (valid)) (not (near_4_5)))
    (when (not (and (near_4_4) (near_4_5) (or (found) (not (openprec_arrive_at_4_5_4_4_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_5_0_4_0
  :effect (and
    (when (and (near_4_0) (near_5_0) (or (found) (not (openprec_arrive_at_5_0_4_0_found))) (valid)) (at_4_0))
    (when (and (near_4_0) (near_5_0) (or (found) (not (openprec_arrive_at_5_0_4_0_found))) (valid)) (not (near_5_0)))
    (when (not (and (near_4_0) (near_5_0) (or (found) (not (openprec_arrive_at_5_0_4_0_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_5_0_5_1
  :effect (and
    (when (and (near_5_1) (near_5_0) (or (found) (not (openprec_arrive_at_5_0_5_1_found))) (valid)) (at_5_1))
    (when (and (near_5_1) (near_5_0) (or (found) (not (openprec_arrive_at_5_0_5_1_found))) (valid)) (not (near_5_0)))
    (when (not (and (near_5_1) (near_5_0) (or (found) (not (openprec_arrive_at_5_0_5_1_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_5_1_4_1
  :effect (and
    (when (and (near_5_1) (near_4_1) (or (found) (not (openprec_arrive_at_5_1_4_1_found))) (valid)) (at_4_1))
    (when (and (near_5_1) (near_4_1) (or (found) (not (openprec_arrive_at_5_1_4_1_found))) (valid)) (not (near_5_1)))
    (when (not (and (near_5_1) (near_4_1) (or (found) (not (openprec_arrive_at_5_1_4_1_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_5_1_5_0
  :effect (and
    (when (and (near_5_1) (near_5_0) (or (found) (not (openprec_arrive_at_5_1_5_0_found))) (valid)) (at_5_0))
    (when (and (near_5_1) (near_5_0) (or (found) (not (openprec_arrive_at_5_1_5_0_found))) (valid)) (not (near_5_1)))
    (when (not (and (near_5_1) (near_5_0) (or (found) (not (openprec_arrive_at_5_1_5_0_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_5_1_5_2
  :effect (and
    (when (and (near_5_1) (near_5_2) (or (found) (not (openprec_arrive_at_5_1_5_2_found))) (valid)) (at_5_2))
    (when (and (near_5_1) (near_5_2) (or (found) (not (openprec_arrive_at_5_1_5_2_found))) (valid)) (not (near_5_1)))
    (when (not (and (near_5_1) (near_5_2) (or (found) (not (openprec_arrive_at_5_1_5_2_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_5_2_4_2
  :effect (and
    (when (and (near_5_2) (near_4_2) (or (found) (not (openprec_arrive_at_5_2_4_2_found))) (valid)) (at_4_2))
    (when (and (near_5_2) (near_4_2) (or (found) (not (openprec_arrive_at_5_2_4_2_found))) (valid)) (not (near_5_2)))
    (when (not (and (near_5_2) (near_4_2) (or (found) (not (openprec_arrive_at_5_2_4_2_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_5_2_5_1
  :effect (and
    (when (and (near_5_1) (near_5_2) (or (found) (not (openprec_arrive_at_5_2_5_1_found))) (valid)) (at_5_1))
    (when (and (near_5_1) (near_5_2) (or (found) (not (openprec_arrive_at_5_2_5_1_found))) (valid)) (not (near_5_2)))
    (when (not (and (near_5_1) (near_5_2) (or (found) (not (openprec_arrive_at_5_2_5_1_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_5_2_5_3
  :effect (and
    (when (and (near_5_2) (near_5_3) (or (found) (not (openprec_arrive_at_5_2_5_3_found))) (valid)) (at_5_3))
    (when (and (near_5_2) (near_5_3) (or (found) (not (openprec_arrive_at_5_2_5_3_found))) (valid)) (not (near_5_2)))
    (when (not (and (near_5_2) (near_5_3) (or (found) (not (openprec_arrive_at_5_2_5_3_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_5_3_4_3
  :effect (and
    (when (and (near_5_3) (near_4_3) (or (found) (not (openprec_arrive_at_5_3_4_3_found))) (valid)) (at_4_3))
    (when (and (near_5_3) (near_4_3) (or (found) (not (openprec_arrive_at_5_3_4_3_found))) (valid)) (not (near_5_3)))
    (when (not (and (near_5_3) (near_4_3) (or (found) (not (openprec_arrive_at_5_3_4_3_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_5_3_5_2
  :effect (and
    (when (and (near_5_2) (near_5_3) (or (found) (not (openprec_arrive_at_5_3_5_2_found))) (valid)) (at_5_2))
    (when (and (near_5_2) (near_5_3) (or (found) (not (openprec_arrive_at_5_3_5_2_found))) (valid)) (not (near_5_3)))
    (when (not (and (near_5_2) (near_5_3) (or (found) (not (openprec_arrive_at_5_3_5_2_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_5_3_5_4
  :effect (and
    (when (and (near_5_3) (near_5_4) (or (found) (not (openprec_arrive_at_5_3_5_4_found))) (valid)) (at_5_4))
    (when (and (near_5_3) (near_5_4) (or (found) (not (openprec_arrive_at_5_3_5_4_found))) (valid)) (not (near_5_3)))
    (when (not (and (near_5_3) (near_5_4) (or (found) (not (openprec_arrive_at_5_3_5_4_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_5_4_4_4
  :effect (and
    (when (and (near_5_4) (near_4_4) (or (found) (not (openprec_arrive_at_5_4_4_4_found))) (valid)) (at_4_4))
    (when (and (near_5_4) (near_4_4) (or (found) (not (openprec_arrive_at_5_4_4_4_found))) (valid)) (not (near_5_4)))
    (when (not (and (near_5_4) (near_4_4) (or (found) (not (openprec_arrive_at_5_4_4_4_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_5_4_5_3
  :effect (and
    (when (and (near_5_3) (near_5_4) (or (found) (not (openprec_arrive_at_5_4_5_3_found))) (valid)) (at_5_3))
    (when (and (near_5_3) (near_5_4) (or (found) (not (openprec_arrive_at_5_4_5_3_found))) (valid)) (not (near_5_4)))
    (when (not (and (near_5_3) (near_5_4) (or (found) (not (openprec_arrive_at_5_4_5_3_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_5_4_5_5
  :effect (and
    (when (and (near_5_4) (near_5_5) (or (found) (not (openprec_arrive_at_5_4_5_5_found))) (valid)) (at_5_5))
    (when (and (near_5_4) (near_5_5) (or (found) (not (openprec_arrive_at_5_4_5_5_found))) (valid)) (not (near_5_4)))
    (when (not (and (near_5_4) (near_5_5) (or (found) (not (openprec_arrive_at_5_4_5_5_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_5_5_4_5
  :effect (and
    (when (and (near_5_5) (near_4_5) (or (found) (not (openprec_arrive_at_5_5_4_5_found))) (valid)) (at_4_5))
    (when (and (near_5_5) (near_4_5) (or (found) (not (openprec_arrive_at_5_5_4_5_found))) (valid)) (not (near_5_5)))
    (when (not (and (near_5_5) (near_4_5) (or (found) (not (openprec_arrive_at_5_5_4_5_found))) (valid))) (not (valid)))
  )
 )

 (:action arrive_at_5_5_5_4
  :effect (and
    (when (and (near_5_4) (near_5_5) (or (found) (not (openprec_arrive_at_5_5_5_4_found))) (valid)) (at_5_4))
    (when (and (near_5_4) (near_5_5) (or (found) (not (openprec_arrive_at_5_5_5_4_found))) (valid)) (not (near_5_5)))
    (when (not (and (near_5_4) (near_5_5) (or (found) (not (openprec_arrive_at_5_5_5_4_found))) (valid))) (not (valid)))
  )
 )

 (:action observe_low_0_0_1_0_1
  :effect (and
    (when (and (near_0_0) (near_1_0) (valid) (unlistedeffect_observe_low_0_0_1_0_1_found)) (found))
    (when (not (and (near_0_0) (near_1_0) (valid))) (not (valid)))
  )
 )

 (:action observe_low_0_0_1_0_2
  :effect (and
    (when (and (near_0_0) (near_1_0) (valid) (unlistedeffect_observe_low_0_0_1_0_2_found)) (found))
    (when (not (and (near_0_0) (near_1_0) (valid))) (not (valid)))
  )
 )

 (:action observe_low_0_0_0_1_1
  :effect (and
    (when (and (near_0_0) (near_0_1) (valid) (unlistedeffect_observe_low_0_0_0_1_1_found)) (found))
    (when (not (and (near_0_0) (near_0_1) (valid))) (not (valid)))
  )
 )

 (:action observe_low_0_0_0_1_2
  :effect (and
    (when (and (near_0_0) (near_0_1) (valid) (unlistedeffect_observe_low_0_0_0_1_2_found)) (found))
    (when (not (and (near_0_0) (near_0_1) (valid))) (not (valid)))
  )
 )

 (:action observe_high_0_1_1_1
  :effect (and
    (when (and (near_0_1) (near_1_1) (valid)) (found))
    (when (not (and (near_0_1) (near_1_1) (valid))) (not (valid)))
  )
 )

 (:action observe_high_0_1_0_2
  :effect (and
    (when (and (near_0_2) (near_0_1) (valid)) (found))
    (when (not (and (near_0_2) (near_0_1) (valid))) (not (valid)))
  )
 )

 (:action observe_low_0_2_1_2_1
  :effect (and
    (when (and (near_0_2) (near_1_2) (valid) (unlistedeffect_observe_low_0_2_1_2_1_found)) (found))
    (when (not (and (near_0_2) (near_1_2) (valid))) (not (valid)))
  )
 )

 (:action observe_low_0_2_1_2_2
  :effect (and
    (when (and (near_0_2) (near_1_2) (valid) (unlistedeffect_observe_low_0_2_1_2_2_found)) (found))
    (when (not (and (near_0_2) (near_1_2) (valid))) (not (valid)))
  )
 )

 (:action observe_low_0_2_0_3_1
  :effect (and
    (when (and (near_0_2) (near_0_3) (valid) (unlistedeffect_observe_low_0_2_0_3_1_found)) (found))
    (when (not (and (near_0_2) (near_0_3) (valid))) (not (valid)))
  )
 )

 (:action observe_low_0_2_0_3_2
  :effect (and
    (when (and (near_0_2) (near_0_3) (valid) (unlistedeffect_observe_low_0_2_0_3_2_found)) (found))
    (when (not (and (near_0_2) (near_0_3) (valid))) (not (valid)))
  )
 )

 (:action observe_high_0_3_1_3
  :effect (and
    (when (and (near_0_3) (near_1_3) (valid)) (found))
    (when (not (and (near_0_3) (near_1_3) (valid))) (not (valid)))
  )
 )

 (:action observe_high_0_3_0_4
  :effect (and
    (when (and (near_0_4) (near_0_3) (valid)) (found))
    (when (not (and (near_0_4) (near_0_3) (valid))) (not (valid)))
  )
 )

 (:action observe_high_0_4_1_4
  :effect (and
    (when (and (near_0_4) (near_1_4) (valid)) (found))
    (when (not (and (near_0_4) (near_1_4) (valid))) (not (valid)))
  )
 )

 (:action observe_high_0_4_0_5
  :effect (and
    (when (and (near_0_4) (near_0_5) (valid)) (found))
    (when (not (and (near_0_4) (near_0_5) (valid))) (not (valid)))
  )
 )

 (:action observe_high_0_5_1_5
  :effect (and
    (when (and (near_0_5) (near_1_5) (valid)) (found))
    (when (not (and (near_0_5) (near_1_5) (valid))) (not (valid)))
  )
 )

 (:action observe_low_1_0_2_0_1
  :effect (and
    (when (and (near_1_0) (near_2_0) (valid) (unlistedeffect_observe_low_1_0_2_0_1_found)) (found))
    (when (not (and (near_1_0) (near_2_0) (valid))) (not (valid)))
  )
 )

 (:action observe_low_1_0_1_1_1
  :effect (and
    (when (and (near_1_0) (near_1_1) (valid) (unlistedeffect_observe_low_1_0_1_1_1_found)) (found))
    (when (not (and (near_1_0) (near_1_1) (valid))) (not (valid)))
  )
 )

 (:action observe_low_1_1_2_1_1
  :effect (and
    (when (and (near_2_1) (near_1_1) (valid) (unlistedeffect_observe_low_1_1_2_1_1_found)) (found))
    (when (not (and (near_2_1) (near_1_1) (valid))) (not (valid)))
  )
 )

 (:action observe_low_1_1_1_2_1
  :effect (and
    (when (and (near_1_1) (near_1_2) (valid) (unlistedeffect_observe_low_1_1_1_2_1_found)) (found))
    (when (not (and (near_1_1) (near_1_2) (valid))) (not (valid)))
  )
 )

 (:action observe_high_1_2_2_2
  :effect (and
    (when (and (near_2_2) (near_1_2) (valid)) (found))
    (when (not (and (near_2_2) (near_1_2) (valid))) (not (valid)))
  )
 )

 (:action observe_high_1_2_1_3
  :effect (and
    (when (and (near_1_3) (near_1_2) (valid)) (found))
    (when (not (and (near_1_3) (near_1_2) (valid))) (not (valid)))
  )
 )

 (:action observe_low_2_0_3_0_1
  :effect (and
    (when (and (near_3_0) (near_2_0) (valid) (unlistedeffect_observe_low_2_0_3_0_1_found)) (found))
    (when (not (and (near_3_0) (near_2_0) (valid))) (not (valid)))
  )
 )

 (:action observe_low_2_0_2_1_1
  :effect (and
    (when (and (near_2_1) (near_2_0) (valid) (unlistedeffect_observe_low_2_0_2_1_1_found)) (found))
    (when (not (and (near_2_1) (near_2_0) (valid))) (not (valid)))
  )
 )

 (:action observe_low_2_1_3_1_1
  :effect (and
    (when (and (near_3_1) (near_2_1) (valid) (unlistedeffect_observe_low_2_1_3_1_1_found)) (found))
    (when (not (and (near_3_1) (near_2_1) (valid))) (not (valid)))
  )
 )

 (:action observe_low_2_1_3_1_2
  :effect (and
    (when (and (near_3_1) (near_2_1) (valid) (unlistedeffect_observe_low_2_1_3_1_2_found)) (found))
    (when (not (and (near_3_1) (near_2_1) (valid))) (not (valid)))
  )
 )

 (:action observe_low_2_1_2_2_1
  :effect (and
    (when (and (near_2_1) (near_2_2) (valid) (unlistedeffect_observe_low_2_1_2_2_1_found)) (found))
    (when (not (and (near_2_1) (near_2_2) (valid))) (not (valid)))
  )
 )

 (:action observe_low_2_1_2_2_2
  :effect (and
    (when (and (near_2_1) (near_2_2) (valid) (unlistedeffect_observe_low_2_1_2_2_2_found)) (found))
    (when (not (and (near_2_1) (near_2_2) (valid))) (not (valid)))
  )
 )

 (:action observe_low_2_2_3_2_1
  :effect (and
    (when (and (near_3_2) (near_2_2) (valid) (unlistedeffect_observe_low_2_2_3_2_1_found)) (found))
    (when (not (and (near_3_2) (near_2_2) (valid))) (not (valid)))
  )
 )

 (:action observe_low_2_2_3_2_2
  :effect (and
    (when (and (near_3_2) (near_2_2) (valid) (unlistedeffect_observe_low_2_2_3_2_2_found)) (found))
    (when (not (and (near_3_2) (near_2_2) (valid))) (not (valid)))
  )
 )

 (:action observe_low_2_2_2_3_1
  :effect (and
    (when (and (near_2_3) (near_2_2) (valid) (unlistedeffect_observe_low_2_2_2_3_1_found)) (found))
    (when (not (and (near_2_3) (near_2_2) (valid))) (not (valid)))
  )
 )

 (:action observe_low_2_2_2_3_2
  :effect (and
    (when (and (near_2_3) (near_2_2) (valid) (unlistedeffect_observe_low_2_2_2_3_2_found)) (found))
    (when (not (and (near_2_3) (near_2_2) (valid))) (not (valid)))
  )
 )

 (:action observe_low_2_3_3_3_1
  :effect (and
    (when (and (near_3_3) (near_2_3) (valid) (unlistedeffect_observe_low_2_3_3_3_1_found)) (found))
    (when (not (and (near_3_3) (near_2_3) (valid))) (not (valid)))
  )
 )

 (:action observe_low_2_3_3_3_2
  :effect (and
    (when (and (near_3_3) (near_2_3) (valid) (unlistedeffect_observe_low_2_3_3_3_2_found)) (found))
    (when (not (and (near_3_3) (near_2_3) (valid))) (not (valid)))
  )
 )

 (:action observe_low_2_3_2_4_1
  :effect (and
    (when (and (near_2_4) (near_2_3) (valid) (unlistedeffect_observe_low_2_3_2_4_1_found)) (found))
    (when (not (and (near_2_4) (near_2_3) (valid))) (not (valid)))
  )
 )

 (:action observe_low_2_3_2_4_2
  :effect (and
    (when (and (near_2_4) (near_2_3) (valid) (unlistedeffect_observe_low_2_3_2_4_2_found)) (found))
    (when (not (and (near_2_4) (near_2_3) (valid))) (not (valid)))
  )
 )

 (:action observe_high_2_4_3_4
  :effect (and
    (when (and (near_2_4) (near_3_4) (valid)) (found))
    (when (not (and (near_2_4) (near_3_4) (valid))) (not (valid)))
  )
 )

 (:action observe_high_2_4_2_5
  :effect (and
    (when (and (near_2_4) (near_2_5) (valid)) (found))
    (when (not (and (near_2_4) (near_2_5) (valid))) (not (valid)))
  )
 )

 (:action observe_low_2_5_3_5_1
  :effect (and
    (when (and (near_2_5) (near_3_5) (valid) (unlistedeffect_observe_low_2_5_3_5_1_found)) (found))
    (when (not (and (near_2_5) (near_3_5) (valid))) (not (valid)))
  )
 )

 (:action observe_low_3_0_4_0_1
  :effect (and
    (when (and (near_4_0) (near_3_0) (valid) (unlistedeffect_observe_low_3_0_4_0_1_found)) (found))
    (when (not (and (near_4_0) (near_3_0) (valid))) (not (valid)))
  )
 )

 (:action observe_low_3_0_3_1_1
  :effect (and
    (when (and (near_3_0) (near_3_1) (valid) (unlistedeffect_observe_low_3_0_3_1_1_found)) (found))
    (when (not (and (near_3_0) (near_3_1) (valid))) (not (valid)))
  )
 )

 (:action observe_high_3_2_4_2
  :effect (and
    (when (and (near_3_2) (near_4_2) (valid)) (found))
    (when (not (and (near_3_2) (near_4_2) (valid))) (not (valid)))
  )
 )

 (:action observe_high_3_2_3_3
  :effect (and
    (when (and (near_3_2) (near_3_3) (valid)) (found))
    (when (not (and (near_3_2) (near_3_3) (valid))) (not (valid)))
  )
 )

 (:action observe_low_4_0_5_0_1
  :effect (and
    (when (and (near_4_0) (near_5_0) (valid) (unlistedeffect_observe_low_4_0_5_0_1_found)) (found))
    (when (not (and (near_4_0) (near_5_0) (valid))) (not (valid)))
  )
 )

 (:action observe_low_4_0_5_0_2
  :effect (and
    (when (and (near_4_0) (near_5_0) (valid) (unlistedeffect_observe_low_4_0_5_0_2_found)) (found))
    (when (not (and (near_4_0) (near_5_0) (valid))) (not (valid)))
  )
 )

 (:action observe_low_4_0_4_1_1
  :effect (and
    (when (and (near_4_1) (near_4_0) (valid) (unlistedeffect_observe_low_4_0_4_1_1_found)) (found))
    (when (not (and (near_4_1) (near_4_0) (valid))) (not (valid)))
  )
 )

 (:action observe_low_4_0_4_1_2
  :effect (and
    (when (and (near_4_1) (near_4_0) (valid) (unlistedeffect_observe_low_4_0_4_1_2_found)) (found))
    (when (not (and (near_4_1) (near_4_0) (valid))) (not (valid)))
  )
 )

 (:action observe_high_4_1_5_1
  :effect (and
    (when (and (near_5_1) (near_4_1) (valid)) (found))
    (when (not (and (near_5_1) (near_4_1) (valid))) (not (valid)))
  )
 )

 (:action observe_high_4_1_4_2
  :effect (and
    (when (and (near_4_1) (near_4_2) (valid)) (found))
    (when (not (and (near_4_1) (near_4_2) (valid))) (not (valid)))
  )
 )

 (:action observe_high_4_2_5_2
  :effect (and
    (when (and (near_5_2) (near_4_2) (valid)) (found))
    (when (not (and (near_5_2) (near_4_2) (valid))) (not (valid)))
  )
 )

 (:action observe_high_4_2_4_3
  :effect (and
    (when (and (near_4_2) (near_4_3) (valid)) (found))
    (when (not (and (near_4_2) (near_4_3) (valid))) (not (valid)))
  )
 )

 (:action observe_low_4_3_5_3_1
  :effect (and
    (when (and (near_5_3) (near_4_3) (valid) (unlistedeffect_observe_low_4_3_5_3_1_found)) (found))
    (when (not (and (near_5_3) (near_4_3) (valid))) (not (valid)))
  )
 )

 (:action observe_low_4_3_4_4_1
  :effect (and
    (when (and (near_4_3) (near_4_4) (valid) (unlistedeffect_observe_low_4_3_4_4_1_found)) (found))
    (when (not (and (near_4_3) (near_4_4) (valid))) (not (valid)))
  )
 )

 (:action observe_low_4_4_5_4_1
  :effect (and
    (when (and (near_5_4) (near_4_4) (valid) (unlistedeffect_observe_low_4_4_5_4_1_found)) (found))
    (when (not (and (near_5_4) (near_4_4) (valid))) (not (valid)))
  )
 )

 (:action observe_low_4_4_5_4_2
  :effect (and
    (when (and (near_5_4) (near_4_4) (valid) (unlistedeffect_observe_low_4_4_5_4_2_found)) (found))
    (when (not (and (near_5_4) (near_4_4) (valid))) (not (valid)))
  )
 )

 (:action observe_low_4_4_4_5_1
  :effect (and
    (when (and (near_4_4) (near_4_5) (valid) (unlistedeffect_observe_low_4_4_4_5_1_found)) (found))
    (when (not (and (near_4_4) (near_4_5) (valid))) (not (valid)))
  )
 )

 (:action observe_low_4_4_4_5_2
  :effect (and
    (when (and (near_4_4) (near_4_5) (valid) (unlistedeffect_observe_low_4_4_4_5_2_found)) (found))
    (when (not (and (near_4_4) (near_4_5) (valid))) (not (valid)))
  )
 )

 (:action observe_low_5_0_5_1_1
  :effect (and
    (when (and (near_5_1) (near_5_0) (valid) (unlistedeffect_observe_low_5_0_5_1_1_found)) (found))
    (when (not (and (near_5_1) (near_5_0) (valid))) (not (valid)))
  )
 )

 (:action observe_low_5_3_5_4_1
  :effect (and
    (when (and (near_5_3) (near_5_4) (valid) (unlistedeffect_observe_low_5_3_5_4_1_found)) (found))
    (when (not (and (near_5_3) (near_5_4) (valid))) (not (valid)))
  )
 )

 (:action observe_low_5_3_5_4_2
  :effect (and
    (when (and (near_5_3) (near_5_4) (valid) (unlistedeffect_observe_low_5_3_5_4_2_found)) (found))
    (when (not (and (near_5_3) (near_5_4) (valid))) (not (valid)))
  )
 )

 (:action move_bus_stop
  :effect (and
    (when (and (at_5_5) (valid)) (at_bus_stop))
    (when (and (at_5_5) (valid)) (not (at_5_5)))
    (when (not (and (at_5_5) (valid))) (not (valid)))
  )
 )

 (:action cpp_goal
  :precondition (and )
  :effect (when (and (at_bus_stop ) (valid)) (done))
 )
)
