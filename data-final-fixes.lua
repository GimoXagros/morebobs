if settings.startup["enable-bobsflowcontrol"].value == true then
	if mods["Flow Control"] then
		if mods["boblogistics"] then
			if mods["bobplates"] then
				require('prototypes/bobsflowcontrol')
			else
				require('prototypes/bobsflowcontrolnp')
			end
		end
	end

	--AAI
	if aai_industry == true then
		if data.raw["recipe"]["pipe-elbow"] then data.raw["recipe"]["pipe-elbow"].enabled = false end
		if data.raw["recipe"]["pipe-junction"] then data.raw["recipe"]["pipe-junction"].enabled = false end
		if data.raw["recipe"]["pipe-straight"] then data.raw["recipe"]["pipe-straight"].enabled = false end
		if data.raw["recipe"]["pipe-copper-elbow"] then data.raw["recipe"]["pipe-copper-elbow"].enabled = false end
		if data.raw["recipe"]["pipe-copper-junction"] then data.raw["recipe"]["pipe-copper-junction"].enabled = false end
		if data.raw["recipe"]["pipe-copper-straight"] then data.raw["recipe"]["pipe-copper-straight"].enabled = false end
		if data.raw["recipe"]["pipe-stone-elbow"] then data.raw["recipe"]["pipe-stone-elbow"].enabled = false end
		if data.raw["recipe"]["pipe-stone-junction"] then data.raw["recipe"]["pipe-stone-junction"].enabled = false end
		if data.raw["recipe"]["pipe-stone-straight"] then data.raw["recipe"]["pipe-stone-straight"].enabled = false end
		if data.raw["recipe"]["pipe-elbow"] then table.insert(data.raw["technology"]["basic-fluid-handling"].effects,{type="unlock-recipe",recipe="pipe-elbow"}) end
		if data.raw["recipe"]["pipe-junction"] then table.insert(data.raw["technology"]["basic-fluid-handling"].effects,{type="unlock-recipe",recipe="pipe-junction"}) end
		if data.raw["recipe"]["pipe-straight"] then table.insert(data.raw["technology"]["basic-fluid-handling"].effects,{type="unlock-recipe",recipe="pipe-straight"}) end
		if data.raw["recipe"]["pipe-copper-elbow"] then table.insert(data.raw["technology"]["basic-fluid-handling"].effects,{type="unlock-recipe",recipe="pipe-copper-elbow"}) end
		if data.raw["recipe"]["pipe-copper-junction"] then table.insert(data.raw["technology"]["basic-fluid-handling"].effects,{type="unlock-recipe",recipe="pipe-copper-junction"}) end
		if data.raw["recipe"]["pipe-copper-straight"] then table.insert(data.raw["technology"]["basic-fluid-handling"].effects,{type="unlock-recipe",recipe="pipe-copper-straight"}) end
		if data.raw["recipe"]["pipe-stone-elbow"] then table.insert(data.raw["technology"]["basic-fluid-handling"].effects,{type="unlock-recipe",recipe="pipe-stone-elbow"}) end
		if data.raw["recipe"]["pipe-stone-junction"] then table.insert(data.raw["technology"]["basic-fluid-handling"].effects,{type="unlock-recipe",recipe="pipe-stone-junction"}) end
		if data.raw["recipe"]["pipe-stone-straight"] then table.insert(data.raw["technology"]["basic-fluid-handling"].effects,{type="unlock-recipe",recipe="pipe-stone-straight"}) end
		data.raw["technology"]["radar"].icon = "__morebobs__/graphics/technology/bigradar-1-tech.png"
		data.raw["technology"]["radar"].icon_size = 128
	end

	--Bio
	if BI then
		if mods["Flow Control"] then
			require('prototypes/woodpipes')
			data.raw["pipe"]["bi-wood-pipe"].fluid_box.pipe_covers = morebobscoverpictures("bi-wood")
			data.raw["pipe-to-ground"]["bi-pipe-to-ground-wood"].fluid_box.pipe_covers = morebobscoverpictures("bi-wood")
			if data.raw["recipe"]["pipe-bi-wood-elbow"] then data.raw["recipe"]["pipe-bi-wood-elbow"].enabled = true end
			if data.raw["recipe"]["pipe-bi-wood-junction"] then data.raw["recipe"]["pipe-bi-wood-junction"].enabled = true end
			if data.raw["recipe"]["pipe-bi-wood-straight"] then data.raw["recipe"]["pipe-bi-wood-straight"].enabled = true end

			if data.raw["item-group"]["bob-logistics"] then 
				data:extend({
					{
						type = "item-subgroup",
						name = "flow-control-4",
						group = "bob-logistics",
						order = "d-a-0"
					}
				})
			else
				data:extend({
					{
						type = "item-subgroup",
						name = "flow-control-4",
						group = "logistics",
						order = "d-a-0"
					}
				})
			end

			if bobmods then
				if bobmods.plates then
					data.raw["item"]["bi-wood-pipe"].subgroup = "flow-control-4"
					data.raw["item"]["bi-pipe-to-ground-wood"].subgroup = "flow-control-4"
					data.raw["item"]["pipe-bi-wood-elbow"].subgroup = "flow-control-4"
					data.raw["item"]["pipe-bi-wood-junction"].subgroup = "flow-control-4"
					data.raw["item"]["pipe-bi-wood-straight"].subgroup = "flow-control-4"
					data.raw["item"]["bi-wood-pipe"].order = "a[pipe]-a[pipe]"
					data.raw["item"]["bi-pipe-to-ground-wood"].order = "a[pipe]-b[pipe]"
					data.raw["item"]["pipe-bi-wood-straight"].order = "a[pipe]-c[pipe]"
					data.raw["item"]["pipe-bi-wood-junction"].order = "a[pipe]-d[pipe]"
					data.raw["item"]["pipe-bi-wood-elbow"].order = "a[pipe]-e[pipe]"
				else
					data.raw["item"]["bi-wood-pipe"].subgroup = "pipe"
					data.raw["item"]["bi-pipe-to-ground-wood"].subgroup = "pipe-to-ground"
					data.raw["item"]["bi-wood-pipe"].order = "a[pipe]-a[pipe]-1-0"
					data.raw["item"]["bi-pipe-to-ground-wood"].order = "a[pipe]-a[pipe]-1-0"
					data.raw["item"]["pipe-bi-wood-straight"].order = "a[pipe]-a[pipe]-1-0"
					data.raw["item"]["pipe-bi-wood-junction"].order = "a[pipe]-a[pipe]-1-0"
					data.raw["item"]["pipe-bi-wood-elbow"].order = "a[pipe]-a[pipe]-1-0"
				end
			end
		end
	end
