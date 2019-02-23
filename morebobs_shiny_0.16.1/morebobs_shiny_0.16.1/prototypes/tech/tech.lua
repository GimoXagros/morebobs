--technologies

if settings.startup["moreshinybobs-tech-alien-and-research"] and settings.startup["moreshinybobs-tech-alien-and-research"].value == true then
	--alien-and-research
	require("tech-alien-and-research")
end

if settings.startup["moreshinybobs-tech-ammo"] and settings.startup["moreshinybobs-tech-ammo"].value == true then
	--ammo
	require("tech-ammo")
end

if settings.startup["moreshinybobs-tech-chemical-processing"] and settings.startup["moreshinybobs-tech-chemical-processing"].value == true then
	--tech-chemical-processing
	require("tech-chemical-processing")
end

if settings.startup["moreshinybobs-tech-electronics"] and settings.startup["moreshinybobs-tech-electronics"].value == true then
	--electronics
	require("tech-electronics")
end

if settings.startup["moreshinybobs-tech-equipment"] and settings.startup["moreshinybobs-tech-equipment"].value == true then
	--equipment
	require("tech-equipment")
end

if settings.startup["moreshinybobs-tech-logistics"] and settings.startup["moreshinybobs-tech-logistics"].value == true then
	--tech-logistics
	require("tech-logistics")
end

if settings.startup["moreshinybobs-tech-material-processing"] and settings.startup["moreshinybobs-tech-material-processing"].value == true then
	--tech-material-processing
	require("tech-material-processing")
end

if settings.startup["moreshinybobs-tech-mining"] and settings.startup["moreshinybobs-tech-mining"].value == true then
	--mining
	require("tech-mining")
end

if settings.startup["moreshinybobs-tech-modules"] and settings.startup["moreshinybobs-tech-modules"].value == true then
	--modules
	require("tech-modules")
end

if settings.startup["moreshinybobs-tech-power"] and settings.startup["moreshinybobs-tech-power"].value == true then
	--power
	require("tech-power")
end

if settings.startup["moreshinybobs-tech-robotics"] and settings.startup["moreshinybobs-tech-robotics"].value == true then
	--robotics
	require("tech-robotics")
end

if settings.startup["moreshinybobs-tech-warfare"] and settings.startup["moreshinybobs-tech-warfare"].value == true then
	--warfare
	require("tech-warfare")
end