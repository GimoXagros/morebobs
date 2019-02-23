-- RQ Tech Fix
require('prototypes/rqtechfixed')

data:extend({
  {
    type = "item-group",
    name = "vehicles",
    icon = "__base__/graphics/technology/tanks.png",
    order = "d-1",
    icon_size = 128,
    inventory_order = "d-1[vehicles]"
  }
})