if mods["morebobs_flowcontrol"] then
	data:extend(
	{
		{
			type = "bool-setting",
			name = "enable-bobsflowcontrol",
			setting_type = "startup",
			default_value = true,
			order = "a[morebobs]-a[flowcontrol]-a"
		},
		{
			type = "bool-setting",
			name = "enable-biowoodflowcontrol",
			setting_type = "startup",
			default_value = true,
			order = "a[morebobs]-a[flowcontrol]-b"
		},
		{
			type = "bool-setting",
			name = "enable-bobsflowcontrolaaitweaks",
			setting_type = "startup",
			default_value = true,
			order = "a[morebobs]-a[flowcontrol]-c"
		}
	})
end

if mods["morebobs_usefulsomething"] then
	data:extend(
	{
		{
			type = "bool-setting",
			name = "enable-reactorinterface",
			setting_type = "startup",
			default_value = true,
			order = "a[morebobs]-b[usefulsomething]-a"
		},
		{
			type = "bool-setting",
			name = "enable-tesla",
			setting_type = "startup",
			default_value = true,
			order = "a[morebobs]-b[usefulsomething]-b"
		},
		{
			type = "bool-setting",
			name = "enable-usefulequipment",
			setting_type = "startup",
			default_value = true,
			order = "a[morebobs]-b[usefulsomething]-c"
		}
	})
end

if mods["morebobs_bobsStackCrate"] then
	data:extend(
	{
		{
			type = "bool-setting",
			name = "enable-bobsDeadlockStackCrate",
			setting_type = "startup",
			default_value = true,
			order = "a[morebobs]-c[bobsStackCrate]-a"
		}
	})
end

if mods["morebobs_tweaks"] then
	data:extend(
	{
		{
			type = "bool-setting",
			name = "enable-morebobstweaks",
			setting_type = "startup",
			default_value = true,
			order = "a[morebobs]-d[morebobstweaks]-a"
		},
		{
			type = "bool-setting",
			name = "enable-morebobsimprove",
			setting_type = "startup",
			default_value = true,
			order = "a[morebobs]-d[morebobstweaks]-b"
		},
		{
			type = "bool-setting",
			name = "enable-morebobsaddon",
			setting_type = "startup",
			default_value = true,
			order = "a[morebobs]-d[morebobstweaks]-c"
		},
		{
			type = "bool-setting",
			name = "tweaks-basic-rubberbelt",
			setting_type = "startup",
			default_value = true,
			order = "a[morebobs]-d[morebobstweaks]-d"
		}
	})
end

