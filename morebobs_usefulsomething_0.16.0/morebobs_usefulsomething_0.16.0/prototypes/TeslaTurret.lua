local range = 25
local attackspeed = 60 / 4

data:extend({
	-- RECIPE
	{
		type = "recipe",
		name = "tesla-turret",
		enabled = false,
		energy_required = 25,
		ingredients = { },
		result = "tesla-turret"
	},
	-- ITEM
	{
		type = "item",
		name = "tesla-turret",
		icon = "__morebobs_usefulsomething__/graphics/entity/tesla-turret/tesla-turret-icon.png",
		icon_size = 140,
		flags = {"goes-to-quickbar"},
		subgroup = "defensive-structure",
		order = "b[turret]-b[tesla-turret]",
		place_result = "tesla-turret",
		stack_size = 50
	},
	-- TECHNOLOGY
	{
		type = "technology",
		name = "tesla-turret",
		icon = "__morebobs_usefulsomething__/graphics/entity/tesla-turret/tesla-turret-icon.png",
		icon_size = 140,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "tesla-turret"
			}
		},
		prerequisites = {"laser-turrets", "advanced-electronics-2"},
		unit =
		{
			time = 30,
			count = 250,
			ingredients =
			{
				{"science-pack-1", 1},
				{"science-pack-2", 1},
				{"science-pack-3", 1},
				{"military-science-pack", 1}
			}
		},
		order = "a-j-b"
	}
})

-- == BEAM ==
local body = {}
for i=1,6 do
	table.insert(body, {
		filename = "__base__/graphics/entity/beam/beam-body-"..i..".png",
		line_length = 16,
		width = 45,
		height = 39,
		frame_count = 16,
		blend_mode = beam_blend_mode
	})
end

data:extend({
	{
		type = "beam",
		name = "tesla-lightning",
		flags = {"not-on-map"},
		width = 1,
		damage_interval = attackspeed,
		light = {intensity = 0.9, size = 30},
		working_sound =
		{
			{
				filename = "__base__/sound/fight/electric-beam.ogg",
				volume = 0.7
			}
		},
		action =
		{
			type = "direct",
			action_delivery =
			{
				type = "instant",
				target_effects =
				{
					{
						type = "damage",
						damage = { amount = 40, type = "electric"}
					}
				}
			}
		},
		-- BEAM GRAPHICS
		start = 
		{ 
			filename = "__base__/graphics/entity/beam/tileable-beam-START.png",
			line_length = 4,
			width = 52,
			height = 40,
			frame_count = 16,
			axially_symmetrical = false,
			direction_count = 1,
			shift = {-0.03125, 0},
			hr_version = {
				filename = "__base__/graphics/entity/beam/hr-tileable-beam-START.png",
				line_length = 4,
				width = 94,
				height = 66,
				frame_count = 16,
				axially_symmetrical = false,
				direction_count = 1,
				shift = {0.53125, 0},
				scale = 0.5,
			}
		},
		ending = 
		{ 
			filename = "__base__/graphics/entity/beam/tileable-beam-END.png",
			line_length = 4,
			width = 49,
			height = 54,
			frame_count = 16,
			axially_symmetrical = false,
			direction_count = 1,
			shift = {-0.046875, 0},
			hr_version = { 
				filename = "__base__/graphics/entity/beam/hr-tileable-beam-END.png",
				line_length = 4,
				width = 91,
				height = 93,
				frame_count = 16,
				axially_symmetrical = false,
				direction_count = 1,
				shift = {-0.078125, -0.046875},
				scale = 0.5,
			} 
		},
		head = {
			filename = "__base__/graphics/entity/beam/beam-head.png",
			line_length = 16,
			tint = {r=0.0, g=0.98, b=1.0},
			frame_count = 16,
			width = 45,
			height = 39,
			priority = "high",
			animation_speed = 0.1,
			blend_mode = "additive-soft"
		},
		tail = {
			filename = "__base__/graphics/entity/beam/beam-tail.png",
			line_length = 16,
			tint = {r=0.0, g=0.98, b=1.0},
			frame_count = 16,
			width = 45,
			height = 39,
			priority = "high",
			animation_speed = 0.1,
			blend_mode = "additive-soft"
		},
		body = body
	}
})

