-- Robot Mining Site
if mods["robotMiningSite"] then
	if data.raw["item-group"]["generated"] then data.raw["item-group"]["generated"].icon_size = 64 end
	if data.raw["technology"]["mining-robotics"] then data.raw["technology"]["mining-robotics"].icon = "__morebobs_tweaks__/graphics/technology/mining-robotics.png" end
	if data.raw["technology"]["mining-robotics-2"] then data.raw["technology"]["mining-robotics-2"].icon = "__morebobs_tweaks__/graphics/technology/mining-robotics.png" end
	if data.raw["technology"]["mining-robotics-3"] then data.raw["technology"]["mining-robotics-3"].icon = "__morebobs_tweaks__/graphics/technology/mining-robotics.png" end
	if data.raw["technology"]["mining-robotics-4"] then data.raw["technology"]["mining-robotics-4"].icon = "__morebobs_tweaks__/graphics/technology/mining-robotics.png" end
	if data.raw["technology"]["mining-robotics-5"] then data.raw["technology"]["mining-robotics-5"].icon = "__morebobs_tweaks__/graphics/technology/mining-robotics.png" end
	if data.raw["technology"]["mining-robotics-large"] then data.raw["technology"]["mining-robotics-large"].icon = "__morebobs_tweaks__/graphics/technology/mining-robotics.png" end
	if data.raw["technology"]["upgradeMiningSite"] then data.raw["technology"]["upgradeMiningSite"].icon = "__morebobs_tweaks__/graphics/technology/mining-robotics.png" end
	if data.raw["technology"]["uranium-rubble-processing"] then data.raw["technology"]["uranium-rubble-processing"].icon = "__morebobs_tweaks__/graphics/technology/uranium-rubble-processing.png" end
	if data.raw["item"]["robotMiningSite"] then data.raw["item"]["robotMiningSite"].icon = "__morebobs_tweaks__/graphics/icons/mining-robot/robotMiningSite.png" end
	if data.raw["item"]["robotMiningSite-large"] then data.raw["item"]["robotMiningSite-large"].icon = "__morebobs_tweaks__/graphics/icons/mining-robot/robotMiningSite-large.png" end
	if data.raw["item"]["robotMiningSite-extra"] then data.raw["item"]["robotMiningSite-extra"].icon = "__morebobs_tweaks__/graphics/icons/mining-robot/robotMiningSite-extra.png" end
	if data.raw["recipe"]["uranium-rubble-cleaning"] then
		data.raw["recipe"]["uranium-rubble-cleaning"].icon = "__base__/graphics/icons/uranium-ore.png"
		data.raw["recipe"]["uranium-rubble-cleaning"].icon_size = 32
		data.raw["recipe"]["uranium-rubble-cleaning"].main_product= ""
		data.raw["recipe"]["uranium-rubble-cleaning"].subgroup = "raw-resource"
		data.raw["recipe"]["uranium-rubble-cleaning"].order = "g[uranium-ore]"
		if mods["RealisticOres"] then
			data.raw["recipe"]["uranium-rubble-cleaning"].icon = "__morebobs_tweaks__/graphics/icons/mining-robot/uranium-ore.png"
		end
	end
	if data.raw["item"]["mining-robot-5"] then
		if settings.startup["add-powerbars"] and settings.startup["add-powerbars"].value == true then
			data.raw["item"]["mining-robot"].icons = { { icon = "__morebobs_tweaks__/graphics/icons/mining-robot/mining-robot-1.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-1.png" } }
			for i=2,5 do
				data.raw["item"]["mining-robot-"..i].icons = { { icon = "__morebobs_tweaks__/graphics/icons/mining-robot/mining-robot-"..i..".png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-"..i..".png" } }
			end
		else
			data.raw["item"]["mining-robot"].icon = "__morebobs_tweaks__/graphics/icons/mining-robot/mining-robot-1.png"
			for i=2,5 do
				data.raw["item"]["mining-robot-"..i].icon = "__morebobs_tweaks__/graphics/icons/mining-robot/mining-robot-"..i..".png"
			end
		end
	else
		data.raw["item"]["mining-robot"].icon = "__morebobs_tweaks__/graphics/icons/mining-robot/mining-robot.png"
		data.raw["construction-robot"]["mining-robot"].idle.filename = "__morebobs_tweaks__/graphics/entity/mining-robot/mining-robot.png"
		data.raw["construction-robot"]["mining-robot"].idle.hr_version.filename = "__morebobs_tweaks__/graphics/entity/mining-robot/hr-mining-robot.png"
		data.raw["construction-robot"]["mining-robot"].in_motion.filename = "__morebobs_tweaks__/graphics/entity/mining-robot/mining-robot.png"
		data.raw["construction-robot"]["mining-robot"].in_motion.hr_version.filename = "__morebobs_tweaks__/graphics/entity/mining-robot/hr-mining-robot.png"
		data.raw["construction-robot"]["mining-robot"].working.filename = "__morebobs_tweaks__/graphics/entity/mining-robot/mining-robot-working.png"
		data.raw["construction-robot"]["mining-robot"].working.hr_version.filename = "__morebobs_tweaks__/graphics/entity/mining-robot/hr-mining-robot-working.png"
	end
