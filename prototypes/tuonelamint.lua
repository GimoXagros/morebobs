-- recipe category
data:extend({
	{
		type = "recipe-category",
		name = "tu-minting"
	},
})

-- coin recipe
data:extend({
	{
		type = "recipe",
		name = "tu-coin-1",
		icon = "__base__/graphics/icons/coin.png",
		icon_size=32,
		enabled = true,
		category = "tu-minting",
		order = "tu-a-01",
		ingredients = 
		{
			{"iron-plate", 1},
			{"copper-plate", 2}
		},
		results= { {type="item", name="coin", amount=1} },
		energy_required = 300,
		requester_paste_multiplier = 5,
		overload_multiplier = 3
	},
	{
		type = "recipe",
		name = "tu-coin-2",
		icon = "__base__/graphics/icons/coin.png",
		icon_size=32,
		enabled = true,
		category = "tu-minting",
		order = "tu-a-02",
		ingredients = 
		{
			{"iron-plate", 3},
			{"copper-plate", 4},
			{"steel-plate", 1}
		},
		results= { {type="item", name="coin", amount=3} },
		energy_required = 300,
		requester_paste_multiplier = 5,
		overload_multiplier = 3
	},
	{
		type = "recipe",
		name = "tu-coin-3",
		icon = "__base__/graphics/icons/coin.png",
		icon_size=32,
		enabled = true,
		category = "tu-minting",
		order = "tu-a-03",
		ingredients = 
		{
			{"iron-plate", 3},
			{"copper-plate", 6},
			{"steel-plate", 2}
		},
		results= { {type="item", name="coin", amount=5} },
		energy_required = 300,
		requester_paste_multiplier = 5,
		overload_multiplier = 3
	},
	{
		type = "recipe",
		name = "tu-coin-4",
		icon = "__base__/graphics/icons/coin.png",
		icon_size=32,
		enabled = true,
		category = "tu-minting",
		order = "tu-a-04",
		ingredients = 
		{
			{"iron-plate", 5},
			{"copper-plate", 9},
			{"steel-plate", 3}
		},
		results= { {type="item", name="coin", amount=5} },
		energy_required = 60,
		requester_paste_multiplier = 5,
		overload_multiplier = 3
	},
})

