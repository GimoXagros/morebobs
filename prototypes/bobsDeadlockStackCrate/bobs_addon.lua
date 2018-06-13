--stacking
if mods["DeadlockStacking"] then
	--Bobs ores
	if data.raw["item"]["bauxite-ore"] then 
		deadlock_stacking.create("bauxite-ore", "__morebobs__/graphics/icons/stacking/ores/bob/bauxite-ore.png", "deadlock-stacking-1", 32)
	end
	if data.raw["item"]["cobalt-ore"] then 
		deadlock_stacking.create("cobalt-ore", "__morebobs__/graphics/icons/stacking/ores/bob/cobalt-ore.png", "deadlock-stacking-1", 32)
	end
	if data.raw["item"]["gem-ore"] then 
		deadlock_stacking.create("gem-ore", "__morebobs__/graphics/icons/stacking/ores/bob/gem-ore.png", "deadlock-stacking-1", 32)
	end
	if data.raw["item"]["gold-ore"] then 
		deadlock_stacking.create("gold-ore", "__morebobs__/graphics/icons/stacking/ores/bob/gold-ore.png", "deadlock-stacking-1", 32)
	end
	if data.raw["item"]["lead-ore"] then 
		deadlock_stacking.create("lead-ore", "__morebobs__/graphics/icons/stacking/ores/bob/lead-ore.png", "deadlock-stacking-1", 32)
	end
	if data.raw["item"]["nickel-ore"] then 
		deadlock_stacking.create("nickel-ore", "__morebobs__/graphics/icons/stacking/ores/bob/nickel-ore.png", "deadlock-stacking-1", 32)
	end
	if data.raw["item"]["quartz"] then 
		deadlock_stacking.create("quartz", "__morebobs__/graphics/icons/stacking/ores/bob/quartz.png", "deadlock-stacking-1", 32)
	end
	if data.raw["item"]["rutile-ore"] then 
		deadlock_stacking.create("rutile-ore", "__morebobs__/graphics/icons/stacking/ores/bob/rutile-ore.png", "deadlock-stacking-1", 32)
	end
	if data.raw["item"]["silver-ore"] then 
		deadlock_stacking.create("silver-ore", "__morebobs__/graphics/icons/stacking/ores/bob/silver-ore.png", "deadlock-stacking-1", 32)
	end
	if data.raw["item"]["thorium-ore"] then 
		deadlock_stacking.create("thorium-ore", "__morebobs__/graphics/icons/stacking/ores/bob/thorium-ore.png", "deadlock-stacking-1", 32)
	end
	if data.raw["item"]["tin-ore"] then 
		deadlock_stacking.create("tin-ore", "__morebobs__/graphics/icons/stacking/ores/bob/tin-ore.png", "deadlock-stacking-1", 32)
	end
	if data.raw["item"]["tungsten-ore"] then 
		deadlock_stacking.create("tungsten-ore", "__morebobs__/graphics/icons/stacking/ores/bob/tungsten-ore.png", "deadlock-stacking-1", 32)
	end
	if data.raw["item"]["zinc-ore"] then 
		deadlock_stacking.create("zinc-ore", "__morebobs__/graphics/icons/stacking/ores/bob/zinc-ore.png", "deadlock-stacking-1", 32)
	end
	
	--Bobs Plate and Alloy
	if data.raw["item"]["tin-plate"] then 
		deadlock_stacking.create("tin-plate", nil, "deadlock-stacking-1")
	end
	if data.raw["item"]["lead-plate"] then 
		deadlock_stacking.create("lead-plate", nil, "deadlock-stacking-1")
	end
	if data.raw["item"]["nickel-plate"] then 
		deadlock_stacking.create("nickel-plate", nil, "deadlock-stacking-1")
	end
	if data.raw["item"]["bronze-alloy"] then 
		deadlock_stacking.create("bronze-alloy", nil, "deadlock-stacking-1")
	end
	if data.raw["item"]["solder-alloy"] then 
		deadlock_stacking.create("solder-alloy", nil, "deadlock-stacking-1")
	end
	
	if data.raw["item"]["silver-plate"] then 
		deadlock_stacking.create("silver-plate", nil, "deadlock-stacking-2")
	end
	if data.raw["item"]["zinc-plate"] then 
		deadlock_stacking.create("zinc-plate", nil, "deadlock-stacking-2")
	end
	if data.raw["item"]["lithium"] then 
		deadlock_stacking.create("lithium", nil, "deadlock-stacking-2")
	end
	if data.raw["item"]["brass-alloy"] then 
		deadlock_stacking.create("brass-alloy", nil, "deadlock-stacking-2")
	end
	if data.raw["item"]["invar-alloy"] then 
		deadlock_stacking.create("invar-alloy", nil, "deadlock-stacking-2")
	end
	if data.raw["item"]["gunmetal-alloy"] then 
		deadlock_stacking.create("gunmetal-alloy", nil, "deadlock-stacking-2")
	end

	if data.raw["item"]["gold-plate"] then 
		deadlock_stacking.create("gold-plate", nil, "deadlock-stacking-3")
	end
	if data.raw["item"]["aluminium-plate"] then 
		deadlock_stacking.create("aluminium-plate", nil, "deadlock-stacking-3")
	end
	if data.raw["item"]["cobalt-plate"] then 
		deadlock_stacking.create("cobalt-plate", nil, "deadlock-stacking-3")
	end	
	if data.raw["item"]["silicon"] then 
		deadlock_stacking.create("silicon", nil, "deadlock-stacking-3")
	end
	if data.raw["item"]["cobalt-steel-alloy"] then 
		deadlock_stacking.create("cobalt-steel-alloy", "__morebobs__/graphics/icons/stacking/stacked-cobalt-steel-alloy.png", "deadlock-stacking-3", 32)
	end
	
	if data.raw["item"]["glass"] then 
		deadlock_stacking.create("glass", nil, "deadlock-stacking-4")
	end
	if data.raw["item"]["titanium-plate"] then 
		deadlock_stacking.create("titanium-plate", "__morebobs__/graphics/icons/stacking/stacked-titanium-plate.png", "deadlock-stacking-4", 32)
	end
	if data.raw["item"]["tungsten-plate"] then 
		deadlock_stacking.create("tungsten-plate", "__morebobs__/graphics/icons/stacking/stacked-tungsten-plate.png", "deadlock-stacking-4", 32)
	end
	if data.raw["item"]["electrum-alloy"] then 
		deadlock_stacking.create("electrum-alloy", nil, "deadlock-stacking-4")
	end

	if data.raw["item"]["nitinol-alloy"] then 
		deadlock_stacking.create("nitinol-alloy", "__morebobs__/graphics/icons/stacking/stacked-nitinol-alloy.png", "deadlock-stacking-5", 32)
	end
	if data.raw["item"]["copper-tungsten-alloy"] then 
		deadlock_stacking.create("copper-tungsten-alloy", nil, "deadlock-stacking-5")
	end
	if data.raw["item"]["tungsten-carbide"] then 
		deadlock_stacking.create("tungsten-carbide", nil, "deadlock-stacking-5")
	end
	if data.raw["item"]["alien-blue-alloy"] then 
		deadlock_stacking.create("alien-blue-alloy", nil, "deadlock-stacking-5")
	end
	if data.raw["item"]["alien-orange-alloy"] then 
		deadlock_stacking.create("alien-orange-alloy", nil, "deadlock-stacking-5")
	end

	--Bobs Raw and Intermediate product
	if data.raw["item"]["alien-artifact"] then 
		deadlock_stacking.create("alien-artifact", nil, "deadlock-stacking-1")
	end
	if data.raw["item"]["resin"] then 
		deadlock_stacking.create("resin", nil, "deadlock-stacking-4")
	end
	if data.raw["item"]["alumina"] then 
		deadlock_stacking.create("alumina", nil, "deadlock-stacking-4")
	end
	if not mods["angelssmelting"] then
		if data.raw["item"]["carbon"] then 
			deadlock_stacking.create("carbon", nil, "deadlock-stacking-4")
		end
	end
	
	if data.raw["item"]["enriched-fuel"] then 
		deadlock_stacking.create("enriched-fuel", "__morebobs__/graphics/icons/stacking/stacked-enriched-fuel.png", "deadlock-stacking-4", 32)
	end
	if data.raw["item"]["basic-electronic-components"] then 
		deadlock_stacking.create("basic-electronic-components", "__morebobs__/graphics/icons/stacking/stacked-basic-electronic-components.png", "deadlock-stacking-4", 32)
	end
	if data.raw["item"]["electronic-components"] then 
		deadlock_stacking.create("electronic-components", "__morebobs__/graphics/icons/stacking/stacked-electronic-components.png", "deadlock-stacking-4", 32)
	end
	if data.raw["item"]["intergrated-electronics"] then 
		deadlock_stacking.create("intergrated-electronics", "__morebobs__/graphics/icons/stacking/stacked-intergrated-electronics.png", "deadlock-stacking-4", 32)
	end
	if data.raw["item"]["processing-electronics"] then 
		deadlock_stacking.create("processing-electronics", "__morebobs__/graphics/icons/stacking/stacked-processing-electronics.png", "deadlock-stacking-4", 32)
	end

	--Bobs gear and bearing
	if data.raw["item"]["steel-gear-wheel"] then 
		deadlock_stacking.create("steel-gear-wheel", "__morebobs__/graphics/icons/stacking/gearbearing/steel-gear-wheel.png", "deadlock-stacking-2", 32)
	end
	if data.raw["item"]["brass-gear-wheel"] then 
		deadlock_stacking.create("brass-gear-wheel", "__morebobs__/graphics/icons/stacking/gearbearing/brass-gear-wheel.png", "deadlock-stacking-2", 32)
	end
	if data.raw["item"]["cobalt-steel-gear-wheel"] then 
		deadlock_stacking.create("cobalt-steel-gear-wheel", "__morebobs__/graphics/icons/stacking/gearbearing/cobalt-steel-gear-wheel.png", "deadlock-stacking-3", 32)
	end
	if data.raw["item"]["titanium-gear-wheel"] then 
		deadlock_stacking.create("titanium-gear-wheel", "__morebobs__/graphics/icons/stacking/gearbearing/titanium-gear-wheel.png", "deadlock-stacking-4", 32)
	end
	if data.raw["item"]["tungsten-gear-wheel"] then 
		deadlock_stacking.create("tungsten-gear-wheel", "__morebobs__/graphics/icons/stacking/gearbearing/tungsten-gear-wheel.png", "deadlock-stacking-4", 32)
	end
	if data.raw["item"]["nitinol-gear-wheel"] then 
		deadlock_stacking.create("nitinol-gear-wheel", "__morebobs__/graphics/icons/stacking/gearbearing/nitinol-gear-wheel.png", "deadlock-stacking-5", 32)
	end

	if data.raw["item"]["steel-bearing"] then 
		deadlock_stacking.create("steel-bearing", nil, "deadlock-stacking-2")
	end
	if data.raw["item"]["brass-bearing"] then 
		deadlock_stacking.create("brass-bearing", nil, "deadlock-stacking-2")
	end
	if data.raw["item"]["cobalt-steel-bearing"] then 
		deadlock_stacking.create("cobalt-steel-bearing", nil, "deadlock-stacking-3")
	end
	if data.raw["item"]["titanium-bearing"] then 
		deadlock_stacking.create("titanium-bearing", nil, "deadlock-stacking-4")
	end
	if data.raw["item"]["ceramic-bearing"] then 
		deadlock_stacking.create("ceramic-bearing", nil, "deadlock-stacking-4")
	end
	if data.raw["item"]["nitinol-bearing"] then 
		deadlock_stacking.create("nitinol-bearing", nil, "deadlock-stacking-5")
	end

	if data.raw["item"]["steel-bearing-ball"] then 
		deadlock_stacking.create("steel-bearing-ball", nil, "deadlock-stacking-2")
	end
	if data.raw["item"]["brass-bearing-ball"] then 
		deadlock_stacking.create("brass-bearing-ball", nil, "deadlock-stacking-2")
	end
	if data.raw["item"]["cobalt-steel-bearing-ball"] then 
		deadlock_stacking.create("cobalt-steel-bearing-ball", nil, "deadlock-stacking-3")
	end
	if data.raw["item"]["titanium-bearing-ball"] then 
		deadlock_stacking.create("titanium-bearing-ball", nil, "deadlock-stacking-4")
	end
	if data.raw["item"]["ceramic-bearing-ball"] then 
		deadlock_stacking.create("ceramic-bearing-ball", nil, "deadlock-stacking-4")
	end
	if data.raw["item"]["nitinol-bearing-ball"] then 
		deadlock_stacking.create("nitinol-bearing-ball", nil, "deadlock-stacking-5")
	end
	
	--Bobs battery
	if settings.startup["moreshinybobs-gfx-intermediates"] and settings.startup["moreshinybobs-gfx-intermediates"].value == true then
		if data.raw["item"]["lithium-ion-battery"] then 
			deadlock_stacking.create("lithium-ion-battery", "__morebobs__/graphics/icons/stacking/battery/lithium-ion-batteryR.png", "deadlock-stacking-3", 32)
		end
		if data.raw["item"]["silver-zinc-battery"] then 
			deadlock_stacking.create("silver-zinc-battery", "__morebobs__/graphics/icons/stacking/battery/silver-zinc-batteryR.png", "deadlock-stacking-3", 32)
		end
	else
		if data.raw["item"]["lithium-ion-battery"] then 
			deadlock_stacking.create("lithium-ion-battery", "__morebobs__/graphics/icons/stacking/battery/lithium-ion-battery.png", "deadlock-stacking-3", 32)
		end
		if data.raw["item"]["silver-zinc-battery"] then 
			deadlock_stacking.create("silver-zinc-battery", "__morebobs__/graphics/icons/stacking/battery/silver-zinc-battery.png", "deadlock-stacking-3", 32)
		end
	end