end


-- Weapon Sounds Redone
if mods["bobwarfare"] then
	if mods["weaponSoundsRedone"] then
		if data.raw.gun["gatling-gun"].attack_parameters.sound then
			data.raw.gun["gatling-gun"].attack_parameters.sound = 
			{
				filename = "__morebobs_tweaks__/sounds/gatling-gun.ogg",
				volume = 0.6
			}
		end
		if data.raw.gun["rifle"].attack_parameters.sound then
			data.raw.gun["rifle"].attack_parameters.sound = 
			{
				filename = "__morebobs_tweaks__/sounds/rifle.ogg",
				volume = 0.6
			}
		end
		if data.raw.gun["sniper-rifle"].attack_parameters.sound then
			data.raw.gun["sniper-rifle"].attack_parameters.sound = 
			{
				filename = "__morebobs_tweaks__/sounds/sniper-rifle.ogg",
				volume = 0.7
			}
		end

		if settings.startup["wsr-replace-turret-sound"] and settings.startup["wsr-replace-turret-sound"].value then
			for i=2,5 do
				data.raw["ammo-turret"]["bob-gun-turret-"..i].attack_parameters.sound =
				{
					filename = "__weaponSoundsRedone__/sounds/turret_fire.ogg",
					volume = 0.5
				}
			end
		else
			for i=2,5 do
				data.raw["ammo-turret"]["bob-gun-turret-"..i].attack_parameters.sound =
				{
					{
						filename = "__base__/sound/fight/heavy-gunshot-1.ogg",
						volume = 0.45
					},
					{
						filename = "__base__/sound/fight/heavy-gunshot-2.ogg",
						volume = 0.45
					},
					{
						filename = "__base__/sound/fight/heavy-gunshot-3.ogg",
						volume = 0.45
					},
					{
						filename = "__base__/sound/fight/heavy-gunshot-4.ogg",
						volume = 0.45
					}
				}
			end
		end
	end

	if mods["EnhancedArtillerySounds"] then
		for i=2,3 do
			data.raw.item["bob-artillery-turret-"..i].sound =
			{
				filename = "__EnhancedArtillerySounds__/sounds/large-explosion-2.ogg",
				volume = 1
			}

			data.raw.gun["bob-artillery-wagon-cannon-"..i].attack_parameters.sound =
			{
				filename = "__EnhancedArtillerySounds__/sounds/large-explosion-2.ogg",
				volume = 1
			}
		end
	end
end

-- Vehicle grid
if mods["bobvehicleequipment"] then
	for i, entity in pairs(data.raw["car"]) do
		entity.equipment_grid = entity.equipment_grid or "bob-tank"
	end
	for i, entity in pairs(data.raw["locomotive"]) do
		entity.equipment_grid = entity.equipment_grid or "bob-locomotive-3"
	end
	for i, entity in pairs(data.raw["cargo-wagon"]) do
		entity.equipment_grid = entity.equipment_grid or "bob-cargo-wagon-3"
	end
	for i, entity in pairs(data.raw["fluid-wagon"]) do
		entity.equipment_grid = entity.equipment_grid or "bob-wagon-3"
	end
	for i, entity in pairs(data.raw["artillery-wagon"]) do
		entity.equipment_grid = entity.equipment_grid or "bob-armoured-wagon"
	end
