if settings.startup["enable-morebobsaddon"] and settings.startup["enable-morebobsaddon"].value == true then
	if mods["aai-industry"] then
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