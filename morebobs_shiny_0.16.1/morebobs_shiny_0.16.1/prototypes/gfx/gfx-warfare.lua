--warfare
--gun
if data.raw["item"]["pistol"] then data.raw["item"]["pistol"].icon = "__morebobs_shiny__/graphics/icons/warfare/pistol.png" end
if data.raw["item"]["pistol"] then data.raw["item"]["pistol"].icon_size = 32 end

if data.raw["item"]["submachine-gun"] then data.raw["item"]["submachine-gun"].icon = "__morebobs_shiny__/graphics/icons/warfare/submachine-gun.png" end
if data.raw["item"]["submachine-gun"] then data.raw["item"]["submachine-gun"].icon_size = 32 end

if data.raw["item"]["shotgun"] then data.raw["item"]["shotgun"].icon = "__morebobs_shiny__/graphics/icons/warfare/shotgun.png" end
if data.raw["item"]["shotgun"] then data.raw["item"]["shotgun"].icon_size = 32 end

if data.raw["item"]["rocket-launcher"] then data.raw["item"]["rocket-launcher"].icon = "__morebobs_shiny__/graphics/icons/warfare/rocket-launcher.png" end
if data.raw["item"]["rocket-launcher"] then data.raw["item"]["rocket-launcher"].icon_size = 32 end

--mine
if data.raw["item"]["land-mine"] then data.raw["item"]["land-mine"].icon = "__morebobs_shiny__/graphics/icons/warfare/land-mine.png" end
if data.raw["item"]["land-mine"] then data.raw["item"]["land-mine"].icon_size = 32 end

if data.raw["item"]["poison-mine"] then data.raw["item"]["poison-mine"].icon = "__morebobs_shiny__/graphics/icons/warfare/land-mine-poison.png" end
if data.raw["item"]["poison-mine"] then data.raw["item"]["poison-mine"].icon_size = 32 end

if data.raw["item"]["slowdown-mine"] then data.raw["item"]["slowdown-mine"].icon = "__morebobs_shiny__/graphics/icons/warfare/land-mine-slowdown.png" end
if data.raw["item"]["slowdown-mine"] then data.raw["item"]["slowdown-mine"].icon_size = 32 end

if data.raw["item"]["distractor-mine"] then data.raw["item"]["distractor-mine"].icon = "__morebobs_shiny__/graphics/icons/warfare/land-mine-distractor.png" end
if data.raw["item"]["distractor-mine"] then data.raw["item"]["distractor-mine"].icon_size = 32 end

--wall
if data.raw["item"]["reinforced-wall"] then data.raw["item"]["reinforced-wall"].icon = "__morebobs_shiny__/graphics/icons/warfare/reinforced-wall.png" end
if data.raw["item"]["reinforced-wall"] then data.raw["item"]["reinforced-wall"].icon_size = 32 end

if data.raw["item"]["reinforced-gate"] then data.raw["item"]["reinforced-gate"].icon = "__morebobs_shiny__/graphics/icons/warfare/reinforced-gate.png" end
if data.raw["item"]["reinforced-gate"] then data.raw["item"]["reinforced-gate"].icon_size = 32 end

--capsule
if data.raw["capsule"]["poison-capsule"] then data.raw["capsule"]["poison-capsule"].icon = "__morebobs_shiny__/graphics/icons/warfare/poison-capsule.png" end
if data.raw["capsule"]["poison-capsule"] then data.raw["capsule"]["poison-capsule"].icon_size = 32 end

if data.raw["capsule"]["slowdown-capsule"] then data.raw["capsule"]["slowdown-capsule"].icon = "__morebobs_shiny__/graphics/icons/warfare/slowdown-capsule.png" end
if data.raw["capsule"]["slowdown-capsule"] then data.raw["capsule"]["slowdown-capsule"].icon_size = 32 end

if data.raw["capsule"]["defender-capsule"] then data.raw["capsule"]["defender-capsule"].icon = "__morebobs_shiny__/graphics/icons/warfare/defender-capsule.png" end
if data.raw["capsule"]["defender-capsule"] then data.raw["capsule"]["defender-capsule"].icon_size = 32 end
if data.raw["projectile"]["defender-capsule"] then
	data.raw["projectile"]["defender-capsule"].animation =
	{
		filename = "__morebobs_shiny__/graphics/icons/warfare/defender-capsule.png",
		frame_count = 1,
		width = 32,
		height = 32,
		priority = "high"
	}
	data.raw["projectile"]["defender-capsule"].shadow =
	{
		filename = "__morebobs_shiny__/graphics/icons/warfare/combat-robot-capsule-shadow.png",
		frame_count = 1,
		width = 32,
		height = 32,
		priority = "high"
	}
