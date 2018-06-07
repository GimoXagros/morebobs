--greenhouses
	--greenhouse
if data.raw["item"]["bob-greenhouse"] then data.raw["item"]["bob-greenhouse"].icon = "__morebobs__/graphics/moreshiny/icons/greenhouses/greenhouse.png" end
if data.raw["item"]["bob-greenhouse"] then data.raw["item"]["bob-greenhouse"].icon_size = 32 end
if data.raw["assembling-machine"]["bob-greenhouse"] then
	function pipespictures_greenhouse_fix1()
		return {
			north =
			{
				filename = "__morebobs__/graphics/moreshiny/entity/greenhouses/pipe-north.png",
				priority = "extra-high",
				width = 64,
				height = 64,
				-- shift = util.by_pixel(2.5, 14),
			},
			east =
			{
				filename = "__base__/graphics/entity/assembling-machine-3/assembling-machine-3-pipe-E.png",
				priority = "extra-high",
				width = 20,
				height = 38,
				shift = util.by_pixel(-25, 1),
			},
			south =
			{
				filename = "__base__/graphics/entity/assembling-machine-3/assembling-machine-3-pipe-S.png",
				priority = "extra-high",
				width = 44,
				height = 31,
				shift = util.by_pixel(0, -31.5),
			},
			west =
			{
				filename = "__base__/graphics/entity/assembling-machine-3/assembling-machine-3-pipe-W.png",
				priority = "extra-high",
				width = 19,
				height = 37,
				shift = util.by_pixel(25.5, 1.5),
			}
		}
	end

	function pipescovers_greenhouse_fix2()
	  return {
			north =
			{
				layers =
				{
					{
						filename = "__morebobs__/graphics/moreshiny/entity/greenhouses/pipe-north.png",
						priority = "extra-high",
						width = 64,
						height = 64,
					},
					{
						filename = "__base__/graphics/entity/pipe-covers/pipe-cover-north-shadow.png",
						priority = "extra-high",
						width = 64,
						height = 64,
						draw_as_shadow = true,
					},
				},
			},
			east =
			{
				layers =
				{
					{
						filename = "__base__/graphics/entity/pipe-covers/pipe-cover-east.png",
						priority = "extra-high",
						width = 64,
						height = 64,
					},
					{
						filename = "__base__/graphics/entity/pipe-covers/pipe-cover-east-shadow.png",
						priority = "extra-high",
						width = 64,
						height = 64,
						draw_as_shadow = true,
					},
				},
			},
			south =
			{
				layers =
				{
					{
						filename = "__base__/graphics/entity/pipe-covers/pipe-cover-south.png",
						priority = "extra-high",
						width = 64,
						height = 64,
					},
					{
						filename = "__base__/graphics/entity/pipe-covers/pipe-cover-south-shadow.png",
						priority = "extra-high",
						width = 64,
						height = 64,
						draw_as_shadow = true,
					},
				},
			},
			west =
			{
				layers =
				{
					{
						filename = "__base__/graphics/entity/pipe-covers/pipe-cover-west.png",
						priority = "extra-high",
						width = 64,
						height = 64,
					},
					{
						filename = "__base__/graphics/entity/pipe-covers/pipe-cover-west-shadow.png",
						priority = "extra-high",
						width = 64,
						height = 64,
						draw_as_shadow = true,
					},
				},
			}
	  }
	end
	
	data.raw["assembling-machine"]["bob-greenhouse"].icon_size = 32
	data.raw["assembling-machine"]["bob-greenhouse"]["animation"] =
	{
		filename = "__morebobs__/graphics/moreshiny/entity/greenhouses/greenhouse.png",
		width = 113,
		height = 101,
		frame_count = 1,
		shift = {0.2, 0},
	}
	data.raw["assembling-machine"]["bob-greenhouse"]["working_visualisations"] =
	{
		{
			light = {intensity = 1, size = 6},
			animation =
			{
				filename = "__morebobs__/graphics/moreshiny/entity/greenhouses/greenhouse-lights.png",
				width = 113,
				height = 101,
				frame_count = 28,
				line_length = 7,
				animation_speed = 0.8,
				shift = {0.2, 0}
			}
		}
	}

	data.raw["assembling-machine"]["bob-greenhouse"]["fluid_boxes"] = 
	{ 
		{
			production_type = "input",
			pipe_picture = pipespictures_greenhouse_fix1(),
			pipe_covers = pipescovers_greenhouse_fix2(),
			base_area = 10,
			base_level = -1,
			pipe_connections = {{ type="input", position = {0, -2} }}
		}
	}
end

	--bob-basic-greenhouse-cycle
if data.raw["recipe"]["bob-basic-greenhouse-cycle"] then data.raw["recipe"]["bob-basic-greenhouse-cycle"].icon = "__morebobs__/graphics/moreshiny/icons/greenhouses/seedling-wood.png" end
if data.raw["recipe"]["bob-basic-greenhouse-cycle"] then data.raw["recipe"]["bob-basic-greenhouse-cycle"].icon_size = 32 end

	--bob-advanced-greenhouse-cycle
if data.raw["recipe"]["bob-advanced-greenhouse-cycle"] then data.raw["recipe"]["bob-advanced-greenhouse-cycle"].icon = "__morebobs__/graphics/moreshiny/icons/greenhouses/seedling-fertilizer-wood.png" end
if data.raw["recipe"]["bob-advanced-greenhouse-cycle"] then data.raw["recipe"]["bob-advanced-greenhouse-cycle"].icon_size = 32 end
