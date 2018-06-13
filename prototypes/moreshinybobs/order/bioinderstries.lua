if mods["Bio_Industries"] then
	--order
	data:extend(
	{
	  {
			type = "item-subgroup",
			name = "bio-coal-products",
			group = "bio-industries",
			order = "01-a",
	  },
	  {
			type = "item-subgroup",
			name = "bio-raw-material",
			group = "bio-industries",
			order = "02-a",
	  },
	  {
			type = "item-subgroup",
			name = "bio-intermediate-products-1",
			group = "bio-industries",
			order = "03-a",
	  },
	  {
			type = "item-subgroup",
			name = "bio-intermediate-products-2",
			group = "bio-industries",
			order = "03-b",
	  },
	  {
			type = "item-subgroup",
			name = "bio-seedling",
			group = "bio-industries",
			order = "04-a",
	  },
	  {
			type = "item-subgroup",
			name = "bio-raw-wood",
			group = "bio-industries",
			order = "05-a",
	  },
	  {
			type = "item-subgroup",
			name = "bio-terraforming",
			group = "bio-industries",
			order = "06-a",
	  },
	  {
			type = "item-subgroup",
			name = "bio-power",
			group = "bio-industries",
			order = "08-a",
	  },
	  {
			type = "item-subgroup",
			name = "bio-building",
			group = "bio-industries",
			order = "09-a",
	  },
	  {
			type = "item-subgroup",
			name = "bio-disassemble",
			group = "bio-industries",
			order = "10-a",
	  },
	})

	--bio-coal-products
	if data.raw["recipe"]["bi_recipe_woodpulp"] then
		data.raw["recipe"]["bi_recipe_woodpulp"].subgroup = "bio-coal-products"
		data.raw["recipe"]["bi_recipe_woodpulp"].order = "a[bio-coal-products]-a[bi-coal-raw]"
	end
	if data.raw["recipe"]["bi_recipe_ash_1"] then
		data.raw["recipe"]["bi_recipe_ash_1"].subgroup = "bio-coal-products"
		data.raw["recipe"]["bi_recipe_ash_1"].order = "b[bio-coal-products]-a[bi-ash]"
	end
	if data.raw["recipe"]["bi_recipe_ash_2"] then
		data.raw["recipe"]["bi_recipe_ash_2"].subgroup = "bio-coal-products"
		data.raw["recipe"]["bi_recipe_ash_2"].order = "b[bio-coal-products]-b[bi-ash]"
	end
	if data.raw["recipe"]["bi_recipe_charcoal"] then
		data.raw["recipe"]["bi_recipe_charcoal"].subgroup = "bio-coal-products"
		data.raw["recipe"]["bi_recipe_charcoal"].order = "c[bio-coal-products]-a[bi-charcoal]"
	end
	if data.raw["recipe"]["bi_recipe_charcoal_2"] then
		data.raw["recipe"]["bi_recipe_charcoal_2"].subgroup = "bio-coal-products"
		data.raw["recipe"]["bi_recipe_charcoal_2"].order = "c[bio-coal-products]-b[bi-charcoal]"
	end
	if data.raw["recipe"]["bi_recipe_coal"] then
		data.raw["recipe"]["bi_recipe_coal"].subgroup = "bio-coal-products"
		data.raw["recipe"]["bi_recipe_coal"].order = "d[bio-coal-products]-a[bi-coal]"
	end
	if data.raw["recipe"]["bi_recipe_coal_2"] then
		data.raw["recipe"]["bi_recipe_coal_2"].subgroup = "bio-coal-products"
		data.raw["recipe"]["bi_recipe_coal_2"].order = "d[bio-coal-products]-b[bi-coal]"
	end
	if data.raw["recipe"]["bi_recipe_coke_coal"] then
		data.raw["recipe"]["bi_recipe_coke_coal"].subgroup = "bio-coal-products"
		data.raw["recipe"]["bi_recipe_coke_coal"].order = "d[bio-coal-products]-c[bi-coal]"
	end
	if data.raw["recipe"]["bi_recipe_pellete_coal_2"] then
		data.raw["recipe"]["bi_recipe_pellete_coal_2"].subgroup = "bio-coal-products"
		data.raw["recipe"]["bi_recipe_pellete_coal_2"].order = "d[bio-coal-products]-d[bi-coal]"
	end
	if data.raw["recipe"]["bi_recipe_crushed_stone"] then
		data.raw["recipe"]["bi_recipe_crushed_stone"].subgroup = "bio-coal-products"
		data.raw["recipe"]["bi_recipe_crushed_stone"].order = "e[bio-coal-products]-a[bi-stone-raw]"
	end
	if data.raw["recipe"]["bi_recipe_stone_brick"] then
		data.raw["recipe"]["bi_recipe_stone_brick"].subgroup = "bio-coal-products"
		data.raw["recipe"]["bi_recipe_stone_brick"].order = "e[bio-coal-products]-b[bi-stone-brick]"
	end
	
	--bio-raw-material
	if data.raw["recipe"]["bi_recipe_biomass_1"] then
		data.raw["recipe"]["bi_recipe_biomass_1"].subgroup = "bio-raw-material"
		data.raw["recipe"]["bi_recipe_biomass_1"].order = "a[bio-raw-material]-a[bi-biomass]"
	end
	if data.raw["recipe"]["bi_recipe_biomass_2"] then
		data.raw["recipe"]["bi_recipe_biomass_2"].subgroup = "bio-raw-material"
		data.raw["recipe"]["bi_recipe_biomass_2"].order = "a[bio-raw-material]-b[bi-biomass]"
	end
	if data.raw["recipe"]["bi_recipe_biomass_3"] then
		data.raw["recipe"]["bi_recipe_biomass_3"].subgroup = "bio-raw-material"
		data.raw["recipe"]["bi_recipe_biomass_3"].order = "a[bio-raw-material]-c[bi-biomass]"
	end
	if data.raw["recipe"]["bi_recipe_acid"] then
		data.raw["recipe"]["bi_recipe_acid"].subgroup = "bio-raw-material"
		data.raw["recipe"]["bi_recipe_acid"].order = "b[bio-raw-material]-a[bi-fuel]"
	end
	if data.raw["recipe"]["bi_recipe_biomass_conversion_1"] then
		data.raw["recipe"]["bi_recipe_biomass_conversion_1"].subgroup = "bio-raw-material"
		data.raw["recipe"]["bi_recipe_biomass_conversion_1"].order = "b[bio-raw-material]-b[bi-fuel]"
	end
	if data.raw["recipe"]["bi_recipe_biomass_conversion_2"] then
		data.raw["recipe"]["bi_recipe_biomass_conversion_2"].subgroup = "bio-raw-material"
		data.raw["recipe"]["bi_recipe_biomass_conversion_2"].order = "b[bio-raw-material]-c[bi-fuel]"
	end
	if data.raw["recipe"]["bi_recipe_biomass_conversion_3"] then
		data.raw["recipe"]["bi_recipe_biomass_conversion_3"].subgroup = "bio-raw-material"
		data.raw["recipe"]["bi_recipe_biomass_conversion_3"].order = "b[bio-raw-material]-d[bi-fuel]"
	end
	if data.raw["recipe"]["bi_recipe_cellulose_1"] then
		data.raw["recipe"]["bi_recipe_cellulose_1"].subgroup = "bio-raw-material"
		data.raw["recipe"]["bi_recipe_cellulose_1"].order = "c[bio-raw-material]-a[bi-cellulose]"
	end
	if data.raw["recipe"]["bi_recipe_cellulose_2"] then
		data.raw["recipe"]["bi_recipe_cellulose_2"].subgroup = "bio-raw-material"
		data.raw["recipe"]["bi_recipe_cellulose_2"].order = "c[bio-raw-material]-b[bi-cellulose]"
	end
	
	--bio-intermediate-products
	if data.raw["recipe"]["bi_recipe_fresh_water"] then
		data.raw["recipe"]["bi_recipe_fresh_water"].subgroup = "bio-intermediate-products-1"
		data.raw["recipe"]["bi_recipe_fresh_water"].order = "a[bio-intermediate-products]-a[fresh_water]"
	end
	if data.raw["recipe"]["bi_recipe_liquid_air"] then
		data.raw["recipe"]["bi_recipe_liquid_air"].subgroup = "bio-intermediate-products-1"
		data.raw["recipe"]["bi_recipe_liquid_air"].order = "a[bio-intermediate-products]-b[bi-air]"
	end
	if data.raw["recipe"]["bi_recipe_nitrogen"] then
		data.raw["recipe"]["bi_recipe_nitrogen"].subgroup = "bio-intermediate-products-1"
		data.raw["recipe"]["bi_recipe_nitrogen"].order = "a[bio-intermediate-products]-c[bi-air]"
	end
	if data.raw["recipe"]["bi_recipe_fertiliser_1"] then
		data.raw["recipe"]["bi_recipe_fertiliser_1"].subgroup = "bio-intermediate-products-1"
		data.raw["recipe"]["bi_recipe_fertiliser_1"].order = "b[bio-intermediate-products]-a[bi-fertiliser]"
	end
	if data.raw["recipe"]["bi_recipe_fertiliser_2"] then
		data.raw["recipe"]["bi_recipe_fertiliser_2"].subgroup = "bio-intermediate-products-1"
		data.raw["recipe"]["bi_recipe_fertiliser_2"].order = "b[bio-intermediate-products]-b[bi-fertiliser]"
	end
	if data.raw["recipe"]["bi_recipe_adv_fertiliser_1"] then
		data.raw["recipe"]["bi_recipe_adv_fertiliser_1"].subgroup = "bio-intermediate-products-1"
		data.raw["recipe"]["bi_recipe_adv_fertiliser_1"].order = "b[bio-intermediate-products]-c[bi-fertiliser]"
	end
	if data.raw["recipe"]["bi_recipe_adv_fertiliser_2"] then
		data.raw["recipe"]["bi_recipe_adv_fertiliser_2"].subgroup = "bio-intermediate-products-1"
		data.raw["recipe"]["bi_recipe_adv_fertiliser_2"].order = "b[bio-intermediate-products]-d[bi-fertiliser]"
	end
	if data.raw["recipe"]["bi_recipe_clean_air_1"] then
		data.raw["recipe"]["bi_recipe_clean_air_1"].subgroup = "bio-intermediate-products-1"
		data.raw["recipe"]["bi_recipe_clean_air_1"].order = "c[bio-intermediate-products]-a[bi-clean-air]"
	end
	if data.raw["recipe"]["bi_recipe_clean_air_2"] then
		data.raw["recipe"]["bi_recipe_clean_air_2"].subgroup = "bio-intermediate-products-1"
		data.raw["recipe"]["bi_recipe_clean_air_2"].order = "c[bio-intermediate-products]-b[bi-clean-air]"
	end
	if data.raw["recipe"]["bi_recipe_plastic_1"] then
		data.raw["recipe"]["bi_recipe_plastic_1"].subgroup = "bio-intermediate-products-2"
		data.raw["recipe"]["bi_recipe_plastic_1"].order = "d[bio-intermediate-products]-a[bi-plastic]"
	end
	if data.raw["recipe"]["bi_recipe_plastic_2"] then
		data.raw["recipe"]["bi_recipe_plastic_2"].subgroup = "bio-intermediate-products-2"
		data.raw["recipe"]["bi_recipe_plastic_2"].order = "d[bio-intermediate-products]-b[bi-plastic]"
	end
	if data.raw["recipe"]["bi_recipe_sulfur"] then
		data.raw["recipe"]["bi_recipe_sulfur"].subgroup = "bio-intermediate-products-2"
		data.raw["recipe"]["bi_recipe_sulfur"].order = "e[bio-intermediate-products]-a[bi-sulfur]"
	end
	if data.raw["recipe"]["bi_recipe_sulfur_angels"] then
		data.raw["recipe"]["bi_recipe_sulfur_angels"].subgroup = "bio-intermediate-products-2"
		data.raw["recipe"]["bi_recipe_sulfur_angels"].order = "e[bio-intermediate-products]-b[bi-sulfur]"
	end
	if data.raw["recipe"]["bi_recipe_battery"] then
		data.raw["recipe"]["bi_recipe_battery"].subgroup = "bio-intermediate-products-2"
		data.raw["recipe"]["bi_recipe_battery"].order = "f[bio-intermediate-products]-a[bi-battery]"
	end
	if data.raw["recipe"]["filter-air"] then
		if data.raw["recipe"]["unused-air-filter"] then
			data.raw["recipe"]["unused-air-filter"].subgroup = "bio-intermediate-products-2"
			data.raw["recipe"]["unused-air-filter"].order = "g[bi-clean-air]-a[unused-air-filter]"
		end
		if data.raw["recipe"]["air-filter-recycling"] then
			data.raw["recipe"]["air-filter-recycling"].subgroup = "bio-intermediate-products-2"
			data.raw["recipe"]["air-filter-recycling"].order = "g[bi-clean-air]-b[air-filter-recycling]"
		end
		if data.raw["recipe"]["advanced-air-filter-recycling"] then
			data.raw["recipe"]["advanced-air-filter-recycling"].subgroup = "bio-intermediate-products-2"
			data.raw["recipe"]["advanced-air-filter-recycling"].order = "g[bi-clean-air]-c[advanced-air-filter-recycling]"
		end
		if data.raw["recipe"]["filter-air"] then
			data.raw["recipe"]["filter-air"].subgroup = "bio-intermediate-products-2"
			data.raw["recipe"]["filter-air"].order = "g[bi-clean-air]-d[filter-air]"
		end
		if data.raw["recipe"]["bi_recipe_clean_air_1"] then
			data.raw["recipe"]["bi_recipe_clean_air_1"].subgroup = "bio-intermediate-products-2"
			data.raw["recipe"]["bi_recipe_clean_air_1"].order = "g[bi-clean-air]-e[air-clear]"
		end
		if data.raw["recipe"]["bi_recipe_clean_air_2"] then
			data.raw["recipe"]["bi_recipe_clean_air_2"].subgroup = "bio-intermediate-products-2"
			data.raw["recipe"]["bi_recipe_clean_air_2"].order = "g[bi-clean-air]-f[air-clear]"
		end
	end
	
	--bio-seedling
	if data.raw["recipe"]["bi_recipe_seed_1"] then
		data.raw["recipe"]["bi_recipe_seed_1"].subgroup = "bio-seedling"
		data.raw["recipe"]["bi_recipe_seed_1"].order = "a[bi-seed]-a[bi-seed]"
	end
	if data.raw["recipe"]["bi_recipe_seed_2"] then
		data.raw["recipe"]["bi_recipe_seed_2"].subgroup = "bio-seedling"
		data.raw["recipe"]["bi_recipe_seed_2"].order = "a[bi-seed]-b[bi-seed]"
	end
	if data.raw["recipe"]["bi_recipe_seed_3"] then
		data.raw["recipe"]["bi_recipe_seed_3"].subgroup = "bio-seedling"
		data.raw["recipe"]["bi_recipe_seed_3"].order = "a[bi-seed]-c[bi-seed]"
	end
	if data.raw["recipe"]["bi_recipe_seed_4"] then
		data.raw["recipe"]["bi_recipe_seed_4"].subgroup = "bio-seedling"
		data.raw["recipe"]["bi_recipe_seed_4"].order = "a[bi-seed]-d[bi-seed]"
	end
	if data.raw["recipe"]["bi_recipe_seedling_mk1"] then
		data.raw["recipe"]["bi_recipe_seedling_mk1"].subgroup = "bio-seedling"
		data.raw["recipe"]["bi_recipe_seedling_mk1"].order = "b[bi-seedling]-a[bi-seedling]"
	end
	if data.raw["recipe"]["bi_recipe_seedling_mk2"] then
		data.raw["recipe"]["bi_recipe_seedling_mk2"].subgroup = "bio-seedling"
		data.raw["recipe"]["bi_recipe_seedling_mk2"].order = "b[bi-seedling]-b[bi-seedling]"
	end
	if data.raw["recipe"]["bi_recipe_seedling_mk3"] then
		data.raw["recipe"]["bi_recipe_seedling_mk3"].subgroup = "bio-seedling"
		data.raw["recipe"]["bi_recipe_seedling_mk3"].order = "b[bi-seedling]-c[bi-seedling]"
	end
	if data.raw["recipe"]["bi_recipe_seedling_mk4"] then
		data.raw["recipe"]["bi_recipe_seedling_mk4"].subgroup = "bio-seedling"
		data.raw["recipe"]["bi_recipe_seedling_mk4"].order = "b[bi-seedling]-d[bi-seedling]"
	end

	--bio-raw-wood
	if data.raw["recipe"]["bi_recipe_logs_mk1"] then
		data.raw["recipe"]["bi_recipe_logs_mk1"].subgroup = "bio-raw-wood"
		data.raw["recipe"]["bi_recipe_logs_mk1"].order = "a[bi-wood]-a[bi-wood]"
	end
	if data.raw["recipe"]["bi_recipe_logs_mk2"] then
		data.raw["recipe"]["bi_recipe_logs_mk2"].subgroup = "bio-raw-wood"
		data.raw["recipe"]["bi_recipe_logs_mk2"].order = "a[bi-wood]-b[bi-wood]"
	end
	if data.raw["recipe"]["bi_recipe_logs_mk3"] then
		data.raw["recipe"]["bi_recipe_logs_mk3"].subgroup = "bio-raw-wood"
		data.raw["recipe"]["bi_recipe_logs_mk3"].order = "a[bi-wood]-c[bi-wood]"
	end
	if data.raw["recipe"]["bi_recipe_logs_mk4"] then
		data.raw["recipe"]["bi_recipe_logs_mk4"].subgroup = "bio-raw-wood"
		data.raw["recipe"]["bi_recipe_logs_mk4"].order = "a[bi-wood]-d[bi-wood]"
	end
	if data.raw["recipe"]["bi_recipe_resin_wood"] then
		data.raw["recipe"]["bi_recipe_resin_wood"].subgroup = "bio-raw-wood"
		data.raw["recipe"]["bi_recipe_resin_wood"].order = "b[bi-wood-intermediate]-a[bi-wood]"
	end
	if data.raw["recipe"]["bi_recipe_resin_pulp"] then
		data.raw["recipe"]["bi_recipe_resin_pulp"].subgroup = "bio-raw-wood"
		data.raw["recipe"]["bi_recipe_resin_pulp"].order = "b[bi-wood-intermediate]-b[bi-wood]"
	end
	if data.raw["recipe"]["bi_recipe_press_wood"] then
		data.raw["recipe"]["bi_recipe_press_wood"].subgroup = "bio-raw-wood"
		data.raw["recipe"]["bi_recipe_press_wood"].order = "b[bi-wood-intermediate]-c[bi-wood]"
	end

	--bio-terraforming
	if data.raw["recipe"]["bi_recipe_arboretum_r1"] then
		data.raw["recipe"]["bi_recipe_arboretum_r1"].subgroup = "bio-terraforming"
		data.raw["recipe"]["bi_recipe_arboretum_r1"].order = "a[bi-terraforming]-a[bi-terraforming]"
	end
	if data.raw["recipe"]["bi_recipe_arboretum_r2"] then
		data.raw["recipe"]["bi_recipe_arboretum_r2"].subgroup = "bio-terraforming"
		data.raw["recipe"]["bi_recipe_arboretum_r2"].order = "a[bi-terraforming]-b[bi-terraforming]"
	end
	if data.raw["recipe"]["bi_recipe_arboretum_r3"] then
		data.raw["recipe"]["bi_recipe_arboretum_r3"].subgroup = "bio-terraforming"
		data.raw["recipe"]["bi_recipe_arboretum_r3"].order = "a[bi-terraforming]-c[bi-terraforming]"
	end
	if data.raw["recipe"]["bi_recipe_arboretum_r4"] then
		data.raw["recipe"]["bi_recipe_arboretum_r4"].subgroup = "bio-terraforming"
		data.raw["recipe"]["bi_recipe_arboretum_r4"].order = "a[bi-terraforming]-d[bi-terraforming]"
	end
	if data.raw["recipe"]["bi_recipe_arboretum_r5"] then
		data.raw["recipe"]["bi_recipe_arboretum_r5"].subgroup = "bio-terraforming"
		data.raw["recipe"]["bi_recipe_arboretum_r5"].order = "a[bi-terraforming]-e[bi-terraforming]"
	end

	--bio-prospecting
	if data.raw["item-subgroup"]["bio-bio-drill-mk1"] then
		data.raw["item-subgroup"]["bio-bio-drill-mk1"].order = "07-a"
	end
	if data.raw["item-subgroup"]["bio-bio-drill-mk2"] then
		data.raw["item-subgroup"]["bio-bio-drill-mk2"].order = "07-b"
	end
	if data.raw["item-subgroup"]["bio-bio-drill-mk3"] then
		data.raw["item-subgroup"]["bio-bio-drill-mk3"].order = "07-c"
	end
	--bio-power
	if data.raw["item"]["bi-bio-solar-farm"] then
		data.raw["item"]["bi-bio-solar-farm"].subgroup = "bio-power"
		data.raw["item"]["bi-bio-solar-farm"].order = "b[bi-power]-a[bi-generator]"
		data.raw["recipe"]["bi_recipe_bio_solar_farm"].subgroup = "bio-power"
		data.raw["recipe"]["bi_recipe_bio_solar_farm"].order = "b[bi-power]-a[bi-generator]"
		data.raw["recipe"]["bi_recipe_solar_boiler_panel"].subgroup = "bio-power"
		data.raw["recipe"]["bi_recipe_solar_boiler_panel"].order = "b[bi-power]-a[bi-generator]"
	end
	if data.raw["item"]["bi-solar-mat"] then
		data.raw["item"]["bi-solar-mat"].subgroup = "bio-power"
		data.raw["item"]["bi-solar-mat"].order = "b[bi-power]-b[bi-generator]"
		data.raw["recipe"]["bi_recipe_solar_mat"].subgroup = "bio-power"
		data.raw["recipe"]["bi_recipe_solar_mat"].order = "b[bi-power]-b[bi-generator]"
	end
	if data.raw["item"]["bi-solar-boiler-panel"] then
		data.raw["item"]["bi-solar-boiler-panel"].subgroup = "bio-power"
		data.raw["item"]["bi-solar-boiler-panel"].order = "b[bi-power]-c[bi-generator]"
		data.raw["recipe"]["bi_recipe_bio_solar_farm"].subgroup = "bio-power"
		data.raw["recipe"]["bi_recipe_bio_solar_farm"].order = "b[bi-power]-c[bi-generator]"
	end
	if data.raw["item"]["bi-bio-accumulator"] then
		data.raw["item"]["bi-bio-accumulator"].subgroup = "bio-power"
		data.raw["item"]["bi-bio-accumulator"].order = "c[bi-power]-a[bi-accumulator]"
		data.raw["recipe"]["bi_recipe_accumulator"].subgroup = "bio-power"
		data.raw["recipe"]["bi_recipe_accumulator"].order = "c[bi-power]-a[bi-accumulator]"
	end
	if data.raw["recipe"]["bi_recipe_burner_pump"] then
		data.raw["recipe"]["bi_recipe_burner_pump"].subgroup = "bio-power"
		data.raw["recipe"]["bi_recipe_burner_pump"].order = "d[bi-drill]-a[burner-pump]"
	end
	if data.raw["recipe"]["bi_recipe_bio_drill"] then
		data.raw["recipe"]["bi_recipe_bio_drill"].subgroup = "bio-power"
		data.raw["recipe"]["bi_recipe_bio_drill"].order = "d[bi-drill]-b[bi-bio-drill]"
	end
	if data.raw["recipe"]["bi_recipe_drill_fix"] then
		data.raw["recipe"]["bi_recipe_drill_fix"].subgroup = "bio-power"
		data.raw["recipe"]["bi_recipe_drill_fix"].order = "d[bi-drill]-c[bi-bio-drill]"
	end
	if data.raw["recipe"]["bi_recipe_drill_mk1"] then
		data.raw["recipe"]["bi_recipe_drill_mk1"].subgroup = "bio-power"
		data.raw["recipe"]["bi_recipe_drill_mk1"].order = "d[bi-drill]-d[bi-bio-drill]"
	end
	if data.raw["recipe"]["bi_recipe_drill_mk2"] then
		data.raw["recipe"]["bi_recipe_drill_mk2"].subgroup = "bio-power"
		data.raw["recipe"]["bi_recipe_drill_mk2"].order = "d[bi-drill]-e[bi-bio-drill]"
	end
	if data.raw["recipe"]["bi_recipe_drill_mk3"] then
		data.raw["recipe"]["bi_recipe_drill_mk3"].subgroup = "bio-power"
		data.raw["recipe"]["bi_recipe_drill_mk3"].order = "d[bi-drill]-f[bi-bio-drill]"
	end
	
	--bio-building
	if data.raw["recipe"]["bi_recipe_cokery"] then
		data.raw["recipe"]["bi_recipe_cokery"].subgroup = "bio-building"
		data.raw["recipe"]["bi_recipe_cokery"].order = "a[bio-building]-a[bi-cokery]"
	end
	if data.raw["recipe"]["bi_recipe_stone_crusher"] then
		data.raw["recipe"]["bi_recipe_stone_crusher"].subgroup = "bio-building"
		data.raw["recipe"]["bi_recipe_stone_crusher"].order = "a[bio-building]-b[bi-crusher]"
	end
	if data.raw["recipe"]["bi_recipe_bioreactor"] then
		data.raw["recipe"]["bi_recipe_bioreactor"].subgroup = "bio-building"
		data.raw["recipe"]["bi_recipe_bioreactor"].order = "a[bio-building]-c[bi-bioreactor]"
	end
	if data.raw["recipe"]["bi_recipe_greenhouse"] then
		data.raw["recipe"]["bi_recipe_greenhouse"].subgroup = "bio-building"
		data.raw["recipe"]["bi_recipe_greenhouse"].order = "b[bio-building]-a[bi-greenhouse]"
	end
	if data.raw["recipe"]["bi_recipe_bio_farm"] then
		data.raw["recipe"]["bi_recipe_bio_farm"].subgroup = "bio-building"
		data.raw["recipe"]["bi_recipe_bio_farm"].order = "b[bio-building]-b[bi-farm]"
	end
	if data.raw["recipe"]["bi_recipe_bio_garden"] then
		data.raw["recipe"]["bi_recipe_bio_garden"].subgroup = "bio-building"
		data.raw["recipe"]["bi_recipe_bio_garden"].order = "b[bio-building]-c[bi-air-filter]"
	end
	if data.raw["recipe"]["bi_recipe_arboretum"] then
		data.raw["recipe"]["bi_recipe_arboretum"].subgroup = "bio-building"
		data.raw["recipe"]["bi_recipe_arboretum"].order = "b[bio-building]-d[bi-arboretum]"
	end
		
	--bio-disassemble
	if data.raw["recipe"]["bi_recipe_burner_mining_drill_disassemble"] then
		data.raw["recipe"]["bi_recipe_burner_mining_drill_disassemble"].subgroup = "bio-disassemble"
		data.raw["recipe"]["bi_recipe_burner_mining_drill_disassemble"].order = "a[bio-disassemble]-a[bio-disassemble]"
	end
	if data.raw["recipe"]["bi_recipe_long_handed_inserter_disassemble"] then
		data.raw["recipe"]["bi_recipe_long_handed_inserter_disassemble"].subgroup = "bio-disassemble"
		data.raw["recipe"]["bi_recipe_long_handed_inserter_disassemble"].order = "a[bio-disassemble]-b[bio-disassemble]"
	end
	if data.raw["recipe"]["bi_recipe_stone_furnace_disassemble"] then
		data.raw["recipe"]["bi_recipe_stone_furnace_disassemble"].subgroup = "bio-disassemble"
		data.raw["recipe"]["bi_recipe_stone_furnace_disassemble"].order = "a[bio-disassemble]-c[bio-disassemble]"
	end
	if data.raw["recipe"]["bi_recipe_steel_furnace_disassemble"] then
		data.raw["recipe"]["bi_recipe_steel_furnace_disassemble"].subgroup = "bio-disassemble"
		data.raw["recipe"]["bi_recipe_steel_furnace_disassemble"].order = "a[bio-disassemble]-d[bio-disassemble]"
	end
	if data.raw["recipe"]["bi_recipe_steel_furnace_disassemble"] then
		data.raw["recipe"]["bi_recipe_steel_furnace_disassemble"].subgroup = "bio-disassemble"
		data.raw["recipe"]["bi_recipe_steel_furnace_disassemble"].order = "a[bio-disassemble]-e[bio-disassemble]"
	end
	if data.raw["recipe"]["bi_recipe_basic_pumpjack_disassemble"] then
		data.raw["recipe"]["bi_recipe_basic_pumpjack_disassemble"].subgroup = "bio-disassemble"
		data.raw["recipe"]["bi_recipe_basic_pumpjack_disassemble"].order = "a[bio-disassemble]-f[bio-disassemble]"
	end

	--Bobs
	if data.raw["recipe"]["bob-seedling"] then
		data.raw["recipe"]["bob-seedling"].subgroup = "bio-seedling"
		data.raw["recipe"]["bob-seedling"].order = "b[bi-seedling]-9[bi-seedling]"
	end
	if data.raw["recipe"]["bob-basic-greenhouse-cycle"] then
		data.raw["recipe"]["bob-basic-greenhouse-cycle"].subgroup = "bio-raw-wood"
		data.raw["recipe"]["bob-basic-greenhouse-cycle"].order = "a[bi-wood]-8[bi-wood]"
	end
	if data.raw["recipe"]["bob-advanced-greenhouse-cycle"] then
		data.raw["recipe"]["bob-advanced-greenhouse-cycle"].subgroup = "bio-raw-wood"
		data.raw["recipe"]["bob-advanced-greenhouse-cycle"].order = "a[bi-wood]-9[bi-wood]"
	end
	if data.raw["recipe"]["bob-fertiliser"] then
		data.raw["recipe"]["bob-fertiliser"].subgroup = "bio-intermediate-products-1"
		data.raw["recipe"]["bob-fertiliser"].order = "b[bio-intermediate-products]-9[bi-fertiliser]"
	end
	if data.raw["item-group"]["bob-resource-products"] then
		if data.raw["item-subgroup"]["bio-coal-products"] then
			data.raw["item-subgroup"]["bio-coal-products"].group = "bob-resource-products"
			data.raw["item-subgroup"]["bio-coal-products"].order = "a-a"
		end
	end

	--Angels
	if data.raw["item-group"]["petrochem-refining"] then
		if data.raw["recipe"]["bi_recipe_liquid_air"] then
			data.raw["recipe"]["bi_recipe_liquid_air"].subgroup = "petrochem-nitrogen"
			data.raw["recipe"]["bi_recipe_liquid_air"].order = "1a[air-separation]"
		end
		if data.raw["recipe"]["bi_recipe_nitrogen"] then
			data.raw["recipe"]["bi_recipe_nitrogen"].subgroup = "petrochem-nitrogen"
			data.raw["recipe"]["bi_recipe_nitrogen"].order = "a[air-separation]"
		end
	end
	if data.raw["item-subgroup"]["water-salination"] then
		if data.raw["recipe"]["bi_recipe_fresh_water"] then
			data.raw["recipe"]["bi_recipe_fresh_water"].subgroup = "water-salination"
			data.raw["recipe"]["bi_recipe_fresh_water"].order = "a[fresh-water]"
		end
	end