end

if data.raw["capsule"]["distractor-capsule"] then data.raw["capsule"]["distractor-capsule"].icon = "__morebobs_shiny__/graphics/icons/warfare/distractor-capsule.png" end
if data.raw["capsule"]["distractor-capsule"] then data.raw["capsule"]["distractor-capsule"].icon_size = 32 end
if data.raw["projectile"]["distractor-capsule"] then
	data.raw["projectile"]["distractor-capsule"].animation =
	{
		filename = "__morebobs_shiny__/graphics/icons/warfare/distractor-capsule.png",
		frame_count = 1,
		width = 32,
		height = 32,
		priority = "high"
	}
	data.raw["projectile"]["distractor-capsule"].shadow =
	{
		filename = "__morebobs_shiny__/graphics/icons/warfare/combat-robot-capsule-shadow.png",
		frame_count = 1,
		width = 32,
		height = 32,
		priority = "high"
	}
end

if data.raw["capsule"]["destroyer-capsule"] then data.raw["capsule"]["destroyer-capsule"].icon = "__morebobs_shiny__/graphics/icons/warfare/destroyer-capsule.png" end
if data.raw["capsule"]["destroyer-capsule"] then data.raw["capsule"]["destroyer-capsule"].icon_size = 32 end
if data.raw["projectile"]["destroyer-capsule"] then
	data.raw["projectile"]["destroyer-capsule"].animation =
	{
		filename = "__morebobs_shiny__/graphics/icons/warfare/destroyer-capsule.png",
		frame_count = 1,
		width = 32,
		height = 32,
		priority = "high"
	}
	data.raw["projectile"]["destroyer-capsule"].shadow =
	{
		filename = "__morebobs_shiny__/graphics/icons/warfare/combat-robot-capsule-shadow.png",
		frame_count = 1,
		width = 32,
		height = 32,
		priority = "high"
	}
end

if data.raw["capsule"]["bob-laser-robot-capsule"] then data.raw["capsule"]["bob-laser-robot-capsule"].icon = "__morebobs_shiny__/graphics/icons/warfare/laser-robot-capsule.png" end
if data.raw["capsule"]["bob-laser-robot-capsule"] then data.raw["capsule"]["bob-laser-robot-capsule"].icon_size = 32 end
if data.raw["projectile"]["bob-laser-robot-capsule"] then
	data.raw["projectile"]["bob-laser-robot-capsule"].animation =
	{
		filename = "__morebobs_shiny__/graphics/icons/warfare/laser-robot-capsule.png",
		frame_count = 1,
		width = 32,
		height = 32,
		priority = "high"
	}
	data.raw["projectile"]["bob-laser-robot-capsule"].shadow =
	{
		filename = "__morebobs_shiny__/graphics/icons/warfare/combat-robot-capsule-shadow.png",
		frame_count = 1,
		width = 32,
		height = 32,
		priority = "high"
	}
end
if data.raw["combat-robot"]["bob-laser-robot"] then data.raw["combat-robot"]["bob-laser-robot"].alert_when_damaged = false end
if data.raw["combat-robot"]["bob-laser-robot"] then data.raw["combat-robot"]["bob-laser-robot"].minable = nil end

if data.raw["item"]["bob-robot-tank"] then
	data.raw["item"]["bob-robot-tank"].icon = "__morebobs_shiny__/graphics/icons/warfare/drone.png"
	data.raw["item"]["bob-robot-tank"].icon_size = 32 
end

--robots
if data.raw["item"]["defender-robot"] then
	data.raw["item"]["defender-robot"].icon = "__morebobs_shiny__/graphics/icons/warfare/defender.png"
	data.raw["item"]["defender-robot"].icon_size = 32 
	data.raw["combat-robot"]["defender"].icon = "__morebobs_shiny__/graphics/icons/warfare/defender.png"
	data.raw["combat-robot"]["defender"].icon_size = 32 
end