end

-- AAI
if aai_industry == true then
	data.raw["technology"]["radar"].icon = "__morebobs_tweaks__/graphics/technology/radar-tech.png"
	data.raw["technology"]["radar"].icon_size = 128
	-- Lighted Poles Plus
	if data.raw["recipe"]["lighted-small-electric-pole"] then data.raw["recipe"]["lighted-small-electric-pole"].enabled = false end
	if data.raw["recipe"]["lighted-small-iron-electric-pole"] then table.insert(data.raw["technology"]["optics"].effects,{type="unlock-recipe",recipe="lighted-small-iron-electric-pole"}) end
	if data.raw["recipe"]["lighted-medium-electric-pole"] then table.insert(data.raw["technology"]["electric-energy-distribution-1"].effects,{type="unlock-recipe",recipe="lighted-medium-electric-pole"}) end
	if data.raw["recipe"]["lighted-big-electric-pole"] then table.insert(data.raw["technology"]["electric-energy-distribution-1"].effects,{type="unlock-recipe",recipe="lighted-big-electric-pole"}) end
	if data.raw["recipe"]["lighted-substation"] then table.insert(data.raw["technology"]["electric-energy-distribution-2"].effects,{type="unlock-recipe",recipe="lighted-substation"}) end
end
if data.raw["technology"]["concrete-walls"] then data.raw["technology"]["concrete-walls"].icon_size = 128 end
if data.raw["technology"]["concrete-walls"] then data.raw["technology"]["concrete-walls"].icon = "__morebobs_tweaks__/graphics/technology/concrete-walls.png" end
if data.raw["technology"]["steel-walls"] then data.raw["technology"]["steel-walls"].icon_size = 128 end
if data.raw["technology"]["steel-walls"] then data.raw["technology"]["steel-walls"].icon = "__morebobs_tweaks__/graphics/technology/steel-walls.png" end
if data.raw["item-with-entity-data"]["vehicle-miner"] then
	if settings.startup["add-powerbars"] and settings.startup["add-powerbars"].value == true then
		data.raw["item-with-entity-data"]["vehicle-miner"].icons = { { icon = "__aai-vehicles-miner__/graphics/icons/miner.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-1.png" } }
		for i=2,5 do
			data.raw["item-with-entity-data"]["vehicle-miner-mk"..i].icons = { { icon = "__aai-vehicles-miner__/graphics/icons/miner-mk"..i..".png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-"..i..".png" } }
		end
	end
end

-- Bobs
if data.raw["recipe"]["bob-basic-greenhouse-cycle"] then data.raw["recipe"]["bob-basic-greenhouse-cycle"].main_product= "" end
if data.raw["recipe"]["bob-advanced-greenhouse-cycle"] then data.raw["recipe"]["bob-advanced-greenhouse-cycle"].main_product= "" end
if data.raw["recipe"]["coal-cracking"] then data.raw["recipe"]["coal-cracking"].main_product= "" end
if data.raw["recipe"]["petroleum-gas-cracking"] then data.raw["recipe"]["petroleum-gas-cracking"].main_product= "" end
if data.raw["recipe"]["cobalt-oxide-from-copper"] then data.raw["recipe"]["cobalt-oxide-from-copper"].main_product= "" end
if data.raw["recipe"]["synthetic-wood"] then data.raw["recipe"]["synthetic-wood"].main_product= "" end

