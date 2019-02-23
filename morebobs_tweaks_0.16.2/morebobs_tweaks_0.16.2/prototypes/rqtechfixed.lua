-- Warehouse
if mods["Warehousing"] then
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

-- Angel's Bio Processing
if mods["angelsbioprocessing"] then
	if data.raw["technology"]["bio-aboretum-1"] then data.raw["technology"]["bio-aboretum-1"].icon = "__angelsbioprocessing__/graphics/technology/bio-arboretum-tech.png" end
	if data.raw["technology"]["bio-aboretum-2"] then data.raw["technology"]["bio-aboretum-2"].icon = "__angelsbioprocessing__/graphics/technology/bio-arboretum-tech.png" end
	if data.raw["technology"]["bio-aboretum-3"] then data.raw["technology"]["bio-aboretum-3"].icon = "__angelsbioprocessing__/graphics/technology/bio-arboretum-tech.png" end
	if data.raw["technology"]["bio-aboretum-temperate-1"] then data.raw["technology"]["bio-aboretum-temperate-1"].icon = "__angelsbioprocessing__/graphics/technology/bio-temperate-generator-tech.png" end
	if data.raw["technology"]["bio-aboretum-temperate-2"] then data.raw["technology"]["bio-aboretum-temperate-2"].icon = "__angelsbioprocessing__/graphics/technology/bio-temperate-generator-tech.png" end
	if data.raw["technology"]["bio-aboretum-temperate-3"] then data.raw["technology"]["bio-aboretum-temperate-3"].icon = "__angelsbioprocessing__/graphics/technology/bio-temperate-generator-tech.png" end
	if data.raw["technology"]["bio-aboretum-swamp-1"] then data.raw["technology"]["bio-aboretum-swamp-1"].icon = "__angelsbioprocessing__/graphics/technology/bio-swamp-generator-tech.png" end
	if data.raw["technology"]["bio-aboretum-swamp-2"] then data.raw["technology"]["bio-aboretum-swamp-2"].icon = "__angelsbioprocessing__/graphics/technology/bio-swamp-generator-tech.png" end
	if data.raw["technology"]["bio-aboretum-swamp-3"] then data.raw["technology"]["bio-aboretum-swamp-3"].icon = "__angelsbioprocessing__/graphics/technology/bio-swamp-generator-tech.png" end
	if data.raw["technology"]["bio-aboretum-desert-1"] then data.raw["technology"]["bio-aboretum-desert-1"].icon = "__angelsbioprocessing__/graphics/technology/bio-desert-generator-tech.png" end
	if data.raw["technology"]["bio-aboretum-desert-2"] then data.raw["technology"]["bio-aboretum-desert-2"].icon = "__angelsbioprocessing__/graphics/technology/bio-desert-generator-tech.png" end
	if data.raw["technology"]["bio-aboretum-desert-3"] then data.raw["technology"]["bio-aboretum-desert-3"].icon = "__angelsbioprocessing__/graphics/technology/bio-desert-generator-tech.png" end
end
