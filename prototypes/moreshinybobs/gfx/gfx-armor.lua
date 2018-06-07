--warfare
	--armor
if data.raw["armor"]["heavy-armor-3"] then
	data.raw.player.player.animations.bobsarmor = {
		armors = {"heavy-armor-2", "heavy-armor-3"},
		idle =
		{
		  layers =
		  {
				playeranimations.level1.idle,
				playeranimations.level1.idle_mask,
				playeranimations.level2addon.idle,
				playeranimations.level2addon.idle_mask,
				playeranimations.level1.idle_shadow,
		  }
		},
		idle_with_gun =
		{
		  layers =
		  {
				playeranimations.level1.idle_gun,
				playeranimations.level1.idle_gun_mask,
				playeranimations.level2addon.idle_gun,
				playeranimations.level2addon.idle_gun_mask,
				playeranimations.level1.idle_gun_shadow,
		  }
		},
		mining_with_hands =
		{
		  layers =
		  {
				playeranimations.level1.mining_hands,
				playeranimations.level1.mining_hands_mask,
				playeranimations.level2addon.mining_hands,
				playeranimations.level2addon.mining_hands_mask,
				playeranimations.level1.mining_hands_shadow,
		  }
		},
		mining_with_tool =
		{
		  layers =
		  {
				playeranimations.level1.mining_tool,
				playeranimations.level1.mining_tool_mask,
				playeranimations.level2addon.mining_tool,
				playeranimations.level2addon.mining_tool_mask,
				playeranimations.level1.mining_tool_shadow,
		  }
		},
		running_with_gun =
		{
		  layers =
		  {
				playeranimations.level1.running_gun,
				playeranimations.level1.running_gun_mask,
				playeranimations.level2addon.running_gun,
				playeranimations.level2addon.running_gun_mask,
				playeranimations.level1.running_gun_shadow,
		  }
		},
		running =
		{
		  layers =
		  {
				playeranimations.level1.running,
				playeranimations.level1.running_mask,
				playeranimations.level2addon.running,
				playeranimations.level2addon.running_mask,
				playeranimations.level1.running_shadow,
		  }
		}
	}
end

