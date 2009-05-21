(define (problem TBDName)
 (:domain mable-control)
(:objects
   SetSegmentMovementTechnique-syntax
   s1
   s1-syntax
   TellingOfProceduresStrategy
   s1-syntaxTemplate
   TellingOfProcedure
   s1-codeTemplate
   NoticingSyntaxStrategy
   SetSegmentMovementTechnique
   mableNoticingSyntax
   SetSegmentMovementTechnique-code
   SetSegmentMovementTechnique-codeTemplate
   s1-code
   SetSegmentMovementTechniqueTOPLearningLesson
   SetSegmentMovementTechnique-syntaxTemplate
 )
(:init
   (TARGETCONCEPTTYPECODE s1)
   (newDefSyntax s1-syntax)
   (TARGETCONCEPTTYPECODE SetSegmentMovementTechnique)
   (SYNTAX s1-syntax)
   (strategyNIM TellingOfProceduresStrategy TellingOfProcedure)
   (SYNTAX SetSegmentMovementTechnique-syntax)
   (TARGETCONCEPT s1)
   (codeStrategy TellingOfProceduresStrategy)
   (CODE s1-code)
   (TEMPLATE SetSegmentMovementTechnique-codeTemplate)
   (newDefCode s1-code)
   (TARGETCONCEPTTYPESYNTAX s1)
   (lessonNIM SetSegmentMovementTechniqueTOPLearningLesson mableNoticingSyntax)
   (templateHasNoNIM SetSegmentMovementTechnique-syntaxTemplate)
   (CODE SetSegmentMovementTechnique-code)
   (TEMPLATE SetSegmentMovementTechnique-syntaxTemplate)
   (TEMPLATE s1-codeTemplate)
   (syntaxStrategy NoticingSyntaxStrategy)
   (newDefCode SetSegmentMovementTechnique-code)
   (lessonNIM SetSegmentMovementTechniqueTOPLearningLesson TellingOfProcedure)
   (templateHasNoNIM s1-codeTemplate)
   (TARGETCONCEPTTYPESYNTAX SetSegmentMovementTechnique)
   (templateHasNoNIM SetSegmentMovementTechnique-codeTemplate)
   (TEMPLATE s1-syntaxTemplate)
   (templateHasNoNIM s1-syntaxTemplate)
   (STRATEGY NoticingSyntaxStrategy)
   (NIM mableNoticingSyntax)
   (newDefSyntax SetSegmentMovementTechnique-syntax)
   (LESSON SetSegmentMovementTechniqueTOPLearningLesson)
   (strategyNIM NoticingSyntaxStrategy mableNoticingSyntax)
   (STRATEGY TellingOfProceduresStrategy)
   (TARGETCONCEPT SetSegmentMovementTechnique)
   (NIM TellingOfProcedure)
 )
(:goal
(and (defSyntaxForTarget SetSegmentMovementTechnique-syntax SetSegmentMovementTechnique) (defCodeForTarget SetSegmentMovementTechnique-code SetSegmentMovementTechnique) (defSyntaxForTarget s1-syntax s1) (defCodeForTarget s1-code s1))
 )
)


