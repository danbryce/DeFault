;; Problem file modified by FFrisky incomplete parcprinter translator
(define (problem PrintJob)
(:domain eTipp)
(:objects
		dummy-sheet
		sheet1 - sheet_t
		image-1 - image_t
)
(:init
		(clear)
		(Uninitialized)

		(Oppositeside Front Back)
		(Oppositeside Back Front)
		(Location dummy-sheet Some_Finisher_Tray)
		(Prevsheet sheet1 dummy-sheet)
		(Sheetsize sheet1 A4)
		(Location sheet1 Some_Feeder_Tray)
		(Imagecolor image-1 Black)
		(Notprintedwith sheet1 Front Black)
		(Notprintedwith sheet1 Back Black)
		(Notprintedwith sheet1 Front Color)
		(Notprintedwith sheet1 Back Color)
)
(:goal (and
		(clear)
		(Hasimage sheet1 Front image-1)
		(Notprintedwith sheet1 Front Color)
		(Notprintedwith sheet1 Back Black)
		(Notprintedwith sheet1 Back Color)
		(Sideup sheet1 Front)
		(Stackedin sheet1 sys_OutputTray))
)

)