else
	--airclear
	if data.raw["recipe"]["unused-air-filter"] then
		data.raw["recipe"]["unused-air-filter"].subgroup = "intermediate-product"
		data.raw["recipe"]["unused-air-filter"].order = "t[airclear]-a[unused-air-filter]"
	end
	if data.raw["recipe"]["air-filter-recycling"] then
		data.raw["recipe"]["air-filter-recycling"].subgroup = "intermediate-product"
		data.raw["recipe"]["air-filter-recycling"].order = "t[airclear]-b[air-filter-recycling]"
	end
	if data.raw["recipe"]["advanced-air-filter-recycling"] then
		data.raw["recipe"]["advanced-air-filter-recycling"].subgroup = "intermediate-product"
		data.raw["recipe"]["advanced-air-filter-recycling"].order = "t[airclear]-c[advanced-air-filter-recycling]"
	end
	if data.raw["recipe"]["filter-air"] then
		data.raw["recipe"]["filter-air"].subgroup = "intermediate-product"
		data.raw["recipe"]["filter-air"].order = "t[airclear]-d[filter-air]"
	end
end

	--chest
if data.raw["item-subgroup"]["shinychests1"] then
	if data.raw["item"]["bi-large-wooden-chest"] then
		data.raw["item"]["bi-large-wooden-chest"].subgroup = "shinychests1"
		data.raw["item"]["bi-large-wooden-chest"].order = "a1-a[bi-large-wooden-chest]"
	end
	if data.raw["item"]["bi-huge-wooden-chest"] then
		data.raw["item"]["bi-huge-wooden-chest"].subgroup = "shinychests1"
		data.raw["item"]["bi-huge-wooden-chest"].order = "a1-b[bi-huge-wooden-chest]"
	end
	if data.raw["item"]["bi-giga-wooden-chest"] then
		data.raw["item"]["bi-giga-wooden-chest"].subgroup = "shinychests1"
		data.raw["item"]["bi-giga-wooden-chest"].order = "a1-c[bi-giga-wooden-chest]"
	end
end