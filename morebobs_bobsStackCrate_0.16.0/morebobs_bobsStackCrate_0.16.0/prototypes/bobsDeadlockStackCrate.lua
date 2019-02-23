local function DLS_replace(replace_name, replace_icons)
	local down_arrow = {
		icon = "__DeadlockStacking__/graphics/arrow-d-32.png",
		scale = 0.5,
		icon_size = 32
	}
	local up_arrow = {
		icon = "__DeadlockStacking__/graphics/arrow-u-32.png",
		scale = 0.5,
		icon_size = 32
	}
	data.raw["item"]["deadlock-stack-"..replace_name].icons = { { icon = replace_icons } }
	data.raw["recipe"]["deadlock-stacks-stack-"..replace_name].icons = { { icon = replace_icons }, down_arrow }
	data.raw["recipe"]["deadlock-stacks-unstack-"..replace_name].icons = { { icon = replace_icons }, up_arrow }
end

-- stacking
if mods["DeadlockStacking"] then	
	-- Circuits Redux
	if mods["ShinyBobGFX"] then
		if settings.startup["replace-circuits"] and settings.startup["replace-circuits"].value == true then
			if settings.startup["moreshinybobs-gfx-circuit"] and settings.startup["moreshinybobs-gfx-circuit"].value == true then
				if data.raw["item"]["advanced-processing-unit"] then 
					deadlock_stacking.create("advanced-processing-unit", "__morebobs_bobsStackCrate__/graphics/icons/stacking/circuits_redux/morebobs/stacked-advanced-processing-unit.png", "deadlock-stacking-4", 32)
				end
				DLS_replace("electronic-circuit", "__morebobs_bobsStackCrate__/graphics/icons/stacking/circuits_redux/morebobs/stacked-basic-electronic-circuit-board.png")
				DLS_replace("advanced-circuit", "__morebobs_bobsStackCrate__/graphics/icons/stacking/circuits_redux/morebobs/stacked-electronic-circuit-board.png")
				DLS_replace("processing-unit", "__morebobs_bobsStackCrate__/graphics/icons/stacking/circuits_redux/morebobs/stacked-electronic-logic-board.png")
			else
				if data.raw["item"]["advanced-processing-unit"] then 
					deadlock_stacking.create("advanced-processing-unit", "__morebobs_bobsStackCrate__/graphics/icons/stacking/circuits_redux/shinybobs/stacked-electronic-processing-board.png", "deadlock-stacking-4", 32)
				end
				DLS_replace("electronic-circuit", "__morebobs_bobsStackCrate__/graphics/icons/stacking/circuits_redux/shinybobs/stacked-basic-electronic-circuit-board.png")
				DLS_replace("advanced-circuit", "__morebobs_bobsStackCrate__/graphics/icons/stacking/circuits_redux/shinybobs/stacked-electronic-circuit-board.png")
				DLS_replace("processing-unit", "__morebobs_bobsStackCrate__/graphics/icons/stacking/circuits_redux/shinybobs/stacked-electronic-logic-board.png")
			end
		else
			if settings.startup["moreshinybobs-gfx-circuit"] and settings.startup["moreshinybobs-gfx-circuit"].value == true then
				if data.raw["item"]["advanced-processing-unit"] then 
					deadlock_stacking.create("advanced-processing-unit", "__morebobs_bobsStackCrate__/graphics/icons/stacking/circuits_redux/morebobs/stacked-advanced-processing-unit.png", "deadlock-stacking-4", 32)
				end
				DLS_replace("electronic-circuit", "__morebobs_bobsStackCrate__/graphics/icons/stacking/circuits_redux/morebobs/stacked-basic-electronic-circuit-board.png")
				DLS_replace("advanced-circuit", "__morebobs_bobsStackCrate__/graphics/icons/stacking/circuits_redux/morebobs/stacked-electronic-circuit-board.png")
				DLS_replace("processing-unit", "__morebobs_bobsStackCrate__/graphics/icons/stacking/circuits_redux/morebobs/stacked-electronic-logic-board.png")
			else
				if data.raw["item"]["advanced-processing-unit"] then 
					if mods["bobelectronics"] then
						deadlock_stacking.create("advanced-processing-unit", "__morebobs_bobsStackCrate__/graphics/icons/stacking/circuits_redux/bobs_origins/stacked-electronic-processing-board.png", "deadlock-stacking-4", 32)
					else
						deadlock_stacking.create("advanced-processing-unit", "__morebobs_bobsStackCrate__/graphics/icons/stacking/circuits_redux/bobs_origins/stacked-advanced-processing-unit.png", "deadlock-stacking-4", 32)
					end
				end
				if mods["bobelectronics"] then
					DLS_replace("electronic-circuit", "__morebobs_bobsStackCrate__/graphics/icons/stacking/circuits_redux/bobs_origins/stacked-basic-electronic-circuit-board.png")
					DLS_replace("advanced-circuit", "__morebobs_bobsStackCrate__/graphics/icons/stacking/circuits_redux/bobs_origins/stacked-electronic-circuit-board.png")
					DLS_replace("processing-unit", "__morebobs_bobsStackCrate__/graphics/icons/stacking/circuits_redux/bobs_origins/stacked-electronic-logic-board.png")
				end
			end
		end
	else
		if settings.startup["moreshinybobs-gfx-circuit"] and settings.startup["moreshinybobs-gfx-circuit"].value == true then
			if data.raw["item"]["advanced-processing-unit"] then 
				deadlock_stacking.create("advanced-processing-unit", "__morebobs_bobsStackCrate__/graphics/icons/stacking/circuits_redux/morebobs/stacked-advanced-processing-unit.png", "deadlock-stacking-4", 32)
			end
			DLS_replace("electronic-circuit", "__morebobs_bobsStackCrate__/graphics/icons/stacking/circuits_redux/morebobs/stacked-basic-electronic-circuit-board.png")
			DLS_replace("advanced-circuit", "__morebobs_bobsStackCrate__/graphics/icons/stacking/circuits_redux/morebobs/stacked-electronic-circuit-board.png")
			DLS_replace("processing-unit", "__morebobs_bobsStackCrate__/graphics/icons/stacking/circuits_redux/morebobs/stacked-electronic-logic-board.png")
		else
			if data.raw["item"]["advanced-processing-unit"] then 
				if mods["bobelectronics"] then
					deadlock_stacking.create("advanced-processing-unit", "__morebobs_bobsStackCrate__/graphics/icons/stacking/circuits_redux/bobs_origins/stacked-electronic-processing-board.png", "deadlock-stacking-4", 32)
				else
					deadlock_stacking.create("advanced-processing-unit", "__morebobs_bobsStackCrate__/graphics/icons/stacking/circuits_redux/bobs_origins/stacked-advanced-processing-unit.png", "deadlock-stacking-4", 32)
				end
			end
			if mods["bobelectronics"] then
				DLS_replace("electronic-circuit", "__morebobs_bobsStackCrate__/graphics/icons/stacking/circuits_redux/bobs_origins/stacked-basic-electronic-circuit-board.png")
				DLS_replace("advanced-circuit", "__morebobs_bobsStackCrate__/graphics/icons/stacking/circuits_redux/bobs_origins/stacked-electronic-circuit-board.png")
				DLS_replace("processing-unit", "__morebobs_bobsStackCrate__/graphics/icons/stacking/circuits_redux/bobs_origins/stacked-electronic-logic-board.png")
			end
		end
	end

	-- Realistic Ores
	if settings.startup["moreshinybobs-gfx-ores"] and settings.startup["moreshinybobs-gfx-ores"].value == true then
		if mods["RealisticOres"] then
			DLS_replace("copper-ore", "__morebobs_bobsStackCrate__/graphics/icons/stacking/ores/real/copper-ore.png")
			DLS_replace("iron-ore", "__morebobs_bobsStackCrate__/graphics/icons/stacking/ores/real/iron-ore.png")
			DLS_replace("uranium-ore", "__morebobs_bobsStackCrate__/graphics/icons/stacking/ores/real/uranium-ore.png")
		else
			DLS_replace("copper-ore", "__morebobs_bobsStackCrate__/graphics/icons/stacking/ores/orginal/copper-ore.png")
			DLS_replace("iron-ore", "__morebobs_bobsStackCrate__/graphics/icons/stacking/ores/orginal/iron-ore.png")
			DLS_replace("uranium-ore", "__morebobs_bobsStackCrate__/graphics/icons/stacking/ores/orginal/uranium-ore.png")
		end
		DLS_replace("coal", "__morebobs_bobsStackCrate__/graphics/icons/stacking/ores/orginal/coal.png")
		DLS_replace("stone", "__morebobs_bobsStackCrate__/graphics/icons/stacking/ores/orginal/stone.png")
	end

	-- Battery Redux
	if settings.startup["moreshinybobs-gfx-intermediates"] and settings.startup["moreshinybobs-gfx-intermediates"].value == true then
		if mods["bobplates"] then
			DLS_replace("battery", "__morebobs_bobsStackCrate__/graphics/icons/stacking/battery/battery-1S.png")
		end
	end
