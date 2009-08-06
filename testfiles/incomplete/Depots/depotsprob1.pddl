(define (problem depotprob1818) (:domain Depot)
(:objects
	depot0 - Depot
	distributor0 distributor1 - Distributor
	truck0 truck1 - Truck
	pallet0 pallet1 pallet2 - Pallet
	crate0 crate1 - Crate
	hoist0 hoist1 hoist2 - Hoist)
(:init
	(at_location pallet0 depot0)
	(clear crate1)
	(at_location pallet1 distributor0)
	(clear crate0)
	(at_location pallet2 distributor1)
	(clear pallet2)
	(at_location truck0 distributor1)
	(at_location truck1 depot0)
	(at_location hoist0 depot0)
	(at_location hoist1 distributor0)
	(at_location hoist2 distributor1)
	(at_location crate0 distributor0)
	(on crate0 pallet1)
	(at_location crate1 depot0)
	(on crate1 pallet0)
	(heavy crate0)
	(light crate1)
	(okay truck0)
	(okay truck1)
	(empty truck0)
	(empty truck1)
)

(:goal (and
		(on crate0 pallet2)
		(on crate1 pallet1)
	)
))
