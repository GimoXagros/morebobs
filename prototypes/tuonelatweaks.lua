--sorter
if data.raw["technology"]["belt-sorter1"] then
	data.raw["technology"]["belt-sorter1"].prerequisites = {"electronics", "logistics"}
	data.raw["technology"]["belt-sorter2"].prerequisites = {"belt-sorter1", "advanced-electronics", "logistics-2"}
	data.raw["technology"]["belt-sorter3"].prerequisites = {"belt-sorter2", "advanced-electronics-2", "logistics-3"}
end

--Warehouse
if mods["Warehousing"] and BI then
	if mods["boblogistics"] then
		table.remove(data.raw["technology"]["warehouse-research"].effects,1)
		table.remove(data.raw["technology"]["warehouse-logistics-research"].effects,1)
		table.remove(data.raw["technology"]["warehouse-logistics-research"].effects,1)
		table.remove(data.raw["technology"]["warehouse-logistics-research"].effects,1)
		table.remove(data.raw["technology"]["warehouse-logistics-research"].effects,1)
		table.remove(data.raw["technology"]["warehouse-logistics-research"].effects,1)
		if mods["bobplates"] then
			data.raw["recipe"]["warehouse-basic"].ingredients = 
			{
				{"titanium-plate",20},
				{"steel-plate",40},
				{"stone-brick",10},
				{"bi-large-wooden-chest",5},
			}
			data.raw["recipe"]["warehouse-passive-provider"].ingredients = 
			{
				{"warehouse-basic",1},
				{"logistic-chest-passive-provider-3",1},
				{"steel-plate",5},
				{"processing-unit", 2},
			}
			data.raw["recipe"]["warehouse-storage"].ingredients = 
			{
				{"warehouse-basic",1},
				{"logistic-chest-storage-3",1},
				{"steel-plate",5},
				{"processing-unit", 2},
				{"titanium-chest",5},
			}
			data.raw["recipe"]["warehouse-active-provider"].ingredients = 
			{
				{"warehouse-basic",1},
				{"logistic-chest-active-provider-3",1},
				{"steel-plate",5},
				{"processing-unit", 2},
			}	
			data.raw["recipe"]["warehouse-requester"].ingredients = 
			{
				{"warehouse-basic",1},
				{"logistic-chest-requester-3",1},
				{"steel-plate",5},
				{"processing-unit", 2},
			}	
			data.raw["recipe"]["warehouse-buffer"].ingredients = 
			{
				{"warehouse-basic",1},
				{"logistic-chest-buffer-3",1},
				{"steel-plate",5},
				{"processing-unit", 2},
			}
		else
			data.raw["recipe"]["warehouse-basic"].ingredients = 
			{
				{"steel-plate",20},
				{"iron-plate",40},
				{"stone-brick",10},
				{"bi-large-wooden-chest",5},
			}
			data.raw["recipe"]["warehouse-passive-provider"].ingredients = 
			{
				{"warehouse-basic",1},
				{"logistic-chest-passive-provider-3",1},
				{"steel-plate",5},
				{"processing-unit", 2},
			}
			data.raw["recipe"]["warehouse-storage"].ingredients = 
			{
				{"warehouse-basic",1},
				{"logistic-chest-storage-3",1},
				{"steel-plate",5},
				{"processing-unit", 2},
				{"iron-chest",5},
			}
			data.raw["recipe"]["warehouse-active-provider"].ingredients = 
			{
				{"warehouse-basic",1},
				{"logistic-chest-active-provider-3",1},
				{"steel-plate",5},
				{"processing-unit", 2},
			}	
			data.raw["recipe"]["warehouse-requester"].ingredients = 
			{
				{"warehouse-basic",1},
				{"logistic-chest-requester-3",1},
				{"steel-plate",5},
				{"processing-unit", 2},
			}	
			data.raw["recipe"]["warehouse-buffer"].ingredients = 
			{
				{"warehouse-basic",1},
				{"logistic-chest-buffer-3",1},
				{"steel-plate",5},
				{"processing-unit", 2},
			}
		end
	end
