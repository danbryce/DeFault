(define (domain Bridges)
 (:requirements :probabilistic-effects)
 (:predicates (at_1_0) (at_1_1) (bridge_1_0_1_1) (bridge_0_0_0_1) (holding_treasure_2) (at_0_1) (holding_treasure_3) (bridge_0_0_1_0) (holding_treasure_1) (at_0_0) (openprec_move_0_0_1_0_bridge_0_0_1_0) (openprec_move_0_0_0_1_bridge_0_0_0_1) (openprec_move_0_1_0_0_bridge_0_0_0_1) (possclob_move_0_1_0_0_holding_treasure_2) (possclob_move_0_1_0_0_holding_treasure_3) (possclob_move_0_1_0_0_holding_treasure_1) (openprec_move_1_0_0_0_bridge_0_0_1_0) (possclob_move_1_0_0_0_holding_treasure_2) (possclob_move_1_0_0_0_holding_treasure_3) (possclob_move_1_0_0_0_holding_treasure_1) (openprec_move_1_0_1_1_bridge_1_0_1_1) (openprec_move_1_1_1_0_bridge_1_0_1_1) (possclob_move_1_1_1_0_holding_treasure_2) (possclob_move_1_1_1_0_holding_treasure_3) (possclob_move_1_1_1_0_holding_treasure_1) (unlistedeffect_pickup_treasure2_holding_treasure_3) (valid) (done))

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
    (when (and (at_0_1) (valid)) (at_1_1))
    (when (and (at_0_1) (valid)) (not (at_0_1)))
    (when (not (and (at_0_1) (valid))) (not (valid)))
  )
 )

 (:action move_0_1_0_0
  :effect (and
    (when (and (at_0_1) (or (bridge_0_0_0_1) (not (openprec_move_0_1_0_0_bridge_0_0_0_1))) (valid)) (at_0_0))
    (when (and (at_0_1) (or (bridge_0_0_0_1) (not (openprec_move_0_1_0_0_bridge_0_0_0_1))) (valid)) (not (at_0_1)))
    (when (and (at_0_1) (or (bridge_0_0_0_1) (not (openprec_move_0_1_0_0_bridge_0_0_0_1))) (valid) (possclob_move_0_1_0_0_holding_treasure_2)) (not (holding_treasure_2)))
    (when (and (at_0_1) (or (bridge_0_0_0_1) (not (openprec_move_0_1_0_0_bridge_0_0_0_1))) (valid) (possclob_move_0_1_0_0_holding_treasure_3)) (not (holding_treasure_3)))
    (when (and (at_0_1) (or (bridge_0_0_0_1) (not (openprec_move_0_1_0_0_bridge_0_0_0_1))) (valid) (possclob_move_0_1_0_0_holding_treasure_1)) (not (holding_treasure_1)))
    (when (not (and (at_0_1) (or (bridge_0_0_0_1) (not (openprec_move_0_1_0_0_bridge_0_0_0_1))) (valid))) (not (valid)))
  )
 )

 (:action move_1_0_0_0
  :effect (and
    (when (and (at_1_0) (or (bridge_0_0_1_0) (not (openprec_move_1_0_0_0_bridge_0_0_1_0))) (valid)) (at_0_0))
    (when (and (at_1_0) (or (bridge_0_0_1_0) (not (openprec_move_1_0_0_0_bridge_0_0_1_0))) (valid)) (not (at_1_0)))
    (when (and (at_1_0) (or (bridge_0_0_1_0) (not (openprec_move_1_0_0_0_bridge_0_0_1_0))) (valid) (possclob_move_1_0_0_0_holding_treasure_2)) (not (holding_treasure_2)))
    (when (and (at_1_0) (or (bridge_0_0_1_0) (not (openprec_move_1_0_0_0_bridge_0_0_1_0))) (valid) (possclob_move_1_0_0_0_holding_treasure_3)) (not (holding_treasure_3)))
    (when (and (at_1_0) (or (bridge_0_0_1_0) (not (openprec_move_1_0_0_0_bridge_0_0_1_0))) (valid) (possclob_move_1_0_0_0_holding_treasure_1)) (not (holding_treasure_1)))
    (when (not (and (at_1_0) (or (bridge_0_0_1_0) (not (openprec_move_1_0_0_0_bridge_0_0_1_0))) (valid))) (not (valid)))
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
    (when (and (at_1_1) (valid)) (at_0_1))
    (when (and (at_1_1) (valid)) (not (at_1_1)))
    (when (not (and (at_1_1) (valid))) (not (valid)))
  )
 )

 (:action move_1_1_1_0
  :effect (and
    (when (and (at_1_1) (or (bridge_1_0_1_1) (not (openprec_move_1_1_1_0_bridge_1_0_1_1))) (valid)) (at_1_0))
    (when (and (at_1_1) (or (bridge_1_0_1_1) (not (openprec_move_1_1_1_0_bridge_1_0_1_1))) (valid)) (not (at_1_1)))
    (when (and (at_1_1) (or (bridge_1_0_1_1) (not (openprec_move_1_1_1_0_bridge_1_0_1_1))) (valid) (possclob_move_1_1_1_0_holding_treasure_2)) (not (holding_treasure_2)))
    (when (and (at_1_1) (or (bridge_1_0_1_1) (not (openprec_move_1_1_1_0_bridge_1_0_1_1))) (valid) (possclob_move_1_1_1_0_holding_treasure_3)) (not (holding_treasure_3)))
    (when (and (at_1_1) (or (bridge_1_0_1_1) (not (openprec_move_1_1_1_0_bridge_1_0_1_1))) (valid) (possclob_move_1_1_1_0_holding_treasure_1)) (not (holding_treasure_1)))
    (when (not (and (at_1_1) (or (bridge_1_0_1_1) (not (openprec_move_1_1_1_0_bridge_1_0_1_1))) (valid))) (not (valid)))
  )
 )

 (:action pickup_treasure1
  :effect (and
    (when (and (at_1_0) (valid)) (holding_treasure_1))
    (when (not (and (at_1_0) (valid))) (not (valid)))
  )
 )

 (:action pickup_treasure2
  :effect (and
    (when (and (at_1_1) (valid)) (holding_treasure_2))
    (when (and (at_1_1) (valid) (unlistedeffect_pickup_treasure2_holding_treasure_3)) (holding_treasure_3))
    (when (not (and (at_1_1) (valid))) (not (valid)))
  )
 )

 (:action pickup_treasure3
  :effect (and
    (when (and (at_0_1) (valid)) (holding_treasure_3))
    (when (not (and (at_0_1) (valid))) (not (valid)))
  )
 )

 (:action cpp_goal
  :precondition (and )
  :effect (when (and (at_0_0 ) (holding_treasure_1 ) (holding_treasure_2 ) (holding_treasure_3 ) (valid)) (done))
 )
)
