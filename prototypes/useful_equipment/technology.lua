data:extend({
	{
		type = "technology",
		name = "uep-pocket-equipment",
		icon = "__morebobs__/graphics/technology/armor-pocket-technology.png",
		icon_size = 128,
		prerequisites = {"modular-armor", "toolbelt"},
		effects =
		{
		  {
				type = "unlock-recipe",
				recipe = "uep-armor-pocket"
		  },
		  {
				type = "unlock-recipe",
				recipe = "uep-additional-toolbelt"
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
		name = "uep-helpful-equipment",
		icon = "__morebobs__/graphics/technology/useful_equipmentNew.png",
		icon_size = 128,
		prerequisites = {"uep-pocket-equipment"},
		effects =
		{
		  {
				type = "unlock-recipe",
				recipe = "uep-craft-assistent"
		  },
		  {
				type = "unlock-recipe",
				recipe = "uep-artificial-organ"
		  },
		  {
				type = "unlock-recipe",
				recipe = "uep-combet-control-module"
		  },
		  {
				type = "unlock-recipe",
				recipe = "uep-portable-logistic-computer"
		  },
		  {
				type = "unlock-recipe",
				recipe = "uep-portable-autotrash-computer"
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