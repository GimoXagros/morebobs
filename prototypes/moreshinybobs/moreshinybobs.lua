--More Shinybobs!
if settings.startup["moreshinybobs-order"].value == true then
	require("order/order")
end

if settings.startup["moreshinybobs-item-group"].value == true then
	require("gfx/item-group")
end

require("gfx/gfx")
require("tech/tech")

--locales fix(Angels)
if mods["angelsrefining"] then
	data.raw["recipe"]["angelsore7-crystallization-1"].localised_name = {"recipe-name.angelsore7-crystallization-1", {"item-name.sapphire-ore"}}
	data.raw["recipe"]["angelsore7-crystallization-2"].localised_name = {"recipe-name.angelsore7-crystallization-2", {"item-name.topaz-ore"}}
	data.raw["recipe"]["angelsore7-crystallization-3"].localised_name = {"recipe-name.angelsore7-crystallization-3", {"item-name.ruby-ore"}}
	data.raw["recipe"]["angelsore7-crystallization-4"].localised_name = {"recipe-name.angelsore7-crystallization-4", {"item-name.emerald-ore"}}
	data.raw["recipe"]["angelsore7-crystallization-5"].localised_name = {"recipe-name.angelsore7-crystallization-5", {"item-name.amethyst-ore"}}
	data.raw["recipe"]["angelsore7-crystallization-6"].localised_name = {"recipe-name.angelsore7-crystallization-6", {"item-name.diamond-ore"}}
end