require('prototypes/pipe-pictures')

if settings.startup["enable-bobsflowcontrol"] and settings.startup["enable-bobsflowcontrol"].value == true then
	--Bob
	if mods["boblogistics"] then
		if mods["bobplates"] then
			require('prototypes/bobs-flowcontrol_plates')
		else
			require('prototypes/bobs-flowcontrol')
		end
	end
end

if settings.startup["enable-bobsflowcontrolaaitweaks"] and settings.startup["enable-bobsflowcontrolaaitweaks"].value == true then
	--AAI
	if aai_industry == true then
		if data.raw["recipe"]["pipe-elbow"] then data.raw["recipe"]["pipe-elbow"].enabled = false end
		if data.raw["recipe"]["pipe-junction"] then data.raw["recipe"]["pipe-junction"].enabled = false end
		if data.raw["recipe"]["pipe-straight"] then data.raw["recipe"]["pipe-straight"].enabled = false end
		if data.raw["recipe"]["pipe-copper-elbow"] then data.raw["recipe"]["pipe-copper-elbow"].enabled = false end
		if data.raw["recipe"]["pipe-copper-junction"] then data.raw["recipe"]["pipe-copper-junction"].enabled = false end
		if data.raw["recipe"]["pipe-copper-straight"] then data.raw["recipe"]["pipe-copper-straight"].enabled = false end
		if data.raw["recipe"]["pipe-stone-elbow"] then data.raw["recipe"]["pipe-stone-elbow"].enabled = false end
		if data.raw["recipe"]["pipe-stone-junction"] then data.raw["recipe"]["pipe-stone-junction"].enabled = false end
		if data.raw["recipe"]["pipe-stone-straight"] then data.raw["recipe"]["pipe-stone-straight"].enabled = false end
		if data.raw["recipe"]["pipe-elbow"] then table.insert(data.raw["technology"]["basic-fluid-handling"].effects,{type="unlock-recipe",recipe="pipe-elbow"}) end
		if data.raw["recipe"]["pipe-junction"] then table.insert(data.raw["technology"]["basic-fluid-handling"].effects,{type="unlock-recipe",recipe="pipe-junction"}) end
		if data.raw["recipe"]["pipe-straight"] then table.insert(data.raw["technology"]["basic-fluid-handling"].effects,{type="unlock-recipe",recipe="pipe-straight"}) end
		if data.raw["recipe"]["pipe-copper-elbow"] then table.insert(data.raw["technology"]["basic-fluid-handling"].effects,{type="unlock-recipe",recipe="pipe-copper-elbow"}) end
		if data.raw["recipe"]["pipe-copper-junction"] then table.insert(data.raw["technology"]["basic-fluid-handling"].effects,{type="unlock-recipe",recipe="pipe-copper-junction"}) end
		if data.raw["recipe"]["pipe-copper-straight"] then table.insert(data.raw["technology"]["basic-fluid-handling"].effects,{type="unlock-recipe",recipe="pipe-copper-straight"}) end
		if data.raw["recipe"]["pipe-stone-elbow"] then table.insert(data.raw["technology"]["basic-fluid-handling"].effects,{type="unlock-recipe",recipe="pipe-stone-elbow"}) end
		if data.raw["recipe"]["pipe-stone-junction"] then table.insert(data.raw["technology"]["basic-fluid-handling"].effects,{type="unlock-recipe",recipe="pipe-stone-junction"}) end
		if data.raw["recipe"]["pipe-stone-straight"] then table.insert(data.raw["technology"]["basic-fluid-handling"].effects,{type="unlock-recipe",recipe="pipe-stone-straight"}) end
	end
end

if settings.startup["enable-biowoodflowcontrol"] and settings.startup["enable-biowoodflowcontrol"].value == true then
	--Bio
	if BI then
		require('prototypes/bobs_flowcontrol_wood')
		if data.raw["pipe"]["bi-wood-pipe"] then data.raw["pipe"]["bi-wood-pipe"].fluid_box.pipe_covers = morebobscoverpictures("bi-wood") end
		if data.raw["pipe-to-ground"]["bi-pipe-to-ground-wood"] then
			data.raw["pipe-to-ground"]["bi-pipe-to-ground-wood"].fluid_box.pipe_covers = morebobscoverpictures("bi-wood")
		end
	end
end