--[[
-- Make assembling-machine 3 or bob-assembling-machine 6 able to craft tank components
-- tested finish
function TableConcat(t1,t2)
    for i=1,#t2 do
        t1[#t1+1] = t2[i]
    end
    return t1
end

if bobmods then
	if bobmods.assembly then
		data.raw["assembling-machine"]["assembling-machine-6"].crafting_categories = TableConcat( data.raw["assembling-machine"]["assembling-machine-6"].crafting_categories, {"tank-crafting","tank-ammo-component"} )
	end
else
	data.raw["assembling-machine"]["assembling-machine-3"].crafting_categories = TableConcat( data.raw["assembling-machine"]["assembling-machine-3"].crafting_categories, {"tank-crafting","tank-ammo-component"} )
end
]]--

if mods["bobvehicleequipment"] then
	if settings.startup["bobmods-vehicleequipment-enablevehiclegrids"].value == true then
		data.raw["car"]["flame-tank"].equipment_grid = "bob-car"
		data.raw["car"]["auto-tank"].equipment_grid = "bob-tank"
		data.raw["car"]["nade-tank"].equipment_grid = "bob-car"

		data.raw["car"]["flame-tank-wlsk"].equipment_grid = "bob-tank"
		data.raw["car"]["auto-tank-wlsk"].equipment_grid = "bob-tank-2"
		data.raw["car"]["nade-tank-wlsk"].equipment_grid = "bob-tank"

		data.raw["car"]["super-tank"].equipment_grid = "bob-tank-2"
		data.raw["car"]["super-tank-alternate"].equipment_grid = "bob-tank-3"
		data.raw["car"]["super-tank-wmd"].equipment_grid = "bob-tank-2"

		data.raw["car"]["mine-tank"].equipment_grid = "bob-tank"
		data.raw["car"]["rocket-tank"].equipment_grid = "bob-tank"
		data.raw["car"]["car-flamer"].equipment_grid = "bob-car"

		for i, entity in pairs(data.raw["car"]) do
		  entity.equipment_grid = entity.equipment_grid or "bob-tank"
		end
		for i, entity in pairs(data.raw["locomotive"]) do
		  entity.equipment_grid = entity.equipment_grid or "bob-locomotive-3"
		end
		for i, entity in pairs(data.raw["cargo-wagon"]) do
		  entity.equipment_grid = entity.equipment_grid or "bob-cargo-wagon-3"
		end
		for i, entity in pairs(data.raw["fluid-wagon"]) do
		  entity.equipment_grid = entity.equipment_grid or "bob-wagon-3"
		end
		for i, entity in pairs(data.raw["artillery-wagon"]) do
		  entity.equipment_grid = entity.equipment_grid or "bob-armoured-wagon"
		end
	end
end

if mods["bobwarfare"] then
	data.raw["land-mine"]["land-mine-poison"].minable = {mining_time = 1, result = "poison-mine"}
	data.raw["recipe"]["minepack-poison"].ingredients =
	{
		{"poison-mine", 10},
		{"tank-ammo-casing", 2},
		{"tank-ammo-universal-explosive", 2}
	}
	table.insert(data.raw.technology["new-munitions"].prerequisites, "poison-mine")
end

if mods["aai-programmable-vehicles"] then
	data.raw["technology"]["tank-recall"].enabled = false
end

if mods["Xagros_FIRST_AID_KIT"] then
	data.raw["capsule"]["fish-kit"].capsule_action.attack_parameters.sound = 
	{
		filename = "__Xagros_FIRST_AID_KIT__/sound/eat.ogg",
		volume = 0.9
	}
end