end

--walls
if data.raw["technology"]["concrete-walls"] then
	data.raw["wall"]["concrete-wall"].max_health = 500
end

if data.raw["technology"]["reinforced-wall"] then
	if data.raw["technology"]["concrete-walls"] then
		data.raw["technology"]["reinforced-wall"].prerequisites = {"concrete-walls", "gates"}
		data.raw["recipe"]["reinforced-wall"].ingredients =
		{
		  {"concrete-wall", 1},
		  {"stone-brick", 3},
		  {"steel-plate", 3}
		}
		data.raw["wall"]["reinforced-wall"].attack_reaction =
		{
			{
				---- how far the mirroring works
				range = 2,
				---- what kind of damage triggers the mirroring
				---- if not present then anything triggers the mirroring
				damage_type = "physical",
				---- caused damage will be multiplied by this and added to the subsequent damages
				reaction_modifier = 0.1,
				action =
				{
					type = "direct",
					action_delivery =
					{
						type = "instant",
						target_effects =
						{
							type = "damage",
							---- always use at least 0.1 damage
							damage = {amount = 0.1, type = "physical"}
						}
					}
				},
			}
		}
	end
end

if data.raw["technology"]["iron-walls"] then
	data.raw["wall"]["iron-wall"].max_health = 1000
	data.raw["gate"]["iron-gate"].max_health = 1000
	if data.raw["technology"]["reinforced-wall"] then
		data.raw["technology"]["iron-walls"].prerequisites = {"reinforced-wall"}
		data.raw["recipe"]["iron-gates"].ingredients =
		{
		  {"iron-wall", 1},
		  {"reinforced-gate", 1},
		}
	end
	if data.raw["technology"]["concrete-walls"] then
		data.raw["technology"]["iron-walls"].prerequisites = {"concrete-walls"}
	end
end

if data.raw["technology"]["steel-walls"] then
	if mods["bobwarfare"] and settings.startup["enable-tanks_for_bob"].value == true then
		data.raw["technology"]["steel-walls"].prerequisites = {"iron-walls", "reinforced-wall"}
		if data.raw["recipe"]["steel-wall"].normal then data.raw["recipe"]["steel-wall"].normal.ingredients =
			{
			  {"iron-wall", 1},
			  {"reinforced-wall", 1},
			  {"steel-plate", 2}
			}
		end
		if data.raw["recipe"]["steel-wall"].expensive then data.raw["recipe"]["steel-wall"].expensive.ingredients =
			{
			  {"iron-wall", 1},
			  {"reinforced-wall", 1},
			  {"steel-plate", 5}
			}
		end
		if data.raw["recipe"]["steel-wall"].ingredients then data.raw["recipe"]["steel-wall"].ingredients =
			{
			  {"iron-wall", 1},
			  {"reinforced-wall", 1},
			  {"steel-plate", 2}
			}
		end
		if data.raw["wall"]["steel-wall"] then data.raw["wall"]["steel-wall"].attack_reaction =
			{
			  {
					---- how far the mirroring works
					range = 2,
					---- what kind of damage triggers the mirroring
					---- if not present then anything triggers the mirroring
					damage_type = "physical",
					---- caused damage will be multiplied by this and added to the subsequent damages
					reaction_modifier = 0.1,
					action =
					{
						type = "direct",
						action_delivery =
						{
							type = "instant",
							target_effects =
							{
								type = "damage",
								---- always use at least 0.1 damage
								damage = {amount = 0.1, type = "physical"}
							}
						}
					},
			  }
			}
		end
	end
end

