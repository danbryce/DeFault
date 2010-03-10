(define (domain Bridges)
 (:requirements :probabilistic-effects)
 (:predicates (bridge_0_2_0_3) (bridge_3_1_3_2) (at_3_2) (at_2_0) (at_3_3) (at_3_0) (at_3_1) (at_2_3) (at_2_1) (at_2_2) (holding_treasure_2) (holding_treasure_3) (holding_treasure_1) (bridge_3_2_3_3) (bridge_0_2_1_2) (bridge_0_0_1_0) (bridge_3_0_3_1) (bridge_1_3_2_3) (bridge_0_1_1_1) (at_1_0) (at_1_1) (at_0_3) (bridge_1_0_1_1) (bridge_0_3_1_3) (bridge_2_1_3_1) (at_0_1) (bridge_1_1_1_2) (at_0_2) (at_1_2) (at_1_3) (at_0_0) (openprec_move_0_0_1_0_bridge_0_0_1_0) (openprec_move_0_1_1_1_bridge_0_1_1_1) (openprec_move_0_2_1_2_bridge_0_2_1_2) (openprec_move_0_2_0_3_bridge_0_2_0_3) (openprec_move_0_3_1_3_bridge_0_3_1_3) (openprec_move_0_3_0_2_bridge_0_2_0_3) (openprec_move_1_0_0_0_bridge_0_0_1_0) (openprec_move_1_0_1_1_bridge_1_0_1_1) (openprec_move_1_1_0_1_bridge_0_1_1_1) (openprec_move_1_1_1_0_bridge_1_0_1_1) (openprec_move_1_1_1_2_bridge_1_1_1_2) (openprec_move_1_2_0_2_bridge_0_2_1_2) (openprec_move_1_2_1_1_bridge_1_1_1_2) (openprec_move_1_3_0_3_bridge_0_3_1_3) (openprec_move_1_3_2_3_bridge_1_3_2_3) (openprec_move_2_1_3_1_bridge_2_1_3_1) (openprec_move_2_3_1_3_bridge_1_3_2_3) (openprec_move_3_0_3_1_bridge_3_0_3_1) (openprec_move_3_1_2_1_bridge_2_1_3_1) (openprec_move_3_1_3_0_bridge_3_0_3_1) (openprec_move_3_1_3_2_bridge_3_1_3_2) (openprec_move_3_2_3_1_bridge_3_1_3_2) (openprec_move_3_2_3_3_bridge_3_2_3_3) (openprec_move_3_3_3_2_bridge_3_2_3_3) (valid) (done))

 (:action move_0_0_1_0
  :effect (and
    (when (and (at_0_0) (or (bridge_0_0_1_0) (not (openprec_move_0_0_1_0_bridge_0_0_1_0))) (valid)) (at_1_0))
    (when (and (at_0_0) (or (bridge_0_0_1_0) (not (openprec_move_0_0_1_0_bridge_0_0_1_0))) (valid)) (not (at_0_0)))
    (when (not (and (at_0_0) (or (bridge_0_0_1_0) (not (openprec_move_0_0_1_0_bridge_0_0_1_0))) (valid))) (not (valid)))
  )
 )

 (:action move_0_0_0_1
  :effect (and
    (when (and (at_0_0) (valid)) (at_0_1))
    (when (and (at_0_0) (valid)) (not (at_0_0)))
    (when (not (and (at_0_0) (valid))) (not (valid)))
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
    (when (and (at_0_1) (valid)) (at_0_0))
    (when (and (at_0_1) (valid)) (not (at_0_1)))
    (when (not (and (at_0_1) (valid))) (not (valid)))
  )
 )

 (:action move_0_1_0_2
  :effect (and
    (when (and (at_0_1) (valid)) (at_0_2))
    (when (and (at_0_1) (valid)) (not (at_0_1)))
    (when (not (and (at_0_1) (valid))) (not (valid)))
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
    (when (and (at_0_2) (valid)) (at_0_1))
    (when (and (at_0_2) (valid)) (not (at_0_2)))
    (when (not (and (at_0_2) (valid))) (not (valid)))
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

 (:action move_1_0_0_0
  :effect (and
    (when (and (at_1_0) (or (bridge_0_0_1_0) (not (openprec_move_1_0_0_0_bridge_0_0_1_0))) (valid)) (at_0_0))
    (when (and (at_1_0) (or (bridge_0_0_1_0) (not (openprec_move_1_0_0_0_bridge_0_0_1_0))) (valid)) (not (at_1_0)))
    (when (not (and (at_1_0) (or (bridge_0_0_1_0) (not (openprec_move_1_0_0_0_bridge_0_0_1_0))) (valid))) (not (valid)))
  )
 )

 (:action move_1_0_2_0
  :effect (and
    (when (and (at_1_0) (valid)) (at_2_0))
    (when (and (at_1_0) (valid)) (not (at_1_0)))
    (when (not (and (at_1_0) (valid))) (not (valid)))
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
    (when (and (at_1_1) (valid)) (at_2_1))
    (when (and (at_1_1) (valid)) (not (at_1_1)))
    (when (not (and (at_1_1) (valid))) (not (valid)))
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
    (when (and (at_1_2) (valid)) (at_2_2))
    (when (and (at_1_2) (valid)) (not (at_1_2)))
    (when (not (and (at_1_2) (valid))) (not (valid)))
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
    (when (and (at_1_2) (valid)) (at_1_3))
    (when (and (at_1_2) (valid)) (not (at_1_2)))
    (when (not (and (at_1_2) (valid))) (not (valid)))
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
    (when (and (at_1_3) (valid)) (at_1_2))
    (when (and (at_1_3) (valid)) (not (at_1_3)))
    (when (not (and (at_1_3) (valid))) (not (valid)))
  )
 )

 (:action move_2_0_1_0
  :effect (and
    (when (and (at_2_0) (valid)) (at_1_0))
    (when (and (at_2_0) (valid)) (not (at_2_0)))
    (when (not (and (at_2_0) (valid))) (not (valid)))
  )
 )

 (:action move_2_0_3_0
  :effect (and
    (when (and (at_2_0) (valid)) (at_3_0))
    (when (and (at_2_0) (valid)) (not (at_2_0)))
    (when (not (and (at_2_0) (valid))) (not (valid)))
  )
 )

 (:action move_2_0_2_1
  :effect (and
    (when (and (at_2_0) (valid)) (at_2_1))
    (when (and (at_2_0) (valid)) (not (at_2_0)))
    (when (not (and (at_2_0) (valid))) (not (valid)))
  )
 )

 (:action move_2_1_1_1
  :effect (and
    (when (and (at_2_1) (valid)) (at_1_1))
    (when (and (at_2_1) (valid)) (not (at_2_1)))
    (when (not (and (at_2_1) (valid))) (not (valid)))
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
    (when (and (at_2_1) (valid)) (at_2_0))
    (when (and (at_2_1) (valid)) (not (at_2_1)))
    (when (not (and (at_2_1) (valid))) (not (valid)))
  )
 )

 (:action move_2_1_2_2
  :effect (and
    (when (and (at_2_1) (valid)) (at_2_2))
    (when (and (at_2_1) (valid)) (not (at_2_1)))
    (when (not (and (at_2_1) (valid))) (not (valid)))
  )
 )

 (:action move_2_2_1_2
  :effect (and
    (when (and (at_2_2) (valid)) (at_1_2))
    (when (and (at_2_2) (valid)) (not (at_2_2)))
    (when (not (and (at_2_2) (valid))) (not (valid)))
  )
 )

 (:action move_2_2_3_2
  :effect (and
    (when (and (at_2_2) (valid)) (at_3_2))
    (when (and (at_2_2) (valid)) (not (at_2_2)))
    (when (not (and (at_2_2) (valid))) (not (valid)))
  )
 )

 (:action move_2_2_2_1
  :effect (and
    (when (and (at_2_2) (valid)) (at_2_1))
    (when (and (at_2_2) (valid)) (not (at_2_2)))
    (when (not (and (at_2_2) (valid))) (not (valid)))
  )
 )

 (:action move_2_2_2_3
  :effect (and
    (when (and (at_2_2) (valid)) (at_2_3))
    (when (and (at_2_2) (valid)) (not (at_2_2)))
    (when (not (and (at_2_2) (valid))) (not (valid)))
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
    (when (and (at_2_3) (valid)) (at_3_3))
    (when (and (at_2_3) (valid)) (not (at_2_3)))
    (when (not (and (at_2_3) (valid))) (not (valid)))
  )
 )

 (:action move_2_3_2_2
  :effect (and
    (when (and (at_2_3) (valid)) (at_2_2))
    (when (and (at_2_3) (valid)) (not (at_2_3)))
    (when (not (and (at_2_3) (valid))) (not (valid)))
  )
 )

 (:action move_3_0_2_0
  :effect (and
    (when (and (at_3_0) (valid)) (at_2_0))
    (when (and (at_3_0) (valid)) (not (at_3_0)))
    (when (not (and (at_3_0) (valid))) (not (valid)))
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
    (when (and (at_3_2) (valid)) (at_2_2))
    (when (and (at_3_2) (valid)) (not (at_3_2)))
    (when (not (and (at_3_2) (valid))) (not (valid)))
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
    (when (and (at_3_3) (valid)) (at_2_3))
    (when (and (at_3_3) (valid)) (not (at_3_3)))
    (when (not (and (at_3_3) (valid))) (not (valid)))
  )
 )

 (:action move_3_3_3_2
  :effect (and
    (when (and (at_3_3) (or (bridge_3_2_3_3) (not (openprec_move_3_3_3_2_bridge_3_2_3_3))) (valid)) (at_3_2))
    (when (and (at_3_3) (or (bridge_3_2_3_3) (not (openprec_move_3_3_3_2_bridge_3_2_3_3))) (valid)) (not (at_3_3)))
    (when (not (and (at_3_3) (or (bridge_3_2_3_3) (not (openprec_move_3_3_3_2_bridge_3_2_3_3))) (valid))) (not (valid)))
  )
 )

 (:action pickup_treasure1
  :effect (and
    (when (and (at_3_0) (valid)) (holding_treasure_1))
    (when (not (and (at_3_0) (valid))) (not (valid)))
  )
 )

 (:action pickup_treasure2
  :effect (and
    (when (and (at_3_3) (valid)) (holding_treasure_2))
    (when (not (and (at_3_3) (valid))) (not (valid)))
  )
 )

 (:action pickup_treasure3
  :effect (and
    (when (and (at_0_3) (valid)) (holding_treasure_3))
    (when (not (and (at_0_3) (valid))) (not (valid)))
  )
 )

 (:action cpp_goal
  :precondition (and )
  :effect (when (and (at_0_0 ) (holding_treasure_1 ) (holding_treasure_2 ) (holding_treasure_3 ) (valid)) (done))
 )
)
