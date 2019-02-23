-- stacking
if mods["DeadlockStacking"] then
	-- AAI
	if data.raw["item"]["wooden-gear-wheel"] then
		deadlock_stacking.create("wooden-gear-wheel", "__morebobs_bobsStackCrate__/graphics/icons/stacking/gearbearing/wooden-gear-wheel.png", "deadlock-stacking-1", 32)
	end
	if data.raw["item"]["stone-tablet"] then 
		deadlock_stacking.create("stone-tablet", "__morebobs_bobsStackCrate__/graphics/icons/stacking/plates/stacked-stone-tablet.png", "deadlock-stacking-1", 32)
	end
	if data.raw["item"]["motor"] then 
		deadlock_stacking.create("motor", "__morebobs_bobsStackCrate__/graphics/icons/stacking/electronics/stacked-motor.png", "deadlock-stacking-2", 32)
	end
	if data.raw["item"]["electric-motor"] then 
		deadlock_stacking.create("electric-motor", "__morebobs_bobsStackCrate__/graphics/icons/stacking/electronics/stacked-electric-motor.png", "deadlock-stacking-2", 32)
	end
	if data.raw["item"]["engine-unit"] then 
		deadlock_stacking.create("engine-unit", "__morebobs_bobsStackCrate__/graphics/icons/stacking/electronics/stacked-engine-unit.png", "deadlock-stacking-3", 32)
	end
	if data.raw["item"]["electric-engine-unit"] then 
		deadlock_stacking.create("electric-engine-unit", "__morebobs_bobsStackCrate__/graphics/icons/stacking/electronics/stacked-electric-engine-unit.png", "deadlock-stacking-3", 32)
	end

	-- Clowns ores
	if data.raw["item"]["clowns-ore1"] then 
		deadlock_stacking.create("clowns-ore1", nil, "deadlock-stacking-1")
	end
	if data.raw["item"]["clowns-ore2"] then 
		deadlock_stacking.create("clowns-ore2", nil, "deadlock-stacking-1")
	end
	if data.raw["item"]["clowns-ore3"] then 
		deadlock_stacking.create("clowns-ore3", nil, "deadlock-stacking-1")
	end
	if data.raw["item"]["clowns-ore4"] then 
		deadlock_stacking.create("clowns-ore4", nil, "deadlock-stacking-1")
	end
	if data.raw["item"]["clowns-ore5"] then 
		deadlock_stacking.create("clowns-ore5", nil, "deadlock-stacking-1")
	end
	if data.raw["item"]["clowns-ore6"] then 
		deadlock_stacking.create("clowns-ore6", nil, "deadlock-stacking-1")
	end
	if data.raw["item"]["clowns-ore7"] then 
		deadlock_stacking.create("clowns-ore7", nil, "deadlock-stacking-1")
	end
	if data.raw["item"]["clowns-ore8"] then 
		deadlock_stacking.create("clowns-ore8", nil, "deadlock-stacking-1")
	end
	if data.raw["item"]["clowns-ore9"] then 
		deadlock_stacking.create("clowns-ore9", nil, "deadlock-stacking-1")
	end
	if data.raw["item"]["clowns-ore10"] then 
		deadlock_stacking.create("clowns-ore10", nil, "deadlock-stacking-1")
	end
	if data.raw["item"]["clowns-ore1-crushed"] then 
		deadlock_stacking.create("clowns-ore1-crushed", nil, "deadlock-stacking-1")
	end
	if data.raw["item"]["clowns-ore2-crushed"] then 
		deadlock_stacking.create("clowns-ore2-crushed", nil, "deadlock-stacking-1")
	end
	if data.raw["item"]["clowns-ore3-crushed"] then 
		deadlock_stacking.create("clowns-ore3-crushed", nil, "deadlock-stacking-1")
	end
	if data.raw["item"]["clowns-ore4-crushed"] then 
		deadlock_stacking.create("clowns-ore4-crushed", nil, "deadlock-stacking-1")
	end
	if data.raw["item"]["clowns-ore5-crushed"] then 
		deadlock_stacking.create("clowns-ore5-crushed", nil, "deadlock-stacking-1")
	end
	if data.raw["item"]["clowns-ore6-crushed"] then 
		deadlock_stacking.create("clowns-ore6-crushed", nil, "deadlock-stacking-1")
	end
	if data.raw["item"]["clowns-ore7-crushed"] then 
		deadlock_stacking.create("clowns-ore7-crushed", nil, "deadlock-stacking-1")
	end
	if data.raw["item"]["clowns-ore8-crushed"] then 
		deadlock_stacking.create("clowns-ore8-crushed", nil, "deadlock-stacking-1")
	end
	if data.raw["item"]["clowns-ore9-crushed"] then 
		deadlock_stacking.create("clowns-ore9-crushed", nil, "deadlock-stacking-1")
	end
	if data.raw["item"]["clowns-ore10-crushed"] then 
		deadlock_stacking.create("clowns-ore10-crushed", nil, "deadlock-stacking-1")
	end
	
	-- Bio industries
	if data.raw["item"]["bi-woodpulp"] then 
		deadlock_stacking.create("bi-woodpulp", nil, "deadlock-stacking-1")
	end
	if data.raw["item"]["bi-seed"] then 
		deadlock_stacking.create("bi-seed", nil, "deadlock-stacking-2")
	end
	if data.raw["item"]["seedling"] then 
		deadlock_stacking.create("seedling", nil, "deadlock-stacking-2")
	end
	if data.raw["item"]["bi-ash"] then 
		deadlock_stacking.create("bi-ash", nil, "deadlock-stacking-2")
	end
	if data.raw["item"]["fertiliser"] then 
		deadlock_stacking.create("fertiliser", nil, "deadlock-stacking-3")
	end
	if data.raw["item"]["bi-charcoal"] then 
		deadlock_stacking.create("bi-charcoal", nil, "deadlock-stacking-3")
	end
	if data.raw["item"]["bi-adv-fertiliser"] then 
		deadlock_stacking.create("bi-adv-fertiliser", nil, "deadlock-stacking-4")
	end
	if data.raw["item"]["bi-cellulose"] then 
		deadlock_stacking.create("bi-cellulose", nil, "deadlock-stacking-4")
	end
	if data.raw["item"]["pellet-coke"] then 
		deadlock_stacking.create("pellet-coke", nil, "deadlock-stacking-4")
	end
