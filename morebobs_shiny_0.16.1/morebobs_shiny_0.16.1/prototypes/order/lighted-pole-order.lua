--More Shiny bob!
data:extend({
	{
		type = "item-subgroup",
		name = "msb-lighted-poles-list-first",
		group = "logistics",
		order = "d[poles]-a[poles]-b",
	},
	{
		type = "item-subgroup",
		name = "msb-lighted-poles-list-second",
		group = "logistics",
		order = "d[poles]-b[poles]-b",
	},
	{
		type = "item-subgroup",
		name = "msb-lighted-poles-list-third",
		group = "logistics",
		order = "d[poles]-c[poles]-b",
	},
})

if data.raw["item"]["lighted-small-electric-pole"] then
	data.raw["item"]["lighted-small-electric-pole"].subgroup = "msb-lighted-poles-list-first"
	data.raw["item"]["lighted-small-electric-pole"].order = "a[poles]-01[lighted-small-electric-pole]"
end
if data.raw["item"]["lighted-small-iron-electric-pole"] then
	data.raw["item"]["lighted-small-iron-electric-pole"].subgroup = "msb-lighted-poles-list-first"
	data.raw["item"]["lighted-small-iron-electric-pole"].order = "a[poles]-02[lighted-small-electric-pole]"
end
if data.raw["item"]["lighted-medium-electric-pole"] then
	data.raw["item"]["lighted-medium-electric-pole"].subgroup = "msb-lighted-poles-list-first"
	data.raw["item"]["lighted-medium-electric-pole"].order = "a[poles]-03[lighted-medium-electric-pole]"
end
if data.raw["item"]["lighted-medium-electric-pole-2"] then
	data.raw["item"]["lighted-medium-electric-pole-2"].subgroup = "msb-lighted-poles-list-first"
	data.raw["item"]["lighted-medium-electric-pole-2"].order = "a[poles]-04[lighted-medium-electric-pole]"
end
if data.raw["item"]["lighted-medium-electric-pole-3"] then
	data.raw["item"]["lighted-medium-electric-pole-3"].subgroup = "msb-lighted-poles-list-first"
	data.raw["item"]["lighted-medium-electric-pole-3"].order = "a[poles]-05[lighted-medium-electric-pole]"
end
if data.raw["item"]["lighted-medium-electric-pole-4"] then
	data.raw["item"]["lighted-medium-electric-pole-4"].subgroup = "msb-lighted-poles-list-first"
	data.raw["item"]["lighted-medium-electric-pole-4"].order = "a[poles]-06[lighted-medium-electric-pole]"
end

if data.raw["item"]["lighted-bi-big-wooden-pole"] then
	data.raw["item"]["lighted-bi-big-wooden-pole"].subgroup = "msb-lighted-poles-list-second"
	data.raw["item"]["lighted-bi-big-wooden-pole"].order = "a[poles]-01[lighted-big-electric-pole]"
end
if data.raw["item"]["lighted-bi-huge-wooden-pole"] then
	data.raw["item"]["lighted-bi-huge-wooden-pole"].subgroup = "msb-lighted-poles-list-second"
	data.raw["item"]["lighted-bi-huge-wooden-pole"].order = "a[poles]-02[lighted-big-electric-pole]"
end
if data.raw["item"]["lighted-big-electric-pole"] then
	data.raw["item"]["lighted-big-electric-pole"].subgroup = "msb-lighted-poles-list-second"
	data.raw["item"]["lighted-big-electric-pole"].order = "a[poles]-03[lighted-big-electric-pole]"
end
if data.raw["item"]["lighted-big-electric-pole-2"] then
	data.raw["item"]["lighted-big-electric-pole-2"].subgroup = "msb-lighted-poles-list-second"
	data.raw["item"]["lighted-big-electric-pole-2"].order = "a[poles]-04[lighted-big-electric-pole]"
end
if data.raw["item"]["lighted-big-electric-pole-3"] then
	data.raw["item"]["lighted-big-electric-pole-3"].subgroup = "msb-lighted-poles-list-second"
	data.raw["item"]["lighted-big-electric-pole-3"].order = "a[poles]-05[lighted-big-electric-pole]"
end
if data.raw["item"]["lighted-big-electric-pole-4"] then
	data.raw["item"]["lighted-big-electric-pole-4"].subgroup = "msb-lighted-poles-list-second"
	data.raw["item"]["lighted-big-electric-pole-4"].order = "a[poles]-06[lighted-big-electric-pole]"
end

if data.raw["item"]["lighted-floating-electric-pole"] then
	data.raw["item"]["lighted-floating-electric-pole"].subgroup = "msb-lighted-poles-list-third"
	data.raw["item"]["lighted-floating-electric-pole"].order = "a[poles]-01[lighted-substation]"
end
if data.raw["item"]["lighted-bi-large-substation"] then
	data.raw["item"]["lighted-bi-large-substation"].subgroup = "msb-lighted-poles-list-third"
	data.raw["item"]["lighted-bi-large-substation"].order = "a[poles]-06[lighted-substation]"
	data.raw["recipe"]["lighted-bi-large-substation"].subgroup = "msb-lighted-poles-list-third"
	data.raw["recipe"]["lighted-bi-large-substation"].order = "a[poles]-02[lighted-substation]"
end
if data.raw["item"]["lighted-substation"] then
	data.raw["item"]["lighted-substation"].subgroup = "msb-lighted-poles-list-third"
	data.raw["item"]["lighted-substation"].order = "a[poles]-03[lighted-substation]"
end
if data.raw["item"]["lighted-substation-2"] then
	data.raw["item"]["lighted-substation-2"].subgroup = "msb-lighted-poles-list-third"
	data.raw["item"]["lighted-substation-2"].order = "a[poles]-04[lighted-substation]"
end
if data.raw["item"]["lighted-substation-3"] then
	data.raw["item"]["lighted-substation-3"].subgroup = "msb-lighted-poles-list-third"
	data.raw["item"]["lighted-substation-3"].order = "a[poles]-05[lighted-substation]"
end
if data.raw["item"]["lighted-substation-4"] then
	data.raw["item"]["lighted-substation-4"].subgroup = "msb-lighted-poles-list-third"
	data.raw["item"]["lighted-substation-4"].order = "a[poles]-06[lighted-substation]"
end