;; jrobertson
;; Used with blocks.pddl
;; 
;; Solvable in 4 steps

(define (problem blocks1)
    (:domain Blocks)
    (:objects a b c d e f g)
    (:init (ontable a)
	   (on b a)
	   (on c b)
	   (on d c)
	   (on e d)
	   (on f e)
	   (on g f)
	   (clear g)
	   (handempty)
    )

	(:goal (and (ontable g) (on f g) (on e f) (on d e) (on c d) (on b c) (on a b)))

    (:metric minimize total-time)
)
