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
   (and  (not (atLocation ?truck ?loc-from)) (atLocation ?truck ?loc-to))
  :poss-effect (and (not (okay ?truck))) 
   )



 
)
