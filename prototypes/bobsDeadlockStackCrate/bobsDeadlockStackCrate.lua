--stacking
if mods["DeadlockStacking"] then	
	--Circuits Redux
	if mods["ShinyBobGFX"] then
		if settings.startup["replace-circuits"] and settings.startup["replace-circuits"].value == true then
			if settings.startup["moreshinybobs-gfx-circuit"] and settings.startup["moreshinybobs-gfx-circuit"].value == true then
				if data.raw["item"]["advanced-processing-unit"] then 
					deadlock_stacking.create("advanced-processing-unit", "__morebobs__/graphics/icons/stacking/stacked-advanced-processing-unit.png", "deadlock-stacking-4", 32)
				end

				data.raw["item"]["deadlock-stack-electronic-circuit"].icons = { { icon = "__morebobs__/graphics/icons/stacking/stacked-basic-electronic-circuit-board-stack.png" } }
				data.raw["item"]["deadlock-stack-advanced-circuit"].icons = { { icon = "__morebobs__/graphics/icons/stacking/stacked-electronic-circuit-board-stack.png" } }
				data.raw["item"]["deadlock-stack-processing-unit"].icons = { { icon = "__morebobs__/graphics/icons/stacking/stacked-electronic-logic-board-stack.png" } }
				data.raw["recipe"]["deadlock-stacks-stack-electronic-circuit"].icons = { { icon = "__morebobs__/graphics/icons/stacking/stacked-basic-electronic-circuit-board-stack-d.png" } }
				data.raw["recipe"]["deadlock-stacks-stack-advanced-circuit"].icons = { { icon = "__morebobs__/graphics/icons/stacking/stacked-electronic-circuit-board-stack-d.png" } }
				data.raw["recipe"]["deadlock-stacks-stack-processing-unit"].icons = { { icon = "__morebobs__/graphics/icons/stacking/stacked-electronic-logic-board-stack-d.png" } }
				data.raw["recipe"]["deadlock-stacks-unstack-electronic-circuit"].icons = { { icon = "__morebobs__/graphics/icons/stacking/stacked-basic-electronic-circuit-board-stack-u.png" } }
				data.raw["recipe"]["deadlock-stacks-unstack-advanced-circuit"].icons = { { icon = "__morebobs__/graphics/icons/stacking/stacked-electronic-circuit-board-stack-u.png" } }
				data.raw["recipe"]["deadlock-stacks-unstack-processing-unit"].icons = { { icon = "__morebobs__/graphics/icons/stacking/stacked-electronic-logic-board-stack-u.png" } }
			else
				if data.raw["item"]["advanced-processing-unit"] then 
					deadlock_stacking.create("advanced-processing-unit", "__morebobs__/graphics/icons/stacking/Shinybobgfx/stacked-electronic-processing-board.png", "deadlock-stacking-4", 32)
				end

				data.raw["item"]["deadlock-stack-electronic-circuit"].icons = { { icon = "__morebobs__/graphics/icons/stacking/Shinybobgfx/stacked-basic-electronic-circuit-board.png" } }
				data.raw["item"]["deadlock-stack-advanced-circuit"].icons = { { icon = "__morebobs__/graphics/icons/stacking/Shinybobgfx/stacked-electronic-circuit-board.png" } }
				data.raw["item"]["deadlock-stack-processing-unit"].icons = { { icon = "__morebobs__/graphics/icons/stacking/Shinybobgfx/stacked-electronic-logic-board.png" } }
				data.raw["recipe"]["deadlock-stacks-stack-electronic-circuit"].icons = { { icon = "__morebobs__/graphics/icons/stacking/Shinybobgfx/stacked-basic-electronic-circuit-board-d.png" } }
				data.raw["recipe"]["deadlock-stacks-stack-advanced-circuit"].icons = { { icon = "__morebobs__/graphics/icons/stacking/Shinybobgfx/stacked-electronic-circuit-board-d.png" } }
				data.raw["recipe"]["deadlock-stacks-stack-processing-unit"].icons = { { icon = "__morebobs__/graphics/icons/stacking/Shinybobgfx/stacked-electronic-logic-board-d.png" } }
				data.raw["recipe"]["deadlock-stacks-unstack-electronic-circuit"].icons = { { icon = "__morebobs__/graphics/icons/stacking/Shinybobgfx/stacked-basic-electronic-circuit-board-u.png" } }
				data.raw["recipe"]["deadlock-stacks-unstack-advanced-circuit"].icons = { { icon = "__morebobs__/graphics/icons/stacking/Shinybobgfx/stacked-electronic-circuit-board-u.png" } }
				data.raw["recipe"]["deadlock-stacks-unstack-processing-unit"].icons = { { icon = "__morebobs__/graphics/icons/stacking/Shinybobgfx/stacked-electronic-logic-board-u.png" } }
			end
		else
			if settings.startup["moreshinybobs-gfx-circuit"] and settings.startup["moreshinybobs-gfx-circuit"].value == true then
				if data.raw["item"]["advanced-processing-unit"] then 
					deadlock_stacking.create("advanced-processing-unit", "__morebobs__/graphics/icons/stacking/stacked-advanced-processing-unit.png", "deadlock-stacking-4", 32)
				end

				data.raw["item"]["deadlock-stack-electronic-circuit"].icons = { { icon = "__morebobs__/graphics/icons/stacking/stacked-basic-electronic-circuit-board-stack.png" } }
				data.raw["item"]["deadlock-stack-advanced-circuit"].icons = { { icon = "__morebobs__/graphics/icons/stacking/stacked-electronic-circuit-board-stack.png" } }
				data.raw["item"]["deadlock-stack-processing-unit"].icons = { { icon = "__morebobs__/graphics/icons/stacking/stacked-electronic-logic-board-stack.png" } }
				data.raw["recipe"]["deadlock-stacks-stack-electronic-circuit"].icons = { { icon = "__morebobs__/graphics/icons/stacking/stacked-basic-electronic-circuit-board-stack-d.png" } }
				data.raw["recipe"]["deadlock-stacks-stack-advanced-circuit"].icons = { { icon = "__morebobs__/graphics/icons/stacking/stacked-electronic-circuit-board-stack-d.png" } }
				data.raw["recipe"]["deadlock-stacks-stack-processing-unit"].icons = { { icon = "__morebobs__/graphics/icons/stacking/stacked-electronic-logic-board-stack-d.png" } }
				data.raw["recipe"]["deadlock-stacks-unstack-electronic-circuit"].icons = { { icon = "__morebobs__/graphics/icons/stacking/stacked-basic-electronic-circuit-board-stack-u.png" } }
				data.raw["recipe"]["deadlock-stacks-unstack-advanced-circuit"].icons = { { icon = "__morebobs__/graphics/icons/stacking/stacked-electronic-circuit-board-stack-u.png" } }
				data.raw["recipe"]["deadlock-stacks-unstack-processing-unit"].icons = { { icon = "__morebobs__/graphics/icons/stacking/stacked-electronic-logic-board-stack-u.png" } }
			else
				if data.raw["item"]["advanced-processing-unit"] then 
					if mods["bobelectronics"] then
						deadlock_stacking.create("advanced-processing-unit", "__morebobs__/graphics/icons/stacking/bobelectronics/stacked-electronic-processing-board.png", "deadlock-stacking-4", 32)
					else
						deadlock_stacking.create("advanced-processing-unit", "__morebobs__/graphics/icons/stacking/bobelectronics/stacked-advanced-processing-unit.png", "deadlock-stacking-4", 32)
					end
				end

				if mods["bobelectronics"] then
					data.raw["item"]["deadlock-stack-electronic-circuit"].icons = { { icon = "__morebobs__/graphics/icons/stacking/bobelectronics/stacked-basic-electronic-circuit-board.png" } }
					data.raw["item"]["deadlock-stack-advanced-circuit"].icons = { { icon = "__morebobs__/graphics/icons/stacking/bobelectronics/stacked-electronic-circuit-board.png" } }
					data.raw["item"]["deadlock-stack-processing-unit"].icons = { { icon = "__morebobs__/graphics/icons/stacking/bobelectronics/stacked-electronic-logic-board.png" } }
					data.raw["recipe"]["deadlock-stacks-stack-electronic-circuit"].icons = { { icon = "__morebobs__/graphics/icons/stacking/bobelectronics/stacked-basic-electronic-circuit-board-d.png" } }
					data.raw["recipe"]["deadlock-stacks-stack-advanced-circuit"].icons = { { icon = "__morebobs__/graphics/icons/stacking/bobelectronics/stacked-electronic-circuit-board-d.png" } }
					data.raw["recipe"]["deadlock-stacks-stack-processing-unit"].icons = { { icon = "__morebobs__/graphics/icons/stacking/bobelectronics/stacked-electronic-logic-board-d.png" } }
					data.raw["recipe"]["deadlock-stacks-unstack-electronic-circuit"].icons = { { icon = "__morebobs__/graphics/icons/stacking/bobelectronics/stacked-basic-electronic-circuit-board-u.png" } }
					data.raw["recipe"]["deadlock-stacks-unstack-advanced-circuit"].icons = { { icon = "__morebobs__/graphics/icons/stacking/bobelectronics/stacked-electronic-circuit-board-u.png" } }
					data.raw["recipe"]["deadlock-stacks-unstack-processing-unit"].icons = { { icon = "__morebobs__/graphics/icons/stacking/bobelectronics/stacked-electronic-logic-board-u.png" } }
				end
			end
		end
	else
		if settings.startup["moreshinybobs-gfx-circuit"] and settings.startup["moreshinybobs-gfx-circuit"].value == true then
			if data.raw["item"]["advanced-processing-unit"] then 
				deadlock_stacking.create("advanced-processing-unit", "__morebobs__/graphics/icons/stacking/stacked-advanced-processing-unit.png", "deadlock-stacking-4", 32)
			end

			data.raw["item"]["deadlock-stack-electronic-circuit"].icons = { { icon = "__morebobs__/graphics/icons/stacking/stacked-basic-electronic-circuit-board-stack.png" } }
			data.raw["item"]["deadlock-stack-advanced-circuit"].icons = { { icon = "__morebobs__/graphics/icons/stacking/stacked-electronic-circuit-board-stack.png" } }
			data.raw["item"]["deadlock-stack-processing-unit"].icons = { { icon = "__morebobs__/graphics/icons/stacking/stacked-electronic-logic-board-stack.png" } }
			data.raw["recipe"]["deadlock-stacks-stack-electronic-circuit"].icons = { { icon = "__morebobs__/graphics/icons/stacking/stacked-basic-electronic-circuit-board-stack-d.png" } }
			data.raw["recipe"]["deadlock-stacks-stack-advanced-circuit"].icons = { { icon = "__morebobs__/graphics/icons/stacking/stacked-electronic-circuit-board-stack-d.png" } }
			data.raw["recipe"]["deadlock-stacks-stack-processing-unit"].icons = { { icon = "__morebobs__/graphics/icons/stacking/stacked-electronic-logic-board-stack-d.png" } }
			data.raw["recipe"]["deadlock-stacks-unstack-electronic-circuit"].icons = { { icon = "__morebobs__/graphics/icons/stacking/stacked-basic-electronic-circuit-board-stack-u.png" } }
			data.raw["recipe"]["deadlock-stacks-unstack-advanced-circuit"].icons = { { icon = "__morebobs__/graphics/icons/stacking/stacked-electronic-circuit-board-stack-u.png" } }
			data.raw["recipe"]["deadlock-stacks-unstack-processing-unit"].icons = { { icon = "__morebobs__/graphics/icons/stacking/stacked-electronic-logic-board-stack-u.png" } }
		else
			if data.raw["item"]["advanced-processing-unit"] then 
				if mods["bobelectronics"] then
					deadlock_stacking.create("advanced-processing-unit", "__morebobs__/graphics/icons/stacking/bobelectronics/stacked-electronic-processing-board.png", "deadlock-stacking-4", 32)
				else
					deadlock_stacking.create("advanced-processing-unit", "__morebobs__/graphics/icons/stacking/bobelectronics/stacked-advanced-processing-unit.png", "deadlock-stacking-4", 32)
				end
			end

			if mods["bobelectronics"] then
				data.raw["item"]["deadlock-stack-electronic-circuit"].icons = { { icon = "__morebobs__/graphics/icons/stacking/bobelectronics/stacked-basic-electronic-circuit-board.png" } }
				data.raw["item"]["deadlock-stack-advanced-circuit"].icons = { { icon = "__morebobs__/graphics/icons/stacking/bobelectronics/stacked-electronic-circuit-board.png" } }
				data.raw["item"]["deadlock-stack-processing-unit"].icons = { { icon = "__morebobs__/graphics/icons/stacking/bobelectronics/stacked-electronic-logic-board.png" } }
				data.raw["recipe"]["deadlock-stacks-stack-electronic-circuit"].icons = { { icon = "__morebobs__/graphics/icons/stacking/bobelectronics/stacked-basic-electronic-circuit-board-d.png" } }
				data.raw["recipe"]["deadlock-stacks-stack-advanced-circuit"].icons = { { icon = "__morebobs__/graphics/icons/stacking/bobelectronics/stacked-electronic-circuit-board-d.png" } }
				data.raw["recipe"]["deadlock-stacks-stack-processing-unit"].icons = { { icon = "__morebobs__/graphics/icons/stacking/bobelectronics/stacked-electronic-logic-board-d.png" } }
				data.raw["recipe"]["deadlock-stacks-unstack-electronic-circuit"].icons = { { icon = "__morebobs__/graphics/icons/stacking/bobelectronics/stacked-basic-electronic-circuit-board-u.png" } }
				data.raw["recipe"]["deadlock-stacks-unstack-advanced-circuit"].icons = { { icon = "__morebobs__/graphics/icons/stacking/bobelectronics/stacked-electronic-circuit-board-u.png" } }
				data.raw["recipe"]["deadlock-stacks-unstack-processing-unit"].icons = { { icon = "__morebobs__/graphics/icons/stacking/bobelectronics/stacked-electronic-logic-board-u.png" } }
			end
		end
	end

	--Realistic Ores
	if settings.startup["moreshinybobs-gfx-ores"] and settings.startup["moreshinybobs-gfx-ores"].value == true then
		if mods["RealisticOres"] then
			data.raw["item"]["deadlock-stack-copper-ore"].icons = { { icon = "__morebobs__/graphics/icons/stacking/ores/real/re-copper-ore.png" } }
			data.raw["item"]["deadlock-stack-iron-ore"].icons = { { icon = "__morebobs__/graphics/icons/stacking/ores/real/re-iron-ore.png" } }
			data.raw["item"]["deadlock-stack-uranium-ore"].icons = { { icon = "__morebobs__/graphics/icons/stacking/ores/real/re-uranium-ore.png" } }
		else
			data.raw["item"]["deadlock-stack-copper-ore"].icons = { { icon = "__morebobs__/graphics/icons/stacking/ores/orginal/copper-ore.png" } }
			data.raw["item"]["deadlock-stack-iron-ore"].icons = { { icon = "__morebobs__/graphics/icons/stacking/ores/orginal/iron-ore.png" } }
			data.raw["item"]["deadlock-stack-uranium-ore"].icons = { { icon = "__morebobs__/graphics/icons/stacking/ores/orginal/uranium-ore.png" } }
		end
		data.raw["item"]["deadlock-stack-coal"].icons = { { icon = "__morebobs__/graphics/icons/stacking/ores/orginal/coal.png" } }
		data.raw["item"]["deadlock-stack-stone"].icons = { { icon = "__morebobs__/graphics/icons/stacking/ores/orginal/stone.png" } }
	end
