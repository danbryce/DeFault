(define (problem blocks1)
    (:domain Blocks)
    (:objects a b c)
    (:init (ontable a)
	   (on b a)
           (on c b)
	   (clear c)
	   (handempty)
    )

	;;Eight steps maybe
    (:goal (and (ontable b) (on a b) (on c a)))
    
    ;; 4 steps
    ;;(:goal (and (ontable c) (ontable b) (ontable a)))

    ;; 2 steps
    ;;(:goal (and (ontable c) (on b a) (ontable a)))
    
    (:metric minimize total-time)
)
