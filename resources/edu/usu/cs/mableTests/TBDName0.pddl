(define (problem TBDName)
 (:domain mable-control)
(:objects 
   AnnotateSegment-syntax
   NoticingSyntaxStrategy
   AnnotateSegment
   AnnotateSegment-codeTemplate
   mableNoticingSyntax
   ExampleOfProcedureStrategy
   ExampleOfProcedure
   AnnotateSegmentEOPLearningLesson
   AnnotateSegment-syntaxTemplate
   AnnotateSegment-code
   AnnotateSegmentTestingLesson
 )
(:init 
   (NIM ExampleOfProcedure)
   (LESSON AnnotateSegmentEOPLearningLesson)
   (syntaxStrategy NoticingSyntaxStrategy)
   (TARGETCONCEPTTYPESYNTAX AnnotateSegment)
   (templateHasNoNIM AnnotateSegment-codeTemplate)
   (TEMPLATE AnnotateSegment-codeTemplate)
   (newDefSyntax AnnotateSegment-syntax)
   (strategyNIM ExampleOfProcedureStrategy ExampleOfProcedure)
   (lessonNIM AnnotateSegmentEOPLearningLesson ExampleOfProcedure)
   (lessonNIM AnnotateSegmentEOPLearningLesson mableNoticingSyntax)
   (STRATEGY NoticingSyntaxStrategy)
   (STRATEGY ExampleOfProcedureStrategy)
   (NIM mableNoticingSyntax)
   (codeStrategy ExampleOfProcedureStrategy)
   (TEMPLATE AnnotateSegment-syntaxTemplate)
   (newDefCode AnnotateSegment-code)
   (strategyNIM NoticingSyntaxStrategy mableNoticingSyntax)
   (TARGETCONCEPT AnnotateSegment)
   (TARGETCONCEPTTYPECODE AnnotateSegment)
   (LESSON AnnotateSegmentTestingLesson)
   (templateHasNoNIM AnnotateSegment-syntaxTemplate)
   (lessonNIM AnnotateSegmentTestingLesson mableNoticingSyntax)
   (SYNTAX AnnotateSegment-syntax)
   (CODE AnnotateSegment-code)
 )
(:goal 
(and (defSyntaxForTarget AnnotateSegment-syntax AnnotateSegment) (defCodeForTarget AnnotateSegment-code AnnotateSegment))
 )
)