-- Bio Industries
if BI then
	if data.raw["recipe"]["bi_recipe_burner_inserter_disassemble"] then data.raw["recipe"]["bi_recipe_burner_inserter_disassemble"].main_product= "" end
	if data.raw["recipe"]["bi_recipe_stone_furnace_disassemble"] then data.raw["recipe"]["bi_recipe_stone_furnace_disassemble"].main_product= "" end
	
	if data.raw["recipe"]["bi_recipe_seed_1"] then data.raw["recipe"]["bi_recipe_seed_1"].main_product= "" end
	if data.raw["recipe"]["bi_recipe_seed_2"] then data.raw["recipe"]["bi_recipe_seed_2"].main_product= "" end
	if data.raw["recipe"]["bi_recipe_seed_3"] then data.raw["recipe"]["bi_recipe_seed_3"].main_product= "" end
	if data.raw["recipe"]["bi_recipe_seed_4"] then data.raw["recipe"]["bi_recipe_seed_4"].main_product= "" end
	if data.raw["recipe"]["bi_recipe_seedling"] then data.raw["recipe"]["bi_recipe_seedling"].main_product= "" end
	if data.raw["recipe"]["bi_recipe_seedling_mk1"] then data.raw["recipe"]["bi_recipe_seedling_mk1"].main_product= "" end
	if data.raw["recipe"]["bi_recipe_seedling_mk2"] then data.raw["recipe"]["bi_recipe_seedling_mk2"].main_product= "" end
	if data.raw["recipe"]["bi_recipe_seedling_mk3"] then data.raw["recipe"]["bi_recipe_seedling_mk3"].main_product= "" end
	if data.raw["recipe"]["bi_recipe_seedling_mk4"] then data.raw["recipe"]["bi_recipe_seedling_mk4"].main_product= "" end
	if data.raw["recipe"]["bi_recipe_logs_mk1"] then data.raw["recipe"]["bi_recipe_logs_mk1"].main_product= "" end
	if data.raw["recipe"]["bi_recipe_logs_mk2"] then data.raw["recipe"]["bi_recipe_logs_mk2"].main_product= "" end
	if data.raw["recipe"]["bi_recipe_logs_mk3"] then data.raw["recipe"]["bi_recipe_logs_mk3"].main_product= "" end
	if data.raw["recipe"]["bi_recipe_logs_mk4"] then data.raw["recipe"]["bi_recipe_logs_mk4"].main_product= "" end
	
	if data.raw["recipe"]["bi_recipe_biomass_1"] then data.raw["recipe"]["bi_recipe_biomass_1"].main_product= "" end
	if data.raw["recipe"]["bi_recipe_biomass_2"] then data.raw["recipe"]["bi_recipe_biomass_2"].main_product= "" end
	if data.raw["recipe"]["bi_recipe_biomass_3"] then data.raw["recipe"]["bi_recipe_biomass_3"].main_product= "" end
	if data.raw["recipe"]["bi_recipe_biomass_conversion_1"] then data.raw["recipe"]["bi_recipe_biomass_conversion_1"].main_product= "" end
	if data.raw["recipe"]["bi_recipe_biomass_conversion_2"] then data.raw["recipe"]["bi_recipe_biomass_conversion_2"].main_product= "" end
	if data.raw["recipe"]["bi_recipe_biomass_conversion_3"] then data.raw["recipe"]["bi_recipe_biomass_conversion_3"].main_product= "" end
	if data.raw["recipe"]["bi_recipe_acid"] then data.raw["recipe"]["bi_recipe_acid"].main_product= "" end
	if data.raw["recipe"]["bi_recipe_plastic_1"] then data.raw["recipe"]["bi_recipe_plastic_1"].main_product= "" end
	if data.raw["recipe"]["bi_recipe_plastic_2"] then data.raw["recipe"]["bi_recipe_plastic_2"].main_product= "" end
	if data.raw["recipe"]["bi_recipe_sulfur"] then data.raw["recipe"]["bi_recipe_sulfur"].main_product= "" end
	if data.raw["recipe"]["bi_recipe_sulfur_angels"] then data.raw["recipe"]["bi_recipe_sulfur_angels"].main_product= "" end
	if data.raw["recipe"]["bi_recipe_battery"] then data.raw["recipe"]["bi_recipe_battery"].main_product= "" end

	if data.raw["recipe"]["bi_recipe_press_wood"] then data.raw["recipe"]["bi_recipe_press_wood"].main_product= "" end
	if data.raw["recipe"]["bi_recipe_coal"] then data.raw["recipe"]["bi_recipe_coal"].main_product= "" end
	if data.raw["recipe"]["bi_recipe_coal_2"] then data.raw["recipe"]["bi_recipe_coal_2"].main_product= "" end
	if data.raw["recipe"]["bi_recipe_clean_air_1"] then data.raw["recipe"]["bi_recipe_clean_air_1"].main_product= "" end
	if data.raw["recipe"]["bi_recipe_clean_air_2"] then data.raw["recipe"]["bi_recipe_clean_air_2"].main_product= "" end
	if data.raw["recipe"]["bi_recipe_coke_coal"] then data.raw["recipe"]["bi_recipe_coke_coal"].main_product= "" end
	if data.raw["recipe"]["bi_recipe_pellete_coal_2"] then data.raw["recipe"]["bi_recipe_pellete_coal_2"].main_product= "" end

	if data.raw["recipe"]["bi_recipe_drill_fix"] then data.raw["recipe"]["bi_recipe_drill_fix"].main_product= "" end
	
	if data.raw["recipe"]["bi_recipe_fresh_water"] then data.raw["recipe"]["bi_recipe_fresh_water"].main_product= "" end
	if data.raw["recipe"]["bi_recipe_fresh_water_2"] then data.raw["recipe"]["bi_recipe_fresh_water_2"].main_product= "" end

	if data.raw["recipe"]["bi_recipe_arboretum_r1"] then data.raw["recipe"]["bi_recipe_arboretum_r1"].main_product= "" end
	if data.raw["recipe"]["bi_recipe_arboretum_r2"] then data.raw["recipe"]["bi_recipe_arboretum_r2"].main_product= "" end
	if data.raw["recipe"]["bi_recipe_arboretum_r3"] then data.raw["recipe"]["bi_recipe_arboretum_r3"].main_product= "" end
	if data.raw["recipe"]["bi_recipe_arboretum_r4"] then data.raw["recipe"]["bi_recipe_arboretum_r4"].main_product= "" end
	if data.raw["recipe"]["bi_recipe_arboretum_r5"] then data.raw["recipe"]["bi_recipe_arboretum_r5"].main_product= "" end

	--Lighted Poles Plus (recipe fix)
	if data.raw["recipe"]["lighted-bi-big-wooden-pole"] then table.insert(data.raw["technology"]["logistics"].effects,{type="unlock-recipe",recipe="lighted-bi-big-wooden-pole"}) end
	if data.raw["recipe"]["lighted-bi-huge-wooden-pole"] then table.insert(data.raw["technology"]["electric-energy-distribution-2"].effects,{type="unlock-recipe",recipe="lighted-bi-huge-wooden-pole"}) end
