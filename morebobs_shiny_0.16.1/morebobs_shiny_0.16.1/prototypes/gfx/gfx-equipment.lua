local MSB = {}

function MSB.PB_EQUIPMENT(name, gfx, itemtype, powerbar)
	if data.raw["item"][name] then
		data.raw["item"][name].icons = { { icon = "__morebobs_shiny__/graphics/icons/equipment/"..gfx..".png" }, { icon = powerbar } }
		data.raw[itemtype][name].sprite.filename = "__morebobs_shiny__/graphics/equipment/"..gfx..".png"
	end
end

function MSB.PB_VEQUIPMENT(name, gfx, itemtype, powerbar)
	if data.raw["item"][name] then
		data.raw["item"][name].icons = { { icon = "__morebobs_shiny__/graphics/icons/vehicleequipment/"..gfx..".png" }, { icon = powerbar } }
		data.raw[itemtype][name].sprite.filename = "__morebobs_shiny__/graphics/vehicleequipment/"..gfx..".png"
	end
end

function MSB.NB_EQUIPMENT(name, gfx, itemtype)
	if data.raw["item"][name] then
		data.raw["item"][name].icon = "__morebobs_shiny__/graphics/icons/equipment/"..gfx..".png"
		data.raw["item"][name].icon_size = 32
		data.raw[itemtype][name].sprite.filename = "__morebobs_shiny__/graphics/equipment/"..gfx..".png"
	end
end

function MSB.NB_VEQUIPMENT(name, gfx, itemtype)
	if data.raw["item"][name] then
		data.raw["item"][name].icon = "__morebobs_shiny__/graphics/icons/vehicleequipment/"..gfx..".png"
		data.raw["item"][name].icon_size = 32
		data.raw[itemtype][name].sprite.filename = "__morebobs_shiny__/graphics/vehicleequipment/"..gfx..".png"
	end
end