if data.raw["item"]["distractor-robot"] then
	data.raw["item"]["distractor-robot"].icon = "__morebobs_shiny__/graphics/icons/warfare/distractor.png"
	data.raw["item"]["distractor-robot"].icon_size = 32 
	data.raw["combat-robot"]["distractor"].icon = "__morebobs_shiny__/graphics/icons/warfare/distractor.png"
	data.raw["combat-robot"]["distractor"].icon_size = 32 
end

if data.raw["item"]["destroyer-robot"] then
	data.raw["item"]["destroyer-robot"].icon = "__morebobs_shiny__/graphics/icons/warfare/destroyer.png"
	data.raw["item"]["destroyer-robot"].icon_size = 32 
	data.raw["combat-robot"]["destroyer"].icon = "__morebobs_shiny__/graphics/icons/warfare/destroyer.png"
	data.raw["combat-robot"]["destroyer"].icon_size = 32 
end

if data.raw["item"]["bob-laser-robot"] then
	if not mods["ShinyBobGFX"] then
		data.raw["item"]["bob-laser-robot"].icon = "__morebobs_shiny__/graphics/icons/warfare/laser-robot.png"
		data.raw["item"]["bob-laser-robot"].icon_size = 32 
		data.raw["combat-robot"]["bob-laser-robot"].icon = "__morebobs_shiny__/graphics/icons/warfare/laser-robot.png"
		data.raw["combat-robot"]["bob-laser-robot"].icon_size = 32 
		data.raw["combat-robot"]["bob-laser-robot"].idle =
		{
		  layers =
		  {
				{
					filename = "__base__/graphics/entity/distractor-robot/distractor-robot.png",
					priority = "high",
					line_length = 16,
					width = 38,
					height = 33,
					frame_count = 1,
					direction_count = 16,
					shift = {0, -0.078125},
					hr_version = {
						filename = "__base__/graphics/entity/distractor-robot/hr-distractor-robot.png",
						priority = "high",
						line_length = 16,
						width = 72,
						height = 62,
						frame_count = 1,
						direction_count = 16,
						shift = util.by_pixel(0, -2.5),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/entity/distractor-robot/distractor-robot-mask.png",
					priority = "high",
					line_length = 16,
					width = 24,
					height = 21,
					frame_count = 1,
					direction_count = 16,
					shift = {0, -0.203125},
					apply_runtime_tint = true,
					hr_version = {
						filename = "__base__/graphics/entity/distractor-robot/hr-distractor-robot-mask.png",
						priority = "high",
						line_length = 16,
						width = 42,
						height = 37,
						frame_count = 1,
						direction_count = 16,
						shift = util.by_pixel(0, -6.25),
						apply_runtime_tint = true,
						scale = 0.5
					}
				}
		  }
		}
		data.raw["combat-robot"]["bob-laser-robot"].shadow_idle =
		{
		  filename = "__base__/graphics/entity/distractor-robot/distractor-robot-shadow.png",
		  priority = "high",
		  line_length = 16,
		  width = 40,
		  height = 25,
		  frame_count = 1,
		  direction_count = 16,
		  shift = {0.9375, 0.609375},
		  hr_version = {
				filename = "__base__/graphics/entity/distractor-robot/hr-distractor-robot-shadow.png",
				priority = "high",
				line_length = 16,
				width = 97,
				height = 59,
				frame_count = 1,
				direction_count = 16,
				shift = util.by_pixel(32.5, 19.25),
				scale = 0.5
		  }
		}
		data.raw["combat-robot"]["bob-laser-robot"].in_motion =
		{
		  layers =
		  {
				{
					filename = "__base__/graphics/entity/distractor-robot/distractor-robot.png",
					priority = "high",
					line_length = 16,
					width = 38,
					height = 33,
					frame_count = 1,
					direction_count = 16,
					shift = {0, -0.078125},
					y = 33,
					hr_version = {
						filename = "__base__/graphics/entity/distractor-robot/hr-distractor-robot.png",
						priority = "high",
						line_length = 16,
						width = 72,
						height = 62,
						frame_count = 1,
						direction_count = 16,
						shift = util.by_pixel(0, -2.5),
						y = 62,
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/entity/distractor-robot/distractor-robot-mask.png",
					priority = "high",
					line_length = 16,
					width = 24,
					height = 21,
					frame_count = 1,
					direction_count = 16,
					shift = {0, -0.203125},
					apply_runtime_tint = true,
					y = 21,
					hr_version = {
						filename = "__base__/graphics/entity/distractor-robot/hr-distractor-robot-mask.png",
						priority = "high",
						line_length = 16,
						width = 42,
						height = 37,
						frame_count = 1,
						direction_count = 16,
						shift = util.by_pixel(0, -6.25),
						apply_runtime_tint = true,
						y = 37,
						scale = 0.5
					}
				}
		  }
		}
		data.raw["combat-robot"]["bob-laser-robot"].shadow_in_motion =
		{
		  filename = "__base__/graphics/entity/distractor-robot/distractor-robot-shadow.png",
		  priority = "high",
		  line_length = 16,
		  width = 40,
		  height = 25,
		  frame_count = 1,
		  direction_count = 16,
		  shift = {0.9375, 0.609375},
		  hr_version = {
				filename = "__base__/graphics/entity/distractor-robot/hr-distractor-robot-shadow.png",
				priority = "high",
				line_length = 16,
				width = 97,
				height = 59,
				frame_count = 1,
				direction_count = 16,
				shift = util.by_pixel(32.5, 19.25),
				scale = 0.5
		  }
		}
	else
		data.raw["item"]["bob-laser-robot"].icon = "__morebobs_shiny__/graphics/icons/warfare/laser-robot-sh.png"
		data.raw["item"]["bob-laser-robot"].icon_size = 32 
		data.raw["combat-robot"]["bob-laser-robot"].icon = "__morebobs_shiny__/graphics/icons/warfare/laser-robot-sh.png"
		data.raw["combat-robot"]["bob-laser-robot"].icon_size = 32
		data.raw["combat-robot"]["bob-laser-robot"].idle = 
		{
		  layers =
		  {
				{
					filename = "__morebobs_shiny__/graphics/entity/robots/combot-1.png",
					priority = "high",
					width = 44,
					height = 44,
					frame_count = 1,
					direction_count = 1,
					hr_version = {
						filename = "__morebobs_shiny__/graphics/entity/robots/hr-combot-2.png",
						priority = "high",
						width = 88,
						height = 88,
						frame_count = 1,
						direction_count = 1,
						scale = 0.5
					}
				},
				{
					filename = "__morebobs_shiny__/graphics/entity/robots/laser-robot-sh-mask.png",
					priority = "high",
					width = 44,
					height = 44,
					frame_count = 1,
					direction_count = 1,
					apply_runtime_tint = true,
					hr_version = {
						filename = "__morebobs_shiny__/graphics/entity/robots/hr-laser-robot-sh-mask.png",
						priority = "high",
						width = 88,
						height = 88,
						frame_count = 1,
						direction_count = 1,
						apply_runtime_tint = true,
						scale = 0.5
					}
				}
		  }
		}
	data.raw["combat-robot"]["bob-laser-robot"].in_motion = 
		{
		  layers =
		  {
				{
					filename = "__morebobs_shiny__/graphics/entity/robots/combot-1.png",
					priority = "high",
					width = 44,
					height = 44,
					frame_count = 1,
					direction_count = 1,
					hr_version = {
						filename = "__morebobs_shiny__/graphics/entity/robots/hr-combot-2.png",
						priority = "high",
						width = 88,
						height = 88,
						frame_count = 1,
						direction_count = 1,
						scale = 0.5
					}
				},
				{
					filename = "__morebobs_shiny__/graphics/entity/robots/laser-robot-sh-mask.png",
					priority = "high",
					width = 44,
					height = 44,
					frame_count = 1,
					direction_count = 1,
					apply_runtime_tint = true,
					hr_version = {
						filename = "__morebobs_shiny__/graphics/entity/robots/hr-laser-robot-sh-mask.png",
						priority = "high",
						width = 88,
						height = 88,
						frame_count = 1,
						direction_count = 1,
						apply_runtime_tint = true,
						scale = 0.5
					}
				}
		  }
		}
	end
end

if not mods["ShinyBobGFX"] then
	if data.raw["ammo"]["bob-rocket"] then
		data.raw["ammo"]["bob-rocket"].icon = "__morebobs_shiny__/graphics/icons/warfare/rocket.png"
		data.raw["ammo"]["bob-rocket"].icon_size = 32
	end
	if data.raw["ammo"]["bob-piercing-rocket"] then
		data.raw["ammo"]["bob-piercing-rocket"].icon = "__morebobs_shiny__/graphics/icons/warfare/piercing-rocket.png"
		data.raw["ammo"]["bob-piercing-rocket"].icon_size = 32
	end
	if data.raw["ammo"]["bob-flame-rocket"] then
		data.raw["ammo"]["bob-flame-rocket"].icon = "__morebobs_shiny__/graphics/icons/warfare/flame-rocket.png"
		data.raw["ammo"]["bob-flame-rocket"].icon_size = 32
	end
	if data.raw["ammo"]["bob-acid-rocket"] then
		data.raw["ammo"]["bob-acid-rocket"].icon = "__morebobs_shiny__/graphics/icons/warfare/acid-rocket.png"
		data.raw["ammo"]["bob-acid-rocket"].icon_size = 32
	end
	if data.raw["ammo"]["bob-poison-rocket"] then
		data.raw["ammo"]["bob-poison-rocket"].icon = "__morebobs_shiny__/graphics/icons/warfare/poison-rocket.png"
		data.raw["ammo"]["bob-poison-rocket"].icon_size = 32
	end
	if data.raw["ammo"]["bob-electric-rocket"] then
		data.raw["ammo"]["bob-electric-rocket"].icon = "__morebobs_shiny__/graphics/icons/warfare/electric-rocket.png"
		data.raw["ammo"]["bob-electric-rocket"].icon_size = 32
	end
	if data.raw["ammo"]["bob-explosive-rocket"] then
		data.raw["ammo"]["bob-explosive-rocket"].icon = "__morebobs_shiny__/graphics/icons/warfare/explosive-rocket.png"
		data.raw["ammo"]["bob-explosive-rocket"].icon_size = 32
	end
	if data.raw["ammo"]["bob-impact-rocket"] then
		data.raw["ammo"]["bob-impact-rocket"].icon = "__morebobs_shiny__/graphics/icons/warfare/impact-rocket.png"
		data.raw["ammo"]["bob-impact-rocket"].icon_size = 32
	end
	
	if data.raw["ammo"]["poison-artillery-shell"] then
		data.raw["ammo"]["poison-artillery-shell"].icon = "__morebobs_shiny__/graphics/icons/warfare/poison-artillery-shell.png"
		data.raw["ammo"]["poison-artillery-shell"].icon_size = 32
	end
	if data.raw["ammo"]["explosive-artillery-shell"] then
		data.raw["ammo"]["explosive-artillery-shell"].icon = "__morebobs_shiny__/graphics/icons/warfare/explosive-artillery-shell.png"
		data.raw["ammo"]["explosive-artillery-shell"].icon_size = 32
	end
	if data.raw["ammo"]["distractor-artillery-shell"] then
		data.raw["ammo"]["distractor-artillery-shell"].icon = "__morebobs_shiny__/graphics/icons/warfare/distractor-artillery-shell.png"
		data.raw["ammo"]["distractor-artillery-shell"].icon_size = 32
	end
else
	if settings.startup["add-powerbars"] and settings.startup["add-powerbars"].value == true then
		if mods["Bio_Industries"] then
			if data.raw["item"]["bi-bio-cannon-area"] then
				data.raw["item"]["bi-bio-cannon-area"].icons = { { icon = "__Bio_Industries__/graphics/icons/biocannon_icon.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-0.png" } }
				data.raw["item"]["bi-dart-turret"].icons = { { icon = "__Bio_Industries__/graphics/icons/bio_turret_icon.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-0.png" } }
			end
		elseif mods["Natural_Evolution_Buildings"] then
			if data.raw["item"]["bi-bio-cannon-area"] then
				data.raw["item"]["bi-bio-cannon-area"].icons = { { icon = "__Natural_Evolution_Buildings__/graphics/icons/biocannon_icon.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-0.png" } }
				data.raw["item"]["bi-dart-turret"].icons = { { icon = "__Bio_Industries__/graphics/icons/bio_turret_icon.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-0.png" } }
			end
		end
		
		if data.raw["item-with-entity-data"]["tank"] then
			data.raw["item-with-entity-data"]["tank"].icons = { { icon = "__base__/graphics/icons/tank.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-1.png" } }
		end
		if data.raw["item-with-entity-data"]["bob-tank-2"] then
			data.raw["item-with-entity-data"]["bob-tank-2"].icons = { { icon = "__base__/graphics/icons/tank.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-2.png" } }
		end
		if data.raw["item-with-entity-data"]["bob-tank-3"] then
			data.raw["item-with-entity-data"]["bob-tank-3"].icons = { { icon = "__base__/graphics/icons/tank.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-3.png" } }
		end
	end
end