end

-- crating
if mods["DeadlockCrating"] then
	-- Assembly Redux
	if mods["bobassembly"] then
		if settings.startup["add-powerbars"] and settings.startup["add-powerbars"].value == true then
			for i=1,3 do
				data.raw["item"]["deadlock-machine-packer-item-"..i].icons = { { icon = "__morebobs_bobsStackCrate__/graphics/icons/stacking/crate-machine/crate-machine-"..i..".png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-"..(i-1)..".png" } }
				data.raw["assembling-machine"]["deadlock-machine-packer-entity-"..i].icons = { { icon = "__morebobs_bobsStackCrate__/graphics/icons/stacking/crate-machine/crate-machine-"..i..".png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-"..(i-1)..".png" } }
			end
		else
			for i=1,3 do
				data.raw["item"]["deadlock-machine-packer-item-"..i].icons = { { icon = "__morebobs_bobsStackCrate__/graphics/icons/stacking/crate-machine/crate-machine-"..i..".png" } }
				data.raw["assembling-machine"]["deadlock-machine-packer-entity-"..i].icons = { { icon = "__morebobs_bobsStackCrate__/graphics/icons/stacking/crate-machine/crate-machine-"..i..".png" } }
			end
		end
	end
end

-- load mod parts
require('other_mods')
require('kao_bob')
require('bobs_addon')
require('angels_addon')