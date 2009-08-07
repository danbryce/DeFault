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
   AnnotateSegment-code
   AnnotateSegmentTestingLesson
 )
(:init 
   (NIM ExampleOfProcedure)
   (defSyntaxForTarget AnnotateSegment-syntax AnnotateSegment)
   (LESSON AnnotateSegmentEOPLearningLesson)
   (syntaxStrategy NoticingSyntaxStrategy)
   (templateHasNoNIM AnnotateSegment-codeTemplate)
   (TEMPLATE AnnotateSegment-codeTemplate)
   (strategyNIM ExampleOfProcedureStrategy ExampleOfProcedure)
   (lessonNIM AnnotateSegmentEOPLearningLesson ExampleOfProcedure)
   (CODE AnnotateSegment-code)
   (STRATEGY NoticingSyntaxStrategy)
   (STRATEGY ExampleOfProcedureStrategy)
   (NIM mableNoticingSyntax)
   (codeStrategy ExampleOfProcedureStrategy)
   (newDefCode AnnotateSegment-code)
   (strategyNIM NoticingSyntaxStrategy mableNoticingSyntax)
   (TARGETCONCEPT AnnotateSegment)
   (TARGETCONCEPTTYPECODE AnnotateSegment)
   (LESSON AnnotateSegmentTestingLesson)
   (lessonNIM AnnotateSegmentTestingLesson mableNoticingSyntax)
 )
(:goal 
(and (defCodeForTarget AnnotateSegment-code AnnotateSegment))
 )
)
