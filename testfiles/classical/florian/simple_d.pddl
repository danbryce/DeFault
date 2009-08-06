(define (domain simple-Prob)
    (:predicates 	
        (isOn ?Lamp)
;        (isOff ?Lamp)
        (isLamp ?Lamp)
    )

    (:action LightOn
        :parameters (?Lamp)
        :precondition (and (isLamp ?Lamp) (not (isOn ?Lamp)))
;        :precondition (and (isLamp ?Lamp) (isOff ?Lamp))
        :effect (isOn ?Lamp)
    )

    (:action LightOff
        :parameters (?Lamp)
        :precondition (and (isLamp ?Lamp) (isOn ?Lamp))
        :effect (not (isOn ?Lamp))
;        :effect (isOff ?Lamp))
    )
)
