data:extend({
	-- tank-assembling-machine
  {
    type = "recipe",
    name = "tank-recall-token",
    enabled = false,
    ingredients =
    {
      {"plastic-bar", 3},
      {"electronic-circuit", 3},
      {"advanced-circuit", 1},
    },
    result = "tank-recall-token"
  },
	-- tank-assembling-machine
  {
    type = "recipe",
    name = "tank-assembling-machine",
    enabled = false,
    ingredients =
    {
      {"iron-plate", 1},
      {"electronic-circuit", 3},
      {"iron-gear-wheel", 5},
      {"assembling-machine-2", 1}
    },
    result = "tank-assembling-machine"
  },
	-- -- tank-ammo-assembling-machine
  -- {
    -- type = "recipe",
    -- name = "tank-ammo-assembling-machine",
    -- enabled = false,
    -- ingredients =
    -- {
      -- {"iron-plate", 1},
      -- {"electronic-circuit", 3},
      -- {"iron-gear-wheel", 5},
      -- {"assembling-machine-2", 1}
    -- },
    -- result = "tank-ammo-assembling-machine"
  -- },
	-- tank-light-chasis-wlsk
  {
		type = "recipe",
		name = "tank-light-chasis-wlsk",
		enabled = false,
		category = "tank-crafting",
		energy_required = 60,
		ingredients =
    {
      {"steel-plate", 75},
      {"advanced-circuit", 60},
      {"processing-unit", 5},
      {"electric-engine-unit",25}
    },
    result = "tank-light-chasis-wlsk"
  },
	-- tank-super-chassis
  {
		type = "recipe",
		name = "tank-super-chassis",
		enabled = false,
		category = "tank-crafting",
		energy_required = 100,
		ingredients =
    {
      {"steel-plate", 40},
      {"advanced-circuit", 15},
      {"processing-unit", 40},
      {"electric-engine-unit", 30}
    },
    result = "tank-super-chassis"
  },
	-- tank-super-turret
  {
		type = "recipe",
		name = "tank-super-turret",
		enabled = false,
		category = "tank-crafting",
		energy_required = 100,
		ingredients =
    {
      {"steel-plate", 20},
      {"plastic-bar", 40},
      {"advanced-circuit", 15},
      {"processing-unit", 40}
    },
    result = "tank-super-turret"
  },
	-- Iron-wall
  {
    type = "recipe",
    name = "iron-walls",
    enabled = false,
    energy_required = 5,
    ingredients = 
    {
      {"iron-plate", 4},
      {"steel-plate", 1},
    },
    results= 
    {
      {type = "item", name="iron-wall", amount=1},
    },
  },
  {
    type = "recipe",
    name = "iron-gates",
    enabled = false,
    energy_required = 20,
    ingredients =
    {
      {"iron-wall", 1},
      {"gate", 2}
    },
    results= 
    {
      {type = "item", name="iron-gate", amount=1},
    },
  },
	-- ammo components
	-- name = "tank-ammo-universal-explosive",
  {
    type = "recipe",
    name = "tank-ammo-universal-explosive",
    enabled = false,
    category = "tank-ammo-component",
    energy_required = 5,
    ingredients =
    {
      {"plastic-bar", 1},
      {"explosives", 1}
    },
    results=
    {
      {type="item", name="tank-ammo-universal-explosive", amount=1},
    },
  },
	-- name = "tank-ammo-universal-explosive-synthetic",
  {
    type = "recipe",
    name = "tank-ammo-universal-explosive-synthetic",
    enabled = false,
    category = "tank-ammo-component",
    subgroup = "tank-ammo-components",
    energy_required = 60,
    ingredients =
    {
      {"raw-wood", 100},
      {"stone", 100}
    },
    main_product= "",
    results=
    {
      {type="item", name="tank-ammo-universal-explosive", amount=9},
    },
    icon = "__morebobs__/graphics/icons/tank/universal-explosive.png",
    icon_size = 32,
    order = "a[tank-ammo-components]-e[universal-explosive]"
  },
	-- name = "tank-ammo-casing",	
  {
    type = "recipe",
    name = "tank-ammo-casing",
    enabled = false,
    category = "tank-ammo-component",
    energy_required = 0.5,
    ingredients =
    {
      {"copper-plate", 1},
    },
    results=
    {
      {type="item", name="tank-ammo-casing", amount=1},
    },
  },
	-- name = "tank-ammo-reinforced-casing",  
  {
    type = "recipe",
    name = "tank-ammo-reinforced-casing",
    enabled = false,
    category = "tank-ammo-component",
    energy_required = 2,
    ingredients =
    {
      {"steel-plate", 1},
    },
    results=
    {
      {type="item", name="tank-ammo-reinforced-casing", amount=1},
    },
  },
	-- extras
	{
		type = "recipe",
		name = "land-mine-poison",
		enabled = false,
		energy_required = 5,
		ingredients =
		{
			{"steel-plate", 1},
			{"explosives", 2},
			{"sulfur", 1},
		},
		result = "land-mine-poison",
		result_count = 4
	},
	{
		type = "recipe",
		name = "fish-kit",
		enabled = false,
		category = "tank-ammo-component",
		energy_required = 5,
		ingredients =
		{
			{"raw-fish", 2},
		},
		results=
		{
			{type="item", name="fish-kit", amount=5},
		},
	},
  {
    type = "recipe",
    name = "repair-capsule",
    enabled = false,
    energy_required = 8,
    ingredients =
		{
			{"repair-pack", 10},
			{"electronic-circuit", 2},
			{"construction-robot", 1},
		},
    result = "repair-capsule"
  },
})