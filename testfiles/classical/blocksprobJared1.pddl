;; jrobertson
;; Used with blocks.pddl
;; 
;; Goals are contained in the initial state

(define (problem blocks1)
    (:domain Blocks)
    (:objects a b c)
    (:init (ontable a)
	   (on b a)
           (on c b)
	   (clear c)
	   (handempty)
    )

	(:goal (and (ontable a) (on b a) (on c b) (clear c) (handempty)))

    (:metric minimize total-time)
)
