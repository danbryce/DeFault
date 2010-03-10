(define (domain Surprise)
(:requirements :fluents :incomplete-domain)

(:predicates (cleanH) (quiet) (dinner) (present) (garbOut) )

(:action cook
 :parameters ()
 :precondition (and (cleanH))
 :effect (and (dinner))
)

(:action wrap
 :parameters ()
 :precondition (and (quiet))
 :effect (and (present))
)

(:action carry
 :parameters ()
 :precondition (and )
 :effect (and (garbOut) (not (cleanH)))
)

(:action dolly
 :parameters ()
 :precondition (and )
 :effect (and (garbOut) (not (quiet)))
)

)