(define (problem TBDName)
 (:domain mable-control)
(:objects 
   ByExample
   EBELearningStrategy
   ConditionEffectsOf
   ExampleOfProcedureStrategy
   TellingOfConditionsStrategy
   HowToDo
   DefinitionOf
   ConditionWhenTrue
   TellingOfProceduresStrategy
   IsABlock-syntax
   PredicatesByExampleStrategy
   ByDefinition
   ByTelling
   NoticingSyntaxStrategy
   ConditionWhenToCalculate
   IsABlock-code
   mableNoticingSyntax
   IsABlock
   HowToCalculate
   ConditionWhenToDo
   te8246505-0df6-458e-8404-da900b369692
   TellingOfSyntaxStrategy
 )
(:init 
   (CONCEPTDIMENSION ConditionWhenTrue)
   (codeStrategy PredicatesByExampleStrategy)
   (strategyCONCEPTDIMENSION TellingOfSyntaxStrategy ByDefinition)
   (strategyCONCEPTDIMENSION NoticingSyntaxStrategy ConditionWhenToDo)
   (CODE IsABlock-code)
   (strategyCONCEPTDIMENSION NoticingSyntaxStrategy ConditionWhenTrue)
   (strategyCONCEPTDIMENSION ExampleOfProcedureStrategy HowToDo)
   (strategyCONCEPTDIMENSION NoticingSyntaxStrategy HowToDo)
   (untried TellingOfSyntaxStrategy IsABlock)
   (strategyCONCEPTDIMENSION PredicatesByExampleStrategy ConditionWhenToDo)
   (strategyNIMDIMENSION PredicatesByExampleStrategy ByExample)
   (targetInTemplate IsABlock te8246505-0df6-458e-8404-da900b369692)
   (nimDimensionInTemplate ByExample te8246505-0df6-458e-8404-da900b369692)
   (strategyCONCEPTDIMENSION NoticingSyntaxStrategy ConditionWhenToCalculate)
   (NIMDIMENSION ByExample)
   (strategyCONCEPTDIMENSION NoticingSyntaxStrategy DefinitionOf)
   (strategyCONCEPTDIMENSION NoticingSyntaxStrategy ConditionEffectsOf)
   (strategyNIMDIMENSION NoticingSyntaxStrategy mableNoticingSyntax)
   (untried TellingOfProceduresStrategy IsABlock)
   (STRATEGY NoticingSyntaxStrategy)
   (STRATEGY ExampleOfProcedureStrategy)
   (strategyCONCEPTDIMENSION NoticingSyntaxStrategy ByDefinition)
   (strategyNIMDIMENSION TellingOfConditionsStrategy ByTelling)
   (strategyNIMDIMENSION TellingOfProceduresStrategy ByTelling)
   (newDefCode IsABlock-code)
   (SYNTAX IsABlock-syntax)
   (strategyCONCEPTDIMENSION NoticingSyntaxStrategy HowToCalculate)
   (strategyNIMDIMENSION EBELearningStrategy ByExample)
   (syntaxStrategy TellingOfSyntaxStrategy)
   (strategyCONCEPTDIMENSION TellingOfConditionsStrategy ConditionWhenTrue)
   (conceptDimensionInTemplate ConditionWhenTrue te8246505-0df6-458e-8404-da900b369692)
   (strategyCONCEPTDIMENSION PredicatesByExampleStrategy ConditionWhenTrue)
   (codeStrategy TellingOfProceduresStrategy)
   (strategyNIMDIMENSION TellingOfSyntaxStrategy ByTelling)
   (strategyCONCEPTDIMENSION TellingOfProceduresStrategy HowToDo)
   (STRATEGY EBELearningStrategy)
   (strategyNIMDIMENSION ExampleOfProcedureStrategy ByExample)
   (TEMPLATE te8246505-0df6-458e-8404-da900b369692)
   (strategyCONCEPTDIMENSION TellingOfConditionsStrategy ConditionWhenToDo)
   (TARGETCONCEPT IsABlock)
   (untried EBELearningStrategy IsABlock)
   (STRATEGY TellingOfSyntaxStrategy)
   (syntaxStrategy NoticingSyntaxStrategy)
   (codeStrategy TellingOfConditionsStrategy)
   (strategyCONCEPTDIMENSION EBELearningStrategy ConditionEffectsOf)
   (codeStrategy EBELearningStrategy)
   (defSyntaxForTarget IsABlock-syntax IsABlock)
   (STRATEGY PredicatesByExampleStrategy)
   (untried ExampleOfProcedureStrategy IsABlock)
   (codeStrategy ExampleOfProcedureStrategy)
   (STRATEGY TellingOfProceduresStrategy)
   (STRATEGY TellingOfConditionsStrategy)
   (untried TellingOfConditionsStrategy IsABlock)
 )
(:goal 
(and (defCodeForTarget IsABlock-code IsABlock))
 )
)
