(define (domain gripper-typed)
   (:requirements :typing)
   (:types room ball gripper)
   (:constants left right - gripper)
   (:predicates (at-robby ?r - room)
                (atloc ?b - ball ?r - room)
                (free ?g - gripper)
                (carry ?o - ball ?g - gripper)
				(hasPower))
   (:action move
      :parameters (?from ?to - room)
      :precondition (and (at-robby ?from) (hasPower))
      :effect (and (at-robby ?to)
                   (not (at-robby ?from))))
   (:action pick
      :parameters (?obj - ball ?room - room ?gripper - gripper)
      :precondition (and (atloc ?obj ?room) (at-robby ?room) (free ?gripper) (hasPower))
      :effect (and (carry ?obj ?gripper)
                   (not (atloc ?obj ?room))
                   (not (free ?gripper))))
   (:action drop
      :parameters (?obj - ball ?room - room ?gripper - gripper)
      :precondition (and (at-robby ?room) (carry ?obj ?gripper))
      :effect (and (free ?gripper)
                   (atloc ?obj ?room)
                   (not (carry ?obj ?gripper))))
)