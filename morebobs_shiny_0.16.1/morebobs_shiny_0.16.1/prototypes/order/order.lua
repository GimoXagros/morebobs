--More Shiny bob!

local MSB = {}

function MSB.SUBGROUP_GENERATOR(name, group, order)
	data:extend({{ type = "item-subgroup", name = name, group = group, order = order }})
end

function MSB.SUBGROUP_CLEANER(name, group, order)
	if data.raw["item-subgroup"][name] then
		data.raw["item-subgroup"][name].group = group
		data.raw["item-subgroup"][name].order = order
	end
end

function MSB.ORDER_CLEANER(name, group, order)
	local order_type = {"item", "item-with-entity-data", "item-with-tags", "recipe", "ammo", "capsule", "tool"}
	for key, value in pairs(order_type) do
		if data.raw[value][name] then
			data.raw[value][name].subgroup = group
			data.raw[value][name].order = order
		end
	end
end

-- logistics
if data.raw["item-group"]["logistics"] then
	-- chests
	MSB.SUBGROUP_GENERATOR("mbs-chest-base", "logistics", "a[chest]-a[base]")
	MSB.SUBGROUP_GENERATOR("mbs-chest-angels", "logistics", "a[chest]-b[angels]")
	MSB.SUBGROUP_GENERATOR("mbs-chest-others", "logistics", "a[chest]-c[others]")
	MSB.SUBGROUP_GENERATOR("mbs-chest-decoration", "logistics", "a[chest]-d[decoration]")
	
	MSB.SUBGROUP_GENERATOR("mbs-logistic-chest-1", "logistics", "l[logistic-chest]-d[storehouse]")
	MSB.SUBGROUP_GENERATOR("mbs-logistic-chest-2", "logistics", "l[logistic-chest]-e[warehouse]")
	MSB.SUBGROUP_GENERATOR("mbs-logistic-chest-3", "logistics", "l[logistic-chest]-f[big-chest]")
	MSB.SUBGROUP_GENERATOR("mbs-logistic-chest-4", "logistics", "l[logistic-chest]-g[silo]")
	MSB.SUBGROUP_GENERATOR("mbs-logistic-chest-5", "logistics", "l[logistic-chest]-h[angelswarehouse]")
	if data.raw["item-group"]["bob-logistics"] then
		MSB.SUBGROUP_CLEANER("mbs-logistic-chest-1", "bob-logistics", "l9-a")
		MSB.SUBGROUP_CLEANER("mbs-logistic-chest-2", "bob-logistics", "l9-b")
		MSB.SUBGROUP_CLEANER("mbs-logistic-chest-3", "bob-logistics", "l9-c")
		MSB.SUBGROUP_CLEANER("mbs-logistic-chest-4", "bob-logistics", "l9-d")
		MSB.SUBGROUP_CLEANER("mbs-logistic-chest-5", "bob-logistics", "l9-e")
	end
	
	MSB.ORDER_CLEANER("wooden-chest", "mbs-chest-base", "a-01[wooden-chest]")
	MSB.ORDER_CLEANER("bi_recipe_large_wooden_chest", "mbs-chest-base", "a-02[wooden-chest]")
	MSB.ORDER_CLEANER("bi_recipe_huge_wooden_chest", "mbs-chest-base", "a-03[wooden-chest]")
	MSB.ORDER_CLEANER("bi_recipe_giga_wooden_chest", "mbs-chest-base", "a-04[wooden-chest]")
	MSB.ORDER_CLEANER("iron-chest", "mbs-chest-base", "a-05[iron-chest]")
	MSB.ORDER_CLEANER("steel-chest", "mbs-chest-base", "a-06[steel-chest]")
	MSB.ORDER_CLEANER("brass-chest", "mbs-chest-base", "a-07[brass-chest]")
	MSB.ORDER_CLEANER("titanium-chest", "mbs-chest-base", "a-08[titanium-chest]")
	MSB.ORDER_CLEANER("warehouse-basic", "mbs-chest-base", "a-09[warehouse-basic]")
	MSB.ORDER_CLEANER("storehouse-basic", "mbs-chest-base", "a-10[storehouse-basic]")
	
	MSB.ORDER_CLEANER("angels-big-chest", "mbs-chest-angels", "a-01[angels-big-chest]")
	MSB.ORDER_CLEANER("silo", "mbs-chest-angels", "a-02[silo]")
	MSB.ORDER_CLEANER("silo-coal", "mbs-chest-angels", "a-03[silo-coal]")
	MSB.ORDER_CLEANER("silo-ore1", "mbs-chest-angels", "a-04[silo-ore1]")
	MSB.ORDER_CLEANER("silo-ore2", "mbs-chest-angels", "a-05[silo-ore2]")
	MSB.ORDER_CLEANER("silo-ore3", "mbs-chest-angels", "a-06[silo-ore3]")
	MSB.ORDER_CLEANER("silo-ore4", "mbs-chest-angels", "a-07[silo-ore4]")
	MSB.ORDER_CLEANER("silo-ore5", "mbs-chest-angels", "a-08[silo-ore5]")
	MSB.ORDER_CLEANER("silo-ore6", "mbs-chest-angels", "a-09[silo-ore6]")
	MSB.ORDER_CLEANER("angels-warehouse", "mbs-chest-angels", "a-10[angels-warehouse]")
	
	MSB.ORDER_CLEANER("belt-buffer-proxy", "mbs-chest-others", "a-01[belt-buffer-proxy]")
	MSB.ORDER_CLEANER("void-chest", "mbs-chest-others", "a-02[void-chest]")
	MSB.ORDER_CLEANER("loot-chest", "mbs-chest-others", "a-03[loot-chest]")
	MSB.ORDER_CLEANER("ammo-loader-chest", "mbs-chest-others", "a-04[ammo-loader-chest]")
	MSB.ORDER_CLEANER("fuel-loader-chest", "mbs-chest-others", "a-05[fuel-loader-chest]")
	MSB.ORDER_CLEANER("Artifact-collector-area", "mbs-chest-others", "a-06[Artifact-collector-area]")
	MSB.ORDER_CLEANER("item-collector-base-item-collector", "mbs-chest-others", "a-07[item-collector-base-item-collector]")
	MSB.ORDER_CLEANER("artifact-loot-chest", "mbs-chest-others", "a-08[artifact-loot-chest]")
	MSB.ORDER_CLEANER("sticky-note", "mbs-chest-others", "a-09[sticky-note]")
	MSB.ORDER_CLEANER("sticky-sign", "mbs-chest-others", "a-10[sticky-sign]")
	
	MSB.ORDER_CLEANER("shred-start", "mbs-chest-decoration", "a-01[shred-start]")
	MSB.ORDER_CLEANER("deco-shred-2", "mbs-chest-decoration", "a-02[shred-flat]")
	MSB.ORDER_CLEANER("deco-nilaus-2", "mbs-chest-decoration", "a-03[nilaus-flat]")
	MSB.ORDER_CLEANER("deco-shred-1", "mbs-chest-decoration", "a-04[shred-vertical]")
	MSB.ORDER_CLEANER("deco-nilaus-1", "mbs-chest-decoration", "a-05[nilaus-vertical]")
	MSB.ORDER_CLEANER("deco-santa-1", "mbs-chest-decoration", "a-06[santa-vertical]")
	MSB.ORDER_CLEANER("deco-inter-1", "mbs-chest-decoration", "a-07[inter-vertical]")
	MSB.ORDER_CLEANER("deco-voske-1", "mbs-chest-decoration", "a-08[voske-vertical]")
	MSB.ORDER_CLEANER("deco-east-1", "mbs-chest-decoration", "a-09[east-vertical]")
	
	local logistic_chest_list = {"storehouse", "warehouse", "angels-logistic-chest", "silo", "angels-warehouse"}
	local logistic_chest_type = {"passive-provider", "active-provider", "storage", "requester", "buffer"}
	for i, value_list in pairs(logistic_chest_list) do
		for j, value_type in pairs(logistic_chest_type) do
			MSB.ORDER_CLEANER(value_list.."-"..value_type, "mbs-logistic-chest-"..i, "a-0"..j.."["..value_type.."]")
		end
	end
	
	-- belts
	MSB.SUBGROUP_GENERATOR("mbs-belts-deadlockloader", "logistics", "b-7")
	MSB.SUBGROUP_GENERATOR("mbs-belt-sorter", "logistics", "b-9")
	for i=0,5 do MSB.ORDER_CLEANER("deadlock-loader-"..i, "mbs-belts-deadlockloader", "a-0"..i.."[deadlockloader]") end
	for i=1,3 do MSB.ORDER_CLEANER("belt-sorter"..i, "mbs-belt-sorter", "a-0"..i.."[belt-sorter]") end
	MSB.SUBGROUP_CLEANER("beltboxes", "logistics", "b-8")
	MSB.ORDER_CLEANER("belt-buffer", "mbs-belt-sorter", "a-00[pipe]")

	-- pipes
	local pipe_material = {"copper", "stone", "bronze", "steel", "plastic", "brass", "titanium", "ceramic", "tungsten"}
	local pipe_type1 = {"pipe", "pipe-to-ground"}
	local pipe_type2 = {"straight", "junction", "elbow"}
	for i, value_material in pairs(pipe_material) do
		MSB.SUBGROUP_GENERATOR("mbs-pipe-"..value_material, "logistics", "e[pipe]-0"..i.."["..value_material.."]")
		for j, value_type in pairs(pipe_type1) do
			MSB.ORDER_CLEANER(value_material.."-"..value_type, "mbs-pipe-"..value_material, "a-0"..j.."["..value_type.."]")
		end
		for j, value_type in pairs(pipe_type2) do
			MSB.ORDER_CLEANER("pipe-"..value_material.."-"..value_type, "mbs-pipe-"..value_material, "a-0"..(j+2).."["..value_type.."]")
		end
	end
	MSB.SUBGROUP_GENERATOR("mbs-pipe-bi-wood", "logistics", "e[pipe]-00[wood]")
	MSB.SUBGROUP_GENERATOR("mbs-pipe-iron", "logistics", "e[pipe]-01a[iron]")
	
	MSB.ORDER_CLEANER("bi-wood-pipe", "mbs-pipe-bi-wood", "a-01[pipe]")
	MSB.ORDER_CLEANER("bi-pipe-to-ground-wood", "mbs-pipe-bi-wood", "a-02[pipe-to-ground]")
	MSB.ORDER_CLEANER("pipe-bi-wood-straight", "mbs-pipe-bi-wood", "a-03[pipe-straight]")
	MSB.ORDER_CLEANER("pipe-bi-wood-junction", "mbs-pipe-bi-wood", "a-04[pipe-junction]")
	MSB.ORDER_CLEANER("pipe-bi-wood-elbow", "mbs-pipe-bi-wood", "a-05[pipe-elbow]")

	MSB.ORDER_CLEANER("pipe", "mbs-pipe-iron", "a-01[pipe]")
	MSB.ORDER_CLEANER("pipe-to-ground", "mbs-pipe-iron", "a-02[pipe-to-ground]")
	MSB.ORDER_CLEANER("pipe-straight", "mbs-pipe-iron", "a-03[pipe-straight]")
	MSB.ORDER_CLEANER("pipe-junction", "mbs-pipe-iron", "a-04[pipe-junction]")
	MSB.ORDER_CLEANER("pipe-elbow", "mbs-pipe-iron", "a-05[pipe-elbow]")
	if data.raw["item-group"]["angels-fluid-control"] then
		MSB.SUBGROUP_CLEANER("mbs-pipe-bi-wood", "angels-fluid-control", "a-00[wood]")
		MSB.SUBGROUP_CLEANER("mbs-pipe-copper", "angels-fluid-control", "a-01[copper]")
		MSB.SUBGROUP_CLEANER("mbs-pipe-iron", "angels-fluid-control", "a-02[iron]")
		MSB.SUBGROUP_CLEANER("mbs-pipe-stone", "angels-fluid-control", "a-03[stone]")
		MSB.SUBGROUP_CLEANER("mbs-pipe-bronze", "angels-fluid-control", "a-04[bronze]")
		MSB.SUBGROUP_CLEANER("mbs-pipe-steel", "angels-fluid-control", "a-05[steel]")
		MSB.SUBGROUP_CLEANER("mbs-pipe-plastic", "angels-fluid-control", "a-06[plastic]")
		MSB.SUBGROUP_CLEANER("mbs-pipe-brass", "angels-fluid-control", "a-07[brass]")
		MSB.SUBGROUP_CLEANER("mbs-pipe-titanium", "angels-fluid-control", "a-08[titanium]")
		MSB.SUBGROUP_CLEANER("mbs-pipe-ceramic", "angels-fluid-control", "a-09[ceramic]")
		MSB.SUBGROUP_CLEANER("mbs-pipe-tungsten", "angels-fluid-control", "a-10[tungsten]")
	elseif data.raw["item-group"]["bob-logistics"] then
		MSB.SUBGROUP_CLEANER("mbs-pipe-bi-wood", "bob-logistics", "a-00[wood]")
		MSB.SUBGROUP_CLEANER("mbs-pipe-copper", "bob-logistics", "a-01[copper]")
		MSB.SUBGROUP_CLEANER("mbs-pipe-iron", "bob-logistics", "a-02[iron]")
		MSB.SUBGROUP_CLEANER("mbs-pipe-stone", "bob-logistics", "a-03[stone]")
		MSB.SUBGROUP_CLEANER("mbs-pipe-bronze", "bob-logistics", "a-04[bronze]")
		MSB.SUBGROUP_CLEANER("mbs-pipe-steel", "bob-logistics", "a-05[steel]")
		MSB.SUBGROUP_CLEANER("mbs-pipe-plastic", "bob-logistics", "a-06[plastic]")
		MSB.SUBGROUP_CLEANER("mbs-pipe-brass", "bob-logistics", "a-07[brass]")
		MSB.SUBGROUP_CLEANER("mbs-pipe-titanium", "bob-logistics", "a-08[titanium]")
		MSB.SUBGROUP_CLEANER("mbs-pipe-ceramic", "bob-logistics", "a-09[ceramic]")
		MSB.SUBGROUP_CLEANER("mbs-pipe-tungsten", "bob-logistics", "a-10[tungsten]")
	end
	
	MSB.SUBGROUP_GENERATOR("mbs-pipe-valve", "logistics", "e[pipe]-10[valve]")
	MSB.SUBGROUP_CLEANER("shinypumps1", "logistics", "e[pipe]-11[pump]")
	
	MSB.ORDER_CLEANER("check-valve", "mbs-pipe-valve", "a-01[check-valve]")
	MSB.ORDER_CLEANER("overflow-valve", "mbs-pipe-valve", "a-02[overflow-valve]")
	MSB.ORDER_CLEANER("underflow-valve", "mbs-pipe-valve", "a-03[underflow-valve]")
	MSB.ORDER_CLEANER("valve-check", "mbs-pipe-valve", "b-01[valve-check]")
	MSB.ORDER_CLEANER("valve-return", "mbs-pipe-valve", "b-02[valve-return]")
	MSB.ORDER_CLEANER("valve-overflow", "mbs-pipe-valve", "b-03[valve-overflow]")
	MSB.ORDER_CLEANER("valve-underflow", "mbs-pipe-valve", "b-04[valve-underflow]")
	MSB.ORDER_CLEANER("valve-converter", "mbs-pipe-valve", "b-05[valve-converter]")
	MSB.ORDER_CLEANER("pipe-meter", "mbs-pipe-valve", "c-01[pipe-meter]")
	MSB.ORDER_CLEANER("bob-valve", "mbs-pipe-valve", "c-02[bob-valve]")
	
	if data.raw["item-group"]["angels-fluid-control"] then
		MSB.SUBGROUP_CLEANER("mbs-pipe-valve", "angels-fluid-control", "a-11[valves]")
		MSB.SUBGROUP_CLEANER("shinypumps1", "angels-fluid-control", "a-12[pumps]")
		if not data.raw["item-group"]["bob-logistics"] then
			MSB.ORDER_CLEANER("pump", "mbs-pipe-valve", "a-00[pump]")
		end
	elseif data.raw["item-group"]["bob-logistics"] then
		MSB.SUBGROUP_CLEANER("mbs-pipe-valve", "bob-logistics", "a-11[valves]")
		MSB.SUBGROUP_CLEANER("shinypumps1", "bob-logistics", "a-12[pumps]")
	end
	
	-- poles
	require("pole-order")
	require("lighted-pole-order")
	
	-- logistic-network
	if data.raw["item-subgroup"]["shinycharger1"] then
		MSB.ORDER_CLEANER("robocharger", "shinycharger1", "c-01[robocharger]")
	end
	MSB.SUBGROUP_GENERATOR("mbs-logistic-mining", "logistics", "f1")
	MSB.SUBGROUP_GENERATOR("mbs-logistic-angels", "logistics", "f2")
	
	if mods["angelsindustries"] then
		data.raw["recipe"]["cargo-robot"].subgroup = "logistic-network"
		data.raw["recipe"]["cargo-robot-2"].subgroup = "logistic-network"
		data.raw["recipe"]["angels-construction-robot"].subgroup = "logistic-network"
		if mods["Bot_Servicing"] then
			data.raw["recipe"]["broken-cargo-robot"].subgroup = "logistic-network"
			data.raw["recipe"]["broken-cargo-robot-2"].subgroup = "logistic-network"
			data.raw["recipe"]["broken-angels-construction-robot"].subgroup = "logistic-network"
		end
	end
	
	MSB.ORDER_CLEANER("robotMiningSite", "mbs-logistic-mining", "a-01[robotMiningSite]")
	MSB.ORDER_CLEANER("robotMiningSite-large", "mbs-logistic-mining", "a-02[robotMiningSite]")
	MSB.ORDER_CLEANER("robotMiningSite-extra", "mbs-logistic-mining", "a-03[robotMiningSite]")
	
	MSB.ORDER_CLEANER("cargo-hub", "mbs-logistic-angels", "a-01[cargo-hub]")
	MSB.ORDER_CLEANER("cargo-box", "mbs-logistic-angels", "a-02[cargo-box]")
	MSB.ORDER_CLEANER("angels-charging-station", "mbs-logistic-angels", "a-03[angels-charging-station]")
	MSB.ORDER_CLEANER("angels-construction-zone-expander", "mbs-logistic-angels", "b-01[angels-construction-zone-expander]")
	MSB.ORDER_CLEANER("angels-construction-zone-expander-2", "mbs-logistic-angels", "b-02[angels-construction-zone-expander]")
	MSB.ORDER_CLEANER("angels-zone-expander", "mbs-logistic-angels", "c-01[angels-zone-expander]")
	MSB.ORDER_CLEANER("angels-zone-expander-2", "mbs-logistic-angels", "c-02[angels-zone-expander]")
	MSB.ORDER_CLEANER("angels-relay-station", "mbs-logistic-angels", "c-03[angels-relay-station]")
	MSB.ORDER_CLEANER("angels-relay-station-2", "mbs-logistic-angels", "c-04[angels-relay-station]")
	
	if data.raw["item-subgroup"]["shinyroboport2"] then
		MSB.SUBGROUP_CLEANER("mbs-logistic-mining", "bob-logistics", "l-3")
		MSB.SUBGROUP_CLEANER("mbs-logistic-angels", "bob-logistics", "l-4")
		
		MSB.SUBGROUP_GENERATOR("mbs-logistic-angelsrobot", "bob-logistics", "i-3")
		if mods["angelsindustries"] then
			data.raw["recipe"]["cargo-robot"].subgroup = "mbs-logistic-angelsrobot"
			data.raw["recipe"]["cargo-robot-2"].subgroup = "mbs-logistic-angelsrobot"
			data.raw["recipe"]["angels-construction-robot"].subgroup = "mbs-logistic-angelsrobot"
			if mods["Bot_Servicing"] then
				data.raw["recipe"]["broken-cargo-robot"].subgroup = "mbs-logistic-angelsrobot"
				data.raw["recipe"]["broken-cargo-robot-2"].subgroup = "mbs-logistic-angelsrobot"
				data.raw["recipe"]["broken-angels-construction-robot"].subgroup = "mbs-logistic-angelsrobot"
			end
		end
	end
	
	-- circuit-network
	MSB.ORDER_CLEANER("turret-shield-combinator", "circuit-network", "c[combinators]-d[eturret-shield-combinator]")
	
	MSB.ORDER_CLEANER("tile-scan", "programmable-structures", "a-01[tile-scan]")
	MSB.ORDER_CLEANER("zone-scan", "programmable-structures", "a-02[zone-scan]")
	MSB.ORDER_CLEANER("unit-scan", "programmable-structures", "a-03[unit-scan]")
	MSB.ORDER_CLEANER("unitdata-scan", "programmable-structures", "a-04[unitdata-scan]")
	MSB.ORDER_CLEANER("path-scan", "programmable-structures", "a-05[path-scan]")
	MSB.ORDER_CLEANER("zone-control", "programmable-structures", "b-01[zone-control]")
	MSB.ORDER_CLEANER("unit-control", "programmable-structures", "b-02[unit-control]")
	MSB.ORDER_CLEANER("unitdata-control", "programmable-structures", "b-03[unitdata-control]")
	MSB.ORDER_CLEANER("path-control", "programmable-structures", "b-04[path-control]")
	if mods["UsefulCombinators"] then
		MSB.SUBGROUP_CLEANER("circuit-network", "useful-combinators", "1a-1")
		MSB.SUBGROUP_CLEANER("programmable-structures", "useful-combinators", "1a-2")
	end