if settings.startup["add-powerbars"] and settings.startup["add-powerbars"].value == true then
	-- equipment
	-- battery-equipment
	MSB.PB_EQUIPMENT("battery-equipment", "battery-mk1-equipment", "battery-equipment", "__ShinyBobGFX__/graphics/icons/num-1.png")
	MSB.PB_EQUIPMENT("battery-mk2-equipment", "battery-mk2-equipment", "battery-equipment", "__ShinyBobGFX__/graphics/icons/num-2.png")
	MSB.PB_EQUIPMENT("battery-mk3-equipment", "battery-mk3-equipment", "battery-equipment", "__ShinyBobGFX__/graphics/icons/num-3.png")
	MSB.PB_EQUIPMENT("battery-mk4-equipment", "battery-mk4-equipment", "battery-equipment", "__ShinyBobGFX__/graphics/icons/num-4.png")
	MSB.PB_EQUIPMENT("battery-mk5-equipment", "battery-mk5-equipment", "battery-equipment", "__ShinyBobGFX__/graphics/icons/num-5.png")
	MSB.PB_EQUIPMENT("battery-mk6-equipment", "battery-mk6-equipment", "battery-equipment", "__morebobs_shiny__/graphics/icons/num-6.png")
	
	-- energy-shield-equipment
	MSB.PB_EQUIPMENT("energy-shield-equipment", "energy-shield-mk1-equipment", "energy-shield-equipment", "__ShinyBobGFX__/graphics/icons/num-1.png")
	MSB.PB_EQUIPMENT("energy-shield-mk2-equipment", "energy-shield-mk2-equipment", "energy-shield-equipment", "__ShinyBobGFX__/graphics/icons/num-2.png")
	MSB.PB_EQUIPMENT("energy-shield-mk3-equipment", "energy-shield-mk3-equipment", "energy-shield-equipment", "__ShinyBobGFX__/graphics/icons/num-3.png")
	MSB.PB_EQUIPMENT("energy-shield-mk4-equipment", "energy-shield-mk4-equipment", "energy-shield-equipment", "__ShinyBobGFX__/graphics/icons/num-4.png")
	MSB.PB_EQUIPMENT("energy-shield-mk5-equipment", "energy-shield-mk5-equipment", "energy-shield-equipment", "__ShinyBobGFX__/graphics/icons/num-5.png")
	MSB.PB_EQUIPMENT("energy-shield-mk6-equipment", "energy-shield-mk6-equipment", "energy-shield-equipment", "__morebobs_shiny__/graphics/icons/num-6.png")
	
	-- exoskeleton-equipment
	MSB.PB_EQUIPMENT("exoskeleton-equipment", "exoskeleton-equipment-1", "movement-bonus-equipment", "__ShinyBobGFX__/graphics/icons/num-1.png")
	MSB.PB_EQUIPMENT("exoskeleton-equipment-2", "exoskeleton-equipment-2", "movement-bonus-equipment", "__ShinyBobGFX__/graphics/icons/num-2.png")
	MSB.PB_EQUIPMENT("exoskeleton-equipment-3", "exoskeleton-equipment-3", "movement-bonus-equipment", "__ShinyBobGFX__/graphics/icons/num-3.png")
	
	-- fusion-reactor-equipment
	MSB.PB_EQUIPMENT("fusion-reactor-equipment", "fusion-reactor-equipment-1", "generator-equipment", "__ShinyBobGFX__/graphics/icons/num-1.png")
	MSB.PB_EQUIPMENT("fusion-reactor-equipment-2", "fusion-reactor-equipment-2", "generator-equipment", "__ShinyBobGFX__/graphics/icons/num-2.png")
	MSB.PB_EQUIPMENT("fusion-reactor-equipment-3", "fusion-reactor-equipment-3", "generator-equipment", "__ShinyBobGFX__/graphics/icons/num-3.png")
	MSB.PB_EQUIPMENT("fusion-reactor-equipment-4", "fusion-reactor-equipment-4", "generator-equipment", "__ShinyBobGFX__/graphics/icons/num-4.png")
	
	-- night-vision-equipment
	MSB.PB_EQUIPMENT("night-vision-equipment", "night-vision-equipment-1", "night-vision-equipment", "__ShinyBobGFX__/graphics/icons/num-1.png")
	MSB.PB_EQUIPMENT("night-vision-equipment-2", "night-vision-equipment-2", "night-vision-equipment", "__ShinyBobGFX__/graphics/icons/num-2.png")
	MSB.PB_EQUIPMENT("night-vision-equipment-3", "night-vision-equipment-3", "night-vision-equipment", "__ShinyBobGFX__/graphics/icons/num-3.png")
	
	-- personal-laser-defense-equipment
	MSB.PB_EQUIPMENT("personal-laser-defense-equipment", "personal-laser-defense-equipment-1", "active-defense-equipment", "__ShinyBobGFX__/graphics/icons/num-1.png")
	MSB.PB_EQUIPMENT("personal-laser-defense-equipment-2", "personal-laser-defense-equipment-2", "active-defense-equipment", "__ShinyBobGFX__/graphics/icons/num-2.png")
	MSB.PB_EQUIPMENT("personal-laser-defense-equipment-3", "personal-laser-defense-equipment-3", "active-defense-equipment", "__ShinyBobGFX__/graphics/icons/num-3.png")
	MSB.PB_EQUIPMENT("personal-laser-defense-equipment-4", "personal-laser-defense-equipment-4", "active-defense-equipment", "__ShinyBobGFX__/graphics/icons/num-4.png")
	MSB.PB_EQUIPMENT("personal-laser-defense-equipment-5", "personal-laser-defense-equipment-5", "active-defense-equipment", "__ShinyBobGFX__/graphics/icons/num-5.png")
	MSB.PB_EQUIPMENT("personal-laser-defense-equipment-6", "personal-laser-defense-equipment-6", "active-defense-equipment", "__morebobs_shiny__/graphics/icons/num-6.png")
	
	-- personal-roboport-equipment
	MSB.PB_EQUIPMENT("personal-roboport-equipment", "personal-roboport-equipment", "roboport-equipment", "__ShinyBobGFX__/graphics/icons/num-1.png")
	MSB.PB_EQUIPMENT("personal-roboport-mk2-equipment", "personal-roboport-mk2-equipment", "roboport-equipment", "__ShinyBobGFX__/graphics/icons/num-2.png")

	-- solar-panel-equipment
	MSB.PB_EQUIPMENT("solar-panel-equipment", "solar-panel-equipment-1", "solar-panel-equipment", "__ShinyBobGFX__/graphics/icons/num-1.png")
	MSB.PB_EQUIPMENT("solar-panel-equipment-2", "solar-panel-equipment-2", "solar-panel-equipment", "__ShinyBobGFX__/graphics/icons/num-2.png")
	MSB.PB_EQUIPMENT("solar-panel-equipment-3", "solar-panel-equipment-3", "solar-panel-equipment", "__ShinyBobGFX__/graphics/icons/num-3.png")
	MSB.PB_EQUIPMENT("solar-panel-equipment-4", "solar-panel-equipment-4", "solar-panel-equipment", "__ShinyBobGFX__/graphics/icons/num-4.png")
	
	-- vehicleequipment
	-- vehicle-battery
	for i=1,5 do MSB.PB_VEQUIPMENT("vehicle-battery-"..i, "vehicle-battery-"..i, "battery-equipment", "__ShinyBobGFX__/graphics/icons/num-"..i..".png") end
	MSB.PB_VEQUIPMENT("vehicle-battery-6", "vehicle-battery-6", "battery-equipment", "__morebobs_shiny__/graphics/icons/num-6.png")

	-- vehicle-big-turret
	for i=1,5 do MSB.PB_VEQUIPMENT("vehicle-big-turret-"..i, "vehicle-big-turret-"..i, "active-defense-equipment", "__ShinyBobGFX__/graphics/icons/num-"..i..".png") end
	MSB.PB_VEQUIPMENT("vehicle-big-turret-6", "vehicle-big-turret-6", "active-defense-equipment", "__morebobs_shiny__/graphics/icons/num-6.png")

	-- vehicle-fusion-cell
	for i=1,5 do MSB.PB_VEQUIPMENT("vehicle-fusion-cell-"..i, "vehicle-fusion-cell-"..i, "generator-equipment", "__ShinyBobGFX__/graphics/icons/num-"..i..".png") end
	MSB.PB_VEQUIPMENT("vehicle-fusion-cell-6", "vehicle-fusion-cell-6", "generator-equipment", "__morebobs_shiny__/graphics/icons/num-6.png")

	-- vehicle-fusion-reactor
	for i=1,5 do MSB.PB_VEQUIPMENT("vehicle-fusion-reactor-"..i, "vehicle-fusion-reactor-"..i, "generator-equipment", "__ShinyBobGFX__/graphics/icons/num-"..i..".png") end
	MSB.PB_VEQUIPMENT("vehicle-fusion-reactor-6", "vehicle-fusion-reactor-6", "generator-equipment", "__morebobs_shiny__/graphics/icons/num-6.png")

	-- vehicle-laser-defense
	for i=1,5 do MSB.PB_VEQUIPMENT("vehicle-laser-defense-"..i, "vehicle-laser-defense-"..i, "active-defense-equipment", "__ShinyBobGFX__/graphics/icons/num-"..i..".png") end
	MSB.PB_VEQUIPMENT("vehicle-laser-defense-6", "vehicle-laser-defense-6", "active-defense-equipment", "__morebobs_shiny__/graphics/icons/num-6.png")

	-- vehicle-roboport
	MSB.PB_VEQUIPMENT("vehicle-roboport", "vehicle-roboport-1", "roboport-equipment", "__ShinyBobGFX__/graphics/icons/num-1.png")
	MSB.PB_VEQUIPMENT("vehicle-roboport-2", "vehicle-roboport-2", "roboport-equipment", "__ShinyBobGFX__/graphics/icons/num-2.png")

	-- vehicle-shield
	for i=1,5 do MSB.PB_VEQUIPMENT("vehicle-shield-"..i, "vehicle-shield-"..i, "energy-shield-equipment", "__ShinyBobGFX__/graphics/icons/num-"..i..".png") end
	MSB.PB_VEQUIPMENT("vehicle-shield-6", "vehicle-shield-6", "energy-shield-equipment", "__morebobs_shiny__/graphics/icons/num-6.png")

	-- vehicle-solar-panel
	for i=1,5 do MSB.PB_VEQUIPMENT("vehicle-solar-panel-"..i, "vehicle-solar-panel-"..i, "solar-panel-equipment", "__ShinyBobGFX__/graphics/icons/num-"..i..".png") end
	MSB.PB_VEQUIPMENT("vehicle-solar-panel-6", "vehicle-solar-panel-6", "solar-panel-equipment", "__morebobs_shiny__/graphics/icons/num-6.png")

	if data.raw["item"]["vehicle-motor"] then
		data.raw["movement-bonus-equipment"]["vehicle-motor"].sprite.filename = "__morebobs_shiny__/graphics/vehicleequipment/vehicle-motor.png"
		data.raw["item"]["vehicle-motor"].icons = { { icon = "__morebobs_shiny__/graphics/icons/vehicleequipment/vehicle-motor.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-1.png" } }
	end
	if data.raw["item"]["vehicle-engine"] then
		data.raw["movement-bonus-equipment"]["vehicle-engine"].sprite.filename = "__morebobs_shiny__/graphics/vehicleequipment/vehicle-engine.png"
		data.raw["item"]["vehicle-engine"].icons = { { icon = "__morebobs_shiny__/graphics/icons/vehicleequipment/vehicle-engine.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-2.png" } }
	end
