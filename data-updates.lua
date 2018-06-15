tuonela_box_g_check = false
if mods["EquipmentPlusPortableEngine"] then tuonela_box_g_check = true end

require('prototypes/pipe-pictures')

if settings.startup["enable-moreshinybobs"] and settings.startup["enable-moreshinybobs"].value == true then
	require('prototypes/moreshinybobs/order/pole-order')
end

if settings.startup["enable-tuonelatweaks"] and settings.startup["enable-tuonelatweaks"].value == true then
	if data.raw["technology"]["steel-walls"] and settings.startup["enable-tanks_for_bob"] and settings.startup["enable-tanks_for_bob"].value == true then
		if mods["aai-industry"] then
			data.raw["technology"]["steel-walls"].effects =
			{
			  {
					type = "unlock-recipe",
					recipe = "steel-wall"
			  },
			  {
					type = "unlock-recipe",
					recipe = "steel-walln"
			  },
			  {
					type = "unlock-recipe",
					recipe = "steel-gate"
			  }
			}
		else
			data.raw["technology"]["steel-walls"].effects =
			{
			  {
					type = "unlock-recipe",
					recipe = "steel-walln"
			  },
			  {
					type = "unlock-recipe",
					recipe = "steel-gate"
			  }
			}
		end
	end
	if settings.startup["tuonelatweaks-mint"] and settings.startup["tuonelatweaks-mint"].value == true then
		--Mint
		if aai_industry == true then
			table.insert(data.raw["recipe"]["burner-mint"].normal.ingredients,{"motor", 1})
			table.insert(data.raw["recipe"]["burner-mint"].expensive.ingredients,{"motor", 3})
			table.insert(data.raw["recipe"]["electric-mint"].normal.ingredients,{"electric-motor", 1})
			table.insert(data.raw["recipe"]["electric-mint"].expensive.ingredients,{"electric-motor", 3})
			table.insert(data.raw["technology"]["electricity"].effects,{type="unlock-recipe",recipe="electric-mint"})
		else
			data.raw["recipe"]["electric-mint"].normal.enabled = true
			data.raw["recipe"]["electric-mint"].expensive.enabled = true
		end
	end
end

if settings.startup["enable-tanks_for_bob"] and settings.startup["enable-tanks_for_bob"].value == true then
	require("prototypes.tanks_for_bob.tanks_data-updates")
end