--Flare Stack
if data.raw["furnace"]["flare-stack"] then
	if data.raw["recipe"]["vent-stack"] then data.raw["recipe"]["vent-stack"].enabled = false end
	if data.raw["recipe"]["incinerator"] then data.raw["recipe"]["incinerator"].enabled = false end
	if data.raw["recipe"]["electric-incinerator"] then data.raw["recipe"]["electric-incinerator"].enabled = false end
	if data.raw["recipe"]["vent-stack"] then table.insert(data.raw["technology"]["automation"].effects,{type="unlock-recipe",recipe="vent-stack"}) end
	if data.raw["recipe"]["incinerator"] then table.insert(data.raw["technology"]["advanced-material-processing"].effects,{type="unlock-recipe",recipe="incinerator"}) end
	if data.raw["recipe"]["electric-incinerator"] then table.insert(data.raw["technology"]["advanced-material-processing-2"].effects,{type="unlock-recipe",recipe="electric-incinerator"}) end
end

--Power
if data.raw["recipe"]["burner-generator"] then
	if data.raw["technology"]["steam-power"] then
		data.raw["recipe"]["burner-generator"].enabled = false
		table.insert(data.raw["technology"]["steam-power"].effects,{type="unlock-recipe",recipe="burner-generator"})
		data.raw["recipe"]["wind-turbine-2"].enabled = false
		table.insert(data.raw["technology"]["electricity"].effects,{type="unlock-recipe",recipe="wind-turbine-2"})
	end
	if data.raw["technology"]["OilBurning"] then
		-- data.raw["boiler"]["burner-generator"].energy_source.emissions = 1 * 0.88
		data.raw["boiler"]["burner-generator"].minable = {mining_time = 1, result = "burner-generator"}
		-- data.raw["assembling-machine"]["OilSteamBoiler"].energy_source.emissions = (10 / 2) * 1.88
	end
	if data.raw["technology"]["geothermal"] then
		if data.raw["technology"]["steam-power"] then
			table.insert(data.raw["technology"]["geothermal"].prerequisites,"steam-power")
		end
		if data.raw["technology"]["fluid-handling-2"] then
			table.insert(data.raw["technology"]["geothermal-2"].prerequisites,"fluid-handling-2")
		elseif data.raw["technology"]["bob-fluid-handling-2"] then
			table.insert(data.raw["technology"]["geothermal-2"].prerequisites,"bob-fluid-handling-2")
		end
	end
end

--waterboom
if data.raw["recipe"]["water-bomb"] then
	if data.raw["technology"]["distractor-mine"] then
		data.raw["recipe"]["water-bomb"].enabled = false
		table.insert(data.raw["technology"]["distractor-mine"].effects,{type="unlock-recipe",recipe="water-bomb"})
	else
		data.raw["recipe"]["water-bomb"].enabled = false
		table.insert(data.raw["technology"]["land-mine"].effects,{type="unlock-recipe",recipe="water-bomb"})
	end
end

--vehicle tweaks
if data.raw["technology"]["basic-vehicles"] then
	if data.raw["technology"]["fuel-processing"] then
		data.raw["technology"]["fuel-processing"].prerequisites = {"electricity", "basic-vehicles"}
	end
	if data.raw["car"]["dumper-truck"] then
		data.raw["car"]["vehicle-hauler"].max_health = 250
		data.raw["car"]["dumper-truck"].max_health = 850
	end
	if data.raw["car"]["Hauling-Truck"] then
		data.raw["recipe"]["Hauling-Truck"].enabled = false
		data.raw["technology"]["automobilism"].prerequisites = {"logistics-2", "engine", "basic-vehicles"}
		data.raw["car"]["Hauling-Truck"].max_health = 500
		if data.raw["car"]["vehicle-flame-tumbler"] then
			table.insert(data.raw["technology"]["automobilism"].effects, {type = "unlock-recipe", recipe = "vehicle-flame-tumbler"})
		end
	end
	if mods["aai-industry"] then
		if data.raw["technology"]["raven"] then
			data.raw["technology"]["raven"].prerequisites = {"radar", "flying", "automobilism"}
		end
	end
end

