(define (problem depotprob7512) (:domain Depot)
(:objects
	depot0 - Depot
	distributor0 distributor1 - Distributor
	truck0 truck1 truck2 - Truck
	pallet0 pallet1 pallet2 - Pallet
	crate0 crate1 crate2 crate3 - Crate
	hoist0 hoist1 hoist2 - Hoist)
(:init
	(at_location pallet0 depot0)
	(clear crate0)
	(at_location pallet1 distributor0)
	(clear crate3)
	(at_location pallet2 distributor1)
	(clear crate2)
	(at_location truck0 depot0)
	(at_location truck1 depot0)
	(at_location truck1 depot0)
	(at_location hoist0 depot0)
	(at_location hoist1 distributor0)
	(at_location hoist2 distributor1)
	(at_location crate0 depot0)
	(on crate0 pallet0)
	(at_location crate1 distributor1)
	(on crate1 pallet2)
	(at_location crate2 distributor1)
	(on crate2 crate1)
	(at_location crate3 distributor0)
	(on crate3 pallet1)
	(light crate0)
	(light crate1)
	(light crate2)
	(light crate3)
	(okay truck0)
	(okay truck1)
	(okay truck2)
	(empty truck0)
	(empty truck1)
	(empty truck2)
)

(:goal (and
		(on crate0 pallet2)
		(on crate1 crate3)
		(on crate2 pallet0)
		(on crate3 pallet1)
	)
))
