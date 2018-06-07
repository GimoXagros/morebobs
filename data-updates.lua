require('prototypes/pipe-pictures')

if settings.startup["enable-moreshinybobs"].value == true then
	require('prototypes/moreshinybobs/order/pole-order')
end

if settings.startup["enable-tuonelatweaks"].value == true then
	if data.raw["technology"]["steel-walls"] and settings.startup["enable-tanks_for_bob"].value == true then
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
end

if settings.startup["enable-tanks_for_bob"].value == true then
	require("prototypes.tanks_for_bob.tanks_data-updates")
end