end

--crating
if mods["DeadlockCrating"] then
	--Assembly Redux
	if mods["bobassembly"] then
		if mods["ShinyBobGFX"] then
			if settings.startup["replace-assemblycolors"] and settings.startup["replace-assemblycolors"].value == true then
				if settings.startup["add-powerbars"] and settings.startup["add-powerbars"].value == true then
					data.raw["item"]["deadlock-machine-packer-item-1"].icons = { { icon = "__morebobs__/graphics/icons/stacking/crate-machine-1B.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-0.png" } }
					data.raw["item"]["deadlock-machine-packer-item-2"].icons = { { icon = "__morebobs__/graphics/icons/stacking/crate-machine-2B.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-1.png" } }
					data.raw["item"]["deadlock-machine-packer-item-3"].icons = { { icon = "__morebobs__/graphics/icons/stacking/crate-machine-3B.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-2.png" } }
					data.raw["assembling-machine"]["deadlock-machine-packer-entity-1"].icons = { { icon = "__morebobs__/graphics/icons/stacking/crate-machine-1B.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-0.png" } }
					data.raw["assembling-machine"]["deadlock-machine-packer-entity-2"].icons = { { icon = "__morebobs__/graphics/icons/stacking/crate-machine-2B.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-1.png" } }
					data.raw["assembling-machine"]["deadlock-machine-packer-entity-3"].icons = { { icon = "__morebobs__/graphics/icons/stacking/crate-machine-3B.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-2.png" } }
				else
					data.raw["item"]["deadlock-machine-packer-item-1"].icons = { { icon = "__morebobs__/graphics/icons/stacking/crate-machine-1B.png" } }
					data.raw["item"]["deadlock-machine-packer-item-2"].icons = { { icon = "__morebobs__/graphics/icons/stacking/crate-machine-2B.png" } }
					data.raw["item"]["deadlock-machine-packer-item-3"].icons = { { icon = "__morebobs__/graphics/icons/stacking/crate-machine-3B.png" } }
					data.raw["assembling-machine"]["deadlock-machine-packer-entity-1"].icons = { { icon = "__morebobs__/graphics/icons/stacking/crate-machine-1B.png" } }
					data.raw["assembling-machine"]["deadlock-machine-packer-entity-2"].icons = { { icon = "__morebobs__/graphics/icons/stacking/crate-machine-2B.png" } }
					data.raw["assembling-machine"]["deadlock-machine-packer-entity-3"].icons = { { icon = "__morebobs__/graphics/icons/stacking/crate-machine-3B.png" } }
				end
			else
				if settings.startup["add-powerbars"] and settings.startup["add-powerbars"].value == true then
					data.raw["item"]["deadlock-machine-packer-item-1"].icons = { { icon = "__DeadlockCrating__/graphics/crate-machine-1.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-0.png" } }
					data.raw["item"]["deadlock-machine-packer-item-2"].icons = { { icon = "__DeadlockCrating__/graphics/crate-machine-2.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-1.png" } }
					data.raw["item"]["deadlock-machine-packer-item-3"].icons = { { icon = "__DeadlockCrating__/graphics/crate-machine-3.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-2.png" } }
					data.raw["assembling-machine"]["deadlock-machine-packer-entity-1"].icons = { { icon = "__DeadlockCrating__/graphics/crate-machine-1.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-0.png" } }
					data.raw["assembling-machine"]["deadlock-machine-packer-entity-2"].icons = { { icon = "__DeadlockCrating__/graphics/crate-machine-2.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-1.png" } }
					data.raw["assembling-machine"]["deadlock-machine-packer-entity-3"].icons = { { icon = "__DeadlockCrating__/graphics/crate-machine-3.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-2.png" } }
				else
					data.raw["item"]["deadlock-machine-packer-item-1"].icons = { { icon = "__DeadlockCrating__/graphics/crate-machine-1.png" } }
					data.raw["item"]["deadlock-machine-packer-item-2"].icons = { { icon = "__DeadlockCrating__/graphics/crate-machine-2.png" } }
					data.raw["item"]["deadlock-machine-packer-item-3"].icons = { { icon = "__DeadlockCrating__/graphics/crate-machine-3.png" } }
					data.raw["assembling-machine"]["deadlock-machine-packer-entity-1"].icons = { { icon = "__DeadlockCrating__/graphics/crate-machine-1.png" } }
					data.raw["assembling-machine"]["deadlock-machine-packer-entity-2"].icons = { { icon = "__DeadlockCrating__/graphics/crate-machine-2.png" } }
					data.raw["assembling-machine"]["deadlock-machine-packer-entity-3"].icons = { { icon = "__DeadlockCrating__/graphics/crate-machine-3.png" } }
				end
			end
		end
	end
end

--load mod parts
require('other_mods')
require('kao_bob')
require('bobs_addon')
require('angels_addon')