end

-- production
if data.raw["item-group"]["production"] then
	MSB.ORDER_CLEANER("player", "shinytool2", "a1")
	MSB.ORDER_CLEANER("bob-player-miner", "shinytool2", "a2")
	MSB.ORDER_CLEANER("bob-player-fighter", "shinytool2", "a3")
	MSB.ORDER_CLEANER("bob-player-builder", "shinytool2", "a4")
	MSB.ORDER_CLEANER("upgrade-builder", "shinytool2", "b1")
	MSB.ORDER_CLEANER("vtk-deepcore-mining-planner", "shinytool2", "b2")
	MSB.ORDER_CLEANER("ping-tool", "shinytool2", "c1")
	MSB.ORDER_CLEANER("resource-monitor", "shinytool2", "c2")
	MSB.ORDER_CLEANER("gun-nano-emitter", "shinytool2", "d1")
	MSB.ORDER_CLEANER("ammo-nano-constructors", "shinytool2", "d2")
	MSB.ORDER_CLEANER("ammo-nano-termites", "shinytool2", "d3")
	MSB.ORDER_CLEANER("blank-iron-backpack", "shinytool2", "e1")
	MSB.ORDER_CLEANER("blank-steel-backpack", "shinytool2", "e2")
	MSB.ORDER_CLEANER("blank-alien-backpack", "shinytool2", "e3")

	MSB.SUBGROUP_GENERATOR("mbs-power-steam", "production", "c0-a")
	MSB.SUBGROUP_GENERATOR("mbs-power-base", "production", "c0-b")
	
	MSB.ORDER_CLEANER("wind-turbine-2", "mbs-power-base", "a-01[wind-turbine]")
	MSB.ORDER_CLEANER("burner-generator", "mbs-power-base", "a-02[burner-generator]")
	MSB.ORDER_CLEANER("burner-turbine", "mbs-power-base", "a-03[burner-turbine]")
	MSB.ORDER_CLEANER("OilSteamBoiler", "mbs-power-base", "b-01[OilSteamBoiler]")
	MSB.ORDER_CLEANER("petroleum-generator", "mbs-power-base", "b-02[petroleum-generator]")
	MSB.ORDER_CLEANER("fluid-generator", "mbs-power-base", "c-01[fluid-generator]")
	MSB.ORDER_CLEANER("fluid-generator-2", "mbs-power-base", "c-02[fluid-generator]")
	MSB.ORDER_CLEANER("fluid-generator-3", "mbs-power-base", "c-03[fluid-generator]")
	MSB.ORDER_CLEANER("hydrazine-generator", "mbs-power-base", "c-04[hydrazine-generator]")
	MSB.ORDER_CLEANER("realistic-reactor", "mbs-power-base", "d-01[realistic-reactor]")
	MSB.ORDER_CLEANER("rr-cooling-tower", "mbs-power-base", "d-02[rr-cooling-tower]")
	
	MSB.ORDER_CLEANER("electric-mining-drill", "shinyminer1", "a-01[mining-drill]")
	MSB.ORDER_CLEANER("bob-mining-drill-1", "shinyminer1", "b-01[mining-drill]")
	MSB.ORDER_CLEANER("bob-mining-drill-2", "shinyminer1", "c-01[mining-drill]")
	MSB.ORDER_CLEANER("bob-mining-drill-3", "shinyminer1", "d-01[mining-drill]")
	MSB.ORDER_CLEANER("bob-mining-drill-4", "shinyminer1", "e-01[mining-drill]")
	
	MSB.ORDER_CLEANER("mini-miner-1", "shinyminer1", "a-02[mining-drill]")
	MSB.ORDER_CLEANER("mini-miner-2", "shinyminer1", "b-02[mining-drill]")
	MSB.ORDER_CLEANER("mini-miner-3", "shinyminer1", "c-02[mining-drill]")
	MSB.ORDER_CLEANER("mini-miner-4", "shinyminer1", "d-02[mining-drill]")
	MSB.ORDER_CLEANER("mini-miner-5", "shinyminer1", "e-02[mining-drill]")
	
	MSB.ORDER_CLEANER("hydraulic-pupmjack", "shinyminer2", "a0-01[hydraulic-pupmjack]")
	MSB.ORDER_CLEANER("oil_rig", "shinyminer2", "a0-02[oil_rig]")
	MSB.ORDER_CLEANER("burner-mining-drill", "shinyminer2", "a0-03[burner-mining-drill]")
	MSB.ORDER_CLEANER("vtk-deepcore-mining-drill", "shinyminer2", "a0-04[deepcore-mining-drill]")
	MSB.ORDER_CLEANER("vtk-deepcore-mining-drill-advanced", "shinyminer2", "a0-05[deepcore-mining-drill]")
	
	for i=1,5 do MSB.ORDER_CLEANER("water-miner-"..i, "shinyjack1", "a-0"..i.."[water-miner]") end
	MSB.ORDER_CLEANER("offshore-pump", "shinybobpump1", "a-01[offshore-pump]")
	
	for i=1,5 do MSB.ORDER_CLEANER("deadlock-machine-packer-item-"..i, "shinyassem3", "a0-0"..i.."[machine-packer]") end
	MSB.ORDER_CLEANER("remover", "shinyassem3", "b1-01[remover]")
	
	MSB.ORDER_CLEANER("burner-mint", "shinymisc1", "a-01[mint]")
	MSB.ORDER_CLEANER("electric-mint", "shinymisc1", "a-02[mint]")
	MSB.ORDER_CLEANER("fuel-processor", "shinymisc1", "b-01[fuel-processor]")
	MSB.ORDER_CLEANER("auto-compressor", "shinymisc1", "c-01[auto-compressor]")
	MSB.ORDER_CLEANER("bob-distillery", "shinymisc1", "d-01[bob-distillery]")
	MSB.ORDER_CLEANER("bob-greenhouse", "shinymisc1", "e-01[bob-greenhouse]")
	MSB.ORDER_CLEANER("incubator", "shinymisc1", "f-01[incubator]")
	MSB.ORDER_CLEANER("feeder", "shinymisc1", "f-02[feeder]")
	
	MSB.SUBGROUP_GENERATOR("mbs-shiny-misc", "production", "y2")
	MSB.ORDER_CLEANER("vent-stack", "mbs-shiny-misc", "a-01[remover]")
	MSB.ORDER_CLEANER("flare-stack", "mbs-shiny-misc", "a-02[remover]")
	MSB.ORDER_CLEANER("incinerator", "mbs-shiny-misc", "a-03[remover]")
	MSB.ORDER_CLEANER("electric-incinerator", "mbs-shiny-misc", "a-04[remover]")
	MSB.ORDER_CLEANER("disintegrator", "mbs-shiny-misc", "a-05[remover]")
	if not data.raw["item"]["air-filter-machine-mk1"] then
		MSB.ORDER_CLEANER("air-filter-machine", "mbs-shiny-misc", "b-01[air-filter]")
		MSB.ORDER_CLEANER("air-filter-machine-mk2", "mbs-shiny-misc", "b-02[air-filter]")
		MSB.ORDER_CLEANER("air-filter-machine-mk3", "mbs-shiny-misc", "b-03[air-filter]")
	else
		for i=1,6 do MSB.ORDER_CLEANER("air-filter-machine-mk"..i, "mbs-shiny-misc", "b-0"..i.."[air-filter]") end
	end
