(define (domain mable-control)
 (:types target - object
 		 template - object
 		 nimdimension - object
 		 strategy - object
 		 syntaxstrategy codestrategy - strategy
 		 interpretation - object
 		 conceptdimension - object )
 (:predicates

   (interpretationForTarget ?i - interpretation ?tc - target)
   (priorInterpretationForTarget ?i - interpretation ?tc - target)
   (interpretationForTarget ?i - interpretation ?tc - target) ;;earmarked, but unlearned interpretation for target
   (learnedInterpretation ?i - interpretation ?tc - target)

   (targetCONCEPTDIMENSION ?tc - target ?d - conceptdimension)
   (strategyNIMDIMENSION ?s - strategy ?n - nimdimension)
   (strategyCONCEPTDIMENSION ?s - strategy ?c - conceptdimension)
 
   (nimDimensionInTemplate ?n - nimdimension ?t - template)
   (conceptDimensionInTemplate ?c - conceptdimension ?t - template)
   (targetInTemplate ?tc - target ?t - template)
   
    
   (composedOf ?tc ?tc1 - target)
   (learned ?tc - target)
   (newlyLearned ?tc - target)
   (havePrerequisitesCIs ?tc - target)
 
;   (codeStrategy ?s - strategy)
;   (syntaxStrategy ?s - strategy)
   (codeTarget ?t - target)
   (syntaxTarget ?t - target)
   (untried ?s - strategy ?tc - target ?nim - nimdimension ?cd - conceptdimension) ;;indicates if tried strategy on target !!Not contextual, need to generalize!!
 )
  
   
  (:action checkPrerequisitesLearned
   :parameters (?tc - target)
   :precondition (and (forall (?tc1 - target)
                              (imply (composedOf ?tc ?tc1) 
                                       (learned ?tc1)
                              )
                      ) 
   				 )
   :effect (and (havePrerequisitesCIs ?tc))
  )
  
  (:action invokeCodeStrategyOnTemplate
   :parameters (?s - codestrategy
                ?t - template
                ?n - nimdimension
                ?cd - conceptdimension
                ?c  - interpretation
                ?tc - target
                )
   :precondition (and 
   					  ;(codeStrategy ?s)					  
   					  (interpretationForTarget ?c ?tc)
   					  (nimDimensionInTemplate ?n ?t)
   					  (strategyNIMDIMENSION ?s ?n)
   					  (conceptDimensionInTemplate ?cd ?t)
   					  (strategyCONCEPTDIMENSION ?s ?cd)
   					  (untried ?s ?tc ?n ?cd)
   					  (targetInTemplate ?tc ?t)  	
   					  (havePrerequisitesCIs ?tc)				     					  
   					  )
   :effect (and (not (untried ?s ?tc ?n ?cd)))
   :poss-effect (and (learnedInterpretation ?c ?tc)
   				;(not (newDefCode ?c))
   				)
   )
   
   (:action invokeSyntaxStrategyOnTemplate
   :parameters (?s - syntaxstrategy
                ?t - template
                ?n - nimdimension
                ?cd - conceptdimension
                ?c  - interpretation
                ?tc - target
                )
   :precondition (and ;(syntaxStrategy ?s)
   					  (interpretationForTarget ?c ?tc)
   					  (nimDimensionInTemplate ?n ?t)
   					  (strategyNIMDIMENSION ?s ?n)
   					  (conceptDimensionInTemplate ?cd ?t)
  					  (strategyCONCEPTDIMENSION ?s ?cd)
   					  (untried ?s ?tc ?n ?cd)
   					  (targetInTemplate ?tc ?t)
   					  (havePrerequisitesCIs ?tc)
   					  )
   :effect (and (not (untried ?s ?tc ?n ?cd)))
   :poss-effect (and (learnedInterpretation ?c ?tc)
   				)
   )

   (:action invokeSyntaxAndCodeStrategyOnTemplate
   :parameters (?s - strategy
                ?t - template
                ?n - nimdimension
                ?cd - conceptdimension
                ?c1  - interpretation
                ?c2  - interpretation  
                ?tc1 - target
                ?tc2 - target
                )
   :precondition (and ;(syntaxStrategy ?s)
   					  ;(codeStrategy ?s)			  
   					  (nimDimensionInTemplate ?n ?t)
   					  (strategyNIMDIMENSION ?s ?n)
   					  (interpretationForTarget ?c1 ?tc1)
   					  (interpretationForTarget ?c2 ?tc2)
   					  (conceptDimensionInTemplate ?cd ?t)
  					  (strategyCONCEPTDIMENSION ?s ?cd)
   					  (untried ?s ?tc1 ?n ?cd)
   					  (untried ?s ?tc2 ?n ?cd)
   					  (targetInTemplate ?tc1 ?t)
   					  (havePrerequisitesCIs ?tc1)
   					  (havePrerequisitesCIs ?tc2)
   					  )
   :effect (and (not (untried ?s ?tc1 ?n ?cd))(not (untried ?s ?tc2 ?n ?cd)))
   :poss-effect (and (learnedInterpretation ?c1 ?tc1)
   				;(not (newDefSyntax ?c1))
   				(learnedInterpretation ?c2 ?tc2)
   				;(not (newDefCode ?c2))
   				)
   )
   
   (:action reusePrior
    :parameters (?tc - target  ?c - interpretation)
    :precondition (and  (priorInterpretationForTarget ?c ?tc)
 				   )
 	:effect (and )
    :poss-effect (and (learned ?tc))
   )
   
   (:action satisfyTarget
    :parameters (?tc - target ?c - interpretation)
    :precondition (and  (interpretationForTarget ?c ?tc)
    					(learnedInterpretation ?c ?tc))
    :effect (and (newlyLearned ?tc) 
    			 (learned ?tc))
   )


)
