--ores
require("gfx-tint")

if not mods["angelssmelting"] then
	--bauxite-ore
	if data.raw["item"]["bauxite-ore"] then
		data.raw["item"]["bauxite-ore"].icon = "__morebobs_shiny__/graphics/icons/ores/bauxite-ore.png"
		data.raw["item"]["bauxite-ore"].icon_size = 32
	end
	--coal
	if data.raw["item"]["coal"] then
		data.raw["item"]["coal"].icon = "__morebobs_shiny__/graphics/icons/ores/coal.png"
		data.raw["item"]["coal"].icon_size = 32
	end
	--cobalt-ore
	if data.raw["item"]["cobalt-ore"] then
		data.raw["item"]["cobalt-ore"].icon = "__morebobs_shiny__/graphics/icons/ores/cobalt-ore.png"
		data.raw["item"]["cobalt-ore"].icon_size = 32
	end
	--copper-ore
	if data.raw["item"]["copper-ore"] then
		data.raw["item"]["copper-ore"].icon = "__morebobs_shiny__/graphics/icons/ores/copper-ore.png"
		data.raw["item"]["copper-ore"].icon_size = 32
	end
	--gold-ore
	if data.raw["item"]["gold-ore"] then
		data.raw["item"]["gold-ore"].icon = "__morebobs_shiny__/graphics/icons/ores/gold-ore.png"
		data.raw["item"]["gold-ore"].icon_size = 32
	end
	--iron-ore
	if data.raw["item"]["iron-ore"] then
		data.raw["item"]["iron-ore"].icon = "__morebobs_shiny__/graphics/icons/ores/iron-ore.png"
		data.raw["item"]["iron-ore"].icon_size = 32
	end
	--lead-ore
	if data.raw["item"]["lead-ore"] then
		data.raw["item"]["lead-ore"].icon = "__morebobs_shiny__/graphics/icons/ores/lead-ore.png"
		data.raw["item"]["lead-ore"].icon_size = 32
	end
	--nickel-ore
	if data.raw["item"]["nickel-ore"] then
		data.raw["item"]["nickel-ore"].icon = "__morebobs_shiny__/graphics/icons/ores/nickel-ore.png"
		data.raw["item"]["nickel-ore"].icon_size = 32
	end
	--rutile-ore
	if data.raw["item"]["rutile-ore"] then
		data.raw["item"]["rutile-ore"].icon = "__morebobs_shiny__/graphics/icons/ores/rutile-ore.png"
		data.raw["item"]["rutile-ore"].icon_size = 32
	end
	--quartz
	if data.raw["item"]["quartz"] then
		data.raw["item"]["quartz"].icon = "__morebobs_shiny__/graphics/icons/ores/quartz.png"
		data.raw["item"]["quartz"].icon_size = 32
	end
	--silver-ore
	if data.raw["item"]["rutile-ore"] then
		data.raw["item"]["rutile-ore"].icon = "__morebobs_shiny__/graphics/icons/ores/rutile-ore.png"
		data.raw["item"]["rutile-ore"].icon_size = 32
	end
	--stone
	if data.raw["item"]["stone"] then
		data.raw["item"]["stone"].icon = "__morebobs_shiny__/graphics/icons/ores/stone.png"
		data.raw["item"]["stone"].icon_size = 32
	end
	--tin-ore
	if data.raw["item"]["tin-ore"] then
		data.raw["item"]["tin-ore"].icon = "__morebobs_shiny__/graphics/icons/ores/tin-ore.png"
		data.raw["item"]["tin-ore"].icon_size = 32
	end
	--tungsten-ore
	if data.raw["item"]["tungsten-ore"] then
		data.raw["item"]["tungsten-ore"].icon = "__morebobs_shiny__/graphics/icons/ores/tungsten-ore.png"
		data.raw["item"]["tungsten-ore"].icon_size = 32
	end
	--zinc-ore
	if data.raw["item"]["zinc-ore"] then
		data.raw["item"]["zinc-ore"].icon = "__morebobs_shiny__/graphics/icons/ores/zinc-ore.png"
		data.raw["item"]["zinc-ore"].icon_size = 32
	end
end

--uranium-ore
if data.raw["item"]["uranium-ore"] then
	data.raw["item"]["uranium-ore"].icon = "__morebobs_shiny__/graphics/icons/ores/uranium-ore.png"
	data.raw["item"]["uranium-ore"].icon_size = 32
end
--gem-ore
if data.raw["item"]["gem-ore"] then
	data.raw["item"]["gem-ore"].icon = "__morebobs_shiny__/graphics/icons/ores/gem-ore.png"
	data.raw["item"]["gem-ore"].icon_size = 32
end
--thorium-ore
if data.raw["item"]["thorium-ore"] then
	data.raw["item"]["thorium-ore"].icons = { { icon = "__morebobs_shiny__/graphics/icons/ores/thorium-ore.png" } }
	data.raw["item"]["thorium-ore"].icon_size = 32
	if data.raw["resource"]["thorium-ore"] then data.raw["resource"]["thorium-ore"]["map_color"] = tint_ores.thorium end
end
--sulfur
if data.raw["item"]["sulfur"] then
	data.raw["item"]["sulfur"].icon = "__morebobs_shiny__/graphics/icons/ores/sulfur.png"
	data.raw["item"]["sulfur"].icon_size = 32
end

if mods["RealisticOres"] then
	--iron-ore
	if data.raw["item"]["iron-ore"] then
		data.raw["item"]["iron-ore"].icon = "__morebobs_shiny__/graphics/icons/ores/re-iron-ore.png"
		data.raw["item"]["iron-ore"].icon_size = 32
	end
	--copper-ore
	if data.raw["item"]["copper-ore"] then
		data.raw["item"]["copper-ore"].icon = "__morebobs_shiny__/graphics/icons/ores/re-copper-ore.png"
		data.raw["item"]["copper-ore"].icon_size = 32
	end
	--uranium-ore
	if data.raw["item"]["uranium-ore"] then
		data.raw["item"]["uranium-ore"].icon = "__morebobs_shiny__/graphics/icons/ores/re-uranium-ore.png"
		data.raw["item"]["uranium-ore"].icon_size = 32
	end
	if data.raw["recipe"]["uranium-processing"] then
		data.raw["recipe"]["uranium-processing"].icon = "__morebobs_shiny__/graphics/icons/ores/uranium-processing.png"
		data.raw["recipe"]["uranium-processing"].icon_size = 32
	end
end