end

-- combat
if data.raw["item-group"]["combat"] then
	if mods["bobwarfare"] then
		MSB.SUBGROUP_GENERATOR("mbs-ammo-rocket", "combat", "a4")
		MSB.ORDER_CLEANER("bi-seed-bomb-basic", "mbs-ammo-rocket", "a[bomb]-a[seed-bomb]")
		MSB.ORDER_CLEANER("bi-seed-bomb-standard", "mbs-ammo-rocket", "a[bomb]-b[seed-bomb]")
		MSB.ORDER_CLEANER("bi-seed-bomb-advanced", "mbs-ammo-rocket", "a[bomb]-c[seed-bomb]")
		MSB.ORDER_CLEANER("bi-bio-cannon-basic-ammo", "mbs-ammo-rocket", "b[artilleryshell]-a[cannon-basic]")
		MSB.ORDER_CLEANER("bi-bio-cannon-poison-ammo", "mbs-ammo-rocket", "b[artilleryshell]-b[cannon-basic]")
		MSB.ORDER_CLEANER("bi-bio-cannon-biological-ammo", "mbs-ammo-rocket", "b[artilleryshell]-c[cannon-basic]")
		MSB.ORDER_CLEANER("artillery-shell", "mbs-ammo-rocket", "b[artilleryshell]-d[artillery-shell]")
		MSB.ORDER_CLEANER("poison-artillery-shell", "mbs-ammo-rocket", "b[artilleryshell]-e[artillery-shell]")
		MSB.ORDER_CLEANER("explosive-artillery-shell", "mbs-ammo-rocket", "b[artilleryshell]-f[artillery-shell]")
		MSB.ORDER_CLEANER("distractor-artillery-shell", "mbs-ammo-rocket", "b[artilleryshell]-g[artillery-shell]")
	end
	
	MSB.SUBGROUP_CLEANER("bob-ammo", "combat", "a5")
	
	MSB.ORDER_CLEANER("ts-shield-disabler", "ammo", "h[remote]-01[shield-disabler]")
	MSB.ORDER_CLEANER("discharge-defense-remote", "ammo", "h[remote]-02[discharge-remote]")
	MSB.ORDER_CLEANER("artillery-targeting-remote", "ammo", "h[remote]-03[artillery-remote]")
	
	if mods["bobwarfare"] then
		MSB.ORDER_CLEANER("waterbomb", "shinycombat1", "a0[water-bomb]")
		MSB.ORDER_CLEANER("bob-robot-tank", "shinycombat1", "d1")
		MSB.ORDER_CLEANER("defender-robot", "shinycombat1", "d2")
		MSB.ORDER_CLEANER("distractor-robot", "shinycombat1", "d3")
		MSB.ORDER_CLEANER("destroyer-robot", "shinycombat1", "d4")
		MSB.ORDER_CLEANER("bob-laser-robot", "shinycombat1", "d5")
	end
	
	if data.raw["item-subgroup"]["shinyequlaser1"] then
		MSB.ORDER_CLEANER("portable-engine-equipment", "shinyequpower1", "a0")
		MSB.ORDER_CLEANER("discharge-defense-equipment", "shinyequlaser1", "a0")
	end
	
	if data.raw["item-subgroup"]["shinywalls1"] then
		MSB.ORDER_CLEANER("bi-wooden-fence", "shinywalls1", "a0")
		MSB.ORDER_CLEANER("healing-station", "shinywalls1", "c1")
		MSB.ORDER_CLEANER("big_brother-surveillance-center", "shinywalls1", "c2")
		MSB.ORDER_CLEANER("rocket-silo", "shinywalls1", "c3")
	end
	
	if data.raw["item-subgroup"]["shinyturrets1"] then
		MSB.ORDER_CLEANER("bi-dart-turret", "shinyturrets1", "a0")
		MSB.ORDER_CLEANER("more-biters-sniper-turret", "shinyturrets2", "a4")
		MSB.ORDER_CLEANER("more-biters-seismic", "shinyturrets2", "b2")
		MSB.ORDER_CLEANER("flamethrower-turret", "shinyturrets2", "b1")
		MSB.ORDER_CLEANER("bi-bio-cannon-area", "shinyturrets2", "c0")
		MSB.ORDER_CLEANER("tesla-turret", "shinyturrets3", "b1")
	end
