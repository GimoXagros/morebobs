data:extend({
	{
		type = "technology",
		name = "pocket-equipment",
		icon = "__morebobs_usefulsomething__/graphics/technology/armor-pocket-technology.png",
		icon_size = 128,
		prerequisites = {"modular-armor", "toolbelt"},
		effects =
		{
		  {
				type = "unlock-recipe",
				recipe = "armor-pocket-equipment"
		  },
		  {
				type = "unlock-recipe",
				recipe = "additional-toolbelt-equipment"
		  }
		},
		unit =
		{
		  count = 50,
		  ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}},
		  time = 15
		},
		order = "g-g"
	},
	{
		type = "technology",
		name = "helpful-equipment",
		icon = "__morebobs_usefulsomething__/graphics/technology/useful_equipment.png",
		icon_size = 128,
		prerequisites = {"pocket-equipment"},
		effects =
		{
		  {
				type = "unlock-recipe",
				recipe = "craft-assistent-equipment"
		  },
		  {
				type = "unlock-recipe",
				recipe = "artificial-organ-equipment"
		  },
		  {
				type = "unlock-recipe",
				recipe = "combet-control-module-equipment"
		  },
		  {
				type = "unlock-recipe",
				recipe = "portable-logistic-computer-equipment"
		  },
		  {
				type = "unlock-recipe",
				recipe = "portable-autotrash-computer-equipment"
		  }
		},
		unit =
		{
		  count = 100,
		  ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}},
		  time = 30
		},
		order = "g-g"
	}
})