end

--crating
if mods["DeadlockCrating"] then
	--Bobs Circuits
	if data.raw["item"]["advanced-processing-unit"] then 
		deadlock_crating.create("advanced-processing-unit", "deadlock-crating-4")
	end
	
	--Bobs ores
	if data.raw["item"]["bauxite-ore"] then 
		deadlock_crating.create("bauxite-ore", "deadlock-crating-1")
	end
	if data.raw["item"]["cobalt-ore"] then 
		deadlock_crating.create("cobalt-ore", "deadlock-crating-1")
	end
	if data.raw["item"]["gem-ore"] then 
		deadlock_crating.create("gem-ore", "deadlock-crating-1")
	end
	if data.raw["item"]["gold-ore"] then 
		deadlock_crating.create("gold-ore", "deadlock-crating-1")
	end
	if data.raw["item"]["lead-ore"] then 
		deadlock_crating.create("lead-ore", "deadlock-crating-1")
	end
	if data.raw["item"]["nickel-ore"] then 
		deadlock_crating.create("nickel-ore", "deadlock-crating-1")
	end
	if data.raw["item"]["quartz"] then 
		deadlock_crating.create("quartz", "deadlock-crating-1")
	end
	if data.raw["item"]["rutile-ore"] then 
		deadlock_crating.create("rutile-ore", "deadlock-crating-1")
	end
	if data.raw["item"]["silver-ore"] then 
		deadlock_crating.create("silver-ore", "deadlock-crating-1")
	end
	if data.raw["item"]["thorium-ore"] then 
		deadlock_crating.create("thorium-ore", "deadlock-crating-1")
	end
	if data.raw["item"]["tin-ore"] then 
		deadlock_crating.create("tin-ore", "deadlock-crating-1")
	end
	if data.raw["item"]["tungsten-ore"] then 
		deadlock_crating.create("tungsten-ore", "deadlock-crating-1")
	end
	if data.raw["item"]["zinc-ore"] then 
		deadlock_crating.create("zinc-ore", "deadlock-crating-1")
	end
	
	--Bobs Plate and Alloy
	if data.raw["item"]["tin-plate"] then 
		deadlock_crating.create("tin-plate", "deadlock-crating-1")
	end
	if data.raw["item"]["lead-plate"] then 
		deadlock_crating.create("lead-plate", "deadlock-crating-1")
	end
	if data.raw["item"]["nickel-plate"] then 
		deadlock_crating.create("nickel-plate", "deadlock-crating-1")
	end
	if data.raw["item"]["bronze-alloy"] then 
		deadlock_crating.create("bronze-alloy", "deadlock-crating-1")
	end
	if data.raw["item"]["solder-alloy"] then 
		deadlock_crating.create("solder-alloy", "deadlock-crating-1")
	end
	
	if data.raw["item"]["silver-plate"] then 
		deadlock_crating.create("silver-plate", "deadlock-crating-2")
	end
	if data.raw["item"]["zinc-plate"] then 
		deadlock_crating.create("zinc-plate", "deadlock-crating-2")
	end
	if data.raw["item"]["lithium"] then 
		deadlock_crating.create("lithium", "deadlock-crating-2")
	end
	if data.raw["item"]["brass-alloy"] then 
		deadlock_crating.create("brass-alloy", "deadlock-crating-2")
	end
	if data.raw["item"]["invar-alloy"] then 
		deadlock_crating.create("invar-alloy", "deadlock-crating-2")
	end
	if data.raw["item"]["gunmetal-alloy"] then 
		deadlock_crating.create("gunmetal-alloy", "deadlock-crating-2")
	end

	if data.raw["item"]["gold-plate"] then 
		deadlock_crating.create("gold-plate", "deadlock-crating-3")
	end
	if data.raw["item"]["aluminium-plate"] then 
		deadlock_crating.create("aluminium-plate", "deadlock-crating-3")
	end
	if data.raw["item"]["cobalt-plate"] then 
		deadlock_crating.create("cobalt-plate", "deadlock-crating-3")
	end
	if data.raw["item"]["silicon"] then 
		deadlock_crating.create("silicon", "deadlock-crating-3")
	end
	if data.raw["item"]["cobalt-steel-alloy"] then 
		deadlock_crating.create("cobalt-steel-alloy", "deadlock-crating-3")
	end
	
	if data.raw["item"]["glass"] then 
		deadlock_crating.create("glass", "deadlock-crating-4")
	end
	if data.raw["item"]["titanium-plate"] then 
		deadlock_crating.create("titanium-plate", "deadlock-crating-4")
	end
	if data.raw["item"]["tungsten-plate"] then 
		deadlock_crating.create("tungsten-plate", "deadlock-crating-4")
	end
	if data.raw["item"]["electrum-alloy"] then 
		deadlock_crating.create("electrum-alloy", "deadlock-crating-4")
	end

	if data.raw["item"]["nitinol-alloy"] then 
		deadlock_crating.create("nitinol-alloy", "deadlock-crating-5")
	end
	if data.raw["item"]["copper-tungsten-alloy"] then 
		deadlock_crating.create("copper-tungsten-alloy", "deadlock-crating-5")
	end
	if data.raw["item"]["tungsten-carbide"] then 
		deadlock_crating.create("tungsten-carbide", "deadlock-crating-5")
	end
	if data.raw["item"]["alien-blue-alloy"] then 
		deadlock_crating.create("alien-blue-alloy", "deadlock-crating-5")
	end
	if data.raw["item"]["alien-orange-alloy"] then 
		deadlock_crating.create("alien-orange-alloy", "deadlock-crating-5")
	end

	--Bobs Raw and Intermediate product
	if data.raw["item"]["alien-artifact"] then 
		deadlock_crating.create("alien-artifact", "deadlock-crating-1")
	end
	if data.raw["item"]["resin"] then 
		deadlock_crating.create("resin", "deadlock-crating-4")
	end
	if data.raw["item"]["alumina"] then 
		deadlock_crating.create("alumina", "deadlock-crating-4")
	end
	if not mods["angelssmelting"] then
		if data.raw["item"]["carbon"] then 
			deadlock_crating.create("alien-artifact", "deadlock-crating-4")
		end
	end
	if data.raw["item"]["enriched-fuel"] then 
		deadlock_crating.create("enriched-fuel", "deadlock-crating-4")
	end
	if data.raw["item"]["basic-electronic-components"] then 
		deadlock_crating.create("basic-electronic-components", "deadlock-crating-4")
	end
	if data.raw["item"]["electronic-components"] then 
		deadlock_crating.create("electronic-components", "deadlock-crating-4")
	end
	if data.raw["item"]["intergrated-electronics"] then 
		deadlock_crating.create("intergrated-electronics", "deadlock-crating-4")
	end
	if data.raw["item"]["processing-electronics"] then 
		deadlock_crating.create("processing-electronics", "deadlock-crating-4")
	end

	--Bobs gear and bearing
	if data.raw["item"]["steel-gear-wheel"] then 
		deadlock_crating.create("steel-gear-wheel", "deadlock-crating-2")
	end
	if data.raw["item"]["brass-gear-wheel"] then 
		deadlock_crating.create("brass-gear-wheel", "deadlock-crating-2")
	end
	if data.raw["item"]["cobalt-steel-gear-wheel"] then 
		deadlock_crating.create("cobalt-steel-gear-wheel", "deadlock-crating-3")
	end
	if data.raw["item"]["titanium-gear-wheel"] then 
		deadlock_crating.create("titanium-gear-wheel", "deadlock-crating-4")
	end
	if data.raw["item"]["tungsten-gear-wheel"] then 
		deadlock_crating.create("tungsten-gear-wheel", "deadlock-crating-4")
	end
	if data.raw["item"]["nitinol-gear-wheel"] then 
		deadlock_crating.create("nitinol-gear-wheel", "deadlock-crating-5")
	end

	if data.raw["item"]["steel-bearing"] then 
		deadlock_crating.create("steel-bearing", "deadlock-crating-2")
	end
	if data.raw["item"]["brass-bearing"] then 
		deadlock_crating.create("brass-bearing", "deadlock-crating-2")
	end
	if data.raw["item"]["cobalt-steel-bearing"] then 
		deadlock_crating.create("cobalt-steel-bearing", "deadlock-crating-3")
	end
	if data.raw["item"]["titanium-bearing"] then 
		deadlock_crating.create("titanium-bearing", "deadlock-crating-4")
	end
	if data.raw["item"]["ceramic-bearing"] then 
		deadlock_crating.create("ceramic-bearing", "deadlock-crating-4")
	end
	if data.raw["item"]["nitinol-bearing"] then 
		deadlock_crating.create("nitinol-bearing", "deadlock-crating-5")
	end

	if data.raw["item"]["steel-bearing-ball"] then 
		deadlock_crating.create("steel-bearing-ball", "deadlock-crating-2")
	end
	if data.raw["item"]["brass-bearing-ball"] then 
		deadlock_crating.create("brass-bearing-ball", "deadlock-crating-2")
	end
	if data.raw["item"]["cobalt-steel-bearing-ball"] then 
		deadlock_crating.create("cobalt-steel-bearing-ball", "deadlock-crating-3")
	end
	if data.raw["item"]["titanium-bearing-ball"] then 
		deadlock_crating.create("titanium-bearing-ball", "deadlock-crating-4")
	end
	if data.raw["item"]["ceramic-bearing-ball"] then 
		deadlock_crating.create("ceramic-bearing-ball", "deadlock-crating-4")
	end
	if data.raw["item"]["nitinol-bearing-ball"] then 
		deadlock_crating.create("nitinol-bearing-ball", "deadlock-crating-5")
	end

	--Bobs battery
	if data.raw["item"]["lithium-ion-battery"] then 
		deadlock_crating.create("lithium-ion-battery", "deadlock-crating-3")
	end
	if data.raw["item"]["silver-zinc-battery"] then 
		deadlock_crating.create("silver-zinc-battery", "deadlock-crating-3")
	end
end