else
	-- equipment
	-- battery-equipment
	MSB.NB_EQUIPMENT("battery-equipment", "battery-mk1-equipment", "battery-equipment")
	MSB.NB_EQUIPMENT("battery-mk2-equipment", "battery-mk2-equipment", "battery-equipment")
	MSB.NB_EQUIPMENT("battery-mk3-equipment", "battery-mk3-equipment", "battery-equipment")
	MSB.NB_EQUIPMENT("battery-mk4-equipment", "battery-mk4-equipment", "battery-equipment")
	MSB.NB_EQUIPMENT("battery-mk5-equipment", "battery-mk5-equipment", "battery-equipment")
	MSB.NB_EQUIPMENT("battery-mk6-equipment", "battery-mk6-equipment", "battery-equipment", "__morebobs_shiny__/graphics/icons/num-6.png")
	
	-- energy-shield-equipment
	MSB.NB_EQUIPMENT("energy-shield-equipment", "energy-shield-mk1-equipment", "energy-shield-equipment")
	MSB.NB_EQUIPMENT("energy-shield-mk2-equipment", "energy-shield-mk2-equipment", "energy-shield-equipment")
	MSB.NB_EQUIPMENT("energy-shield-mk3-equipment", "energy-shield-mk3-equipment", "energy-shield-equipment")
	MSB.NB_EQUIPMENT("energy-shield-mk4-equipment", "energy-shield-mk4-equipment", "energy-shield-equipment")
	MSB.NB_EQUIPMENT("energy-shield-mk5-equipment", "energy-shield-mk5-equipment", "energy-shield-equipment")
	MSB.NB_EQUIPMENT("energy-shield-mk6-equipment", "energy-shield-mk6-equipment", "energy-shield-equipment")
	
	-- exoskeleton-equipment
	MSB.NB_EQUIPMENT("exoskeleton-equipment", "exoskeleton-equipment-1", "movement-bonus-equipment")
	MSB.NB_EQUIPMENT("exoskeleton-equipment-2", "exoskeleton-equipment-2", "movement-bonus-equipment")
	MSB.NB_EQUIPMENT("exoskeleton-equipment-3", "exoskeleton-equipment-3", "movement-bonus-equipment")
	
	-- fusion-reactor-equipment
	MSB.NB_EQUIPMENT("fusion-reactor-equipment", "fusion-reactor-equipment-1", "generator-equipment")
	MSB.NB_EQUIPMENT("fusion-reactor-equipment-2", "fusion-reactor-equipment-2", "generator-equipment")
	MSB.NB_EQUIPMENT("fusion-reactor-equipment-3", "fusion-reactor-equipment-3", "generator-equipment")
	MSB.NB_EQUIPMENT("fusion-reactor-equipment-4", "fusion-reactor-equipment-4", "generator-equipment")
	
	-- night-vision-equipment
	MSB.NB_EQUIPMENT("night-vision-equipment", "night-vision-equipment-1", "night-vision-equipment")
	MSB.NB_EQUIPMENT("night-vision-equipment-2", "night-vision-equipment-2", "night-vision-equipment")
	MSB.NB_EQUIPMENT("night-vision-equipment-3", "night-vision-equipment-3", "night-vision-equipment")
	
	-- personal-laser-defense-equipment
	MSB.NB_EQUIPMENT("personal-laser-defense-equipment", "personal-laser-defense-equipment-1", "active-defense-equipment")
	MSB.NB_EQUIPMENT("personal-laser-defense-equipment-2", "personal-laser-defense-equipment-2", "active-defense-equipment")
	MSB.NB_EQUIPMENT("personal-laser-defense-equipment-3", "personal-laser-defense-equipment-3", "active-defense-equipment")
	MSB.NB_EQUIPMENT("personal-laser-defense-equipment-4", "personal-laser-defense-equipment-4", "active-defense-equipment")
	MSB.NB_EQUIPMENT("personal-laser-defense-equipment-5", "personal-laser-defense-equipment-5", "active-defense-equipment")
	MSB.NB_EQUIPMENT("personal-laser-defense-equipment-6", "personal-laser-defense-equipment-6", "active-defense-equipment")
	
	-- personal-roboport-equipment
	MSB.NB_EQUIPMENT("personal-roboport-equipment", "personal-roboport-equipment", "roboport-equipment")
	MSB.NB_EQUIPMENT("personal-roboport-mk2-equipment", "personal-roboport-mk2-equipment", "roboport-equipment")

	-- solar-panel-equipment
	MSB.NB_EQUIPMENT("solar-panel-equipment", "solar-panel-equipment-1", "solar-panel-equipment")
	MSB.NB_EQUIPMENT("solar-panel-equipment-2", "solar-panel-equipment-2", "solar-panel-equipment")
	MSB.NB_EQUIPMENT("solar-panel-equipment-3", "solar-panel-equipment-3", "solar-panel-equipment")
	MSB.NB_EQUIPMENT("solar-panel-equipment-4", "solar-panel-equipment-4", "solar-panel-equipment")
	
	-- vehicleequipment
	-- vehicle-battery
	for i=1,5 do MSB.NB_VEQUIPMENT("vehicle-battery-"..i, "vehicle-battery-"..i, "battery-equipment") end
	MSB.NB_VEQUIPMENT("vehicle-battery-6", "vehicle-battery-6", "battery-equipment")

	-- vehicle-big-turret
	for i=1,5 do MSB.NB_VEQUIPMENT("vehicle-big-turret-"..i, "vehicle-big-turret-"..i, "active-defense-equipment") end
	MSB.NB_VEQUIPMENT("vehicle-big-turret-6", "vehicle-big-turret-6", "active-defense-equipment")

	-- vehicle-fusion-cell
	for i=1,5 do MSB.NB_VEQUIPMENT("vehicle-fusion-cell-"..i, "vehicle-fusion-cell-"..i, "generator-equipment") end
	MSB.NB_VEQUIPMENT("vehicle-fusion-cell-6", "vehicle-fusion-cell-6", "generator-equipment")

	-- vehicle-fusion-reactor
	for i=1,5 do MSB.NB_VEQUIPMENT("vehicle-fusion-reactor-"..i, "vehicle-fusion-reactor-"..i, "generator-equipment") end
	MSB.NB_VEQUIPMENT("vehicle-fusion-reactor-6", "vehicle-fusion-reactor-6", "generator-equipment")

	-- vehicle-laser-defense
	for i=1,5 do MSB.NB_VEQUIPMENT("vehicle-laser-defense-"..i, "vehicle-laser-defense-"..i, "active-defense-equipment") end
	MSB.NB_VEQUIPMENT("vehicle-laser-defense-6", "vehicle-laser-defense-6", "active-defense-equipment")

	-- vehicle-roboport
	MSB.NB_VEQUIPMENT("vehicle-roboport", "vehicle-roboport-1", "roboport-equipment")
	MSB.NB_VEQUIPMENT("vehicle-roboport-2", "vehicle-roboport-2", "roboport-equipment")

	-- vehicle-shield
	for i=1,5 do MSB.NB_VEQUIPMENT("vehicle-shield-"..i, "vehicle-shield-"..i, "energy-shield-equipment") end
	MSB.NB_VEQUIPMENT("vehicle-shield-6", "vehicle-shield-6", "energy-shield-equipment")

	-- vehicle-solar-panel
	for i=1,5 do MSB.NB_VEQUIPMENT("vehicle-solar-panel-"..i, "vehicle-solar-panel-"..i, "solar-panel-equipment") end
	MSB.NB_VEQUIPMENT("vehicle-solar-panel-6", "vehicle-solar-panel-6", "solar-panel-equipment")

	if data.raw["item"]["vehicle-motor"] then
		data.raw["item"]["vehicle-motor"].icon = "__morebobs_shiny__/graphics/icons/vehicleequipment/vehicle-motor.png"
		data.raw["item"]["vehicle-motor"].icon_size = 32
		data.raw["movement-bonus-equipment"]["vehicle-motor"].sprite.filename = "__morebobs_shiny__/graphics/vehicleequipment/vehicle-motor.png"
	end
	if data.raw["item"]["vehicle-engine"] then
		data.raw["item"]["vehicle-engine"].icon = "__morebobs_shiny__/graphics/icons/vehicleequipment/vehicle-engine.png"
		data.raw["item"]["vehicle-engine"].icon_size = 32
		data.raw["movement-bonus-equipment"]["vehicle-engine"].sprite.filename = "__morebobs_shiny__/graphics/vehicleequipment/vehicle-engine.png"
	end
end

-- other
MSB.NB_EQUIPMENT("belt-immunity-equipment", "belt-immunity-equipment", "belt-immunity-equipment")
MSB.NB_EQUIPMENT("discharge-defense-equipment", "discharge-defense-equipment", "active-defense-equipment")
if data.raw["capsule"]["discharge-defense-remote"] then data.raw["capsule"]["discharge-defense-remote"].icon = "__morebobs_shiny__/graphics/icons/equipment/discharge-defense-equipment-ability.png" end

return MSB