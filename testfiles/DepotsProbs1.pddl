(define (problem depotprobZeyn) (:domain Depot)
(:objects
	depot0 - Depot
	distributor0 distributor1 - Distributor
	truck0 truck1 - Truck
	pallet0 pallet1 pallet2 - Pallet
	crate0 crate1 - Crate
	hoist0 hoist1 hoist2 - Hoist)
(:init
	(posn pallet0 depot0)
	(clear crate1)
	(posn pallet1 distributor0)
	(clear crate0)
	(posn pallet2 distributor1)
	(clear pallet2)
	(posn truck0 distributor1)
	(= (current_load truck0) 0)
	(= (load_limit truck0) 323)
	(posn truck1 depot0)
	(= (current_load truck1) 0)
	(= (load_limit truck1) 220)
	(posn hoist0 depot0)
	(available hoist0)
	(posn hoist1 distributor0)
	(available hoist1)
	(posn hoist2 distributor1)
	(available hoist2)
	(posn crate0 distributor0)
	(on crate0 pallet1)
	(= (weight crate0) 11)
	(posn crate1 depot0)
	(on crate1 pallet0)
	(= (weight crate1) 86)
	(= (fuel-cost) 0)
)

(:goal (and
		(on crate0 pallet2)
		(on crate1 pallet1)
	)
)

(:metric minimize (fuel-cost)))
