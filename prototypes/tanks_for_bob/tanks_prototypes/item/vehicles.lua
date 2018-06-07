data:extend({
  {
    type = "item-with-entity-data",
    name = "flame-tank",
		icons =
		{
			{ icon = "__base__/graphics/icons/tank.png" },
			{ icon = "__morebobs__/graphics/icons/tank/type-flame.png" }
		},
		icon = "__base__/graphics/icons/tank.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "tank-vehicle",
    order = "a[battle-tank]-b[flame-tank]",
    place_result = "flame-tank",
    stack_size = 1
  },
  {
    type = "item-with-entity-data",
    name = "auto-tank",
		icons =
		{
			{ icon = "__base__/graphics/icons/tank.png" },
			{ icon = "__morebobs__/graphics/icons/tank/type-auto.png" },
		},
		icon = "__base__/graphics/icons/tank.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "tank-vehicle",
    order = "a[battle-tank]-a[auto-tank]",
    place_result = "auto-tank",
    stack_size = 1
  },
  {
    type = "item-with-entity-data",
    name = "nade-tank",
		icons =
		{
			{ icon = "__base__/graphics/icons/tank.png" },
			{ icon = "__morebobs__/graphics/icons/tank/type-nade.png" }
		},
		icon = "__base__/graphics/icons/tank.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "tank-vehicle",
    order = "a[battle-tank]-c[nade-tank]",
    place_result = "nade-tank",
    stack_size = 1
  },
  {
		type = "item-with-entity-data",
		name = "flame-tank-wlsk",
		icons =
		{
			{ icon = "__base__/graphics/icons/tank.png" },
			{ icon = "__morebobs__/graphics/icons/tank/type-flame.png" },
			{ icon = "__morebobs__/graphics/icons/tank/tier-w.png" }
		},
		icon = "__base__/graphics/icons/tank.png",
		icon_size = 32,
		flags = {"goes-to-quickbar"},
		subgroup = "tank-vehicle-upgrades",
		order = "a[tank-vehicle-upgrades]-b[flame-tank]",
		place_result = "flame-tank-wlsk",
		stack_size = 1
  },
  {
    type = "item-with-entity-data",
    name = "auto-tank-wlsk",
		icons =
		{
			{ icon = "__base__/graphics/icons/tank.png" },
			{ icon = "__morebobs__/graphics/icons/tank/type-auto.png" },
			{ icon = "__morebobs__/graphics/icons/tank/tier-w.png" }
		},
		icon = "__base__/graphics/icons/tank.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "tank-vehicle-upgrades",
    order = "a[tank-vehicle-upgrades]-a[auto-tank]",
    place_result = "auto-tank-wlsk",
    stack_size = 1
  },
  {
    type = "item-with-entity-data",
    name = "nade-tank-wlsk",
		icons =
		{
			{ icon = "__base__/graphics/icons/tank.png" },
			{ icon = "__morebobs__/graphics/icons/tank/type-nade.png" },
			{ icon = "__morebobs__/graphics/icons/tank/tier-w.png" }
		},
		icon = "__base__/graphics/icons/tank.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "tank-vehicle-upgrades",
    order = "a[tank-vehicle-upgrades]-c[nade-tank]",
    place_result = "nade-tank-wlsk",
    stack_size = 1
  },
  {
    type = "item-with-entity-data",
    name = "mine-tank",
		icons =
		{
			{ icon = "__base__/graphics/icons/tank.png" },
			{ icon = "__morebobs__/graphics/icons/tank/type-mine.png" }
		},
		icon = "__base__/graphics/icons/tank.png",	
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "tank-vehicle",
    order = "b[support-vehicles]-b[mine-tank]",
    place_result = "mine-tank",
    stack_size = 1
  },
  {
    type = "item-with-entity-data",
    name = "rocket-tank",
		icons =
		{
			{ icon = "__base__/graphics/icons/tank.png" },
			{ icon = "__morebobs__/graphics/icons/tank/type-rocket.png" }
		},
		icon = "__base__/graphics/icons/tank.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "tank-vehicle",
    order = "b[support-vehicles]-c[rocket-tank]",
    place_result = "rocket-tank",
    stack_size = 1
  },
  --Super-Tank
  {
    type = "item-with-entity-data",
    name = "super-tank",
		icons =
		{
			{ icon = "__base__/graphics/icons/tank.png" },
			{ icon = "__morebobs__/graphics/icons/tank/type-auto.png" },
			{ icon = "__morebobs__/graphics/icons/tank/tier-s.png" }
		},
		icon = "__base__/graphics/icons/tank.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "tank-vehicle-upgrades",
    order = "b[super-tank-vehicle]-a[super-tank]",
    place_result = "super-tank",
    stack_size = 1
  },
  {
    type = "item-with-entity-data",
    name = "super-tank-alternate",
		icons =
		{
			{ icon = "__base__/graphics/icons/tank.png" },
			{ icon = "__morebobs__/graphics/icons/tank/type-flame.png" },
			{ icon = "__morebobs__/graphics/icons/tank/tier-s.png" }
		},
		icon = "__base__/graphics/icons/tank.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "tank-vehicle-upgrades",
    order = "b[super-tank]-b[super-tank]",
    place_result = "super-tank-alternate",
    stack_size = 1
  },
  {
    type = "item-with-entity-data",
    name = "super-tank-wmd",
		icons =
		{
			{ icon = "__base__/graphics/icons/tank.png" },
			{ icon = "__morebobs__/graphics/icons/tank/type-nade.png" },
			{ icon = "__morebobs__/graphics/icons/tank/tier-s.png" }
		},
		icon = "__base__/graphics/icons/tank.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "tank-vehicle-upgrades",
    order = "b[super-tank]-c[super-tank]",
    place_result = "super-tank-wmd",
    stack_size = 1
  },
  {
    type = "item-with-entity-data",
    name = "car-flamer",
		icons =
		{
			{ icon = "__base__/graphics/icons/car.png" },
			{ icon = "__morebobs__/graphics/icons/tank/type-flame.png" },
		},
		icon = "__base__/graphics/icons/car.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "tank-vehicle",
    order = "b[support-vehicles]-a[car-flamer]",
    place_result = "car-flamer",
    stack_size = 1
  },
})