end

-- intermediate-products
if data.raw["item-group"]["intermediate-products"] then
	if data.raw["item-subgroup"]["bob-intermediates"] then
		MSB.ORDER_CLEANER("iron-gear-wheel", "bob-intermediates", "f-a01[gear-wheel]")
		MSB.ORDER_CLEANER("motor", "bob-intermediates", "f-a02[motor]")
		MSB.ORDER_CLEANER("electric-motor", "bob-intermediates", "f-a03[motor]")
		MSB.ORDER_CLEANER("engine-unit", "bob-intermediates", "f-a04[engine-unit]")
		MSB.ORDER_CLEANER("electric-engine-unit", "bob-intermediates", "f-a05[engine-unit]")
	end
	if data.raw["item-subgroup"]["bob-gears"] then
		MSB.ORDER_CLEANER("wooden-gear-wheel", "bob-gears", "a-01")
		MSB.ORDER_CLEANER("iron-gear-wheel", "bob-gears", "a-02")
	end
	if data.raw["item-subgroup"]["bob-electronic-components"] then
		if mods["bobelectronics"] then
			MSB.ORDER_CLEANER("iron-stick", "bob-electronic-components", "0-a0[b1-iron-stick]")
			MSB.ORDER_CLEANER("copper-cable", "bob-electronic-components", "0-a0[copper-cable]")
		end
	end
	
	MSB.SUBGROUP_GENERATOR("mbs-intermediate-uranium", "intermediate-products", "f3")
	MSB.SUBGROUP_GENERATOR("mbs-intermediate-space", "intermediate-products", "f4")
	MSB.SUBGROUP_GENERATOR("mbs-intermediate-sciencepack", "intermediate-products", "g1")
	MSB.SUBGROUP_GENERATOR("mbs-alien-artifact-small", "intermediate-products", "g2")
	MSB.SUBGROUP_GENERATOR("mbs-alien-artifact", "intermediate-products", "g3")
	MSB.SUBGROUP_GENERATOR("mbs-intermediate-heal", "intermediate-products", "g4")
	
	MSB.ORDER_CLEANER("uranium-rubble-cleaning", "mbs-intermediate-uranium", "a-01[uranium]")
	MSB.ORDER_CLEANER("uranium-processing", "mbs-intermediate-uranium", "b-01[uranium]")
	MSB.ORDER_CLEANER("kovarex-enrichment-process", "mbs-intermediate-uranium", "b-02[uranium]")
	MSB.ORDER_CLEANER("nuclear-fuel-reprocessing", "mbs-intermediate-uranium", "b-03[uranium]")
	MSB.ORDER_CLEANER("uranium-fuel-cell", "mbs-intermediate-uranium", "c-01[uranium]")
	MSB.ORDER_CLEANER("nuclear-fuel", "mbs-intermediate-uranium", "c-02[uranium]")
	MSB.ORDER_CLEANER("biotic-boost-pack", "mbs-intermediate-uranium", "d-01[uranium]")
	MSB.ORDER_CLEANER("biotic-power-structure", "mbs-intermediate-uranium", "d-02[uranium]")
	
	MSB.ORDER_CLEANER("satellite", "mbs-intermediate-space", "a-01[satellite]")
	MSB.ORDER_CLEANER("destroyer-satellite", "mbs-intermediate-space", "a-02[satellite]")
	MSB.ORDER_CLEANER("offering-shred-1", "mbs-intermediate-space", "a-03[satellite]")
	MSB.ORDER_CLEANER("offering-santa-1", "mbs-intermediate-space", "a-04[satellite]")
	MSB.ORDER_CLEANER("offering-inter-1", "mbs-intermediate-space", "a-05[satellite]")
	MSB.ORDER_CLEANER("offering-voske-1", "mbs-intermediate-space", "a-06[satellite]")
	MSB.ORDER_CLEANER("offering-east-1", "mbs-intermediate-space", "a-07[satellite]")
	MSB.ORDER_CLEANER("heat-shield-tile", "mbs-intermediate-space", "b-01[rocket]")
	MSB.ORDER_CLEANER("rocket-control-unit", "mbs-intermediate-space", "b-02[rocket]")
	MSB.ORDER_CLEANER("low-density-structure", "mbs-intermediate-space", "b-03[rocket]")
	MSB.ORDER_CLEANER("rocket-fuel", "mbs-intermediate-space", "b-03[rocket]")
	
	MSB.ORDER_CLEANER("alien-science-pack", "mbs-intermediate-sciencepack", "a-01[sciencepack]")
	MSB.ORDER_CLEANER("alien-science-pack-red", "mbs-intermediate-sciencepack", "a-02[sciencepack]")
	MSB.ORDER_CLEANER("alien-science-pack-orange", "mbs-intermediate-sciencepack", "a-03[sciencepack]")
	MSB.ORDER_CLEANER("alien-science-pack-yellow", "mbs-intermediate-sciencepack", "a-04[sciencepack]")
	MSB.ORDER_CLEANER("alien-science-pack-green", "mbs-intermediate-sciencepack", "a-05[sciencepack]")
	MSB.ORDER_CLEANER("alien-science-pack-blue", "mbs-intermediate-sciencepack", "a-06[sciencepack]")
	MSB.ORDER_CLEANER("alien-science-pack-purple", "mbs-intermediate-sciencepack", "a-07[sciencepack]")
	
	MSB.ORDER_CLEANER("alien-artifact-from-small", "mbs-alien-artifact-small", "a-01[artifact]")
	MSB.ORDER_CLEANER("alien-artifact-red-from-small", "mbs-alien-artifact-small", "a-02[artifact]")
	MSB.ORDER_CLEANER("alien-artifact-orange-from-small", "mbs-alien-artifact-small", "a-03[artifact]")
	MSB.ORDER_CLEANER("alien-artifact-yellow-from-small", "mbs-alien-artifact-small", "a-04[artifact]")
	MSB.ORDER_CLEANER("alien-artifact-green-from-small", "mbs-alien-artifact-small", "a-05[artifact]")
	MSB.ORDER_CLEANER("alien-artifact-blue-from-small", "mbs-alien-artifact-small", "a-06[artifact]")
	MSB.ORDER_CLEANER("alien-artifact-purple-from-small", "mbs-alien-artifact-small", "a-07[artifact]")
	
	MSB.ORDER_CLEANER("alien-artifact-red-from-basic", "mbs-alien-artifact", "a-02[artifact]")
	MSB.ORDER_CLEANER("alien-artifact-orange-from-basic", "mbs-alien-artifact", "a-03[artifact]")
	MSB.ORDER_CLEANER("alien-artifact-yellow-from-basic", "mbs-alien-artifact", "a-04[artifact]")
	MSB.ORDER_CLEANER("alien-artifact-green-from-basic", "mbs-alien-artifact", "a-05[artifact]")
	MSB.ORDER_CLEANER("alien-artifact-blue-from-basic", "mbs-alien-artifact", "a-06[artifact]")
	MSB.ORDER_CLEANER("alien-artifact-purple-from-basic", "mbs-alien-artifact", "a-07[artifact]")
	
	if mods["angelsbioprocessing"] then
		MSB.SUBGROUP_CLEANER("mbs-alien-artifact-small", "bio-processing-alien", "l")
		MSB.SUBGROUP_CLEANER("mbs-alien-artifact", "bio-processing-alien", "m")
		
		MSB.ORDER_CLEANER("alien-artifact-red-from-small", "mbs-alien-artifact-small", "a-01[artifact]")
		MSB.ORDER_CLEANER("alien-artifact-yellow-from-small", "mbs-alien-artifact-small", "a-02[artifact]")
		MSB.ORDER_CLEANER("alien-artifact-orange-from-small", "mbs-alien-artifact-small", "a-03[artifact]")
		MSB.ORDER_CLEANER("alien-artifact-blue-from-small", "mbs-alien-artifact-small", "a-04[artifact]")
		MSB.ORDER_CLEANER("alien-artifact-purple-from-small", "mbs-alien-artifact-small", "a-05[artifact]")
		MSB.ORDER_CLEANER("alien-artifact-green-from-small", "mbs-alien-artifact-small", "a-06[artifact]")
		MSB.ORDER_CLEANER("alien-artifact-from-small", "mbs-alien-artifact-small", "a-07[artifact]")

		MSB.ORDER_CLEANER("alien-artifact-red-from-basic", "mbs-alien-artifact", "a-01[artifact]")
		MSB.ORDER_CLEANER("alien-artifact-yellow-from-basic", "mbs-alien-artifact", "a-02[artifact]")
		MSB.ORDER_CLEANER("alien-artifact-orange-from-basic", "mbs-alien-artifact", "a-03[artifact]")
		MSB.ORDER_CLEANER("alien-artifact-blue-from-basic", "mbs-alien-artifact", "a-04[artifact]")
		MSB.ORDER_CLEANER("alien-artifact-purple-from-basic", "mbs-alien-artifact", "a-05[artifact]")
		MSB.ORDER_CLEANER("alien-artifact-green-from-basic", "mbs-alien-artifact", "a-06[artifact]")
	end
	
	MSB.ORDER_CLEANER("cutting-tiny-fish", "mbs-intermediate-heal", "a-01[cutting]")
	MSB.ORDER_CLEANER("cutting-small-fish", "mbs-intermediate-heal", "a-02[cutting]")
	MSB.ORDER_CLEANER("cutting-fish", "mbs-intermediate-heal", "a-03[cutting]")
	MSB.ORDER_CLEANER("organic-food", "mbs-intermediate-heal", "b-01[organic-food]")
	MSB.ORDER_CLEANER("organic-food1", "mbs-intermediate-heal", "b-02[organic-food]")
	MSB.ORDER_CLEANER("organic-food2", "mbs-intermediate-heal", "b-03[organic-food]")
	MSB.ORDER_CLEANER("tu-coin-1", "mbs-intermediate-heal", "c-01[coin]")
	MSB.ORDER_CLEANER("tu-coin-2", "mbs-intermediate-heal", "c-02[coin]")
	MSB.ORDER_CLEANER("tu-coin-3", "mbs-intermediate-heal", "c-03[coin]")
	MSB.ORDER_CLEANER("tu-coin-4", "mbs-intermediate-heal", "c-04[coin]")
	
	MSB.ORDER_CLEANER("cordite", "shinybullets4", "a1")
	MSB.ORDER_CLEANER("bullet-casing", "shinybullets4", "a2")
	MSB.ORDER_CLEANER("rocket-engine", "shinybullets4", "a6")
	MSB.ORDER_CLEANER("rocket-body", "shinybullets4", "a7")
	
	if data.raw["item-group"]["bob-resource-products"] then
		if data.raw["item-subgroup"]["bob-resource"] then
			MSB.ORDER_CLEANER("wood", "bob-resource", "a[wood]-a[wood]")
			MSB.ORDER_CLEANER("bob-rubber", "bob-resource", "f[resin]-f[rubber]")
		end
		if data.raw["item-group"]["resource-refining"] then
			MSB.ORDER_CLEANER("stone-tablet", "bob-resource", "a[stone]-a[stone]")
			MSB.ORDER_CLEANER("lithium", "bob-resource", "g[lithium]")
		end
		if data.raw["item-group"]["angels-casting"] then
			MSB.ORDER_CLEANER("solder-alloy", "angels-solder-casting", "d")
			MSB.ORDER_CLEANER("copper-tungsten-alloy", "angels-tungsten-casting", "la")
			MSB.ORDER_CLEANER("tungsten-carbide", "angels-tungsten-casting", "lb")
		end
	end