end

-- crating
if mods["DeadlockCrating"] then
	-- AAI
	if data.raw["item"]["wooden-gear-wheel"] then
		deadlock_crating.create("wooden-gear-wheel", "deadlock-crating-1")
	end
	if data.raw["item"]["stone-tablet"] then 
		deadlock_crating.create("stone-tablet", "deadlock-crating-1")
	end
	if data.raw["item"]["motor"] then 
		deadlock_crating.create("motor", "deadlock-crating-2")
	end
	if data.raw["item"]["electric-motor"] then 
		deadlock_crating.create("electric-motor", "deadlock-crating-2")
	end
	if data.raw["item"]["engine-unit"] then 
		deadlock_crating.create("engine-unit", "deadlock-crating-3")
	end
	if data.raw["item"]["electric-engine-unit"] then 
		deadlock_crating.create("electric-engine-unit", "deadlock-crating-3")
	end

	-- Clowns ores
	if data.raw["item"]["clowns-ore1"] then 
		deadlock_crating.create("clowns-ore1", "deadlock-crating-1")
	end
	if data.raw["item"]["clowns-ore2"] then 
		deadlock_crating.create("clowns-ore2", "deadlock-crating-1")
	end
	if data.raw["item"]["clowns-ore3"] then 
		deadlock_crating.create("clowns-ore3", "deadlock-crating-1")
	end
	if data.raw["item"]["clowns-ore4"] then 
		deadlock_crating.create("clowns-ore4", "deadlock-crating-1")
	end
	if data.raw["item"]["clowns-ore5"] then 
		deadlock_crating.create("clowns-ore5", "deadlock-crating-1")
	end
	if data.raw["item"]["clowns-ore6"] then 
		deadlock_crating.create("clowns-ore6", "deadlock-crating-1")
	end
	if data.raw["item"]["clowns-ore7"] then 
		deadlock_crating.create("clowns-ore7", "deadlock-crating-1")
	end
	if data.raw["item"]["clowns-ore8"] then 
		deadlock_crating.create("clowns-ore8", "deadlock-crating-1")
	end
	if data.raw["item"]["clowns-ore9"] then 
		deadlock_crating.create("clowns-ore9", "deadlock-crating-1")
	end
	if data.raw["item"]["clowns-ore10"] then 
		deadlock_crating.create("clowns-ore10", "deadlock-crating-1")
	end
	if data.raw["item"]["clowns-ore1-crushed"] then 
		deadlock_crating.create("clowns-ore1-crushed", "deadlock-crating-1")
	end
	if data.raw["item"]["clowns-ore2-crushed"] then 
		deadlock_crating.create("clowns-ore2-crushed", "deadlock-crating-1")
	end
	if data.raw["item"]["clowns-ore3-crushed"] then 
		deadlock_crating.create("clowns-ore3-crushed", "deadlock-crating-1")
	end
	if data.raw["item"]["clowns-ore4-crushed"] then 
		deadlock_crating.create("clowns-ore4-crushed", "deadlock-crating-1")
	end
	if data.raw["item"]["clowns-ore5-crushed"] then 
		deadlock_crating.create("clowns-ore5-crushed", "deadlock-crating-1")
	end
	if data.raw["item"]["clowns-ore6-crushed"] then 
		deadlock_crating.create("clowns-ore6-crushed", "deadlock-crating-1")
	end
	if data.raw["item"]["clowns-ore7-crushed"] then 
		deadlock_crating.create("clowns-ore7-crushed", "deadlock-crating-1")
	end
	if data.raw["item"]["clowns-ore8-crushed"] then 
		deadlock_crating.create("clowns-ore8-crushed", "deadlock-crating-1")
	end
	if data.raw["item"]["clowns-ore9-crushed"] then 
		deadlock_crating.create("clowns-ore9-crushed", "deadlock-crating-1")
	end
	if data.raw["item"]["clowns-ore10-crushed"] then 
		deadlock_crating.create("clowns-ore10-crushed", "deadlock-crating-1")
	end

	-- Bio industries
	if data.raw["item"]["bi-woodpulp"] then 
		deadlock_crating.create("bi-woodpulp", "deadlock-crating-1")
	end
	if data.raw["item"]["bi-seed"] then 
		deadlock_crating.create("bi-seed", "deadlock-crating-2")
	end
	if data.raw["item"]["seedling"] then 
		deadlock_crating.create("seedling", "deadlock-crating-2")
	end
	if data.raw["item"]["bi-ash"] then 
		deadlock_crating.create("bi-ash", "deadlock-crating-2")
	end
	if data.raw["item"]["fertiliser"] then 
		deadlock_crating.create("fertiliser", "deadlock-crating-3")
	end
	if data.raw["item"]["bi-charcoal"] then 
		deadlock_crating.create("bi-charcoal", "deadlock-crating-3")
	end
	if data.raw["item"]["bi-adv-fertiliser"] then 
		deadlock_crating.create("bi-adv-fertiliser", "deadlock-crating-4")
	end
	if data.raw["item"]["bi-cellulose"] then 
		deadlock_crating.create("bi-cellulose", "deadlock-crating-4")
	end
	if data.raw["item"]["pellet-coke"] then 
		deadlock_crating.create("pellet-coke", "deadlock-crating-4")
	end
end