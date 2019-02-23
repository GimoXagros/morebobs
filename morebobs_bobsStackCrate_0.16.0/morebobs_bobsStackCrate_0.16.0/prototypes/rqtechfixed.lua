-- bobsDeadlockStackCrate
if settings.startup["enable-bobsDeadlockStackCrate"] and settings.startup["enable-bobsDeadlockStackCrate"].value == true then
	if mods["DeadlockCrating"] then
		-- Add Technologies
		data:extend({
			{
				type = "technology",
				name = "deadlock-crating-4",
				icon_size = 128,
				icon = "__DeadlockCrating__/graphics/deadlock-crating.png",
				effects = { },
				prerequisites = {"deadlock-crating-3"},
				unit =
				{
					count = 800,
					ingredients =
					{
						{"science-pack-1", 1},
						{"science-pack-2", 1},
						{"science-pack-3", 1},
						{"production-science-pack", 1}
					},
					time = 30
				},
				order = "c-o-f"
			},
			{
				type = "technology",
				name = "deadlock-crating-5",
				icon_size = 128,
				icon = "__DeadlockCrating__/graphics/deadlock-crating.png",
				effects = { },
				prerequisites = {"deadlock-crating-4"},
				unit =
				{
					count = 1000,
					ingredients =
					{
						{"science-pack-1", 1},
						{"science-pack-2", 1},
						{"science-pack-3", 1},
						{"production-science-pack", 1},
						{"high-tech-science-pack", 1}
					},
					time = 30
				},
				order = "c-o-f"
			},
		})
		if data.raw["item"]["logistic-science-pack"] then
			bobmods.lib.tech.replace_science_pack("deadlock-crating-4", "production-science-pack", "logistic-science-pack")
			bobmods.lib.tech.replace_science_pack("deadlock-crating-5", "production-science-pack", "logistic-science-pack")
		end
	end
end
