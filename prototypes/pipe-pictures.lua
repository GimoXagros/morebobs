--- For working with pipes
--@module Pipes

local Pipes = {}

function Pipes.morebobscoverpictures(ptype)
	return {
		north =
		{
			layers =
			{
				{
					filename = "__morebobs__/graphics/pipe/" .. ptype .. "/pipe-cover-north.png",
					priority = "extra-high",
					width = 64,
					height = 64,
					hr_version =
					{
						filename = "__morebobs__/graphics/pipe/" .. ptype .. "/hr-pipe-cover-north.png",
						priority = "extra-high",
						width = 128,
						height = 128,
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/entity/pipe-covers/pipe-cover-north-shadow.png",
					priority = "extra-high",
					width = 64,
					height = 64,
					draw_as_shadow = true,
					hr_version =
					{
						filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-north-shadow.png",
						priority = "extra-high",
						width = 128,
						height = 128,
						scale = 0.5,
						draw_as_shadow = true
					}
				},
			},
		},
		east =
		{
			layers =
			{
				{
					filename = "__morebobs__/graphics/pipe/" .. ptype .. "/pipe-cover-east.png",
					priority = "extra-high",
					width = 64,
					height = 64,
					hr_version =
					{
						filename = "__morebobs__/graphics/pipe/" .. ptype .. "/hr-pipe-cover-east.png",
						priority = "extra-high",
						width = 128,
						height = 128,
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/entity/pipe-covers/pipe-cover-east-shadow.png",
					priority = "extra-high",
					width = 64,
					height = 64,
					draw_as_shadow = true,
					hr_version =
					{
						filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-east-shadow.png",
						priority = "extra-high",
						width = 128,
						height = 128,
						scale = 0.5,
						draw_as_shadow = true
					}
				},
			},
		},
		south =
		{
			layers =
			{
				{
					filename = "__morebobs__/graphics/pipe/" .. ptype .. "/pipe-cover-south.png",
					priority = "extra-high",
					width = 64,
					height = 64,
					hr_version =
					{
						filename = "__morebobs__/graphics/pipe/" .. ptype .. "/hr-pipe-cover-south.png",
						priority = "extra-high",
						width = 128,
						height = 128,
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/entity/pipe-covers/pipe-cover-south-shadow.png",
					priority = "extra-high",
					width = 64,
					height = 64,
					draw_as_shadow = true,
					hr_version =
					{
						filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-south-shadow.png",
						priority = "extra-high",
						width = 128,
						height = 128,
						scale = 0.5,
						draw_as_shadow = true
					}
				},
			},
		},
		west =
		{
			layers =
			{
				{
					filename = "__morebobs__/graphics/pipe/" .. ptype .. "/pipe-cover-west.png",
					priority = "extra-high",
					width = 64,
					height = 64,
					hr_version =
					{
						filename = "__morebobs__/graphics/pipe/" .. ptype .. "/hr-pipe-cover-west.png",
						priority = "extra-high",
						width = 128,
						height = 128,
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/entity/pipe-covers/pipe-cover-west-shadow.png",
					priority = "extra-high",
					width = 64,
					height = 64,
					draw_as_shadow = true,
					hr_version =
					{
						filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-west-shadow.png",
						priority = "extra-high",
						width = 128,
						height = 128,
						scale = 0.5,
						draw_as_shadow = true
					}
				},
			},
		}
	}
end

morebobscoverpictures = Pipes.morebobscoverpictures

return Pipes