end

-- gems
if data.raw["item-group"]["bob-gems"] then
	MSB.ORDER_CLEANER("sort-gem-ore", "shinygem1", "a0")
	if data.raw["item-group"]["bob-resource-products"] then
		MSB.SUBGROUP_CLEANER("shinygem1", "bob-resource-products", "d-a")
		MSB.SUBGROUP_CLEANER("bob-gems-ore", "bob-resource-products", "d-b")
		MSB.SUBGROUP_CLEANER("bob-gems-raw", "bob-resource-products", "d-c")
		MSB.SUBGROUP_CLEANER("bob-gems-cut", "bob-resource-products", "d-d")
		MSB.SUBGROUP_CLEANER("bob-gems-polished", "bob-resource-products", "d-e")
	end
end

-- Vehicles
if data.raw["item-group"]["vehicles"] then
	MSB.SUBGROUP_GENERATOR("mbs-vehicle-others-ammunition-1", "vehicles", "a[others]-a[ammunition]")
	MSB.SUBGROUP_GENERATOR("mbs-vehicle-others-ammunition-2", "vehicles", "a[others]-b[ammunition]")
	MSB.SUBGROUP_GENERATOR("mbs-vehicle-others-building", "vehicles", "a[others]-c[building]")
	MSB.SUBGROUP_GENERATOR("mbs-vehicle-others-rail", "vehicles", "a[others]-d[rail]")
	MSB.SUBGROUP_GENERATOR("mbs-vehicle-others-port", "vehicles", "a[others]-e[port]")
	MSB.SUBGROUP_GENERATOR("mbs-vehicle-others-signal", "vehicles", "a[others]-e[signal]")

	MSB.SUBGROUP_GENERATOR("mbs-vehicle-list-first", "vehicles", "b[vehicles]-a[vehicles]")
	MSB.SUBGROUP_GENERATOR("mbs-vehicle-list-second", "vehicles", "b[vehicles]-b[miners]")
	MSB.SUBGROUP_GENERATOR("mbs-vehicle-list-third", "vehicles", "b[vehicles]-c[aircraft]")
	MSB.SUBGROUP_GENERATOR("mbs-vehicle-list-fourth", "vehicles", "b[vehicles]-d[others]")
	MSB.SUBGROUP_GENERATOR("mbs-vehicle-list-fifth", "vehicles", "b[vehicles]-e[others]")

	MSB.SUBGROUP_GENERATOR("mbs-trains-list-first", "vehicles", "c[trains]-a[locomotive]")
	MSB.SUBGROUP_GENERATOR("mbs-trains-list-second", "vehicles", "c[trains]-b[cargowagon]")
	MSB.SUBGROUP_GENERATOR("mbs-trains-list-third", "vehicles", "c[trains]-c[fluidwagon]")
	MSB.SUBGROUP_GENERATOR("mbs-trains-list-fourth", "vehicles", "c[trains]-d[others]")
	MSB.SUBGROUP_GENERATOR("mbs-trains-list-fifth", "vehicles", "c[trains]-e[others]")
	
	MSB.SUBGROUP_GENERATOR("mbs-vehicle-equipment-others", "vehicles", "d[equipment]-j[list10]")
	
	MSB.ORDER_CLEANER("cannon-shell", "mbs-vehicle-others-ammunition-1", "a-01[cannon-shell]")
	MSB.ORDER_CLEANER("cannon-shell-precision", "mbs-vehicle-others-ammunition-1", "a-02[cannon-shell-precision]")
	MSB.ORDER_CLEANER("explosive-cannon-shell", "mbs-vehicle-others-ammunition-1", "a-03[explosive-cannon-shell]")
	MSB.ORDER_CLEANER("explosive-cannon-shell-precision", "mbs-vehicle-others-ammunition-1", "a-04[explosive-cannon-shell-precision]")
	MSB.ORDER_CLEANER("scatter-cannon-shell", "mbs-vehicle-others-ammunition-1", "a-05[scatter-cannon-shell]")
	MSB.ORDER_CLEANER("scatter-cannon-shell", "mbs-vehicle-others-ammunition-1", "a-06[scatter-cannon-shell]")
	MSB.ORDER_CLEANER("high-explosive-cannon-shell", "mbs-vehicle-others-ammunition-1", "a-07[high-explosive-cannon-shell]")
	MSB.ORDER_CLEANER("uranium-cannon-shell", "mbs-vehicle-others-ammunition-1", "a-08[uranium-cannon-shell]")
	MSB.ORDER_CLEANER("explosive-uranium-cannon-shell", "mbs-vehicle-others-ammunition-1", "a-09[explosive-uranium-cannon-shell]")
	
	MSB.ORDER_CLEANER("rocket-magazine", "mbs-vehicle-others-ammunition-2", "a-01[rocket-magazine]")
	MSB.ORDER_CLEANER("explosive-rocket-magazine", "mbs-vehicle-others-ammunition-2", "a-02[explosive-rocket-magazine]")
	MSB.ORDER_CLEANER("uranium-rocket-magazine", "mbs-vehicle-others-ammunition-2", "a-03[uranium-rocket-magazine]")
	MSB.ORDER_CLEANER("flamethrower-ammo", "mbs-vehicle-others-ammunition-2", "b-01[flamethrower-ammo]")
	MSB.ORDER_CLEANER("napalm", "mbs-vehicle-others-ammunition-2", "b-02[napalm]")
	MSB.ORDER_CLEANER("flamejet-ammo", "mbs-vehicle-others-ammunition-2", "b-03[flamejet-ammo]")
	MSB.ORDER_CLEANER("electroshock-pulse-ammo", "mbs-vehicle-others-ammunition-2", "c-01[electroshock-pulse-ammo]")
	MSB.ORDER_CLEANER("laser-cannon-battery-piercing", "mbs-vehicle-others-ammunition-2", "c-02[laser-cannon-battery-piercing]")
	MSB.ORDER_CLEANER("laser-cannon-battery-focussed", "mbs-vehicle-others-ammunition-2", "c-03[laser-cannon-battery-focussed]")
	
	MSB.ORDER_CLEANER("vehicle-deployer", "mbs-vehicle-others-building", "a-01[vehicle-deployer]")
	MSB.ORDER_CLEANER("vehicle-depot", "mbs-vehicle-others-building", "a-02[vehicle-depot]")
	MSB.ORDER_CLEANER("vehicle-gun-turret", "mbs-vehicle-others-building", "a-03[vehicle-gun-turret]")
	MSB.ORDER_CLEANER("vehicle-rocket-turret", "mbs-vehicle-others-building", "a-04[vehicle-rocket-turret]")
	MSB.ORDER_CLEANER("zone-planner", "mbs-vehicle-others-building", "b-01[zone-planner]")
	MSB.ORDER_CLEANER("unit-remote-control", "mbs-vehicle-others-building", "b-02[unit-remote-control]")
	MSB.ORDER_CLEANER("path-remote-control", "mbs-vehicle-others-building", "b-03[path-remote-control]")
	MSB.ORDER_CLEANER("heli-remote-equipment", "mbs-vehicle-others-building", "b-04[heli-remote-equipment]")
	
	MSB.ORDER_CLEANER("bi_recipe_rail_wood", "mbs-vehicle-others-rail", "a-01[bi-rail-wood]")
	MSB.ORDER_CLEANER("bi_recipe_rail_wood_to_concrete", "mbs-vehicle-others-rail", "a-02[bi-rail-wood]")
	MSB.ORDER_CLEANER("bi_recipe_rail_wood_bridge", "mbs-vehicle-others-rail", "a-03[bi-rail-wood-bridge]")
	MSB.ORDER_CLEANER("rail", "mbs-vehicle-others-rail", "b-01[rail]")
	MSB.ORDER_CLEANER("bi_rail_power", "mbs-vehicle-others-rail", "b-02[bi-rail-power]")
	MSB.ORDER_CLEANER("bi_recipe_power_to_rail_pole", "mbs-vehicle-others-rail", "b-03[bi-power-to-rail-pole]")
	MSB.ORDER_CLEANER("water-way", "mbs-vehicle-others-rail", "c-01[water-way]")
	MSB.ORDER_CLEANER("bridge_base", "mbs-vehicle-others-rail", "c-02[bridge_base]")
	
	MSB.ORDER_CLEANER("heli-pad-item", "mbs-vehicle-others-port", "a-01[heli-pad]")
	MSB.ORDER_CLEANER("train-stop", "mbs-vehicle-others-port", "a-02[train-stop]")
	MSB.ORDER_CLEANER("fuel-train-stop", "mbs-vehicle-others-port", "a-03[fuel-train-stop]")
	MSB.ORDER_CLEANER("logistic-train-stop", "mbs-vehicle-others-port", "a-04[logistic-train-stop]")
	MSB.ORDER_CLEANER("port", "mbs-vehicle-others-port", "a-05[port]")
	MSB.ORDER_CLEANER("ltn-port", "mbs-vehicle-others-port", "a-06[ltn-port]")
	
	MSB.ORDER_CLEANER("railloader", "mbs-vehicle-others-signal", "a-01[railloader]")
	MSB.ORDER_CLEANER("railunloader", "mbs-vehicle-others-signal", "a-02[railunloader]")
	MSB.ORDER_CLEANER("ship_pump", "mbs-vehicle-others-signal", "a-03[ship_pump]")
	MSB.ORDER_CLEANER("train-limit", "mbs-vehicle-others-signal", "b-01[train-limit]")
	MSB.ORDER_CLEANER("train-unlimit", "mbs-vehicle-others-signal", "b-02[train-unlimit]")
	MSB.ORDER_CLEANER("rail-signal", "mbs-vehicle-others-signal", "c-01[rail-signal]")
	MSB.ORDER_CLEANER("rail-chain-signal", "mbs-vehicle-others-signal", "c-02[rail-chain-signal]")
	MSB.ORDER_CLEANER("buoy", "mbs-vehicle-others-signal", "c-03[buoy]")
	MSB.ORDER_CLEANER("chain_buoy", "mbs-vehicle-others-signal", "c-04[chain_buoy]")
	
	MSB.ORDER_CLEANER("vehicle-hauler", "mbs-vehicle-list-first", "a-01[vehicle-hauler]")
	MSB.ORDER_CLEANER("vehicle-chaingunner", "mbs-vehicle-list-first", "a-02[vehicle-chaingunner]")
	MSB.ORDER_CLEANER("car", "mbs-vehicle-list-first", "a-03[car]")
	MSB.ORDER_CLEANER("vehicle-flame-tumbler", "mbs-vehicle-list-first", "a-04[vehicle-flame-tumbler]")
	MSB.ORDER_CLEANER("vehicle-warden", "mbs-vehicle-list-first", "a-05[vehicle-warden]")
	MSB.ORDER_CLEANER("vehicle-flame-tank", "mbs-vehicle-list-first", "b-01[vehicle-flame-tank]")
	MSB.ORDER_CLEANER("vehicle-laser-tank", "mbs-vehicle-list-first", "b-02[vehicle-laser-tank]")
	MSB.ORDER_CLEANER("tank", "mbs-vehicle-list-first", "b-03[tank]")
	MSB.ORDER_CLEANER("bob-tank-2", "mbs-vehicle-list-first", "b-04[bob-tank-2]")
	MSB.ORDER_CLEANER("bob-tank-3", "mbs-vehicle-list-first", "b-05[bob-tank-3]")
	
	MSB.ORDER_CLEANER("vehicle-miner", "mbs-vehicle-list-second", "a-01[vehicle-miner]")
	MSB.ORDER_CLEANER("vehicle-miner-mk2", "mbs-vehicle-list-second", "a-02[vehicle-miner-mk2]")
	MSB.ORDER_CLEANER("vehicle-miner-mk3", "mbs-vehicle-list-second", "a-03[vehicle-miner-mk3]")
	MSB.ORDER_CLEANER("vehicle-miner-mk4", "mbs-vehicle-list-second", "a-04[vehicle-miner-mk4]")
	MSB.ORDER_CLEANER("vehicle-miner-mk5", "mbs-vehicle-list-second", "a-05[vehicle-miner-mk5]")
	
	MSB.ORDER_CLEANER("angels-crawler", "mbs-vehicle-list-third", "a-01[angels-crawler]")
	MSB.ORDER_CLEANER("hovercraft-item", "mbs-vehicle-list-third", "b-01[hovercraft-item]")
	MSB.ORDER_CLEANER("missilecraft", "mbs-vehicle-list-third", "b-02[missilecraft]")
	MSB.ORDER_CLEANER("raven-1", "mbs-vehicle-list-third", "c-01[raven-1]")
	MSB.ORDER_CLEANER("heli-item", "mbs-vehicle-list-third", "c-02[heli-item]")
	MSB.ORDER_CLEANER("cargo-plane", "mbs-vehicle-list-third", "d-01[cargo-plane]")
	MSB.ORDER_CLEANER("gunship", "mbs-vehicle-list-third", "d-02[gunship]")
	MSB.ORDER_CLEANER("gunship-aircraft-rocket-launcher", "mbs-vehicle-list-third", "d-03[gunship]")
	MSB.ORDER_CLEANER("jet", "mbs-vehicle-list-third", "d-03[jet]")
	MSB.ORDER_CLEANER("jet-napalm-launcher", "mbs-vehicle-list-third", "d-04[jet]")
	MSB.ORDER_CLEANER("flying-fortress", "mbs-vehicle-list-third", "d-05[flying-fortress]")
	MSB.ORDER_CLEANER("flying-fortress-flying-fortress-rocket-launcher", "mbs-vehicle-list-third", "d-06[flying-fortress]")
	
	MSB.ORDER_CLEANER("locomotive", "mbs-trains-list-first", "a-01[locomotive]")
	MSB.ORDER_CLEANER("bob-locomotive-2", "mbs-trains-list-first", "a-02[bob-locomotive-2]")
	MSB.ORDER_CLEANER("bob-locomotive-3", "mbs-trains-list-first", "a-03[bob-locomotive-3]")
	MSB.ORDER_CLEANER("bob-armoured-locomotive", "mbs-trains-list-first", "a-04[bob-armoured-locomotive]")
	MSB.ORDER_CLEANER("bob-armoured-locomotive-2", "mbs-trains-list-first", "a-05[bob-armoured-locomotive-2]")
	MSB.ORDER_CLEANER("petro-locomotive-1", "mbs-trains-list-first", "b-01[petro-locomotive-1]")
	MSB.ORDER_CLEANER("crawler-locomotive", "mbs-trains-list-first", "b-02[crawler-locomotive]")
	MSB.ORDER_CLEANER("crawler-locomotive-wagon", "mbs-trains-list-first", "b-03[crawler-locomotive-wagon]")
	MSB.ORDER_CLEANER("smelting-locomotive-1", "mbs-trains-list-first", "b-04[smelting-locomotive-1]")
	MSB.ORDER_CLEANER("smelting-locomotive-tender", "mbs-trains-list-first", "b-05[smelting-locomotive-tender]")
	
	MSB.ORDER_CLEANER("cargo-wagon", "mbs-trains-list-second", "a-01[cargo-wagon]")
	MSB.ORDER_CLEANER("bob-cargo-wagon-2", "mbs-trains-list-second", "a-02[bob-cargo-wagon-2]")
	MSB.ORDER_CLEANER("bob-cargo-wagon-3", "mbs-trains-list-second", "a-03[bob-cargo-wagon-3]")
	MSB.ORDER_CLEANER("bob-armoured-cargo-wagon", "mbs-trains-list-second", "a-04[bob-armoured-cargo-wagon]")
	MSB.ORDER_CLEANER("bob-armoured-cargo-wagon-2", "mbs-trains-list-second", "a-05[bob-armoured-cargo-wagon-2]")
	MSB.ORDER_CLEANER("crawler-wagon", "mbs-trains-list-second", "b-01[crawler-wagon]")
	MSB.ORDER_CLEANER("crawler-bot-wagon", "mbs-trains-list-second", "b-02[crawler-bot-wagon]")
	MSB.ORDER_CLEANER("smelting-wagon-1", "mbs-trains-list-second", "b-03[smelting-wagon-1]")
	
	MSB.ORDER_CLEANER("fluid-wagon", "mbs-trains-list-third", "a-01[fluid-wagon]")
	MSB.ORDER_CLEANER("bob-fluid-wagon-2", "mbs-trains-list-third", "a-02[bob-fluid-wagon-2]")
	MSB.ORDER_CLEANER("bob-fluid-wagon-3", "mbs-trains-list-third", "a-03[bob-fluid-wagon-3]")
	MSB.ORDER_CLEANER("bob-armoured-fluid-wagon", "mbs-trains-list-third", "a-04[bob-armoured-fluid-wagon]")
	MSB.ORDER_CLEANER("bob-armoured-fluid-wagon-2", "mbs-trains-list-third", "a-05[bob-armoured-fluid-wagon-2]")
	MSB.ORDER_CLEANER("petro-tank1", "mbs-trains-list-third", "b-01[petro-tank1]")
	MSB.ORDER_CLEANER("petro-tank2", "mbs-trains-list-third", "b-02[petro-tank2]")
	
	MSB.ORDER_CLEANER("artillery-wagon", "mbs-trains-list-fourth", "a-01[artillery-wagon]")
	MSB.ORDER_CLEANER("bob-artillery-wagon-2", "mbs-trains-list-fourth", "a-02[bob-artillery-wagon-2]")
	MSB.ORDER_CLEANER("bob-artillery-wagon-3", "mbs-trains-list-fourth", "a-03[bob-artillery-wagon-3]")
	MSB.ORDER_CLEANER("farl", "mbs-trains-list-fourth", "b-01[farl]")
	MSB.ORDER_CLEANER("boat", "mbs-trains-list-fourth", "c-01[boat]")
	MSB.ORDER_CLEANER("cargo_ship", "mbs-trains-list-fourth", "c-02[cargo_ship]")
	MSB.ORDER_CLEANER("oil_tanker", "mbs-trains-list-fourth", "c-03[oil_tanker]")
	
	MSB.SUBGROUP_CLEANER("vehicle-equipment", "vehicles", "d[equipment]-a[list01]")
	MSB.SUBGROUP_CLEANER("shinyvehe1", "vehicles", "d[equipment]-b[list02]")
	MSB.SUBGROUP_CLEANER("shinyvehe3", "vehicles", "d[equipment]-c[list03]")
	MSB.SUBGROUP_CLEANER("shinyvehe5", "vehicles", "d[equipment]-d[list04]")
	MSB.SUBGROUP_CLEANER("shinyvehe2", "vehicles", "d[equipment]-e[list05]")
	MSB.SUBGROUP_CLEANER("shinyvehe4", "vehicles", "d[equipment]-f[list06]")
	MSB.SUBGROUP_CLEANER("shinyvehe6", "vehicles", "d[equipment]-g[list07]")
	MSB.SUBGROUP_CLEANER("shinyvehe7", "vehicles", "d[equipment]-h[list08]")
	MSB.SUBGROUP_CLEANER("shinyvehe8", "vehicles", "d[equipment]-i[list09]")
	
	MSB.ORDER_CLEANER("farl-roboport", "mbs-vehicle-equipment-others", "a-01[farl-roboport]")
	MSB.ORDER_CLEANER("angels-burner-generator-vequip", "mbs-vehicle-equipment-others", "b-01[angels-burner-generator-vequip]")
	MSB.ORDER_CLEANER("angels-fusion-reactor-vequip", "mbs-vehicle-equipment-others", "b-02[angels-fusion-reactor-vequip]")
	MSB.ORDER_CLEANER("angels-repair-roboport-vequip", "mbs-vehicle-equipment-others", "b-03[angels-repair-roboport-vequip]")
	MSB.ORDER_CLEANER("angels-construction-roboport-vequip", "mbs-vehicle-equipment-others", "b-04[angels-construction-roboport-vequip]")
	MSB.ORDER_CLEANER("angels-heavy-energy-shield-vequip", "mbs-vehicle-equipment-others", "b-05[angels-heavy-energy-shield-vequip]")
	MSB.ORDER_CLEANER("angels-rocket-defense-equipment-vequip", "mbs-vehicle-equipment-others", "b-06[angels-rocket-defense-equipment-vequip]")
