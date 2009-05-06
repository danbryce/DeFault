(define (problem presentation1)
    (:domain simple-Prob)
    (:objects 
            Lamp1 Lamp2
    )
    (:init
        (isOn Lamp1)
        (isLamp Lamp1)
        (isLamp Lamp2)
    )
    (:goal (and
        (isOn Lamp2)
        (not (isOn Lamp1))
    ))
)
