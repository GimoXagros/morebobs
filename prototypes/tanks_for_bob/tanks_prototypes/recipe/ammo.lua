data:extend(
{
	--flame-thrower-ammo-tanker
  {
    type = "recipe",
    name = "flame-thrower-ammo-tanker",
		enabled = false,
		category = "tank-ammo-component",
		energy_required = 10,
		ingredients =
		{
			{"tank-ammo-casing", 2},
			{"flamethrower-ammo", 5}
		},
    result = "flame-thrower-ammo-tanker",
  },
	--flame-thrower-ammo-tanker-2
  {
    type = "recipe",
		name = "flame-thrower-ammo-tanker-2",
		enabled = false,
		category = "tank-ammo-component",
		energy_required = 10,
		ingredients =
    {
			{"flame-thrower-ammo-tanker", 7},
    },
    result = "flame-thrower-ammo-tanker-2",
  },
	--ap-bullet-brick
  {
    type = "recipe",
    name = "ap-bullet-brick",
    enabled = false,
  	category = "tank-ammo-component",
    energy_required = 15,
    ingredients =
    {
      {"tank-ammo-casing", 1},
      {"tank-ammo-universal-explosive", 1}
    },
    result = "ap-bullet-brick",
  },
	--ap-bullet-brick
  {
    type = "recipe",
    name = "piercing-shotgun-shell-brick",
    enabled = false,
		category = "tank-ammo-component",
    energy_required = 15,
    ingredients =
    {
      {"tank-ammo-casing", 2},
      {"tank-ammo-universal-explosive", 1}
    },
     result = "piercing-shotgun-shell-brick",
  },
	--45mm-auto
  {
    type = "recipe",
    name = "45mm-auto",
    enabled = false,
		category = "tank-ammo-component",
    energy_required = 7,
    ingredients =
    {
      {"tank-ammo-casing", 12},
      {"tank-ammo-universal-explosive", 12}
    },
    result = "45mm-auto"
  },  
	--50mm-mortar
  {
    type = "recipe",
    name = "50mm-mortar",
    enabled = false,
		category = "tank-ammo-component",
    energy_required = 10,
    ingredients =
    {
      {"tank-ammo-casing", 2},
      {"tank-ammo-universal-explosive", 2}
    },
    result = "50mm-mortar"
  },
	--50mm-mortar-poison
  {
    type = "recipe",
    name = "50mm-mortar-poison",
    enabled = false,
		category = "tank-ammo-component",
    energy_required = 15,
    ingredients =
    {
			{"electronic-circuit", 5},
      {"tank-ammo-casing", 2},
      {"tank-ammo-universal-explosive", 3}
    },
    result = "50mm-mortar-poison"
  },
	--tank-mine-ammo
  {
    type = "recipe",
    name = "minepack",
    enabled = false,
		category = "tank-ammo-component",
    energy_required = 20,
    ingredients =
    {
      {"land-mine", 10},
      {"tank-ammo-casing", 2},
      {"tank-ammo-universal-explosive", 2}
    },
    result = "minepack"
  }, 
	--tank-mine-ammo-poison
  {
    type = "recipe",
    name = "minepack-poison",
    enabled = false,
		category = "tank-ammo-component",
    energy_required = 30,
    ingredients =
    {
      {"minepack", 1},
      {"poison-capsule", 5},
			{"electronic-circuit", 5}
    },
    result = "minepack-poison"
  }, 
	--rocketpack
  {
    type = "recipe",
    name = "rocketpack",
    enabled = false,
		category = "tank-ammo-component",
    energy_required = 20,
    ingredients =
    {
			{"electronic-circuit", 5},
      {"tank-ammo-casing", 1},
      {"tank-ammo-universal-explosive", 1}
    },
    result = "rocketpack"
  }, 
	--cannon-shell-2
  {
    type = "recipe",
    name = "cannon-shell-2",
    enabled = false,
		category = "tank-ammo-component",
    energy_required = 5,
    ingredients =
    {
      {"tank-ammo-casing", 1},
      {"tank-ammo-universal-explosive", 1}
		},
		result = "cannon-shell-2"
  }, 
	--tank-wmd-ammo
  {
		type = "recipe",
		name = "tank-wmd-ammo",
		enabled = false,
		category = "tank-ammo-component",
		subgroup = "tank-ammo-2",
		energy_required = 360,
		ingredients =
    {
			{"processing-unit", 5},
			{"tank-ammo-casing", 10},
			{"tank-ammo-universal-explosive", 20}
    },
		main_product= "",
		result = "tank-wmd-ammo",
		icon = "__morebobs__/graphics/icons/tank/tank-ammo-wmd.png",
		icon_size = 32,
		order = "b[tank-ammo]-d[tank-wmd-ammo]"
  }, 
  {
		type = "recipe",
		name = "cannon-shell-convert",
		enabled = false,
		category = "tank-ammo-component",
		subgroup = "tank-ammo",
		energy_required = 2.5,
		ingredients =
    {
      {"cannon-shell", 1},
    },
		main_product= "",
		result = "cannon-shell-2",
		icon = "__morebobs__/graphics/icons/tank/tank-ammo-shellconvert.png",
		icon_size = 32,
		order = "a[tank-ammo]"
  },
})