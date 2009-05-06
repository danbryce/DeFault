(define (problem blocks1)
    (:domain Blocks)
    (:objects a b c t)
    (:init 
      (block a)
      (block b)
      (block c)
      (table t)
	   (on a t)
	   (on b a)
           (on c b)
	   (clear c)
	   (handempty)
    )

    (:goal (and (on b t) (on a b) (on c a)))

    (:metric minimize total-time)
)