end

-- modules
if data.raw["item-group"]["bobmodules"] then
	MSB.SUBGROUP_GENERATOR("mbs-modules-intermediate", "bobmodules", "a[modules]-a[intermediate]")
	MSB.SUBGROUP_GENERATOR("mbs-modules-tier1", "bobmodules", "a[modules]-b[tier1]")
	MSB.SUBGROUP_GENERATOR("mbs-modules-tier2", "bobmodules", "a[modules]-c[tier2]")
	MSB.SUBGROUP_GENERATOR("mbs-modules-tier3", "bobmodules", "a[modules]-d[tier3]")
	
	MSB.ORDER_CLEANER("module-case", "mbs-modules-intermediate", "a-01[module-case]")
	MSB.ORDER_CLEANER("module-contact", "mbs-modules-intermediate", "a-02[module-contact]")
	MSB.ORDER_CLEANER("module-circuit-board", "mbs-modules-intermediate", "a-03[module-circuit-board]")
	
	MSB.ORDER_CLEANER("module-processor-board", "mbs-modules-tier1", "a-01[module-processor-board]")
	MSB.ORDER_CLEANER("speed-processor", "mbs-modules-tier1", "a-02[speed-processor]")
	MSB.ORDER_CLEANER("effectivity-processor", "mbs-modules-tier1", "a-03[effectivity-processor]")
	MSB.ORDER_CLEANER("productivity-processor", "mbs-modules-tier1", "a-04[productivity-processor]")
	MSB.ORDER_CLEANER("pollution-create-processor", "mbs-modules-tier1", "a-05[pollution-create-processor]")
	MSB.ORDER_CLEANER("pollution-clean-processor", "mbs-modules-tier1", "a-06[pollution-clean-processor]")
	
	MSB.ORDER_CLEANER("module-processor-board-2", "mbs-modules-tier2", "a-01[module-processor-board]")
	MSB.ORDER_CLEANER("speed-processor-2", "mbs-modules-tier2", "a-02[speed-processor]")
	MSB.ORDER_CLEANER("effectivity-processor-2", "mbs-modules-tier2", "a-03[effectivity-processor]")
	MSB.ORDER_CLEANER("productivity-processor-2", "mbs-modules-tier2", "a-04[productivity-processor]")
	MSB.ORDER_CLEANER("pollution-create-processor-2", "mbs-modules-tier2", "a-05[pollution-create-processor]")
	MSB.ORDER_CLEANER("pollution-clean-processor-2", "mbs-modules-tier2", "a-06[pollution-clean-processor]")
	
	MSB.ORDER_CLEANER("module-processor-board-3", "mbs-modules-tier3", "a-01[module-processor-board]")
	MSB.ORDER_CLEANER("speed-processor-3", "mbs-modules-tier3", "a-02[speed-processor]")
	MSB.ORDER_CLEANER("effectivity-processor-3", "mbs-modules-tier3", "a-03[effectivity-processor]")
	MSB.ORDER_CLEANER("productivity-processor-3", "mbs-modules-tier3", "a-04[productivity-processor]")
	MSB.ORDER_CLEANER("pollution-create-processor-3", "mbs-modules-tier3", "a-05[pollution-create-processor]")
	MSB.ORDER_CLEANER("pollution-clean-processor-3", "mbs-modules-tier3", "a-06[pollution-clean-processor]")
