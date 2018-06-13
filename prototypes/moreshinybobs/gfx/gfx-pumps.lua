--pumps
require("gfx-tint")
function picPUMPS(name,picture,color)
	local type_pumps = {air="air",wat="water"}
	setmaskPUMPS(name,"__morebobs__/graphics/moreshiny/entity/pumps/"..picture,color)
end

function setmaskPUMPS(name,picture,color)
	if color == nil then
		color = tint[tintorder[tonumber(string.sub(picture,-5,-4))]]
	end
	if data.raw["assembling-machine"][name] then
		data.raw["assembling-machine"][name].animation = 
		{
			north = 
			{
				layers =
				{
					{
						filename = picture,
						width = 80,
						height = 80,
						frame_count = 8,
						animation_speed = 0.5
					},
					{
						filename = "__morebobs__/graphics/moreshiny/entity/pumps/pump-mask.png",
						width = 80,
						height = 80,
						frame_count = 8,
						tint = tint[color],
						animation_speed = 0.5
					},
				}
			},
			east = 
			{
				layers =
				{
					{
						filename = picture,
						y = 80,
						width = 80,
						height = 80,
						frame_count = 8,
						animation_speed = 0.5
					},
					{
						filename = "__morebobs__/graphics/moreshiny/entity/pumps/pump-mask.png",
						y = 80,
						width = 80,
						height = 80,
						frame_count = 8,
						tint = tint[color],
						animation_speed = 0.5
					},
				}
			},
			south = 
			{
				layers =
				{
					{
						filename = picture,
						y = 160,
						width = 80,
						height = 80,
						frame_count = 8,
						animation_speed = 0.5
					},
					{
						filename = "__morebobs__/graphics/moreshiny/entity/pumps/pump-mask.png",
						y = 160,
						width = 80,
						height = 80,
						frame_count = 8,
						tint = tint[color],
						animation_speed = 0.5
					},
				}
			},
			west = 
			{
				layers =
				{
					{
						filename = picture,
						y = 240,
						width = 80,
						height = 80,
						frame_count = 8,
						animation_speed = 0.5
					},
					{
						filename = "__morebobs__/graphics/moreshiny/entity/pumps/pump-mask.png",
						y = 240,
						width = 80,
						height = 80,
						frame_count = 8,
						tint = tint[color],
						animation_speed = 0.5
					}
				}
			}
		}
	end
end

	--air-pump-1
if data.raw["item"]["air-pump"] then data.raw["item"]["air-pump"].icon = "__morebobs__/graphics/moreshiny/icons/pumps/air-pump-1.png" end
if data.raw["item"]["air-pump"] then data.raw["item"]["air-pump"].icon_size = 32 end
if data.raw["assembling-machine"]["air-pump"] then data.raw["assembling-machine"]["air-pump"].icon = "__morebobs__/graphics/moreshiny/icons/pumps/air-pump-1.png" end
if data.raw["assembling-machine"]["air-pump"] then data.raw["assembling-machine"]["air-pump"].icon_size = 32 end
if data.raw["assembling-machine"]["air-pump"] then picPUMPS("air-pump"  ,"air-pump.png","yellow") end
	--air-pump-2
if data.raw["item"]["air-pump-2"] then data.raw["item"]["air-pump-2"].icon = "__morebobs__/graphics/moreshiny/icons/pumps/air-pump-2.png" end
if data.raw["item"]["air-pump-2"] then data.raw["item"]["air-pump-2"].icon_size = 32 end
if data.raw["assembling-machine"]["air-pump-2"] then data.raw["assembling-machine"]["air-pump-2"].icon = "__morebobs__/graphics/moreshiny/icons/pumps/air-pump-2.png" end
if data.raw["assembling-machine"]["air-pump-2"] then data.raw["assembling-machine"]["air-pump-2"].icon_size = 32 end
if data.raw["assembling-machine"]["air-pump-2"] then picPUMPS("air-pump-2"  ,"air-pump.png","red") end
	--air-pump-3
if data.raw["item"]["air-pump-3"] then data.raw["item"]["air-pump-3"].icon = "__morebobs__/graphics/moreshiny/icons/pumps/air-pump-3.png" end
if data.raw["item"]["air-pump-3"] then data.raw["item"]["air-pump-3"].icon_size = 32 end
if data.raw["assembling-machine"]["air-pump-3"] then data.raw["assembling-machine"]["air-pump-3"].icon = "__morebobs__/graphics/moreshiny/icons/pumps/air-pump-3.png" end
if data.raw["assembling-machine"]["air-pump-3"] then data.raw["assembling-machine"]["air-pump-3"].icon_size = 32 end
if data.raw["assembling-machine"]["air-pump-3"] then picPUMPS("air-pump-3"  ,"air-pump.png","blue") end
	--air-pump-4