if data.raw["technology"]["vehicle-solar-panel-equipment-1"] then
	data.raw["technology"]["vehicle-fusion-reactor-equipment-1"].prerequisites = {"vehicle-solar-panel-equipment-1", "nuclear-power"}
	data.raw["technology"]["vehicle-fusion-cell-equipment-1"].prerequisites = {"vehicle-solar-panel-equipment-1", "nuclear-power"}
end

if data.raw["recipe"]["flamejet-ammo"] then
	table.remove(data.raw["technology"]["flamethrower"].effects,4)
	if mods["aai-vehicles-flame-tank"] then
		table.remove(data.raw["technology"]["flamethrower"].effects,4)
		table.remove(data.raw["technology"]["flamethrower"].effects,4)
	end
end

--pollution filter(ExF)
if data.raw["recipe"]["pollution-filter"] then
	if data.raw["recipe"]["pollution-filter"] then data.raw["recipe"]["pollution-filter"].enabled = false end
	if data.raw["recipe"]["pollution-filter"] then table.insert(data.raw["technology"]["plastics"].effects,{type="unlock-recipe",recipe="pollution-filter"}) end
end

--armors
if data.raw["technology"]["portable-engine-equipment"] then
	data.raw["technology"]["portable-engine-equipment"].prerequisites = { "solar-panel-equipment", "engine", "advanced-material-processing" }
	data.raw["technology"]["fusion-reactor-equipment"].prerequisites = { "nuclear-power", "portable-engine-equipment", "advanced-electronics-2" }
	data.raw["technology"]["night-vision-equipment"].prerequisites = { "solar-panel-equipment", "optics" }
	if data.raw["technology"]["helpful-equipment"] then
		data.raw["technology"]["helpful-equipment"].prerequisites = {"portable-engine-equipment", "toolbelt", "character-logistic-slots-1"}
	end
	if data.raw["technology"]["uep-pocket-equipment"] then
		data.raw["technology"]["uep-pocket-equipment"].prerequisites = {"portable-engine-equipment", "modular-armor", "toolbelt"}
	end
	if data.raw["technology"]["armor-pocket-equipment"] then
		data.raw["technology"]["armor-pocket-equipment"].prerequisites = { "portable-engine-equipment" }
	end
end

--tesla
if mods["Induction Charging"] then
	if mods["Robocharger"] then
		data.raw["technology"]["robocharger"].prerequisites = {"construction-robotics", "induction1"}
		data.raw["technology"]["robocharger"].icon = "__morebobs__/graphics/technology/robot-charge-port.png"
		data.raw["technology"]["robocharger"].icon_size = 128
	end
	-- if data.raw["recipe"]["teslacharger"] then data.raw["recipe"]["teslacharger"].enabled = "false" end
	-- if data.raw["recipe"]["teslacharger"] then table.insert(data.raw["technology"]["induction3"].effects,{type="unlock-recipe",recipe="teslacharger"}) end
	if data.raw["technology"]["induction3"] then
		data.raw["technology"]["induction3"].prerequisites = {"flying", "induction2"}
	end
	if data.raw["technology"]["induction4"] then
		if data.raw["technology"]["electric-vehicles-high-voltage-transformer"] then
			data.raw["technology"]["induction4"].prerequisites = {"electric-vehicles-high-voltage-transformer", "induction3"}
		end
	end
	if data.raw["technology"]["induction5"] then
		data.raw["technology"]["induction5"].prerequisites = {"rocket-silo", "induction4"}
	end
	if data.raw["technology"]["tesla-turret"] then
		if data.raw["technology"]["bob-laser-turrets-3"] then
			data.raw["technology"]["tesla-turret"].prerequisites = {"bob-laser-turrets-3", "advanced-electronics-2", "induction2"}
		else
			data.raw["technology"]["tesla-turret"].prerequisites = {"laser-turrets", "advanced-electronics-2", "induction2"}
		end
	end
end

