(define (domain BlindNav)
 (:requirements :probabilistic-effects)
 (:predicates (near_0_2) (near_0_3) (near_3_0) (at_3_2) (near_0_0) (at_2_0) (at_3_3) (near_0_1) (near_3_2) (at_3_0) (near_3_1) (at_3_1) (near_2_1) (at_2_3) (near_1_0) (near_2_0) (near_2_3) (at_2_1) (near_2_2) (at_2_2) (near_1_3) (near_1_1) (near_1_2) (near_3_3) (at_bus_stop) (at_1_0) (at_1_1) (at_0_3) (at_0_1) (at_0_2) (at_1_2) (found) (at_1_3) (at_0_0) (possclob_move_toward_0_0_1_0_found) (possclob_move_toward_0_0_0_1_found) (possclob_move_toward_0_1_1_1_found) (possclob_move_toward_0_1_0_0_found) (possclob_move_toward_0_1_0_2_found) (possclob_move_toward_0_2_1_2_found) (possclob_move_toward_0_2_0_1_found) (possclob_move_toward_0_2_0_3_found) (possclob_move_toward_0_3_1_3_found) (possclob_move_toward_0_3_0_2_found) (possclob_move_toward_1_0_0_0_found) (possclob_move_toward_1_0_2_0_found) (possclob_move_toward_1_0_1_1_found) (possclob_move_toward_1_1_0_1_found) (possclob_move_toward_1_1_2_1_found) (possclob_move_toward_1_1_1_0_found) (possclob_move_toward_1_1_1_2_found) (possclob_move_toward_1_2_0_2_found) (possclob_move_toward_1_2_2_2_found) (possclob_move_toward_1_2_1_1_found) (possclob_move_toward_1_2_1_3_found) (possclob_move_toward_1_3_0_3_found) (possclob_move_toward_1_3_2_3_found) (possclob_move_toward_1_3_1_2_found) (possclob_move_toward_2_0_1_0_found) (possclob_move_toward_2_0_3_0_found) (possclob_move_toward_2_0_2_1_found) (possclob_move_toward_2_1_1_1_found) (possclob_move_toward_2_1_3_1_found) (possclob_move_toward_2_1_2_0_found) (possclob_move_toward_2_1_2_2_found) (possclob_move_toward_2_2_1_2_found) (possclob_move_toward_2_2_3_2_found) (possclob_move_toward_2_2_2_1_found) (possclob_move_toward_2_2_2_3_found) (possclob_move_toward_2_3_1_3_found) (possclob_move_toward_2_3_3_3_found) (possclob_move_toward_2_3_2_2_found) (possclob_move_toward_3_0_2_0_found) (possclob_move_toward_3_0_3_1_found) (possclob_move_toward_3_1_2_1_found) (possclob_move_toward_3_1_3_0_found) (possclob_move_toward_3_1_3_2_found) (possclob_move_toward_3_2_2_2_found) (possclob_move_toward_3_2_3_1_found) (possclob_move_toward_3_2_3_3_found) (possclob_move_toward_3_3_2_3_found) (possclob_move_toward_3_3_3_2_found) (openprec_arrive_at_0_0_1_0_found) (openprec_arrive_at_0_0_0_1_found) (openprec_arrive_at_0_1_1_1_found) (openprec_arrive_at_0_1_0_0_found) (openprec_arrive_at_0_1_0_2_found) (openprec_arrive_at_0_2_1_2_found) (openprec_arrive_at_0_2_0_1_found) (openprec_arrive_at_0_2_0_3_found) (openprec_arrive_at_0_3_1_3_found) (openprec_arrive_at_0_3_0_2_found) (openprec_arrive_at_1_0_0_0_found) (openprec_arrive_at_1_0_2_0_found) (openprec_arrive_at_1_0_1_1_found) (openprec_arrive_at_1_1_0_1_found) (openprec_arrive_at_1_1_2_1_found) (openprec_arrive_at_1_1_1_0_found) (openprec_arrive_at_1_1_1_2_found) (openprec_arrive_at_1_2_0_2_found) (openprec_arrive_at_1_2_2_2_found) (openprec_arrive_at_1_2_1_1_found) (openprec_arrive_at_1_2_1_3_found) (openprec_arrive_at_1_3_0_3_found) (openprec_arrive_at_1_3_2_3_found) (openprec_arrive_at_1_3_1_2_found) (openprec_arrive_at_2_0_1_0_found) (openprec_arrive_at_2_0_3_0_found) (openprec_arrive_at_2_0_2_1_found) (openprec_arrive_at_2_1_1_1_found) (openprec_arrive_at_2_1_3_1_found) (openprec_arrive_at_2_1_2_0_found) (openprec_arrive_at_2_1_2_2_found) (openprec_arrive_at_2_2_1_2_found) (openprec_arrive_at_2_2_3_2_found) (openprec_arrive_at_2_2_2_1_found) (openprec_arrive_at_2_2_2_3_found) (openprec_arrive_at_2_3_1_3_found) (openprec_arrive_at_2_3_3_3_found) (openprec_arrive_at_2_3_2_2_found) (openprec_arrive_at_3_0_2_0_found) (openprec_arrive_at_3_0_3_1_found) (openprec_arrive_at_3_1_2_1_found) (openprec_arrive_at_3_1_3_0_found) (openprec_arrive_at_3_1_3_2_found) (openprec_arrive_at_3_2_2_2_found) (openprec_arrive_at_3_2_3_1_found) (openprec_arrive_at_3_2_3_3_found) (openprec_arrive_at_3_3_2_3_found) (openprec_arrive_at_3_3_3_2_found) (unlistedeffect_observe_low_0_2_1_2_1_found) (unlistedeffect_observe_low_0_2_0_3_1_found) (unlistedeffect_observe_low_0_3_1_3_1_found) (unlistedeffect_observe_low_0_3_1_3_2_found) (unlistedeffect_observe_low_1_2_2_2_1_found) (unlistedeffect_observe_low_1_2_2_2_2_found) (unlistedeffect_observe_low_1_2_1_3_1_found) (unlistedeffect_observe_low_1_2_1_3_2_found) (unlistedeffect_observe_low_2_2_3_2_1_found) (unlistedeffect_observe_low_2_2_2_3_1_found) (unlistedeffect_observe_low_2_3_3_3_1_found) (unlistedeffect_observe_low_3_0_3_1_1_found) (unlistedeffect_observe_low_3_0_3_1_2_found) (unlistedeffect_observe_low_3_1_3_2_1_found) (unlistedeffect_observe_low_3_1_3_2_2_found) (valid) (done))

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

 (:action move_toward_3_0_2_0
  :effect (and
    (when (and (at_3_0) (found) (valid)) (near_2_0))
    (when (and (at_3_0) (found) (valid)) (not (at_3_0)))
    (when (and (at_3_0) (found) (valid) (possclob_move_toward_3_0_2_0_found)) (not (found)))
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

 (:action move_toward_3_3_3_2
  :effect (and
    (when (and (at_3_3) (found) (valid)) (near_3_2))
    (when (and (at_3_3) (found) (valid)) (not (at_3_3)))
    (when (and (at_3_3) (found) (valid) (possclob_move_toward_3_3_3_2_found)) (not (found)))
    (when (not (and (at_3_3) (found) (valid))) (not (valid)))
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

 (:action arrive_at_3_0_2_0
  :effect (and
    (when (and (near_3_0) (near_2_0) (or (found) (not (openprec_arrive_at_3_0_2_0_found))) (valid)) (at_2_0))
    (when (and (near_3_0) (near_2_0) (or (found) (not (openprec_arrive_at_3_0_2_0_found))) (valid)) (not (near_3_0)))
    (when (not (and (near_3_0) (near_2_0) (or (found) (not (openprec_arrive_at_3_0_2_0_found))) (valid))) (not (valid)))
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

 (:action arrive_at_3_3_3_2
  :effect (and
    (when (and (near_3_2) (near_3_3) (or (found) (not (openprec_arrive_at_3_3_3_2_found))) (valid)) (at_3_2))
    (when (and (near_3_2) (near_3_3) (or (found) (not (openprec_arrive_at_3_3_3_2_found))) (valid)) (not (near_3_3)))
    (when (not (and (near_3_2) (near_3_3) (or (found) (not (openprec_arrive_at_3_3_3_2_found))) (valid))) (not (valid)))
  )
 )

 (:action observe_low_0_2_1_2_1
  :effect (and
    (when (and (near_0_2) (near_1_2) (valid) (unlistedeffect_observe_low_0_2_1_2_1_found)) (found))
    (when (not (and (near_0_2) (near_1_2) (valid))) (not (valid)))
  )
 )

 (:action observe_low_0_2_0_3_1
  :effect (and
    (when (and (near_0_2) (near_0_3) (valid) (unlistedeffect_observe_low_0_2_0_3_1_found)) (found))
    (when (not (and (near_0_2) (near_0_3) (valid))) (not (valid)))
  )
 )

 (:action observe_low_0_3_1_3_1
  :effect (and
    (when (and (near_0_3) (near_1_3) (valid) (unlistedeffect_observe_low_0_3_1_3_1_found)) (found))
    (when (not (and (near_0_3) (near_1_3) (valid))) (not (valid)))
  )
 )

 (:action observe_low_0_3_1_3_2
  :effect (and
    (when (and (near_0_3) (near_1_3) (valid) (unlistedeffect_observe_low_0_3_1_3_2_found)) (found))
    (when (not (and (near_0_3) (near_1_3) (valid))) (not (valid)))
  )
 )

 (:action observe_high_1_1_2_1
  :effect (and
    (when (and (near_2_1) (near_1_1) (valid)) (found))
    (when (not (and (near_2_1) (near_1_1) (valid))) (not (valid)))
  )
 )

 (:action observe_high_1_1_1_2
  :effect (and
    (when (and (near_1_1) (near_1_2) (valid)) (found))
    (when (not (and (near_1_1) (near_1_2) (valid))) (not (valid)))
  )
 )

 (:action observe_low_1_2_2_2_1
  :effect (and
    (when (and (near_2_2) (near_1_2) (valid) (unlistedeffect_observe_low_1_2_2_2_1_found)) (found))
    (when (not (and (near_2_2) (near_1_2) (valid))) (not (valid)))
  )
 )

 (:action observe_low_1_2_2_2_2
  :effect (and
    (when (and (near_2_2) (near_1_2) (valid) (unlistedeffect_observe_low_1_2_2_2_2_found)) (found))
    (when (not (and (near_2_2) (near_1_2) (valid))) (not (valid)))
  )
 )

 (:action observe_low_1_2_1_3_1
  :effect (and
    (when (and (near_1_3) (near_1_2) (valid) (unlistedeffect_observe_low_1_2_1_3_1_found)) (found))
    (when (not (and (near_1_3) (near_1_2) (valid))) (not (valid)))
  )
 )

 (:action observe_low_1_2_1_3_2
  :effect (and
    (when (and (near_1_3) (near_1_2) (valid) (unlistedeffect_observe_low_1_2_1_3_2_found)) (found))
    (when (not (and (near_1_3) (near_1_2) (valid))) (not (valid)))
  )
 )

 (:action observe_high_1_3_2_3
  :effect (and
    (when (and (near_2_3) (near_1_3) (valid)) (found))
    (when (not (and (near_2_3) (near_1_3) (valid))) (not (valid)))
  )
 )

 (:action observe_high_2_0_3_0
  :effect (and
    (when (and (near_3_0) (near_2_0) (valid)) (found))
    (when (not (and (near_3_0) (near_2_0) (valid))) (not (valid)))
  )
 )

 (:action observe_high_2_0_2_1
  :effect (and
    (when (and (near_2_1) (near_2_0) (valid)) (found))
    (when (not (and (near_2_1) (near_2_0) (valid))) (not (valid)))
  )
 )

 (:action observe_low_2_2_3_2_1
  :effect (and
    (when (and (near_3_2) (near_2_2) (valid) (unlistedeffect_observe_low_2_2_3_2_1_found)) (found))
    (when (not (and (near_3_2) (near_2_2) (valid))) (not (valid)))
  )
 )

 (:action observe_low_2_2_2_3_1
  :effect (and
    (when (and (near_2_3) (near_2_2) (valid) (unlistedeffect_observe_low_2_2_2_3_1_found)) (found))
    (when (not (and (near_2_3) (near_2_2) (valid))) (not (valid)))
  )
 )

 (:action observe_low_2_3_3_3_1
  :effect (and
    (when (and (near_3_3) (near_2_3) (valid) (unlistedeffect_observe_low_2_3_3_3_1_found)) (found))
    (when (not (and (near_3_3) (near_2_3) (valid))) (not (valid)))
  )
 )

 (:action observe_low_3_0_3_1_1
  :effect (and
    (when (and (near_3_0) (near_3_1) (valid) (unlistedeffect_observe_low_3_0_3_1_1_found)) (found))
    (when (not (and (near_3_0) (near_3_1) (valid))) (not (valid)))
  )
 )

 (:action observe_low_3_0_3_1_2
  :effect (and
    (when (and (near_3_0) (near_3_1) (valid) (unlistedeffect_observe_low_3_0_3_1_2_found)) (found))
    (when (not (and (near_3_0) (near_3_1) (valid))) (not (valid)))
  )
 )

 (:action observe_low_3_1_3_2_1
  :effect (and
    (when (and (near_3_2) (near_3_1) (valid) (unlistedeffect_observe_low_3_1_3_2_1_found)) (found))
    (when (not (and (near_3_2) (near_3_1) (valid))) (not (valid)))
  )
 )

 (:action observe_low_3_1_3_2_2
  :effect (and
    (when (and (near_3_2) (near_3_1) (valid) (unlistedeffect_observe_low_3_1_3_2_2_found)) (found))
    (when (not (and (near_3_2) (near_3_1) (valid))) (not (valid)))
  )
 )

 (:action observe_high_3_2_3_3
  :effect (and
    (when (and (near_3_2) (near_3_3) (valid)) (found))
    (when (not (and (near_3_2) (near_3_3) (valid))) (not (valid)))
  )
 )

 (:action move_bus_stop
  :effect (and
    (when (and (at_3_3) (valid)) (at_bus_stop))
    (when (and (at_3_3) (valid)) (not (at_3_3)))
    (when (not (and (at_3_3) (valid))) (not (valid)))
  )
 )

 (:action cpp_goal
  :precondition (and )
  :effect (when (and (at_bus_stop ) (valid)) (done))
 )
)
