(define (domain RoverIncomplete)
(:requirements :fluents :typing)
(:types rover waypoint store camera mode lander objective)

(:predicates (at_location ?x - rover ?y - waypoint) 
             (at_lander ?x - lander ?y - waypoint)
             (can_traverse ?r - rover ?x - waypoint ?y - waypoint)
	     (equipped_for_soil_analysis ?r - rover)
             (equipped_for_rock_analysis ?r - rover)
             (equipped_for_imaging ?r - rover)
             (empty ?s - store)
             (have_rock_analysis ?r - rover ?w - waypoint)
             (have_soil_analysis ?r - rover ?w - waypoint)
             (full ?s - store)
	     (calibrated ?c - camera ?r - rover) 
	     (supports ?c - camera ?m - mode)
             (visible ?w - waypoint ?p - waypoint)
             (have_image ?r - rover ?o - objective ?m - mode)
             (communicated_soil_data ?w - waypoint)
             (communicated_rock_data ?w - waypoint)
             (communicated_image_data ?o - objective ?m - mode)
	     (at_soil_sample ?w - waypoint)
	     (at_rock_sample ?w - waypoint)
             (visible_from ?o - objective ?w - waypoint)
	     (store_of ?s - store ?r - rover)
	     (calibration_target ?i - camera ?o - objective)
	     (on_board ?i - camera ?r - rover)

)

	
(:action navigate
:parameters (?c - camera ?x - rover ?y - waypoint ?z - waypoint) 
:precondition (and (can_traverse ?x ?y ?z) (at_location ?x ?y) (visible ?y ?z))
:effect (and (not (at_location ?x ?y)) (at_location ?x ?z))
:poss-effect (and (not (calibrated ?c ?x)))
)

(:action sample_soil
:parameters (?c - camera ?x - rover ?s - store ?p - waypoint)
:precondition (and (at_location ?x ?p) (at_soil_sample ?p) (equipped_for_soil_analysis ?x) (store_of ?s ?x) (empty ?s)
		)
:effect (and (not (empty ?s)) (full ?s) (have_soil_analysis ?x ?p) (not (at_soil_sample ?p))
		)
:poss-effect (and (not (calibrated ?c ?x)))
)

(:action sample_rock
:parameters (?c - camera ?x - rover ?s - store ?p - waypoint)
:precondition (and (at_location ?x ?p) (at_rock_sample ?p) (equipped_for_rock_analysis ?x) (store_of ?s ?x)(empty ?s)
		)
:effect (and (not (empty ?s)) (full ?s) (have_rock_analysis ?x ?p) (not (at_rock_sample ?p))
		)
:poss-effect (and (not (calibrated ?c ?x)))
)

(:action drop
:parameters (?x - rover ?y - store)
:precondition (and (store_of ?y ?x) (full ?y)
		)
:effect (and (not (full ?y)) (empty ?y)
	)
)

(:action calibrate
 :parameters (?r - rover ?i - camera ?t - objective ?w - waypoint)
 :precondition (and (equipped_for_imaging ?r) (calibration_target ?i ?t) (at_location ?r ?w) (visible_from ?t ?w)(on_board ?i ?r)
		)
 :effect (calibrated ?i ?r) 
)




(:action take_image
 :parameters (?r - rover ?p - waypoint ?o - objective ?i - camera ?m - mode)
 :precondition (and (calibrated ?i ?r)
			 (on_board ?i ?r)
                      (equipped_for_imaging ?r)
                      (supports ?i ?m)
			  (visible_from ?o ?p)
                     (at_location ?r ?p)
               )
 :effect (and (have_image ?r ?o ?m)(not (calibrated ?i ?r))
		)
)


(:action communicate_soil_data
 :parameters (?r - rover ?l - lander ?p - waypoint ?x - waypoint ?y - waypoint)
 :precondition (and (at_location ?r ?x)(at_lander ?l ?y)(have_soil_analysis ?r ?p) 
            )
 :poss-precondition (and (visible ?x ?y))
 :effect (and (communicated_soil_data ?p)
	)
)

(:action communicate_rock_data
 :parameters (?r - rover ?l - lander ?p - waypoint ?x - waypoint ?y - waypoint)
 :precondition (and (at_location ?r ?x)(at_lander ?l ?y)(have_rock_analysis ?r ?p)
            )
 :poss-precondition (and (visible ?x ?y))
 :effect (and (communicated_rock_data ?p)
          )
)


(:action communicate_image_data
 :parameters (?r - rover ?l - lander ?o - objective ?m - mode ?x - waypoint ?y - waypoint)
 :precondition (and (at_location ?r ?x)(at_lander ?l ?y)(have_image ?r ?o ?m)
            )
 :poss-precondition (and (visible ?x ?y))
 :effect (and (communicated_image_data ?o ?m)
          )
)

)
