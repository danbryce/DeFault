(define (domain mable-control)
 (:types target - object
 		 codetarget syntaxtarget - target 
 		 template - object
 		 nimdimension - object
 		 strategy - object
 		 uberstrategy syntaxstrategy codestrategy - strategy 
 		 interpretation - object
 		 conceptdimension - object
 		 )
 (:predicates

   (interpretationForTarget ?i - interpretation ?tc - target)
   (priorInterpretationForTarget ?i - interpretation ?tc - target)
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
   (target ?t - target)
 ;  (syntaxTarget ?t - target)
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
  
  (:action checkAllButSyntaxPrequisiteLearned
   :parameters (?tc - codetarget 
   				?sc - syntaxtarget
   				)
   :precondition (and (composedOf ?tc ?sc)
   					  (forall (?tc1 - codetarget)
   					          (imply (composedOf ?tc ?tc1) 
   					          		 (learned ?tc1)
   					          )
   					   )
   				 )
   :effect (and (havePrerequisitesCIs ?tc))
   )
  
  (:action invokeCodeStrategyOnTemplate
   :parameters (?c  - interpretation
                ?tc - codetarget
   				?t - template
                ?n - nimdimension
                ?s - codestrategy
                ?cd - conceptdimension
                )
   :precondition (and 
   					  (interpretationForTarget ?c ?tc)
   					  (targetInTemplate ?tc ?t)  	
   					  (strategyNIMDIMENSION ?s ?n)
   					  (nimDimensionInTemplate ?n ?t)
   					  (conceptDimensionInTemplate ?cd ?t)
   					  (strategyCONCEPTDIMENSION ?s ?cd)
   					  (havePrerequisitesCIs ?tc)				     					  
   					  (untried ?s ?tc ?n ?cd)
   					  )
   :effect (and (not (untried ?s ?tc ?n ?cd)))
   :poss-effect (and (learnedInterpretation ?c ?tc)
   				;(not (newDefCode ?c))
   				)
   )
   
   (:action invokeSyntaxStrategyOnTemplate
   :parameters (?c  - interpretation
                ?tc - syntaxtarget
                ?t - template
   				?s - syntaxstrategy
                ?n - nimdimension
                ?cd - conceptdimension
                )
   :precondition (and 
   					  (interpretationForTarget ?c ?tc)
   					  (targetInTemplate ?tc ?t)
   					  (strategyNIMDIMENSION ?s ?n)
   					  (nimDimensionInTemplate ?n ?t)
   					  (conceptDimensionInTemplate ?cd ?t)
  					  (strategyCONCEPTDIMENSION ?s ?cd)
   					  (untried ?s ?tc ?n ?cd)
   					  (havePrerequisitesCIs ?tc)
   					  )
   :effect (and (not (untried ?s ?tc ?n ?cd)))
   :poss-effect (and (learnedInterpretation ?c ?tc)
   				)
   )

   (:action invokeSyntaxAndCodeStrategyOnTemplate
   :parameters (?c1  - interpretation
                ?c2  - interpretation  
                ?tc1 - syntaxtarget
                ?tc2 - codetarget
                ?t - template
   				?s - uberstrategy
                ?n - nimdimension
                ?cd - conceptdimension
                )
   :precondition (and 		  
   					  (composedOf ?tc2 ?tc1)
   					  (nimDimensionInTemplate ?n ?t)
   					  (strategyNIMDIMENSION ?s ?n)
   					  (interpretationForTarget ?c1 ?tc1)
   					  (interpretationForTarget ?c2 ?tc2)
   					  (conceptDimensionInTemplate ?cd ?t)
  					  (strategyCONCEPTDIMENSION ?s ?cd)
   					  (targetInTemplate ?tc2 ?t)
   					  (untried ?s ?tc1 ?n ?cd)
   					  (untried ?s ?tc2 ?n ?cd)
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
