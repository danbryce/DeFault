(define (problem TBDName)
 (:domain mable-control)
(:objects 
   c1 - target 
   EBEByFeedbackStrategy - strategy
   ByExample - nimdimension
   HowToDo - conceptdimension
   DefinitionOf - conceptdimension
   PredicatesByExampleStrategy - strategy
   FunctionsByExampleStrategy - strategy
   ByTelling - nimdimension
   ConditionWhenToCalculate - conceptdimension
   t0 - template
   HowToCalculate - conceptdimension
   SuspiciousTruck-code-interp - interpretation
   EBELearningStrategy - strategy
   ConditionEffectsOf - conceptdimension
   TellingOfConditionsStrategy - strategy
   SuspiciousTruck-syntax - target
   SuspiciousTruck-code - target
   ExampleOfProcedureStrategy - strategy
   ConditionWhenTrue - conceptdimension
   TellingOfProceduresStrategy - strategy
   ByFeedback - nimdimension
   t1 - template
   SuspiciousTruck-syntax-interp - interpretation
   PredicatesByFeedbackStrategy - strategy
   ByDefinition - conceptdimension
   NoticingSyntaxStrategy - strategy
   FunctionsByFeedbackStrategy - strategy
   mableNoticingSyntax - nimdimension
   ProcedureByFeedbackStrategy - strategy
   ConditionWhenToDo - conceptdimension
   TellingOfSyntaxStrategy - strategy
 )
(:init 
   (codeStrategy PredicatesByExampleStrategy)
   (interpretationForTarget SuspiciousTruck-syntax-interp SuspiciousTruck-syntax)
   (strategyCONCEPTDIMENSION NoticingSyntaxStrategy ConditionWhenToDo)
   (strategyNIMDIMENSION FunctionsByExampleStrategy ByExample)
   (codeStrategy FunctionsByExampleStrategy)
   (strategyCONCEPTDIMENSION TellingOfConditionsStrategy ConditionEffectsOf)
   (targetInTemplate SuspiciousTruck-code t0)
   (strategyCONCEPTDIMENSION FunctionsByExampleStrategy HowToCalculate)
   (strategyCONCEPTDIMENSION NoticingSyntaxStrategy ConditionWhenTrue)
   (strategyCONCEPTDIMENSION ExampleOfProcedureStrategy HowToDo)
   (strategyCONCEPTDIMENSION NoticingSyntaxStrategy HowToDo)
   (codeStrategy FunctionsByFeedbackStrategy)
   (strategyNIMDIMENSION ProcedureByFeedbackStrategy ByFeedback)
   (strategyNIMDIMENSION PredicatesByExampleStrategy ByExample)
   (untried NoticingSyntaxStrategy SuspiciousTruck-syntax ByTelling ConditionWhenTrue)
   (strategyCONCEPTDIMENSION FunctionsByFeedbackStrategy HowToCalculate)
   (conceptDimensionInTemplate ConditionWhenTrue t1)
   (codeStrategy PredicatesByFeedbackStrategy)
   (strategyCONCEPTDIMENSION ProcedureByFeedbackStrategy HowToDo)
   (strategyCONCEPTDIMENSION NoticingSyntaxStrategy ConditionWhenToCalculate)
   (strategyCONCEPTDIMENSION NoticingSyntaxStrategy DefinitionOf)
   (strategyCONCEPTDIMENSION TellingOfSyntaxStrategy DefinitionOf)
   (strategyCONCEPTDIMENSION NoticingSyntaxStrategy ConditionEffectsOf)
   (strategyNIMDIMENSION NoticingSyntaxStrategy mableNoticingSyntax)
   (untried TellingOfConditionsStrategy SuspiciousTruck-code ByTelling ConditionWhenTrue)
   (nimDimensionInTemplate ByTelling t1)
   (codeStrategy EBEByFeedbackStrategy)
   (strategyCONCEPTDIMENSION NoticingSyntaxStrategy ByDefinition)
   (strategyCONCEPTDIMENSION TellingOfProceduresStrategy HowToCalculate)
   (strategyCONCEPTDIMENSION EBEByFeedbackStrategy ConditionEffectsOf)
   (strategyNIMDIMENSION NoticingSyntaxStrategy ByTelling)
   (strategyNIMDIMENSION PredicatesByFeedbackStrategy ByFeedback)
   (strategyNIMDIMENSION TellingOfConditionsStrategy ByTelling)
   (targetInTemplate SuspiciousTruck-code t1)
   (interpretationForTarget SuspiciousTruck-code-interp SuspiciousTruck-code)
   (strategyNIMDIMENSION TellingOfProceduresStrategy ByTelling)
   (nimDimensionInTemplate ByTelling t0)
   (strategyCONCEPTDIMENSION PredicatesByFeedbackStrategy ConditionWhenTrue)
   (strategyNIMDIMENSION EBEByFeedbackStrategy ByFeedback)
   (codeStrategy ProcedureByFeedbackStrategy)
   (strategyCONCEPTDIMENSION NoticingSyntaxStrategy HowToCalculate)
   (strategyNIMDIMENSION EBELearningStrategy ByExample)
   (strategyCONCEPTDIMENSION TellingOfConditionsStrategy ConditionWhenTrue)
   (syntaxStrategy TellingOfSyntaxStrategy)
   (codeStrategy TellingOfProceduresStrategy)
   (strategyCONCEPTDIMENSION PredicatesByExampleStrategy ConditionWhenTrue)
   (strategyNIMDIMENSION TellingOfSyntaxStrategy ByTelling)
   (strategyCONCEPTDIMENSION TellingOfProceduresStrategy HowToDo)
   (strategyNIMDIMENSION ExampleOfProcedureStrategy ByExample)
   (strategyCONCEPTDIMENSION TellingOfConditionsStrategy ConditionWhenToDo)
   (syntaxStrategy NoticingSyntaxStrategy)
   (codeStrategy TellingOfConditionsStrategy)
   (syntaxStrategy TellingOfConditionsStrategy)
   (strategyCONCEPTDIMENSION EBELearningStrategy ConditionEffectsOf)
   (strategyNIMDIMENSION NoticingSyntaxStrategy ByExample)
   (codeStrategy EBELearningStrategy)
   (priorInterpretationForTarget SuspiciousTruck-syntax-interp SuspiciousTruck-syntax)
   (strategyNIMDIMENSION FunctionsByFeedbackStrategy ByFeedback)
   (codeStrategy ExampleOfProcedureStrategy)
   (conceptDimensionInTemplate ConditionWhenTrue t0)
   (strategyNIMDIMENSION NoticingSyntaxStrategy ByFeedback)
   (composedOf SuspiciousTruck-code c1)
   (composedOf SuspiciousTruck-code SuspiciousTruck-syntax)
   (learned c1)
 )
(:goal 
(and (learned SuspiciousTruck-syntax) (newlyLearned SuspiciousTruck-syntax) (learned SuspiciousTruck-code) (newlyLearned SuspiciousTruck-code))
 )
)