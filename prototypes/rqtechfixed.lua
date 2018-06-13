--bobsDeadlockStackCrate
if settings.startup["enable-bobsDeadlockStackCrate"] and settings.startup["enable-bobsDeadlockStackCrate"].value == true then
	if mods["DeadlockCrating"] then
		--Add Technologies
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

--tuonelatweaks
if settings.startup["enable-tuonelatweaks"] and settings.startup["enable-tuonelatweaks"].value == true then
	--Warehouse
	if mods["Warehousing"] and BI then
		if mods["boblogistics"] then
			if mods["bobplates"] then
				data:extend({
					{
						type = "technology",
						name = "warehouse-research-2",
						icon = "__Warehousing__/graphics/research/warehouse-research.png",
						icon_size = 128,
						effects =
						{
							{
								type = "unlock-recipe",
								recipe = "warehouse-basic",
							},
						},
						prerequisites = {"warehouse-research", "logistics-2", "titanium-processing"},
						unit =
						{
							count = 40,
							ingredients =
							{
								{ "science-pack-1", 1},
								{ "science-pack-2", 1},
							},
							time = 40
						},
						order = "c-b"
					},
					{
						type = "technology",
						name = "warehouse-logistics-research-2",
						icon = "__Warehousing__/graphics/research/warehouse-logistics-research.png",
						icon_size = 128,
						effects =
						{
							{
								type = "unlock-recipe",
								recipe = "warehouse-passive-provider",
							},
							{
								type = "unlock-recipe",
								recipe = "warehouse-storage",
							},
							{
								type = "unlock-recipe",
								recipe = "warehouse-active-provider",
							},
							{
								type = "unlock-recipe",
								recipe = "warehouse-requester",
							},
							{
								type = "unlock-recipe",
								recipe = "warehouse-buffer",
							}
						},
						prerequisites = { "warehouse-research-2", "warehouse-logistics-research", "logistic-system-3" },
						unit =
						{
							count = 25,
							ingredients =
							{
								{ "science-pack-1", 4},
								{ "science-pack-2", 4},
								{ "science-pack-3", 2},
								{ "production-science-pack", 2},
								{ "high-tech-science-pack", 1},
							},
							time = 60
						},
						order = "c-k-b"
					},
				})
			else
				data:extend(
				{
					{
						type = "technology",
						name = "warehouse-research-2",
						icon = "__Warehousing__/graphics/research/warehouse-research.png",
						icon_size = 128,
						effects =
						{
							{
								type = "unlock-recipe",
								recipe = "warehouse-basic",
							},
						},
						prerequisites = {"warehouse-research", "logistics-2" },
						unit =
						{
							count = 40,
							ingredients =
							{
								{ "science-pack-1", 1},
								{ "science-pack-2", 1},
							},
							time = 40
						},
						order = "c-b"
					},
					{
						type = "technology",
						name = "warehouse-logistics-research-2",
						icon = "__Warehousing__/graphics/research/warehouse-logistics-research.png",
						icon_size = 128,
						effects =
						{
							{
								type = "unlock-recipe",
								recipe = "warehouse-passive-provider",
							},
							{
								type = "unlock-recipe",
								recipe = "warehouse-storage",
							},
							{
								type = "unlock-recipe",
								recipe = "warehouse-active-provider",
							},
							{
								type = "unlock-recipe",
								recipe = "warehouse-requester",
							},
							{
								type = "unlock-recipe",
								recipe = "warehouse-buffer",
							}
						},
						prerequisites = { "warehouse-research-2", "warehouse-logistics-research", "logistic-system-3" },
						unit =
						{
							count = 25,
							ingredients =
							{
								{ "science-pack-1", 4},
								{ "science-pack-2", 4},
								{ "science-pack-3", 2},
								{ "production-science-pack", 2},
								{ "high-tech-science-pack", 1},
							},
							time = 60
						},
						order = "c-k-b"
					},
				})
			end
		end
	end
end

--angelsbiofixed
if mods["angelsbioprocessing"] then
	data.raw["technology"]["bio-aboretum-1"].icon = "__angelsbioprocessing__/graphics/technology/bio-arboretum-tech.png"
	data.raw["technology"]["bio-aboretum-2"].icon = "__angelsbioprocessing__/graphics/technology/bio-arboretum-tech.png"
	data.raw["technology"]["bio-aboretum-3"].icon = "__angelsbioprocessing__/graphics/technology/bio-arboretum-tech.png"
	data.raw["technology"]["bio-aboretum-temperate-1"].icon = "__angelsbioprocessing__/graphics/technology/bio-temperate-generator-tech.png"
	data.raw["technology"]["bio-aboretum-temperate-2"].icon = "__angelsbioprocessing__/graphics/technology/bio-temperate-generator-tech.png"
	data.raw["technology"]["bio-aboretum-temperate-3"].icon = "__angelsbioprocessing__/graphics/technology/bio-temperate-generator-tech.png"
	data.raw["technology"]["bio-aboretum-swamp-1"].icon = "__angelsbioprocessing__/graphics/technology/bio-swamp-generator-tech.png"
	data.raw["technology"]["bio-aboretum-swamp-2"].icon = "__angelsbioprocessing__/graphics/technology/bio-swamp-generator-tech.png"
	data.raw["technology"]["bio-aboretum-swamp-3"].icon = "__angelsbioprocessing__/graphics/technology/bio-swamp-generator-tech.png"
	data.raw["technology"]["bio-aboretum-desert-1"].icon = "__angelsbioprocessing__/graphics/technology/bio-desert-generator-tech.png"
	data.raw["technology"]["bio-aboretum-desert-2"].icon = "__angelsbioprocessing__/graphics/technology/bio-desert-generator-tech.png"
	data.raw["technology"]["bio-aboretum-desert-3"].icon = "__angelsbioprocessing__/graphics/technology/bio-desert-generator-tech.png"
end

--MSB
if settings.startup["enable-moreshinybobs"] and settings.startup["enable-moreshinybobs"].value == true then
	require('moreshinybobs/moreshinybobs')
end