end

-- locales fix(Angels)
if mods["angelsrefining"] then
	data.raw["recipe"]["angelsore7-crystallization-1"].localised_name = {"recipe-name.angelsore7-crystallization-1", {"item-name.sapphire-ore"}}
	data.raw["recipe"]["angelsore7-crystallization-2"].localised_name = {"recipe-name.angelsore7-crystallization-2", {"item-name.topaz-ore"}}
	data.raw["recipe"]["angelsore7-crystallization-3"].localised_name = {"recipe-name.angelsore7-crystallization-3", {"item-name.ruby-ore"}}
	data.raw["recipe"]["angelsore7-crystallization-4"].localised_name = {"recipe-name.angelsore7-crystallization-4", {"item-name.emerald-ore"}}
	data.raw["recipe"]["angelsore7-crystallization-5"].localised_name = {"recipe-name.angelsore7-crystallization-5", {"item-name.amethyst-ore"}}
	data.raw["recipe"]["angelsore7-crystallization-6"].localised_name = {"recipe-name.angelsore7-crystallization-6", {"item-name.diamond-ore"}}
end

-- Bot Servicing order fix
if mods["Bot_Servicing"] then
	data.raw["recipe"]["broken-logistic-robot"].order = "b[broken-logistic-robot-1]"
	data.raw["recipe"]["broken-construction-robot"].order = "b[broken-construction-robot-1]"
	if data.raw["recipe"]["broken-mining-robot"] then data.raw["recipe"]["broken-mining-robot"].order = "b[broken-mining-robot-1]" end
	if data.raw["recipe"]["broken-cargo-robot"] then data.raw["recipe"]["broken-cargo-robot"].order = "b[broken-cargo-robot-1]" end
	if data.raw["item-subgroup"]["shinycharger1"] then
		data.raw["recipe"]["broken-logistic-robot"].order = "a[broken-logistic-robot-1]"
		data.raw["recipe"]["broken-construction-robot"].order = "a[broken-construction-robot-1]"
	end
end