end

-- other
if data.raw["item-group"]["petrochem-refining"] then
	MSB.ORDER_CLEANER("diesel-fuel", "petrochem-carbon-oil-feed", "h")
	MSB.ORDER_CLEANER("coal-liquefaction", "petrochem-coal", "i[coal-liquefaction]")
end

if data.raw["item-group"]["bob-resource-products"] then
	data.raw["item-group"]["bob-resource-products"].order = "b-or"
	data.raw["item-group"]["bob-resource-products"].inventory_order = "a-a"
end
if data.raw["item-group"]["bob-fluid-products"] then
	data.raw["item-group"]["bob-fluid-products"].order = "b-of"
	data.raw["item-group"]["bob-fluid-products"].inventory_order = "a-b"
end
if data.raw["item-group"]["bob-gems"] then
	data.raw["item-group"]["bob-gems"].order = "d-2"
	data.raw["item-group"]["bob-gems"].inventory_order = "g"
end
if data.raw["item-group"]["void"] then
	data.raw["item-group"]["void"].order = "d-3"
	data.raw["item-group"]["void"].inventory_order = "h"
end

-- bioinderstries
if settings.startup["moreshinybobs-order-bioinderstries"] and settings.startup["moreshinybobs-order-bioinderstries"].value == true then
	require("bioinderstries")
end