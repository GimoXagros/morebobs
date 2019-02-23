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

if mods["Bio_Industries"] then

	-- order
	MSB.SUBGROUP_GENERATOR("bio-raw-material", "bio-industries", "01-a")
	MSB.SUBGROUP_GENERATOR("bio-coal-products-1", "bio-industries", "02-a")
	MSB.SUBGROUP_GENERATOR("bio-coal-products-2", "bio-industries", "02-b")
	MSB.SUBGROUP_GENERATOR("bio-intermediate-products-1", "bio-industries", "03-a")
	MSB.SUBGROUP_GENERATOR("bio-intermediate-products-2", "bio-industries", "03-b")
	MSB.SUBGROUP_GENERATOR("bio-seedling", "bio-industries", "04-a")
	MSB.SUBGROUP_GENERATOR("bio-raw-wood", "bio-industries", "05-a")
	MSB.SUBGROUP_GENERATOR("bio-terraforming", "bio-industries", "06-a")
	MSB.SUBGROUP_GENERATOR("bio-power", "bio-industries", "08-a")
	MSB.SUBGROUP_GENERATOR("bio-building-1", "bio-industries", "09-a")
	MSB.SUBGROUP_GENERATOR("bio-building-2", "bio-industries", "09-b")
	MSB.SUBGROUP_GENERATOR("bio-disassemble", "bio-industries", "10-a")
	
	-- bio-raw-material
	MSB.ORDER_CLEANER("bi_recipe_biomass_1", "bio-raw-material", "a[bio-raw-material]-a[bi-biomass]")
	MSB.ORDER_CLEANER("bi_recipe_biomass_2", "bio-raw-material", "a[bio-raw-material]-b[bi-biomass]")
	MSB.ORDER_CLEANER("bi_recipe_biomass_3", "bio-raw-material", "a[bio-raw-material]-c[bi-biomass]")
	MSB.ORDER_CLEANER("bi_recipe_acid", "bio-raw-material", "b[bio-raw-material]-a[bi-fuel]")
	MSB.ORDER_CLEANER("bi_recipe_biomass_conversion_1", "bio-raw-material", "b[bio-raw-material]-b[bi-fuel]")
	MSB.ORDER_CLEANER("bi_recipe_biomass_conversion_2", "bio-raw-material", "b[bio-raw-material]-c[bi-fuel]")
	MSB.ORDER_CLEANER("bi_recipe_biomass_conversion_3", "bio-raw-material", "b[bio-raw-material]-d[bi-fuel]")
	MSB.ORDER_CLEANER("bi_recipe_cellulose_1", "bio-raw-material", "c[bio-raw-material]-a[bi-cellulose]")
	MSB.ORDER_CLEANER("bi_recipe_cellulose_2", "bio-raw-material", "c[bio-raw-material]-b[bi-cellulose]")
	MSB.ORDER_CLEANER("bi_recipe_battery", "bio-raw-material", "d[bio-intermediate-products]-a[bi-battery]")
	
	-- bio-coal-products
	MSB.ORDER_CLEANER("bi_recipe_woodpulp", "bio-coal-products-1", "a[bio-coal-products]-a[bi-coal-raw]")
	MSB.ORDER_CLEANER("bi_recipe_ash_1", "bio-coal-products-1", "b[bio-coal-products]-a[bi-ash]")
	MSB.ORDER_CLEANER("bi_recipe_ash_2", "bio-coal-products-1", "b[bio-coal-products]-b[bi-ash]")
	MSB.ORDER_CLEANER("bi_recipe_crushed_stone", "bio-coal-products-1", "c[bio-coal-products]-a[bi-stone-raw]")
	MSB.ORDER_CLEANER("bi_recipe_stone_brick", "bio-coal-products-1", "c[bio-coal-products]-b[bi-stone-brick]")
	MSB.ORDER_CLEANER("bi_recipe_plastic_1", "bio-coal-products-1", "d[bio-intermediate-products]-a[bi-plastic]")
	MSB.ORDER_CLEANER("bi_recipe_plastic_2", "bio-coal-products-1", "d[bio-intermediate-products]-b[bi-plastic]")
	MSB.ORDER_CLEANER("bi_recipe_sulfur", "bio-coal-products-1", "e[bio-intermediate-products]-a[bi-sulfur]")
	MSB.ORDER_CLEANER("bi_recipe_sulfur_angels", "bio-coal-products-1", "e[bio-intermediate-products]-b[bi-sulfur]")
	
	MSB.ORDER_CLEANER("bi_recipe_charcoal", "bio-coal-products-2", "a[bio-coal-products]-a[bi-charcoal]")
	MSB.ORDER_CLEANER("bi_recipe_charcoal_2", "bio-coal-products-2", "a[bio-coal-products]-b[bi-charcoal]")
	MSB.ORDER_CLEANER("bi_recipe_coal", "bio-coal-products-2", "b[bio-coal-products]-a[bi-coal]")
	MSB.ORDER_CLEANER("bi_recipe_coal_2", "bio-coal-products-2", "b[bio-coal-products]-b[bi-coal]")
	MSB.ORDER_CLEANER("bi_recipe_coke_coal", "bio-coal-products-2", "b[bio-coal-products]-c[bi-coal]")
	MSB.ORDER_CLEANER("bi_recipe_pellete_coal_2", "bio-coal-products-2", "b[bio-coal-products]-d[bi-coal]")
	
	-- bio-intermediate-products
	MSB.ORDER_CLEANER("bi_recipe_fresh_water", "bio-intermediate-products-1", "a[bio-intermediate-products]-a[fresh_water]")
	MSB.ORDER_CLEANER("bi_recipe_fresh_water_2", "bio-intermediate-products-1", "a[bio-intermediate-products]-b[fresh_water]")
	MSB.ORDER_CLEANER("bi_recipe_liquid_air", "bio-intermediate-products-1", "a[bio-intermediate-products]-c[bi-air]")
	MSB.ORDER_CLEANER("bi_recipe_nitrogen", "bio-intermediate-products-1", "a[bio-intermediate-products]-d[bi-air]")
	MSB.ORDER_CLEANER("bi_recipe_fertiliser_1", "bio-intermediate-products-1", "b[bio-intermediate-products]-a[bi-fertiliser]")
	MSB.ORDER_CLEANER("bi_recipe_fertiliser_2", "bio-intermediate-products-1", "b[bio-intermediate-products]-b[bi-fertiliser]")
	MSB.ORDER_CLEANER("bi_recipe_adv_fertiliser_1", "bio-intermediate-products-1", "b[bio-intermediate-products]-c[bi-fertiliser]")
	MSB.ORDER_CLEANER("bi_recipe_adv_fertiliser_2", "bio-intermediate-products-1", "b[bio-intermediate-products]-d[bi-fertiliser]")
	MSB.ORDER_CLEANER("bi_recipe_clean_air_1", "bio-intermediate-products-1", "c[bio-intermediate-products]-a[bi-clean-air]")
	MSB.ORDER_CLEANER("bi_recipe_clean_air_2", "bio-intermediate-products-1", "c[bio-intermediate-products]-b[bi-clean-air]")
	
	if data.raw["recipe"]["filter-air"] then
		MSB.ORDER_CLEANER("unused-air-filter", "bio-intermediate-products-2", "g[bi-clean-air]-a[unused-air-filter]")
		MSB.ORDER_CLEANER("air-filter-recycling", "bio-intermediate-products-2", "g[bi-clean-air]-b[air-filter-recycling]")
		MSB.ORDER_CLEANER("advanced-air-filter-recycling", "bio-intermediate-products-2", "g[bi-clean-air]-c[advanced-air-filter-recycling]")
		MSB.ORDER_CLEANER("filter-air", "bio-intermediate-products-2", "g[bi-clean-air]-d[filter-air]")
		MSB.ORDER_CLEANER("bi_recipe_clean_air_1", "bio-intermediate-products-2", "g[bi-clean-air]-e[air-clear]")
		MSB.ORDER_CLEANER("bi_recipe_clean_air_2", "bio-intermediate-products-2", "g[bi-clean-air]-f[air-clear]")
	end
	
	-- bio-seedling
	MSB.ORDER_CLEANER("bi_recipe_seed_1", "bio-seedling", "a[bi-seed]-a[bi-seed]")
	MSB.ORDER_CLEANER("bi_recipe_seed_2", "bio-seedling", "a[bi-seed]-b[bi-seed]")
	MSB.ORDER_CLEANER("bi_recipe_seed_3", "bio-seedling", "a[bi-seed]-c[bi-seed]")
	MSB.ORDER_CLEANER("bi_recipe_seed_4", "bio-seedling", "a[bi-seed]-d[bi-seed]")
	MSB.ORDER_CLEANER("bi_recipe_seedling_mk1", "bio-seedling", "b[bi-seed]-a[bi-seed]")
	MSB.ORDER_CLEANER("bi_recipe_seedling_mk2", "bio-seedling", "b[bi-seed]-b[bi-seed]")
	MSB.ORDER_CLEANER("bi_recipe_seedling_mk3", "bio-seedling", "b[bi-seed]-c[bi-seed]")
	MSB.ORDER_CLEANER("bi_recipe_seedling_mk4", "bio-seedling", "b[bi-seed]-d[bi-seed]")

	-- bio-raw-wood
	MSB.ORDER_CLEANER("bi_recipe_logs_mk1", "bio-raw-wood", "a[bi-wood]-a[bi-wood]")
	MSB.ORDER_CLEANER("bi_recipe_logs_mk2", "bio-raw-wood", "a[bi-wood]-b[bi-wood]")
	MSB.ORDER_CLEANER("bi_recipe_logs_mk3", "bio-raw-wood", "a[bi-wood]-c[bi-wood]")
	MSB.ORDER_CLEANER("bi_recipe_logs_mk4", "bio-raw-wood", "a[bi-wood]-d[bi-wood]")
	MSB.ORDER_CLEANER("bi_recipe_resin_wood", "bio-raw-wood", "b[bi-wood-intermediate]-a[bi-wood]")
	MSB.ORDER_CLEANER("bi_recipe_resin_pulp", "bio-raw-wood", "b[bi-wood-intermediate]-b[bi-wood]")
	MSB.ORDER_CLEANER("bi_recipe_press_wood", "bio-raw-wood", "b[bi-wood-intermediate]-c[bi-wood]")

	-- bio-terraforming
	MSB.ORDER_CLEANER("bi_recipe_arboretum_r1", "bio-terraforming", "a[bi-terraforming]-a[bi-terraforming]")
	MSB.ORDER_CLEANER("bi_recipe_arboretum_r2", "bio-terraforming", "a[bi-terraforming]-b[bi-terraforming]")
	MSB.ORDER_CLEANER("bi_recipe_arboretum_r3", "bio-terraforming", "a[bi-terraforming]-c[bi-terraforming]")
	MSB.ORDER_CLEANER("bi_recipe_arboretum_r4", "bio-terraforming", "a[bi-terraforming]-d[bi-terraforming]")
	MSB.ORDER_CLEANER("bi_recipe_arboretum_r5", "bio-terraforming", "a[bi-terraforming]-e[bi-terraforming]")

	-- bio-prospecting
	MSB.SUBGROUP_CLEANER("bio-bio-drill-mk1", "bio-industries", "07-a")
	MSB.SUBGROUP_CLEANER("bio-bio-drill-mk2", "bio-industries", "07-b")
	MSB.SUBGROUP_CLEANER("bio-bio-drill-mk3", "bio-industries", "07-c")

	-- bio-power
	MSB.ORDER_CLEANER("bi-bio-boiler", "bio-power", "a[bi-power]-a[bi-boiler]")
	MSB.ORDER_CLEANER("bi_recipe_boiler", "bio-power", "a[bi-power]-a[bi-boiler]")
	
	MSB.ORDER_CLEANER("bi-bio-solar-farm", "bio-power", "b[bi-power]-a[bi-generator]")
	MSB.ORDER_CLEANER("bi_recipe_bio_solar_farm", "bio-power", "b[bi-power]-a[bi-generator]")
	MSB.ORDER_CLEANER("bi_recipe_solar_boiler_panel", "bio-power", "b[bi-power]-a[bi-generator]")
	
	MSB.ORDER_CLEANER("bi-solar-mat", "bio-power", "b[bi-power]-b[bi-generator]")
	MSB.ORDER_CLEANER("bi_recipe_solar_mat", "bio-power", "b[bi-power]-b[bi-generator]")
	
	MSB.ORDER_CLEANER("bi-solar-boiler-panel", "bio-power", "b[bi-power]-c[bi-generator]")
	MSB.ORDER_CLEANER("bi_recipe_bio_solar_farm", "bio-power", "b[bi-power]-c[bi-generator]")
	
	MSB.ORDER_CLEANER("bi-bio-accumulator", "bio-power", "c[bi-power]-a[bi-accumulator]")
	MSB.ORDER_CLEANER("bi_recipe_accumulator", "bio-power", "c[bi-power]-a[bi-accumulator]")
	
	-- bio-building
	MSB.ORDER_CLEANER("bi_recipe_cokery", "bio-building-1", "a[bio-building]-a[bi-cokery]")
	MSB.ORDER_CLEANER("bi_recipe_stone_crusher", "bio-building-1", "a[bio-building]-b[bi-crusher]")
	MSB.ORDER_CLEANER("bi_recipe_bioreactor", "bio-building-1", "a[bio-building]-c[bi-bioreactor]")
	MSB.ORDER_CLEANER("bi_recipe_greenhouse", "bio-building-1", "b[bio-building]-a[bi-greenhouse]")
	MSB.ORDER_CLEANER("bi_recipe_bio_farm", "bio-building-1", "b[bio-building]-b[bi-farm]")
	MSB.ORDER_CLEANER("bi_recipe_bio_garden", "bio-building-1", "b[bio-building]-c[bi-air-filter]")
	MSB.ORDER_CLEANER("bi_recipe_arboretum", "bio-building-1", "b[bio-building]-d[bi-arboretum]")
	
	MSB.ORDER_CLEANER("bi_recipe_burner_pump", "bio-building-2", "a[bi-drill]-a[burner-pump]")
	MSB.ORDER_CLEANER("bi_recipe_bio_drill", "bio-building-2", "a[bi-drill]-b[bi-bio-drill]")
	MSB.ORDER_CLEANER("bi_recipe_drill_fix", "bio-building-2", "a[bi-drill]-c[bi-bio-drill]")
	MSB.ORDER_CLEANER("bi_recipe_drill_mk1", "bio-building-2", "a[bi-drill]-d[bi-bio-drill]")
	MSB.ORDER_CLEANER("bi_recipe_drill_mk2", "bio-building-2", "a[bi-drill]-e[bi-bio-drill]")
	MSB.ORDER_CLEANER("bi_recipe_drill_mk3", "bio-building-2", "a[bi-drill]-f[bi-bio-drill]")

	-- bio-disassemble
	MSB.ORDER_CLEANER("bi_recipe_burner_mining_drill_disassemble", "bio-disassemble", "a[bio-disassemble]-a[bio-disassemble]")
	MSB.ORDER_CLEANER("bi_recipe_basic_pumpjack_disassemble", "bio-disassemble", "a[bio-disassemble]-b[bio-disassemble]")
	MSB.ORDER_CLEANER("bi_recipe_stone_furnace_disassemble", "bio-disassemble", "a[bio-disassemble]-c[bio-disassemble]")
	MSB.ORDER_CLEANER("bi_recipe_steel_furnace_disassemble", "bio-disassemble", "a[bio-disassemble]-d[bio-disassemble]")
	MSB.ORDER_CLEANER("bi_recipe_burner_inserter_disassemble", "bio-disassemble", "a[bio-disassemble]-e[bio-disassemble]")
	MSB.ORDER_CLEANER("bi_recipe_long_handed_inserter_disassemble", "bio-disassemble", "a[bio-disassemble]-f[bio-disassemble]")
	
	-- Bobs
	MSB.ORDER_CLEANER("bob-seedling", "bio-seedling", "b[bi-seedling]-9[bi-seedling]")
	MSB.ORDER_CLEANER("bob-advanced-greenhouse-cycle", "bio-raw-wood", "a[bi-wood]-9[bi-wood]")
	MSB.ORDER_CLEANER("bob-basic-greenhouse-cycle", "bio-raw-wood", "a[bi-wood]-8[bi-wood]")
	MSB.ORDER_CLEANER("bob-fertiliser", "bio-intermediate-products-1", "b[bio-intermediate-products]-9[bi-fertiliser]")
	if data.raw["item-group"]["bob-fluid-products"] then
		if mods["bobplates"] then MSB.ORDER_CLEANER("bi_recipe_liquid_air", "bob-fluid-pump", "b[fluid-chemistry]-a[liquid-air]") end
		if mods["bobplates"] then MSB.ORDER_CLEANER("bi_recipe_nitrogen", "bob-fluid", "b[fluid-chemistry]-b[nitroagen]") end
	end

	-- Angels
	if data.raw["item-group"]["petrochem-refining"] then
		MSB.ORDER_CLEANER("bi_recipe_liquid_air", "petrochem-nitrogen", "1a[air-separation]")
		MSB.ORDER_CLEANER("bi_recipe_nitrogen", "petrochem-nitrogen", "a[air-separation]")
	end
	if data.raw["item-subgroup"]["water-salination"] then
		MSB.ORDER_CLEANER("bi_recipe_fresh_water", "water-salination", "a[fresh-water]")
		MSB.ORDER_CLEANER("bi_recipe_fresh_water_2", "water-salination", "a[fresh-water]")
	end
else
	-- airclear
	MSB.ORDER_CLEANER("unused-air-filter", "intermediate-product", "t[airclear]-a[unused-air-filter]")
	MSB.ORDER_CLEANER("air-filter-recycling", "intermediate-product", "t[airclear]-b[air-filter-recycling]")
	MSB.ORDER_CLEANER("advanced-air-filter-recycling", "intermediate-product", "t[airclear]-c[advanced-air-filter-recycling]")
	MSB.ORDER_CLEANER("filter-air", "intermediate-product", "t[airclear]-d[filter-air]")
end