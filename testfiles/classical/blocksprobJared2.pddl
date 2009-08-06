;; jrobertson
;; Used with blocks.pddl
;; 
;; Solvable in 2 steps

(define (problem blocks1)
    (:domain Blocks)
    (:objects a b)
    (:init (ontable a)
	   (on b a)
	   (clear b)
	   (handempty)
    )

	(:goal (and (ontable a) (ontable b)))

    (:metric minimize total-time)
)
