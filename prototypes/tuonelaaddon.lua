data:extend({
  {
    type = "item",
    name = "rescue-signal-generator",
    icon = "__morebobs__/graphics/icons/rescue-signal-generator.png",
    flags = {"goes-to-quickbar"},
    subgroup = "defensive-structure",
    order = "f[radar]-f[big-radar-1-3]",
    place_result = "rescue-signal-generator",	
    stack_size = 1,
	icon_size=32
  },
})

data:extend({
  {
		type = "radar",
		name = "rescue-signal-generator",
		icon = "__morebobs__/graphics/icons/rescue-signal-generator.png",
		icon_size=32,
		flags = {"placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "rescue-signal-generator"},
		max_health = 5000, -- 수정할 것
		corpse = "big-remnants",
		attack_reaction =
    {
      {
				--how far the mirroring works
        range = 20,
				--what kind of damage triggers the mirroring
				--if not present then anything triggers the mirroring
				damage_type = "physical",
				--caused damage will be multiplied by this and added to the subsequent damages
				reaction_modifier = 1,
				action =
				{
					type = "direct",
					action_delivery =
					{
						type = "instant",
						target_effects =
						{
							type = "damage",
							--always use at least 0.1 damage
							damage = {amount = 10, type = "physical"}
						}
					}
				},
			}
    },
    resistances =
    {
			{
				type = "fire",
				percent = 70
			},
			{
				type = "impact",
				percent = 30
			}
    },
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    energy_per_sector = "100MJ",
    max_distance_of_sector_revealed = 10, -- 수정할 것
    max_distance_of_nearby_sector_revealed = 10, -- 수정할 것
    energy_per_nearby_scan = "100MJ",
    energy_source =
    {
      type = "electric",
      emissions = 0.015 / 1.5,
      usage_priority = "secondary-input"
    },
    energy_usage = "10MW",
    pictures =
    {
      filename = "__morebobs__/graphics/entity/rsg/rescue-signal-generator.png",
      priority = "low",
      width = 126,
      height = 180,
      apply_projection = false,
      direction_count = 64,
      line_length = 8,
      shift = {0.75, -1.75},
			scale = 5/3*0.925,
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.8 },
    working_sound =
    {
      sound =
			{
        {
          filename = "__morebobs__/sounds/rescue-signal-generator.ogg"
        }
      },
      apparent_volume = 2,
    },
    radius_minimap_visualisation_color = { r = 0.059, g = 0.092, b = 0.235, a = 0.275 },
  },
})

data:extend({
 {
		type = "recipe",
		name = "rescue-signal-generator",
		enabled = "false",
		ingredients =
		{
			{"radar", 1000},
			{"advanced-circuit", 2000},
			{"processing-unit", 1000},
			{"iron-gear-wheel", 4000},
			{"steel-plate", 2000}
		},
		energy_required = 30000,
		result = "rescue-signal-generator"
  },
})