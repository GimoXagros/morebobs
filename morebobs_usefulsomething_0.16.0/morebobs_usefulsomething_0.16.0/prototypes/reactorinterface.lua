--entities
interface_sprite =
{
  filename = "__morebobs_usefulsomething__/graphics/entity/reactor-interface/reactor-interface.png",
  priority = "extra-high",
  width = 48,
  height = 48,
  frame_count = 1,
  shift = {0, -1.5},
  hr_version = {
    filename = "__morebobs_usefulsomething__/graphics/entity/reactor-interface/hr-reactor-interface.png",
    width = 96,
    height = 96,
    frame_count = 1,
    shift = {0, -1.5},
    scale = 0.5
  }
}

interface_led =
{
	filename = "__morebobs_usefulsomething__/graphics/entity/reactor-interface/reactor-interface-led.png",
	width = 12,
	height = 12,
	frame_count = 1,
	shift = util.by_pixel(-10,-40.5)
}

interface_connection =
{
  shadow =
  {
    red = {3.75, 0},
    green = {4.28125, 0},
  },
  wire =
  {
    red = {-0.25, -1.375},
    green = {0.28125, -1.375},
  }
}

interface =
{
	type = "constant-combinator",
	name = "reactor-interface",
	icon = "__base__/graphics/icons/nuclear-reactor.png",
	icon_size = 32,
	flags = {"player-creation", "not-deconstructable"},
	max_health = 120,
	collision_box = {{-0.5, -0.5}, {0.5, 0.5}},
	selection_box = {{-1, -2.5}, {1, -0.5}},
	selection_priority = 255,
	item_slot_count = 10,
	sprites =
	{
		north = interface_sprite,
		east = interface_sprite,
		south = interface_sprite,
		west = interface_sprite
	},
	activity_led_sprites =
	{
		north = interface_led,
		east = interface_led,
		south = interface_led,
		west = interface_led
	},
	activity_led_light =
	{
		intensity = 0.8,
		size = 1,
		color = {r = 0.0, g = 1.0, b = 0.0}
	},
	activity_led_light_offsets =
	{
		-- {-0.3125,-0.578125},
		{-0.3125,-1.578125},
		{-0.3125,-1.578125},
		{-0.3125,-1.578125},
		{-0.3125,-1.578125}
	},
	circuit_wire_connection_points =
	{
		interface_connection,
		interface_connection,
		interface_connection,
		interface_connection
	},
	circuit_wire_max_distance = 7.5
}

data:extend({
  interface
})

--signals
BLUE_BACKGROUND = "__base__/graphics/icons/signal/shape_square.png"

data:extend({
  {
    type = "item-subgroup",
    name = "reactor-signals",
    group = "signals",
    order = "f"
  },
  {
    type = "virtual-signal",
    name = "signal-temperature",
    icons =
    {
      {icon = BLUE_BACKGROUND},
      {icon = "__morebobs_usefulsomething__/graphics/icons/signal/temperature.png"}
    },
    icon_size = 32,
    subgroup = "reactor-signals",
    order = "a-a"
  },
  {
    type = "virtual-signal",
    name = "signal-fuel",
    icons =
    {
      {icon = BLUE_BACKGROUND},
      {icon = "__morebobs_usefulsomething__/graphics/icons/signal/fuel.png"}
    },
    icon_size = 32,
    subgroup = "reactor-signals",
    order = "a-b"
  }
})