-- Mint
data:extend({
	-- item
	{
		type = "item",
		name = "burner-mint",
		icon = "__morebobs__/graphics/icons/mint1.png",
		icon_size=64,
		flags = {"goes-to-quickbar"},
		subgroup = "production-machine",
		order = "tu-b-01",
		place_result = "burner-mint",
		stack_size = 5
	},
	{
		type = "item",
		name = "electric-mint",
		icon = "__morebobs__/graphics/icons/mint2.png",
		icon_size=64,
		flags = {"goes-to-quickbar"},
		subgroup = "production-machine",
		order = "tu-b-02",
		place_result = "electric-mint",
		stack_size = 5
	},
	-- recipe
	{
		type = "recipe",
		name = "burner-mint",
		normal =
		{
			enabled = true,
			ingredients =
			{
				{"stone-brick", 10},
				{"iron-gear-wheel", 5},
				{"stone-furnace", 1}
			},
			result = "burner-mint",
			requester_paste_multiplier = 4
		},
		expensive =
		{
			enabled = true,
			ingredients =
			{
				{"stone-brick", 20},
				{"iron-gear-wheel", 10},
				{"stone-furnace", 1}
			},
			result = "burner-mint",
			requester_paste_multiplier = 4
		},
	},
	{
		type = "recipe",
		name = "electric-mint",
		normal =
		{
			enabled = false,
			ingredients =
			{
				{"iron-plate", 10},
				{"electronic-circuit", 3},
				{"burner-mint", 1}
			},
			result = "electric-mint",
			requester_paste_multiplier = 4
		},
		expensive =
		{
			enabled = false,
			ingredients =
			{
				{"iron-plate", 20},
				{"electronic-circuit", 5},
				{"burner-mint", 1}
			},
			result = "electric-mint",
			requester_paste_multiplier = 4
		},
	},
	-- entity
	{
		type = "assembling-machine",
		name = "burner-mint",
		icon = "__morebobs__/graphics/icons/mint1.png",
		icon_size=64,
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "burner-mint"},
		subgroup="production-machine",
		order="tu-b-01",
		max_health = 500,
		corpse = "big-remnants",
		dying_explosion = "medium-explosion",
		resistances =
		{
			{
				type = "fire",
				percent = 70
			}
		},
		open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
		close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
		vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		working_sound =
		{
		  sound = { filename = "__base__/sound/furnace.ogg" }
		},
		collision_box = {{-1.9, -1.9}, {1.9, 1.9}},
		selection_box = {{-2, -2}, {2, 2}},
		fast_replaceable_group = "assembling-machine",
		animation =
		{
			layers =
			{
				{
					filename = "__morebobs__/graphics/entity/mint/mint1.png",
					priority = "high",
					width = 133,
					height = 123,
					frame_count = 1,
					line_length = 1,
					shift = {-0.4, 0.2},
					hr_version =
					{
						filename = "__morebobs__/graphics/entity/mint/mint1.png",
						priority = "high",
						width = 133,
						height = 123,
						frame_count = 1,
						line_length = 1,
						shift = {-0.4, 0.2},
					}
				},
				{
					filename = "__morebobs__/graphics/entity/mint/mint1.png",
					priority = "high",
					width = 133,
					height = 123,
					frame_count = 1,
					line_length = 1,
					draw_as_shadow = true,
					shift = {-0.4, 0.2},
					hr_version =
					{
						filename = "__morebobs__/graphics/entity/mint/mint1.png",
						priority = "high",
						width = 133,
						height = 123,
						frame_count = 1,
						line_length = 1,
						draw_as_shadow = true,
						shift = {-0.4, 0.2},
					}
				},
			},
		},
		crafting_categories = {"tu-minting"},
		crafting_speed = 1.5,
		energy_source =
		{
			type = "burner",
			fuel_category = "chemical",
			effectivity = 0.9,
			fuel_inventory_size = 1,
			emissions = 0.03,
			smoke =
			{
				{
					name = "smoke",
					deviation = {0.1, 0.1},
					position = {-0.85, -1.5},
					frequency = 3
				}
			}
		},
		energy_usage = "210kW",
		ingredient_count = 4,
		module_specification =
		{
			module_slots = 3
		},
		allowed_effects = {"speed", "productivity", "pollution"}
	},
	{
		type = "assembling-machine",
		name = "electric-mint",
		icon = "__morebobs__/graphics/icons/mint2.png",
		icon_size=64,
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "electric-mint"},
		subgroup="production-machine",
		order="tu-b-02",
		max_health = 500,
		corpse = "big-remnants",
		dying_explosion = "medium-explosion",
		resistances =
		{
			{
				type = "fire",
				percent = 70
			}
		},
		open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
		close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
		vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		working_sound =
		{
		  sound =
		  {
			filename = "__base__/sound/electric-furnace.ogg",
			volume = 0.7
		  },
		  apparent_volume = 1.5
		},
		collision_box = {{-1.9, -1.9}, {1.9, 1.9}},
		selection_box = {{-2, -2}, {2, 2}},
		fast_replaceable_group = "assembling-machine",
		animation =
		{
			layers =
			{
				{
					filename = "__morebobs__/graphics/entity/mint/mint2.png",
					priority = "high",
					width = 169,
					height = 145,
					frame_count = 1,
					line_length = 1,
					shift = {-0.15, 0.05},
					hr_version =
					{
						filename = "__morebobs__/graphics/entity/mint/mint2.png",
						priority = "high",
						width = 169,
						height = 145,
						frame_count = 1,
						line_length = 1,
						shift = {-0.15, 0.05},
					}
				},
				{
					filename = "__morebobs__/graphics/entity/mint/mint2.png",
					priority = "high",
					width = 169,
					height = 145,
					frame_count = 1,
					line_length = 1,
					draw_as_shadow = true,
					shift = {-0.15, 0.05},
					hr_version =
					{
						filename = "__morebobs__/graphics/entity/mint/mint2.png",
						priority = "high",
						width = 169,
						height = 145,
						frame_count = 1,
						line_length = 1,
						draw_as_shadow = true,
						shift = {-0.15, 0.05},
					}
				},
			},
		},
		crafting_categories = {"tu-minting"},
		crafting_speed = 1.25,
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			emissions = 0.03 / 3.5
		},
		energy_usage = "210kW",
		ingredient_count = 6,
		module_specification =
		{
			module_slots = 3
		},
		allowed_effects = {"speed", "productivity", "pollution"}
	},
})

if bobmods then
	if bobmods.plates then
		bobmods.lib.recipe.add_ingredient("tu-coin-3", {"silver-plate", 1})
		bobmods.lib.recipe.add_ingredient("tu-coin-4", {"silver-plate", 1})
		bobmods.lib.recipe.add_ingredient("tu-coin-4", {"gold-plate", 1})
	end
	if data.raw["item"]["alien-artifact"] then
		bobmods.lib.recipe.add_ingredient("tu-coin-1", {"alien-artifact", 1})
		bobmods.lib.recipe.add_ingredient("tu-coin-2", {"alien-artifact", 3})
		bobmods.lib.recipe.add_ingredient("tu-coin-3", {"alien-artifact", 5})
		bobmods.lib.recipe.add_ingredient("tu-coin-4", {"alien-artifact", 5})
	end
end

if aai_industry == true then
	table.insert(data.raw["recipe"]["burner-mint"].normal.ingredients,{"motor", 1})
	table.insert(data.raw["recipe"]["burner-mint"].expensive.ingredients,{"motor", 3})
	table.insert(data.raw["recipe"]["electric-mint"].normal.ingredients,{"electric-motor", 1})
	table.insert(data.raw["recipe"]["electric-mint"].expensive.ingredients,{"electric-motor", 3})
	table.insert(data.raw["technology"]["electricity"].effects,{type="unlock-recipe",recipe="electric-mint"})
else
	data.raw["recipe"]["electric-mint"].normal.enabled = true
	data.raw["recipe"]["electric-mint"].expensive.enabled = true
end