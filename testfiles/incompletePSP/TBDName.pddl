(define (problem TBDName)
 (:domain mable-control)
(:objects 
   EBEByFeedbackStrategy
   ByExample
   HowToDo
   DefinitionOf
   PredicatesByExampleStrategy
   FunctionsByExampleStrategy
   ByTelling
   ConditionWhenToCalculate
   t0
   HowToCalculate
   SuspiciousTruck-code
   EBELearningStrategy
   ConditionEffectsOf
   TellingOfConditionsStrategy
   SuspiciousTruck
   ExampleOfProcedureStrategy
   ConditionWhenTrue
   TellingOfProceduresStrategy
   ByFeedback
   t1
   SuspiciousTruck-syntax
   PredicatesByFeedbackStrategy
   ByDefinition
   NoticingSyntaxStrategy
   FunctionsByFeedbackStrategy
   mableNoticingSyntax
   ProcedureByFeedbackStrategy
   ConditionWhenToDo
   TellingOfSyntaxStrategy
 )
(:init 
   (CONCEPTDIMENSION ConditionWhenTrue)
   (codeStrategy PredicatesByExampleStrategy)
   (TARGETCONCEPT SuspiciousTruck)
   (interpretationForTarget SuspiciousTruck-syntax SuspiciousTruck)
   (strategyCONCEPTDIMENSION NoticingSyntaxStrategy ConditionWhenToDo)
   (strategyNIMDIMENSION FunctionsByExampleStrategy ByExample)
   (codeStrategy FunctionsByExampleStrategy)
   (strategyCONCEPTDIMENSION TellingOfConditionsStrategy ConditionEffectsOf)
   (targetInTemplate SuspiciousTruck t0)
   (strategyCONCEPTDIMENSION FunctionsByExampleStrategy HowToCalculate)
   (strategyCONCEPTDIMENSION NoticingSyntaxStrategy ConditionWhenTrue)
   (strategyCONCEPTDIMENSION ExampleOfProcedureStrategy HowToDo)
   (strategyCONCEPTDIMENSION NoticingSyntaxStrategy HowToDo)
   (TEMPLATE t0)
   (codeStrategy FunctionsByFeedbackStrategy)
   (strategyNIMDIMENSION ProcedureByFeedbackStrategy ByFeedback)
   (strategyNIMDIMENSION PredicatesByExampleStrategy ByExample)
   (untried NoticingSyntaxStrategy SuspiciousTruck ByTelling ConditionWhenTrue)
   (CODE SuspiciousTruck-code)
   (strategyCONCEPTDIMENSION FunctionsByFeedbackStrategy HowToCalculate)
   (conceptDimensionInTemplate ConditionWhenTrue t1)
   (codeStrategy PredicatesByFeedbackStrategy)
   (strategyCONCEPTDIMENSION ProcedureByFeedbackStrategy HowToDo)
   (strategyCONCEPTDIMENSION NoticingSyntaxStrategy ConditionWhenToCalculate)
   (strategyCONCEPTDIMENSION NoticingSyntaxStrategy DefinitionOf)
   (strategyCONCEPTDIMENSION TellingOfSyntaxStrategy DefinitionOf)
   (strategyCONCEPTDIMENSION NoticingSyntaxStrategy ConditionEffectsOf)
   (strategyNIMDIMENSION NoticingSyntaxStrategy mableNoticingSyntax)
   (untried TellingOfConditionsStrategy SuspiciousTruck ByTelling ConditionWhenTrue)
   (STRATEGY NoticingSyntaxStrategy)
   (STRATEGY ExampleOfProcedureStrategy)
   (nimDimensionInTemplate ByTelling t1)
   (codeStrategy EBEByFeedbackStrategy)
   (strategyCONCEPTDIMENSION NoticingSyntaxStrategy ByDefinition)
   (strategyCONCEPTDIMENSION TellingOfProceduresStrategy HowToCalculate)
   (NIMDIMENSION ByTelling)
   (strategyCONCEPTDIMENSION EBEByFeedbackStrategy ConditionEffectsOf)
   (strategyNIMDIMENSION NoticingSyntaxStrategy ByTelling)
   (strategyNIMDIMENSION PredicatesByFeedbackStrategy ByFeedback)
   (strategyNIMDIMENSION TellingOfConditionsStrategy ByTelling)
   (targetInTemplate SuspiciousTruck t1)
   (interpretationForTarget SuspiciousTruck-code SuspiciousTruck)
   (strategyNIMDIMENSION TellingOfProceduresStrategy ByTelling)
   (nimDimensionInTemplate ByTelling t0)
   (strategyCONCEPTDIMENSION PredicatesByFeedbackStrategy ConditionWhenTrue)
   (strategyNIMDIMENSION EBEByFeedbackStrategy ByFeedback)
   (codeStrategy ProcedureByFeedbackStrategy)
   (STRATEGY PredicatesByFeedbackStrategy)
   (strategyCONCEPTDIMENSION NoticingSyntaxStrategy HowToCalculate)
   (strategyNIMDIMENSION EBELearningStrategy ByExample)
   (strategyCONCEPTDIMENSION TellingOfConditionsStrategy ConditionWhenTrue)
   (syntaxStrategy TellingOfSyntaxStrategy)
   (codeStrategy TellingOfProceduresStrategy)
   (strategyCONCEPTDIMENSION PredicatesByExampleStrategy ConditionWhenTrue)
   (STRATEGY ProcedureByFeedbackStrategy)
   (strategyNIMDIMENSION TellingOfSyntaxStrategy ByTelling)
   (strategyCONCEPTDIMENSION TellingOfProceduresStrategy HowToDo)
   (STRATEGY EBELearningStrategy)
   (strategyNIMDIMENSION ExampleOfProcedureStrategy ByExample)
   (SYNTAX SuspiciousTruck-syntax)
   (newDefCode SuspiciousTruck-code)
   (STRATEGY EBEByFeedbackStrategy)
   (strategyCONCEPTDIMENSION TellingOfConditionsStrategy ConditionWhenToDo)
   (TEMPLATE t1)
   (newDefSyntax SuspiciousTruck-syntax)
   (syntaxStrategy NoticingSyntaxStrategy)
   (STRATEGY TellingOfSyntaxStrategy)
   (codeStrategy TellingOfConditionsStrategy)
   (syntaxStrategy TellingOfConditionsStrategy)
   (strategyCONCEPTDIMENSION EBELearningStrategy ConditionEffectsOf)
   (strategyNIMDIMENSION NoticingSyntaxStrategy ByExample)
   (codeStrategy EBELearningStrategy)
   (STRATEGY PredicatesByExampleStrategy)
   (priorDefSyntaxForTarget SuspiciousTruck-syntax SuspiciousTruck)
   (strategyNIMDIMENSION FunctionsByFeedbackStrategy ByFeedback)
   (STRATEGY FunctionsByExampleStrategy)
   (codeStrategy ExampleOfProcedureStrategy)
   (conceptDimensionInTemplate ConditionWhenTrue t0)
   (STRATEGY TellingOfConditionsStrategy)
   (STRATEGY TellingOfProceduresStrategy)
   (strategyNIMDIMENSION NoticingSyntaxStrategy ByFeedback)
   (STRATEGY FunctionsByFeedbackStrategy)
 )
(:goal 
(and (learnedCode SuspiciousTruck) (newlyLearnedCode SuspiciousTruck) (learnedSyntax SuspiciousTruck) (newlyLearnedSyntax SuspiciousTruck))
 )
)