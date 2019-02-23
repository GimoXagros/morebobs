-- Belt sorter
if data.raw["technology"]["belt-sorter1"] then
	data.raw["technology"]["belt-sorter1"].prerequisites = {"electronics", "logistics"}
	data.raw["technology"]["belt-sorter2"].prerequisites = {"belt-sorter1", "advanced-electronics", "logistics-2"}
	data.raw["technology"]["belt-sorter3"].prerequisites = {"belt-sorter2", "advanced-electronics-2", "logistics-3"}
end

-- Warehouse
if mods["Warehousing"] then
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
				{"wooden-chest",10},
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
				{"wooden-chest",10},
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

-- walls
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
	end
end

if data.raw["technology"]["steel-walls"] then
	if mods["bobwarfare"] then
		data.raw["technology"]["steel-walls"].prerequisites = {"reinforced-wall"}
		if data.raw["recipe"]["steel-wall"].normal then data.raw["recipe"]["steel-wall"].normal.ingredients =
			{
			  {"reinforced-wall", 1},
			  {"steel-plate", 2}
			}
		end
		if data.raw["recipe"]["steel-wall"].expensive then data.raw["recipe"]["steel-wall"].expensive.ingredients =
			{
			  {"reinforced-wall", 1},
			  {"steel-plate", 5}
			}
		end
		if data.raw["recipe"]["steel-wall"].ingredients then data.raw["recipe"]["steel-wall"].ingredients =
			{
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

-- Flare Stack
if data.raw["furnace"]["flare-stack"] then
	if data.raw["recipe"]["vent-stack"] then data.raw["recipe"]["vent-stack"].enabled = false end
	if data.raw["recipe"]["incinerator"] then data.raw["recipe"]["incinerator"].enabled = false end
	if data.raw["recipe"]["electric-incinerator"] then data.raw["recipe"]["electric-incinerator"].enabled = false end
	if data.raw["recipe"]["vent-stack"] then table.insert(data.raw["technology"]["automation"].effects,{type="unlock-recipe",recipe="vent-stack"}) end
	if data.raw["recipe"]["incinerator"] then table.insert(data.raw["technology"]["advanced-material-processing"].effects,{type="unlock-recipe",recipe="incinerator"}) end
	if data.raw["recipe"]["electric-incinerator"] then table.insert(data.raw["technology"]["advanced-material-processing-2"].effects,{type="unlock-recipe",recipe="electric-incinerator"}) end
end

-- Power
if data.raw["recipe"]["burner-generator"] then
	if data.raw["technology"]["steam-power"] then
		data.raw["recipe"]["burner-generator"].enabled = false
		table.insert(data.raw["technology"]["steam-power"].effects,{type="unlock-recipe",recipe="burner-generator"})
		data.raw["recipe"]["wind-turbine-2"].enabled = false
		table.insert(data.raw["technology"]["electricity"].effects,{type="unlock-recipe",recipe="wind-turbine-2"})
	end
	-- if data.raw["technology"]["OilBurning"] then
		-- data.raw["boiler"]["burner-generator"].energy_source.emissions = 1 * 0.88
		-- data.raw["assembling-machine"]["OilSteamBoiler"].energy_source.emissions = (10 / 2) * 1.88
	-- end
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

-- Vehicle tweaks
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
		data.raw["car"]["Hauling-Truck"].max_health = 500
		table.insert(data.raw["technology"]["automobilism"].effects, {type = "unlock-recipe", recipe = "Hauling-Truck"})
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

-- Pollution filter(ExF)
if data.raw["recipe"]["pollution-filter"] then
	if data.raw["recipe"]["pollution-filter"] then data.raw["recipe"]["pollution-filter"].enabled = false end
	if data.raw["recipe"]["pollution-filter"] then table.insert(data.raw["technology"]["plastics"].effects,{type="unlock-recipe",recipe="pollution-filter"}) end
end

-- Armors
if data.raw["technology"]["portable-engine-equipment"] then
	data.raw["technology"]["fusion-reactor-equipment"].prerequisites = {"solar-panel-equipment", "portable-engine-equipment", "nuclear-power"}
	data.raw["technology"]["night-vision-equipment"].prerequisites = {"modular-armor", "optics"}
	if data.raw["technology"]["armor-pocket-equipment"] then
		data.raw["technology"]["armor-pocket-equipment"].prerequisites = {"modular-armor", "toolbelt"}
	end
end

-- AAI tweak
if data.raw.technology["bob-logistics-0"] and data.raw.recipe["basic-transport-belt"] then
	data.raw["technology"]["bob-logistics-0"].upgrade = true
end

if settings.startup["tweaks-basic-rubberbelt"] and settings.startup["tweaks-basic-rubberbelt"].value == true then
	if data.raw["recipe"]["basic-transport-belt"] and data.raw.item["rubber"] then
		data:extend({
			{
				type = "item",
				name = "wooden-gear-wheel",
				icon = "__morebobs_tweaks__/graphics/icons/wooden-gear-wheel.png",
				icon_size = 32,
				flags = {"goes-to-main-inventory"},
				subgroup = "intermediate-product",
				order = "c[awooden-gear-wheel]",
				stack_size = 100
			},
			{
				type = "recipe",
				name = "wooden-gear-wheel",
				normal =
				{
					ingredients = {{"wood", 2}},
					result = "wooden-gear-wheel",
				},
				expensive =
				{
					ingredients = {{"wood", 4}},
					result = "wooden-gear-wheel",
				}
			}
		})
		bobmods.lib.recipe.replace_ingredient("basic-transport-belt", "iron-plate", "rubber")
		bobmods.lib.recipe.replace_ingredient("basic-transport-belt", "iron-gear-wheel", "wooden-gear-wheel")
		bobmods.lib.recipe.replace_ingredient("basic-splitter", "iron-gear-wheel", "wooden-gear-wheel")
	end
end

if mods["kry-inserters"] then
	if data.raw.technology["filter-inserters"] then
		if data.raw.item["burner-filter-inserter"] then
			table.insert(data.raw.technology["filter-inserters"].prerequisites, "burner-filter")
		end
	else
		if data.raw.item["burner-filter-inserter"] then
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

-- Alien Fuel
local small_artifact_list = 
{
	"small-alien-artifact",
	"small-alien-artifact-red",
	"small-alien-artifact-orange",
	"small-alien-artifact-yellow",
	"small-alien-artifact-green",
	"small-alien-artifact-blue",
	"small-alien-artifact-purple"
}

local artifact_list = 
{
	"alien-artifact",
	"alien-artifact-red",
	"alien-artifact-orange",
	"alien-artifact-yellow",
	"alien-artifact-green",
	"alien-artifact-blue",
	"alien-artifact-purple"
}

for index, name in pairs(artifact_list) do
	if data.raw.item[name] ~= nil then
		data.raw.item[name].fuel_category = "chemical"
		data.raw.item[name].fuel_value = "20MJ"
	end
end

for index, name in pairs(small_artifact_list) do
	if data.raw.item[name] ~= nil then
		data.raw.item[name].fuel_category = "chemical"
		data.raw.item[name].fuel_value = "1MJ"
	end
end

-- Bio Industries
if BI then
	if data.raw["recipe"]["unused-air-filter"] then
		if data.raw["furnace"]["air-filter-machine"] then data.raw["furnace"]["air-filter-machine"].energy_source.emissions = -0.12 end
		if data.raw["furnace"]["air-filter-machine-mk1"] then data.raw["furnace"]["air-filter-machine-mk1"].energy_source.emissions = -0.12 end
		if data.raw["furnace"]["air-filter-machine-mk2"] then data.raw["furnace"]["air-filter-machine-mk2"].energy_source.emissions = -0.3 end
		if data.raw["furnace"]["air-filter-machine-mk3"] then data.raw["furnace"]["air-filter-machine-mk3"].energy_source.emissions = -0.7 end
		if data.raw["item"]["bi-charcoal"] then
			if data.raw["recipe"]["unused-air-filter"] then data.raw["recipe"]["unused-air-filter"].ingredients = { {"bi-charcoal", 10}, {"plastic-bar", 4}, {"steel-plate", 2} } end
			if data.raw["recipe"]["air-filter-recycling"] then data.raw["recipe"]["air-filter-recycling"].ingredients = { {"used-air-filter", 1}, {"bi-charcoal", 5} } end
		end
		if data.raw["technology"]["bi-tech-coal-processing-1"] then data.raw["technology"]["air-filtering"].prerequisites = {"plastics", "bi-tech-coal-processing-1"} end
		if data.raw["technology"]["recycling"] then
			data.raw["technology"]["air-filter-recycling"].prerequisites = {"air-filtering", "recycling"}
		else
			if data.raw["technology"]["bi-tech-coal-processing-3"] then
				data.raw["technology"]["air-filter-recycling"].prerequisites = {"air-filtering", "bi-tech-coal-processing-3"}
			end
		end
	end
end