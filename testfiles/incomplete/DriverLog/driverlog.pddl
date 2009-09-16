(define (domain driverlog)
  (:requirements :typing) 
  (:types         location locatable - object
		driver truck obj - locatable
  
  )
  (:predicates 
		(atLocation ?obj - locatable ?loc - location)
		(in ?obj1 - obj ?obj - truck)
		(driving ?d - driver ?v - truck)
		(link ?x ?y - location) (path ?x ?y - location)
		(empty ?v - truck)
		(okay ?v - truck)
		
)


(:action LOAD-TRUCK
  :parameters
   (?obj - obj
    ?truck - truck
    ?loc - location)
  :precondition
   (and (atLocation ?truck ?loc) (atLocation ?obj ?loc))
  :effect
   (and (not (atLocation ?obj ?loc)) (in ?obj ?truck)))

(:action UNLOAD-TRUCK
  :parameters
   (?obj - obj
    ?truck - truck
    ?loc - location)
  :precondition
   (and (atLocation ?truck ?loc) (in ?obj ?truck))
  :effect
   (and (not (in ?obj ?truck)) (atLocation ?obj ?loc)))

(:action BOARD-TRUCK
  :parameters
   (?driver - driver
    ?truck - truck
    ?loc - location)
  :precondition
   (and (atLocation ?truck ?loc) (atLocation ?driver ?loc) (empty ?truck) )
  :effect
   (and (not (atLocation ?driver ?loc)) (driving ?driver ?truck) )
  :poss-effect (and (not (empty ?truck)))
   )

(:action DISEMBARK-TRUCK
  :parameters
   (?driver - driver
    ?truck - truck
    ?loc - location)
  :precondition
   (and (atLocation ?truck ?loc) (driving ?driver ?truck))
  :effect
   (and (not (driving ?driver ?truck)) (atLocation ?driver ?loc) )
  :poss-effect (and (empty ?truck))
   )

(:action DRIVE-TRUCK
  :parameters
   (?truck - truck
    ?loc-from - location
    ?loc-to - location
    ?driver - driver)
  :precondition
   (and (atLocation ?truck ?loc-from)
   (driving ?driver ?truck) (link ?loc-from ?loc-to) (okay ?truck))
  :effect
   (and (not (atLocation ?truck ?loc-from)) (atLocation ?truck ?loc-to))
  :poss-effect (and (not (okay ?truck))) 
   )

 (:action REPAIR-TRUCK
 :parameters
   (?truck - truck
    ?driver - driver)
  :precondition
   (and 
   (driving ?driver ?truck)(okay ?truck))
  :effect
   (and)
  :poss-effect (and (okay ?truck)) 
   )
(:action WALK
  :parameters
   (?driver - driver
    ?loc-from - location
    ?loc-to - location)
  :precondition
   (and (atLocation ?driver ?loc-from) (path ?loc-from ?loc-to))
  :effect
   (and (not (atLocation ?driver ?loc-from)) (atLocation ?driver ?loc-to)))

 
)
