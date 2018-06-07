local bobs_overflow_pipe_names = {} do
	local new_pipes = {}
	-- This should match the base item type for the other pipe/valve types
	local pipe_type = "storage-tank"
	---------------------------------------------------------------------------
	-- Begin construction functions
	local strtable = function () 
		return {
			item = table.deepcopy(data.raw.item["pipe-straight"]),
			recipe = table.deepcopy(data.raw.recipe["pipe-straight"]),
			entity = table.deepcopy(data.raw[pipe_type]["pipe-straight"])
		}
	end
	local juntable = function ()
		return {
			item = table.deepcopy(data.raw.item["pipe-junction"]),
			recipe = table.deepcopy(data.raw.recipe["pipe-junction"]),
			entity = table.deepcopy(data.raw[pipe_type]["pipe-junction"])
		}
	end
	local elbtable = function () 
		return {
			item = table.deepcopy(data.raw.item["pipe-elbow"]),
			recipe = table.deepcopy(data.raw.recipe["pipe-elbow"]),
			entity = table.deepcopy(data.raw[pipe_type]["pipe-elbow"])
		}
	end
	local pic1 = "__morebobs__/graphics/icons/pipe-"
	local pic2 = "__morebobs__/graphics/entity/lr/pipe-"
	local pic3 = "__morebobs__/graphics/entity/hr/pipe-"
	local mne  = function (type) return type .. "-pipe" end
	local str  = function (type) return "pipe-" .. type .. "-straight" end
	local jun  = function (type) return "pipe-" .. type .. "-junction" end
	local elb  = function (type) return "pipe-" .. type .. "-elbow" end
	local pstr = function (type) return type .. "-straight.png" end
	local pjun = function (type) return type .. "-junction.png" end
	local pelb = function (type) return type .. "-elbow.png" end

	local addTech = function (technology, recipe)
		table.insert(data.raw.technology[technology].effects,{type = "unlock-recipe", recipe = recipe})
	end
	-- end construction functions
	---------------------------------------------------------------------------
	
	-- Names of bob pipes
	local n = {
		qs=str("bi-wood"), 	qj=jun("bi-wood"), 	qe=elb("bi-wood")
	}

	-- Images of bob pipes
	local p = {
		qs=pstr("bi-wood"), 	 qj=pjun("bi-wood"), 	  qe=pelb("bi-wood")
	}
	-- Mineable results (also ingredients)
	local m = {
		qs=mne("bi-wood"), 	qj=mne("bi-wood"), 	qe=mne("bi-wood")
	}

	-- build initial table
	for key,value in pairs(n) do
		-- external object reference for control.lua
		bobs_overflow_pipe_names[value] = true

		if     string.sub(key,2)=="s" then  -- Straight pipe
			new_pipes[value] = strtable()
		elseif string.sub(key,2)=="j" then  -- Junction pipe
			new_pipes[value] = juntable()
		elseif string.sub(key,2)=="e" then  -- Elbow pipe
			new_pipes[value] = elbtable()
		end
	end

	-- setup bulk properties for entity, recipe, item
	for key,value in pairs(n) do
		-- entity.name / recipe.name / item.name
		new_pipes[value].entity.name = value
		new_pipes[value].recipe.name = value
		new_pipes[value].item.name   = value
		-- Used for grouping in menus
		if string.sub(key,2)=="s" then  -- Straight pipe
			new_pipes[value].item.subgroup = "flow-control-1"
		elseif string.sub(key,2)=="j" then  -- Junction pipe
			new_pipes[value].item.subgroup = "flow-control-2"
		elseif string.sub(key,2)=="e" then  -- Elbow pipe
			new_pipes[value].item.subgroup = "flow-control-3"
		end
		-- entity.icon / item.icon
		new_pipes[value].entity.icon = pic1..p[key]
		new_pipes[value].item.icon   = pic1..p[key]
		-- entity.minable.result
		new_pipes[value].entity.minable.result = m[key]
		-- recipe.ingredients
		new_pipes[value].recipe.ingredients = {{m[key], 1}}
		-- recipe.result
		new_pipes[value].recipe.result = value
		-- recipe.enabled
		if string.sub(key,1,1) == "c" or string.sub(key,1,1) == "n" then
			-- (c)opper and sto(n)e begin enabled
			new_pipes[value].recipe.enabled = "true"
		else 
			new_pipes[value].recipe.enabled = "false"
		end
		-- item.place_result
		new_pipes[value].item.place_result = value
		
		if pipe_type == "storage-tank" then
			if string.sub(key,2)=="s" then
				new_pipes[value].entity.pictures.picture.sheet =
				{
					filename = pic2..p[key],
					priority = "extra-high",
					frames = 2,
					width = 64,
					height = 64,
					shift = {0, 0},
					hr_version =
					{
						filename = pic3..p[key],
						priority = "extra-high",
						frames = 2,
						width = 128,
						height = 128,
						scale = 0.5,
						shift = {0, 0}
					}
				}
			else
				new_pipes[value].entity.pictures.picture.sheet =
				{
					filename = pic2..p[key],
					priority = "extra-high",
					frames = 4,
					width = 64,
					height = 64,
					shift = {0, 0},
					hr_version =
					{
						filename = pic3..p[key],
						priority = "extra-high",
						frames = 4,
						width = 128,
						height = 128,
						scale = 0.5,
						shift = {0, 0}
					}
				}
			end
		else 
			new_pipes[value].entity.pictures.up.filename    = pic2..p[key]
			new_pipes[value].entity.pictures.up.hr_version.filename    = pic3..p[key]
			new_pipes[value].entity.pictures.left.filename  = pic2..p[key]
			new_pipes[value].entity.pictures.left.hr_version.filename  = pic3..p[key]
			new_pipes[value].entity.pictures.down.filename  = pic2..p[key]
			new_pipes[value].entity.pictures.down.hr_version.filename  = pic3..p[key]
			new_pipes[value].entity.pictures.right.filename = pic2..p[key]
			new_pipes[value].entity.pictures.right.hr_version.filename = pic3..p[key]
		end
	end
	do -- These match the fluid areas listed in boblogistics_0.16.6\prototypes\entity\pipes.lua
		new_pipes[n.qs].entity.fluid_box.base_area = 1
		new_pipes[n.qj].entity.fluid_box.base_area = 1
		new_pipes[n.qe].entity.fluid_box.base_area = 1
	end
	do -- These match the fluid areas listed in boblogistics_0.16.6\prototypes\entity\pipes.lua
		new_pipes[n.qs].entity.fluid_box.pipe_covers = morebobscoverpictures("bi-wood")
		new_pipes[n.qj].entity.fluid_box.pipe_covers = morebobscoverpictures("bi-wood")
		new_pipes[n.qe].entity.fluid_box.pipe_covers = morebobscoverpictures("bi-wood")
	end    -- add new_pipes to the data
	do -- These match the fluid areas listed in boblogistics_0.16.6\prototypes\entity\pipes.lua
		new_pipes[n.qs].entity.max_health = 100
		new_pipes[n.qj].entity.max_health = 100
		new_pipes[n.qe].entity.max_health = 100
	end    -- add new_pipes to the data
	do -- These match the fluid areas listed in boblogistics_0.16.6\prototypes\entity\pipes.lua
		new_pipes[n.qs].entity.resistances = { { type = "fire", percent = 20 }, { type = "impact", percent = 30 } }
		new_pipes[n.qj].entity.resistances = { { type = "fire", percent = 20 }, { type = "impact", percent = 30 } }
		new_pipes[n.qe].entity.resistances = { { type = "fire", percent = 20 }, { type = "impact", percent = 30 } }
	end    -- add new_pipes to the data
	do -- These match the fluid areas listed in boblogistics_0.16.6\prototypes\entity\pipes.lua
		new_pipes[n.qs].item.order = "a[pipe]-1a[pipe]"
		new_pipes[n.qj].item.order = "a[pipe]-1a[pipe]"
		new_pipes[n.qe].item.order = "a[pipe]-1a[pipe]"
	end
	
	for k,v in pairs(new_pipes) do
		if not v.recipe.hidden then
			data:extend({v.entity,v.recipe,v.item})
		end
	end

	data.raw.item["pipe-straight"].subgroup = "flow-control-1"
	data.raw.item["pipe-junction"].subgroup = "flow-control-2"
	data.raw.item["pipe-elbow"].subgroup    = "flow-control-3"
	data.raw.item["pipe-straight"].order    = "a[pipe]-a[pipe]-1-2"
	data.raw.item["pipe-junction"].order    = "a[pipe]-a[pipe]-1-2"
	data.raw.item["pipe-elbow"].order       = "a[pipe]-a[pipe]-1-2"

	if data.raw["item-group"]["bob-logistics"] then 
		data:extend({
			{
				type = "item-subgroup",
				name = "flow-control-1",
				group = "bob-logistics",
				order = "d-a-3"
			},
			{
				type = "item-subgroup",
				name = "flow-control-2",
				group = "bob-logistics",
				order = "d-a-4"
			},
			{
				type = "item-subgroup",
				name = "flow-control-3",
				group = "bob-logistics",
				order = "d-a-5"
			}
		})
	else
		data:extend({
			{
				type = "item-subgroup",
				name = "flow-control-1",
				group = "logistics",
				order = "d-a-3"
			},
			{
				type = "item-subgroup",
				name = "flow-control-2",
				group = "logistics",
				order = "d-a-4"
			},
			{
				type = "item-subgroup",
				name = "flow-control-3",
				group = "logistics",
				order = "d-a-5"
			}
		})
	end
end