if data.raw["armor"]["bob-power-armor-mk5"] or data.raw["armor"]["power-armor-mk5"] then
	data.raw.player.player.animations.bobspowerarmor = {
		armors = {"bob-power-armor-mk3", "bob-power-armor-mk4", "bob-power-armor-mk5"} or {"power-armor-mk3", "power-armor-mk4", "power-armor-mk5"},
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
	if data.raw["armor"]["power-armor-mk5"] then
		data.raw["character-corpse"]["character-corpse"].armor_picture_mapping =
		{
		  --nil = 1,
		  ["light-armor"] = 2,
		  ["heavy-armor"] = not data.is_demo and 2 or nil,
		  ["modular-armor"] = not data.is_demo and 3 or nil,
		  ["power-armor"] = not data.is_demo and 3 or nil,
		  ["power-armor-mk2"] = not data.is_demo and 3 or nil,
		  ["power-armor-mk3"] = not data.is_demo and 3 or nil,
		  ["power-armor-mk4"] = not data.is_demo and 3 or nil,
		  ["power-armor-mk5"] = not data.is_demo and 3 or nil
		}
	end
	if data.raw["armor"]["bob-power-armor-mk5"] then
		data.raw["character-corpse"]["character-corpse"].armor_picture_mapping =
		{
		  --nil = 1,
		  ["light-armor"] = 2,
		  ["heavy-armor"] = not data.is_demo and 2 or nil,
		  ["modular-armor"] = not data.is_demo and 3 or nil,
		  ["power-armor"] = not data.is_demo and 3 or nil,
		  ["power-armor-mk2"] = not data.is_demo and 3 or nil,
		  ["bob-power-armor-mk3"] = not data.is_demo and 3 or nil,
		  ["bob-power-armor-mk4"] = not data.is_demo and 3 or nil,
		  ["bob-power-armor-mk5"] = not data.is_demo and 3 or nil
		}
	end

	if data.raw["player"]["bob-player-miner"] then
		data.raw["player"]["bob-player-miner"].animations.bobspowerarmor = {
			armors = {"bob-power-armor-mk3", "bob-power-armor-mk4", "bob-power-armor-mk5"} or {"power-armor-mk3", "power-armor-mk4", "power-armor-mk5"},
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
	end
	if data.raw["player"]["bob-player-fighter"] then
		data.raw["player"]["bob-player-fighter"].animations.bobspowerarmor = {
			armors = {"bob-power-armor-mk3", "bob-power-armor-mk4", "bob-power-armor-mk5"} or {"power-armor-mk3", "power-armor-mk4", "power-armor-mk5"},
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
	end
	if data.raw["player"]["bob-player-builder"] then
		data.raw["player"]["bob-player-builder"].animations.bobspowerarmor = {
			armors = {"bob-power-armor-mk3", "bob-power-armor-mk4", "bob-power-armor-mk5"} or {"power-armor-mk3", "power-armor-mk4", "power-armor-mk5"},
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
	end
	if data.raw["armor"]["bob-power-armor-mk3"] then data.raw["armor"]["bob-power-armor-mk3"].icons =
	{
		{ icon = "__base__/graphics/icons/power-armor-mk2.png" }, 
		{ icon = "__morebobs__/graphics/icons/mask/Bob-armor-mask.png", tint = { r=1, g=0.1, b=0.04 } }
	}
	end
	if data.raw["armor"]["bob-power-armor-mk4"] then data.raw["armor"]["bob-power-armor-mk4"].icons =
	{
		{ icon = "__base__/graphics/icons/power-armor-mk2.png" }, 
		{ icon = "__morebobs__/graphics/icons/mask/Bob-armor-mask.png", tint = { r=0, g=0.4, b=1 } }
	}
	end
	if data.raw["armor"]["bob-power-armor-mk5"] then data.raw["armor"]["bob-power-armor-mk5"].icons =
	{
		{ icon = "__base__/graphics/icons/power-armor-mk2.png" }, 
		{ icon = "__morebobs__/graphics/icons/mask/Bob-armor-mask.png", tint = { r=0.7, g=0.4, b=1 } }
	}
	end
	if data.raw["technology"]["bob-power-armor-3"] then data.raw["technology"]["bob-power-armor-3"].icons =
	{
		{ icon = "__base__/graphics/technology/power-armor-mk2.png" }, 
		{ icon = "__morebobs__/graphics/icons/mask/Bob-armor-T-mask.png", tint = { r=1, g=0.1, b=0.04 } }
	}
		data.raw["technology"]["bob-power-armor-3"].icon = "__base__/graphics/technology/power-armor-mk2.png"
		data.raw["technology"]["bob-power-armor-3"].icon_size = 128
	end
	if data.raw["technology"]["bob-power-armor-4"] then data.raw["technology"]["bob-power-armor-4"].icons =
	{
		{ icon = "__base__/graphics/technology/power-armor-mk2.png" }, 
		{ icon = "__morebobs__/graphics/icons/mask/Bob-armor-T-mask.png", tint = { r=0, g=0.4, b=1 } }
	}
		data.raw["technology"]["bob-power-armor-4"].icon = "__base__/graphics/technology/power-armor-mk2.png"
		data.raw["technology"]["bob-power-armor-4"].icon_size = 128
	end
	if data.raw["technology"]["bob-power-armor-5"] then data.raw["technology"]["bob-power-armor-5"].icons =
	{
		{ icon = "__base__/graphics/technology/power-armor-mk2.png" }, 
		{ icon = "__morebobs__/graphics/icons/mask/Bob-armor-T-mask.png", tint = { r=0.7, g=0.4, b=1 } }
	}
		data.raw["technology"]["bob-power-armor-5"].icon = "__base__/graphics/technology/power-armor-mk2.png"
		data.raw["technology"]["bob-power-armor-5"].icon_size = 128
	end
end