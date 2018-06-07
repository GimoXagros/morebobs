--More Shiny bob!
data:extend({
	{
		type = "item-subgroup",
		name = "ms-poles1",
		group = "logistics",
		order = "d[poles]-01A[poles]",
	},
	{
		type = "item-subgroup",
		name = "ms-poles2",
		group = "logistics",
		order = "d[poles]-02A[poles]",
	},
	{
		type = "item-subgroup",
		name = "ms-poles3",
		group = "logistics",
		order = "d[poles]-03A[poles]",
	},
})

if data.raw["item"]["small-electric-pole"] then
	data.raw["item"]["small-electric-pole"].subgroup = "ms-poles1"
	data.raw["item"]["small-electric-pole"].order = "a[poles]-01[small-electric-pole]"
end
if data.raw["item"]["small-iron-electric-pole"] then
	data.raw["item"]["small-iron-electric-pole"].subgroup = "ms-poles1"
	data.raw["item"]["small-iron-electric-pole"].order = "a[poles]-02[small-electric-pole]"
end
if data.raw["item"]["medium-electric-pole"] then
	data.raw["item"]["medium-electric-pole"].subgroup = "ms-poles1"
	data.raw["item"]["medium-electric-pole"].order = "a[poles]-03[medium-electric-pole]"
end
if data.raw["item"]["medium-electric-pole-2"] then
	data.raw["item"]["medium-electric-pole-2"].subgroup = "ms-poles1"
	data.raw["item"]["medium-electric-pole-2"].order = "a[poles]-04[medium-electric-pole]"
end
if data.raw["item"]["medium-electric-pole-3"] then
	data.raw["item"]["medium-electric-pole-3"].subgroup = "ms-poles1"
	data.raw["item"]["medium-electric-pole-3"].order = "a[poles]-05[medium-electric-pole]"
end
if data.raw["item"]["medium-electric-pole-4"] then
	data.raw["item"]["medium-electric-pole-4"].subgroup = "ms-poles1"
	data.raw["item"]["medium-electric-pole-4"].order = "a[poles]-06[medium-electric-pole]"
end

if data.raw["item"]["bi-big-wooden-pole"] then
	data.raw["item"]["bi-big-wooden-pole"].subgroup = "ms-poles2"
	data.raw["item"]["bi-big-wooden-pole"].order = "a[poles]-01[big-electric-pole]"
end
if data.raw["item"]["bi-huge-wooden-pole"] then
	data.raw["item"]["bi-huge-wooden-pole"].subgroup = "ms-poles2"
	data.raw["item"]["bi-huge-wooden-pole"].order = "a[poles]-02[big-electric-pole]"
end
if data.raw["item"]["big-electric-pole"] then
	data.raw["item"]["big-electric-pole"].subgroup = "ms-poles2"
	data.raw["item"]["big-electric-pole"].order = "a[poles]-03[big-electric-pole]"
end
if data.raw["item"]["big-electric-pole-2"] then
	data.raw["item"]["big-electric-pole-2"].subgroup = "ms-poles2"
	data.raw["item"]["big-electric-pole-2"].order = "a[poles]-04[big-electric-pole]"
end
if data.raw["item"]["big-electric-pole-3"] then
	data.raw["item"]["big-electric-pole-3"].subgroup = "ms-poles2"
	data.raw["item"]["big-electric-pole-3"].order = "a[poles]-05[big-electric-pole]"
end
if data.raw["item"]["big-electric-pole-4"] then
	data.raw["item"]["big-electric-pole-4"].subgroup = "ms-poles2"
	data.raw["item"]["big-electric-pole-4"].order = "a[poles]-06[big-electric-pole]"
end

if data.raw["item"]["bi-large-substation"] then
	data.raw["item"]["bi-large-substation"].subgroup = "ms-poles3"
	data.raw["item"]["bi-large-substation"].order = "a[poles]-01[substation]"
	data.raw["recipe"]["bi_recipe_huge_substation"].subgroup = "ms-poles3"
	data.raw["recipe"]["bi_recipe_huge_substation"].order = "a[poles]-01[substation]"
end
if data.raw["item"]["substation"] then
	data.raw["item"]["substation"].subgroup = "ms-poles3"
	data.raw["item"]["substation"].order = "a[poles]-02[substation]"
end
if data.raw["item"]["substation-2"] then
	data.raw["item"]["substation-2"].subgroup = "ms-poles3"
	data.raw["item"]["substation-2"].order = "a[poles]-03[substation]"
end
if data.raw["item"]["substation-3"] then
	data.raw["item"]["substation-3"].subgroup = "ms-poles3"
	data.raw["item"]["substation-3"].order = "a[poles]-04[substation]"
end
if data.raw["item"]["substation-4"] then
	data.raw["item"]["substation-4"].subgroup = "ms-poles3"
	data.raw["item"]["substation-4"].order = "a[poles]-05[substation]"
end