if data.raw["item"]["air-pump-4"] then data.raw["item"]["air-pump-4"].icon = "__morebobs__/graphics/moreshiny/icons/pumps/air-pump-4.png" end
if data.raw["item"]["air-pump-4"] then data.raw["item"]["air-pump-4"].icon_size = 32 end
if data.raw["assembling-machine"]["air-pump-4"] then data.raw["assembling-machine"]["air-pump-4"].icon = "__morebobs__/graphics/moreshiny/icons/pumps/air-pump-4.png" end
if data.raw["assembling-machine"]["air-pump-4"] then data.raw["assembling-machine"]["air-pump-4"].icon_size = 32 end
if data.raw["assembling-machine"]["air-pump-4"] then picPUMPS("air-pump-4"  ,"air-pump.png","purple") end

	--water-pump-1
if data.raw["item"]["water-pump"] then data.raw["item"]["water-pump"].icon = "__morebobs__/graphics/moreshiny/icons/pumps/water-pump-1.png" end
if data.raw["item"]["water-pump"] then data.raw["item"]["water-pump"].icon_size = 32 end
if data.raw["assembling-machine"]["water-pump"] then data.raw["assembling-machine"]["water-pump"].icon = "__morebobs__/graphics/moreshiny/icons/pumps/water-pump-1.png" end
if data.raw["assembling-machine"]["water-pump"] then data.raw["assembling-machine"]["water-pump"].icon_size = 32 end
if data.raw["assembling-machine"]["water-pump"] then picPUMPS("water-pump"  ,"water-pump.png","yellow") end

	--water-pump-2
if data.raw["item"]["water-pump-2"] then data.raw["item"]["water-pump-2"].icon = "__morebobs__/graphics/moreshiny/icons/pumps/water-pump-2.png" end
if data.raw["item"]["water-pump-2"] then data.raw["item"]["water-pump-2"].icon_size = 32 end
if data.raw["assembling-machine"]["water-pump-2"] then data.raw["assembling-machine"]["water-pump-2"].icon = "__morebobs__/graphics/moreshiny/icons/pumps/water-pump-2.png" end
if data.raw["assembling-machine"]["water-pump-2"] then data.raw["assembling-machine"]["water-pump-2"].icon_size = 32 end
if data.raw["assembling-machine"]["water-pump-2"] then picPUMPS("water-pump-2"  ,"water-pump.png","red") end

	--water-pump-3
if data.raw["item"]["water-pump-3"] then data.raw["item"]["water-pump-3"].icon = "__morebobs__/graphics/moreshiny/icons/pumps/water-pump-3.png" end
if data.raw["item"]["water-pump-3"] then data.raw["item"]["water-pump-3"].icon_size = 32 end
if data.raw["assembling-machine"]["water-pump-3"] then data.raw["assembling-machine"]["water-pump-3"].icon = "__morebobs__/graphics/moreshiny/icons/pumps/water-pump-3.png" end
if data.raw["assembling-machine"]["water-pump-3"] then data.raw["assembling-machine"]["water-pump-3"].icon_size = 32 end
if data.raw["assembling-machine"]["water-pump-3"] then picPUMPS("water-pump-3"  ,"water-pump.png","blue") end

	--water-pump-4
if data.raw["item"]["water-pump-4"] then data.raw["item"]["water-pump-4"].icon = "__morebobs__/graphics/moreshiny/icons/pumps/water-pump-4.png" end
if data.raw["item"]["water-pump-4"] then data.raw["item"]["water-pump-4"].icon_size = 32 end
if data.raw["assembling-machine"]["water-pump-4"] then data.raw["assembling-machine"]["water-pump-4"].icon = "__morebobs__/graphics/moreshiny/icons/pumps/water-pump-4.png" end
if data.raw["assembling-machine"]["water-pump-4"] then data.raw["assembling-machine"]["water-pump-4"].icon_size = 32 end
if data.raw["assembling-machine"]["water-pump-4"] then picPUMPS("water-pump-4"  ,"water-pump.png","purple") end

	--void-pump
