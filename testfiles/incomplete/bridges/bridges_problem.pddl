(define (problem bridges)
    (:domain Bridges)

    (:init (at_x0) (at_y0))

    (:goal
     (and
      (holding_treasure_1)
      (holding_treasure_2)
      (holding_treasure_3)
     )
    )
)