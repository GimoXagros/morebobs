--More Shiny bob!
data:extend({
	{
		type = "item-subgroup",
		name = "ms-lighted-poles1",
		group = "logistics",
		order = "d[poles]-01B[poles]",
	},
	{
		type = "item-subgroup",
		name = "ms-lighted-poles2",
		group = "logistics",
		order = "d[poles]-02B[poles]",
	},
	{
		type = "item-subgroup",
		name = "ms-lighted-poles3",
		group = "logistics",
		order = "d[poles]-03B[poles]",
	},
})

if data.raw["item"]["lighted-small-electric-pole"] then
	data.raw["item"]["lighted-small-electric-pole"].subgroup = "ms-lighted-poles1"
	data.raw["item"]["lighted-small-electric-pole"].order = "a[poles]-01[lighted-small-electric-pole]"
end
if data.raw["item"]["lighted-small-iron-electric-pole"] then
	data.raw["item"]["lighted-small-iron-electric-pole"].subgroup = "ms-lighted-poles1"
	data.raw["item"]["lighted-small-iron-electric-pole"].order = "a[poles]-02[lighted-small-electric-pole]"
end
if data.raw["item"]["lighted-medium-electric-pole"] then
	data.raw["item"]["lighted-medium-electric-pole"].subgroup = "ms-lighted-poles1"
	data.raw["item"]["lighted-medium-electric-pole"].order = "a[poles]-03[lighted-medium-electric-pole]"
end
if data.raw["item"]["lighted-medium-electric-pole-2"] then
	data.raw["item"]["lighted-medium-electric-pole-2"].subgroup = "ms-lighted-poles1"
	data.raw["item"]["lighted-medium-electric-pole-2"].order = "a[poles]-04[lighted-medium-electric-pole]"
end
if data.raw["item"]["lighted-medium-electric-pole-3"] then
	data.raw["item"]["lighted-medium-electric-pole-3"].subgroup = "ms-lighted-poles1"
	data.raw["item"]["lighted-medium-electric-pole-3"].order = "a[poles]-05[lighted-medium-electric-pole]"
end
if data.raw["item"]["lighted-medium-electric-pole-4"] then
	data.raw["item"]["lighted-medium-electric-pole-4"].subgroup = "ms-lighted-poles1"
	data.raw["item"]["lighted-medium-electric-pole-4"].order = "a[poles]-06[lighted-medium-electric-pole]"
end

if data.raw["item"]["lighted-bi-big-wooden-pole"] then
	data.raw["item"]["lighted-bi-big-wooden-pole"].subgroup = "ms-lighted-poles2"
	data.raw["item"]["lighted-bi-big-wooden-pole"].order = "a[poles]-01[lighted-big-electric-pole]"
end
if data.raw["item"]["lighted-bi-huge-wooden-pole"] then
	data.raw["item"]["lighted-bi-huge-wooden-pole"].subgroup = "ms-lighted-poles2"
	data.raw["item"]["lighted-bi-huge-wooden-pole"].order = "a[poles]-02[lighted-big-electric-pole]"
end
if data.raw["item"]["lighted-big-electric-pole"] then
	data.raw["item"]["lighted-big-electric-pole"].subgroup = "ms-lighted-poles2"
	data.raw["item"]["lighted-big-electric-pole"].order = "a[poles]-03[lighted-big-electric-pole]"
end
if data.raw["item"]["lighted-big-electric-pole-2"] then
	data.raw["item"]["lighted-big-electric-pole-2"].subgroup = "ms-lighted-poles2"
	data.raw["item"]["lighted-big-electric-pole-2"].order = "a[poles]-04[lighted-big-electric-pole]"
end
if data.raw["item"]["lighted-big-electric-pole-3"] then
	data.raw["item"]["lighted-big-electric-pole-3"].subgroup = "ms-lighted-poles2"
	data.raw["item"]["lighted-big-electric-pole-3"].order = "a[poles]-05[lighted-big-electric-pole]"
end
if data.raw["item"]["lighted-big-electric-pole-4"] then
	data.raw["item"]["lighted-big-electric-pole-4"].subgroup = "ms-lighted-poles2"
	data.raw["item"]["lighted-big-electric-pole-4"].order = "a[poles]-06[lighted-big-electric-pole]"
end

if data.raw["item"]["lighted-bi-large-substation"] then
	data.raw["item"]["lighted-bi-large-substation"].subgroup = "ms-lighted-poles3"
	data.raw["item"]["lighted-bi-large-substation"].order = "a[poles]-01[lighted-substation]"
end
if data.raw["item"]["lighted-substation"] then
	data.raw["item"]["lighted-substation"].subgroup = "ms-lighted-poles3"
	data.raw["item"]["lighted-substation"].order = "a[poles]-02[lighted-substation]"
end
if data.raw["item"]["lighted-substation-2"] then
	data.raw["item"]["lighted-substation-2"].subgroup = "ms-lighted-poles3"
	data.raw["item"]["lighted-substation-2"].order = "a[poles]-03[lighted-substation]"
end
if data.raw["item"]["lighted-substation-3"] then
	data.raw["item"]["lighted-substation-3"].subgroup = "ms-lighted-poles3"
	data.raw["item"]["lighted-substation-3"].order = "a[poles]-04[lighted-substation]"
end
if data.raw["item"]["lighted-substation-4"] then
	data.raw["item"]["lighted-substation-4"].subgroup = "ms-lighted-poles3"
	data.raw["item"]["lighted-substation-4"].order = "a[poles]-05[lighted-substation]"
end