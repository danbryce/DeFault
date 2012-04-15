; Gripper domain from the AIPS-98 planning competition.

(define (domain gripper-strips)
  (:predicates (room ?r)
	       (ball ?b)
	       (gripper ?g)
	       (at_robby ?r)
	       (atb ?b ?r)
	       (free ?g)
	       (carry ?o ?g))
  (:action move
	   :parameters (?from ?to)
	   :precondition (and  (room ?from) (room ?to) )
	   :poss-precondition (at_robby ?from)
	   :effect (and  (at_robby ?to) )
	   :poss-effect (and (not (at_robby ?from))  ))
	   
  (:action pick
	   :parameters (?obj ?room ?gripper)
	   :precondition (and (ball ?obj) (room ?room) (gripper ?gripper)
			      (atb ?obj ?room) )
	   :poss-precondition (and (at_robby ?room) (free ?gripper) )
	   :effect (and (carry ?obj ?gripper) )
	   :poss-effect (and (not (atb ?obj ?room)) (not (free ?gripper)) ))
			
  (:action drop
	   :parameters (?obj ?room ?gripper)
	   :precondition (and (ball ?obj) (room ?room) (gripper ?gripper)
			       (at_robby ?room))
	   :poss-precondition (and (carry ?obj ?gripper))
	   :effect (and (atb ?obj ?room) )
	   :poss-effect (and (free ?gripper)  (not (carry ?obj ?gripper)))	
			)
		
			)