end

if settings.startup["enable-uequipmenttesla"].value == true then
	require("prototypes.TeslaTurret.TeslaTurret_FF")
end

if settings.startup["enable-tuonelatweaks"].value == true then
	require('prototypes/tuonelatweaks')
	require('prototypes/tuonelaaddon')

	if settings.startup["tuonelatweaks-mint"].value == true then
		require('prototypes/tuonelamint')
	end

	if data.raw["recipe"]["bob-basic-greenhouse-cycle"] then data.raw["recipe"]["bob-basic-greenhouse-cycle"].main_product= "" end
	if data.raw["recipe"]["bob-advanced-greenhouse-cycle"] then data.raw["recipe"]["bob-advanced-greenhouse-cycle"].main_product= "" end
	if data.raw["recipe"]["coal-cracking"] then data.raw["recipe"]["coal-cracking"].main_product= "" end
	if data.raw["recipe"]["petroleum-gas-cracking"] then data.raw["recipe"]["petroleum-gas-cracking"].main_product= "" end
	if data.raw["recipe"]["cobalt-oxide-from-copper"] then data.raw["recipe"]["cobalt-oxide-from-copper"].main_product= "" end
	if data.raw["recipe"]["synthetic-wood"] then data.raw["recipe"]["synthetic-wood"].main_product= "" end

	--Lighted Poles Plus
	if aai_industry == true then
		if data.raw["recipe"]["lighted-small-electric-pole"] then data.raw["recipe"]["lighted-small-electric-pole"].enabled = false end
		if data.raw["recipe"]["lighted-small-iron-electric-pole"] then table.insert(data.raw["technology"]["optics"].effects,{type="unlock-recipe",recipe="lighted-small-iron-electric-pole"}) end
		if data.raw["recipe"]["lighted-medium-electric-pole"] then table.insert(data.raw["technology"]["electric-energy-distribution-1"].effects,{type="unlock-recipe",recipe="lighted-medium-electric-pole"}) end
		if data.raw["recipe"]["lighted-big-electric-pole"] then table.insert(data.raw["technology"]["electric-energy-distribution-1"].effects,{type="unlock-recipe",recipe="lighted-big-electric-pole"}) end
		if data.raw["recipe"]["lighted-substation"] then table.insert(data.raw["technology"]["electric-energy-distribution-2"].effects,{type="unlock-recipe",recipe="lighted-substation"}) end
	end
