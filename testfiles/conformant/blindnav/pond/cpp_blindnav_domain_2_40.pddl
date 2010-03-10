(define (domain BlindNav)
 (:requirements :probabilistic-effects)
 (:predicates (at_1_0) (at_1_1) (near_0_0) (near_0_1) (at_bus_stop) (near_1_0) (at_0_1) (near_1_1) (found) (at_0_0) (possclob_move_toward_0_0_1_0_found) (possclob_move_toward_0_0_0_1_found) (possclob_move_toward_0_1_1_1_found) (possclob_move_toward_0_1_0_0_found) (possclob_move_toward_1_0_0_0_found) (possclob_move_toward_1_0_1_1_found) (possclob_move_toward_1_1_0_1_found) (possclob_move_toward_1_1_1_0_found) (openprec_arrive_at_0_0_1_0_found) (openprec_arrive_at_0_0_0_1_found) (openprec_arrive_at_0_1_1_1_found) (openprec_arrive_at_0_1_0_0_found) (openprec_arrive_at_1_0_0_0_found) (openprec_arrive_at_1_0_1_1_found) (openprec_arrive_at_1_1_0_1_found) (openprec_arrive_at_1_1_1_0_found) (unlistedeffect_observe_low_0_0_1_0_1_found) (unlistedeffect_observe_low_0_0_0_1_1_found) (unlistedeffect_observe_low_0_1_1_1_1_found) (valid) (done))

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

 (:action move_toward_1_0_0_0
  :effect (and
    (when (and (at_1_0) (found) (valid)) (near_0_0))
    (when (and (at_1_0) (found) (valid)) (not (at_1_0)))
    (when (and (at_1_0) (found) (valid) (possclob_move_toward_1_0_0_0_found)) (not (found)))
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

 (:action move_toward_1_1_1_0
  :effect (and
    (when (and (at_1_1) (found) (valid)) (near_1_0))
    (when (and (at_1_1) (found) (valid)) (not (at_1_1)))
    (when (and (at_1_1) (found) (valid) (possclob_move_toward_1_1_1_0_found)) (not (found)))
    (when (not (and (at_1_1) (found) (valid))) (not (valid)))
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

 (:action arrive_at_1_0_0_0
  :effect (and
    (when (and (near_0_0) (near_1_0) (or (found) (not (openprec_arrive_at_1_0_0_0_found))) (valid)) (at_0_0))
    (when (and (near_0_0) (near_1_0) (or (found) (not (openprec_arrive_at_1_0_0_0_found))) (valid)) (not (near_1_0)))
    (when (not (and (near_0_0) (near_1_0) (or (found) (not (openprec_arrive_at_1_0_0_0_found))) (valid))) (not (valid)))
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

 (:action arrive_at_1_1_1_0
  :effect (and
    (when (and (near_1_0) (near_1_1) (or (found) (not (openprec_arrive_at_1_1_1_0_found))) (valid)) (at_1_0))
    (when (and (near_1_0) (near_1_1) (or (found) (not (openprec_arrive_at_1_1_1_0_found))) (valid)) (not (near_1_1)))
    (when (not (and (near_1_0) (near_1_1) (or (found) (not (openprec_arrive_at_1_1_1_0_found))) (valid))) (not (valid)))
  )
 )

 (:action observe_low_0_0_1_0_1
  :effect (and
    (when (and (near_0_0) (near_1_0) (valid) (unlistedeffect_observe_low_0_0_1_0_1_found)) (found))
    (when (not (and (near_0_0) (near_1_0) (valid))) (not (valid)))
  )
 )

 (:action observe_low_0_0_0_1_1
  :effect (and
    (when (and (near_0_0) (near_0_1) (valid) (unlistedeffect_observe_low_0_0_0_1_1_found)) (found))
    (when (not (and (near_0_0) (near_0_1) (valid))) (not (valid)))
  )
 )

 (:action observe_low_0_1_1_1_1
  :effect (and
    (when (and (near_0_1) (near_1_1) (valid) (unlistedeffect_observe_low_0_1_1_1_1_found)) (found))
    (when (not (and (near_0_1) (near_1_1) (valid))) (not (valid)))
  )
 )

 (:action observe_high_1_0_1_1
  :effect (and
    (when (and (near_1_0) (near_1_1) (valid)) (found))
    (when (not (and (near_1_0) (near_1_1) (valid))) (not (valid)))
  )
 )

 (:action move_bus_stop
  :effect (and
    (when (and (at_1_1) (valid)) (at_bus_stop))
    (when (and (at_1_1) (valid)) (not (at_1_1)))
    (when (not (and (at_1_1) (valid))) (not (valid)))
  )
 )

 (:action cpp_goal
  :precondition (and )
  :effect (when (and (at_bus_stop ) (valid)) (done))
 )
)
