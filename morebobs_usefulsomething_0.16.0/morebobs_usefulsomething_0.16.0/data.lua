if settings.startup["enable-reactorinterface"] and settings.startup["enable-reactorinterface"].value == true then
	require("prototypes/reactorinterface")
end
if settings.startup["enable-tesla"] and settings.startup["enable-tesla"].value == true then
	require("prototypes/TeslaTurret")
end
if settings.startup["enable-usefulequipment"] and settings.startup["enable-usefulequipment"].value == true then
	require("prototypes/useful_equipment.equipment")
	require("prototypes/useful_equipment.item")
	require("prototypes/useful_equipment.recipe")
	require("prototypes/useful_equipment.technology")
end