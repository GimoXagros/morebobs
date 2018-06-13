data:extend({
	--main-base
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
	--supply_box
  {
    type = "capsule",
    name = "supply_box_b",
    icon = "__morebobs__/graphics/icons/supply_box_b.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    capsule_action =
    {
      type = "use-on-self",
      attack_parameters =
      {
        type = "projectile",
        ammo_category = "capsule",
        cooldown = 30,
        projectile_creation_distance = 0.0,
        range = 0,
        ammo_type =
        {

          category = "capsule",
          target_type = "position",
          action =
          {
            type = "direct",
            action_delivery =
            {
              type = "instant",
              target_effects = 
              {
                {
                  type = "create-entity",
                  entity_name = "open_supply_box_b",
                  trigger_created_entity = true
                }
              }
            }
          }
        }
      }
    },
    subgroup = "tank-ammo-infantry",
    order = "b-02[supply_box_b]",
    stack_size = 5
  },
  {
    type = "capsule",
    name = "supply_box_g",
    icon = "__morebobs__/graphics/icons/supply_box_g.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    capsule_action =
    {
      type = "use-on-self",
      attack_parameters =
      {
        type = "projectile",
        ammo_category = "capsule",
        cooldown = 30,
        projectile_creation_distance = 0.0,
        range = 0,
        ammo_type =
        {

          category = "capsule",
          target_type = "position",
          action =
          {
            type = "direct",
            action_delivery =
            {
              type = "instant",
              target_effects = 
              {
                {
                  type = "create-entity",
                  entity_name = "open_supply_box_g",
                  trigger_created_entity = true
                }
              }
            }
          }
        }
      }
    },
    subgroup = "tank-ammo-infantry",
    order = "b-03[supply_box_g]",
    stack_size = 5
  },
  {
    type = "capsule",
    name = "supply_box_y",
    icon = "__morebobs__/graphics/icons/supply_box_y.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    capsule_action =
    {
      type = "use-on-self",
      attack_parameters =
      {
        type = "projectile",
        ammo_category = "capsule",
        cooldown = 30,
        projectile_creation_distance = 0.0,
        range = 0,
        ammo_type =
        {

          category = "capsule",
          target_type = "position",
          action =
          {
            type = "direct",
            action_delivery =
            {
              type = "instant",
              target_effects = 
              {
                {
                  type = "create-entity",
                  entity_name = "open_supply_box_y",
                  trigger_created_entity = true
                }
              }
            }
          }
        }
      }
    },
    subgroup = "tank-ammo-infantry",
    order = "b-04[supply_box_y]",
    stack_size = 5
  },
	{
		type = "explosion",
		name = "open_supply_box_b",
		flags = {"not-on-map"},
		animations =
		{
			{
				filename = "__morebobs__/graphics/icons/null.png",
				priority = "extra-high",
				width = 32,
				height = 32,
				frame_count = 1,
				--shift = {-0.56, -0.96},
				animation_speed = 0.5
			}
		},
		sound =
		{
			aggregation =
			{
				max_count = 1,
				remove = true
			},
			variations =
			{
				{
					filename = "__morebobs__/sounds/box.ogg",
					volume = 0.8
				},
			}
		},
	},
	{
		type = "explosion",
		name = "open_supply_box_g",
		flags = {"not-on-map"},
		animations =
		{
			{
				filename = "__morebobs__/graphics/icons/null.png",
				priority = "extra-high",
				width = 32,
				height = 32,
				frame_count = 1,
				--shift = {-0.56, -0.96},
				animation_speed = 0.5
			}
		},
		sound =
		{
			aggregation =
			{
				max_count = 1,
				remove = true
			},
			variations =
			{
				{
					filename = "__morebobs__/sounds/box.ogg",
					volume = 0.8
				},
			}
		},
	},
	{
		type = "explosion",
		name = "open_supply_box_y",
		flags = {"not-on-map"},
		animations =
		{
			{
				filename = "__morebobs__/graphics/icons/null.png",
				priority = "extra-high",
				width = 32,
				height = 32,
				frame_count = 1,
				--shift = {-0.56, -0.96},
				animation_speed = 0.5
			}
		},
		sound =
		{
			aggregation =
			{
				max_count = 1,
				remove = true
			},
			variations =
			{
				{
					filename = "__morebobs__/sounds/box.ogg",
					volume = 0.8
				},
			}
		},
	},
})

--armor
local NAME = "tuonela-modular-armor"
local tuonela_armor = table.deepcopy(data.raw["armor"]["modular-armor"])
local tuonela_armor_ani = {
	armors = {"tuonela-modular-armor"},
	idle =
	{
		layers =
		{
			playeranimations.level1.idle,
			playeranimations.level1.idle_mask,
			playeranimations.level3addon.idle,
			playeranimations.level3addon.idle_mask,
			playeranimations.level1.idle_shadow,
		}
	},
	idle_with_gun =
	{
		layers =
		{
			playeranimations.level1.idle_gun,
			playeranimations.level1.idle_gun_mask,
			playeranimations.level3addon.idle_gun,
			playeranimations.level3addon.idle_gun_mask,
			playeranimations.level1.idle_gun_shadow,
		}
	},
	mining_with_hands =
	{
		layers =
		{
			playeranimations.level1.mining_hands,
			playeranimations.level1.mining_hands_mask,
			playeranimations.level3addon.mining_hands,
			playeranimations.level3addon.mining_hands_mask,
			playeranimations.level1.mining_hands_shadow,
		}
	},
	mining_with_tool =
	{
		layers =
		{
			playeranimations.level1.mining_tool,
			playeranimations.level1.mining_tool_mask,
			playeranimations.level3addon.mining_tool,
			playeranimations.level3addon.mining_tool_mask,
			playeranimations.level1.mining_tool_shadow,
		}
	},
	running_with_gun =
	{
		layers =
		{
			playeranimations.level1.running_gun,
			playeranimations.level1.running_gun_mask,
			playeranimations.level3addon.running_gun,
			playeranimations.level3addon.running_gun_mask,
			playeranimations.level1.running_gun_shadow,
		}
	},
	running =
	{
		layers =
		{
			playeranimations.level1.running,
			playeranimations.level1.running_mask,
			playeranimations.level3addon.running,
			playeranimations.level3addon.running_mask,
			playeranimations.level1.running_shadow,
		}
	}
} 
tuonela_armor.name = NAME
tuonela_armor.localised_name = {"item-name.modular-armor"}
tuonela_armor.resistances =
{
	{
		type = "physical",
		decrease = 6,
		percent = 30
	},
	{
		type = "explosion",
		decrease = 20,
		percent = 30
	},
	{
		type = "acid",
		decrease = 3,
		percent = 30
	},
	{
		type = "fire",
		decrease = 0,
		percent = 30
	}
}
tuonela_armor.durability = 5000
tuonela_armor.inventory_size_bonus = 5

data:extend({
  tuonela_armor
})

table.insert(data.raw.player.player.animations, tuonela_armor_ani)

if mods["bobclasses"] then
	table.insert(data.raw["player"]["bob-player-miner"].animations, tuonela_armor_ani)
	table.insert(data.raw["player"]["bob-player-fighter"].animations, tuonela_armor_ani)
	table.insert(data.raw["player"]["bob-player-builder"].animations, tuonela_armor_ani)
end

data.raw["character-corpse"]["character-corpse"].armor_picture_mapping["tuonela-modular-armor"] = not data.is_demo and 3 or nil