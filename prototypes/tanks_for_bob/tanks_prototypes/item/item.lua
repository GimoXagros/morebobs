data:extend({
	--Buildings/Components
  {
    type = "item",
    name = "tank-assembling-machine",
		icons =
		{
			{ icon = "__morebobs__/graphics/icons/tank/tank-assembling-machine.png" },
			{ icon = "__morebobs__/graphics/icons/tank/tier-s.png" }
		},
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "tank-ammo-components",
    order = "a[tank-ammo-components]-a[assembling-machine]",
    place_result = "tank-assembling-machine",
    stack_size = 50
  },
  -- {
    -- type = "item",
    -- name = "tank-ammo-assembling-machine",
    -- icon = "__morebobs__/graphics/icons/tank-ammo-assembling-machine.png",
    -- icon_size = 32,
    -- flags = {"goes-to-quickbar"},
    -- subgroup = "tank-ammo-components",
    -- order = "a[tank-ammo-components]-b[assembling-machine]",
    -- place_result = "tank-ammo-assembling-machine",
    -- stack_size = 50
  -- },
  {
		type = "item",
		name = "tank-light-chasis-wlsk",
		icons =
		{
			{ icon = "__morebobs__/graphics/icons/tank/tank-chasis.png" },
			{ icon = "__morebobs__/graphics/icons/tank/tier-w.png" }
		},
		icon_size = 32,
		flags = {"goes-to-main-inventory"},
		subgroup = "tank-ammo-components",
		order = "a[tank-ammo-components]-f[tank-light-chassis-wlsk]",
		stack_size = 1
  },
  {
		type = "item",
		name = "tank-super-chassis",
		icon = "__morebobs__/graphics/icons/tank/tank-super-chassis.png",
		icon_size = 32,
		flags = {"goes-to-main-inventory"},
		subgroup = "tank-ammo-components",
		order = "a[tank-ammo-components]-g[tank-super-chassis]",
		stack_size = 1
  },
  {
		type = "item",
		name = "tank-super-turret",
		icon = "__morebobs__/graphics/icons/tank/tank-super-turret.png",
		icon_size = 32,
		flags = {"goes-to-main-inventory"},
		subgroup = "tank-ammo-components",
		order = "a[tank-ammo-components]-h[tank-super-turret]",
		stack_size = 1
  },
	--Tank Ammo Components
	{
    type = "item",
    name = "tank-ammo-casing",
    icon = "__morebobs__/graphics/icons/tank/casing.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "tank-ammo-components",
    order = "a[tank-ammo-components]-c[casing]",
    stack_size = 100
	},
  {
    type = "item",
    name = "tank-ammo-reinforced-casing",
    icon = "__morebobs__/graphics/icons/tank/reinforced-casing.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "tank-ammo-components",
    order = "a[tank-ammo-components]-d[reinforced-casing]",
    stack_size = 100
  },
	{
    type = "item",
    name = "tank-ammo-universal-explosive",
    icon = "__morebobs__/graphics/icons/tank/universal-explosive.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "tank-ammo-components",
    order = "a[tank-ammo-components]-e[universal-explosive]",
    stack_size = 100
	},
    {
    type = "item",
    name = "land-mine-poison",
    icon = "__base__/graphics/icons/land-mine.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    damage_radius = 5,
    subgroup = "gun",
    order = "f[land-mine]",
    place_result = "land-mine-poison",
    stack_size = 20,
    trigger_radius = 1
  },
	--Iron-wall
  {
    type = "item",
    name = "iron-wall",
    icon = "__morebobs__/graphics/icons/tank/iron-wall.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "defensive-structure",
    order = "a[wall]-a[iron-wall]",
    place_result = "iron-wall",
    stack_size = 50
  },
  {
    type = "item",
    name = "iron-gate",
    icon = "__morebobs__/graphics/icons/tank/iron-gate.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "defensive-structure",
    order = "a[wall]-b[iron-gate]",
    place_result = "iron-gate",
    stack_size = 50
  },
})