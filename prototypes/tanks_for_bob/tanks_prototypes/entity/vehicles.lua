--Battle Tanks--
data:extend({  
	--flame-tank
  {
    type = "car",
    name = "flame-tank",
		icons =
		{
			{ icon = "__base__/graphics/icons/tank.png" },
			{ icon = "__morebobs__/graphics/icons/tank/type-flame.png" }
		},
		icon = "__base__/graphics/icons/tank.png",
    icon_size = 32,
    flags = {"pushable", "placeable-neutral", "player-creation", "placeable-off-grid"},
    minable = {mining_time = 1, result = "flame-tank"},
    mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
    max_health = 2500,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    alert_icon_shift = util.by_pixel(-4, -13),
    immune_to_tree_impacts = true,
    energy_per_hit_point = 0.5,
    resistances =
    {
      {
        type = "fire",
        decrease = 95,
        percent = 95
      },
      {
        type = "physical",
        decrease = 25,
        percent = 45
      },
      {
        type = "impact",
        decrease = 50,
        percent = 60
      },
      {
        type = "explosion",
        decrease = 30,
        percent = 45
      },
      {
        type = "acid",
        decrease = 20,
        percent = 40
      }
    },
    collision_box = {{-0.9, -1.3}, {0.9, 1.3}},
    selection_box = {{-0.9, -1.3}, {0.9, 1.3}},
    effectivity = 0.5,
    braking_power = "300kW",
    burner =
    {
      fuel_category = "chemical",
      effectivity = 0.55,
      fuel_inventory_size = 2,
      smoke =
      {
        {
          name = "tank-smoke",
          deviation = {0.25, 0.25},
          frequency = 50,
          position = {0, 1.5},
          starting_frame = 0,
          starting_frame_deviation = 60
        }
      }
    },
    consumption = "800kW",
    terrain_friction_modifier = 0.2,
    friction = 0.002,
    light =
    {
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "extra-high",
          flags = { "light" },
          scale = 2,
          width = 200,
          height = 200,
        },
        shift = {-0.6, -14},
        size = 2,
        intensity = 0.6,
        color = {r = 0.9, g = 1.0, b = 1.0}
      },
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "extra-high",
          flags = { "light" },
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {0.6, -14},
        size = 2,
        intensity = 0.6,
        color = {r = 0.9, g = 1.0, b = 1.0}
      }
    },
    animation =
    {
      layers =
      {
        {
          priority = "low",
          width = 135,
          height = 106,
          frame_count = 2,
          direction_count = 64,
          shift = util.by_pixel(-4.5, -10),
          animation_speed = 8,
          max_advance = 1,
          stripes =
          {
						{
							filename = "__base__/graphics/entity/tank/tank-base-1.png",
							width_in_frames = 2,
							height_in_frames = 16,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-2.png",
							width_in_frames = 2,
							height_in_frames = 16,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-3.png",
							width_in_frames = 2,
							height_in_frames = 16,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-4.png",
							width_in_frames = 2,
							height_in_frames = 16,
						}
          },
          hr_version = {
            priority = "low",
            width = 269,
            height = 212,
            frame_count = 2,
            direction_count = 64,
            shift = util.by_pixel(-4.75, -10),
            animation_speed = 8,
            max_advance = 1,
            stripes =
            {
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-1.png",
								width_in_frames = 2,
								height_in_frames = 16,
							},
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-2.png",
								width_in_frames = 2,
								height_in_frames = 16,
							},
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-3.png",
								width_in_frames = 2,
								height_in_frames = 16,
							},
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-4.png",
								width_in_frames = 2,
								height_in_frames = 16,
							}
            },
            scale = 0.5
          }
        },
        {
          priority = "low",
          width = 104,
          height = 84,
          frame_count = 2,
          apply_runtime_tint = true,
          direction_count = 64,
          shift = util.by_pixel(-5, -21),
          max_advance = 1,
          line_length = 2,
          stripes = util.multiplystripes(2,
          {
						{
							filename = "__base__/graphics/entity/tank/tank-base-mask-1.png",
							width_in_frames = 1,
							height_in_frames = 22,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-mask-2.png",
							width_in_frames = 1,
							height_in_frames = 22,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-mask-3.png",
							width_in_frames = 1,
							height_in_frames = 20,
						},
          }),
          hr_version =
          {
            priority = "low",
            width = 207,
            height = 166,
            frame_count = 2,
            apply_runtime_tint = true,
            direction_count = 64,
            shift = util.by_pixel(-4.75, -21),
            max_advance = 1,
            line_length = 2,
            stripes = util.multiplystripes(2,
            {
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-mask-1.png",
								width_in_frames = 1,
								height_in_frames = 22,
							},
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-mask-2.png",
								width_in_frames = 1,
								height_in_frames = 22,
							},
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-mask-3.png",
								width_in_frames = 1,
								height_in_frames = 20,
							},
            }),
            scale = 0.5
          }
        },
        {
          priority = "low",
          width = 151,
          height = 98,
          frame_count = 2,
          draw_as_shadow = true,
          direction_count = 64,
          shift = util.by_pixel(17.5, 7),
          max_advance = 1,
          stripes = util.multiplystripes(2,
          {
						{
							filename = "__base__/graphics/entity/tank/tank-base-shadow-1.png",
							width_in_frames = 1,
							height_in_frames = 16,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-shadow-2.png",
							width_in_frames = 1,
							height_in_frames = 16,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-shadow-3.png",
							width_in_frames = 1,
							height_in_frames = 16,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-shadow-4.png",
							width_in_frames = 1,
							height_in_frames = 16,
						}
          }),
          hr_version =
          {
            priority = "low",
            width = 301,
            height = 194,
            frame_count = 2,
            draw_as_shadow = true,
            direction_count = 64,
            shift = util.by_pixel(17.75, 7),
            max_advance = 1,
            stripes = util.multiplystripes(2,
            {
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-shadow-1.png",
								width_in_frames = 1,
								height_in_frames = 16,
							},
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-shadow-2.png",
								width_in_frames = 1,
								height_in_frames = 16,
							},
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-shadow-3.png",
								width_in_frames = 1,
								height_in_frames = 16,
							},
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-shadow-4.png",
								width_in_frames = 1,
								height_in_frames = 16,
							}
            }),
            scale = 0.5
          }
        }
      }
    },
    turret_animation =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/tank/tank-turret.png",
          priority = "low",
          line_length = 8,
          width = 90,
          height = 67,
          frame_count = 1,
          direction_count = 64,
          shift = util.by_pixel(-5, -34.5),
          animation_speed = 8,
          hr_version =
          {
            filename = "__base__/graphics/entity/tank/hr-tank-turret.png",
            priority = "low",
            line_length = 8,
            width = 179,
            height = 132,
            frame_count = 1,
            direction_count = 64,
            shift = util.by_pixel(-4.75, -34.5),
            animation_speed = 8,
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/tank/tank-turret-mask.png",
          priority = "low",
          line_length = 8,
          width = 36,
          height = 33,
          frame_count = 1,
          apply_runtime_tint = true,
          direction_count = 64,
          shift = util.by_pixel(-5, -35.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/tank/hr-tank-turret-mask.png",
            priority = "low",
            line_length = 8,
            width = 72,
            height = 66,
            frame_count = 1,
            apply_runtime_tint = true,
            direction_count = 64,
            shift = util.by_pixel(-5, -35.5),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/tank/tank-turret-shadow.png",
          priority = "low",
          line_length = 8,
          width = 97,
          height = 67,
          frame_count = 1,
          draw_as_shadow = true,
          direction_count = 64,
          shift = util.by_pixel(51.5, 6.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/tank/hr-tank-turret-shadow.png",
            priority = "low",
            line_length = 8,
            width = 193,
            height = 134,
            frame_count = 1,
            draw_as_shadow = true,
            direction_count = 64,
            shift = util.by_pixel(51.25, 6.5),
            scale = 0.5
          }
        }
      }
    },
    turret_rotation_speed = 0.35 / 60,
    turret_return_timeout = 300,
    stop_trigger_speed = 0.2,
    sound_no_fuel =
    {
      {
        filename = "__base__/sound/fight/tank-no-fuel-1.ogg",
        volume = 0.6
      },
    },
    stop_trigger =
    {
      {
        type = "play-sound",
        sound =
        {
          {
            filename = "__base__/sound/car-breaks.ogg",
            volume = 0.6
          },
        }
      },
    },
    sound_minimum_speed = 0.15;
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/fight/tank-engine.ogg",
        volume = 0.6
      },
      activate_sound =
      {
        filename = "__base__/sound/fight/tank-engine-start.ogg",
        volume = 0.6
      },
      deactivate_sound =
      {
        filename = "__base__/sound/fight/tank-engine-stop.ogg",
        volume = 0.6
      },
      match_speed_to_activity = true,
    },
    open_sound = { filename = "__base__/sound/car-door-open.ogg", volume=0.7 },
    close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
    rotation_speed = 0.0055,
    tank_driving = true,
    weight = 20000,
    inventory_size = 40,
    guns = { "tank-flamer", "tank-flamer-2" },
  },
	--flame-tank 2 tier
  {
    type = "car",
    name = "flame-tank-wlsk",
		icons =
		{
			{ icon = "__base__/graphics/icons/tank.png" },
			{ icon = "__morebobs__/graphics/icons/tank/type-flame.png" },
			{ icon = "__morebobs__/graphics/icons/tank/tier-w.png" }
		},
		icon = "__base__/graphics/icons/tank.png",
    icon_size = 32,
    flags = {"pushable", "placeable-neutral", "player-creation", "placeable-off-grid"},
    minable = {mining_time = 1, result = "flame-tank-wlsk"},
    mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
    max_health = 3500,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    alert_icon_shift = util.by_pixel(-4, -13),
    immune_to_tree_impacts = true,
    energy_per_hit_point = 0.5,
    resistances =
    {
      {
        type = "fire",
        decrease = 95,
        percent = 95
      },
      {
        type = "physical",
        decrease = 35,
        percent = 55
      },
      {
        type = "impact",
        decrease = 50,
        percent = 60
      },
      {
        type = "explosion",
        decrease = 30,
        percent = 45
      },
      {
        type = "acid",
        decrease = 25,
        percent = 45
      }
    },
    collision_box = {{-0.9, -1.3}, {0.9, 1.3}},
    selection_box = {{-0.9, -1.3}, {0.9, 1.3}},
    effectivity = 0.6,
    braking_power = "300kW",
    burner =
    {
      fuel_category = "chemical",
      effectivity = 0.65,
      fuel_inventory_size = 2,
      smoke =
      {
        {
          name = "tank-smoke",
          deviation = {0.25, 0.25},
          frequency = 50,
          position = {0, 1.5},
          starting_frame = 0,
          starting_frame_deviation = 60
        }
      }
    },
    consumption = "800kW",
    terrain_friction_modifier = 0.2,
    friction = 0.002,
    light =
    {
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "extra-high",
          flags = { "light" },
          scale = 2,
          width = 200,
          height = 200,
        },
        shift = {-0.6, -14},
        size = 2,
        intensity = 0.6,
        color = {r = 0.9, g = 1.0, b = 1.0}
      },
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "extra-high",
          flags = { "light" },
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {0.6, -14},
        size = 2,
        intensity = 0.6,
        color = {r = 0.9, g = 1.0, b = 1.0}
      }
    },
    animation =
    {
      layers =
      {
        {
          priority = "low",
          width = 135,
          height = 106,
          frame_count = 2,
          direction_count = 64,
          shift = util.by_pixel(-4.5, -10),
          animation_speed = 8,
          max_advance = 1,
          stripes =
          {
						{
							filename = "__base__/graphics/entity/tank/tank-base-1.png",
							width_in_frames = 2,
							height_in_frames = 16,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-2.png",
							width_in_frames = 2,
							height_in_frames = 16,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-3.png",
							width_in_frames = 2,
							height_in_frames = 16,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-4.png",
							width_in_frames = 2,
							height_in_frames = 16,
						}
          },
          hr_version = {
            priority = "low",
            width = 269,
            height = 212,
            frame_count = 2,
            direction_count = 64,
            shift = util.by_pixel(-4.75, -10),
            animation_speed = 8,
            max_advance = 1,
            stripes =
            {
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-1.png",
								width_in_frames = 2,
								height_in_frames = 16,
							},
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-2.png",
								width_in_frames = 2,
								height_in_frames = 16,
							},
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-3.png",
								width_in_frames = 2,
								height_in_frames = 16,
							},
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-4.png",
								width_in_frames = 2,
								height_in_frames = 16,
							}
            },
            scale = 0.5
          }
        },
        {
          priority = "low",
          width = 104,
          height = 84,
          frame_count = 2,
          apply_runtime_tint = true,
          direction_count = 64,
          shift = util.by_pixel(-5, -21),
          max_advance = 1,
          line_length = 2,
          stripes = util.multiplystripes(2,
          {
						{
							filename = "__base__/graphics/entity/tank/tank-base-mask-1.png",
							width_in_frames = 1,
							height_in_frames = 22,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-mask-2.png",
							width_in_frames = 1,
							height_in_frames = 22,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-mask-3.png",
							width_in_frames = 1,
							height_in_frames = 20,
						},
          }),
          hr_version =
          {
            priority = "low",
            width = 207,
            height = 166,
            frame_count = 2,
            apply_runtime_tint = true,
            direction_count = 64,
            shift = util.by_pixel(-4.75, -21),
            max_advance = 1,
            line_length = 2,
            stripes = util.multiplystripes(2,
            {
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-mask-1.png",
								width_in_frames = 1,
								height_in_frames = 22,
							},
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-mask-2.png",
								width_in_frames = 1,
								height_in_frames = 22,
							},
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-mask-3.png",
								width_in_frames = 1,
								height_in_frames = 20,
							},
            }),
            scale = 0.5
          }
        },
        {
          priority = "low",
          width = 151,
          height = 98,
          frame_count = 2,
          draw_as_shadow = true,
          direction_count = 64,
          shift = util.by_pixel(17.5, 7),
          max_advance = 1,
          stripes = util.multiplystripes(2,
          {
						{
							filename = "__base__/graphics/entity/tank/tank-base-shadow-1.png",
							width_in_frames = 1,
							height_in_frames = 16,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-shadow-2.png",
							width_in_frames = 1,
							height_in_frames = 16,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-shadow-3.png",
							width_in_frames = 1,
							height_in_frames = 16,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-shadow-4.png",
							width_in_frames = 1,
							height_in_frames = 16,
						}
          }),
          hr_version =
          {
            priority = "low",
            width = 301,
            height = 194,
            frame_count = 2,
            draw_as_shadow = true,
            direction_count = 64,
            shift = util.by_pixel(17.75, 7),
            max_advance = 1,
            stripes = util.multiplystripes(2,
            {
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-shadow-1.png",
								width_in_frames = 1,
								height_in_frames = 16,
							},
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-shadow-2.png",
								width_in_frames = 1,
								height_in_frames = 16,
							},
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-shadow-3.png",
								width_in_frames = 1,
								height_in_frames = 16,
							},
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-shadow-4.png",
								width_in_frames = 1,
								height_in_frames = 16,
							}
            }),
            scale = 0.5
          }
        }
      }
    },
    turret_animation =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/tank/tank-turret.png",
          priority = "low",
          line_length = 8,
          width = 90,
          height = 67,
          frame_count = 1,
          direction_count = 64,
          shift = util.by_pixel(-5, -34.5),
          animation_speed = 8,
          hr_version =
          {
            filename = "__base__/graphics/entity/tank/hr-tank-turret.png",
            priority = "low",
            line_length = 8,
            width = 179,
            height = 132,
            frame_count = 1,
            direction_count = 64,
            shift = util.by_pixel(-4.75, -34.5),
            animation_speed = 8,
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/tank/tank-turret-mask.png",
          priority = "low",
          line_length = 8,
          width = 36,
          height = 33,
          frame_count = 1,
          apply_runtime_tint = true,
          direction_count = 64,
          shift = util.by_pixel(-5, -35.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/tank/hr-tank-turret-mask.png",
            priority = "low",
            line_length = 8,
            width = 72,
            height = 66,
            frame_count = 1,
            apply_runtime_tint = true,
            direction_count = 64,
            shift = util.by_pixel(-5, -35.5),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/tank/tank-turret-shadow.png",
          priority = "low",
          line_length = 8,
          width = 97,
          height = 67,
          frame_count = 1,
          draw_as_shadow = true,
          direction_count = 64,
          shift = util.by_pixel(51.5, 6.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/tank/hr-tank-turret-shadow.png",
            priority = "low",
            line_length = 8,
            width = 193,
            height = 134,
            frame_count = 1,
            draw_as_shadow = true,
            direction_count = 64,
            shift = util.by_pixel(51.25, 6.5),
            scale = 0.5
          }
        }
      }
    },
    turret_rotation_speed = 0.35 / 60,
    turret_return_timeout = 300,
    stop_trigger_speed = 0.2,
    sound_no_fuel =
    {
      {
        filename = "__base__/sound/fight/tank-no-fuel-1.ogg",
        volume = 0.6
      },
    },
    stop_trigger =
    {
      {
        type = "play-sound",
        sound =
        {
          {
            filename = "__base__/sound/car-breaks.ogg",
            volume = 0.6
          },
        }
      },
    },
    sound_minimum_speed = 0.15;
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/fight/tank-engine.ogg",
        volume = 0.6
      },
      activate_sound =
      {
        filename = "__base__/sound/fight/tank-engine-start.ogg",
        volume = 0.6
      },
      deactivate_sound =
      {
        filename = "__base__/sound/fight/tank-engine-stop.ogg",
        volume = 0.6
      },
      match_speed_to_activity = true,
    },
    open_sound = { filename = "__base__/sound/car-door-open.ogg", volume=0.7 },
    close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
    rotation_speed = 0.0055,
    tank_driving = true,
    weight = 20000,
    inventory_size = 40,
    guns = { "tank-flamer", "tank-flamer-2" },
  },
	--auto-tank
  {
    type = "car",
    name = "auto-tank",
		icons =
		{
			{ icon = "__base__/graphics/icons/tank.png" },
			{ icon = "__morebobs__/graphics/icons/tank/type-auto.png" },
		},
		icon = "__base__/graphics/icons/tank.png",
    flags = {"pushable", "placeable-neutral", "player-creation", "placeable-off-grid"},
    icon_size = 32,
    minable = {mining_time = 1, result = "auto-tank"},
    mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
    max_health = 2000,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    alert_icon_shift = util.by_pixel(-4, -13),
    immune_to_tree_impacts = true,
    energy_per_hit_point = 0.5,
    resistances =
    {
      {
        type = "fire",
        decrease = 15,
        percent = 50
      },
      {
        type = "physical",
        decrease = 15,
        percent = 30
      },
      {
        type = "impact",
        decrease = 50,
        percent = 60
      },
      {
        type = "explosion",
        decrease = 15,
        percent = 30
      },
      {
        type = "acid",
        decrease = 15,
        percent = 25
      }
    },
    collision_box = {{-0.9, -1.3}, {0.9, 1.3}},
    selection_box = {{-0.9, -1.3}, {0.9, 1.3}},
    effectivity = 0.65,
    braking_power = "500kW",
    burner =
    {
      fuel_category = "chemical",
      effectivity = 0.7,
      fuel_inventory_size = 2,
      smoke =
      {
        {
          name = "tank-smoke",
          deviation = {0.25, 0.25},
          frequency = 50,
          position = {0, 1.5},
          starting_frame = 0,
          starting_frame_deviation = 60
        }
      }
    },
    consumption = "500kW",
    terrain_friction_modifier = 0.2,
    friction = 0.002,
    light =
    {
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "extra-high",
          flags = { "light" },
          scale = 2,
          width = 200,
          height = 200,
        },
        shift = {-0.6, -14},
        size = 2,
        intensity = 0.6,
        color = {r = 0.9, g = 1.0, b = 1.0}
      },
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "extra-high",
          flags = { "light" },
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {0.6, -14},
        size = 2,
        intensity = 0.6,
        color = {r = 0.9, g = 1.0, b = 1.0}
      }
    },
    animation =
    {
      layers =
      {
        {
          priority = "low",
          width = 135,
          height = 106,
          frame_count = 2,
          direction_count = 64,
          shift = util.by_pixel(-4.5, -10),
          animation_speed = 8,
          max_advance = 1,
          stripes =
          {
						{
							filename = "__base__/graphics/entity/tank/tank-base-1.png",
							width_in_frames = 2,
							height_in_frames = 16,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-2.png",
							width_in_frames = 2,
							height_in_frames = 16,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-3.png",
							width_in_frames = 2,
							height_in_frames = 16,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-4.png",
							width_in_frames = 2,
							height_in_frames = 16,
						}
          },
          hr_version = {
            priority = "low",
            width = 269,
            height = 212,
            frame_count = 2,
            direction_count = 64,
            shift = util.by_pixel(-4.75, -10),
            animation_speed = 8,
            max_advance = 1,
            stripes =
            {
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-1.png",
								width_in_frames = 2,
								height_in_frames = 16,
							},
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-2.png",
								width_in_frames = 2,
								height_in_frames = 16,
							},
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-3.png",
								width_in_frames = 2,
								height_in_frames = 16,
							},
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-4.png",
								width_in_frames = 2,
								height_in_frames = 16,
							}
            },
            scale = 0.5
          }
        },
        {
          priority = "low",
          width = 104,
          height = 84,
          frame_count = 2,
          apply_runtime_tint = true,
          direction_count = 64,
          shift = util.by_pixel(-5, -21),
          max_advance = 1,
          line_length = 2,
          stripes = util.multiplystripes(2,
          {
            {
              filename = "__base__/graphics/entity/tank/tank-base-mask-1.png",
              width_in_frames = 1,
              height_in_frames = 22,
            },
            {
              filename = "__base__/graphics/entity/tank/tank-base-mask-2.png",
              width_in_frames = 1,
              height_in_frames = 22,
            },
            {
              filename = "__base__/graphics/entity/tank/tank-base-mask-3.png",
              width_in_frames = 1,
              height_in_frames = 20,
            },
          }),
          hr_version =
          {
            priority = "low",
            width = 207,
            height = 166,
            frame_count = 2,
            apply_runtime_tint = true,
            direction_count = 64,
            shift = util.by_pixel(-4.75, -21),
            max_advance = 1,
            line_length = 2,
            stripes = util.multiplystripes(2,
            {
              {
                filename = "__base__/graphics/entity/tank/hr-tank-base-mask-1.png",
                width_in_frames = 1,
                height_in_frames = 22,
              },
              {
                filename = "__base__/graphics/entity/tank/hr-tank-base-mask-2.png",
                width_in_frames = 1,
                height_in_frames = 22,
              },
              {
                filename = "__base__/graphics/entity/tank/hr-tank-base-mask-3.png",
                width_in_frames = 1,
                height_in_frames = 20,
              },
            }),
            scale = 0.5
          }
        },
        {
          priority = "low",
          width = 151,
          height = 98,
          frame_count = 2,
          draw_as_shadow = true,
          direction_count = 64,
          shift = util.by_pixel(17.5, 7),
          max_advance = 1,
          stripes = util.multiplystripes(2,
          {
						{
							filename = "__base__/graphics/entity/tank/tank-base-shadow-1.png",
							width_in_frames = 1,
							height_in_frames = 16,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-shadow-2.png",
							width_in_frames = 1,
							height_in_frames = 16,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-shadow-3.png",
							width_in_frames = 1,
							height_in_frames = 16,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-shadow-4.png",
							width_in_frames = 1,
							height_in_frames = 16,
						}
          }),
          hr_version =
          {
            priority = "low",
            width = 301,
            height = 194,
            frame_count = 2,
            draw_as_shadow = true,
            direction_count = 64,
            shift = util.by_pixel(17.75, 7),
            max_advance = 1,
            stripes = util.multiplystripes(2,
            {
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-shadow-1.png",
								width_in_frames = 1,
								height_in_frames = 16,
							},
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-shadow-2.png",
								width_in_frames = 1,
								height_in_frames = 16,
							},
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-shadow-3.png",
								width_in_frames = 1,
								height_in_frames = 16,
							},
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-shadow-4.png",
								width_in_frames = 1,
								height_in_frames = 16,
							}
            }),
            scale = 0.5
          }
        }
      }
    },
    turret_animation =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/tank/tank-turret.png",
          priority = "low",
          line_length = 8,
          width = 90,
          height = 67,
          frame_count = 1,
          direction_count = 64,
          shift = util.by_pixel(-5, -34.5),
          animation_speed = 8,
          hr_version =
          {
            filename = "__base__/graphics/entity/tank/hr-tank-turret.png",
            priority = "low",
            line_length = 8,
            width = 179,
            height = 132,
            frame_count = 1,
            direction_count = 64,
            shift = util.by_pixel(-4.75, -34.5),
            animation_speed = 8,
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/tank/tank-turret-mask.png",
          priority = "low",
          line_length = 8,
          width = 36,
          height = 33,
          frame_count = 1,
          apply_runtime_tint = true,
          direction_count = 64,
          shift = util.by_pixel(-5, -35.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/tank/hr-tank-turret-mask.png",
            priority = "low",
            line_length = 8,
            width = 72,
            height = 66,
            frame_count = 1,
            apply_runtime_tint = true,
            direction_count = 64,
            shift = util.by_pixel(-5, -35.5),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/tank/tank-turret-shadow.png",
          priority = "low",
          line_length = 8,
          width = 97,
          height = 67,
          frame_count = 1,
          draw_as_shadow = true,
          direction_count = 64,
          shift = util.by_pixel(51.5, 6.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/tank/hr-tank-turret-shadow.png",
            priority = "low",
            line_length = 8,
            width = 193,
            height = 134,
            frame_count = 1,
            draw_as_shadow = true,
            direction_count = 64,
            shift = util.by_pixel(51.25, 6.5),
            scale = 0.5
          }
        }
      }
    },
    turret_rotation_speed = 0.35 / 60,
    turret_return_timeout = 300,
    stop_trigger_speed = 0.2,
    sound_no_fuel =
    {
      {
        filename = "__base__/sound/fight/tank-no-fuel-1.ogg",
        volume = 0.6
      },
    },
    stop_trigger =
    {
      {
        type = "play-sound",
        sound =
        {
          {
            filename = "__base__/sound/car-breaks.ogg",
            volume = 0.6
          },
        }
      },
    },
    sound_minimum_speed = 0.15;
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/fight/tank-engine.ogg",
        volume = 0.6
      },
      activate_sound =
      {
        filename = "__base__/sound/fight/tank-engine-start.ogg",
        volume = 0.6
      },
      deactivate_sound =
      {
        filename = "__base__/sound/fight/tank-engine-stop.ogg",
        volume = 0.6
      },
      match_speed_to_activity = true,
    },
    open_sound = { filename = "__base__/sound/car-door-open.ogg", volume=0.7 },
    close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
    rotation_speed = 0.0035,
    tank_driving = true,
    weight = 10000,
    inventory_size = 10,
    guns = { "tank-cannon-2", "tank-auto-cannon" },
  },
	--auto-tank 2 tier
  {
    type = "car",
    name = "auto-tank-wlsk",
		icons =
		{
			{ icon = "__base__/graphics/icons/tank.png" },
			{ icon = "__morebobs__/graphics/icons/tank/type-auto.png" },
			{ icon = "__morebobs__/graphics/icons/tank/tier-w.png" }
		},
		icon = "__base__/graphics/icons/tank.png",
    icon_size = 32,
    flags = {"pushable", "placeable-neutral", "player-creation", "placeable-off-grid"},
    mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
    minable = {mining_time = 1, result = "auto-tank-wlsk"},
    max_health = 2500,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    alert_icon_shift = util.by_pixel(-4, -13),
    immune_to_tree_impacts = true,
    energy_per_hit_point = 0.5,
    resistances =
    {
      {
        type = "fire",
        decrease = 15,
        percent = 50
      },
      {
        type = "physical",
        decrease = 15,
        percent = 35
      },
      {
        type = "impact",
        decrease = 50,
        percent = 60
      },
      {
        type = "explosion",
        decrease = 20,
        percent = 35
      },
      {
        type = "acid",
        decrease = 15,
        percent = 35
      }
    },
    collision_box = {{-0.9, -1.3}, {0.9, 1.3}},
    selection_box = {{-0.9, -1.3}, {0.9, 1.3}},
    effectivity = 0.75,
    braking_power = "500kW",
    burner =
    {
      fuel_category = "chemical",
      effectivity = 0.8,
      fuel_inventory_size = 2,
      smoke =
      {
        {
          name = "tank-smoke",
          deviation = {0.25, 0.25},
          frequency = 50,
          position = {0, 1.5},
          starting_frame = 0,
          starting_frame_deviation = 60
        }
      }
    },
    consumption = "500kW",
    terrain_friction_modifier = 0.2,
    friction = 0.002,
    light =
    {
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "extra-high",
          flags = { "light" },
          scale = 2,
          width = 200,
          height = 200,
        },
        shift = {-0.6, -14},
        size = 2,
        intensity = 0.6,
        color = {r = 0.9, g = 1.0, b = 1.0}
      },
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "extra-high",
          flags = { "light" },
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {0.6, -14},
        size = 2,
        intensity = 0.6,
        color = {r = 0.9, g = 1.0, b = 1.0}
      }
    },
    animation =
    {
      layers =
      {
        {
          priority = "low",
          width = 135,
          height = 106,
          frame_count = 2,
          direction_count = 64,
          shift = util.by_pixel(-4.5, -10),
          animation_speed = 8,
          max_advance = 1,
          stripes =
          {
						{
							filename = "__base__/graphics/entity/tank/tank-base-1.png",
							width_in_frames = 2,
							height_in_frames = 16,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-2.png",
							width_in_frames = 2,
							height_in_frames = 16,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-3.png",
							width_in_frames = 2,
							height_in_frames = 16,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-4.png",
							width_in_frames = 2,
							height_in_frames = 16,
						}
          },
          hr_version = {
            priority = "low",
            width = 269,
            height = 212,
            frame_count = 2,
            direction_count = 64,
            shift = util.by_pixel(-4.75, -10),
            animation_speed = 8,
            max_advance = 1,
            stripes =
            {
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-1.png",
								width_in_frames = 2,
								height_in_frames = 16,
							},
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-2.png",
								width_in_frames = 2,
								height_in_frames = 16,
							},
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-3.png",
								width_in_frames = 2,
								height_in_frames = 16,
							},
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-4.png",
								width_in_frames = 2,
								height_in_frames = 16,
							}
            },
            scale = 0.5
          }
        },
        {
          priority = "low",
          width = 104,
          height = 84,
          frame_count = 2,
          apply_runtime_tint = true,
          direction_count = 64,
          shift = util.by_pixel(-5, -21),
          max_advance = 1,
          line_length = 2,
          stripes = util.multiplystripes(2,
          {
            {
              filename = "__base__/graphics/entity/tank/tank-base-mask-1.png",
              width_in_frames = 1,
              height_in_frames = 22,
            },
            {
              filename = "__base__/graphics/entity/tank/tank-base-mask-2.png",
              width_in_frames = 1,
              height_in_frames = 22,
            },
            {
              filename = "__base__/graphics/entity/tank/tank-base-mask-3.png",
              width_in_frames = 1,
              height_in_frames = 20,
            },
          }),
          hr_version =
          {
            priority = "low",
            width = 207,
            height = 166,
            frame_count = 2,
            apply_runtime_tint = true,
            direction_count = 64,
            shift = util.by_pixel(-4.75, -21),
            max_advance = 1,
            line_length = 2,
            stripes = util.multiplystripes(2,
            {
              {
                filename = "__base__/graphics/entity/tank/hr-tank-base-mask-1.png",
                width_in_frames = 1,
                height_in_frames = 22,
              },
              {
                filename = "__base__/graphics/entity/tank/hr-tank-base-mask-2.png",
                width_in_frames = 1,
                height_in_frames = 22,
              },
              {
                filename = "__base__/graphics/entity/tank/hr-tank-base-mask-3.png",
                width_in_frames = 1,
                height_in_frames = 20,
              },
            }),
            scale = 0.5
          }
        },
        {
          priority = "low",
          width = 151,
          height = 98,
          frame_count = 2,
          draw_as_shadow = true,
          direction_count = 64,
          shift = util.by_pixel(17.5, 7),
          max_advance = 1,
          stripes = util.multiplystripes(2,
          {
						{
							filename = "__base__/graphics/entity/tank/tank-base-shadow-1.png",
							width_in_frames = 1,
							height_in_frames = 16,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-shadow-2.png",
							width_in_frames = 1,
							height_in_frames = 16,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-shadow-3.png",
							width_in_frames = 1,
							height_in_frames = 16,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-shadow-4.png",
							width_in_frames = 1,
							height_in_frames = 16,
						}
          }),
          hr_version =
          {
            priority = "low",
            width = 301,
            height = 194,
            frame_count = 2,
            draw_as_shadow = true,
            direction_count = 64,
            shift = util.by_pixel(17.75, 7),
            max_advance = 1,
            stripes = util.multiplystripes(2,
            {
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-shadow-1.png",
								width_in_frames = 1,
								height_in_frames = 16,
							},
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-shadow-2.png",
								width_in_frames = 1,
								height_in_frames = 16,
							},
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-shadow-3.png",
								width_in_frames = 1,
								height_in_frames = 16,
							},
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-shadow-4.png",
								width_in_frames = 1,
								height_in_frames = 16,
							}
            }),
            scale = 0.5
          }
        }
      }
    },
    turret_animation =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/tank/tank-turret.png",
          priority = "low",
          line_length = 8,
          width = 90,
          height = 67,
          frame_count = 1,
          direction_count = 64,
          shift = util.by_pixel(-5, -34.5),
          animation_speed = 8,
          hr_version =
          {
            filename = "__base__/graphics/entity/tank/hr-tank-turret.png",
            priority = "low",
            line_length = 8,
            width = 179,
            height = 132,
            frame_count = 1,
            direction_count = 64,
            shift = util.by_pixel(-4.75, -34.5),
            animation_speed = 8,
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/tank/tank-turret-mask.png",
          priority = "low",
          line_length = 8,
          width = 36,
          height = 33,
          frame_count = 1,
          apply_runtime_tint = true,
          direction_count = 64,
          shift = util.by_pixel(-5, -35.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/tank/hr-tank-turret-mask.png",
            priority = "low",
            line_length = 8,
            width = 72,
            height = 66,
            frame_count = 1,
            apply_runtime_tint = true,
            direction_count = 64,
            shift = util.by_pixel(-5, -35.5),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/tank/tank-turret-shadow.png",
          priority = "low",
          line_length = 8,
          width = 97,
          height = 67,
          frame_count = 1,
          draw_as_shadow = true,
          direction_count = 64,
          shift = util.by_pixel(51.5, 6.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/tank/hr-tank-turret-shadow.png",
            priority = "low",
            line_length = 8,
            width = 193,
            height = 134,
            frame_count = 1,
            draw_as_shadow = true,
            direction_count = 64,
            shift = util.by_pixel(51.25, 6.5),
            scale = 0.5
          }
        }
      }
    },
    turret_rotation_speed = 0.35 / 60,
    turret_return_timeout = 300,
    stop_trigger_speed = 0.2,
    sound_no_fuel =
    {
      {
        filename = "__base__/sound/fight/tank-no-fuel-1.ogg",
        volume = 0.6
      },
    },
    stop_trigger =
    {
      {
        type = "play-sound",
        sound =
        {
          {
            filename = "__base__/sound/car-breaks.ogg",
            volume = 0.6
          },
        }
      },
    },
    sound_minimum_speed = 0.15;
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/fight/tank-engine.ogg",
        volume = 0.6
      },
      activate_sound =
      {
        filename = "__base__/sound/fight/tank-engine-start.ogg",
        volume = 0.6
      },
      deactivate_sound =
      {
        filename = "__base__/sound/fight/tank-engine-stop.ogg",
        volume = 0.6
      },
      match_speed_to_activity = true,
    },
    open_sound = { filename = "__base__/sound/car-door-open.ogg", volume=0.7 },
    close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
    rotation_speed = 0.0035,
    tank_driving = true,
    weight = 10000,
    inventory_size = 10,
    guns = { "tank-cannon-2", "tank-auto-cannon" },
  },
	--nade-tank
  {
    type = "car",
    name = "nade-tank",
		icons =
		{
			{ icon = "__base__/graphics/icons/tank.png" },
			{ icon = "__morebobs__/graphics/icons/tank/type-nade.png" }
		},
		icon = "__base__/graphics/icons/tank.png",
    icon_size = 32,
    flags = {"pushable", "placeable-neutral", "player-creation", "placeable-off-grid"},
    mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
    minable = {mining_time = 1, result = "nade-tank"},
    max_health = 1500,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    alert_icon_shift = util.by_pixel(-4, -13),
    immune_to_tree_impacts = true,
    energy_per_hit_point = 0.5,
    resistances =
    {
      {
        type = "fire",
        decrease = 15,
        percent = 50
      },
      {
        type = "physical",
        decrease = 15,
        percent = 30
      },
      {
        type = "impact",
        decrease = 50,
        percent = 60
      },
      {
        type = "explosion",
        decrease = 15,
        percent = 30
      },
      {
        type = "acid",
        decrease = 10,
        percent = 20
      }
    },
    collision_box = {{-0.9, -1.3}, {0.9, 1.3}},
    selection_box = {{-0.9, -1.3}, {0.9, 1.3}},
    effectivity = 0.65,
    braking_power = "500kW",
    burner =
    {
      fuel_category = "chemical",
      effectivity = 0.65,
      fuel_inventory_size = 2,
      smoke =
      {
        {
          name = "tank-smoke",
          deviation = {0.25, 0.25},
          frequency = 50,
          position = {0, 1.5},
          starting_frame = 0,
          starting_frame_deviation = 60
        }
      }
    },
    consumption = "500kW",
    terrain_friction_modifier = 0.2,
    friction = 0.002,
    light =
    {
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "extra-high",
          flags = { "light" },
          scale = 2,
          width = 200,
          height = 200,
        },
        shift = {-0.6, -14},
        size = 2,
        intensity = 0.6,
        color = {r = 0.9, g = 1.0, b = 1.0}
      },
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "extra-high",
          flags = { "light" },
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {0.6, -14},
        size = 2,
        intensity = 0.6,
        color = {r = 0.9, g = 1.0, b = 1.0}
      }
    },
    animation =
    {
      layers =
      {
        {
          priority = "low",
          width = 135,
          height = 106,
          frame_count = 2,
          direction_count = 64,
          shift = util.by_pixel(-4.5, -10),
          animation_speed = 8,
          max_advance = 1,
          stripes =
          {
						{
							filename = "__base__/graphics/entity/tank/tank-base-1.png",
							width_in_frames = 2,
							height_in_frames = 16,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-2.png",
							width_in_frames = 2,
							height_in_frames = 16,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-3.png",
							width_in_frames = 2,
							height_in_frames = 16,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-4.png",
							width_in_frames = 2,
							height_in_frames = 16,
						}
          },
          hr_version = {
            priority = "low",
            width = 269,
            height = 212,
            frame_count = 2,
            direction_count = 64,
            shift = util.by_pixel(-4.75, -10),
            animation_speed = 8,
            max_advance = 1,
            stripes =
            {
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-1.png",
								width_in_frames = 2,
								height_in_frames = 16,
							},
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-2.png",
								width_in_frames = 2,
								height_in_frames = 16,
							},
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-3.png",
								width_in_frames = 2,
								height_in_frames = 16,
							},
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-4.png",
								width_in_frames = 2,
								height_in_frames = 16,
							}
            },
            scale = 0.5
          }
        },
        {
          priority = "low",
          width = 104,
          height = 84,
          frame_count = 2,
          apply_runtime_tint = true,
          direction_count = 64,
          shift = util.by_pixel(-5, -21),
          max_advance = 1,
          line_length = 2,
          stripes = util.multiplystripes(2,
          {
						{
							filename = "__base__/graphics/entity/tank/tank-base-mask-1.png",
							width_in_frames = 1,
							height_in_frames = 22,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-mask-2.png",
							width_in_frames = 1,
							height_in_frames = 22,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-mask-3.png",
							width_in_frames = 1,
							height_in_frames = 20,
						},
          }),
          hr_version =
          {
            priority = "low",
            width = 207,
            height = 166,
            frame_count = 2,
            apply_runtime_tint = true,
            direction_count = 64,
            shift = util.by_pixel(-4.75, -21),
            max_advance = 1,
            line_length = 2,
            stripes = util.multiplystripes(2,
            {
              {
                filename = "__base__/graphics/entity/tank/hr-tank-base-mask-1.png",
                width_in_frames = 1,
                height_in_frames = 22,
              },
              {
                filename = "__base__/graphics/entity/tank/hr-tank-base-mask-2.png",
                width_in_frames = 1,
                height_in_frames = 22,
              },
              {
                filename = "__base__/graphics/entity/tank/hr-tank-base-mask-3.png",
                width_in_frames = 1,
                height_in_frames = 20,
              },
            }),
            scale = 0.5
          }
        },
        {
          priority = "low",
          width = 151,
          height = 98,
          frame_count = 2,
          draw_as_shadow = true,
          direction_count = 64,
          shift = util.by_pixel(17.5, 7),
          max_advance = 1,
          stripes = util.multiplystripes(2,
          {
						{
							filename = "__base__/graphics/entity/tank/tank-base-shadow-1.png",
							width_in_frames = 1,
							height_in_frames = 16,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-shadow-2.png",
							width_in_frames = 1,
							height_in_frames = 16,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-shadow-3.png",
							width_in_frames = 1,
							height_in_frames = 16,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-shadow-4.png",
							width_in_frames = 1,
							height_in_frames = 16,
						}
          }),
          hr_version =
          {
            priority = "low",
            width = 301,
            height = 194,
            frame_count = 2,
            draw_as_shadow = true,
            direction_count = 64,
            shift = util.by_pixel(17.75, 7),
            max_advance = 1,
            stripes = util.multiplystripes(2,
            {
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-shadow-1.png",
								width_in_frames = 1,
								height_in_frames = 16,
							},
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-shadow-2.png",
								width_in_frames = 1,
								height_in_frames = 16,
							},
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-shadow-3.png",
								width_in_frames = 1,
								height_in_frames = 16,
							},
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-shadow-4.png",
								width_in_frames = 1,
								height_in_frames = 16,
							}
            }),
            scale = 0.5
          }
        }
      }
    },
    turret_animation =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/tank/tank-turret.png",
          priority = "low",
          line_length = 8,
          width = 90,
          height = 67,
          frame_count = 1,
          direction_count = 64,
          shift = util.by_pixel(-5, -34.5),
          animation_speed = 8,
          hr_version =
          {
            filename = "__base__/graphics/entity/tank/hr-tank-turret.png",
            priority = "low",
            line_length = 8,
            width = 179,
            height = 132,
            frame_count = 1,
            direction_count = 64,
            shift = util.by_pixel(-4.75, -34.5),
            animation_speed = 8,
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/tank/tank-turret-mask.png",
          priority = "low",
          line_length = 8,
          width = 36,
          height = 33,
          frame_count = 1,
          apply_runtime_tint = true,
          direction_count = 64,
          shift = util.by_pixel(-5, -35.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/tank/hr-tank-turret-mask.png",
            priority = "low",
            line_length = 8,
            width = 72,
            height = 66,
            frame_count = 1,
            apply_runtime_tint = true,
            direction_count = 64,
            shift = util.by_pixel(-5, -35.5),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/tank/tank-turret-shadow.png",
          priority = "low",
          line_length = 8,
          width = 97,
          height = 67,
          frame_count = 1,
          draw_as_shadow = true,
          direction_count = 64,
          shift = util.by_pixel(51.5, 6.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/tank/hr-tank-turret-shadow.png",
            priority = "low",
            line_length = 8,
            width = 193,
            height = 134,
            frame_count = 1,
            draw_as_shadow = true,
            direction_count = 64,
            shift = util.by_pixel(51.25, 6.5),
            scale = 0.5
          }
        }
      }
    },
    turret_rotation_speed = 0.35 / 60,
    turret_return_timeout = 300,
    stop_trigger_speed = 0.2,
    sound_no_fuel =
    {
      {
        filename = "__base__/sound/fight/tank-no-fuel-1.ogg",
        volume = 0.6
      },
    },
    stop_trigger =
    {
      {
        type = "play-sound",
        sound =
        {
          {
            filename = "__base__/sound/car-breaks.ogg",
            volume = 0.6
          },
        }
      },
    },
    sound_minimum_speed = 0.15;
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/fight/tank-engine.ogg",
        volume = 0.6
      },
      activate_sound =
      {
        filename = "__base__/sound/fight/tank-engine-start.ogg",
        volume = 0.6
      },
      deactivate_sound =
      {
        filename = "__base__/sound/fight/tank-engine-stop.ogg",
        volume = 0.6
      },
      match_speed_to_activity = true,
    },
    open_sound = { filename = "__base__/sound/car-door-open.ogg", volume=0.7 },
    close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
    rotation_speed = 0.0035,
    tank_driving = true,
    weight = 10000,
    inventory_size = 80,
    guns = { "tank-machinegun-turret", "tank-nade-cannon" },
  },
	--nade-tank 2 tier
  {
    type = "car",
    name = "nade-tank-wlsk",
		icons =
		{
			{ icon = "__base__/graphics/icons/tank.png" },
			{ icon = "__morebobs__/graphics/icons/tank/type-nade.png" },
			{ icon = "__morebobs__/graphics/icons/tank/tier-w.png" }
		},
		icon = "__base__/graphics/icons/tank.png",
    icon_size = 32,
    flags = {"pushable", "placeable-neutral", "player-creation", "placeable-off-grid"},
    minable = {mining_time = 1, result = "nade-tank-wlsk"},
    mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
    max_health = 2000,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    alert_icon_shift = util.by_pixel(-4, -13),
    immune_to_tree_impacts = true,
    energy_per_hit_point = 0.5,
    resistances =
    {
      {
        type = "fire",
        decrease = 15,
        percent = 50
      },
      {
        type = "physical",
        decrease = 15,
        percent = 35
      },
      {
        type = "impact",
        decrease = 50,
        percent = 60
      },
      {
        type = "explosion",
        decrease = 20,
        percent = 35
      },
      {
        type = "acid",
        decrease = 15,
        percent = 30
      }
    },
    collision_box = {{-0.9, -1.3}, {0.9, 1.3}},
    selection_box = {{-0.9, -1.3}, {0.9, 1.3}},
    effectivity = 0.7,
    braking_power = "500kW",
    burner =
    {
      fuel_category = "chemical",
      effectivity = 0.75,
      fuel_inventory_size = 2,
      smoke =
      {
        {
          name = "tank-smoke",
          deviation = {0.25, 0.25},
          frequency = 50,
          position = {0, 1.5},
          starting_frame = 0,
          starting_frame_deviation = 60
        }
      }
    },
    consumption = "500kW",
    terrain_friction_modifier = 0.2,
    friction = 0.002,
    light =
    {
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "extra-high",
          flags = { "light" },
          scale = 2,
          width = 200,
          height = 200,
        },
        shift = {-0.6, -14},
        size = 2,
        intensity = 0.6,
        color = {r = 0.9, g = 1.0, b = 1.0}
      },
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "extra-high",
          flags = { "light" },
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {0.6, -14},
        size = 2,
        intensity = 0.6,
        color = {r = 0.9, g = 1.0, b = 1.0}
      }
    },
    animation =
    {
      layers =
      {
        {
          priority = "low",
          width = 135,
          height = 106,
          frame_count = 2,
          direction_count = 64,
          shift = util.by_pixel(-4.5, -10),
          animation_speed = 8,
          max_advance = 1,
          stripes =
          {
						{
							filename = "__base__/graphics/entity/tank/tank-base-1.png",
							width_in_frames = 2,
							height_in_frames = 16,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-2.png",
							width_in_frames = 2,
							height_in_frames = 16,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-3.png",
							width_in_frames = 2,
							height_in_frames = 16,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-4.png",
							width_in_frames = 2,
							height_in_frames = 16,
						}
          },
          hr_version = {
            priority = "low",
            width = 269,
            height = 212,
            frame_count = 2,
            direction_count = 64,
            shift = util.by_pixel(-4.75, -10),
            animation_speed = 8,
            max_advance = 1,
            stripes =
            {
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-1.png",
								width_in_frames = 2,
								height_in_frames = 16,
							},
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-2.png",
								width_in_frames = 2,
								height_in_frames = 16,
							},
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-3.png",
								width_in_frames = 2,
								height_in_frames = 16,
							},
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-4.png",
								width_in_frames = 2,
								height_in_frames = 16,
							}
            },
            scale = 0.5
          }
        },
        {
          priority = "low",
          width = 104,
          height = 84,
          frame_count = 2,
          apply_runtime_tint = true,
          direction_count = 64,
          shift = util.by_pixel(-5, -21),
          max_advance = 1,
          line_length = 2,
          stripes = util.multiplystripes(2,
          {
            {
              filename = "__base__/graphics/entity/tank/tank-base-mask-1.png",
              width_in_frames = 1,
              height_in_frames = 22,
            },
            {
              filename = "__base__/graphics/entity/tank/tank-base-mask-2.png",
              width_in_frames = 1,
              height_in_frames = 22,
            },
            {
              filename = "__base__/graphics/entity/tank/tank-base-mask-3.png",
              width_in_frames = 1,
              height_in_frames = 20,
            },
          }),
          hr_version =
          {
            priority = "low",
            width = 207,
            height = 166,
            frame_count = 2,
            apply_runtime_tint = true,
            direction_count = 64,
            shift = util.by_pixel(-4.75, -21),
            max_advance = 1,
            line_length = 2,
            stripes = util.multiplystripes(2,
            {
              {
                filename = "__base__/graphics/entity/tank/hr-tank-base-mask-1.png",
                width_in_frames = 1,
                height_in_frames = 22,
              },
              {
                filename = "__base__/graphics/entity/tank/hr-tank-base-mask-2.png",
                width_in_frames = 1,
                height_in_frames = 22,
              },
              {
                filename = "__base__/graphics/entity/tank/hr-tank-base-mask-3.png",
                width_in_frames = 1,
                height_in_frames = 20,
              },
            }),
            scale = 0.5
          }
        },
        {
          priority = "low",
          width = 151,
          height = 98,
          frame_count = 2,
          draw_as_shadow = true,
          direction_count = 64,
          shift = util.by_pixel(17.5, 7),
          max_advance = 1,
          stripes = util.multiplystripes(2,
          {
						{
							filename = "__base__/graphics/entity/tank/tank-base-shadow-1.png",
							width_in_frames = 1,
							height_in_frames = 16,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-shadow-2.png",
							width_in_frames = 1,
							height_in_frames = 16,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-shadow-3.png",
							width_in_frames = 1,
							height_in_frames = 16,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-shadow-4.png",
							width_in_frames = 1,
							height_in_frames = 16,
						}
          }),
          hr_version =
          {
            priority = "low",
            width = 301,
            height = 194,
            frame_count = 2,
            draw_as_shadow = true,
            direction_count = 64,
            shift = util.by_pixel(17.75, 7),
            max_advance = 1,
            stripes = util.multiplystripes(2,
            {
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-shadow-1.png",
								width_in_frames = 1,
								height_in_frames = 16,
							},
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-shadow-2.png",
								width_in_frames = 1,
								height_in_frames = 16,
							},
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-shadow-3.png",
								width_in_frames = 1,
								height_in_frames = 16,
							},
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-shadow-4.png",
								width_in_frames = 1,
								height_in_frames = 16,
							}
            }),
            scale = 0.5
          }
        }
      }
    },
    turret_animation =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/tank/tank-turret.png",
          priority = "low",
          line_length = 8,
          width = 90,
          height = 67,
          frame_count = 1,
          direction_count = 64,
          shift = util.by_pixel(-5, -34.5),
          animation_speed = 8,
          hr_version =
          {
            filename = "__base__/graphics/entity/tank/hr-tank-turret.png",
            priority = "low",
            line_length = 8,
            width = 179,
            height = 132,
            frame_count = 1,
            direction_count = 64,
            shift = util.by_pixel(-4.75, -34.5),
            animation_speed = 8,
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/tank/tank-turret-mask.png",
          priority = "low",
          line_length = 8,
          width = 36,
          height = 33,
          frame_count = 1,
          apply_runtime_tint = true,
          direction_count = 64,
          shift = util.by_pixel(-5, -35.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/tank/hr-tank-turret-mask.png",
            priority = "low",
            line_length = 8,
            width = 72,
            height = 66,
            frame_count = 1,
            apply_runtime_tint = true,
            direction_count = 64,
            shift = util.by_pixel(-5, -35.5),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/tank/tank-turret-shadow.png",
          priority = "low",
          line_length = 8,
          width = 97,
          height = 67,
          frame_count = 1,
          draw_as_shadow = true,
          direction_count = 64,
          shift = util.by_pixel(51.5, 6.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/tank/hr-tank-turret-shadow.png",
            priority = "low",
            line_length = 8,
            width = 193,
            height = 134,
            frame_count = 1,
            draw_as_shadow = true,
            direction_count = 64,
            shift = util.by_pixel(51.25, 6.5),
            scale = 0.5
          }
        }
      }
    },
    turret_rotation_speed = 0.35 / 60,
    turret_return_timeout = 300,
    stop_trigger_speed = 0.2,
    sound_no_fuel =
    {
      {
        filename = "__base__/sound/fight/tank-no-fuel-1.ogg",
        volume = 0.6
      },
    },
    stop_trigger =
    {
      {
        type = "play-sound",
        sound =
        {
          {
            filename = "__base__/sound/car-breaks.ogg",
            volume = 0.6
          },
        }
      },
    },
    sound_minimum_speed = 0.15;
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/fight/tank-engine.ogg",
        volume = 0.6
      },
      activate_sound =
      {
        filename = "__base__/sound/fight/tank-engine-start.ogg",
        volume = 0.6
      },
      deactivate_sound =
      {
        filename = "__base__/sound/fight/tank-engine-stop.ogg",
        volume = 0.6
      },
      match_speed_to_activity = true,
    },
    open_sound = { filename = "__base__/sound/car-door-open.ogg", volume=0.7 },
    close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
    rotation_speed = 0.0035,
    tank_driving = true,
    weight = 10000,
    inventory_size = 80,
    guns = { "tank-machinegun-turret", "tank-nade-cannon" },
  },
	--mine-tank
  {
    type = "car",
    name = "mine-tank",
		icons =
		{
			{ icon = "__base__/graphics/icons/tank.png" },
			{ icon = "__morebobs__/graphics/icons/tank/type-mine.png" }
		},
		icon = "__base__/graphics/icons/tank.png",
    icon_size = 32,
    flags = {"pushable", "placeable-neutral", "player-creation", "placeable-off-grid"},
    minable = {mining_time = 1, result = "mine-tank"},
    mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
    max_health = 1000,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    alert_icon_shift = util.by_pixel(-4, -13),
    immune_to_tree_impacts = true,
    energy_per_hit_point = 0.5,
    resistances =
    {
      {
        type = "fire",
        decrease = 15,
        percent = 50
      },
      {
        type = "physical",
        decrease = 15,
        percent = 30
      },
      {
        type = "impact",
        decrease = 50,
        percent = 60
      },
      {
        type = "explosion",
        decrease = 15,
        percent = 30
      },
      {
        type = "acid",
        decrease = 10,
        percent = 20
      }
    },
    collision_box = {{-0.9, -1.3}, {0.9, 1.3}},
    selection_box = {{-0.9, -1.3}, {0.9, 1.3}},
    effectivity = 0.7,
    braking_power = "500kW",
    burner =
    {
      fuel_category = "chemical",
      effectivity = 0.7,
      fuel_inventory_size = 2,
      smoke =
      {
        {
          name = "tank-smoke",
          deviation = {0.25, 0.25},
          frequency = 50,
          position = {0, 1.5},
          starting_frame = 0,
          starting_frame_deviation = 60
        }
      }
    },
    consumption = "500kW",
    terrain_friction_modifier = 0.2,
    friction = 0.002,
    light =
    {
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "extra-high",
          flags = { "light" },
          scale = 2,
          width = 200,
          height = 200,
        },
        shift = {-0.6, -14},
        size = 2,
        intensity = 0.6,
        color = {r = 0.9, g = 1.0, b = 1.0}
      },
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "extra-high",
          flags = { "light" },
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {0.6, -14},
        size = 2,
        intensity = 0.6,
        color = {r = 0.9, g = 1.0, b = 1.0}
      }
    },
    animation =
    {
      layers =
      {
        {
          priority = "low",
          width = 135,
          height = 106,
          frame_count = 2,
          direction_count = 64,
          shift = util.by_pixel(-4.5, -10),
          animation_speed = 8,
          max_advance = 1,
          stripes =
          {
						{
							filename = "__base__/graphics/entity/tank/tank-base-1.png",
							width_in_frames = 2,
							height_in_frames = 16,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-2.png",
							width_in_frames = 2,
							height_in_frames = 16,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-3.png",
							width_in_frames = 2,
							height_in_frames = 16,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-4.png",
							width_in_frames = 2,
							height_in_frames = 16,
						}
          },
          hr_version = {
            priority = "low",
            width = 269,
            height = 212,
            frame_count = 2,
            direction_count = 64,
            shift = util.by_pixel(-4.75, -10),
            animation_speed = 8,
            max_advance = 1,
            stripes =
            {
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-1.png",
								width_in_frames = 2,
								height_in_frames = 16,
							},
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-2.png",
								width_in_frames = 2,
								height_in_frames = 16,
							},
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-3.png",
								width_in_frames = 2,
								height_in_frames = 16,
							},
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-4.png",
								width_in_frames = 2,
								height_in_frames = 16,
							}
            },
            scale = 0.5
          }
        },
        {
          priority = "low",
          width = 104,
          height = 84,
          frame_count = 2,
          apply_runtime_tint = true,
          direction_count = 64,
          shift = util.by_pixel(-5, -21),
          max_advance = 1,
          line_length = 2,
          stripes = util.multiplystripes(2,
          {
            {
              filename = "__base__/graphics/entity/tank/tank-base-mask-1.png",
              width_in_frames = 1,
              height_in_frames = 22,
            },
            {
              filename = "__base__/graphics/entity/tank/tank-base-mask-2.png",
              width_in_frames = 1,
              height_in_frames = 22,
            },
            {
              filename = "__base__/graphics/entity/tank/tank-base-mask-3.png",
              width_in_frames = 1,
              height_in_frames = 20,
            },
          }),
          hr_version =
          {
            priority = "low",
            width = 207,
            height = 166,
            frame_count = 2,
            apply_runtime_tint = true,
            direction_count = 64,
            shift = util.by_pixel(-4.75, -21),
            max_advance = 1,
            line_length = 2,
            stripes = util.multiplystripes(2,
            {
              {
                filename = "__base__/graphics/entity/tank/hr-tank-base-mask-1.png",
                width_in_frames = 1,
                height_in_frames = 22,
              },
              {
                filename = "__base__/graphics/entity/tank/hr-tank-base-mask-2.png",
                width_in_frames = 1,
                height_in_frames = 22,
              },
              {
                filename = "__base__/graphics/entity/tank/hr-tank-base-mask-3.png",
                width_in_frames = 1,
                height_in_frames = 20,
              },
            }),
            scale = 0.5
          }
        },
        {
          priority = "low",
          width = 151,
          height = 98,
          frame_count = 2,
          draw_as_shadow = true,
          direction_count = 64,
          shift = util.by_pixel(17.5, 7),
          max_advance = 1,
          stripes = util.multiplystripes(2,
          {
						{
							filename = "__base__/graphics/entity/tank/tank-base-shadow-1.png",
							width_in_frames = 1,
							height_in_frames = 16,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-shadow-2.png",
							width_in_frames = 1,
							height_in_frames = 16,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-shadow-3.png",
							width_in_frames = 1,
							height_in_frames = 16,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-shadow-4.png",
							width_in_frames = 1,
							height_in_frames = 16,
						}
          }),
          hr_version =
          {
            priority = "low",
            width = 301,
            height = 194,
            frame_count = 2,
            draw_as_shadow = true,
            direction_count = 64,
            shift = util.by_pixel(17.75, 7),
            max_advance = 1,
            stripes = util.multiplystripes(2,
            {
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-shadow-1.png",
								width_in_frames = 1,
								height_in_frames = 16,
							},
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-shadow-2.png",
								width_in_frames = 1,
								height_in_frames = 16,
							},
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-shadow-3.png",
								width_in_frames = 1,
								height_in_frames = 16,
							},
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-shadow-4.png",
								width_in_frames = 1,
								height_in_frames = 16,
							}
            }),
            scale = 0.5
          }
        }
      }
    },
    turret_animation =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/tank/tank-turret.png",
          priority = "low",
          line_length = 8,
          width = 90,
          height = 67,
          frame_count = 1,
          direction_count = 64,
          shift = util.by_pixel(-5, -34.5),
          animation_speed = 8,
          hr_version =
          {
            filename = "__base__/graphics/entity/tank/hr-tank-turret.png",
            priority = "low",
            line_length = 8,
            width = 179,
            height = 132,
            frame_count = 1,
            direction_count = 64,
            shift = util.by_pixel(-4.75, -34.5),
            animation_speed = 8,
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/tank/tank-turret-mask.png",
          priority = "low",
          line_length = 8,
          width = 36,
          height = 33,
          frame_count = 1,
          apply_runtime_tint = true,
          direction_count = 64,
          shift = util.by_pixel(-5, -35.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/tank/hr-tank-turret-mask.png",
            priority = "low",
            line_length = 8,
            width = 72,
            height = 66,
            frame_count = 1,
            apply_runtime_tint = true,
            direction_count = 64,
            shift = util.by_pixel(-5, -35.5),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/tank/tank-turret-shadow.png",
          priority = "low",
          line_length = 8,
          width = 97,
          height = 67,
          frame_count = 1,
          draw_as_shadow = true,
          direction_count = 64,
          shift = util.by_pixel(51.5, 6.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/tank/hr-tank-turret-shadow.png",
            priority = "low",
            line_length = 8,
            width = 193,
            height = 134,
            frame_count = 1,
            draw_as_shadow = true,
            direction_count = 64,
            shift = util.by_pixel(51.25, 6.5),
            scale = 0.5
          }
        }
      }
    },
    turret_rotation_speed = 0.35 / 60,
    turret_return_timeout = 300,
    stop_trigger_speed = 0.2,
    sound_no_fuel =
    {
      {
        filename = "__base__/sound/fight/tank-no-fuel-1.ogg",
        volume = 0.6
      },
    },
    stop_trigger =
    {
      {
        type = "play-sound",
        sound =
        {
          {
            filename = "__base__/sound/car-breaks.ogg",
            volume = 0.6
          },
        }
      },
    },
    sound_minimum_speed = 0.15;
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/fight/tank-engine.ogg",
        volume = 0.6
      },
      activate_sound =
      {
        filename = "__base__/sound/fight/tank-engine-start.ogg",
        volume = 0.6
      },
      deactivate_sound =
      {
        filename = "__base__/sound/fight/tank-engine-stop.ogg",
        volume = 0.6
      },
      match_speed_to_activity = true,
    },
    open_sound = { filename = "__base__/sound/car-door-open.ogg", volume=0.7 },
    close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
    rotation_speed = 0.0035,
    tank_driving = true,
    weight = 10000,
    inventory_size = 40,
    guns = { "combat-shotgun", "tank-mine-cannon" },
  },
	--rocket-tank
  {
		type = "car",
		name = "rocket-tank",
		icons =
		{
			{ icon = "__base__/graphics/icons/tank.png" },
			{ icon = "__morebobs__/graphics/icons/tank/type-rocket.png" }
		},
		icon = "__base__/graphics/icons/tank.png",
		icon_size = 32,
		flags = {"pushable", "placeable-neutral", "player-creation", "placeable-off-grid"},
		minable = {mining_time = 1, result = "rocket-tank"},
    mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
		max_health = 1000,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    alert_icon_shift = util.by_pixel(-4, -13),
    immune_to_tree_impacts = true,
		energy_per_hit_point = 0.5,
		resistances =
		{
		{
			type = "fire",
			decrease = 15,
			percent = 50
		},
		{
			type = "physical",
			decrease = 15,
			percent = 30
		},
		{
			type = "impact",
			decrease = 50,
			percent = 60
		},
		{
			type = "explosion",
			decrease = 15,
			percent = 30
		},
		{
			type = "acid",
			decrease = 10,
			percent = 20
		}
		},
		collision_box = {{-0.9, -1.3}, {0.9, 1.3}},
		selection_box = {{-0.9, -1.3}, {0.9, 1.3}},
		effectivity = 0.7,
		braking_power = "500kW",
		burner =
		{
			fuel_category = "chemical",
			effectivity = 0.7,
			fuel_inventory_size = 2,
      smoke =
      {
        {
          name = "tank-smoke",
          deviation = {0.25, 0.25},
          frequency = 50,
          position = {0, 1.5},
          starting_frame = 0,
          starting_frame_deviation = 60
        }
      }
    },
		consumption = "500kW",
    terrain_friction_modifier = 0.2,
    friction = 0.002,
    light =
    {
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "extra-high",
          flags = { "light" },
          scale = 2,
          width = 200,
          height = 200,
        },
        shift = {-0.6, -14},
        size = 2,
        intensity = 0.6,
        color = {r = 0.9, g = 1.0, b = 1.0}
      },
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "extra-high",
          flags = { "light" },
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {0.6, -14},
        size = 2,
        intensity = 0.6,
        color = {r = 0.9, g = 1.0, b = 1.0}
      }
    },
		animation =
		{
			layers =
			{
				{
					priority = "low",
					width = 135,
					height = 106,
					frame_count = 2,
					direction_count = 64,
					shift = util.by_pixel(-4.5, -10),
					animation_speed = 8,
					max_advance = 1,
					stripes =
					{
						{
							filename = "__base__/graphics/entity/tank/tank-base-1.png",
							width_in_frames = 2,
							height_in_frames = 16,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-2.png",
							width_in_frames = 2,
							height_in_frames = 16,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-3.png",
							width_in_frames = 2,
							height_in_frames = 16,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-4.png",
							width_in_frames = 2,
							height_in_frames = 16,
						}
					},
					hr_version = {
						priority = "low",
						width = 269,
						height = 212,
						frame_count = 2,
						direction_count = 64,
						shift = util.by_pixel(-4.75, -10),
						animation_speed = 8,
						max_advance = 1,
						stripes =
						{
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-1.png",
								width_in_frames = 2,
								height_in_frames = 16,
							},
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-2.png",
								width_in_frames = 2,
								height_in_frames = 16,
							},
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-3.png",
								width_in_frames = 2,
								height_in_frames = 16,
							},
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-4.png",
								width_in_frames = 2,
								height_in_frames = 16,
							}
						},
						scale = 0.5
					}
				},
				{
					priority = "low",
					width = 104,
					height = 84,
					frame_count = 2,
					apply_runtime_tint = true,
					direction_count = 64,
					shift = util.by_pixel(-5, -21),
					max_advance = 1,
					line_length = 2,
					stripes = util.multiplystripes(2,
					{
						{
							filename = "__base__/graphics/entity/tank/tank-base-mask-1.png",
							width_in_frames = 1,
							height_in_frames = 22,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-mask-2.png",
							width_in_frames = 1,
							height_in_frames = 22,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-mask-3.png",
							width_in_frames = 1,
							height_in_frames = 20,
						},
					}),
					hr_version =
					{
					priority = "low",
					width = 207,
					height = 166,
					frame_count = 2,
					apply_runtime_tint = true,
					direction_count = 64,
					shift = util.by_pixel(-4.75, -21),
					max_advance = 1,
					line_length = 2,
					stripes = util.multiplystripes(2,
					{
						{
							filename = "__base__/graphics/entity/tank/hr-tank-base-mask-1.png",
							width_in_frames = 1,
							height_in_frames = 22,
						},
						{
							filename = "__base__/graphics/entity/tank/hr-tank-base-mask-2.png",
							width_in_frames = 1,
							height_in_frames = 22,
						},
						{
							filename = "__base__/graphics/entity/tank/hr-tank-base-mask-3.png",
							width_in_frames = 1,
							height_in_frames = 20,
						},
					}),
					scale = 0.5
					}
				},
				{
					priority = "low",
					width = 151,
					height = 98,
					frame_count = 2,
					draw_as_shadow = true,
					direction_count = 64,
					shift = util.by_pixel(17.5, 7),
					max_advance = 1,
					stripes = util.multiplystripes(2,
					{
						{
							filename = "__base__/graphics/entity/tank/tank-base-shadow-1.png",
							width_in_frames = 1,
							height_in_frames = 16,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-shadow-2.png",
							width_in_frames = 1,
							height_in_frames = 16,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-shadow-3.png",
							width_in_frames = 1,
							height_in_frames = 16,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-shadow-4.png",
							width_in_frames = 1,
							height_in_frames = 16,
						}
					}),
					hr_version =
					{
						priority = "low",
						width = 301,
						height = 194,
						frame_count = 2,
						draw_as_shadow = true,
						direction_count = 64,
						shift = util.by_pixel(17.75, 7),
						max_advance = 1,
						stripes = util.multiplystripes(2,
						{
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-shadow-1.png",
								width_in_frames = 1,
								height_in_frames = 16,
							},
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-shadow-2.png",
								width_in_frames = 1,
								height_in_frames = 16,
							},
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-shadow-3.png",
								width_in_frames = 1,
								height_in_frames = 16,
							},
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-shadow-4.png",
								width_in_frames = 1,
								height_in_frames = 16,
							}
						}),
						scale = 0.5
					}
				}
			}
		},
		turret_animation =
		{
			layers =
			{
				{
					filename = "__base__/graphics/entity/tank/tank-turret.png",
					priority = "low",
					line_length = 8,
					width = 90,
					height = 67,
					frame_count = 1,
					direction_count = 64,
					shift = util.by_pixel(-5, -34.5),
					animation_speed = 8,
					hr_version =
					{
						filename = "__base__/graphics/entity/tank/hr-tank-turret.png",
						priority = "low",
						line_length = 8,
						width = 179,
						height = 132,
						frame_count = 1,
						direction_count = 64,
						shift = util.by_pixel(-4.75, -34.5),
						animation_speed = 8,
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/entity/tank/tank-turret-mask.png",
					priority = "low",
					line_length = 8,
					width = 36,
					height = 33,
					frame_count = 1,
					apply_runtime_tint = true,
					direction_count = 64,
					shift = util.by_pixel(-5, -35.5),
					hr_version =
					{
						filename = "__base__/graphics/entity/tank/hr-tank-turret-mask.png",
						priority = "low",
						line_length = 8,
						width = 72,
						height = 66,
						frame_count = 1,
						apply_runtime_tint = true,
						direction_count = 64,
						shift = util.by_pixel(-5, -35.5),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/entity/tank/tank-turret-shadow.png",
					priority = "low",
					line_length = 8,
					width = 97,
					height = 67,
					frame_count = 1,
					draw_as_shadow = true,
					direction_count = 64,
					shift = util.by_pixel(51.5, 6.5),
					hr_version =
					{
						filename = "__base__/graphics/entity/tank/hr-tank-turret-shadow.png",
						priority = "low",
						line_length = 8,
						width = 193,
						height = 134,
						frame_count = 1,
						draw_as_shadow = true,
						direction_count = 64,
						shift = util.by_pixel(51.25, 6.5),
						scale = 0.5
					}
				}
			}
		},
		turret_rotation_speed = 0.35 / 60,
		turret_return_timeout = 300,
		stop_trigger_speed = 0.2,
		sound_no_fuel =
		{
			{
				filename = "__base__/sound/fight/tank-no-fuel-1.ogg",
				volume = 0.6
			},
		},
		stop_trigger =
		{
			{
				type = "play-sound",
				sound =
				{
					{
						filename = "__base__/sound/car-breaks.ogg",
						volume = 0.6
					},
				}
			},
		},
		sound_minimum_speed = 0.15;
		vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		working_sound =
		{
			sound =
			{
				filename = "__base__/sound/fight/tank-engine.ogg",
				volume = 0.6
			},
			activate_sound =
			{
				filename = "__base__/sound/fight/tank-engine-start.ogg",
				volume = 0.6
			},
			deactivate_sound =
			{
				filename = "__base__/sound/fight/tank-engine-stop.ogg",
				volume = 0.6
			},
			match_speed_to_activity = true,
		},
		open_sound = { filename = "__base__/sound/car-door-open.ogg", volume=0.7 },
		close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
		rotation_speed = 0.0035,
		tank_driving = true,
		weight = 10000,
		inventory_size = 40,
		guns = { "tank-machinegun-turret", "tank-rocket-cannon"},
  },
	--Super Heavy
  {
    type = "car",
    name = "super-tank",
		icons =
		{
			{ icon = "__base__/graphics/icons/tank.png" },
			{ icon = "__morebobs__/graphics/icons/tank/type-auto.png" },
			{ icon = "__morebobs__/graphics/icons/tank/tier-s.png" }
		},
		icon = "__base__/graphics/icons/tank.png",
    icon_size = 32,
    flags = {"pushable", "placeable-neutral", "player-creation", "placeable-off-grid"},
    minable = {mining_time = 1, result = "super-tank"},
    mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
    max_health = 5000,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    energy_per_hit_point = 0.5,
    resistances =
    {
      {
        type = "fire",
        decrease = 15,
        percent = 65
      },
      {
        type = "physical",
        decrease = 35,
        percent = 65
      },
      {
        type = "impact",
        decrease = 15,
        percent = 65
      },
      {
        type = "explosion",
        decrease = 15,
        percent = 65
      },
      {
        type = "acid",
        decrease = 10,
        percent = 50
      }
    },
    collision_box = {{2*-0.9, 2*-1.3}, {2*0.9, 2*1.3}},
    selection_box = {{2*-0.9, 2*-1.3}, {2*0.9, 2*1.3}},
	   --scale = 2,
    effectivity = 0.55,
    braking_power = "250kW",
    burner =
    {
      fuel_category = "chemical",
      effectivity = 0.6,
      fuel_inventory_size = 3,
      smoke =
      {
        {
          name = "tank-smoke",
          deviation = {0.25, 0.25},
          frequency = 50,
          position = {0, 1.5},
          starting_frame = 0,
          starting_frame_deviation = 60
        }
      }
    },
    consumption = "1250kW",
    terrain_friction_modifier = 0.2,
    friction = 0.002,
    light =
    {
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "extra-high",
          flags = { "light" },
          scale = 2,
          width = 200,
          height = 200,
        },
        shift = {-0.6, -14},
        size = 2,
        intensity = 0.6,
        color = {r = 0.9, g = 1.0, b = 1.0}
      },
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "extra-high",
          flags = { "light" },
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {0.6, -14},
        size = 2,
        intensity = 0.6,
        color = {r = 0.9, g = 1.0, b = 1.0}
      }
    },
    animation =
    {
      layers =
      {
        {
          priority = "low",
          scale = 2,
          width = 135,
          height = 106,
          frame_count = 2,
          direction_count = 64,
          shift = util.by_pixel(-4.5, -10),
          animation_speed = 8,
          max_advance = 1,
          stripes =
          {
						{
							filename = "__base__/graphics/entity/tank/tank-base-1.png",
							width_in_frames = 2,
							height_in_frames = 16,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-2.png",
							width_in_frames = 2,
							height_in_frames = 16,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-3.png",
							width_in_frames = 2,
							height_in_frames = 16,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-4.png",
							width_in_frames = 2,
							height_in_frames = 16,
						}
          },
          hr_version = {
            priority = "low",
            width = 269,
            height = 212,
            frame_count = 2,
            direction_count = 64,
            shift = util.by_pixel(-4.75, -10),
            animation_speed = 8,
            max_advance = 1,
            stripes =
            {
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-1.png",
								width_in_frames = 2,
								height_in_frames = 16,
							},
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-2.png",
								width_in_frames = 2,
								height_in_frames = 16,
							},
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-3.png",
								width_in_frames = 2,
								height_in_frames = 16,
							},
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-4.png",
								width_in_frames = 2,
								height_in_frames = 16,
							}
            },
            scale = 1
          }
        },
        {
          priority = "low",
          scale = 2,
          width = 104,
          height = 84,
          frame_count = 2,
          apply_runtime_tint = true,
          direction_count = 64,
          shift = util.by_pixel(-5, -32),
          max_advance = 1,
          line_length = 2,
          stripes = util.multiplystripes(2,
          {
            {
              filename = "__base__/graphics/entity/tank/tank-base-mask-1.png",
              width_in_frames = 1,
              height_in_frames = 22,
            },
            {
              filename = "__base__/graphics/entity/tank/tank-base-mask-2.png",
              width_in_frames = 1,
              height_in_frames = 22,
            },
            {
              filename = "__base__/graphics/entity/tank/tank-base-mask-3.png",
              width_in_frames = 1,
              height_in_frames = 20,
            },
          }),
          hr_version =
          {
            priority = "low",
            width = 207,
            height = 166,
            frame_count = 2,
            apply_runtime_tint = true,
            direction_count = 64,
            shift = util.by_pixel(-4.75, -32),
            max_advance = 1,
            line_length = 2,
            stripes = util.multiplystripes(2,
            {
              {
                filename = "__base__/graphics/entity/tank/hr-tank-base-mask-1.png",
                width_in_frames = 1,
                height_in_frames = 22,
              },
              {
                filename = "__base__/graphics/entity/tank/hr-tank-base-mask-2.png",
                width_in_frames = 1,
                height_in_frames = 22,
              },
              {
                filename = "__base__/graphics/entity/tank/hr-tank-base-mask-3.png",
                width_in_frames = 1,
                height_in_frames = 20,
              },
            }),
            scale = 1
          }
        },
        {
          priority = "low",
          scale = 2,
          width = 151,
          height = 98,
          frame_count = 2,
          draw_as_shadow = true,
          direction_count = 64,
          shift = util.by_pixel(17.5, 7),
          max_advance = 1,
          stripes = util.multiplystripes(2,
          {
						{
							filename = "__base__/graphics/entity/tank/tank-base-shadow-1.png",
							width_in_frames = 1,
							height_in_frames = 16,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-shadow-2.png",
							width_in_frames = 1,
							height_in_frames = 16,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-shadow-3.png",
							width_in_frames = 1,
							height_in_frames = 16,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-shadow-4.png",
							width_in_frames = 1,
							height_in_frames = 16,
						}
          }),
          hr_version =
          {
            priority = "low",
            width = 301,
            height = 194,
            frame_count = 2,
            draw_as_shadow = true,
            direction_count = 64,
            shift = util.by_pixel(17.75, 7),
            max_advance = 1,
            stripes = util.multiplystripes(2,
            {
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-shadow-1.png",
								width_in_frames = 1,
								height_in_frames = 16,
							},
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-shadow-2.png",
								width_in_frames = 1,
								height_in_frames = 16,
							},
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-shadow-3.png",
								width_in_frames = 1,
								height_in_frames = 16,
							},
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-shadow-4.png",
								width_in_frames = 1,
								height_in_frames = 16,
							}
            }),
            scale = 1
          }
        }
      }
    },
    turret_animation =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/tank/tank-turret.png",
          priority = "low",
          line_length = 8,
          scale = 1.9,
          width = 90,
          height = 67,
          frame_count = 1,
          direction_count = 64,
          shift = util.by_pixel(-5, -59.5),
          animation_speed = 8,
          hr_version =
          {
            filename = "__base__/graphics/entity/tank/hr-tank-turret.png",
            priority = "low",
            line_length = 8,
            width = 179,
            height = 132,
            frame_count = 1,
            direction_count = 64,
            shift = util.by_pixel(-4.75, -59.5),
            animation_speed = 8,
            scale = 0.95
          }
        },
        {
          filename = "__base__/graphics/entity/tank/tank-turret-mask.png",
          priority = "low",
          line_length = 8,
          scale = 1.9,
          width = 36,
          height = 33,
          frame_count = 1,
          apply_runtime_tint = true,
          direction_count = 64,
          shift = util.by_pixel(-5, -61.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/tank/hr-tank-turret-mask.png",
            priority = "low",
            line_length = 8,
            width = 72,
            height = 66,
            frame_count = 1,
            apply_runtime_tint = true,
            direction_count = 64,
            shift = util.by_pixel(-5, -61.5),
            scale = 0.95
          }
        },
        {
          filename = "__base__/graphics/entity/tank/tank-turret-shadow.png",
          priority = "low",
          line_length = 8,
          scale = 1.9,
          width = 97,
          height = 67,
          frame_count = 1,
          draw_as_shadow = true,
          direction_count = 64,
          shift = util.by_pixel(91.5, 6.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/tank/hr-tank-turret-shadow.png",
            priority = "low",
            line_length = 8,
            width = 193,
            height = 134,
            frame_count = 1,
            draw_as_shadow = true,
            direction_count = 64,
            shift = util.by_pixel(91.25, 6.5),
            scale = 0.95
          }
        }
      }
    },
    turret_rotation_speed = 0.35 / 60,
    turret_return_timeout = 300,
    stop_trigger_speed = 0.2,
    sound_no_fuel =
    {
      {
        filename = "__base__/sound/fight/tank-no-fuel-1.ogg",
        volume = 0.6
      },
    },
    stop_trigger =
    {
      {
        type = "play-sound",
        sound =
        {
          {
            filename = "__base__/sound/car-breaks.ogg",
            volume = 0.6
          },
        }
      },
    },
    sound_minimum_speed = 0.15;
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/fight/tank-engine.ogg",
        volume = 0.6
      },
      activate_sound =
      {
        filename = "__base__/sound/fight/tank-engine-start.ogg",
        volume = 0.6
      },
      deactivate_sound =
      {
        filename = "__base__/sound/fight/tank-engine-stop.ogg",
        volume = 0.6
      },
      match_speed_to_activity = true,
    },
    open_sound = { filename = "__base__/sound/car-door-open.ogg", volume=0.7 },
    close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
    rotation_speed = 0.0035,
    tank_driving = true,
    weight = 50000,
    inventory_size = 60,
    guns = { "tank-machinegun-turret", "tank-rocket-cannon", "tank-cannon-2", "tank-auto-cannon" },
  },
	--Super Heavy Alternate
  {
    type = "car",
    name = "super-tank-alternate",
		icons =
		{
			{ icon = "__base__/graphics/icons/tank.png" },
			{ icon = "__morebobs__/graphics/icons/tank/type-flame.png" },
			{ icon = "__morebobs__/graphics/icons/tank/tier-s.png" }
		},
		icon = "__base__/graphics/icons/tank.png",
    icon_size = 32,
    flags = {"pushable", "placeable-neutral", "player-creation", "placeable-off-grid"},
    minable = {mining_time = 1, result = "super-tank-alternate"},
    mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
    max_health = 7000,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    energy_per_hit_point = 0.5,
    resistances =
    {
      {
        type = "fire",
        decrease = 15,
        percent = 65
      },
      {
        type = "physical",
        decrease = 35,
        percent = 65
      },
      {
        type = "impact",
        decrease = 15,
        percent = 65
      },
      {
        type = "explosion",
        decrease = 15,
        percent = 65
      },
      {
        type = "acid",
        decrease = 10,
        percent = 50
      }
    },
    collision_box = {{2*-0.9, 2*-1.3}, {2*0.9, 2*1.3}},
    selection_box = {{2*-0.9, 2*-1.3}, {2*0.9, 2*1.3}},
	 --scale = 2,
    effectivity = 0.35,
    braking_power = "250kW",
    burner =
    {
      fuel_category = "chemical",
      effectivity = 0.4,
      fuel_inventory_size = 3,
      smoke =
      {
        {
          name = "tank-smoke",
          deviation = {0.25, 0.25},
          frequency = 50,
          position = {0, 1.5},
          starting_frame = 0,
          starting_frame_deviation = 60
        }
      }
    },
    consumption = "1250kW",
    terrain_friction_modifier = 0.2,
    friction = 0.002,
    light =
    {
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "extra-high",
          flags = { "light" },
          scale = 2,
          width = 200,
          height = 200,
        },
        shift = {-0.6, -14},
        size = 2,
        intensity = 0.6,
        color = {r = 0.9, g = 1.0, b = 1.0}
      },
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "extra-high",
          flags = { "light" },
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {0.6, -14},
        size = 2,
        intensity = 0.6,
        color = {r = 0.9, g = 1.0, b = 1.0}
      }
    },
    animation =
    {
      layers =
      {
        {
          priority = "low",
          scale = 2,
          width = 135,
          height = 106,
          frame_count = 2,
          direction_count = 64,
          shift = util.by_pixel(-4.5, -10),
          animation_speed = 8,
          max_advance = 1,
          stripes =
          {
						{
							filename = "__base__/graphics/entity/tank/tank-base-1.png",
							width_in_frames = 2,
							height_in_frames = 16,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-2.png",
							width_in_frames = 2,
							height_in_frames = 16,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-3.png",
							width_in_frames = 2,
							height_in_frames = 16,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-4.png",
							width_in_frames = 2,
							height_in_frames = 16,
						}
          },
          hr_version = {
            priority = "low",
            width = 269,
            height = 212,
            frame_count = 2,
            direction_count = 64,
            shift = util.by_pixel(-4.75, -10),
            animation_speed = 8,
            max_advance = 1,
            stripes =
            {
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-1.png",
								width_in_frames = 2,
								height_in_frames = 16,
							},
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-2.png",
								width_in_frames = 2,
								height_in_frames = 16,
							},
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-3.png",
								width_in_frames = 2,
								height_in_frames = 16,
							},
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-4.png",
								width_in_frames = 2,
								height_in_frames = 16,
							}
            },
            scale = 1
          }
        },
        {
          priority = "low",
          scale = 2,
          width = 104,
          height = 84,
          frame_count = 2,
          apply_runtime_tint = true,
          direction_count = 64,
          shift = util.by_pixel(-5, -32),
          max_advance = 1,
          line_length = 2,
          stripes = util.multiplystripes(2,
          {
            {
              filename = "__base__/graphics/entity/tank/tank-base-mask-1.png",
              width_in_frames = 1,
              height_in_frames = 22,
            },
            {
              filename = "__base__/graphics/entity/tank/tank-base-mask-2.png",
              width_in_frames = 1,
              height_in_frames = 22,
            },
            {
              filename = "__base__/graphics/entity/tank/tank-base-mask-3.png",
              width_in_frames = 1,
              height_in_frames = 20,
            },
          }),
          hr_version =
          {
            priority = "low",
            width = 207,
            height = 166,
            frame_count = 2,
            apply_runtime_tint = true,
            direction_count = 64,
            shift = util.by_pixel(-4.75, -32),
            max_advance = 1,
            line_length = 2,
            stripes = util.multiplystripes(2,
            {
              {
                filename = "__base__/graphics/entity/tank/hr-tank-base-mask-1.png",
                width_in_frames = 1,
                height_in_frames = 22,
              },
              {
                filename = "__base__/graphics/entity/tank/hr-tank-base-mask-2.png",
                width_in_frames = 1,
                height_in_frames = 22,
              },
              {
                filename = "__base__/graphics/entity/tank/hr-tank-base-mask-3.png",
                width_in_frames = 1,
                height_in_frames = 20,
              },
            }),
            scale = 1
          }
        },
        {
          priority = "low",
          scale = 2,
          width = 151,
          height = 98,
          frame_count = 2,
          draw_as_shadow = true,
          direction_count = 64,
          shift = util.by_pixel(17.5, 7),
          max_advance = 1,
          stripes = util.multiplystripes(2,
          {
						{
							filename = "__base__/graphics/entity/tank/tank-base-shadow-1.png",
							width_in_frames = 1,
							height_in_frames = 16,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-shadow-2.png",
							width_in_frames = 1,
							height_in_frames = 16,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-shadow-3.png",
							width_in_frames = 1,
							height_in_frames = 16,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-shadow-4.png",
							width_in_frames = 1,
							height_in_frames = 16,
						}
          }),
          hr_version =
          {
            priority = "low",
            width = 301,
            height = 194,
            frame_count = 2,
            draw_as_shadow = true,
            direction_count = 64,
            shift = util.by_pixel(17.75, 7),
            max_advance = 1,
            stripes = util.multiplystripes(2,
            {
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-shadow-1.png",
								width_in_frames = 1,
								height_in_frames = 16,
							},
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-shadow-2.png",
								width_in_frames = 1,
								height_in_frames = 16,
							},
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-shadow-3.png",
								width_in_frames = 1,
								height_in_frames = 16,
							},
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-shadow-4.png",
								width_in_frames = 1,
								height_in_frames = 16,
							}
            }),
            scale = 1
          }
        }
      }
    },
    turret_animation =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/tank/tank-turret.png",
          priority = "low",
          line_length = 8,
          scale = 1.9,
          width = 90,
          height = 67,
          frame_count = 1,
          direction_count = 64,
          shift = util.by_pixel(-5, -59.5),
          animation_speed = 8,
          hr_version =
          {
            filename = "__base__/graphics/entity/tank/hr-tank-turret.png",
            priority = "low",
            line_length = 8,
            width = 179,
            height = 132,
            frame_count = 1,
            direction_count = 64,
            shift = util.by_pixel(-4.75, -59.5),
            animation_speed = 8,
            scale = 0.95
          }
        },
        {
          filename = "__base__/graphics/entity/tank/tank-turret-mask.png",
          priority = "low",
          line_length = 8,
          scale = 1.9,
          width = 36,
          height = 33,
          frame_count = 1,
          apply_runtime_tint = true,
          direction_count = 64,
          shift = util.by_pixel(-5, -61.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/tank/hr-tank-turret-mask.png",
            priority = "low",
            line_length = 8,
            width = 72,
            height = 66,
            frame_count = 1,
            apply_runtime_tint = true,
            direction_count = 64,
            shift = util.by_pixel(-5, -61.5),
            scale = 0.95
          }
        },
        {
          filename = "__base__/graphics/entity/tank/tank-turret-shadow.png",
          priority = "low",
          line_length = 8,
          scale = 1.9,
          width = 97,
          height = 67,
          frame_count = 1,
          draw_as_shadow = true,
          direction_count = 64,
          shift = util.by_pixel(91.5, 6.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/tank/hr-tank-turret-shadow.png",
            priority = "low",
            line_length = 8,
            width = 193,
            height = 134,
            frame_count = 1,
            draw_as_shadow = true,
            direction_count = 64,
            shift = util.by_pixel(91.25, 6.5),
            scale = 0.95
          }
        }
      }
    },
    turret_rotation_speed = 0.35 / 60,
    turret_return_timeout = 300,
    stop_trigger_speed = 0.2,
    sound_no_fuel =
    {
      {
        filename = "__base__/sound/fight/tank-no-fuel-1.ogg",
        volume = 0.6
      },
    },
    stop_trigger =
    {
      {
        type = "play-sound",
        sound =
        {
          {
            filename = "__base__/sound/car-breaks.ogg",
            volume = 0.6
          },
        }
      },
    },
    sound_minimum_speed = 0.15;
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/fight/tank-engine.ogg",
        volume = 0.6
      },
      activate_sound =
      {
        filename = "__base__/sound/fight/tank-engine-start.ogg",
        volume = 0.6
      },
      deactivate_sound =
      {
        filename = "__base__/sound/fight/tank-engine-stop.ogg",
        volume = 0.6
      },
      match_speed_to_activity = true,
    },
    open_sound = { filename = "__base__/sound/car-door-open.ogg", volume=0.7 },
    close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
    rotation_speed = 0.0035,
    tank_driving = true,
    weight = 50000,
    inventory_size = 60,
    guns = { "tank-machinegun-turret", "tank-mine-cannon", "tank-flamer", "tank-flamer-2" },
  },
	--Super Heavy WMD
  {
    type = "car",
    name = "super-tank-wmd",
		icons =
		{
			{ icon = "__base__/graphics/icons/tank.png" },
			{ icon = "__morebobs__/graphics/icons/tank/type-nade.png" },
			{ icon = "__morebobs__/graphics/icons/tank/tier-s.png" }
		},
		icon = "__base__/graphics/icons/tank.png",
    icon_size = 32,
    flags = {"pushable", "placeable-neutral", "player-creation", "placeable-off-grid"},
    minable = {mining_time = 1, result = "super-tank-wmd"},
    mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
    max_health = 4000,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    energy_per_hit_point = 0.5,
    resistances =
    {
      {
        type = "fire",
        decrease = 15,
        percent = 65
      },
      {
        type = "physical",
        decrease = 35,
        percent = 65
      },
      {
        type = "impact",
        decrease = 15,
        percent = 65
      },
      {
        type = "explosion",
        decrease = 15,
        percent = 65
      },
      {
        type = "acid",
        decrease = 10,
        percent = 50
      }
    },
    collision_box = {{2*-0.9, 2*-1.3}, {2*0.9, 2*1.3}},
    selection_box = {{2*-0.9, 2*-1.3}, {2*0.9, 2*1.3}},
	  --scale = 2,
    effectivity = 0.45,
    braking_power = "250kW",
    burner =
    {
      fuel_category = "chemical",
      effectivity = 0.55,
      fuel_inventory_size = 3,
      smoke =
      {
        {
          name = "tank-smoke",
          deviation = {0.25, 0.25},
          frequency = 50,
          position = {0, 1.5},
          starting_frame = 0,
          starting_frame_deviation = 60
        }
      }
    },
    consumption = "1250kW",
    terrain_friction_modifier = 0.2,
    friction = 0.002,
    light =
    {
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "extra-high",
          flags = { "light" },
          scale = 2,
          width = 200,
          height = 200,
        },
        shift = {-0.6, -14},
        size = 2,
        intensity = 0.6,
        color = {r = 0.9, g = 1.0, b = 1.0}
      },
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "extra-high",
          flags = { "light" },
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {0.6, -14},
        size = 2,
        intensity = 0.6,
        color = {r = 0.9, g = 1.0, b = 1.0}
      }
    },
    animation =
    {
      layers =
      {
        {
          priority = "low",
          scale = 2,
          width = 135,
          height = 106,
          frame_count = 2,
          direction_count = 64,
          shift = util.by_pixel(-4.5, -10),
          animation_speed = 8,
          max_advance = 1,
          stripes =
          {
						{
							filename = "__base__/graphics/entity/tank/tank-base-1.png",
							width_in_frames = 2,
							height_in_frames = 16,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-2.png",
							width_in_frames = 2,
							height_in_frames = 16,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-3.png",
							width_in_frames = 2,
							height_in_frames = 16,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-4.png",
							width_in_frames = 2,
							height_in_frames = 16,
						}
          },
          hr_version = {
            priority = "low",
            width = 269,
            height = 212,
            frame_count = 2,
            direction_count = 64,
            shift = util.by_pixel(-4.75, -10),
            animation_speed = 8,
            max_advance = 1,
            stripes =
            {
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-1.png",
								width_in_frames = 2,
								height_in_frames = 16,
							},
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-2.png",
								width_in_frames = 2,
								height_in_frames = 16,
							},
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-3.png",
								width_in_frames = 2,
								height_in_frames = 16,
							},
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-4.png",
								width_in_frames = 2,
								height_in_frames = 16,
							}
            },
            scale = 1
          }
        },
        {
          priority = "low",
          scale = 2,
          width = 104,
          height = 84,
          frame_count = 2,
          apply_runtime_tint = true,
          direction_count = 64,
          shift = util.by_pixel(-5, -32),
          max_advance = 1,
          line_length = 2,
          stripes = util.multiplystripes(2,
          {
            {
              filename = "__base__/graphics/entity/tank/tank-base-mask-1.png",
              width_in_frames = 1,
              height_in_frames = 22,
            },
            {
              filename = "__base__/graphics/entity/tank/tank-base-mask-2.png",
              width_in_frames = 1,
              height_in_frames = 22,
            },
            {
              filename = "__base__/graphics/entity/tank/tank-base-mask-3.png",
              width_in_frames = 1,
              height_in_frames = 20,
            },
          }),
          hr_version =
          {
            priority = "low",
            width = 207,
            height = 166,
            frame_count = 2,
            apply_runtime_tint = true,
            direction_count = 64,
            shift = util.by_pixel(-4.75, -32),
            max_advance = 1,
            line_length = 2,
            stripes = util.multiplystripes(2,
            {
              {
                filename = "__base__/graphics/entity/tank/hr-tank-base-mask-1.png",
                width_in_frames = 1,
                height_in_frames = 22,
              },
              {
                filename = "__base__/graphics/entity/tank/hr-tank-base-mask-2.png",
                width_in_frames = 1,
                height_in_frames = 22,
              },
              {
                filename = "__base__/graphics/entity/tank/hr-tank-base-mask-3.png",
                width_in_frames = 1,
                height_in_frames = 20,
              },
            }),
            scale = 1
          }
        },
        {
          priority = "low",
          scale = 2,
          width = 151,
          height = 98,
          frame_count = 2,
          draw_as_shadow = true,
          direction_count = 64,
          shift = util.by_pixel(17.5, 7),
          max_advance = 1,
          stripes = util.multiplystripes(2,
          {
						{
							filename = "__base__/graphics/entity/tank/tank-base-shadow-1.png",
							width_in_frames = 1,
							height_in_frames = 16,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-shadow-2.png",
							width_in_frames = 1,
							height_in_frames = 16,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-shadow-3.png",
							width_in_frames = 1,
							height_in_frames = 16,
						},
						{
							filename = "__base__/graphics/entity/tank/tank-base-shadow-4.png",
							width_in_frames = 1,
							height_in_frames = 16,
						}
          }),
          hr_version =
          {
            priority = "low",
            width = 301,
            height = 194,
            frame_count = 2,
            draw_as_shadow = true,
            direction_count = 64,
            shift = util.by_pixel(17.75, 7),
            max_advance = 1,
            stripes = util.multiplystripes(2,
            {
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-shadow-1.png",
								width_in_frames = 1,
								height_in_frames = 16,
							},
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-shadow-2.png",
								width_in_frames = 1,
								height_in_frames = 16,
							},
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-shadow-3.png",
								width_in_frames = 1,
								height_in_frames = 16,
							},
							{
								filename = "__base__/graphics/entity/tank/hr-tank-base-shadow-4.png",
								width_in_frames = 1,
								height_in_frames = 16,
							}
            }),
            scale = 1
          }
        }
      }
    },
    turret_animation =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/tank/tank-turret.png",
          priority = "low",
          line_length = 8,
          scale = 1.9,
          width = 90,
          height = 67,
          frame_count = 1,
          direction_count = 64,
          shift = util.by_pixel(-5, -59.5),
          animation_speed = 8,
          hr_version =
          {
            filename = "__base__/graphics/entity/tank/hr-tank-turret.png",
            priority = "low",
            line_length = 8,
            width = 179,
            height = 132,
            frame_count = 1,
            direction_count = 64,
            shift = util.by_pixel(-4.75, -59.5),
            animation_speed = 8,
            scale = 0.95
          }
        },
        {
          filename = "__base__/graphics/entity/tank/tank-turret-mask.png",
          priority = "low",
          line_length = 8,
          scale = 1.9,
          width = 36,
          height = 33,
          frame_count = 1,
          apply_runtime_tint = true,
          direction_count = 64,
          shift = util.by_pixel(-5, -61.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/tank/hr-tank-turret-mask.png",
            priority = "low",
            line_length = 8,
            width = 72,
            height = 66,
            frame_count = 1,
            apply_runtime_tint = true,
            direction_count = 64,
            shift = util.by_pixel(-5, -61.5),
            scale = 0.95
          }
        },
        {
          filename = "__base__/graphics/entity/tank/tank-turret-shadow.png",
          priority = "low",
          line_length = 8,
          scale = 1.9,
          width = 97,
          height = 67,
          frame_count = 1,
          draw_as_shadow = true,
          direction_count = 64,
          shift = util.by_pixel(91.5, 6.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/tank/hr-tank-turret-shadow.png",
            priority = "low",
            line_length = 8,
            width = 193,
            height = 134,
            frame_count = 1,
            draw_as_shadow = true,
            direction_count = 64,
            shift = util.by_pixel(91.25, 6.5),
            scale = 0.95
          }
        }
      }
    },
    turret_rotation_speed = 0.35 / 60,
    turret_return_timeout = 300,
    stop_trigger_speed = 0.2,
    sound_no_fuel =
    {
      {
        filename = "__base__/sound/fight/tank-no-fuel-1.ogg",
        volume = 0.6
      },
    },
    stop_trigger =
    {
      {
        type = "play-sound",
        sound =
        {
          {
            filename = "__base__/sound/car-breaks.ogg",
            volume = 0.6
          },
        }
      },
    },
    sound_minimum_speed = 0.15;
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/fight/tank-engine.ogg",
        volume = 0.6
      },
      activate_sound =
      {
        filename = "__base__/sound/fight/tank-engine-start.ogg",
        volume = 0.6
      },
      deactivate_sound =
      {
        filename = "__base__/sound/fight/tank-engine-stop.ogg",
        volume = 0.6
      },
      match_speed_to_activity = true,
    },
    open_sound = { filename = "__base__/sound/car-door-open.ogg", volume=0.7 },
    close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
    rotation_speed = 0.0035,
    tank_driving = true,
    weight = 50000,
    inventory_size = 120,
    guns = { "tank-machinegun-turret", "combat-shotgun", "tank-nade-cannon", "tank-wmd-cannon" },
  },
	--car-flamer
  {
    type = "car",
    name = "car-flamer",
		icons =
		{
			{ icon = "__base__/graphics/icons/car.png" },
			{ icon = "__morebobs__/graphics/icons/tank/type-flame.png" },
		},
		icon = "__base__/graphics/icons/car.png",
    icon_size = 32,
    flags = {"pushable", "placeable-neutral", "player-creation", "placeable-off-grid"},
    minable = {mining_time = 1, result = "car-flamer"},
    mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
    max_health = 700,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    energy_per_hit_point = 1,
    resistances =
    {
      {
        type = "fire",
        percent = 95
      },
      {
        type = "impact",
        percent = 30,
        decrease = 45
      }
    },
    collision_box = {{-0.7, -1}, {0.7, 1}},
    selection_box = {{-0.7, -1}, {0.7, 1}},
    effectivity = 0.5,
    braking_power = "250kW",
    burner =
    {
      fuel_category = "chemical",
      effectivity = 0.55,
      fuel_inventory_size = 1,
      smoke =
      {
        {
          name = "car-smoke",
          deviation = {0.25, 0.25},
          frequency = 200,
          position = {0, 1.5},
          starting_frame = 0,
          starting_frame_deviation = 60
        }
      }
    },
    consumption = "225kW",
    friction = 2e-3,
    light =
    {
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "extra-high",
          flags = { "light" },
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {-0.6, -14},
        size = 2,
        intensity = 0.6,
        color = {r = 0.92, g = 0.77, b = 0.3}
      },
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "medium",
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {0.6, -14},
        size = 2,
        intensity = 0.6,
        color = {r = 0.92, g = 0.77, b = 0.3}
      }
    },
    render_layer = "object",
    animation =
    {
      layers =
      {
        {
          priority = "low",
          width = 102,
          height = 86,
          frame_count = 2,
          direction_count = 64,
          shift = {0, -0.1875},
          animation_speed = 8,
          max_advance = 0.2,
          stripes =
          {
						{
							filename = "__base__/graphics/entity/car/car-1.png",
							width_in_frames = 2,
							height_in_frames = 22,
						},
						{
							filename = "__base__/graphics/entity/car/car-2.png",
							width_in_frames = 2,
							height_in_frames = 22,
						},
						{
							filename = "__base__/graphics/entity/car/car-3.png",
							width_in_frames = 2,
							height_in_frames = 20,
						},
          },
          hr_version =
          {
            priority = "low",
            width = 202,
            height = 172,
            frame_count = 2,
            scale = 0.5,
            direction_count = 64,
            shift = util.by_pixel(0+2, -11.5+8.5),
            animation_speed = 8,
            max_advance = 0.2,
            stripes =
            {
              {
                filename = "__base__/graphics/entity/car/hr-car-1.png",
                width_in_frames = 2,
                height_in_frames = 11
              },
              {
                filename = "__base__/graphics/entity/car/hr-car-2.png",
                width_in_frames = 2,
                height_in_frames = 11
              },
              {
                filename = "__base__/graphics/entity/car/hr-car-3.png",
                width_in_frames = 2,
                height_in_frames = 11
              },
              {
                filename = "__base__/graphics/entity/car/hr-car-4.png",
                width_in_frames = 2,
                height_in_frames = 11
              },
              {
                filename = "__base__/graphics/entity/car/hr-car-5.png",
                width_in_frames = 2,
                height_in_frames = 11
              },
              {
                filename = "__base__/graphics/entity/car/hr-car-6.png",
                width_in_frames = 2,
                height_in_frames = 9
              }
            }
          }
        },
        {
          priority = "low",
          width = 100,
          height = 75,
          frame_count = 2,
          apply_runtime_tint = true,
          direction_count = 64,
          max_advance = 0.2,
          line_length = 2,
          shift = {0, -0.171875},
          stripes = util.multiplystripes(2,
          {
            {
              filename = "__base__/graphics/entity/car/car-mask-1.png",
              width_in_frames = 1,
              height_in_frames = 22,
            },
            {
              filename = "__base__/graphics/entity/car/car-mask-2.png",
              width_in_frames = 1,
              height_in_frames = 22,
            },
            {
              filename = "__base__/graphics/entity/car/car-mask-3.png",
              width_in_frames = 1,
              height_in_frames = 20,
            },
          }),
          hr_version =
          {
            priority = "low",
            width = 199,
            height = 147,
            frame_count = 2,
            apply_runtime_tint = true,
            scale = 0.5,
            axially_symmetrical = false,
            direction_count = 64,
            max_advance = 0.2,
            shift = util.by_pixel(0+2, -11+8.5),
            line_length = 1,
            stripes = util.multiplystripes(2,
            {
              {
                filename = "__base__/graphics/entity/car/hr-car-mask-1.png",
                width_in_frames = 1,
                height_in_frames = 13
              },
              {
                filename = "__base__/graphics/entity/car/hr-car-mask-2.png",
                width_in_frames = 1,
                height_in_frames = 13
              },
              {
                filename = "__base__/graphics/entity/car/hr-car-mask-3.png",
                width_in_frames = 1,
                height_in_frames = 13
              },
              {
                filename = "__base__/graphics/entity/car/hr-car-mask-4.png",
                width_in_frames = 1,
                height_in_frames = 13
              },
              {
                filename = "__base__/graphics/entity/car/hr-car-mask-5.png",
                width_in_frames = 1,
                height_in_frames = 12
              }
            })
          }
        },
        {
          priority = "low",
          width = 114,
          height = 76,
          frame_count = 2,
          draw_as_shadow = true,
          direction_count = 64,
          shift = {0.28125, 0.25},
          max_advance = 0.2,
          stripes = util.multiplystripes(2,
          {
						{
							filename = "__base__/graphics/entity/car/car-shadow-1.png",
							width_in_frames = 1,
							height_in_frames = 22,
						},
						{
							filename = "__base__/graphics/entity/car/car-shadow-2.png",
							width_in_frames = 1,
							height_in_frames = 22,
						},
						{
							filename = "__base__/graphics/entity/car/car-shadow-3.png",
							width_in_frames = 1,
							height_in_frames = 20,
						}
          })
        }
      }
    },
    turret_animation =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/car/car-turret.png",
          priority = "low",
          line_length = 8,
          width = 36,
          height = 29,
          frame_count = 1,
          direction_count = 64,
          shift = {0.03125, -0.890625},
          animation_speed = 8,
          hr_version =
          {
            priority = "low",
            width = 71,
            height = 57,
            frame_count = 1,
            axially_symmetrical = false,
            direction_count = 64,
            shift = util.by_pixel(0+2, -33.5+8.5),
            animation_speed = 8,
            scale = 0.5,
            stripes =
            {
              {
                filename = "__base__/graphics/entity/car/hr-car-turret-1.png",
                width_in_frames = 1,
                height_in_frames = 32
              },
              {
                filename = "__base__/graphics/entity/car/hr-car-turret-2.png",
                width_in_frames = 1,
                height_in_frames = 32
              }
            }
          }
        },
        {
          filename = "__base__/graphics/entity/car/car-turret-shadow.png",
          priority = "low",
          line_length = 8,
          width = 46,
          height = 31,
          frame_count = 1,
          draw_as_shadow = true,
          direction_count = 64,
          shift = {0.875, 0.359375}
        }
      }
    },
    turret_rotation_speed = 0.35 / 60,
    sound_no_fuel =
    {
      {
        filename = "__base__/sound/fight/car-no-fuel-1.ogg",
        volume = 0.6
      }
    },
    stop_trigger_speed = 0.2,
    stop_trigger =
    {
      {
        type = "play-sound",
        sound =
        {
          {
            filename = "__base__/sound/car-breaks.ogg",
            volume = 0.6
          }
        }
      }
    },
    sound_minimum_speed = 0.2;
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/car-engine.ogg",
        volume = 0.6
      },
      activate_sound =
      {
        filename = "__base__/sound/car-engine-start.ogg",
        volume = 0.6
      },
      deactivate_sound =
      {
        filename = "__base__/sound/car-engine-stop.ogg",
        volume = 0.6
      },
      match_speed_to_activity = true,
    },
    open_sound = { filename = "__base__/sound/car-door-open.ogg", volume=0.7 },
    close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
    rotation_speed = 0.015,
    weight = 750,
    guns = { "tank-flamer" },
    inventory_size = 40
  }
})