--Robot Mining Site
if data.raw["technology"]["mining-robot-speed-1x"] then data.raw["technology"]["mining-robot-speed-1x"].icon_size = 128 end
if data.raw["technology"]["mining-robot-speed-2x"] then data.raw["technology"]["mining-robot-speed-2x"].icon_size = 128 end
if data.raw["technology"]["mining-robot-speed-3x"] then data.raw["technology"]["mining-robot-speed-3x"].icon_size = 128 end
if data.raw["technology"]["mining-robotics"] then data.raw["technology"]["mining-robotics"].icon_size = 64 end
if data.raw["technology"]["mining-robotics"] then data.raw["technology"]["mining-robotics"].icon = "__morebobs__/graphics/tweaks/mining-robotics.png" end
if data.raw["technology"]["mining-robotics-large"] then data.raw["technology"]["mining-robotics-large"].icon_size = 64 end
if data.raw["technology"]["mining-robotics-large"] then data.raw["technology"]["mining-robotics-large"].icon = "__morebobs__/graphics/tweaks/mining-robotics.png" end
if data.raw["technology"]["uranium-rubble-processing"] then data.raw["technology"]["uranium-rubble-processing"].icon_size = 64 end
if data.raw["technology"]["uranium-rubble-processing"] then data.raw["technology"]["uranium-rubble-processing"].icon = "__morebobs__/graphics/tweaks/uranium-rubble-processing.png" end
if data.raw["item"]["mining-robot"] then data.raw["item"]["mining-robot"].icon = "__morebobs__/graphics/tweaks/mining-robot.png" end
if data.raw["item"]["robotMiningSite"] then data.raw["item"]["robotMiningSite"].icon = "__morebobs__/graphics/tweaks/robotMiningSite.png" end
if data.raw["item"]["robotMiningSite-large"] then data.raw["item"]["robotMiningSite-large"].icon = "__morebobs__/graphics/tweaks/robotMiningSite-large.png" end
if data.raw["item"]["robotMiningSite-extra"] then data.raw["item"]["robotMiningSite-extra"].icon = "__morebobs__/graphics/tweaks/robotMiningSite-extra.png" end
if data.raw["recipe"]["uranium-rubble-cleaning"] then
	data.raw["recipe"]["uranium-rubble-cleaning"].icon = "__base__/graphics/icons/uranium-ore.png"
	data.raw["recipe"]["uranium-rubble-cleaning"].icon_size = 32
	data.raw["recipe"]["uranium-rubble-cleaning"].main_product= ""
	data.raw["recipe"]["uranium-rubble-cleaning"].subgroup = "raw-resource"
	data.raw["recipe"]["uranium-rubble-cleaning"].order = "g[uranium-ore]"
end

--AAI tweak
if data.raw["technology"]["bob-logistics-0"] then
	if data.raw["technology"]["basic-logistics"] then
		data.raw["technology"]["logistics"].prerequisites = {"bob-logistics-0"}
		data.raw["technology"]["basic-logistics"].enabled = false
	end
end

if mods["aai-industry"] then
	if data.raw["recipe"]["basic-transport-belt"] then
		data.raw["recipe"]["basic-transport-belt"].ingredients = { {"iron-gear-wheel", 1}, {"motor", 1} }
		data.raw["recipe"]["transport-belt"].normal.ingredients = { {"iron-plate", 2}, {"motor", 2} }
		data.raw["recipe"]["transport-belt"].expensive.ingredients = { {"iron-plate", 4}, {"motor", 2} }
		if settings.startup["bobmods-logistics-beltrequireprevious"].value == true then
			bobmods.lib.recipe.add_ingredient("transport-belt", {"basic-transport-belt", 1})
		end
		if data.raw.item["tin-plate"] then
			bobmods.lib.recipe.replace_ingredient("transport-belt", "iron-plate", "tin-plate")
		end
	end
end

