(define (domain Depot)
(:requirements :typing)
(:types place locatable - object
	depot distributor - place
        truck hoist surface - locatable
        pallet crate - surface)

(:predicates (at_location ?x - locatable ?y - place) 
             (on ?x - crate ?y - surface)
             (in ?x - crate ?y - truck)
             (lifting ?x - hoist ?y - crate)
             (clear ?x - surface)
             (empty ?y - truck)
	     (heavy ?y - crate)
	     (light ?y - crate)
	     (broken ?y - truck)
	     (okay ?y - truck)
)
	
(:action Drive_empty
:parameters (?x - truck ?y - place ?z - place) 
:precondition (and (at_location ?x ?y) (empty ?x))
:poss-precondition (and (okay ?x))
:effect (and (at_location ?x ?z) (not (at_location ?x ?y))))

(:action Drive_heavy
:parameters (?x - truck ?y - place ?z - place ?c - crate) 
:precondition (and (at_location ?x ?y) (okay ?x) (heavy ?c) (in ?c ?x))
:effect (and (at_location ?x ?z) (not (at_location ?x ?y)))
:poss-effect (and (broken ?x) (not (okay ?x)))
)

(:action Drive_light
:parameters (?x - truck ?y - place ?z - place ?c - crate) 
:precondition (and (at_location ?x ?y) (okay ?x) (light ?c) (in ?c ?x))
:effect (and (at_location ?x ?z) (not (at_location ?x ?y)))
:poss-effect (and (broken ?x) (not (okay ?x)))
)


(:action Lift
:parameters (?x - hoist ?y - crate ?z - surface ?p - place)
:precondition (and (at_location ?x ?p) (at_location ?y ?p) (on ?y ?z) (clear ?y))
:effect (and (not (at_location ?y ?p)) (lifting ?x ?y) (not (clear ?y)) 
             (clear ?z) (not (on ?y ?z))))

(:action Drop 
:parameters (?x - hoist ?y - crate ?z - surface ?p - place)
:precondition (and (at_location ?x ?p) (at_location ?z ?p) (clear ?z) (lifting ?x ?y))
:effect (and (not (lifting ?x ?y)) (at_location ?y ?p) (not (clear ?z)) (clear ?y)
		 (not (at_location ?x ?p)) (on ?y ?z)))


(:action Load
:parameters (?x - hoist ?y - crate ?z - truck ?p - place)
:precondition (and (at_location ?x ?p) (at_location ?z ?p) (lifting ?x ?y) (empty ?z))
:effect (and (not (lifting ?x ?y)) (in ?y ?z) (not (empty ?z))))

(:action Unload 
:parameters (?x - hoist ?y - crate ?z - truck ?p - place)
:precondition (and (at_location ?x ?p) (at_location ?z ?p) (in ?y ?z))
:effect (and (not (in ?y ?z)) (lifting ?x ?y) (empty ?z)))

)