if data.raw["item"]["void-pump"] then data.raw["item"]["void-pump"].icon = "__morebobs__/graphics/moreshiny/icons/pumps/void-pump.png" end
if data.raw["item"]["void-pump"] then data.raw["item"]["void-pump"].icon_size = 32 end
if data.raw["assembling-machine"]["void-pump"] then data.raw["assembling-machine"]["void-pump"].icon = "__morebobs__/graphics/moreshiny/icons/pumps/void-pump.png" end
if data.raw["assembling-machine"]["void-pump"] then data.raw["assembling-machine"]["void-pump"].icon_size = 32 end

--임시적 업데이트
if mods["ShinyBobGFX"] then
	if settings.startup["add-powerbars"] and settings.startup["add-powerbars"].value == true then
		if data.raw["item"]["fluid-generator"] then
			data.raw["item"]["fluid-generator"].icons = { { icon = "__bobpower__/graphics/icons/fluid-generator.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-1.png" } }
		end
		if data.raw["item"]["fluid-generator-2"] then
			data.raw["item"]["fluid-generator-2"].icons = { { icon = "__bobpower__/graphics/icons/fluid-generator.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-2.png" } }
		end
		if data.raw["item"]["fluid-generator-3"] then
			data.raw["item"]["fluid-generator-3"].icons = { { icon = "__bobpower__/graphics/icons/fluid-generator.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-3.png" } }
		end
		if data.raw["item"]["hydrazine-generator"] then
			data.raw["item"]["hydrazine-generator"].icons = { { icon = "__bobpower__/graphics/icons/fluid-generator.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-4.png" } }
		end
		
		--air-pump-1
		if data.raw["item"]["air-pump"] then data.raw["item"]["air-pump"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/pumps/air-pump-1.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-1.png" } } end
		if data.raw["assembling-machine"]["air-pump"] then data.raw["assembling-machine"]["air-pump"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/pumps/air-pump-1.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-1.png" } } end
		--air-pump-2
		if data.raw["item"]["air-pump-2"] then data.raw["item"]["air-pump-2"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/pumps/air-pump-2.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-2.png" } } end
		if data.raw["assembling-machine"]["air-pump-2"] then data.raw["assembling-machine"]["air-pump-2"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/pumps/air-pump-2.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-2.png" } } end
		--air-pump-3
		if data.raw["item"]["air-pump-3"] then data.raw["item"]["air-pump-3"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/pumps/air-pump-3.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-3.png" } } end
		if data.raw["assembling-machine"]["air-pump-3"] then data.raw["assembling-machine"]["air-pump-3"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/pumps/air-pump-3.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-3.png" } } end
		--air-pump-4
		if data.raw["item"]["air-pump-4"] then data.raw["item"]["air-pump-4"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/pumps/air-pump-4.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-4.png" } } end
		if data.raw["assembling-machine"]["air-pump-4"] then data.raw["assembling-machine"]["air-pump-4"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/pumps/air-pump-4.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-4.png" } } end

		--water-pump-1
		if data.raw["item"]["water-pump"] then data.raw["item"]["water-pump"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/pumps/water-pump-1.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-1.png" } } end
		if data.raw["assembling-machine"]["water-pump"] then data.raw["assembling-machine"]["water-pump"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/pumps/water-pump-1.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-1.png" } } end

		--water-pump-2
		if data.raw["item"]["water-pump-2"] then data.raw["item"]["water-pump-2"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/pumps/water-pump-2.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-2.png" } } end
		if data.raw["assembling-machine"]["water-pump-2"] then data.raw["assembling-machine"]["water-pump-2"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/pumps/water-pump-2.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-2.png" } } end

		--water-pump-3
		if data.raw["item"]["water-pump-3"] then data.raw["item"]["water-pump-3"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/pumps/water-pump-3.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-3.png" } } end
		if data.raw["assembling-machine"]["water-pump-3"] then data.raw["assembling-machine"]["water-pump-3"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/pumps/water-pump-3.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-3.png" } } end

		--water-pump-4
		if data.raw["item"]["water-pump-4"] then data.raw["item"]["water-pump-4"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/pumps/water-pump-4.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-4.png" } } end
		if data.raw["assembling-machine"]["water-pump-4"] then data.raw["assembling-machine"]["water-pump-4"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/pumps/water-pump-4.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-4.png" } } end
	end
end