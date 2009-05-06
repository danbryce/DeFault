(define (domain Blocks)
(:requirements :fluents)

(:predicates (handempty)
	     (clear ?b)
	     (on ?a ?b)
	     ;(ontable ?b)
	     (holding ?z)
	     (block ?b)
	     (table ?q)
            )

(:action pickup
 :parameters (?b ?x)
 :precondition (and (block ?b) (table ?x) (handempty) (on ?b ?x) (clear ?b))
 :effect (and (holding ?b)
              (not (handempty))
              (not (on ?b ?x))
              (not (clear ?b))))

(:action putdown
 :parameters (?b ?t)
 :precondition (and (holding ?b) (block ?b) (table ?t))
 :effect (and (handempty)
              (on ?b ?t)
              (clear ?b)
              (not (holding ?b))))

(:action stack
 :parameters (?x ?y)
 :precondition (and (block ?x) (block ?y) (holding ?x) (clear ?y))
 :effect (and (on ?x ?y)
              (handempty)
              (clear ?x)
              (not (holding ?x))
              (not (clear ?y))))

(:action unstack
 :parameters (?x ?y)
 :precondition (and (block ?x) (block ?y) (clear ?x) (on ?x ?y) (handempty))
 :effect (and (clear ?y)
              (holding ?x)
              (not (clear ?x))
              (not (on ?x ?y))
              (not (handempty))))

)