if mods["morebobs_shiny"] then
	data:extend(
	{
		{
			type = "bool-setting",
			name = "moreshinybobs-order",
			setting_type = "startup",
			default_value = true,
			order = "b[moreshinybobs]-a[order]"
		},
		{
			type = "bool-setting",
			name = "moreshinybobs-order-bioinderstries",
			setting_type = "startup",
			default_value = true,
			order = "b[moreshinybobs]-a[order]-a[bioinderstries]"
		},
		{
			type = "bool-setting",
			name = "moreshinybobs-gfx-item-group",
			setting_type = "startup",
			default_value = true,
			order = "b[moreshinybobs]-b[gfx][item-group]"
		},
		{
			type = "bool-setting",
			name = "moreshinybobs-gfx-alien-artifact",
			setting_type = "startup",
			default_value = true,
			order = "b[moreshinybobs]-c[gfx][alien-artifact]"
		},
		{
			type = "bool-setting",
			name = "moreshinybobs-gfx-chests",
			setting_type = "startup",
			default_value = true,
			order = "b[moreshinybobs]-c[gfx][chests]"
		},
		{
			type = "bool-setting",
			name = "moreshinybobs-gfx-circuit",
			setting_type = "startup",
			default_value = false,
			order = "b[moreshinybobs]-c[gfx][circuit]"
		},
		{
			type = "bool-setting",
			name = "moreshinybobs-gfx-equipment",
			setting_type = "startup",
			default_value = true,
			order = "b[moreshinybobs]-c[gfx][equipment]"
		},
		{
			type = "bool-setting",
			name = "moreshinybobs-gfx-greenhouses",
			setting_type = "startup",
			default_value = true,
			order = "b[moreshinybobs]-c[gfx][greenhouses]"
		},
		{
			type = "bool-setting",
			name = "moreshinybobs-gfx-intermediates",
			setting_type = "startup",
			default_value = true,
			order = "b[moreshinybobs]-c[gfx][intermediates]"
		},
		{
			type = "bool-setting",
			name = "moreshinybobs-gfx-modules",
			setting_type = "startup",
			default_value = true,
			order = "b[moreshinybobs]-c[gfx][modules]"
		},
		{
			type = "bool-setting",
			name = "moreshinybobs-gfx-ores",
			setting_type = "startup",
			default_value = true,
			order = "b[moreshinybobs]-c[gfx][ores]"
		},
		{
			type = "bool-setting",
			name = "moreshinybobs-gfx-plates",
			setting_type = "startup",
			default_value = true,
			order = "b[moreshinybobs]-c[gfx][plates]"
		},
		{
			type = "bool-setting",
			name = "moreshinybobs-gfx-pumps",
			setting_type = "startup",
			default_value = true,
			order = "b[moreshinybobs]-c[gfx][pumps]"
		},
		{
			type = "bool-setting",
			name = "moreshinybobs-gfx-warfare",
			setting_type = "startup",
			default_value = true,
			order = "b[moreshinybobs]-c[gfx][warfare]"
		},
		{
			type = "bool-setting",
			name = "moreshinybobs-tech-alien-and-research",
			setting_type = "startup",
			default_value = true,
			order = "b[moreshinybobs]-d[tech][alien-and-research]"
		},
		{
			type = "bool-setting",
			name = "moreshinybobs-tech-ammo",
			setting_type = "startup",
			default_value = true,
			order = "b[moreshinybobs]-d[tech][ammo]"
		},
		{
			type = "bool-setting",
			name = "moreshinybobs-tech-chemical-processing",
			setting_type = "startup",
			default_value = true,
			order = "b[moreshinybobs]-d[tech][chemical-processing]"
		},
		{
			type = "bool-setting",
			name = "moreshinybobs-tech-electronics",
			setting_type = "startup",
			default_value = true,
			order = "b[moreshinybobs]-d[tech][electronics]"
		},
		{
			type = "bool-setting",
			name = "moreshinybobs-tech-equipment",
			setting_type = "startup",
			default_value = true,
			order = "b[moreshinybobs]-d[tech][equipment]"
		},
		{
			type = "bool-setting",
			name = "moreshinybobs-tech-logistics",
			setting_type = "startup",
			default_value = true,
			order = "b[moreshinybobs]-d[tech][logistics]"
		},
		{
			type = "bool-setting",
			name = "moreshinybobs-tech-material-processing",
			setting_type = "startup",
			default_value = true,
			order = "b[moreshinybobs]-d[tech][material-processing]"
		},
		{
			type = "bool-setting",
			name = "moreshinybobs-tech-mining",
			setting_type = "startup",
			default_value = true,
			order = "b[moreshinybobs]-d[tech][mining]"
		},
		{
			type = "bool-setting",
			name = "moreshinybobs-tech-modules",
			setting_type = "startup",
			default_value = true,
			order = "b[moreshinybobs]-d[tech][modules]"
		},
		{
			type = "bool-setting",
			name = "moreshinybobs-tech-power",
			setting_type = "startup",
			default_value = true,
			order = "b[moreshinybobs]-d[tech][power]"
		},
		{
			type = "bool-setting",
			name = "moreshinybobs-tech-robotics",
			setting_type = "startup",
			default_value = true,
			order = "b[moreshinybobs]-d[tech][robotics]"
		},
		{
			type = "bool-setting",
			name = "moreshinybobs-tech-warfare",
			setting_type = "startup",
			default_value = true,
			order = "b[moreshinybobs]-d[tech][warfare]"
		}
	})
end