end

if settings.startup["enable-bioindustries"].value == true then
	if bobmods then
		if bobmods.greenhouse then
			if BI then
				data.raw["recipe"]["bob-seedling"].normal.energy_required = 5
				data.raw["recipe"]["bob-seedling"].expensive.energy_required = 5
				
				data.raw["technology"]["bi_tech_bio_farming"].prerequisites = {"optics", "bob-greenhouse"}
				data.raw["technology"]["bi_tech_fertiliser"].prerequisites = {"sulfur-processing", "bi_tech_bio_farming"}
				data.raw["technology"]["bob-fertiliser"].prerequisites = {"flammables", "bi_tech_fertiliser"}
			end
		end
	end

	if BI then
		if data.raw["item"]["bi-wooden-fence"] then data.raw["item"]["bi-wooden-fence"].icon = "__morebobs__/graphics/icons/wooden-fence.png" end
		if data.raw["pipe"]["bi-wood-pipe"] then data.raw["pipe"]["bi-wood-pipe"].fluid_box.pipe_covers = morebobscoverpictures("bi-wood") end
		if data.raw["pipe-to-ground"]["bi-pipe-to-ground-wood"] then
			data.raw["pipe-to-ground"]["bi-pipe-to-ground-wood"].fluid_box.pipe_covers = morebobscoverpictures("bi-wood")
		end
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

		--wood(Not used)
		-- if data.raw["recipe"]["bi_recipe_logs_mk1"] then
			-- if data.raw["recipe"]["bi_recipe_logs_mk1"] then data.raw["recipe"]["bi_recipe_logs_mk1"].energy_required = 300 end
			-- if data.raw["recipe"]["bi_recipe_logs_mk1"] then data.raw["recipe"]["bi_recipe_logs_mk1"].result_count = 60 end
			-- if data.raw["recipe"]["bi_recipe_logs_mk2"] then data.raw["recipe"]["bi_recipe_logs_mk2"].energy_required = 240 end
			-- if data.raw["recipe"]["bi_recipe_logs_mk2"] then data.raw["recipe"]["bi_recipe_logs_mk2"].result_count = 80 end
			-- if data.raw["recipe"]["bi_recipe_logs_mk3"] then data.raw["recipe"]["bi_recipe_logs_mk3"].energy_required = 210 end
			-- if data.raw["recipe"]["bi_recipe_logs_mk3"] then data.raw["recipe"]["bi_recipe_logs_mk3"].result_count = 105 end
			-- if data.raw["recipe"]["bi_recipe_logs_mk4"] then data.raw["recipe"]["bi_recipe_logs_mk4"].energy_required = 180 end
			-- if data.raw["recipe"]["bi_recipe_logs_mk4"] then data.raw["recipe"]["bi_recipe_logs_mk4"].result_count = 180 end
		-- end

		--recipe name fix (locale cfg name)
		if data.raw["recipe"]["bi_recipe_burner_inserter_disassemble"] then data.raw["recipe"]["bi_recipe_burner_inserter_disassemble"].main_product= "" end
		if data.raw["recipe"]["bi_recipe_stone_furnace_disassemble"] then data.raw["recipe"]["bi_recipe_stone_furnace_disassemble"].main_product= "" end
		
		if data.raw["recipe"]["bi_recipe_seed_1"] then data.raw["recipe"]["bi_recipe_seed_1"].main_product= "" end
		if data.raw["recipe"]["bi_recipe_seed_2"] then data.raw["recipe"]["bi_recipe_seed_2"].main_product= "" end
		if data.raw["recipe"]["bi_recipe_seed_3"] then data.raw["recipe"]["bi_recipe_seed_3"].main_product= "" end
		if data.raw["recipe"]["bi_recipe_seed_4"] then data.raw["recipe"]["bi_recipe_seed_4"].main_product= "" end
		if data.raw["recipe"]["bi_recipe_seedling_mk1"] then data.raw["recipe"]["bi_recipe_seedling_mk1"].main_product= "" end
		if data.raw["recipe"]["bi_recipe_seedling_mk2"] then data.raw["recipe"]["bi_recipe_seedling_mk2"].main_product= "" end
		if data.raw["recipe"]["bi_recipe_seedling_mk3"] then data.raw["recipe"]["bi_recipe_seedling_mk3"].main_product= "" end
		if data.raw["recipe"]["bi_recipe_seedling_mk4"] then data.raw["recipe"]["bi_recipe_seedling_mk4"].main_product= "" end
		
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

		if data.raw["recipe"]["bi_recipe_coal"] then data.raw["recipe"]["bi_recipe_coal"].main_product= "" end
		if data.raw["recipe"]["bi_recipe_coal_2"] then data.raw["recipe"]["bi_recipe_coal_2"].main_product= "" end
		if data.raw["recipe"]["bi_recipe_clean_air_1"] then data.raw["recipe"]["bi_recipe_clean_air_1"].main_product= "" end
		if data.raw["recipe"]["bi_recipe_clean_air_2"] then data.raw["recipe"]["bi_recipe_clean_air_2"].main_product= "" end
		if data.raw["recipe"]["bi_recipe_coke_coal"] then data.raw["recipe"]["bi_recipe_coke_coal"].main_product= "" end
		if data.raw["recipe"]["bi_recipe_pellete_coal_2"] then data.raw["recipe"]["bi_recipe_pellete_coal_2"].main_product= "" end

		if data.raw["recipe"]["bi_recipe_drill_fix"] then data.raw["recipe"]["bi_recipe_drill_fix"].main_product= "" end

		if data.raw["recipe"]["bi_recipe_arboretum_r1"] then data.raw["recipe"]["bi_recipe_arboretum_r1"].main_product= "" end
		if data.raw["recipe"]["bi_recipe_arboretum_r2"] then data.raw["recipe"]["bi_recipe_arboretum_r2"].main_product= "" end
		if data.raw["recipe"]["bi_recipe_arboretum_r3"] then data.raw["recipe"]["bi_recipe_arboretum_r3"].main_product= "" end
		if data.raw["recipe"]["bi_recipe_arboretum_r4"] then data.raw["recipe"]["bi_recipe_arboretum_r4"].main_product= "" end
		if data.raw["recipe"]["bi_recipe_arboretum_r5"] then data.raw["recipe"]["bi_recipe_arboretum_r5"].main_product= "" end
	end

	--Lighted Poles Plus (recipe fix)
	if data.raw["recipe"]["lighted-bi-big-wooden-pole"] then table.insert(data.raw["technology"]["logistics"].effects,{type="unlock-recipe",recipe="lighted-bi-big-wooden-pole"}) end
	if data.raw["recipe"]["lighted-bi-huge-wooden-pole"] then table.insert(data.raw["technology"]["electric-energy-distribution-2"].effects,{type="unlock-recipe",recipe="lighted-bi-huge-wooden-pole"}) end
end

--moreshinybobs
if settings.startup["enable-moreshinybobs"].value == true then
	require('prototypes/moreshinybobs/moreshinybobs')
end

--bobsDeadlockStacking
if settings.startup["enable-bobsDeadlockStackCrate"].value == true then
	require('prototypes/bobsDeadlockStackCrate/bobsDeadlockStackCrate')	
end