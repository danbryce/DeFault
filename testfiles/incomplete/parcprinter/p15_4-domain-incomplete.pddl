;; Domain file modified by FFrisky incomplete parcprinter translator
;; PARC's modular printer domain
;; compiled into PDDL by Rong Zhou
;; To report a problem, send email to rzhou@parc.com
;; Papers:
;; 1. Planning for Modular Printers: Beyond Productivity
;;	Minh B. Do, Wheeler Ruml, and Rong Zhou. ICAPS'08
;; 2. On-line Planning and Scheduling: An Application to Controlling Modular Printers
;;	Minh B. Do, Wheeler Ruml, and Rong Zhou. AAAI'08
;; 3. On-line Planning and Scheduling for High-speed Manufacturing
;;	Wheeler Ruml, Minh B. Do, and Markus P.J. Fromherz. ICAPS'05
(define (domain eTipp)
(:requirements :typing)
(:types  size_t location_t side_t color_t image_t resource_t sheet_t)
(:constants
		Letter
		Legal
		A4 - size_t

		Black
		Color - color_t

		Front
		Back - side_t

		Some_Feeder_Tray
		Some_Finisher_Tray
		fe1_Exit-im1_FeedEntry
		rh1_Exit-im1_ReturnEntry
		uc1_Entry-im1_TopExit
		im1_BottomExit-lc1_Entry
		ube_Entry-uc1_OffRamp
		uc1_OnRamp-ube_Exit
		uc2_Entry-uc1_Exit
		lbe_Entry-lc1_OffRamp
		lc1_OnRamp-lbe_Exit
		lc1_Exit-lc2_Entry
		rh1_Entry-rh2_Exit
		ure_Entry-uc2_OffRamp
		ure_Exit-uc2_OnRamp
		uc2_Exit-om_TopEntry
		ure_RodanTray1
		ure_RodanTray2
		lre_Entry-lc2_OffRamp
		lc2_OnRamp-lre_Exit
		om_BottomEntry-lc2_Exit
		lre_RodanTray1
		lre_RodanTray2
		om_ReturnExit-rh2_Entry
		om_OutputExit-sys_Entry
		sys_OutputTray - location_t

		fe1-RSRC
		im1-RSRC
		uc1-RSRC
		ube-RSRC
		lc1-RSRC
		lbe-RSRC
		rh1-RSRC
		uc2-RSRC
		ure-RSRC
		lc2-RSRC
		lre-RSRC
		rh2-RSRC
		om-RSRC
		sys-RSRC - resource_t
)
(:predicates
		(clear)
		(Sheetsize ?sheet - sheet_t ?size - size_t)
		(Location ?sheet - sheet_t ?location - location_t)
		(Hasimage ?sheet - sheet_t ?side - side_t ?image - image_t)
		(Sideup ?sheet - sheet_t ?side - side_t)
		(Stackedin ?sheet - sheet_t ?location - location_t)
		(Imagecolor ?image - image_t ?color - color_t)
		(Notprintedwith ?sheet - sheet_t ?side - side_t ?color - color_t)
		(Oppositeside ?side1 - side_t ?side2 - side_t)
		(Available ?resource - resource_t)
		(Prevsheet ?sheet1 - sheet_t ?sheet2 - sheet_t)
		(Uninitialized)

)

(:action initialize
 :parameters ()
 :precondition (and
		(Uninitialized))
 :effect (and
		(not (Uninitialized))
		(Available fe1-RSRC)
		(Available im1-RSRC)
		(Available uc1-RSRC)
		(Available ube-RSRC)
		(Available lc1-RSRC)
		(Available lbe-RSRC)
		(Available rh1-RSRC)
		(Available uc2-RSRC)
		(Available ure-RSRC)
		(Available lc2-RSRC)
		(Available lre-RSRC)
		(Available rh2-RSRC)
		(Available om-RSRC)
		(Available sys-RSRC))
)
(:action fe1-FeedMSI-Letter
 :parameters ( ?sheet - sheet_t)
 :precondition (and
		(clear)
		(Available fe1-RSRC)
		(Sheetsize ?sheet Letter)
		(Location ?sheet Some_Feeder_Tray))
 :effect (and
		(not (Available fe1-RSRC))
		(Location ?sheet fe1_Exit-im1_FeedEntry)
		(Sideup ?sheet Back)
		(not (Location ?sheet Some_Feeder_Tray))
		(Available fe1-RSRC)
		)
)

(:action fe1-FeedMSI-Legal
 :parameters ( ?sheet - sheet_t)
 :precondition (and
		(clear)
		(Available fe1-RSRC)
		(Sheetsize ?sheet Legal)
		(Location ?sheet Some_Feeder_Tray))
 :effect (and
		(not (Available fe1-RSRC))
		(Location ?sheet fe1_Exit-im1_FeedEntry)
		(Sideup ?sheet Back)
		(not (Location ?sheet Some_Feeder_Tray))
		(Available fe1-RSRC)
		)
)

(:action fe1-FeedMSI-A4
 :parameters ( ?sheet - sheet_t)
 :precondition (and
		(clear)
		(Available fe1-RSRC)
		(Sheetsize ?sheet A4)
		(Location ?sheet Some_Feeder_Tray))
 :effect (and
		(not (Available fe1-RSRC))
		(Location ?sheet fe1_Exit-im1_FeedEntry)
		(Sideup ?sheet Back)
		(not (Location ?sheet Some_Feeder_Tray))
		(Available fe1-RSRC)
		)
)

(:action fe1-Feed-Letter
 :parameters ( ?sheet - sheet_t)
 :precondition (and
		(clear)
		(Available fe1-RSRC)
		(Sheetsize ?sheet Letter)
		(Location ?sheet Some_Feeder_Tray))
 :effect (and
		(not (Available fe1-RSRC))
		(Location ?sheet fe1_Exit-im1_FeedEntry)
		(Sideup ?sheet Back)
		(not (Location ?sheet Some_Feeder_Tray))
		(Available fe1-RSRC)
		)
)

(:action fe1-Feed-Legal
 :parameters ( ?sheet - sheet_t)
 :precondition (and
		(clear)
		(Available fe1-RSRC)
		(Sheetsize ?sheet Legal)
		(Location ?sheet Some_Feeder_Tray))
 :effect (and
		(not (Available fe1-RSRC))
		(Location ?sheet fe1_Exit-im1_FeedEntry)
		(Sideup ?sheet Back)
		(not (Location ?sheet Some_Feeder_Tray))
		(Available fe1-RSRC)
		)
 :poss-effect (and
		(not (clear)))
)

(:action fe1-Feed-A4
 :parameters ( ?sheet - sheet_t)
 :precondition (and
		(clear)
		(Available fe1-RSRC)
		(Sheetsize ?sheet A4)
		(Location ?sheet Some_Feeder_Tray))
 :effect (and
		(not (Available fe1-RSRC))
		(Location ?sheet fe1_Exit-im1_FeedEntry)
		(Sideup ?sheet Back)
		(not (Location ?sheet Some_Feeder_Tray))
		(Available fe1-RSRC)
		)
)

(:action im1-MoveUpper-Letter
 :parameters ( ?sheet - sheet_t)
 :precondition (and
		(clear)
		(Available im1-RSRC)
		(Sheetsize ?sheet Letter)
		(Location ?sheet fe1_Exit-im1_FeedEntry))
 :effect (and
		(not (Available im1-RSRC))
		(Location ?sheet uc1_Entry-im1_TopExit)
		(not (Location ?sheet fe1_Exit-im1_FeedEntry))
		(Available im1-RSRC)
		)
 :poss-effect (and
		(not (clear)))
)

(:action im1-MoveUpper-Legal
 :parameters ( ?sheet - sheet_t)
 :precondition (and
		(clear)
		(Available im1-RSRC)
		(Sheetsize ?sheet Legal)
		(Location ?sheet fe1_Exit-im1_FeedEntry))
 :effect (and
		(not (Available im1-RSRC))
		(Location ?sheet uc1_Entry-im1_TopExit)
		(not (Location ?sheet fe1_Exit-im1_FeedEntry))
		(Available im1-RSRC)
		)
 :poss-effect (and
		(not (clear)))
)

(:action im1-MoveUpper-A4
 :parameters ( ?sheet - sheet_t)
 :precondition (and
		(clear)
		(Available im1-RSRC)
		(Sheetsize ?sheet A4)
		(Location ?sheet fe1_Exit-im1_FeedEntry))
 :effect (and
		(not (Available im1-RSRC))
		(Location ?sheet uc1_Entry-im1_TopExit)
		(not (Location ?sheet fe1_Exit-im1_FeedEntry))
		(Available im1-RSRC)
		)
)

(:action im1-MoveLower-Letter
 :parameters ( ?sheet - sheet_t)
 :precondition (and
		(clear)
		(Available im1-RSRC)
		(Sheetsize ?sheet Letter)
		(Location ?sheet fe1_Exit-im1_FeedEntry))
 :effect (and
		(not (Available im1-RSRC))
		(Location ?sheet im1_BottomExit-lc1_Entry)
		(not (Location ?sheet fe1_Exit-im1_FeedEntry))
		(Available im1-RSRC)
		)
 :poss-effect (and
		(not (clear)))
)

(:action im1-MoveLower-Legal
 :parameters ( ?sheet - sheet_t)
 :precondition (and
		(clear)
		(Available im1-RSRC)
		(Sheetsize ?sheet Legal)
		(Location ?sheet fe1_Exit-im1_FeedEntry))
 :effect (and
		(not (Available im1-RSRC))
		(Location ?sheet im1_BottomExit-lc1_Entry)
		(not (Location ?sheet fe1_Exit-im1_FeedEntry))
		(Available im1-RSRC)
		)
 :poss-effect (and
		(not (clear)))
)

(:action im1-MoveLower-A4
 :parameters ( ?sheet - sheet_t)
 :precondition (and
		(clear)
		(Available im1-RSRC)
		(Sheetsize ?sheet A4)
		(Location ?sheet fe1_Exit-im1_FeedEntry))
 :effect (and
		(not (Available im1-RSRC))
		(Location ?sheet im1_BottomExit-lc1_Entry)
		(not (Location ?sheet fe1_Exit-im1_FeedEntry))
		(Available im1-RSRC)
		)
 :poss-effect (and
		(not (clear)))
)

(:action im1-LoopUpper-Letter
 :parameters ( ?sheet - sheet_t)
 :precondition (and
		(clear)
		(Available im1-RSRC)
		(Sheetsize ?sheet Letter)
		(Location ?sheet rh1_Exit-im1_ReturnEntry))
 :effect (and
		(not (Available im1-RSRC))
		(Location ?sheet uc1_Entry-im1_TopExit)
		(not (Location ?sheet rh1_Exit-im1_ReturnEntry))
		(Available im1-RSRC)
		)
 :poss-effect (and
		(not (clear)))
)

(:action im1-LoopUpper-Legal
 :parameters ( ?sheet - sheet_t)
 :precondition (and
		(clear)
		(Available im1-RSRC)
		(Sheetsize ?sheet Legal)
		(Location ?sheet rh1_Exit-im1_ReturnEntry))
 :effect (and
		(not (Available im1-RSRC))
		(Location ?sheet uc1_Entry-im1_TopExit)
		(not (Location ?sheet rh1_Exit-im1_ReturnEntry))
		(Available im1-RSRC)
		)
)

(:action im1-LoopUpper-A4
 :parameters ( ?sheet - sheet_t)
 :precondition (and
		(clear)
		(Available im1-RSRC)
		(Sheetsize ?sheet A4)
		(Location ?sheet rh1_Exit-im1_ReturnEntry))
 :effect (and
		(not (Available im1-RSRC))
		(Location ?sheet uc1_Entry-im1_TopExit)
		(not (Location ?sheet rh1_Exit-im1_ReturnEntry))
		(Available im1-RSRC)
		)
 :poss-effect (and
		(not (clear)))
)

(:action im1-LoopLower-Letter
 :parameters ( ?sheet - sheet_t)
 :precondition (and
		(clear)
		(Available im1-RSRC)
		(Sheetsize ?sheet Letter)
		(Location ?sheet rh1_Exit-im1_ReturnEntry))
 :effect (and
		(not (Available im1-RSRC))
		(Location ?sheet im1_BottomExit-lc1_Entry)
		(not (Location ?sheet rh1_Exit-im1_ReturnEntry))
		(Available im1-RSRC)
		)
 :poss-effect (and
		(not (clear)))
)

(:action im1-LoopLower-Legal
 :parameters ( ?sheet - sheet_t)
 :precondition (and
		(clear)
		(Available im1-RSRC)
		(Sheetsize ?sheet Legal)
		(Location ?sheet rh1_Exit-im1_ReturnEntry))
 :effect (and
		(not (Available im1-RSRC))
		(Location ?sheet im1_BottomExit-lc1_Entry)
		(not (Location ?sheet rh1_Exit-im1_ReturnEntry))
		(Available im1-RSRC)
		)
)

(:action im1-LoopLower-A4
 :parameters ( ?sheet - sheet_t)
 :precondition (and
		(clear)
		(Available im1-RSRC)
		(Sheetsize ?sheet A4)
		(Location ?sheet rh1_Exit-im1_ReturnEntry))
 :effect (and
		(not (Available im1-RSRC))
		(Location ?sheet im1_BottomExit-lc1_Entry)
		(not (Location ?sheet rh1_Exit-im1_ReturnEntry))
		(Available im1-RSRC)
		)
)

(:action uc1-fMove-Letter
 :parameters ( ?sheet - sheet_t)
 :precondition (and
		(clear)
		(Available uc1-RSRC)
		(Sheetsize ?sheet Letter)
		(Location ?sheet uc1_Entry-im1_TopExit))
 :effect (and
		(not (Available uc1-RSRC))
		(Location ?sheet uc2_Entry-uc1_Exit)
		(not (Location ?sheet uc1_Entry-im1_TopExit))
		(Available uc1-RSRC)
		)
 :poss-effect (and
		(not (clear)))
)

(:action uc1-fMove-Legal
 :parameters ( ?sheet - sheet_t)
 :precondition (and
		(clear)
		(Available uc1-RSRC)
		(Sheetsize ?sheet Legal)
		(Location ?sheet uc1_Entry-im1_TopExit))
 :effect (and
		(not (Available uc1-RSRC))
		(Location ?sheet uc2_Entry-uc1_Exit)
		(not (Location ?sheet uc1_Entry-im1_TopExit))
		(Available uc1-RSRC)
		)
)

(:action uc1-fMove-A4
 :parameters ( ?sheet - sheet_t)
 :precondition (and
		(clear)
		(Available uc1-RSRC)
		(Sheetsize ?sheet A4)
		(Location ?sheet uc1_Entry-im1_TopExit))
 :effect (and
		(not (Available uc1-RSRC))
		(Location ?sheet uc2_Entry-uc1_Exit)
		(not (Location ?sheet uc1_Entry-im1_TopExit))
		(Available uc1-RSRC)
		)
)

(:action uc1-Divert-Letter
 :parameters ( ?sheet - sheet_t ?face - side_t ?otherface - side_t)
 :precondition (and
		(clear)
		(Available uc1-RSRC)
		(Sheetsize ?sheet Letter)
		(Oppositeside ?face ?otherface)
		(Location ?sheet uc1_Entry-im1_TopExit)
		(Sideup ?sheet ?face))
 :effect (and
		(not (Available uc1-RSRC))
		(Location ?sheet ube_Entry-uc1_OffRamp)
		(Sideup ?sheet ?otherface)
		(not (Location ?sheet uc1_Entry-im1_TopExit))
		(not (Sideup ?sheet ?face))
		(Available uc1-RSRC)
		)
 :poss-effect (and
		(not (clear)))
)

(:action uc1-Divert-Legal
 :parameters ( ?sheet - sheet_t ?face - side_t ?otherface - side_t)
 :precondition (and
		(clear)
		(Available uc1-RSRC)
		(Sheetsize ?sheet Legal)
		(Oppositeside ?face ?otherface)
		(Location ?sheet uc1_Entry-im1_TopExit)
		(Sideup ?sheet ?face))
 :effect (and
		(not (Available uc1-RSRC))
		(Location ?sheet ube_Entry-uc1_OffRamp)
		(Sideup ?sheet ?otherface)
		(not (Location ?sheet uc1_Entry-im1_TopExit))
		(not (Sideup ?sheet ?face))
		(Available uc1-RSRC)
		)
)

(:action uc1-Divert-A4
 :parameters ( ?sheet - sheet_t ?face - side_t ?otherface - side_t)
 :precondition (and
		(clear)
		(Available uc1-RSRC)
		(Sheetsize ?sheet A4)
		(Oppositeside ?face ?otherface)
		(Location ?sheet uc1_Entry-im1_TopExit)
		(Sideup ?sheet ?face))
 :effect (and
		(not (Available uc1-RSRC))
		(Location ?sheet ube_Entry-uc1_OffRamp)
		(Sideup ?sheet ?otherface)
		(not (Location ?sheet uc1_Entry-im1_TopExit))
		(not (Sideup ?sheet ?face))
		(Available uc1-RSRC)
		)
)

(:action uc1-Merge-Letter
 :parameters ( ?sheet - sheet_t)
 :precondition (and
		(clear)
		(Available uc1-RSRC)
		(Sheetsize ?sheet Letter)
		(Location ?sheet uc1_OnRamp-ube_Exit))
 :effect (and
		(not (Available uc1-RSRC))
		(Location ?sheet uc2_Entry-uc1_Exit)
		(not (Location ?sheet uc1_OnRamp-ube_Exit))
		(Available uc1-RSRC)
		)
)

(:action uc1-Merge-Legal
 :parameters ( ?sheet - sheet_t)
 :precondition (and
		(clear)
		(Available uc1-RSRC)
		(Sheetsize ?sheet Legal)
		(Location ?sheet uc1_OnRamp-ube_Exit))
 :effect (and
		(not (Available uc1-RSRC))
		(Location ?sheet uc2_Entry-uc1_Exit)
		(not (Location ?sheet uc1_OnRamp-ube_Exit))
		(Available uc1-RSRC)
		)
 :poss-effect (and
		(not (clear)))
)

(:action uc1-Merge-A4
 :parameters ( ?sheet - sheet_t)
 :precondition (and
		(clear)
		(Available uc1-RSRC)
		(Sheetsize ?sheet A4)
		(Location ?sheet uc1_OnRamp-ube_Exit))
 :effect (and
		(not (Available uc1-RSRC))
		(Location ?sheet uc2_Entry-uc1_Exit)
		(not (Location ?sheet uc1_OnRamp-ube_Exit))
		(Available uc1-RSRC)
		)
 :poss-effect (and
		(not (clear)))
)

(:action uc1-MergeInvert-Letter
 :parameters ( ?sheet - sheet_t ?face - side_t ?otherface - side_t)
 :precondition (and
		(clear)
		(Available uc1-RSRC)
		(Sheetsize ?sheet Letter)
		(Oppositeside ?face ?otherface)
		(Location ?sheet uc1_OnRamp-ube_Exit)
		(Sideup ?sheet ?face))
 :effect (and
		(not (Available uc1-RSRC))
		(Location ?sheet uc2_Entry-uc1_Exit)
		(Sideup ?sheet ?otherface)
		(not (Location ?sheet uc1_OnRamp-ube_Exit))
		(not (Sideup ?sheet ?face))
		(Available uc1-RSRC)
		)
 :poss-effect (and
		(not (clear)))
)

(:action uc1-MergeInvert-Legal
 :parameters ( ?sheet - sheet_t ?face - side_t ?otherface - side_t)
 :precondition (and
		(clear)
		(Available uc1-RSRC)
		(Sheetsize ?sheet Legal)
		(Oppositeside ?face ?otherface)
		(Location ?sheet uc1_OnRamp-ube_Exit)
		(Sideup ?sheet ?face))
 :effect (and
		(not (Available uc1-RSRC))
		(Location ?sheet uc2_Entry-uc1_Exit)
		(Sideup ?sheet ?otherface)
		(not (Location ?sheet uc1_OnRamp-ube_Exit))
		(not (Sideup ?sheet ?face))
		(Available uc1-RSRC)
		)
 :poss-effect (and
		(not (clear)))
)

(:action uc1-MergeInvert-A4
 :parameters ( ?sheet - sheet_t ?face - side_t ?otherface - side_t)
 :precondition (and
		(clear)
		(Available uc1-RSRC)
		(Sheetsize ?sheet A4)
		(Oppositeside ?face ?otherface)
		(Location ?sheet uc1_OnRamp-ube_Exit)
		(Sideup ?sheet ?face))
 :effect (and
		(not (Available uc1-RSRC))
		(Location ?sheet uc2_Entry-uc1_Exit)
		(Sideup ?sheet ?otherface)
		(not (Location ?sheet uc1_OnRamp-ube_Exit))
		(not (Sideup ?sheet ?face))
		(Available uc1-RSRC)
		)
 :poss-effect (and
		(not (clear)))
)

(:action ube-Simplex-Letter
 :parameters ( ?sheet - sheet_t ?face - side_t ?image - image_t)
 :precondition (and
		(clear)
		(Available ube-RSRC)
		(Sheetsize ?sheet Letter)
		(Sideup ?sheet ?face)
		(Imagecolor ?image Black)
		(Location ?sheet ube_Entry-uc1_OffRamp)
		(Notprintedwith ?sheet ?face Black))
 :effect (and
		(not (Available ube-RSRC))
		(Location ?sheet uc1_OnRamp-ube_Exit)
		(Hasimage ?sheet ?face ?image)
		(not (Location ?sheet ube_Entry-uc1_OffRamp))
		(not (Notprintedwith ?sheet ?face Black))
		(Available ube-RSRC)
		)
 :poss-effect (and
		(not (clear)))
)

(:action ube-Simplex-Legal
 :parameters ( ?sheet - sheet_t ?face - side_t ?image - image_t)
 :precondition (and
		(clear)
		(Available ube-RSRC)
		(Sheetsize ?sheet Legal)
		(Sideup ?sheet ?face)
		(Imagecolor ?image Black)
		(Location ?sheet ube_Entry-uc1_OffRamp)
		(Notprintedwith ?sheet ?face Black))
 :effect (and
		(not (Available ube-RSRC))
		(Location ?sheet uc1_OnRamp-ube_Exit)
		(Hasimage ?sheet ?face ?image)
		(not (Location ?sheet ube_Entry-uc1_OffRamp))
		(not (Notprintedwith ?sheet ?face Black))
		(Available ube-RSRC)
		)
 :poss-effect (and
		(not (clear)))
)

(:action ube-Simplex-A4
 :parameters ( ?sheet - sheet_t ?face - side_t ?image - image_t)
 :precondition (and
		(clear)
		(Available ube-RSRC)
		(Sheetsize ?sheet A4)
		(Sideup ?sheet ?face)
		(Imagecolor ?image Black)
		(Location ?sheet ube_Entry-uc1_OffRamp)
		(Notprintedwith ?sheet ?face Black))
 :effect (and
		(not (Available ube-RSRC))
		(Location ?sheet uc1_OnRamp-ube_Exit)
		(Hasimage ?sheet ?face ?image)
		(not (Location ?sheet ube_Entry-uc1_OffRamp))
		(not (Notprintedwith ?sheet ?face Black))
		(Available ube-RSRC)
		)
)

(:action lc1-fMove-Letter
 :parameters ( ?sheet - sheet_t)
 :precondition (and
		(clear)
		(Available lc1-RSRC)
		(Sheetsize ?sheet Letter)
		(Location ?sheet im1_BottomExit-lc1_Entry))
 :effect (and
		(not (Available lc1-RSRC))
		(Location ?sheet lc1_Exit-lc2_Entry)
		(not (Location ?sheet im1_BottomExit-lc1_Entry))
		(Available lc1-RSRC)
		)
)

(:action lc1-fMove-Legal
 :parameters ( ?sheet - sheet_t)
 :precondition (and
		(clear)
		(Available lc1-RSRC)
		(Sheetsize ?sheet Legal)
		(Location ?sheet im1_BottomExit-lc1_Entry))
 :effect (and
		(not (Available lc1-RSRC))
		(Location ?sheet lc1_Exit-lc2_Entry)
		(not (Location ?sheet im1_BottomExit-lc1_Entry))
		(Available lc1-RSRC)
		)
)

(:action lc1-fMove-A4
 :parameters ( ?sheet - sheet_t)
 :precondition (and
		(clear)
		(Available lc1-RSRC)
		(Sheetsize ?sheet A4)
		(Location ?sheet im1_BottomExit-lc1_Entry))
 :effect (and
		(not (Available lc1-RSRC))
		(Location ?sheet lc1_Exit-lc2_Entry)
		(not (Location ?sheet im1_BottomExit-lc1_Entry))
		(Available lc1-RSRC)
		)
)

(:action lc1-Divert-Letter
 :parameters ( ?sheet - sheet_t ?face - side_t ?otherface - side_t)
 :precondition (and
		(clear)
		(Available lc1-RSRC)
		(Sheetsize ?sheet Letter)
		(Oppositeside ?face ?otherface)
		(Location ?sheet im1_BottomExit-lc1_Entry)
		(Sideup ?sheet ?face))
 :effect (and
		(not (Available lc1-RSRC))
		(Location ?sheet lbe_Entry-lc1_OffRamp)
		(Sideup ?sheet ?otherface)
		(not (Location ?sheet im1_BottomExit-lc1_Entry))
		(not (Sideup ?sheet ?face))
		(Available lc1-RSRC)
		)
 :poss-effect (and
		(not (clear)))
)

(:action lc1-Divert-Legal
 :parameters ( ?sheet - sheet_t ?face - side_t ?otherface - side_t)
 :precondition (and
		(clear)
		(Available lc1-RSRC)
		(Sheetsize ?sheet Legal)
		(Oppositeside ?face ?otherface)
		(Location ?sheet im1_BottomExit-lc1_Entry)
		(Sideup ?sheet ?face))
 :effect (and
		(not (Available lc1-RSRC))
		(Location ?sheet lbe_Entry-lc1_OffRamp)
		(Sideup ?sheet ?otherface)
		(not (Location ?sheet im1_BottomExit-lc1_Entry))
		(not (Sideup ?sheet ?face))
		(Available lc1-RSRC)
		)
)

(:action lc1-Divert-A4
 :parameters ( ?sheet - sheet_t ?face - side_t ?otherface - side_t)
 :precondition (and
		(clear)
		(Available lc1-RSRC)
		(Sheetsize ?sheet A4)
		(Oppositeside ?face ?otherface)
		(Location ?sheet im1_BottomExit-lc1_Entry)
		(Sideup ?sheet ?face))
 :effect (and
		(not (Available lc1-RSRC))
		(Location ?sheet lbe_Entry-lc1_OffRamp)
		(Sideup ?sheet ?otherface)
		(not (Location ?sheet im1_BottomExit-lc1_Entry))
		(not (Sideup ?sheet ?face))
		(Available lc1-RSRC)
		)
)

(:action lc1-Merge-Letter
 :parameters ( ?sheet - sheet_t)
 :precondition (and
		(clear)
		(Available lc1-RSRC)
		(Sheetsize ?sheet Letter)
		(Location ?sheet lc1_OnRamp-lbe_Exit))
 :effect (and
		(not (Available lc1-RSRC))
		(Location ?sheet lc1_Exit-lc2_Entry)
		(not (Location ?sheet lc1_OnRamp-lbe_Exit))
		(Available lc1-RSRC)
		)
 :poss-effect (and
		(not (clear)))
)

(:action lc1-Merge-Legal
 :parameters ( ?sheet - sheet_t)
 :precondition (and
		(clear)
		(Available lc1-RSRC)
		(Sheetsize ?sheet Legal)
		(Location ?sheet lc1_OnRamp-lbe_Exit))
 :effect (and
		(not (Available lc1-RSRC))
		(Location ?sheet lc1_Exit-lc2_Entry)
		(not (Location ?sheet lc1_OnRamp-lbe_Exit))
		(Available lc1-RSRC)
		)
 :poss-effect (and
		(not (clear)))
)

(:action lc1-Merge-A4
 :parameters ( ?sheet - sheet_t)
 :precondition (and
		(clear)
		(Available lc1-RSRC)
		(Sheetsize ?sheet A4)
		(Location ?sheet lc1_OnRamp-lbe_Exit))
 :effect (and
		(not (Available lc1-RSRC))
		(Location ?sheet lc1_Exit-lc2_Entry)
		(not (Location ?sheet lc1_OnRamp-lbe_Exit))
		(Available lc1-RSRC)
		)
)

(:action lc1-MergeInvert-Letter
 :parameters ( ?sheet - sheet_t ?face - side_t ?otherface - side_t)
 :precondition (and
		(clear)
		(Available lc1-RSRC)
		(Sheetsize ?sheet Letter)
		(Oppositeside ?face ?otherface)
		(Location ?sheet lc1_OnRamp-lbe_Exit)
		(Sideup ?sheet ?face))
 :effect (and
		(not (Available lc1-RSRC))
		(Location ?sheet lc1_Exit-lc2_Entry)
		(Sideup ?sheet ?otherface)
		(not (Location ?sheet lc1_OnRamp-lbe_Exit))
		(not (Sideup ?sheet ?face))
		(Available lc1-RSRC)
		)
 :poss-effect (and
		(not (clear)))
)

(:action lc1-MergeInvert-Legal
 :parameters ( ?sheet - sheet_t ?face - side_t ?otherface - side_t)
 :precondition (and
		(clear)
		(Available lc1-RSRC)
		(Sheetsize ?sheet Legal)
		(Oppositeside ?face ?otherface)
		(Location ?sheet lc1_OnRamp-lbe_Exit)
		(Sideup ?sheet ?face))
 :effect (and
		(not (Available lc1-RSRC))
		(Location ?sheet lc1_Exit-lc2_Entry)
		(Sideup ?sheet ?otherface)
		(not (Location ?sheet lc1_OnRamp-lbe_Exit))
		(not (Sideup ?sheet ?face))
		(Available lc1-RSRC)
		)
)

(:action lc1-MergeInvert-A4
 :parameters ( ?sheet - sheet_t ?face - side_t ?otherface - side_t)
 :precondition (and
		(clear)
		(Available lc1-RSRC)
		(Sheetsize ?sheet A4)
		(Oppositeside ?face ?otherface)
		(Location ?sheet lc1_OnRamp-lbe_Exit)
		(Sideup ?sheet ?face))
 :effect (and
		(not (Available lc1-RSRC))
		(Location ?sheet lc1_Exit-lc2_Entry)
		(Sideup ?sheet ?otherface)
		(not (Location ?sheet lc1_OnRamp-lbe_Exit))
		(not (Sideup ?sheet ?face))
		(Available lc1-RSRC)
		)
 :poss-effect (and
		(not (clear)))
)

(:action lbe-Simplex-Letter
 :parameters ( ?sheet - sheet_t ?face - side_t ?image - image_t)
 :precondition (and
		(clear)
		(Available lbe-RSRC)
		(Sheetsize ?sheet Letter)
		(Sideup ?sheet ?face)
		(Imagecolor ?image Black)
		(Location ?sheet lbe_Entry-lc1_OffRamp)
		(Notprintedwith ?sheet ?face Black))
 :effect (and
		(not (Available lbe-RSRC))
		(Location ?sheet lc1_OnRamp-lbe_Exit)
		(Hasimage ?sheet ?face ?image)
		(not (Location ?sheet lbe_Entry-lc1_OffRamp))
		(not (Notprintedwith ?sheet ?face Black))
		(Available lbe-RSRC)
		)
 :poss-effect (and
		(not (clear)))
)

(:action lbe-Simplex-Legal
 :parameters ( ?sheet - sheet_t ?face - side_t ?image - image_t)
 :precondition (and
		(clear)
		(Available lbe-RSRC)
		(Sheetsize ?sheet Legal)
		(Sideup ?sheet ?face)
		(Imagecolor ?image Black)
		(Location ?sheet lbe_Entry-lc1_OffRamp)
		(Notprintedwith ?sheet ?face Black))
 :effect (and
		(not (Available lbe-RSRC))
		(Location ?sheet lc1_OnRamp-lbe_Exit)
		(Hasimage ?sheet ?face ?image)
		(not (Location ?sheet lbe_Entry-lc1_OffRamp))
		(not (Notprintedwith ?sheet ?face Black))
		(Available lbe-RSRC)
		)
 :poss-effect (and
		(not (clear)))
)

(:action lbe-Simplex-A4
 :parameters ( ?sheet - sheet_t ?face - side_t ?image - image_t)
 :precondition (and
		(clear)
		(Available lbe-RSRC)
		(Sheetsize ?sheet A4)
		(Sideup ?sheet ?face)
		(Imagecolor ?image Black)
		(Location ?sheet lbe_Entry-lc1_OffRamp)
		(Notprintedwith ?sheet ?face Black))
 :effect (and
		(not (Available lbe-RSRC))
		(Location ?sheet lc1_OnRamp-lbe_Exit)
		(Hasimage ?sheet ?face ?image)
		(not (Location ?sheet lbe_Entry-lc1_OffRamp))
		(not (Notprintedwith ?sheet ?face Black))
		(Available lbe-RSRC)
		)
)

(:action rh1-ReturnMove-Letter
 :parameters ( ?sheet - sheet_t)
 :precondition (and
		(clear)
		(Available rh1-RSRC)
		(Sheetsize ?sheet Letter)
		(Location ?sheet rh1_Entry-rh2_Exit))
 :effect (and
		(not (Available rh1-RSRC))
		(Location ?sheet rh1_Exit-im1_ReturnEntry)
		(not (Location ?sheet rh1_Entry-rh2_Exit))
		(Available rh1-RSRC)
		)
)

(:action rh1-ReturnMove-Legal
 :parameters ( ?sheet - sheet_t)
 :precondition (and
		(clear)
		(Available rh1-RSRC)
		(Sheetsize ?sheet Legal)
		(Location ?sheet rh1_Entry-rh2_Exit))
 :effect (and
		(not (Available rh1-RSRC))
		(Location ?sheet rh1_Exit-im1_ReturnEntry)
		(not (Location ?sheet rh1_Entry-rh2_Exit))
		(Available rh1-RSRC)
		)
)

(:action rh1-ReturnMove-A4
 :parameters ( ?sheet - sheet_t)
 :precondition (and
		(clear)
		(Available rh1-RSRC)
		(Sheetsize ?sheet A4)
		(Location ?sheet rh1_Entry-rh2_Exit))
 :effect (and
		(not (Available rh1-RSRC))
		(Location ?sheet rh1_Exit-im1_ReturnEntry)
		(not (Location ?sheet rh1_Entry-rh2_Exit))
		(Available rh1-RSRC)
		)
 :poss-effect (and
		(not (clear)))
)

(:action uc2-fMove-Letter
 :parameters ( ?sheet - sheet_t)
 :precondition (and
		(clear)
		(Available uc2-RSRC)
		(Sheetsize ?sheet Letter)
		(Location ?sheet uc2_Entry-uc1_Exit))
 :effect (and
		(not (Available uc2-RSRC))
		(Location ?sheet uc2_Exit-om_TopEntry)
		(not (Location ?sheet uc2_Entry-uc1_Exit))
		(Available uc2-RSRC)
		)
 :poss-effect (and
		(not (clear)))
)

(:action uc2-fMove-Legal
 :parameters ( ?sheet - sheet_t)
 :precondition (and
		(clear)
		(Available uc2-RSRC)
		(Sheetsize ?sheet Legal)
		(Location ?sheet uc2_Entry-uc1_Exit))
 :effect (and
		(not (Available uc2-RSRC))
		(Location ?sheet uc2_Exit-om_TopEntry)
		(not (Location ?sheet uc2_Entry-uc1_Exit))
		(Available uc2-RSRC)
		)
)

(:action uc2-fMove-A4
 :parameters ( ?sheet - sheet_t)
 :precondition (and
		(clear)
		(Available uc2-RSRC)
		(Sheetsize ?sheet A4)
		(Location ?sheet uc2_Entry-uc1_Exit))
 :effect (and
		(not (Available uc2-RSRC))
		(Location ?sheet uc2_Exit-om_TopEntry)
		(not (Location ?sheet uc2_Entry-uc1_Exit))
		(Available uc2-RSRC)
		)
 :poss-effect (and
		(not (clear)))
)

(:action uc2-Divert-Letter
 :parameters ( ?sheet - sheet_t ?face - side_t ?otherface - side_t)
 :precondition (and
		(clear)
		(Available uc2-RSRC)
		(Sheetsize ?sheet Letter)
		(Oppositeside ?face ?otherface)
		(Location ?sheet uc2_Entry-uc1_Exit)
		(Sideup ?sheet ?face))
 :effect (and
		(not (Available uc2-RSRC))
		(Location ?sheet ure_Entry-uc2_OffRamp)
		(Sideup ?sheet ?otherface)
		(not (Location ?sheet uc2_Entry-uc1_Exit))
		(not (Sideup ?sheet ?face))
		(Available uc2-RSRC)
		)
)

(:action uc2-Divert-Legal
 :parameters ( ?sheet - sheet_t ?face - side_t ?otherface - side_t)
 :precondition (and
		(clear)
		(Available uc2-RSRC)
		(Sheetsize ?sheet Legal)
		(Oppositeside ?face ?otherface)
		(Location ?sheet uc2_Entry-uc1_Exit)
		(Sideup ?sheet ?face))
 :effect (and
		(not (Available uc2-RSRC))
		(Location ?sheet ure_Entry-uc2_OffRamp)
		(Sideup ?sheet ?otherface)
		(not (Location ?sheet uc2_Entry-uc1_Exit))
		(not (Sideup ?sheet ?face))
		(Available uc2-RSRC)
		)
 :poss-effect (and
		(not (clear)))
)

(:action uc2-Divert-A4
 :parameters ( ?sheet - sheet_t ?face - side_t ?otherface - side_t)
 :precondition (and
		(clear)
		(Available uc2-RSRC)
		(Sheetsize ?sheet A4)
		(Oppositeside ?face ?otherface)
		(Location ?sheet uc2_Entry-uc1_Exit)
		(Sideup ?sheet ?face))
 :effect (and
		(not (Available uc2-RSRC))
		(Location ?sheet ure_Entry-uc2_OffRamp)
		(Sideup ?sheet ?otherface)
		(not (Location ?sheet uc2_Entry-uc1_Exit))
		(not (Sideup ?sheet ?face))
		(Available uc2-RSRC)
		)
 :poss-effect (and
		(not (clear)))
)

(:action uc2-Merge-Letter
 :parameters ( ?sheet - sheet_t ?face - side_t ?otherface - side_t)
 :precondition (and
		(clear)
		(Available uc2-RSRC)
		(Sheetsize ?sheet Letter)
		(Oppositeside ?face ?otherface)
		(Location ?sheet ure_Exit-uc2_OnRamp)
		(Sideup ?sheet ?face))
 :effect (and
		(not (Available uc2-RSRC))
		(Location ?sheet uc2_Exit-om_TopEntry)
		(Sideup ?sheet ?otherface)
		(not (Location ?sheet ure_Exit-uc2_OnRamp))
		(not (Sideup ?sheet ?face))
		(Available uc2-RSRC)
		)
 :poss-effect (and
		(not (clear)))
)

(:action uc2-Merge-Legal
 :parameters ( ?sheet - sheet_t ?face - side_t ?otherface - side_t)
 :precondition (and
		(clear)
		(Available uc2-RSRC)
		(Sheetsize ?sheet Legal)
		(Oppositeside ?face ?otherface)
		(Location ?sheet ure_Exit-uc2_OnRamp)
		(Sideup ?sheet ?face))
 :effect (and
		(not (Available uc2-RSRC))
		(Location ?sheet uc2_Exit-om_TopEntry)
		(Sideup ?sheet ?otherface)
		(not (Location ?sheet ure_Exit-uc2_OnRamp))
		(not (Sideup ?sheet ?face))
		(Available uc2-RSRC)
		)
)

(:action uc2-Merge-A4
 :parameters ( ?sheet - sheet_t ?face - side_t ?otherface - side_t)
 :precondition (and
		(clear)
		(Available uc2-RSRC)
		(Sheetsize ?sheet A4)
		(Oppositeside ?face ?otherface)
		(Location ?sheet ure_Exit-uc2_OnRamp)
		(Sideup ?sheet ?face))
 :effect (and
		(not (Available uc2-RSRC))
		(Location ?sheet uc2_Exit-om_TopEntry)
		(Sideup ?sheet ?otherface)
		(not (Location ?sheet ure_Exit-uc2_OnRamp))
		(not (Sideup ?sheet ?face))
		(Available uc2-RSRC)
		)
 :poss-effect (and
		(not (clear)))
)

(:action uc2-MergeInvert-Letter
 :parameters ( ?sheet - sheet_t)
 :precondition (and
		(clear)
		(Available uc2-RSRC)
		(Sheetsize ?sheet Letter)
		(Location ?sheet ure_Exit-uc2_OnRamp))
 :effect (and
		(not (Available uc2-RSRC))
		(Location ?sheet uc2_Exit-om_TopEntry)
		(not (Location ?sheet ure_Exit-uc2_OnRamp))
		(Available uc2-RSRC)
		)
)

(:action uc2-MergeInvert-Legal
 :parameters ( ?sheet - sheet_t)
 :precondition (and
		(clear)
		(Available uc2-RSRC)
		(Sheetsize ?sheet Legal)
		(Location ?sheet ure_Exit-uc2_OnRamp))
 :effect (and
		(not (Available uc2-RSRC))
		(Location ?sheet uc2_Exit-om_TopEntry)
		(not (Location ?sheet ure_Exit-uc2_OnRamp))
		(Available uc2-RSRC)
		)
 :poss-effect (and
		(not (clear)))
)

(:action uc2-MergeInvert-A4
 :parameters ( ?sheet - sheet_t)
 :precondition (and
		(clear)
		(Available uc2-RSRC)
		(Sheetsize ?sheet A4)
		(Location ?sheet ure_Exit-uc2_OnRamp))
 :effect (and
		(not (Available uc2-RSRC))
		(Location ?sheet uc2_Exit-om_TopEntry)
		(not (Location ?sheet ure_Exit-uc2_OnRamp))
		(Available uc2-RSRC)
		)
 :poss-effect (and
		(not (clear)))
)

(:action ure-Simplex-Letter
 :parameters ( ?sheet - sheet_t ?face - side_t ?image - image_t)
 :precondition (and
		(clear)
		(Available ure-RSRC)
		(Sheetsize ?sheet Letter)
		(Sideup ?sheet ?face)
		(Imagecolor ?image Color)
		(Location ?sheet ure_Entry-uc2_OffRamp)
		(Notprintedwith ?sheet ?face Color))
 :effect (and
		(not (Available ure-RSRC))
		(Location ?sheet ure_Exit-uc2_OnRamp)
		(Hasimage ?sheet ?face ?image)
		(not (Location ?sheet ure_Entry-uc2_OffRamp))
		(not (Notprintedwith ?sheet ?face Color))
		(Available ure-RSRC)
		)
 :poss-effect (and
		(not (clear)))
)

(:action ure-Simplex-Legal
 :parameters ( ?sheet - sheet_t ?face - side_t ?image - image_t)
 :precondition (and
		(clear)
		(Available ure-RSRC)
		(Sheetsize ?sheet Legal)
		(Sideup ?sheet ?face)
		(Imagecolor ?image Color)
		(Location ?sheet ure_Entry-uc2_OffRamp)
		(Notprintedwith ?sheet ?face Color))
 :effect (and
		(not (Available ure-RSRC))
		(Location ?sheet ure_Exit-uc2_OnRamp)
		(Hasimage ?sheet ?face ?image)
		(not (Location ?sheet ure_Entry-uc2_OffRamp))
		(not (Notprintedwith ?sheet ?face Color))
		(Available ure-RSRC)
		)
 :poss-effect (and
		(not (clear)))
)

(:action ure-Simplex-A4
 :parameters ( ?sheet - sheet_t ?face - side_t ?image - image_t)
 :precondition (and
		(clear)
		(Available ure-RSRC)
		(Sheetsize ?sheet A4)
		(Sideup ?sheet ?face)
		(Imagecolor ?image Color)
		(Location ?sheet ure_Entry-uc2_OffRamp)
		(Notprintedwith ?sheet ?face Color))
 :effect (and
		(not (Available ure-RSRC))
		(Location ?sheet ure_Exit-uc2_OnRamp)
		(Hasimage ?sheet ?face ?image)
		(not (Location ?sheet ure_Entry-uc2_OffRamp))
		(not (Notprintedwith ?sheet ?face Color))
		(Available ure-RSRC)
		)
)

(:action ure-SimplexMono-Letter
 :parameters ( ?sheet - sheet_t ?face - side_t ?image - image_t)
 :precondition (and
		(clear)
		(Available ure-RSRC)
		(Sheetsize ?sheet Letter)
		(Sideup ?sheet ?face)
		(Imagecolor ?image Black)
		(Location ?sheet ure_Entry-uc2_OffRamp)
		(Notprintedwith ?sheet ?face Black))
 :effect (and
		(not (Available ure-RSRC))
		(Location ?sheet ure_Exit-uc2_OnRamp)
		(Hasimage ?sheet ?face ?image)
		(not (Location ?sheet ure_Entry-uc2_OffRamp))
		(not (Notprintedwith ?sheet ?face Black))
		(Available ure-RSRC)
		)
 :poss-effect (and
		(not (clear)))
)

(:action ure-SimplexMono-Legal
 :parameters ( ?sheet - sheet_t ?face - side_t ?image - image_t)
 :precondition (and
		(clear)
		(Available ure-RSRC)
		(Sheetsize ?sheet Legal)
		(Sideup ?sheet ?face)
		(Imagecolor ?image Black)
		(Location ?sheet ure_Entry-uc2_OffRamp)
		(Notprintedwith ?sheet ?face Black))
 :effect (and
		(not (Available ure-RSRC))
		(Location ?sheet ure_Exit-uc2_OnRamp)
		(Hasimage ?sheet ?face ?image)
		(not (Location ?sheet ure_Entry-uc2_OffRamp))
		(not (Notprintedwith ?sheet ?face Black))
		(Available ure-RSRC)
		)
 :poss-effect (and
		(not (clear)))
)

(:action ure-SimplexMono-A4
 :parameters ( ?sheet - sheet_t ?face - side_t ?image - image_t)
 :precondition (and
		(clear)
		(Available ure-RSRC)
		(Sheetsize ?sheet A4)
		(Sideup ?sheet ?face)
		(Imagecolor ?image Black)
		(Location ?sheet ure_Entry-uc2_OffRamp)
		(Notprintedwith ?sheet ?face Black))
 :effect (and
		(not (Available ure-RSRC))
		(Location ?sheet ure_Exit-uc2_OnRamp)
		(Hasimage ?sheet ?face ?image)
		(not (Location ?sheet ure_Entry-uc2_OffRamp))
		(not (Notprintedwith ?sheet ?face Black))
		(Available ure-RSRC)
		)
)

(:action lc2-fMove-Letter
 :parameters ( ?sheet - sheet_t)
 :precondition (and
		(clear)
		(Available lc2-RSRC)
		(Sheetsize ?sheet Letter)
		(Location ?sheet lc1_Exit-lc2_Entry))
 :effect (and
		(not (Available lc2-RSRC))
		(Location ?sheet om_BottomEntry-lc2_Exit)
		(not (Location ?sheet lc1_Exit-lc2_Entry))
		(Available lc2-RSRC)
		)
)

(:action lc2-fMove-Legal
 :parameters ( ?sheet - sheet_t)
 :precondition (and
		(clear)
		(Available lc2-RSRC)
		(Sheetsize ?sheet Legal)
		(Location ?sheet lc1_Exit-lc2_Entry))
 :effect (and
		(not (Available lc2-RSRC))
		(Location ?sheet om_BottomEntry-lc2_Exit)
		(not (Location ?sheet lc1_Exit-lc2_Entry))
		(Available lc2-RSRC)
		)
)

(:action lc2-fMove-A4
 :parameters ( ?sheet - sheet_t)
 :precondition (and
		(clear)
		(Available lc2-RSRC)
		(Sheetsize ?sheet A4)
		(Location ?sheet lc1_Exit-lc2_Entry))
 :effect (and
		(not (Available lc2-RSRC))
		(Location ?sheet om_BottomEntry-lc2_Exit)
		(not (Location ?sheet lc1_Exit-lc2_Entry))
		(Available lc2-RSRC)
		)
)

(:action lc2-Divert-Letter
 :parameters ( ?sheet - sheet_t ?face - side_t ?otherface - side_t)
 :precondition (and
		(clear)
		(Available lc2-RSRC)
		(Sheetsize ?sheet Letter)
		(Oppositeside ?face ?otherface)
		(Location ?sheet lc1_Exit-lc2_Entry)
		(Sideup ?sheet ?face))
 :effect (and
		(not (Available lc2-RSRC))
		(Location ?sheet lre_Entry-lc2_OffRamp)
		(Sideup ?sheet ?otherface)
		(not (Location ?sheet lc1_Exit-lc2_Entry))
		(not (Sideup ?sheet ?face))
		(Available lc2-RSRC)
		)
)

(:action lc2-Divert-Legal
 :parameters ( ?sheet - sheet_t ?face - side_t ?otherface - side_t)
 :precondition (and
		(clear)
		(Available lc2-RSRC)
		(Sheetsize ?sheet Legal)
		(Oppositeside ?face ?otherface)
		(Location ?sheet lc1_Exit-lc2_Entry)
		(Sideup ?sheet ?face))
 :effect (and
		(not (Available lc2-RSRC))
		(Location ?sheet lre_Entry-lc2_OffRamp)
		(Sideup ?sheet ?otherface)
		(not (Location ?sheet lc1_Exit-lc2_Entry))
		(not (Sideup ?sheet ?face))
		(Available lc2-RSRC)
		)
 :poss-effect (and
		(not (clear)))
)

(:action lc2-Divert-A4
 :parameters ( ?sheet - sheet_t ?face - side_t ?otherface - side_t)
 :precondition (and
		(clear)
		(Available lc2-RSRC)
		(Sheetsize ?sheet A4)
		(Oppositeside ?face ?otherface)
		(Location ?sheet lc1_Exit-lc2_Entry)
		(Sideup ?sheet ?face))
 :effect (and
		(not (Available lc2-RSRC))
		(Location ?sheet lre_Entry-lc2_OffRamp)
		(Sideup ?sheet ?otherface)
		(not (Location ?sheet lc1_Exit-lc2_Entry))
		(not (Sideup ?sheet ?face))
		(Available lc2-RSRC)
		)
)

(:action lc2-Merge-Letter
 :parameters ( ?sheet - sheet_t ?face - side_t ?otherface - side_t)
 :precondition (and
		(clear)
		(Available lc2-RSRC)
		(Sheetsize ?sheet Letter)
		(Oppositeside ?face ?otherface)
		(Location ?sheet lc2_OnRamp-lre_Exit)
		(Sideup ?sheet ?face))
 :effect (and
		(not (Available lc2-RSRC))
		(Location ?sheet om_BottomEntry-lc2_Exit)
		(Sideup ?sheet ?otherface)
		(not (Location ?sheet lc2_OnRamp-lre_Exit))
		(not (Sideup ?sheet ?face))
		(Available lc2-RSRC)
		)
)

(:action lc2-Merge-Legal
 :parameters ( ?sheet - sheet_t ?face - side_t ?otherface - side_t)
 :precondition (and
		(clear)
		(Available lc2-RSRC)
		(Sheetsize ?sheet Legal)
		(Oppositeside ?face ?otherface)
		(Location ?sheet lc2_OnRamp-lre_Exit)
		(Sideup ?sheet ?face))
 :effect (and
		(not (Available lc2-RSRC))
		(Location ?sheet om_BottomEntry-lc2_Exit)
		(Sideup ?sheet ?otherface)
		(not (Location ?sheet lc2_OnRamp-lre_Exit))
		(not (Sideup ?sheet ?face))
		(Available lc2-RSRC)
		)
 :poss-effect (and
		(not (clear)))
)

(:action lc2-Merge-A4
 :parameters ( ?sheet - sheet_t ?face - side_t ?otherface - side_t)
 :precondition (and
		(clear)
		(Available lc2-RSRC)
		(Sheetsize ?sheet A4)
		(Oppositeside ?face ?otherface)
		(Location ?sheet lc2_OnRamp-lre_Exit)
		(Sideup ?sheet ?face))
 :effect (and
		(not (Available lc2-RSRC))
		(Location ?sheet om_BottomEntry-lc2_Exit)
		(Sideup ?sheet ?otherface)
		(not (Location ?sheet lc2_OnRamp-lre_Exit))
		(not (Sideup ?sheet ?face))
		(Available lc2-RSRC)
		)
)

(:action lc2-MergeInvert-Letter
 :parameters ( ?sheet - sheet_t)
 :precondition (and
		(clear)
		(Available lc2-RSRC)
		(Sheetsize ?sheet Letter)
		(Location ?sheet lc2_OnRamp-lre_Exit))
 :effect (and
		(not (Available lc2-RSRC))
		(Location ?sheet om_BottomEntry-lc2_Exit)
		(not (Location ?sheet lc2_OnRamp-lre_Exit))
		(Available lc2-RSRC)
		)
 :poss-effect (and
		(not (clear)))
)

(:action lc2-MergeInvert-Legal
 :parameters ( ?sheet - sheet_t)
 :precondition (and
		(clear)
		(Available lc2-RSRC)
		(Sheetsize ?sheet Legal)
		(Location ?sheet lc2_OnRamp-lre_Exit))
 :effect (and
		(not (Available lc2-RSRC))
		(Location ?sheet om_BottomEntry-lc2_Exit)
		(not (Location ?sheet lc2_OnRamp-lre_Exit))
		(Available lc2-RSRC)
		)
)

(:action lc2-MergeInvert-A4
 :parameters ( ?sheet - sheet_t)
 :precondition (and
		(clear)
		(Available lc2-RSRC)
		(Sheetsize ?sheet A4)
		(Location ?sheet lc2_OnRamp-lre_Exit))
 :effect (and
		(not (Available lc2-RSRC))
		(Location ?sheet om_BottomEntry-lc2_Exit)
		(not (Location ?sheet lc2_OnRamp-lre_Exit))
		(Available lc2-RSRC)
		)
)

(:action lre-Simplex-Letter
 :parameters ( ?sheet - sheet_t ?face - side_t ?image - image_t)
 :precondition (and
		(clear)
		(Available lre-RSRC)
		(Sheetsize ?sheet Letter)
		(Sideup ?sheet ?face)
		(Imagecolor ?image Color)
		(Location ?sheet lre_Entry-lc2_OffRamp)
		(Notprintedwith ?sheet ?face Color))
 :effect (and
		(not (Available lre-RSRC))
		(Location ?sheet lc2_OnRamp-lre_Exit)
		(Hasimage ?sheet ?face ?image)
		(not (Location ?sheet lre_Entry-lc2_OffRamp))
		(not (Notprintedwith ?sheet ?face Color))
		(Available lre-RSRC)
		)
 :poss-effect (and
		(not (clear)))
)

(:action lre-Simplex-Legal
 :parameters ( ?sheet - sheet_t ?face - side_t ?image - image_t)
 :precondition (and
		(clear)
		(Available lre-RSRC)
		(Sheetsize ?sheet Legal)
		(Sideup ?sheet ?face)
		(Imagecolor ?image Color)
		(Location ?sheet lre_Entry-lc2_OffRamp)
		(Notprintedwith ?sheet ?face Color))
 :effect (and
		(not (Available lre-RSRC))
		(Location ?sheet lc2_OnRamp-lre_Exit)
		(Hasimage ?sheet ?face ?image)
		(not (Location ?sheet lre_Entry-lc2_OffRamp))
		(not (Notprintedwith ?sheet ?face Color))
		(Available lre-RSRC)
		)
)

(:action lre-Simplex-A4
 :parameters ( ?sheet - sheet_t ?face - side_t ?image - image_t)
 :precondition (and
		(clear)
		(Available lre-RSRC)
		(Sheetsize ?sheet A4)
		(Sideup ?sheet ?face)
		(Imagecolor ?image Color)
		(Location ?sheet lre_Entry-lc2_OffRamp)
		(Notprintedwith ?sheet ?face Color))
 :effect (and
		(not (Available lre-RSRC))
		(Location ?sheet lc2_OnRamp-lre_Exit)
		(Hasimage ?sheet ?face ?image)
		(not (Location ?sheet lre_Entry-lc2_OffRamp))
		(not (Notprintedwith ?sheet ?face Color))
		(Available lre-RSRC)
		)
)

(:action lre-SimplexMono-Letter
 :parameters ( ?sheet - sheet_t ?face - side_t ?image - image_t)
 :precondition (and
		(clear)
		(Available lre-RSRC)
		(Sheetsize ?sheet Letter)
		(Sideup ?sheet ?face)
		(Imagecolor ?image Black)
		(Location ?sheet lre_Entry-lc2_OffRamp)
		(Notprintedwith ?sheet ?face Black))
 :effect (and
		(not (Available lre-RSRC))
		(Location ?sheet lc2_OnRamp-lre_Exit)
		(Hasimage ?sheet ?face ?image)
		(not (Location ?sheet lre_Entry-lc2_OffRamp))
		(not (Notprintedwith ?sheet ?face Black))
		(Available lre-RSRC)
		)
 :poss-effect (and
		(not (clear)))
)

(:action lre-SimplexMono-Legal
 :parameters ( ?sheet - sheet_t ?face - side_t ?image - image_t)
 :precondition (and
		(clear)
		(Available lre-RSRC)
		(Sheetsize ?sheet Legal)
		(Sideup ?sheet ?face)
		(Imagecolor ?image Black)
		(Location ?sheet lre_Entry-lc2_OffRamp)
		(Notprintedwith ?sheet ?face Black))
 :effect (and
		(not (Available lre-RSRC))
		(Location ?sheet lc2_OnRamp-lre_Exit)
		(Hasimage ?sheet ?face ?image)
		(not (Location ?sheet lre_Entry-lc2_OffRamp))
		(not (Notprintedwith ?sheet ?face Black))
		(Available lre-RSRC)
		)
 :poss-effect (and
		(not (clear)))
)

(:action lre-SimplexMono-A4
 :parameters ( ?sheet - sheet_t ?face - side_t ?image - image_t)
 :precondition (and
		(clear)
		(Available lre-RSRC)
		(Sheetsize ?sheet A4)
		(Sideup ?sheet ?face)
		(Imagecolor ?image Black)
		(Location ?sheet lre_Entry-lc2_OffRamp)
		(Notprintedwith ?sheet ?face Black))
 :effect (and
		(not (Available lre-RSRC))
		(Location ?sheet lc2_OnRamp-lre_Exit)
		(Hasimage ?sheet ?face ?image)
		(not (Location ?sheet lre_Entry-lc2_OffRamp))
		(not (Notprintedwith ?sheet ?face Black))
		(Available lre-RSRC)
		)
)

(:action rh2-ReturnMove-Letter
 :parameters ( ?sheet - sheet_t)
 :precondition (and
		(clear)
		(Available rh2-RSRC)
		(Sheetsize ?sheet Letter)
		(Location ?sheet om_ReturnExit-rh2_Entry))
 :effect (and
		(not (Available rh2-RSRC))
		(Location ?sheet rh1_Entry-rh2_Exit)
		(not (Location ?sheet om_ReturnExit-rh2_Entry))
		(Available rh2-RSRC)
		)
)

(:action rh2-ReturnMove-Legal
 :parameters ( ?sheet - sheet_t)
 :precondition (and
		(clear)
		(Available rh2-RSRC)
		(Sheetsize ?sheet Legal)
		(Location ?sheet om_ReturnExit-rh2_Entry))
 :effect (and
		(not (Available rh2-RSRC))
		(Location ?sheet rh1_Entry-rh2_Exit)
		(not (Location ?sheet om_ReturnExit-rh2_Entry))
		(Available rh2-RSRC)
		)
)

(:action rh2-ReturnMove-A4
 :parameters ( ?sheet - sheet_t)
 :precondition (and
		(clear)
		(Available rh2-RSRC)
		(Sheetsize ?sheet A4)
		(Location ?sheet om_ReturnExit-rh2_Entry))
 :effect (and
		(not (Available rh2-RSRC))
		(Location ?sheet rh1_Entry-rh2_Exit)
		(not (Location ?sheet om_ReturnExit-rh2_Entry))
		(Available rh2-RSRC)
		)
)

(:action om-UpperOut-Letter
 :parameters ( ?sheet - sheet_t)
 :precondition (and
		(clear)
		(Available om-RSRC)
		(Sheetsize ?sheet Letter)
		(Location ?sheet uc2_Exit-om_TopEntry))
 :effect (and
		(not (Available om-RSRC))
		(Location ?sheet om_OutputExit-sys_Entry)
		(not (Location ?sheet uc2_Exit-om_TopEntry))
		(Available om-RSRC)
		)
 :poss-effect (and
		(not (clear)))
)

(:action om-UpperOut-Legal
 :parameters ( ?sheet - sheet_t)
 :precondition (and
		(clear)
		(Available om-RSRC)
		(Sheetsize ?sheet Legal)
		(Location ?sheet uc2_Exit-om_TopEntry))
 :effect (and
		(not (Available om-RSRC))
		(Location ?sheet om_OutputExit-sys_Entry)
		(not (Location ?sheet uc2_Exit-om_TopEntry))
		(Available om-RSRC)
		)
)

(:action om-UpperOut-A4
 :parameters ( ?sheet - sheet_t)
 :precondition (and
		(clear)
		(Available om-RSRC)
		(Sheetsize ?sheet A4)
		(Location ?sheet uc2_Exit-om_TopEntry))
 :effect (and
		(not (Available om-RSRC))
		(Location ?sheet om_OutputExit-sys_Entry)
		(not (Location ?sheet uc2_Exit-om_TopEntry))
		(Available om-RSRC)
		)
 :poss-effect (and
		(not (clear)))
)

(:action om-LowerOut-Letter
 :parameters ( ?sheet - sheet_t)
 :precondition (and
		(clear)
		(Available om-RSRC)
		(Sheetsize ?sheet Letter)
		(Location ?sheet om_BottomEntry-lc2_Exit))
 :effect (and
		(not (Available om-RSRC))
		(Location ?sheet om_OutputExit-sys_Entry)
		(not (Location ?sheet om_BottomEntry-lc2_Exit))
		(Available om-RSRC)
		)
)

(:action om-LowerOut-Legal
 :parameters ( ?sheet - sheet_t)
 :precondition (and
		(clear)
		(Available om-RSRC)
		(Sheetsize ?sheet Legal)
		(Location ?sheet om_BottomEntry-lc2_Exit))
 :effect (and
		(not (Available om-RSRC))
		(Location ?sheet om_OutputExit-sys_Entry)
		(not (Location ?sheet om_BottomEntry-lc2_Exit))
		(Available om-RSRC)
		)
 :poss-effect (and
		(not (clear)))
)

(:action om-LowerOut-A4
 :parameters ( ?sheet - sheet_t)
 :precondition (and
		(clear)
		(Available om-RSRC)
		(Sheetsize ?sheet A4)
		(Location ?sheet om_BottomEntry-lc2_Exit))
 :effect (and
		(not (Available om-RSRC))
		(Location ?sheet om_OutputExit-sys_Entry)
		(not (Location ?sheet om_BottomEntry-lc2_Exit))
		(Available om-RSRC)
		)
 :poss-effect (and
		(not (clear)))
)

(:action om-UpperReturn-Letter
 :parameters ( ?sheet - sheet_t)
 :precondition (and
		(clear)
		(Available om-RSRC)
		(Sheetsize ?sheet Letter)
		(Location ?sheet uc2_Exit-om_TopEntry))
 :effect (and
		(not (Available om-RSRC))
		(Location ?sheet om_ReturnExit-rh2_Entry)
		(not (Location ?sheet uc2_Exit-om_TopEntry))
		(Available om-RSRC)
		)
 :poss-effect (and
		(not (clear)))
)

(:action om-UpperReturn-Legal
 :parameters ( ?sheet - sheet_t)
 :precondition (and
		(clear)
		(Available om-RSRC)
		(Sheetsize ?sheet Legal)
		(Location ?sheet uc2_Exit-om_TopEntry))
 :effect (and
		(not (Available om-RSRC))
		(Location ?sheet om_ReturnExit-rh2_Entry)
		(not (Location ?sheet uc2_Exit-om_TopEntry))
		(Available om-RSRC)
		)
 :poss-effect (and
		(not (clear)))
)

(:action om-UpperReturn-A4
 :parameters ( ?sheet - sheet_t)
 :precondition (and
		(clear)
		(Available om-RSRC)
		(Sheetsize ?sheet A4)
		(Location ?sheet uc2_Exit-om_TopEntry))
 :effect (and
		(not (Available om-RSRC))
		(Location ?sheet om_ReturnExit-rh2_Entry)
		(not (Location ?sheet uc2_Exit-om_TopEntry))
		(Available om-RSRC)
		)
)

(:action om-LowerReturn-Letter
 :parameters ( ?sheet - sheet_t)
 :precondition (and
		(clear)
		(Available om-RSRC)
		(Sheetsize ?sheet Letter)
		(Location ?sheet om_BottomEntry-lc2_Exit))
 :effect (and
		(not (Available om-RSRC))
		(Location ?sheet om_ReturnExit-rh2_Entry)
		(not (Location ?sheet om_BottomEntry-lc2_Exit))
		(Available om-RSRC)
		)
 :poss-effect (and
		(not (clear)))
)

(:action om-LowerReturn-Legal
 :parameters ( ?sheet - sheet_t)
 :precondition (and
		(clear)
		(Available om-RSRC)
		(Sheetsize ?sheet Legal)
		(Location ?sheet om_BottomEntry-lc2_Exit))
 :effect (and
		(not (Available om-RSRC))
		(Location ?sheet om_ReturnExit-rh2_Entry)
		(not (Location ?sheet om_BottomEntry-lc2_Exit))
		(Available om-RSRC)
		)
)

(:action om-LowerReturn-A4
 :parameters ( ?sheet - sheet_t)
 :precondition (and
		(clear)
		(Available om-RSRC)
		(Sheetsize ?sheet A4)
		(Location ?sheet om_BottomEntry-lc2_Exit))
 :effect (and
		(not (Available om-RSRC))
		(Location ?sheet om_ReturnExit-rh2_Entry)
		(not (Location ?sheet om_BottomEntry-lc2_Exit))
		(Available om-RSRC)
		)
 :poss-effect (and
		(not (clear)))
)

(:action sys-Stack-Letter
 :parameters ( ?sheet - sheet_t ?prevsheet - sheet_t)
 :precondition (and
		(clear)
		(Available sys-RSRC)
		(Prevsheet ?sheet ?prevsheet)
		(Location ?prevsheet Some_Finisher_Tray)
		(Sheetsize ?sheet Letter)
		(Location ?sheet om_OutputExit-sys_Entry))
 :effect (and
		(not (Available sys-RSRC))
		(Location ?sheet Some_Finisher_Tray)
		(Stackedin ?sheet sys_OutputTray)
		(not (Location ?sheet om_OutputExit-sys_Entry))
		(Available sys-RSRC)
		)
)

(:action sys-Stack-Legal
 :parameters ( ?sheet - sheet_t ?prevsheet - sheet_t)
 :precondition (and
		(clear)
		(Available sys-RSRC)
		(Prevsheet ?sheet ?prevsheet)
		(Location ?prevsheet Some_Finisher_Tray)
		(Sheetsize ?sheet Legal)
		(Location ?sheet om_OutputExit-sys_Entry))
 :effect (and
		(not (Available sys-RSRC))
		(Location ?sheet Some_Finisher_Tray)
		(Stackedin ?sheet sys_OutputTray)
		(not (Location ?sheet om_OutputExit-sys_Entry))
		(Available sys-RSRC)
		)
)

(:action sys-Stack-A4
 :parameters ( ?sheet - sheet_t ?prevsheet - sheet_t)
 :precondition (and
		(clear)
		(Available sys-RSRC)
		(Prevsheet ?sheet ?prevsheet)
		(Location ?prevsheet Some_Finisher_Tray)
		(Sheetsize ?sheet A4)
		(Location ?sheet om_OutputExit-sys_Entry))
 :effect (and
		(not (Available sys-RSRC))
		(Location ?sheet Some_Finisher_Tray)
		(Stackedin ?sheet sys_OutputTray)
		(not (Location ?sheet om_OutputExit-sys_Entry))
		(Available sys-RSRC)
		)
 :poss-effect (and
		(not (clear)))
)

)


