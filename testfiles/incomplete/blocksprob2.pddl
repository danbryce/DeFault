(define (problem blocks1)
    (:domain Blocks)
    (:objects a b)
    (:init (ontable a)
	   (on b a)
	   (clear b)
	   (handempty)
    )

    (:goal (and (ontable b) (on a b)))
    
    (:metric minimize total-time)
)
