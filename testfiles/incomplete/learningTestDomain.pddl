(define (domain learningTest)
 (:predicates
 	(p)
 	(q)
 	(r)
 	)
 	
 	(:action a1
 	 :parameters ()
 	 :precondition (and)
 	 :poss-precondition (and (r) (p))
 	 :effect (and (not (r)))
 	 :poss-effect (and (q))
 	 )
 	; (:action a2
 	;  :parameters ()
 	;  :precondition (and)
 	;  :effect (q)
 	;  )
 	 )