;; jrobertson
;; Used with blocks.pddl
;; 
;; Solvable in 4 steps

(define (problem blocks1)
    (:domain Blocks)
    (:objects a b c d e f g h i j k l m n o)
    (:init (ontable a)
	   (on b a)
	   (on c b)
	   (on d c)
	   (on e d)
	   (on f e)
	   (on g f)
	   (on h g)
	   (on i h)
	   (on j i)
	   (on k j)
	   (on l k)
	   (on m l)
	   (on n m)
	   (on o n)
	   (clear o)
	   (handempty)
    )

	(:goal (and (ontable o) (on n o) (on m n) (on l m) (on k l) (on j k) (on i j) (on h i) (on g h) (on f g) (on e f) (on d e) (on c d) (on b c) (on a b)))

    (:metric minimize total-time)
)
