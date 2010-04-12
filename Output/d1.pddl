(define (domain translationbug)
 (:requirements :probabilistic-effects)
 (:predicates (t) (s) (r) (q) (p) (openprec_a1_r) (openprec_a1_q) (openprec_a2_r) (openprec_a2_q) (openprec_a2_p) (possclob_a2_r) (valid) (done))

 (:action a1
  :effect (and
    (when (and (or (r) (not (openprec_a1_r))) (or (q) (not (openprec_a1_q))) (valid)) (r))
    (when (not (and (or (r) (not (openprec_a1_r))) (or (q) (not (openprec_a1_q))) (valid))) (not (valid)))
  )
 )

 (:action a2
  :effect (and
    (when (and (or (r) (not (openprec_a2_r))) (or (q) (not (openprec_a2_q))) (or (p) (not (openprec_a2_p))) (valid)) (q))
    (when (and (or (r) (not (openprec_a2_r))) (or (q) (not (openprec_a2_q))) (or (p) (not (openprec_a2_p))) (valid) (possclob_a2_r)) (not (r)))
    (when (not (and (or (r) (not (openprec_a2_r))) (or (q) (not (openprec_a2_q))) (or (p) (not (openprec_a2_p))) (valid))) (not (valid)))
  )
 )

 (:action cpp_goal
  :precondition (and )
  :effect (when (and (r ) (q ) (valid)) (done))
 )
)
