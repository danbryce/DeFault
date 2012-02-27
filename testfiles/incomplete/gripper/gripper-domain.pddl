; Gripper domain from the AIPS-98 planning competition.

(define (domain gripper-strips)
  (:predicates (room ?r)
	       (ball ?b)
	       (gripper ?g)
	       (at_robby ?r)
	       (atb ?b ?r)
	       (tildep)
	       (carry ?o ?g))
  (:action move
	   :parameters (?from ?to)
	   :precondition (and  (room ?from) (room ?to) )
	   :poss-precondition (at_robby ?from)
	   :effect (and  (at_robby ?to) )
	   :poss-effect (and (not (at_robby ?from))  (at_robby ?from)))
	   
  (:action pick
	   :parameters (?obj ?room ?gripper)
	   :precondition (and (ball ?obj) (room ?room) (gripper ?gripper)
			      (atb ?obj ?room) )
	   :poss-precondition (and (at_robby ?room) (tildep) (carry ?obj ?gripper))
	   :effect (and (carry ?obj ?gripper) )
	   :poss-effect (and (not (atb ?obj ?room)) (tildep) (not (carry ?obj ?gripper))
			(not (tildep)) (atb ?obj ?room)))
			
  (:action drop
	   :parameters (?obj ?room ?gripper)
	   :precondition (and (ball ?obj) (room ?room) (gripper ?gripper)
			       (at_robby ?room))
	   :poss-precondition (and (carry ?obj ?gripper) (tildep) (atb ?obj ?room))
	   :effect (and (atb ?obj ?room) )
	   :poss-effect (and (tildep) (carry ?obj ?gripper) (not (atb ?obj ?room)) 
			(not (tildep)) (not (carry ?obj ?gripper)))	
			)
		
			)
