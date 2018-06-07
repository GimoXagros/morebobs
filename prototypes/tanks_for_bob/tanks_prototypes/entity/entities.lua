data:extend ({
	-- Special  
	--teleport-effect
	{
		type = "explosion",
		name = "pre-teleport-effect",
		flags = {"not-on-map"},
		animations =
		{
			{
				filename = "__morebobs__/graphics/entity/teleport/teleport-effect.png",
				priority = "extra-high",
				width = 48,
				height = 64,
				frame_count = 1,
				line_length = 10,
				--shift = {-0.56, -0.96},
				animation_speed = 0.5
			}
		},
	},
	--teleport-effect
	{
		type = "explosion",
		name = "teleport-effect",
		flags = {"not-on-map"},
		animations =
		{
			{
				filename = "__morebobs__/graphics/entity/teleport/teleport-effect.png",
				priority = "extra-high",
				width = 48,
				height = 64,
				frame_count = 100,
				line_length = 10,
				--shift = {-0.56, -0.96},
				animation_speed = 0.5
			}
		},
		light = {intensity = 1, size = 50},
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
					filename = "__base__/sound/fight/old/laser.ogg",
					volume = 0.8
				},
			}
		},
	},
	-- tank-assembly
	{
		type = "assembling-machine",
		name = "tank-assembling-machine",
		icons =
		{
			{ icon = "__morebobs__/graphics/icons/tank/tank-assembling-machine.png" },
			{ icon = "__morebobs__/graphics/icons/tank/tier-s.png" }
		},
		icon_size = 32,
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "tank-assembling-machine"},
		max_health = 400,
		corpse = "big-remnants",
		dying_explosion = "medium-explosion",
		alert_icon_shift = util.by_pixel(-3, -12),
		resistances =
		{
			{
				type = "fire",
				percent = 70
			}
		},
		fluid_boxes =
		{
			{
				production_type = "input",
				pipe_picture = assembler3pipepictures(),
				pipe_covers = pipecoverspictures(),
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type="input", position = {0, -2} }},
				secondary_draw_orders = { north = -1 }
			},
			{
				production_type = "output",
				pipe_picture = assembler3pipepictures(),
				pipe_covers = pipecoverspictures(),
				base_area = 10,
				base_level = 1,
				pipe_connections = {{ type="output", position = {0, 2} }},
				secondary_draw_orders = { north = -1 }
			},
			off_when_no_fluid_recipe = true
		},
		open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
		close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
		vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		working_sound =
		{
			sound =
			{
				{
					filename = "__base__/sound/assembling-machine-t3-1.ogg",
					volume = 0.8
				},
				{
					filename = "__base__/sound/assembling-machine-t3-2.ogg",
					volume = 0.8
				},
			},
			idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
			apparent_volume = 1.5,
		},
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		drawing_box = {{-1.5, -1.7}, {1.5, 1.5}},
		fast_replaceable_group = "assembling-machine",
		animation =
		{
			layers =
			{
				{
					filename = "__base__/graphics/entity/assembling-machine-3/assembling-machine-3.png",
					priority = "high",
					width = 108,
					height = 119,
					frame_count = 32,
					line_length = 8,
					shift = util.by_pixel(0, -0.5),
					hr_version = {
						filename = "__base__/graphics/entity/assembling-machine-3/hr-assembling-machine-3.png",
						priority = "high",
						width = 214,
						height = 237,
						frame_count = 32,
						line_length = 8,
						shift = util.by_pixel(0, -0.75),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/entity/assembling-machine-3/assembling-machine-3-shadow.png",
					priority = "high",
					width = 130,
					height = 82,
					frame_count = 32,
					line_length = 8,
					draw_as_shadow = true,
					shift = util.by_pixel(28, 4),
					hr_version = {
						filename = "__base__/graphics/entity/assembling-machine-3/hr-assembling-machine-3-shadow.png",
						priority = "high",
						width = 260,
						height = 162,
						frame_count = 32,
						line_length = 8,
						draw_as_shadow = true,
						shift = util.by_pixel(28, 4),
						scale = 0.5
					}
				},
			},
		},
		crafting_categories = {"tank-crafting", "tank-ammo-component"},
		crafting_speed = 1,
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			emissions = 0.05 / 3.5
		},
		energy_usage = "175kW",
		ingredient_count = 6,
		module_specification =
		{
			module_slots = 4
		},
		allowed_effects = {"consumption", "speed", "productivity", "pollution"}
	},
	-- -- munition maker
	-- {
    -- type = "assembling-machine",
    -- name = "tank-ammo-assembling-machine",
    -- icon = "__morebobs__/graphics/icons/tank-ammo-assembling-machine.png",
    -- icon_size = 32,
    -- flags = {"placeable-neutral","placeable-player", "player-creation"},
    -- minable = {hardness = 0.2, mining_time = 0.5, result = "tank-ammo-assembling-machine"},
    -- max_health = 150,
    -- corpse = "big-remnants",
    -- dying_explosion = "medium-explosion",
    -- resistances = 
    -- {
      -- {
        -- type = "fire",
        -- percent = 95
      -- }
    -- },
    -- open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    -- close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    -- working_sound =
    -- {
      -- sound =
			-- {
        -- {
          -- filename = "__base__/sound/assembling-machine-t3-1.ogg",
          -- volume = 0.8
        -- },
        -- {
          -- filename = "__base__/sound/assembling-machine-t3-2.ogg",
          -- volume = 0.8
        -- },
      -- },
      -- idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      -- apparent_volume = 1.5,
    -- },
    -- collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    -- selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    -- fast_replaceable_group = "assembling-machine",
    -- animation =
    -- {
      -- filename = "__morebobs__/graphics/entity/tank-assembling-machine/tank-assembling-machine.png",
      -- priority = "high",
      -- width = 142,
      -- height = 113,
      -- frame_count = 32,
      -- line_length = 8,
      -- shift = {0.84, -0.09}
    -- },
    -- crafting_categories = {"tank-ammo-component"},
    -- crafting_speed = 1.00,
    -- energy_source =
    -- {
      -- type = "electric",
      -- usage_priority = "secondary-input",
      -- emissions = 0.05 / 3.5
    -- },
    -- energy_usage = "175kW",
    -- ingredient_count = 6,
    -- module_slots = 1,
    -- allowed_effects = {"consumption", "speed", "productivity", "pollution"}
  -- },
	-- tank-flame-thrower-explosion
	{
		type = "flame-thrower-explosion",
		name = "tank-flame-thrower-explosion",
		flags = {"not-on-map"},
		animation_speed = 1,
		animations =
		{
			{
				filename = "__base__/graphics/entity/flamethrower-fire-stream/flamethrower-explosion.png",
				priority = "extra-high",
				width = 64,
				height = 64,
				frame_count = 64,
				scale = 1.5,
				line_length = 8
			}
		},
		light = {intensity = 0.4, size = 16},
		slow_down_factor = 0.98,
		smoke = "smoke-fast",
		smoke_count = 1,
		smoke_slow_down_factor = 0.95,
		damage = 
		{	
			amount = 1.50, 
			type = "fire"
		}
  },
	-- massive-scorchmark
	{
    type = "corpse",
    name = "massive-scorchmark",
    icon = "__base__/graphics/icons/small-scorchmark.png",
    icon_size = data.raw["corpse"]["small-scorchmark"].icon_size,
    flags = {"placeable-neutral", "not-on-map", "placeable-off-grid"},
    collision_box = {{-1.5, -1.5}, {1.5, 1.5}},
    collision_mask = {"doodad-layer", "not-colliding-with-itself"},
    selection_box = {{-1, -1}, {1, 1}},
    selectable_in_game = false,
    time_before_removed = 60 * 60 * 10, -- 10 minutes
    final_render_layer = "ground-patch-higher2",
    subgroup = "remnants",
    order="d[remnants]-b[scorchmark]-a[small]",
    animation =
    {
			width = 110,
			height = 90,
			scale = 5,
			frame_count = 1,
			direction_count = 1,
			filename = "__base__/graphics/entity/scorchmark/small-scorchmark.png",
			variation_count = 3
    },
    ground_patch =
    {
      sheet =
      {
				width = 110,
				height = 90,
				scale = 5,
				frame_count = 1,
				direction_count = 1,
				x = 110 * 2,
				filename = "__base__/graphics/entity/scorchmark/small-scorchmark.png",
				variation_count = 3
      }
    },
    ground_patch_higher =
    {
      sheet =
      {
				width = 110,
				height = 90,
				scale = 5,
				frame_count = 1,
				direction_count = 1,
				x = 110,
				filename = "__base__/graphics/entity/scorchmark/small-scorchmark.png",
				variation_count = 3
      }
    }
  },
	-- land-mine-poison
  {
    type = "land-mine",
    name = "land-mine-poison",
    icon = "__base__/graphics/icons/land-mine.png",
    icon_size = data.raw["land-mine"]["land-mine"].icon_size,
    flags =
    {
      "placeable-player",
      "placeable-enemy",
      "player-creation",
      "placeable-off-grid",
      "not-on-map"
    },
    minable = {mining_time = 1, result = "land-mine"},
    mined_sound = { filename = "__core__/sound/deconstruct-small.ogg" },
    max_health = 15,
    corpse = "small-remnants",
    collision_box = {{-0.4,-0.4}, {0.4, 0.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    dying_explosion = "explosion-hit",
    picture_safe =
    {
      filename = "__base__/graphics/entity/land-mine/land-mine.png",
      priority = "medium",
      width = 32,
      height = 32
    },
    picture_set =
    {
      filename = "__base__/graphics/entity/land-mine/land-mine-set.png",
      priority = "medium",
      width = 32,
      height = 32
    },
    trigger_radius = 3.5,
    ammo_category = "landmine",
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        source_effects =
        {
          {
            type = "nested-result",
            affects_target = true,
            action =
            {
              type = "area",
              radius = 6,
              collision_mask = { "player-layer" },
              action_delivery =
              {
                type = "instant",
                target_effects = 
                {
                  type = "damage",
                  damage = { amount = 300, type = "poison"}
                }
              }
            },
          },
          {
            type = "create-entity",
            entity_name = "poison-cloud-2"
          },
          {
            type = "damage",
            damage = { amount = 50, type = "explosion"}
          }
        }
      }
    },
  },
	-- poison-cloud-2
  {
    type = "smoke-with-trigger",
    name = "poison-cloud-2",
    flags = {"not-on-map"},
    show_when_smoke_off = true,
    animation =
    {
      filename = "__base__/graphics/entity/cloud/cloud-45-frames.png",
      flags = { "compressed" },
      priority = "low",
      width = 256,
      height = 256,
      frame_count = 45,
      animation_speed = 0.5,
      line_length = 7,
      scale = 5,
    },
    slow_down_factor = 0,
    affected_by_wind = false,
    cyclic = true,
    duration = 60 * 20,
    fade_away_duration = 2 * 60,
    spread_duration = 10,
    color = { r = 0.718, g = 0.761, b = 0.200 },
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          type = "nested-result",
          action =
          {
            type = "area",
            radius = 18,
            entity_flags = {"breaths-air"},
            action_delivery =
            {
              type = "instant",
              target_effects =
              {
                type = "damage",
                damage = { amount = 20, type = "poison"}
              }
            }
          }
        }
      }
    },
    action_cooldown = 30
  },
	-- Iron wall
  {
    type = "wall",
    name = "iron-wall",
    icon = "__morebobs__/graphics/icons/tank/iron-wall.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    minable = {mining_time = 0.5, result = "iron-wall"},
    fast_replaceable_group = "wall",
    max_health = 550,
    repair_speed_modifier = 2,
    corpse = "wall-remnants",
    repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
    mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
    vehicle_impact_sound = { filename = "__base__/sound/car-stone-impact.ogg", volume = 1.0 },
    -- this kind of code can be used for having walls mirror the effect
    -- there can be multiple reaction items
    --attack_reaction =
    --{
      --{
        ---- how far the mirroring works
        --range = 2,
        ---- what kind of damage triggers the mirroring
        ---- if not present then anything triggers the mirroring
        --damage_type = "physical",
        ---- caused damage will be multiplied by this and added to the subsequent damages
        --reaction_modifier = 0.1,
        --action =
        --{
          --type = "direct",
          --action_delivery =
          --{
            --type = "instant",
            --target_effects =
            --{
              --type = "damage",
              ---- always use at least 0.1 damage
              --damage = {amount = 0.1, type = "physical"}
            --}
          --}
        --},
      --}
    --},
    connected_gate_visualization =
    {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "high",
      width = 64,
      height = 64,
      scale = 0.5
    },
    resistances =
    {
      {
        type = "physical",
        decrease = 9,
        percent = 60
      },
      {
        type = "impact",
        decrease = 85,
        percent = 100
      },
      {
        type = "explosion",
        decrease = 30,
        percent = 90
      },
      {
        type = "fire",
        decrease = 50,
        percent = 100
      },
      {
        type = "laser",
        decrease = 50,
        percent = 100
      }
    },
    pictures =
    {
      single =
      {
        layers =
        {
          {
            filename = "__morebobs__/graphics/entity/iron-wall/wall-single.png",
            priority = "extra-high",
            width = 22,
            height = 42,
            shift = {0, -0.15625}
          },
          {
            filename = "__base__/graphics/entity/stone-wall/wall-single-shadow.png",
            priority = "extra-high",
            width = 47,
            height = 32,
            shift = {0.359375, 0.5},
            draw_as_shadow = true
          }
        }
      },
      straight_vertical =
      {
        {
          layers =
          {
            {
              filename = "__morebobs__/graphics/entity/iron-wall/wall-straight-vertical-1.png",
              priority = "extra-high",
              width = 22,
              height = 42,
              shift = {0, -0.15625}
            },
            {
              filename = "__base__/graphics/entity/stone-wall/wall-straight-vertical-shadow.png",
              priority = "extra-high",
              width = 47,
              height = 60,
              shift = {0.390625, 0.625},
              draw_as_shadow = true
            }
          }
        },
        {
          layers =
          {
            {
              filename = "__morebobs__/graphics/entity/iron-wall/wall-straight-vertical-2.png",
              priority = "extra-high",
              width = 22,
              height = 42,
              shift = {0, -0.15625}
            },
            {
              filename = "__base__/graphics/entity/stone-wall/wall-straight-vertical-shadow.png",
              priority = "extra-high",
              width = 47,
              height = 60,
              shift = {0.390625, 0.625},
              draw_as_shadow = true
            }
          }
        },
        {
          layers =
          {
            {
              filename = "__morebobs__/graphics/entity/iron-wall/wall-straight-vertical-3.png",
              priority = "extra-high",
              width = 22,
              height = 42,
              shift = {0, -0.15625}
            },
            {
              filename = "__base__/graphics/entity/stone-wall/wall-straight-vertical-shadow.png",
              priority = "extra-high",
              width = 47,
              height = 60,
              shift = {0.390625, 0.625},
              draw_as_shadow = true
            }
          }
        }
      },
      straight_horizontal =
      {
        {
          layers =
          {
            {
              filename = "__morebobs__/graphics/entity/iron-wall/wall-straight-horizontal-1.png",
              priority = "extra-high",
              width = 32,
              height = 42,
              shift = {0, -0.15625}
            },
            {
              filename = "__base__/graphics/entity/stone-wall/wall-straight-horizontal-shadow.png",
              priority = "extra-high",
              width = 59,
              height = 32,
              shift = {0.421875, 0.5},
              draw_as_shadow = true
            }
          }
        },
        {
          layers =
          {
            {
              filename = "__morebobs__/graphics/entity/iron-wall/wall-straight-horizontal-2.png",
              priority = "extra-high",
              width = 32,
              height = 42,
              shift = {0, -0.15625}
            },
            {
              filename = "__base__/graphics/entity/stone-wall/wall-straight-horizontal-shadow.png",
              priority = "extra-high",
              width = 59,
              height = 32,
              shift = {0.421875, 0.5},
              draw_as_shadow = true
            }
          }
        },
        {
          layers =
          {
            {
              filename = "__morebobs__/graphics/entity/iron-wall/wall-straight-horizontal-3.png",
              priority = "extra-high",
              width = 32,
              height = 42,
              shift = {0, -0.15625}
            },
            {
              filename = "__base__/graphics/entity/stone-wall/wall-straight-horizontal-shadow.png",
              priority = "extra-high",
              width = 59,
              height = 32,
              shift = {0.421875, 0.5},
              draw_as_shadow = true
            }
          }
        }
      },
      corner_right_down =
      {
        layers =
        {
          {
            filename = "__morebobs__/graphics/entity/iron-wall/wall-corner-right-down.png",
            priority = "extra-high",
            width = 27,
            height = 42,
            shift = {0.078125, -0.15625}
          },
          {
            filename = "__base__/graphics/entity/stone-wall/wall-corner-right-down-shadow.png",
            priority = "extra-high",
            width = 53,
            height = 61,
            shift = {0.484375, 0.640625},
            draw_as_shadow = true
          }
        }
      },
      corner_left_down =
      {
        layers =
        {
          {
            filename = "__morebobs__/graphics/entity/iron-wall/wall-corner-left-down.png",
            priority = "extra-high",
            width = 27,
            height = 42,
            shift = {-0.078125, -0.15625}
          },
          {
            filename = "__base__/graphics/entity/stone-wall/wall-corner-left-down-shadow.png",
            priority = "extra-high",
            width = 53,
            height = 60,
            shift = {0.328125, 0.640625},
            draw_as_shadow = true
          }
        }
      },
      t_up =
      {
        layers =
        {
          {
            filename = "__morebobs__/graphics/entity/iron-wall/wall-t-down.png",
            priority = "extra-high",
            width = 32,
            height = 42,
            shift = {0, -0.15625}
          },
          {
            filename = "__base__/graphics/entity/stone-wall/wall-t-down-shadow.png",
            priority = "extra-high",
            width = 71,
            height = 61,
            shift = {0.546875, 0.640625},
            draw_as_shadow = true
          }
        }
      },
      ending_right =
      {
        layers =
        {
          {
            filename = "__morebobs__/graphics/entity/iron-wall/wall-ending-right.png",
            priority = "extra-high",
            width = 27,
            height = 42,
            shift = {0.078125, -0.15625}
          },
          {
            filename = "__base__/graphics/entity/stone-wall/wall-ending-right-shadow.png",
            priority = "extra-high",
            width = 53,
            height = 32,
            shift = {0.484375, 0.5},
            draw_as_shadow = true
          }
        }
      },
      ending_left =
      {
        layers =
        {
          {
            filename = "__morebobs__/graphics/entity/iron-wall/wall-ending-left.png",
            priority = "extra-high",
            width = 27,
            height = 42,
            shift = {-0.078125, -0.15625}
          },
          {
            filename = "__base__/graphics/entity/stone-wall/wall-ending-left-shadow.png",
            priority = "extra-high",
            width = 53,
            height = 32,
            shift = {0.328125, 0.5},
            draw_as_shadow = true
          }
        }
      }
    },
	  wall_diode_green = util.conditional_return(not data.is_demo,
		{
			filename = "__base__/graphics/entity/gate/wall-diode-green.png",
			width = 21,
			height = 22,
			shift = {0, -0.78125}
		}),
    wall_diode_green_light = util.conditional_return(not data.is_demo,
		{
			minimum_darkness = 0.3,
			color = {g=1},
			shift = {0, -0.78125},
			size = 1,
			intensity = 0.3
		}),
    wall_diode_red = util.conditional_return(not data.is_demo,
    {
      filename = "__base__/graphics/entity/gate/wall-diode-red.png",
      width = 21,
      height = 22,
      shift = {0, -0.78125}
    }),
    wall_diode_red_light = util.conditional_return(not data.is_demo,
    {
      minimum_darkness = 0.3,
      color = {r=1},
      shift = {0, -0.78125},
      size = 1,
      intensity = 0.3
    }),

		circuit_wire_connection_point = circuit_connector_definitions["gate"].points,
		circuit_connector_sprites = circuit_connector_definitions["gate"].sprites,
		circuit_wire_max_distance = default_circuit_wire_max_distance,
		default_output_signal = data.is_demo and {type = "virtual", name = "signal-green"} or {type = "virtual", name = "signal-G"}
  },
  {
    type = "gate",
    name = "iron-gate",
    icon = "__morebobs__/graphics/icons/tank/iron-gate.png",
    icon_size = 32,
    flags = {"placeable-neutral","placeable-player", "player-creation"},
    fast_replaceable_group = "wall",
    minable = {hardness = 0.2, mining_time = 0.5, result = "iron-gate"},
    max_health = 550,
    corpse = "small-remnants",
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    opening_speed = 0.08,
    activation_distance = 3,
    timeout_to_close = 5,
    resistances =
    {
      {
        type = "physical",
        decrease = 3,
        percent = 20
      },
      {
        type = "impact",
        decrease = 45,
        percent = 60
      },
      {
        type = "explosion",
        decrease = 10,
        percent = 30
      },
      {
        type = "fire",
        percent = 100
      },
      {
        type = "laser",
        percent = 70
      }
    },
    vertical_animation =
    {
      layers =
      {
        {
          filename = "__morebobs__/graphics/entity/iron-gate/gate-vertical.png",
          line_length = 8,
          width = 21,
          height = 60,
          frame_count = 16,
          shift = {0.015625, -0.40625}
        },
        {
          filename = "__base__/graphics/entity/gate/gate-vertical-shadow.png",
          line_length = 8,
          width = 41,
          height = 50,
          frame_count = 16,
          shift = {0.328125, 0.3},
          draw_as_shadow = true
        }
      }
    },
    horizontal_animation =
    {
      layers =
      {
        {
          filename = "__morebobs__/graphics/entity/iron-gate/gate-horizontal.png",
          line_length = 8,
          width = 32,
          height = 36,
          frame_count = 16,
          shift = {0, -0.21875}
        },
        {
          filename = "__base__/graphics/entity/gate/gate-horizontal-shadow.png",
          line_length = 8,
          width = 62,
          height = 28,
          frame_count = 16,
          shift = {0.4375, 0.46875},
          draw_as_shadow = true
        }
      }
    },
    vertical_base =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/gate/gate-base-vertical.png",
          width = 32,
          height = 32
        },
        {
          filename = "__base__/graphics/entity/gate/gate-base-vertical-mask.png",
          width = 32,
          height = 32,
          apply_runtime_tint = true
        }
      }
    },
    horizontal_rail_animation_left =
    {
      layers =
      {
        {
          filename = "__morebobs__/graphics/entity/iron-gate/gate-rail-horizontal-left.png",
          line_length = 8,
          width = 32,
          height = 47,
          frame_count = 16,
          shift = {0, -0.140625 + 0.125}
        },
        {
          filename = "__base__/graphics/entity/gate/gate-rail-horizontal-shadow-left.png",
          line_length = 8,
          width = 73,
          height = 27,
          frame_count = 16,
          shift = {0.078125, 0.171875 + 0.125},
          draw_as_shadow = true
        }
      }
    },
    horizontal_rail_animation_right =
    {
      layers =
      {
        {
          filename = "__morebobs__/graphics/entity/iron-gate/gate-rail-horizontal-right.png",
          line_length = 8,
          width = 32,
          height = 43,
          frame_count = 16,
          shift = {0, -0.203125 + 0.125}
        },
        {
          filename = "__base__/graphics/entity/gate/gate-rail-horizontal-shadow-right.png",
          line_length = 8,
          width = 73,
          height = 28,
          frame_count = 16,
          shift = {0.60938, 0.2875 + 0.125},
          draw_as_shadow = true
        }
      }
    },
    vertical_rail_animation_left =
    {
      layers =
      {
        {
          filename = "__morebobs__/graphics/entity/iron-gate/gate-rail-vertical-left.png",
          line_length = 8,
          width = 22,
          height = 54,
          frame_count = 16,
          shift = {0, -0.46875}
        },
        {
          filename = "__base__/graphics/entity/gate/gate-rail-vertical-shadow-left.png",
          line_length = 8,
          width = 47,
          height = 48,
          frame_count = 16,
          shift = {0.27, -0.16125 + 0.5},
          draw_as_shadow = true
        }
      }
    },
    vertical_rail_animation_right =
    {
      layers =
      {
        {
          filename = "__morebobs__/graphics/entity/iron-gate/gate-rail-vertical-right.png",
          line_length = 8,
          width = 22,
          height = 55,
          frame_count = 16,
          shift = {0, -0.453125}
        },
        {
          filename = "__base__/graphics/entity/gate/gate-rail-vertical-shadow-right.png",
          line_length = 8,
          width = 47,
          height = 47,
          frame_count = 16,
          shift = {0.27, 0.803125 - 0.5},
          draw_as_shadow = true
        }
      }
    },
    vertical_rail_base =
    {
      filename = "__base__/graphics/entity/gate/gate-rail-base-vertical.png",
      line_length = 8,
      width = 64,
      height = 64,
      frame_count = 16,
      shift = {0, 0},
    },
    horizontal_rail_base =
    {
      filename = "__base__/graphics/entity/gate/gate-rail-base-horizontal.png",
      line_length = 8,
      width = 64,
      height = 45,
      frame_count = 16,
      shift = {0, -0.015625 + 0.125},
    },
    vertical_rail_base_mask =
    {
      filename = "__base__/graphics/entity/gate/gate-rail-base-mask-vertical.png",
      width = 63,
      height = 39,
      shift = {0.015625, -0.015625},
      apply_runtime_tint = true
    },
    horizontal_rail_base_mask =
    {
      filename = "__base__/graphics/entity/gate/gate-rail-base-mask-horizontal.png",
      width = 53,
      height = 45,
      shift = {0.015625, -0.015625 + 0.125},
      apply_runtime_tint = true
    },
    horizontal_base =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/gate/gate-base-horizontal.png",
          width = 32,
          height = 23,
          shift = {0, 0.125}
        },
        {
          filename = "__base__/graphics/entity/gate/gate-base-horizontal-mask.png",
          width = 32,
          height = 23,
          apply_runtime_tint = true,
          shift = {0, 0.125}
        }
      }
    },
    wall_patch =
    {
      north =
      {
        layers =
        {
          {
            filename = "__morebobs__/graphics/entity/iron-gate/wall-patch-north.png",
            width = 22,
            height = 35,
            shift = {0, -0.62 + 1}
          },
          {
            filename = "__base__/graphics/entity/gate/wall-patch-north-shadow.png",
            width = 46,
            height = 31,
            shift = {0.3, 0.20 + 1},
            draw_as_shadow = true
          }
        }
      },
      east =
      {
        layers =
        {
          {
            filename = "__morebobs__/graphics/entity/iron-gate/wall-patch-east.png",
            width = 11,
            height = 40,
            shift = {0.328125 - 1, -0.109375}
          },
          {
            filename = "__base__/graphics/entity/gate/wall-patch-east-shadow.png",
            width = 38,
            height = 32,
            shift = {0.8125 - 1, 0.46875},
            draw_as_shadow = true
          }
        }
      },
      south =
      {
        layers =
        {
          {
            filename = "__morebobs__/graphics/entity/iron-gate/wall-patch-south.png",
            width = 22,
            height = 40,
            shift = {0, -0.125}
          },
          {
            filename = "__base__/graphics/entity/gate/wall-patch-south-shadow.png",
            width = 48,
            height = 25,
            shift = {0.3, 0.95},
            draw_as_shadow = true
          }
        }
      },
      west =
      {
        layers =
        {
          {
            filename = "__morebobs__/graphics/entity/iron-gate/wall-patch-west.png",
            width = 11,
            height = 40,
            shift = {-0.328125 + 1, -0.109375}
          },
          {
            filename = "__base__/graphics/entity/gate/wall-patch-west-shadow.png",
            width = 46,
            height = 32,
            shift = {0.1875 + 1, 0.46875},
            draw_as_shadow = true
          }
        }
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    open_sound =
    {
      variations = { filename = "__base__/sound/gate1.ogg", volume = 0.5 },
      aggregation =
      {
        max_count = 1,
        remove = true
      }
    },
    close_sound =
    {
      variations = { filename = "__base__/sound/gate1.ogg", volume = 0.5 },
      aggregation =
      {
        max_count = 1,
        remove = true
      }
    }
  },
-- Bullet hit sound
  {
    type = "explosion",
    name = "auto-cannon-hit",
    flags = {"not-on-map"},
    animations =
    {
      {
        filename = "__base__/graphics/entity/explosion-gunshot/explosion-gunshot.png",
        priority = "extra-high",
        width = 34,
        height = 38,
        frame_count = 13,
        animation_speed = 1.5,
        shift = {0, 0}
      }
    },
    rotate = true,
    light = {intensity = 1, size = 10},
    smoke = "smoke-fast",
    smoke_count = 1,
    smoke_slow_down_factor = 1,
    sound =
    {
      filename = "__morebobs__/sounds/fight/auto-cannon-hit.ogg",
      volume = 1.0
    }
  },
})