-- == ENTITY ==
local function animation(name, frames, width, height)
	return {
		layers =
		{
			{
				filename =  "__morebobs_usefulsomething__/graphics/entity/tesla-turret/tesla-turret-"..(name or "animation")..".png",
				priority = "medium",
				width = width or 244,
				height = height or 204,
				frame_count = frames or 10,
				line_length = 7,
				run_mode = "forward",
				axially_symmetrical = false,
				direction_count = 1,
				shift = {0, -0.6}
			}
		}
	}
end

local function box(x, y, x2, y2)
	return { {-x, -(y or x)}, {x2 or x, y2 or y or x} }
end

local drawing_box = box(100, 0, 0, 0)
local collision_box = box(1.2)
local selection_box = box(1.3)

local function make_tesla_sounds()
    return
    {
      {
        filename = "__morebobs_usefulsomething__/sounds/fight/zap-1.ogg",
        volume = 0.6
      },
      {
        filename = "__morebobs_usefulsomething__/sounds/fight/zap-2.ogg",
        volume = 0.6
      },
      {
        filename = "__morebobs_usefulsomething__/sounds/fight/zap-3.ogg",
        volume = 0.6
      }
    }
end

data:extend({
	{
		type = "electric-turret",
		name = "tesla-turret",
		icon = "__morebobs_usefulsomething__/graphics/entity/tesla-turret/tesla-turret-icon.png",
		icon_size = 140,
		flags = {"placeable-player", "placeable-enemy", "player-creation"},
		minable = {mining_time = 0.5, result = "tesla-turret"},
		max_health = 3000,
		corpse = "tesla-turret-stump",
		collision_box = collision_box,
		selection_box = selection_box,
		drawing_box = drawing_box,
		dying_explosion = "medium-explosion",
		folded_speed = 0.04,
		preparing_speed = 0.07,
		prepared_speed = 0.1,
		starting_attack_speed = 0.1,
		attacking_speed = 0.1,
		ending_attack_speed = 0.1,
		folding_speed = 0.07,
		energy_source =
		{
			type = "electric",
			buffer_capacity = "10MJ",
			input_flow_limit = "50MW",
			drain = "50kW",
			usage_priority = "primary-input"
		},

		folded_animation = animation(),
		preparing_animation = animation(),
		prepared_animation = animation(),
		folding_animation = animation(),
		base_picture = animation("base-shadow", 1),

		vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
		attack_parameters =
		{
			type = "beam",
			ammo_category = "electric",
			cooldown = attackspeed,
			range = range,
			ammo_type =
			{
				category = "laser-turret",
				energy_consumption = "1500kJ",
				action =
				{
					type = "direct",
					action_delivery =
					{
						type = "beam",
						beam = "tesla-lightning",
						max_length = range,
						duration = 15,
						source_offset = {0, -2}
					}
				}
			},
			sound = make_tesla_sounds()
		},
		call_for_help_radius = 40
	},
	-- CORPSE
	{
		type = "corpse",
		name = "tesla-turret-stump",
		icon = "__base__/graphics/icons/remnants.png",
		icon_size = 32,
		flags = {"placeable-neutral", "building-direction-8-way", "not-on-map"},
		collision_box = collision_box,
		selection_box = selection_box,
		drawing_box = drawing_box,
		tile_width = 1,
		tile_height = 2,
		selectable_in_game = false,
		subgroup = "remnants",
		order="d[remnants]-a[custom]-c[tesla-turret]",
		time_before_removed = 60 * 60 * 10, -- 10 minutes
		final_render_layer = "remnants",
		animation =
		{
			{
				width = 240,
				height = 200,
				frame_count = 1,
				direction_count = 1,
				filename = "__morebobs_usefulsomething__/graphics/entity/tesla-turret/tesla-turret-stump2.png"
			}
		}
	}
})