if mods["RubberBelts"] then
	if data.raw["recipe"]["basic-transport-belt"] then
		if mods["aai-industry"] then
			if Config.replaceIronRecipe then
				bobmods.lib.recipe.replace_ingredient("basic-transport-belt", "motor", "rubber")
			else
				if data.raw.technology["bob-logistics-0"] then
					table.insert(data.raw.technology["bob-logistics-0"].effects, {type = "unlock-recipe", recipe = "rubber-transport-belt"})
					data.raw["recipe"]["rubber-transport-belt"].ingredients = { {"rubber", 1}, {"wooden-gear", 1} }
					data.raw["recipe"]["rubber-transport-belt"].result = "basic-transport-belt"
				end
			end
		else
			if settings.startup["bobmods-logistics-beltrequireprevious"].value == true then
				bobmods.lib.recipe.add_ingredient("transport-belt", {"basic-transport-belt", 1})
			end
		end
		if Config.enableCrappyBelts then
			data.raw["recipe"]["wooden-belt"].enabled = false
			bobmods.lib.recipe.replace_ingredient("basic-transport-belt", "iron-gear-wheel", "wooden-gear")
			bobmods.lib.recipe.replace_ingredient("basic-splitter", "iron-gear-wheel", "wooden-gear")
		end
	end
else
	if settings.startup["tuonelatweaks-rubberbelt"].value == true then
		if data.raw["recipe"]["basic-transport-belt"] then
			data:extend({
				{
					type = "item",
					name = "wooden-gear",
					icon = "__morebobs__/graphics/icons/wood-gear-wheel.png",
					icon_size = 32,
					flags = {"goes-to-main-inventory"},
					subgroup = "intermediate-product",
					order = "c[awood-gear-wheel]",
					stack_size = 100
				},
				{
					type = "recipe",
					name = "wood-gear",
					normal =
					{
						ingredients = {{"wood", 2}},
						result = "wooden-gear",
					},
					expensive =
					{
						ingredients = {{"wood", 4}},
						result = "wooden-gear",
					},
				},
			})
			if mods["aai-industry"] then
				bobmods.lib.recipe.replace_ingredient("basic-transport-belt", "motor", "rubber")
			else
				if settings.startup["bobmods-logistics-beltrequireprevious"].value == true then
					bobmods.lib.recipe.add_ingredient("transport-belt", {"basic-transport-belt", 1})
				end
			end
			bobmods.lib.recipe.replace_ingredient("basic-transport-belt", "iron-plate", "rubber")
			bobmods.lib.recipe.replace_ingredient("basic-transport-belt", "iron-gear-wheel", "wooden-gear")
			bobmods.lib.recipe.replace_ingredient("basic-splitter", "iron-gear-wheel", "wooden-gear")
		end
	end
end

if mods["kry-inserters"] then
	if data.raw.technology["filter-inserters"] then
		if data.raw.item["burner-filter"] then
			table.insert(data.raw.technology["filter-inserters"].prerequisites, "burner-filter")
		end
	else
		if data.raw.item["burner-filter"] then
			table.insert(data.raw.technology["electronics"].prerequisites, "burner-filter")
		end
		if data.raw.technology["long-inserters-1"] then
			data.raw.technology["long-inserters-1"].prerequisites = { }
			if not data.raw.technology["logistics"].prerequisites then
				data.raw.technology["logistics"].prerequisites = { }
			end
			table.insert(data.raw.technology["logistics"].prerequisites, "long-inserters-1")
		end
	end
	if data.raw.technology["electricity"] then
		if data.raw.technology["long-inserters-1"] then
			table.insert(data.raw.technology["long-inserters-1"].prerequisites, "electricity")
			table.insert(data.raw.technology["automation-2"].prerequisites, "long-inserters-1")
			if data.raw.technology["express-inserters"] then
				if data.raw.technology["filter-inserters"] then
					table.insert(data.raw.technology["express-inserters"].prerequisites, "filter-inserters")
					table.insert(data.raw.technology["stack-inserter"].prerequisites, "filter-inserters")
				end
			end
		else
			if data.raw.technology["filter-inserters"] then
				table.insert(data.raw.technology["stack-inserter"].prerequisites, "filter-inserters")
			end
		end
	end
end