--equipment
if mods["ShinyBobGFX"] then
	if settings.startup["add-powerbars"].value == true then
		--energy-shield-equipment
		if data.raw["item"]["energy-shield-equipment"] then
			data.raw["item"]["energy-shield-equipment"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/equipment/energy-shield-mk1-equipment.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-1.png" } }
			data.raw["energy-shield-equipment"]["energy-shield-equipment"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/energy-shield-mk1-equipment.png"
		end
		if data.raw["item"]["energy-shield-mk2-equipment"] then
			data.raw["item"]["energy-shield-mk2-equipment"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/equipment/energy-shield-mk2-equipment.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-2.png" } }
			data.raw["energy-shield-equipment"]["energy-shield-mk2-equipment"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/energy-shield-mk2-equipment.png"
		end
		if data.raw["item"]["energy-shield-mk3-equipment"] then
			data.raw["item"]["energy-shield-mk3-equipment"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/equipment/energy-shield-mk3-equipment.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-3.png" } }
			data.raw["energy-shield-equipment"]["energy-shield-mk3-equipment"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/energy-shield-mk3-equipment.png"
		end
		if data.raw["item"]["energy-shield-mk4-equipment"] then
			data.raw["item"]["energy-shield-mk4-equipment"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/equipment/energy-shield-mk4-equipment.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-4.png" } }
			data.raw["energy-shield-equipment"]["energy-shield-mk4-equipment"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/energy-shield-mk4-equipment.png"
		end
		if data.raw["item"]["energy-shield-mk5-equipment"] then
			data.raw["item"]["energy-shield-mk5-equipment"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/equipment/energy-shield-mk5-equipment.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-5.png" } }
			data.raw["energy-shield-equipment"]["energy-shield-mk5-equipment"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/energy-shield-mk5-equipment.png"
		end
		if data.raw["item"]["energy-shield-mk6-equipment"] then
			data.raw["item"]["energy-shield-mk6-equipment"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/equipment/energy-shield-mk6-equipment.png" }, { icon = "__morebobs__/graphics/icons/num-6.png" } }
			data.raw["energy-shield-equipment"]["energy-shield-mk6-equipment"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/energy-shield-mk6-equipment.png"
		end

		--battery
		if data.raw["item"]["battery-equipment"] then
			data.raw["item"]["battery-equipment"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/equipment/battery-mk1-equipment.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-1.png" } }
			data.raw["battery-equipment"]["battery-equipment"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/battery-mk1-equipment.png"
		end
		if data.raw["item"]["battery-mk2-equipment"] then
			data.raw["item"]["battery-mk2-equipment"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/equipment/battery-mk2-equipment.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-2.png" } }
			data.raw["battery-equipment"]["battery-mk2-equipment"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/battery-mk2-equipment.png"
		end
		if data.raw["item"]["battery-mk3-equipment"] then
			data.raw["item"]["battery-mk3-equipment"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/equipment/battery-mk3-equipment.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-3.png" } }
			data.raw["battery-equipment"]["battery-mk3-equipment"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/battery-mk3-equipment.png"
		end
		if data.raw["item"]["battery-mk4-equipment"] then
			data.raw["item"]["battery-mk4-equipment"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/equipment/battery-mk4-equipment.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-4.png" } }
			data.raw["battery-equipment"]["battery-mk4-equipment"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/battery-mk4-equipment.png"
		end
		if data.raw["item"]["battery-mk5-equipment"] then
			data.raw["item"]["battery-mk5-equipment"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/equipment/battery-mk5-equipment.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-5.png" } }
			data.raw["battery-equipment"]["battery-mk5-equipment"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/battery-mk5-equipment.png"
		end
		if data.raw["item"]["battery-mk6-equipment"] then
			data.raw["item"]["battery-mk6-equipment"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/equipment/battery-mk6-equipment.png" }, { icon = "__morebobs__/graphics/icons/num-6.png" } }
			data.raw["battery-equipment"]["battery-mk6-equipment"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/battery-mk6-equipment.png"
		end

		--defense-equipment
		if data.raw["item"]["personal-laser-defense-equipment"] then
			data.raw["item"]["personal-laser-defense-equipment"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/equipment/personal-laser-defense-equipment-1.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-1.png" } }
			data.raw["active-defense-equipment"]["personal-laser-defense-equipment"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/personal-laser-defense-equipment-1.png"
		end
		if data.raw["item"]["personal-laser-defense-equipment-2"] then
			data.raw["item"]["personal-laser-defense-equipment-2"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/equipment/personal-laser-defense-equipment-2.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-2.png" } }
			data.raw["active-defense-equipment"]["personal-laser-defense-equipment-2"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/personal-laser-defense-equipment-2.png"
		end
		if data.raw["item"]["personal-laser-defense-equipment-3"] then
			data.raw["item"]["personal-laser-defense-equipment-3"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/equipment/personal-laser-defense-equipment-3.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-3.png" } }
			data.raw["active-defense-equipment"]["personal-laser-defense-equipment-3"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/personal-laser-defense-equipment-3.png"
		end
		if data.raw["item"]["personal-laser-defense-equipment-4"] then
			data.raw["item"]["personal-laser-defense-equipment-4"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/equipment/personal-laser-defense-equipment-4.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-4.png" } }
			data.raw["active-defense-equipment"]["personal-laser-defense-equipment-4"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/personal-laser-defense-equipment-4.png"
		end
		if data.raw["item"]["personal-laser-defense-equipment-5"] then
			data.raw["item"]["personal-laser-defense-equipment-5"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/equipment/personal-laser-defense-equipment-5.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-5.png" } }
			data.raw["active-defense-equipment"]["personal-laser-defense-equipment-5"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/personal-laser-defense-equipment-5.png"
		end
		if data.raw["item"]["personal-laser-defense-equipment-6"] then
			data.raw["item"]["personal-laser-defense-equipment-6"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/equipment/personal-laser-defense-equipment-6.png" }, { icon = "__morebobs__/graphics/icons/num-6.png" } }
			data.raw["active-defense-equipment"]["personal-laser-defense-equipment-6"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/personal-laser-defense-equipment-6.png"
		end
		
		--vehicleequipment
		--vehicle-solar-panel
		if data.raw["item"]["vehicle-solar-panel-1"] then
			data.raw["solar-panel-equipment"]["vehicle-solar-panel-1"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-solar-panel-1.png"
			data.raw["item"]["vehicle-solar-panel-1"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-solar-panel-1.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-1.png" } }
		end
		if data.raw["item"]["vehicle-solar-panel-2"] then
			data.raw["solar-panel-equipment"]["vehicle-solar-panel-2"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-solar-panel-2.png"
			data.raw["item"]["vehicle-solar-panel-2"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-solar-panel-2.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-2.png" } }
		end
		if data.raw["item"]["vehicle-solar-panel-3"] then
			data.raw["solar-panel-equipment"]["vehicle-solar-panel-3"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-solar-panel-3.png"
			data.raw["item"]["vehicle-solar-panel-3"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-solar-panel-3.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-3.png" } }
		end
		if data.raw["item"]["vehicle-solar-panel-4"] then
			data.raw["solar-panel-equipment"]["vehicle-solar-panel-4"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-solar-panel-4.png"
			data.raw["item"]["vehicle-solar-panel-4"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-solar-panel-4.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-4.png" } }
		end
		if data.raw["item"]["vehicle-solar-panel-5"] then
			data.raw["solar-panel-equipment"]["vehicle-solar-panel-5"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-solar-panel-5.png"
			data.raw["item"]["vehicle-solar-panel-5"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-solar-panel-5.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-5.png" } }
		end
		if data.raw["item"]["vehicle-solar-panel-6"] then
			data.raw["solar-panel-equipment"]["vehicle-solar-panel-6"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-solar-panel-6.png"
			data.raw["item"]["vehicle-solar-panel-6"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-solar-panel-6.png" }, { icon = "__morebobs__/graphics/icons/num-6.png" } }
		end
		
		--vehicle-fusion-reactor
		if data.raw["item"]["vehicle-fusion-reactor-1"] then
			data.raw["generator-equipment"]["vehicle-fusion-reactor-1"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-fusion-reactor-1.png"
			data.raw["item"]["vehicle-fusion-reactor-1"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-fusion-reactor-1.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-1.png" } }
		end
		if data.raw["item"]["vehicle-fusion-reactor-2"] then
			data.raw["generator-equipment"]["vehicle-fusion-reactor-2"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-fusion-reactor-2.png"
			data.raw["item"]["vehicle-fusion-reactor-2"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-fusion-reactor-2.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-2.png" } }
		end
		if data.raw["item"]["vehicle-fusion-reactor-3"] then
			data.raw["generator-equipment"]["vehicle-fusion-reactor-3"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-fusion-reactor-3.png"
			data.raw["item"]["vehicle-fusion-reactor-3"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-fusion-reactor-3.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-3.png" } }
		end
		if data.raw["item"]["vehicle-fusion-reactor-4"] then
			data.raw["generator-equipment"]["vehicle-fusion-reactor-4"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-fusion-reactor-4.png"
			data.raw["item"]["vehicle-fusion-reactor-4"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-fusion-reactor-4.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-4.png" } }
		end
		if data.raw["item"]["vehicle-fusion-reactor-5"] then
			data.raw["generator-equipment"]["vehicle-fusion-reactor-5"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-fusion-reactor-5.png"
			data.raw["item"]["vehicle-fusion-reactor-5"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-fusion-reactor-5.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-5.png" } }
		end
		if data.raw["item"]["vehicle-fusion-reactor-6"] then
			data.raw["generator-equipment"]["vehicle-fusion-reactor-6"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-fusion-reactor-6.png"
			data.raw["item"]["vehicle-fusion-reactor-6"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-fusion-reactor-6.png" }, { icon = "__morebobs__/graphics/icons/num-6.png" } }
		end
		
		--vehicle-battery
		if data.raw["item"]["vehicle-battery-1"] then
			data.raw["battery-equipment"]["vehicle-battery-1"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-battery-11.png"
			data.raw["item"]["vehicle-battery-1"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-battery-11.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-1.png" } }
		end
		if data.raw["item"]["vehicle-battery-2"] then
			data.raw["battery-equipment"]["vehicle-battery-2"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-battery-22.png"
			data.raw["item"]["vehicle-battery-2"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-battery-22.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-2.png" } }
		end
		if data.raw["item"]["vehicle-battery-3"] then
			data.raw["battery-equipment"]["vehicle-battery-3"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-battery-33.png"
			data.raw["item"]["vehicle-battery-3"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-battery-33.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-3.png" } }
		end
		if data.raw["item"]["vehicle-battery-4"] then
			data.raw["battery-equipment"]["vehicle-battery-4"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-battery-44.png"
			data.raw["item"]["vehicle-battery-4"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-battery-44.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-4.png" } }
		end
		if data.raw["item"]["vehicle-battery-5"] then
			data.raw["battery-equipment"]["vehicle-battery-5"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-battery-55.png"
			data.raw["item"]["vehicle-battery-5"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-battery-55.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-5.png" } }
		end
		if data.raw["item"]["vehicle-battery-6"] then
			data.raw["battery-equipment"]["vehicle-battery-6"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-battery-66.png"
			data.raw["item"]["vehicle-battery-6"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-battery-66.png" }, { icon = "__morebobs__/graphics/icons/num-6.png" } }
		end
		
		--vehicle-fusion-cell
		if data.raw["item"]["vehicle-fusion-cell-1"] then
			data.raw["generator-equipment"]["vehicle-fusion-cell-1"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-fusion-cell-1.png"
			data.raw["item"]["vehicle-fusion-cell-1"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-fusion-cell-1.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-1.png" } }
		end
		if data.raw["item"]["vehicle-fusion-cell-2"] then
			data.raw["generator-equipment"]["vehicle-fusion-cell-2"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-fusion-cell-2.png"
			data.raw["item"]["vehicle-fusion-cell-2"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-fusion-cell-2.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-2.png" } }
		end
		if data.raw["item"]["vehicle-fusion-cell-3"] then
			data.raw["generator-equipment"]["vehicle-fusion-cell-3"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-fusion-cell-3.png"
			data.raw["item"]["vehicle-fusion-cell-3"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-fusion-cell-3.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-3.png" } }
		end
		if data.raw["item"]["vehicle-fusion-cell-4"] then
			data.raw["generator-equipment"]["vehicle-fusion-cell-4"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-fusion-cell-4.png"
			data.raw["item"]["vehicle-fusion-cell-4"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-fusion-cell-4.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-4.png" } }
		end
		if data.raw["item"]["vehicle-fusion-cell-5"] then
			data.raw["generator-equipment"]["vehicle-fusion-cell-5"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-fusion-cell-5.png"
			data.raw["item"]["vehicle-fusion-cell-5"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-fusion-cell-5.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-5.png" } }
		end
		if data.raw["item"]["vehicle-fusion-cell-6"] then
			data.raw["generator-equipment"]["vehicle-fusion-cell-6"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-fusion-cell-6.png"
			data.raw["item"]["vehicle-fusion-cell-6"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-fusion-cell-6.png" }, { icon = "__morebobs__/graphics/icons/num-6.png" } }
		end
		
		--vehicle-shield
		if data.raw["item"]["vehicle-shield-1"] then
			data.raw["energy-shield-equipment"]["vehicle-shield-1"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-shield-1.png"
			data.raw["item"]["vehicle-shield-1"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-shield-1.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-1.png" } }
		end
		if data.raw["item"]["vehicle-shield-2"] then
			data.raw["energy-shield-equipment"]["vehicle-shield-2"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-shield-2.png"
			data.raw["item"]["vehicle-shield-2"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-shield-2.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-2.png" } }
		end
		if data.raw["item"]["vehicle-shield-3"] then
			data.raw["energy-shield-equipment"]["vehicle-shield-3"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-shield-3.png"
			data.raw["item"]["vehicle-shield-3"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-shield-3.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-3.png" } }
		end
		if data.raw["item"]["vehicle-shield-4"] then
			data.raw["energy-shield-equipment"]["vehicle-shield-4"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-shield-4.png"
			data.raw["item"]["vehicle-shield-4"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-shield-4.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-4.png" } }
		end
		if data.raw["item"]["vehicle-shield-5"] then
			data.raw["energy-shield-equipment"]["vehicle-shield-5"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-shield-5.png"
			data.raw["item"]["vehicle-shield-5"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-shield-5.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-5.png" } }
		end
		if data.raw["item"]["vehicle-shield-6"] then
			data.raw["energy-shield-equipment"]["vehicle-shield-6"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-shield-6.png"
			data.raw["item"]["vehicle-shield-6"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-shield-6.png" }, { icon = "__morebobs__/graphics/icons/num-6.png" } }
		end
		
		--vehicle-big-turret
		if data.raw["item"]["vehicle-big-turret-1"] then
			data.raw["active-defense-equipment"]["vehicle-big-turret-1"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-big-turret-1.png"
			data.raw["item"]["vehicle-big-turret-1"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-big-turret-1.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-1.png" } }
		end
		if data.raw["item"]["vehicle-big-turret-2"] then
			data.raw["active-defense-equipment"]["vehicle-big-turret-2"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-big-turret-2.png"
			data.raw["item"]["vehicle-big-turret-2"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-big-turret-2.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-2.png" } }
		end
		if data.raw["item"]["vehicle-big-turret-3"] then
			data.raw["active-defense-equipment"]["vehicle-big-turret-3"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-big-turret-3.png"
			data.raw["item"]["vehicle-big-turret-3"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-big-turret-3.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-3.png" } }
		end
		if data.raw["item"]["vehicle-big-turret-4"] then
			data.raw["active-defense-equipment"]["vehicle-big-turret-4"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-big-turret-4.png"
			data.raw["item"]["vehicle-big-turret-4"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-big-turret-4.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-4.png" } }
		end
		if data.raw["item"]["vehicle-big-turret-5"] then
			data.raw["active-defense-equipment"]["vehicle-big-turret-5"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-big-turret-5.png"
			data.raw["item"]["vehicle-big-turret-5"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-big-turret-5.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-5.png" } }
		end
		if data.raw["item"]["vehicle-big-turret-6"] then
			data.raw["active-defense-equipment"]["vehicle-big-turret-6"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-big-turret-6.png"
			data.raw["item"]["vehicle-big-turret-6"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-big-turret-6.png" }, { icon = "__morebobs__/graphics/icons/num-6.png" } }
		end
		
		--vehicle-laser-defense
		if data.raw["item"]["vehicle-laser-defense-1"] then
			data.raw["active-defense-equipment"]["vehicle-laser-defense-1"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-laser-defense-1.png"
			data.raw["item"]["vehicle-laser-defense-1"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-laser-defense-1.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-1.png" } }
		end
		if data.raw["item"]["vehicle-laser-defense-2"] then
			data.raw["active-defense-equipment"]["vehicle-laser-defense-2"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-laser-defense-2.png"
			data.raw["item"]["vehicle-laser-defense-2"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-laser-defense-2.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-2.png" } }
		end
		if data.raw["item"]["vehicle-laser-defense-3"] then
			data.raw["active-defense-equipment"]["vehicle-laser-defense-3"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-laser-defense-3.png"
			data.raw["item"]["vehicle-laser-defense-3"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-laser-defense-3.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-3.png" } }
		end
		if data.raw["item"]["vehicle-laser-defense-4"] then
			data.raw["active-defense-equipment"]["vehicle-laser-defense-4"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-laser-defense-4.png"
			data.raw["item"]["vehicle-laser-defense-4"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-laser-defense-4.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-4.png" } }
		end
		if data.raw["item"]["vehicle-laser-defense-5"] then
			data.raw["active-defense-equipment"]["vehicle-laser-defense-5"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-laser-defense-5.png"
			data.raw["item"]["vehicle-laser-defense-5"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-laser-defense-5.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-5.png" } }
		end
		if data.raw["item"]["vehicle-laser-defense-6"] then
			data.raw["active-defense-equipment"]["vehicle-laser-defense-6"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-laser-defense-6.png"
			data.raw["item"]["vehicle-laser-defense-6"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-laser-defense-6.png" }, { icon = "__morebobs__/graphics/icons/num-6.png" } }
		end
		
		--vehicle-other
		if data.raw["item"]["vehicle-roboport"] then
			data.raw["roboport-equipment"]["vehicle-roboport"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-roboport-1.png"
			data.raw["item"]["vehicle-roboport"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-roboport-1.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-1.png" } }
		end
		if data.raw["item"]["vehicle-roboport-2"] then
			data.raw["roboport-equipment"]["vehicle-roboport-2"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-roboport-2.png"
			data.raw["item"]["vehicle-roboport-2"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-roboport-2.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-2.png" } }
		end
		if data.raw["item"]["vehicle-motor"] then
			data.raw["movement-bonus-equipment"]["vehicle-motor"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-motor-re.png"
			data.raw["item"]["vehicle-motor"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-motor-re.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-1.png" } }
		end
		if data.raw["item"]["vehicle-engine"] then
			data.raw["movement-bonus-equipment"]["vehicle-engine"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-engine.png"
			data.raw["item"]["vehicle-engine"].icons = { { icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-engine.png" }, { icon = "__ShinyBobGFX__/graphics/icons/num-2.png" } }
		end
	else
		--energy-shield-equipment
		if data.raw["item"]["energy-shield-equipment"] then
			data.raw["item"]["energy-shield-equipment"].icon = "__morebobs__/graphics/moreshiny/icons/equipment/energy-shield-mk1-equipment.png"
			data.raw["item"]["energy-shield-equipment"].icon_size = 32
			data.raw["energy-shield-equipment"]["energy-shield-equipment"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/energy-shield-mk1-equipment.png"
		end
		if data.raw["item"]["energy-shield-mk2-equipment"] then
			data.raw["item"]["energy-shield-mk2-equipment"].icon = "__morebobs__/graphics/moreshiny/icons/equipment/energy-shield-mk2-equipment.png"
			data.raw["item"]["energy-shield-mk2-equipment"].icon_size = 32
			data.raw["energy-shield-equipment"]["energy-shield-mk2-equipment"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/energy-shield-mk2-equipment.png"
		end
		if data.raw["item"]["energy-shield-mk3-equipment"] then
			data.raw["item"]["energy-shield-mk3-equipment"].icon = "__morebobs__/graphics/moreshiny/icons/equipment/energy-shield-mk3-equipment.png"
			data.raw["item"]["energy-shield-mk3-equipment"].icon_size = 32
			data.raw["energy-shield-equipment"]["energy-shield-mk3-equipment"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/energy-shield-mk3-equipment.png"
		end
		if data.raw["item"]["energy-shield-mk4-equipment"] then
			data.raw["item"]["energy-shield-mk4-equipment"].icon = "__morebobs__/graphics/moreshiny/icons/equipment/energy-shield-mk4-equipment.png"
			data.raw["item"]["energy-shield-mk4-equipment"].icon_size = 32
			data.raw["energy-shield-equipment"]["energy-shield-mk4-equipment"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/energy-shield-mk4-equipment.png"
		end
		if data.raw["item"]["energy-shield-mk5-equipment"] then
			data.raw["item"]["energy-shield-mk5-equipment"].icon = "__morebobs__/graphics/moreshiny/icons/equipment/energy-shield-mk5-equipment.png"
			data.raw["item"]["energy-shield-mk5-equipment"].icon_size = 32
			data.raw["energy-shield-equipment"]["energy-shield-mk5-equipment"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/energy-shield-mk5-equipment.png"
		end
		if data.raw["item"]["energy-shield-mk6-equipment"] then
			data.raw["item"]["energy-shield-mk6-equipment"].icon = "__morebobs__/graphics/moreshiny/icons/equipment/energy-shield-mk6-equipment.png"
			data.raw["item"]["energy-shield-mk6-equipment"].icon_size = 32
			data.raw["energy-shield-equipment"]["energy-shield-mk6-equipment"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/energy-shield-mk6-equipment.png"
		end
		
		--battery
		if data.raw["item"]["battery-equipment"] then
			data.raw["item"]["battery-equipment"].icon = "__morebobs__/graphics/moreshiny/icons/equipment/battery-mk1-equipment.png"
			data.raw["item"]["battery-equipment"].icon_size = 32
			data.raw["battery-equipment"]["battery-equipment"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/battery-mk1-equipment.png"
		end
		if data.raw["item"]["battery-mk2-equipment"] then
			data.raw["item"]["battery-mk2-equipment"].icon = "__morebobs__/graphics/moreshiny/icons/equipment/battery-mk2-equipment.png"
			data.raw["item"]["battery-mk2-equipment"].icon_size = 32
			data.raw["battery-equipment"]["battery-mk2-equipment"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/battery-mk2-equipment.png"
		end
		if data.raw["item"]["battery-mk3-equipment"] then
			data.raw["item"]["battery-mk3-equipment"].icon = "__morebobs__/graphics/moreshiny/icons/equipment/battery-mk3-equipment.png"
			data.raw["item"]["battery-mk3-equipment"].icon_size = 32
			data.raw["battery-equipment"]["battery-mk3-equipment"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/battery-mk3-equipment.png"
		end
		if data.raw["item"]["battery-mk4-equipment"] then
			data.raw["item"]["battery-mk4-equipment"].icon = "__morebobs__/graphics/moreshiny/icons/equipment/battery-mk4-equipment.png"
			data.raw["item"]["battery-mk4-equipment"].icon_size = 32
			data.raw["battery-equipment"]["battery-mk4-equipment"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/battery-mk4-equipment.png"
		end
		if data.raw["item"]["battery-mk5-equipment"] then
			data.raw["item"]["battery-mk5-equipment"].icon = "__morebobs__/graphics/moreshiny/icons/equipment/battery-mk5-equipment.png"
			data.raw["item"]["battery-mk5-equipment"].icon_size = 32
			data.raw["battery-equipment"]["battery-mk5-equipment"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/battery-mk5-equipment.png"
		end
		if data.raw["item"]["battery-mk6-equipment"] then
			data.raw["item"]["battery-mk6-equipment"].icon = "__morebobs__/graphics/moreshiny/icons/equipment/battery-mk6-equipment.png"
			data.raw["item"]["battery-mk6-equipment"].icon_size = 32
			data.raw["battery-equipment"]["battery-mk6-equipment"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/battery-mk6-equipment.png"
		end

		--defense-equipment
		if data.raw["item"]["personal-laser-defense-equipment"] then
			data.raw["item"]["personal-laser-defense-equipment"].icon = "__morebobs__/graphics/moreshiny/icons/equipment/personal-laser-defense-equipment-1.png"
			data.raw["item"]["personal-laser-defense-equipment"].icon_size = 32
			data.raw["active-defense-equipment"]["personal-laser-defense-equipment"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/personal-laser-defense-equipment-1.png"
		end
		if data.raw["item"]["personal-laser-defense-equipment-2"] then
			data.raw["item"]["personal-laser-defense-equipment-2"].icon = "__morebobs__/graphics/moreshiny/icons/equipment/personal-laser-defense-equipment-2.png"
			data.raw["item"]["personal-laser-defense-equipment-2"].icon_size = 32
			data.raw["active-defense-equipment"]["personal-laser-defense-equipment-2"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/personal-laser-defense-equipment-2.png"
		end
		if data.raw["item"]["personal-laser-defense-equipment-3"] then
			data.raw["item"]["personal-laser-defense-equipment-3"].icon = "__morebobs__/graphics/moreshiny/icons/equipment/personal-laser-defense-equipment-3.png"
			data.raw["item"]["personal-laser-defense-equipment-3"].icon_size = 32
			data.raw["active-defense-equipment"]["personal-laser-defense-equipment-3"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/personal-laser-defense-equipment-3.png"
		end
		if data.raw["item"]["personal-laser-defense-equipment-4"] then
			data.raw["item"]["personal-laser-defense-equipment-4"].icon = "__morebobs__/graphics/moreshiny/icons/equipment/personal-laser-defense-equipment-4.png"
			data.raw["item"]["personal-laser-defense-equipment-4"].icon_size = 32
			data.raw["active-defense-equipment"]["personal-laser-defense-equipment-4"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/personal-laser-defense-equipment-4.png"
		end
		if data.raw["item"]["personal-laser-defense-equipment-5"] then
			data.raw["item"]["personal-laser-defense-equipment-5"].icon = "__morebobs__/graphics/moreshiny/icons/equipment/personal-laser-defense-equipment-5.png"
			data.raw["item"]["personal-laser-defense-equipment-5"].icon_size = 32
			data.raw["active-defense-equipment"]["personal-laser-defense-equipment-5"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/personal-laser-defense-equipment-5.png"
		end
		if data.raw["item"]["personal-laser-defense-equipment-6"] then
			data.raw["item"]["personal-laser-defense-equipment-6"].icon = "__morebobs__/graphics/moreshiny/icons/equipment/personal-laser-defense-equipment-6.png"
			data.raw["item"]["personal-laser-defense-equipment-6"].icon_size = 32
			data.raw["active-defense-equipment"]["personal-laser-defense-equipment-6"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/personal-laser-defense-equipment-6.png"
		end
		
		--vehicleequipment
		--vehicle-solar-panel
		if data.raw["item"]["vehicle-solar-panel-1"] then
			data.raw["solar-panel-equipment"]["vehicle-solar-panel-1"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-solar-panel-1.png"
			data.raw["item"]["vehicle-solar-panel-1"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-solar-panel-1.png"
			data.raw["item"]["vehicle-solar-panel-1"].icon_size = 32
		end
		if data.raw["item"]["vehicle-solar-panel-2"] then
			data.raw["solar-panel-equipment"]["vehicle-solar-panel-2"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-solar-panel-2.png"
			data.raw["item"]["vehicle-solar-panel-2"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-solar-panel-2.png"
			data.raw["item"]["vehicle-solar-panel-2"].icon_size = 32
		end
		if data.raw["item"]["vehicle-solar-panel-3"] then
			data.raw["solar-panel-equipment"]["vehicle-solar-panel-3"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-solar-panel-3.png"
			data.raw["item"]["vehicle-solar-panel-3"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-solar-panel-3.png"
			data.raw["item"]["vehicle-solar-panel-3"].icon_size = 32
		end
		if data.raw["item"]["vehicle-solar-panel-4"] then
			data.raw["solar-panel-equipment"]["vehicle-solar-panel-4"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-solar-panel-4.png"
			data.raw["item"]["vehicle-solar-panel-4"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-solar-panel-4.png"
			data.raw["item"]["vehicle-solar-panel-4"].icon_size = 32
		end
		if data.raw["item"]["vehicle-solar-panel-5"] then
			data.raw["solar-panel-equipment"]["vehicle-solar-panel-5"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-solar-panel-5.png"
			data.raw["item"]["vehicle-solar-panel-5"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-solar-panel-5.png"
			data.raw["item"]["vehicle-solar-panel-5"].icon_size = 32
		end
		if data.raw["item"]["vehicle-solar-panel-6"] then
			data.raw["solar-panel-equipment"]["vehicle-solar-panel-6"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-solar-panel-6.png"
			data.raw["item"]["vehicle-solar-panel-6"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-solar-panel-6.png"
			data.raw["item"]["vehicle-solar-panel-6"].icon_size = 32
		end
		
		--vehicle-fusion-reactor
		if data.raw["item"]["vehicle-fusion-reactor-1"] then
			data.raw["generator-equipment"]["vehicle-fusion-reactor-1"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-fusion-reactor-1.png"
			data.raw["item"]["vehicle-fusion-reactor-1"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-fusion-reactor-1.png"
			data.raw["item"]["vehicle-fusion-reactor-1"].icon_size = 32
		end
		if data.raw["item"]["vehicle-fusion-reactor-2"] then
			data.raw["generator-equipment"]["vehicle-fusion-reactor-2"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-fusion-reactor-2.png"
			data.raw["item"]["vehicle-fusion-reactor-2"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-fusion-reactor-2.png"
			data.raw["item"]["vehicle-fusion-reactor-2"].icon_size = 32
		end
		if data.raw["item"]["vehicle-fusion-reactor-3"] then
			data.raw["generator-equipment"]["vehicle-fusion-reactor-3"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-fusion-reactor-3.png"
			data.raw["item"]["vehicle-fusion-reactor-3"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-fusion-reactor-3.png"
			data.raw["item"]["vehicle-fusion-reactor-3"].icon_size = 32
		end
		if data.raw["item"]["vehicle-fusion-reactor-4"] then
			data.raw["generator-equipment"]["vehicle-fusion-reactor-4"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-fusion-reactor-4.png"
			data.raw["item"]["vehicle-fusion-reactor-4"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-fusion-reactor-4.png"
			data.raw["item"]["vehicle-fusion-reactor-4"].icon_size = 32
		end
		if data.raw["item"]["vehicle-fusion-reactor-5"] then
			data.raw["generator-equipment"]["vehicle-fusion-reactor-5"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-fusion-reactor-5.png"
			data.raw["item"]["vehicle-fusion-reactor-5"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-fusion-reactor-5.png"
			data.raw["item"]["vehicle-fusion-reactor-5"].icon_size = 32
		end
		if data.raw["item"]["vehicle-fusion-reactor-6"] then
			data.raw["generator-equipment"]["vehicle-fusion-reactor-6"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-fusion-reactor-6.png"
			data.raw["item"]["vehicle-fusion-reactor-6"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-fusion-reactor-6.png"
			data.raw["item"]["vehicle-fusion-reactor-6"].icon_size = 32
		end
		
		--vehicle-battery
		if data.raw["item"]["vehicle-battery-1"] then
			data.raw["battery-equipment"]["vehicle-battery-1"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-battery-11.png"
			data.raw["item"]["vehicle-battery-1"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-battery-11.png"
			data.raw["item"]["vehicle-battery-1"].icon_size = 32
		end
		if data.raw["item"]["vehicle-battery-2"] then
			data.raw["battery-equipment"]["vehicle-battery-2"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-battery-22.png"
			data.raw["item"]["vehicle-battery-2"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-battery-22.png"
			data.raw["item"]["vehicle-battery-2"].icon_size = 32
		end
		if data.raw["item"]["vehicle-battery-3"] then
			data.raw["battery-equipment"]["vehicle-battery-3"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-battery-33.png"
			data.raw["item"]["vehicle-battery-3"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-battery-33.png"
			data.raw["item"]["vehicle-battery-3"].icon_size = 32
		end
		if data.raw["item"]["vehicle-battery-4"] then
			data.raw["battery-equipment"]["vehicle-battery-4"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-battery-44.png"
			data.raw["item"]["vehicle-battery-4"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-battery-44.png"
			data.raw["item"]["vehicle-battery-4"].icon_size = 32
		end
		if data.raw["item"]["vehicle-battery-5"] then
			data.raw["battery-equipment"]["vehicle-battery-5"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-battery-55.png"
			data.raw["item"]["vehicle-battery-5"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-battery-55.png"
			data.raw["item"]["vehicle-battery-5"].icon_size = 32
		end
		if data.raw["item"]["vehicle-battery-6"] then
			data.raw["battery-equipment"]["vehicle-battery-6"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-battery-66.png"
			data.raw["item"]["vehicle-battery-6"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-battery-66.png"
			data.raw["item"]["vehicle-battery-6"].icon_size = 32
		end
		
		--vehicle-fusion-cell
		if data.raw["item"]["vehicle-fusion-cell-1"] then
			data.raw["generator-equipment"]["vehicle-fusion-cell-1"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-fusion-cell-1.png"
			data.raw["item"]["vehicle-fusion-cell-1"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-fusion-cell-1.png"
			data.raw["item"]["vehicle-fusion-cell-1"].icon_size = 32
		end
		if data.raw["item"]["vehicle-fusion-cell-2"] then
			data.raw["generator-equipment"]["vehicle-fusion-cell-2"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-fusion-cell-2.png"
			data.raw["item"]["vehicle-fusion-cell-2"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-fusion-cell-2.png"
			data.raw["item"]["vehicle-fusion-cell-2"].icon_size = 32
		end
		if data.raw["item"]["vehicle-fusion-cell-3"] then
			data.raw["generator-equipment"]["vehicle-fusion-cell-3"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-fusion-cell-3.png"
			data.raw["item"]["vehicle-fusion-cell-3"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-fusion-cell-3.png"
			data.raw["item"]["vehicle-fusion-cell-3"].icon_size = 32
		end
		if data.raw["item"]["vehicle-fusion-cell-4"] then
			data.raw["generator-equipment"]["vehicle-fusion-cell-4"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-fusion-cell-4.png"
			data.raw["item"]["vehicle-fusion-cell-4"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-fusion-cell-4.png"
			data.raw["item"]["vehicle-fusion-cell-4"].icon_size = 32
		end
		if data.raw["item"]["vehicle-fusion-cell-5"] then
			data.raw["generator-equipment"]["vehicle-fusion-cell-5"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-fusion-cell-5.png"
			data.raw["item"]["vehicle-fusion-cell-5"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-fusion-cell-5.png"
			data.raw["item"]["vehicle-fusion-cell-5"].icon_size = 32
		end
		if data.raw["item"]["vehicle-fusion-cell-6"] then
			data.raw["generator-equipment"]["vehicle-fusion-cell-6"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-fusion-cell-6.png"
			data.raw["item"]["vehicle-fusion-cell-6"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-fusion-cell-6.png"
			data.raw["item"]["vehicle-fusion-cell-6"].icon_size = 32
		end
		
		--vehicle-shield
		if data.raw["item"]["vehicle-shield-1"] then
			data.raw["energy-shield-equipment"]["vehicle-shield-1"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-shield-1.png"
			data.raw["item"]["vehicle-shield-1"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-shield-1.png"
			data.raw["item"]["vehicle-shield-1"].icon_size = 32
		end
		if data.raw["item"]["vehicle-shield-2"] then
			data.raw["energy-shield-equipment"]["vehicle-shield-2"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-shield-2.png"
			data.raw["item"]["vehicle-shield-2"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-shield-2.png"
			data.raw["item"]["vehicle-shield-2"].icon_size = 32
		end
		if data.raw["item"]["vehicle-shield-3"] then
			data.raw["energy-shield-equipment"]["vehicle-shield-3"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-shield-3.png"
			data.raw["item"]["vehicle-shield-3"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-shield-3.png"
			data.raw["item"]["vehicle-shield-3"].icon_size = 32
		end
		if data.raw["item"]["vehicle-shield-4"] then
			data.raw["energy-shield-equipment"]["vehicle-shield-4"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-shield-4.png"
			data.raw["item"]["vehicle-shield-4"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-shield-4.png"
			data.raw["item"]["vehicle-shield-4"].icon_size = 32
		end
		if data.raw["item"]["vehicle-shield-5"] then
			data.raw["energy-shield-equipment"]["vehicle-shield-5"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-shield-5.png"
			data.raw["item"]["vehicle-shield-5"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-shield-5.png"
			data.raw["item"]["vehicle-shield-5"].icon_size = 32
		end
		if data.raw["item"]["vehicle-shield-6"] then
			data.raw["energy-shield-equipment"]["vehicle-shield-6"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-shield-6.png"
			data.raw["item"]["vehicle-shield-6"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-shield-6.png"
			data.raw["item"]["vehicle-shield-6"].icon_size = 32
		end
		
		--vehicle-big-turret
		if data.raw["item"]["vehicle-big-turret-1"] then
			data.raw["active-defense-equipment"]["vehicle-big-turret-1"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-big-turret-1.png"
			data.raw["item"]["vehicle-big-turret-1"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-big-turret-1.png"
			data.raw["item"]["vehicle-big-turret-1"].icon_size = 32
		end
		if data.raw["item"]["vehicle-big-turret-2"] then
			data.raw["active-defense-equipment"]["vehicle-big-turret-2"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-big-turret-2.png"
			data.raw["item"]["vehicle-big-turret-2"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-big-turret-2.png"
			data.raw["item"]["vehicle-big-turret-2"].icon_size = 32
		end
		if data.raw["item"]["vehicle-big-turret-3"] then
			data.raw["active-defense-equipment"]["vehicle-big-turret-3"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-big-turret-3.png"
			data.raw["item"]["vehicle-big-turret-3"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-big-turret-3.png"
			data.raw["item"]["vehicle-big-turret-3"].icon_size = 32
		end
		if data.raw["item"]["vehicle-big-turret-4"] then
			data.raw["active-defense-equipment"]["vehicle-big-turret-4"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-big-turret-4.png"
			data.raw["item"]["vehicle-big-turret-4"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-big-turret-4.png"
			data.raw["item"]["vehicle-big-turret-4"].icon_size = 32
		end
		if data.raw["item"]["vehicle-big-turret-5"] then
			data.raw["active-defense-equipment"]["vehicle-big-turret-5"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-big-turret-5.png"
			data.raw["item"]["vehicle-big-turret-5"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-big-turret-5.png"
			data.raw["item"]["vehicle-big-turret-5"].icon_size = 32
		end
		if data.raw["item"]["vehicle-big-turret-6"] then
			data.raw["active-defense-equipment"]["vehicle-big-turret-6"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-big-turret-6.png"
			data.raw["item"]["vehicle-big-turret-6"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-big-turret-6.png"
			data.raw["item"]["vehicle-big-turret-6"].icon_size = 32
		end
		
		--vehicle-laser-defense
		if data.raw["item"]["vehicle-laser-defense-1"] then
			data.raw["active-defense-equipment"]["vehicle-laser-defense-1"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-laser-defense-1.png"
			data.raw["item"]["vehicle-laser-defense-1"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-laser-defense-1.png"
			data.raw["item"]["vehicle-laser-defense-1"].icon_size = 32
		end
		if data.raw["item"]["vehicle-laser-defense-2"] then
			data.raw["active-defense-equipment"]["vehicle-laser-defense-2"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-laser-defense-2.png"
			data.raw["item"]["vehicle-laser-defense-2"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-laser-defense-2.png"
			data.raw["item"]["vehicle-laser-defense-2"].icon_size = 32
		end
		if data.raw["item"]["vehicle-laser-defense-3"] then
			data.raw["active-defense-equipment"]["vehicle-laser-defense-3"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-laser-defense-3.png"
			data.raw["item"]["vehicle-laser-defense-3"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-laser-defense-3.png"
			data.raw["item"]["vehicle-laser-defense-3"].icon_size = 32
		end
		if data.raw["item"]["vehicle-laser-defense-4"] then
			data.raw["active-defense-equipment"]["vehicle-laser-defense-4"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-laser-defense-4.png"
			data.raw["item"]["vehicle-laser-defense-4"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-laser-defense-4.png"
			data.raw["item"]["vehicle-laser-defense-4"].icon_size = 32
		end
		if data.raw["item"]["vehicle-laser-defense-5"] then
			data.raw["active-defense-equipment"]["vehicle-laser-defense-5"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-laser-defense-5.png"
			data.raw["item"]["vehicle-laser-defense-5"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-laser-defense-5.png"
			data.raw["item"]["vehicle-laser-defense-5"].icon_size = 32
		end
		if data.raw["item"]["vehicle-laser-defense-6"] then
			data.raw["active-defense-equipment"]["vehicle-laser-defense-6"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-laser-defense-6.png"
			data.raw["item"]["vehicle-laser-defense-6"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-laser-defense-6.png"
			data.raw["item"]["vehicle-laser-defense-6"].icon_size = 32
		end
		
		--vehicle-other
		if data.raw["item"]["vehicle-roboport"] then
			data.raw["roboport-equipment"]["vehicle-roboport"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-roboport-1.png"
			data.raw["item"]["vehicle-roboport"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-roboport-1.png"
			data.raw["item"]["vehicle-roboport"].icon_size = 32
		end
		if data.raw["item"]["vehicle-roboport-2"] then
			data.raw["roboport-equipment"]["vehicle-roboport-2"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-roboport-2.png"
			data.raw["item"]["vehicle-roboport-2"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-roboport-2.png"
			data.raw["item"]["vehicle-roboport-2"].icon_size = 32
		end
		if data.raw["item"]["vehicle-motor"] then
			data.raw["movement-bonus-equipment"]["vehicle-motor"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-motor-re.png"
			data.raw["item"]["vehicle-motor"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-motor-re.png"
			data.raw["item"]["vehicle-motor"].icon_size = 32
		end
		if data.raw["item"]["vehicle-engine"] then
			data.raw["movement-bonus-equipment"]["vehicle-engine"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-engine.png"
			data.raw["item"]["vehicle-engine"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-engine.png"
			data.raw["item"]["vehicle-engine"].icon_size = 32
		end
	end
else
	--energy-shield-equipment
	if data.raw["item"]["energy-shield-equipment"] then
		data.raw["item"]["energy-shield-equipment"].icon = "__morebobs__/graphics/moreshiny/icons/equipment/energy-shield-mk1-equipment.png"
		data.raw["item"]["energy-shield-equipment"].icon_size = 32
		data.raw["energy-shield-equipment"]["energy-shield-equipment"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/energy-shield-mk1-equipment.png"
	end
	if data.raw["item"]["energy-shield-mk2-equipment"] then
		data.raw["item"]["energy-shield-mk2-equipment"].icon = "__morebobs__/graphics/moreshiny/icons/equipment/energy-shield-mk2-equipment.png"
		data.raw["item"]["energy-shield-mk2-equipment"].icon_size = 32
		data.raw["energy-shield-equipment"]["energy-shield-mk2-equipment"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/energy-shield-mk2-equipment.png"
	end
	if data.raw["item"]["energy-shield-mk3-equipment"] then
		data.raw["item"]["energy-shield-mk3-equipment"].icon = "__morebobs__/graphics/moreshiny/icons/equipment/energy-shield-mk3-equipment.png"
		data.raw["item"]["energy-shield-mk3-equipment"].icon_size = 32
		data.raw["energy-shield-equipment"]["energy-shield-mk3-equipment"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/energy-shield-mk3-equipment.png"
	end
	if data.raw["item"]["energy-shield-mk4-equipment"] then
		data.raw["item"]["energy-shield-mk4-equipment"].icon = "__morebobs__/graphics/moreshiny/icons/equipment/energy-shield-mk4-equipment.png"
		data.raw["item"]["energy-shield-mk4-equipment"].icon_size = 32
		data.raw["energy-shield-equipment"]["energy-shield-mk4-equipment"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/energy-shield-mk4-equipment.png"
	end
	if data.raw["item"]["energy-shield-mk5-equipment"] then
		data.raw["item"]["energy-shield-mk5-equipment"].icon = "__morebobs__/graphics/moreshiny/icons/equipment/energy-shield-mk5-equipment.png"
		data.raw["item"]["energy-shield-mk5-equipment"].icon_size = 32
		data.raw["energy-shield-equipment"]["energy-shield-mk5-equipment"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/energy-shield-mk5-equipment.png"
	end
	if data.raw["item"]["energy-shield-mk6-equipment"] then
		data.raw["item"]["energy-shield-mk6-equipment"].icon = "__morebobs__/graphics/moreshiny/icons/equipment/energy-shield-mk6-equipment.png"
		data.raw["item"]["energy-shield-mk6-equipment"].icon_size = 32
		data.raw["energy-shield-equipment"]["energy-shield-mk6-equipment"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/energy-shield-mk6-equipment.png"
	end

	--battery
	if data.raw["item"]["battery-equipment"] then
		data.raw["item"]["battery-equipment"].icon = "__morebobs__/graphics/moreshiny/icons/equipment/battery-mk1-equipment.png"
		data.raw["item"]["battery-equipment"].icon_size = 32
		data.raw["battery-equipment"]["battery-equipment"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/battery-mk1-equipment.png"
	end
	if data.raw["item"]["battery-mk2-equipment"] then
		data.raw["item"]["battery-mk2-equipment"].icon = "__morebobs__/graphics/moreshiny/icons/equipment/battery-mk2-equipment.png"
		data.raw["item"]["battery-mk2-equipment"].icon_size = 32
		data.raw["battery-equipment"]["battery-mk2-equipment"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/battery-mk2-equipment.png"
	end
	if data.raw["item"]["battery-mk3-equipment"] then
		data.raw["item"]["battery-mk3-equipment"].icon = "__morebobs__/graphics/moreshiny/icons/equipment/battery-mk3-equipment.png"
		data.raw["item"]["battery-mk3-equipment"].icon_size = 32
		data.raw["battery-equipment"]["battery-mk3-equipment"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/battery-mk3-equipment.png"
	end
	if data.raw["item"]["battery-mk4-equipment"] then
		data.raw["item"]["battery-mk4-equipment"].icon = "__morebobs__/graphics/moreshiny/icons/equipment/battery-mk4-equipment.png"
		data.raw["item"]["battery-mk4-equipment"].icon_size = 32
		data.raw["battery-equipment"]["battery-mk4-equipment"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/battery-mk4-equipment.png"
	end
	if data.raw["item"]["battery-mk5-equipment"] then
		data.raw["item"]["battery-mk5-equipment"].icon = "__morebobs__/graphics/moreshiny/icons/equipment/battery-mk5-equipment.png"
		data.raw["item"]["battery-mk5-equipment"].icon_size = 32
		data.raw["battery-equipment"]["battery-mk5-equipment"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/battery-mk5-equipment.png"
	end
	if data.raw["item"]["battery-mk6-equipment"] then
		data.raw["item"]["battery-mk6-equipment"].icon = "__morebobs__/graphics/moreshiny/icons/equipment/battery-mk6-equipment.png"
		data.raw["item"]["battery-mk6-equipment"].icon_size = 32
		data.raw["battery-equipment"]["battery-mk6-equipment"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/battery-mk6-equipment.png"
	end

	--defense-equipment
	if data.raw["item"]["personal-laser-defense-equipment"] then
		data.raw["item"]["personal-laser-defense-equipment"].icon = "__morebobs__/graphics/moreshiny/icons/equipment/personal-laser-defense-equipment-1.png"
		data.raw["item"]["personal-laser-defense-equipment"].icon_size = 32
		data.raw["active-defense-equipment"]["personal-laser-defense-equipment"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/personal-laser-defense-equipment-1.png"
	end
	if data.raw["item"]["personal-laser-defense-equipment-2"] then
		data.raw["item"]["personal-laser-defense-equipment-2"].icon = "__morebobs__/graphics/moreshiny/icons/equipment/personal-laser-defense-equipment-2.png"
		data.raw["item"]["personal-laser-defense-equipment-2"].icon_size = 32
		data.raw["active-defense-equipment"]["personal-laser-defense-equipment-2"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/personal-laser-defense-equipment-2.png"
	end
	if data.raw["item"]["personal-laser-defense-equipment-3"] then
		data.raw["item"]["personal-laser-defense-equipment-3"].icon = "__morebobs__/graphics/moreshiny/icons/equipment/personal-laser-defense-equipment-3.png"
		data.raw["item"]["personal-laser-defense-equipment-3"].icon_size = 32
		data.raw["active-defense-equipment"]["personal-laser-defense-equipment-3"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/personal-laser-defense-equipment-3.png"
	end
	if data.raw["item"]["personal-laser-defense-equipment-4"] then
		data.raw["item"]["personal-laser-defense-equipment-4"].icon = "__morebobs__/graphics/moreshiny/icons/equipment/personal-laser-defense-equipment-4.png"
		data.raw["item"]["personal-laser-defense-equipment-4"].icon_size = 32
		data.raw["active-defense-equipment"]["personal-laser-defense-equipment-4"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/personal-laser-defense-equipment-4.png"
	end
	if data.raw["item"]["personal-laser-defense-equipment-5"] then
		data.raw["item"]["personal-laser-defense-equipment-5"].icon = "__morebobs__/graphics/moreshiny/icons/equipment/personal-laser-defense-equipment-5.png"
		data.raw["item"]["personal-laser-defense-equipment-5"].icon_size = 32
		data.raw["active-defense-equipment"]["personal-laser-defense-equipment-5"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/personal-laser-defense-equipment-5.png"
	end
	if data.raw["item"]["personal-laser-defense-equipment-6"] then
		data.raw["item"]["personal-laser-defense-equipment-6"].icon = "__morebobs__/graphics/moreshiny/icons/equipment/personal-laser-defense-equipment-6.png"
		data.raw["item"]["personal-laser-defense-equipment-6"].icon_size = 32
		data.raw["active-defense-equipment"]["personal-laser-defense-equipment-6"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/personal-laser-defense-equipment-6.png"
	end
	
	--vehicleequipment
	--vehicle-solar-panel
	if data.raw["item"]["vehicle-solar-panel-1"] then
		data.raw["solar-panel-equipment"]["vehicle-solar-panel-1"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-solar-panel-1.png"
		data.raw["item"]["vehicle-solar-panel-1"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-solar-panel-1.png"
		data.raw["item"]["vehicle-solar-panel-1"].icon_size = 32
	end
	if data.raw["item"]["vehicle-solar-panel-2"] then
		data.raw["solar-panel-equipment"]["vehicle-solar-panel-2"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-solar-panel-2.png"
		data.raw["item"]["vehicle-solar-panel-2"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-solar-panel-2.png"
		data.raw["item"]["vehicle-solar-panel-2"].icon_size = 32
	end
	if data.raw["item"]["vehicle-solar-panel-3"] then
		data.raw["solar-panel-equipment"]["vehicle-solar-panel-3"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-solar-panel-3.png"
		data.raw["item"]["vehicle-solar-panel-3"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-solar-panel-3.png"
		data.raw["item"]["vehicle-solar-panel-3"].icon_size = 32
	end
	if data.raw["item"]["vehicle-solar-panel-4"] then
		data.raw["solar-panel-equipment"]["vehicle-solar-panel-4"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-solar-panel-4.png"
		data.raw["item"]["vehicle-solar-panel-4"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-solar-panel-4.png"
		data.raw["item"]["vehicle-solar-panel-4"].icon_size = 32
	end
	if data.raw["item"]["vehicle-solar-panel-5"] then
		data.raw["solar-panel-equipment"]["vehicle-solar-panel-5"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-solar-panel-5.png"
		data.raw["item"]["vehicle-solar-panel-5"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-solar-panel-5.png"
		data.raw["item"]["vehicle-solar-panel-5"].icon_size = 32
	end
	if data.raw["item"]["vehicle-solar-panel-6"] then
		data.raw["solar-panel-equipment"]["vehicle-solar-panel-6"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-solar-panel-6.png"
		data.raw["item"]["vehicle-solar-panel-6"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-solar-panel-6.png"
		data.raw["item"]["vehicle-solar-panel-6"].icon_size = 32
	end
	--vehicle-fusion-reactor
	if data.raw["item"]["vehicle-fusion-reactor-1"] then
		data.raw["generator-equipment"]["vehicle-fusion-reactor-1"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-fusion-reactor-1.png"
		data.raw["item"]["vehicle-fusion-reactor-1"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-fusion-reactor-1.png"
		data.raw["item"]["vehicle-fusion-reactor-1"].icon_size = 32
	end
	if data.raw["item"]["vehicle-fusion-reactor-2"] then
		data.raw["generator-equipment"]["vehicle-fusion-reactor-2"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-fusion-reactor-2.png"
		data.raw["item"]["vehicle-fusion-reactor-2"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-fusion-reactor-2.png"
		data.raw["item"]["vehicle-fusion-reactor-2"].icon_size = 32
	end
	if data.raw["item"]["vehicle-fusion-reactor-3"] then
		data.raw["generator-equipment"]["vehicle-fusion-reactor-3"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-fusion-reactor-3.png"
		data.raw["item"]["vehicle-fusion-reactor-3"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-fusion-reactor-3.png"
		data.raw["item"]["vehicle-fusion-reactor-3"].icon_size = 32
	end
	if data.raw["item"]["vehicle-fusion-reactor-4"] then
		data.raw["generator-equipment"]["vehicle-fusion-reactor-4"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-fusion-reactor-4.png"
		data.raw["item"]["vehicle-fusion-reactor-4"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-fusion-reactor-4.png"
		data.raw["item"]["vehicle-fusion-reactor-4"].icon_size = 32
	end
	if data.raw["item"]["vehicle-fusion-reactor-5"] then
		data.raw["generator-equipment"]["vehicle-fusion-reactor-5"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-fusion-reactor-5.png"
		data.raw["item"]["vehicle-fusion-reactor-5"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-fusion-reactor-5.png"
		data.raw["item"]["vehicle-fusion-reactor-5"].icon_size = 32
	end
	if data.raw["item"]["vehicle-fusion-reactor-6"] then
		data.raw["generator-equipment"]["vehicle-fusion-reactor-6"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-fusion-reactor-6.png"
		data.raw["item"]["vehicle-fusion-reactor-6"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-fusion-reactor-6.png"
		data.raw["item"]["vehicle-fusion-reactor-6"].icon_size = 32
	end
	--vehicle-battery
	if data.raw["item"]["vehicle-battery-1"] then
		data.raw["battery-equipment"]["vehicle-battery-1"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-battery-11.png"
		data.raw["item"]["vehicle-battery-1"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-battery-11.png"
		data.raw["item"]["vehicle-battery-1"].icon_size = 32
	end
	if data.raw["item"]["vehicle-battery-2"] then
		data.raw["battery-equipment"]["vehicle-battery-2"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-battery-22.png"
		data.raw["item"]["vehicle-battery-2"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-battery-22.png"
		data.raw["item"]["vehicle-battery-2"].icon_size = 32
	end
	if data.raw["item"]["vehicle-battery-3"] then
		data.raw["battery-equipment"]["vehicle-battery-3"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-battery-33.png"
		data.raw["item"]["vehicle-battery-3"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-battery-33.png"
		data.raw["item"]["vehicle-battery-3"].icon_size = 32
	end
	if data.raw["item"]["vehicle-battery-4"] then
		data.raw["battery-equipment"]["vehicle-battery-4"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-battery-44.png"
		data.raw["item"]["vehicle-battery-4"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-battery-44.png"
		data.raw["item"]["vehicle-battery-4"].icon_size = 32
	end
	if data.raw["item"]["vehicle-battery-5"] then
		data.raw["battery-equipment"]["vehicle-battery-5"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-battery-55.png"
		data.raw["item"]["vehicle-battery-5"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-battery-55.png"
		data.raw["item"]["vehicle-battery-5"].icon_size = 32
	end
	if data.raw["item"]["vehicle-battery-6"] then
		data.raw["battery-equipment"]["vehicle-battery-6"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-battery-66.png"
		data.raw["item"]["vehicle-battery-6"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-battery-66.png"
		data.raw["item"]["vehicle-battery-6"].icon_size = 32
	end
	--vehicle-fusion-cell
	if data.raw["item"]["vehicle-fusion-cell-1"] then
		data.raw["generator-equipment"]["vehicle-fusion-cell-1"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-fusion-cell-1.png"
		data.raw["item"]["vehicle-fusion-cell-1"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-fusion-cell-1.png"
		data.raw["item"]["vehicle-fusion-cell-1"].icon_size = 32
	end
	if data.raw["item"]["vehicle-fusion-cell-2"] then
		data.raw["generator-equipment"]["vehicle-fusion-cell-2"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-fusion-cell-2.png"
		data.raw["item"]["vehicle-fusion-cell-2"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-fusion-cell-2.png"
		data.raw["item"]["vehicle-fusion-cell-2"].icon_size = 32
	end
	if data.raw["item"]["vehicle-fusion-cell-3"] then
		data.raw["generator-equipment"]["vehicle-fusion-cell-3"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-fusion-cell-3.png"
		data.raw["item"]["vehicle-fusion-cell-3"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-fusion-cell-3.png"
		data.raw["item"]["vehicle-fusion-cell-3"].icon_size = 32
	end
	if data.raw["item"]["vehicle-fusion-cell-4"] then
		data.raw["generator-equipment"]["vehicle-fusion-cell-4"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-fusion-cell-4.png"
		data.raw["item"]["vehicle-fusion-cell-4"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-fusion-cell-4.png"
		data.raw["item"]["vehicle-fusion-cell-4"].icon_size = 32
	end
	if data.raw["item"]["vehicle-fusion-cell-5"] then
		data.raw["generator-equipment"]["vehicle-fusion-cell-5"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-fusion-cell-5.png"
		data.raw["item"]["vehicle-fusion-cell-5"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-fusion-cell-5.png"
		data.raw["item"]["vehicle-fusion-cell-5"].icon_size = 32
	end
	if data.raw["item"]["vehicle-fusion-cell-6"] then
		data.raw["generator-equipment"]["vehicle-fusion-cell-6"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-fusion-cell-6.png"
		data.raw["item"]["vehicle-fusion-cell-6"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-fusion-cell-6.png"
		data.raw["item"]["vehicle-fusion-cell-6"].icon_size = 32
	end
	--vehicle-shield
	if data.raw["item"]["vehicle-shield-1"] then
		data.raw["energy-shield-equipment"]["vehicle-shield-1"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-shield-1.png"
		data.raw["item"]["vehicle-shield-1"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-shield-1.png"
		data.raw["item"]["vehicle-shield-1"].icon_size = 32
	end
	if data.raw["item"]["vehicle-shield-2"] then
		data.raw["energy-shield-equipment"]["vehicle-shield-2"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-shield-2.png"
		data.raw["item"]["vehicle-shield-2"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-shield-2.png"
		data.raw["item"]["vehicle-shield-2"].icon_size = 32
	end
	if data.raw["item"]["vehicle-shield-3"] then
		data.raw["energy-shield-equipment"]["vehicle-shield-3"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-shield-3.png"
		data.raw["item"]["vehicle-shield-3"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-shield-3.png"
		data.raw["item"]["vehicle-shield-3"].icon_size = 32
	end
	if data.raw["item"]["vehicle-shield-4"] then
		data.raw["energy-shield-equipment"]["vehicle-shield-4"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-shield-4.png"
		data.raw["item"]["vehicle-shield-4"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-shield-4.png"
		data.raw["item"]["vehicle-shield-4"].icon_size = 32
	end
	if data.raw["item"]["vehicle-shield-5"] then
		data.raw["energy-shield-equipment"]["vehicle-shield-5"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-shield-5.png"
		data.raw["item"]["vehicle-shield-5"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-shield-5.png"
		data.raw["item"]["vehicle-shield-5"].icon_size = 32
	end
	if data.raw["item"]["vehicle-shield-6"] then
		data.raw["energy-shield-equipment"]["vehicle-shield-6"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-shield-6.png"
		data.raw["item"]["vehicle-shield-6"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-shield-6.png"
		data.raw["item"]["vehicle-shield-6"].icon_size = 32
	end
	--vehicle-big-turret
	if data.raw["item"]["vehicle-big-turret-1"] then
		data.raw["active-defense-equipment"]["vehicle-big-turret-1"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-big-turret-1.png"
		data.raw["item"]["vehicle-big-turret-1"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-big-turret-1.png"
		data.raw["item"]["vehicle-big-turret-1"].icon_size = 32
	end
	if data.raw["item"]["vehicle-big-turret-2"] then
		data.raw["active-defense-equipment"]["vehicle-big-turret-2"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-big-turret-2.png"
		data.raw["item"]["vehicle-big-turret-2"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-big-turret-2.png"
		data.raw["item"]["vehicle-big-turret-2"].icon_size = 32
	end
	if data.raw["item"]["vehicle-big-turret-3"] then
		data.raw["active-defense-equipment"]["vehicle-big-turret-3"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-big-turret-3.png"
		data.raw["item"]["vehicle-big-turret-3"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-big-turret-3.png"
		data.raw["item"]["vehicle-big-turret-3"].icon_size = 32
	end
	if data.raw["item"]["vehicle-big-turret-4"] then
		data.raw["active-defense-equipment"]["vehicle-big-turret-4"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-big-turret-4.png"
		data.raw["item"]["vehicle-big-turret-4"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-big-turret-4.png"
		data.raw["item"]["vehicle-big-turret-4"].icon_size = 32
	end
	if data.raw["item"]["vehicle-big-turret-5"] then
		data.raw["active-defense-equipment"]["vehicle-big-turret-5"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-big-turret-5.png"
		data.raw["item"]["vehicle-big-turret-5"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-big-turret-5.png"
		data.raw["item"]["vehicle-big-turret-5"].icon_size = 32
	end
	if data.raw["item"]["vehicle-big-turret-6"] then
		data.raw["active-defense-equipment"]["vehicle-big-turret-6"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-big-turret-6.png"
		data.raw["item"]["vehicle-big-turret-6"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-big-turret-6.png"
		data.raw["item"]["vehicle-big-turret-6"].icon_size = 32
	end
	--vehicle-laser-defense
	if data.raw["item"]["vehicle-laser-defense-1"] then
		data.raw["active-defense-equipment"]["vehicle-laser-defense-1"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-laser-defense-1.png"
		data.raw["item"]["vehicle-laser-defense-1"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-laser-defense-1.png"
		data.raw["item"]["vehicle-laser-defense-1"].icon_size = 32
	end
	if data.raw["item"]["vehicle-laser-defense-2"] then
		data.raw["active-defense-equipment"]["vehicle-laser-defense-2"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-laser-defense-2.png"
		data.raw["item"]["vehicle-laser-defense-2"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-laser-defense-2.png"
		data.raw["item"]["vehicle-laser-defense-2"].icon_size = 32
	end
	if data.raw["item"]["vehicle-laser-defense-3"] then
		data.raw["active-defense-equipment"]["vehicle-laser-defense-3"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-laser-defense-3.png"
		data.raw["item"]["vehicle-laser-defense-3"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-laser-defense-3.png"
		data.raw["item"]["vehicle-laser-defense-3"].icon_size = 32
	end
	if data.raw["item"]["vehicle-laser-defense-4"] then
		data.raw["active-defense-equipment"]["vehicle-laser-defense-4"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-laser-defense-4.png"
		data.raw["item"]["vehicle-laser-defense-4"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-laser-defense-4.png"
		data.raw["item"]["vehicle-laser-defense-4"].icon_size = 32
	end
	if data.raw["item"]["vehicle-laser-defense-5"] then
		data.raw["active-defense-equipment"]["vehicle-laser-defense-5"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-laser-defense-5.png"
		data.raw["item"]["vehicle-laser-defense-5"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-laser-defense-5.png"
		data.raw["item"]["vehicle-laser-defense-5"].icon_size = 32
	end
	if data.raw["item"]["vehicle-laser-defense-6"] then
		data.raw["active-defense-equipment"]["vehicle-laser-defense-6"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-laser-defense-6.png"
		data.raw["item"]["vehicle-laser-defense-6"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-laser-defense-6.png"
		data.raw["item"]["vehicle-laser-defense-6"].icon_size = 32
	end
	
	--vehicle-other
	if data.raw["item"]["vehicle-roboport"] then
		data.raw["roboport-equipment"]["vehicle-roboport"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-roboport-1.png"
		data.raw["item"]["vehicle-roboport"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-roboport-1.png"
		data.raw["item"]["vehicle-roboport"].icon_size = 32
	end
	if data.raw["item"]["vehicle-roboport-2"] then
		data.raw["roboport-equipment"]["vehicle-roboport-2"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-roboport-2.png"
		data.raw["item"]["vehicle-roboport-2"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-roboport-2.png"
		data.raw["item"]["vehicle-roboport-2"].icon_size = 32
	end
	if data.raw["item"]["vehicle-motor"] then
		data.raw["movement-bonus-equipment"]["vehicle-motor"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-motor-re.png"
		data.raw["item"]["vehicle-motor"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-motor-re.png"
		data.raw["item"]["vehicle-motor"].icon_size = 32
	end
	if data.raw["item"]["vehicle-engine"] then
		data.raw["movement-bonus-equipment"]["vehicle-engine"].sprite.filename = "__morebobs__/graphics/moreshiny/vehicleequipment/vehicle-engine.png"
		data.raw["item"]["vehicle-engine"].icon = "__morebobs__/graphics/moreshiny/icons/vehicleequipment/vehicle-engine.png"
		data.raw["item"]["vehicle-engine"].icon_size = 32
	end
end

--defense-equipment
if data.raw["item"]["discharge-defense-equipment"] then
	data.raw["item"]["discharge-defense-equipment"].icon = "__morebobs__/graphics/moreshiny/icons/equipment/discharge-defense-equipment.png"
	data.raw["item"]["discharge-defense-equipment"].icon_size = 32
	data.raw["active-defense-equipment"]["discharge-defense-equipment"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/discharge-defense-equipment.png"
end

--other
if data.raw["item"]["belt-immunity-equipment"] then
	data.raw["item"]["belt-immunity-equipment"].icon = "__morebobs__/graphics/moreshiny/icons/equipment/belt-immunity-equipment.png"
	data.raw["item"]["belt-immunity-equipment"].icon_size = 32
	data.raw["belt-immunity-equipment"]["belt-immunity-equipment"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/belt-immunity-equipment.png"
end
if data.raw["item"]["exoskeleton-equipment"] then
	data.raw["movement-bonus-equipment"]["exoskeleton-equipment"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/exoskeleton-equipment-1.png"
end
if data.raw["item"]["exoskeleton-equipment-2"] then
	data.raw["movement-bonus-equipment"]["exoskeleton-equipment-2"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/exoskeleton-equipment-2.png"
end
if data.raw["item"]["exoskeleton-equipment-3"] then
	data.raw["movement-bonus-equipment"]["exoskeleton-equipment-3"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/exoskeleton-equipment-3.png"
end
if data.raw["item"]["night-vision-equipment"] then
	data.raw["night-vision-equipment"]["night-vision-equipment"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/night-vision-equipment-1.png"
end
if data.raw["item"]["night-vision-equipment-2"] then
	data.raw["night-vision-equipment"]["night-vision-equipment-2"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/night-vision-equipment-2.png"
end
if data.raw["item"]["night-vision-equipment-3"] then
	data.raw["night-vision-equipment"]["night-vision-equipment-3"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/night-vision-equipment-3.png"
end
if data.raw["item"]["personal-roboport-equipment"] then
	data.raw["roboport-equipment"]["personal-roboport-equipment"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/personal-roboport-equipment.png"
end
if data.raw["item"]["personal-roboport-mk2-equipment"] then
	data.raw["roboport-equipment"]["personal-roboport-mk2-equipment"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/personal-roboport-mk2-equipment.png"
end
if data.raw["item"]["solar-panel-equipment"] then
	data.raw["solar-panel-equipment"]["solar-panel-equipment"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/solar-panel-equipment-1.png"
end
if data.raw["item"]["solar-panel-equipment-2"] then
	data.raw["solar-panel-equipment"]["solar-panel-equipment-2"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/solar-panel-equipment-2.png"
end
if data.raw["item"]["solar-panel-equipment-3"] then
	data.raw["solar-panel-equipment"]["solar-panel-equipment-3"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/solar-panel-equipment-3.png"
end
if data.raw["item"]["solar-panel-equipment-4"] then
	data.raw["solar-panel-equipment"]["solar-panel-equipment-4"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/solar-panel-equipment-4.png"
end

if mods["bobwarfare"] then	
	if data.raw["item"]["fusion-reactor-equipment"] then
		data.raw["generator-equipment"]["fusion-reactor-equipment"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/sh-fusion-reactor-equipment-1.png"
	end
	if data.raw["item"]["fusion-reactor-equipment-2"] then
		data.raw["generator-equipment"]["fusion-reactor-equipment-2"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/sh-fusion-reactor-equipment-2.png"
	end
	if data.raw["item"]["fusion-reactor-equipment-3"] then
		data.raw["generator-equipment"]["fusion-reactor-equipment-3"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/sh-fusion-reactor-equipment-3.png"
	end
	if data.raw["item"]["fusion-reactor-equipment-4"] then
		data.raw["generator-equipment"]["fusion-reactor-equipment-4"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/sh-fusion-reactor-equipment-4.png"
	end
	
	if not mods["ShinyBobGFX"] then
		if data.raw["item"]["fusion-reactor-equipment"] then
			data.raw["generator-equipment"]["fusion-reactor-equipment"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/fusion-reactor-equipment-1.png"
			data.raw["item"]["fusion-reactor-equipment"].icon = "__morebobs__/graphics/moreshiny/equipment/fusion-reactor-equipment-1.png"
			data.raw["item"]["fusion-reactor-equipment"].icon_size = 128
		end
		if data.raw["item"]["fusion-reactor-equipment-2"] then
			data.raw["generator-equipment"]["fusion-reactor-equipment-2"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/fusion-reactor-equipment-2.png"
			data.raw["item"]["fusion-reactor-equipment-2"].icon = "__morebobs__/graphics/moreshiny/equipment/fusion-reactor-equipment-2.png"
			data.raw["item"]["fusion-reactor-equipment-2"].icon_size = 128
		end
		if data.raw["item"]["fusion-reactor-equipment-3"] then
			data.raw["generator-equipment"]["fusion-reactor-equipment-3"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/fusion-reactor-equipment-3.png"
			data.raw["item"]["fusion-reactor-equipment-3"].icon = "__morebobs__/graphics/moreshiny/equipment/fusion-reactor-equipment-3.png"
			data.raw["item"]["fusion-reactor-equipment-3"].icon_size = 128
		end
		if data.raw["item"]["fusion-reactor-equipment-4"] then
			data.raw["generator-equipment"]["fusion-reactor-equipment-4"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/fusion-reactor-equipment-4.png"
			data.raw["item"]["fusion-reactor-equipment-4"].icon = "__morebobs__/graphics/moreshiny/equipment/fusion-reactor-equipment-4.png"
			data.raw["item"]["fusion-reactor-equipment-4"].icon_size = 128
		end

		if data.raw["item"]["solar-panel-equipment"] then
			data.raw["item"]["solar-panel-equipment"].icon = "__morebobs__/graphics/moreshiny/icons/equipment/solar-panel-equipment-1.png"
			data.raw["item"]["solar-panel-equipment"].icon_size = 32
		end
		if data.raw["item"]["solar-panel-equipment-2"] then
			data.raw["item"]["solar-panel-equipment-2"].icon = "__morebobs__/graphics/moreshiny/icons/equipment/solar-panel-equipment-2.png"
			data.raw["item"]["solar-panel-equipment-2"].icon_size = 32
		end
		if data.raw["item"]["solar-panel-equipment-3"] then
			data.raw["item"]["solar-panel-equipment-3"].icon = "__morebobs__/graphics/moreshiny/icons/equipment/solar-panel-equipment-3.png"
			data.raw["item"]["solar-panel-equipment-3"].icon_size = 32
		end
		if data.raw["item"]["solar-panel-equipment-4"] then
			data.raw["item"]["solar-panel-equipment-4"].icon = "__morebobs__/graphics/moreshiny/icons/equipment/solar-panel-equipment-4.png"
			data.raw["item"]["solar-panel-equipment-4"].icon_size = 32
		end
		
		if data.raw["item"]["exoskeleton-equipment"] then
			data.raw["item"]["exoskeleton-equipment"].icon = "__morebobs__/graphics/moreshiny/icons/equipment/exoskeleton-equipment-1.png"
			data.raw["item"]["exoskeleton-equipment"].icon_size = 32
		end
		if data.raw["item"]["exoskeleton-equipment-2"] then
			data.raw["item"]["exoskeleton-equipment-2"].icon = "__morebobs__/graphics/moreshiny/icons/equipment/exoskeleton-equipment-2.png"
			data.raw["item"]["exoskeleton-equipment-2"].icon_size = 32
		end
		if data.raw["item"]["exoskeleton-equipment-3"] then
			data.raw["item"]["exoskeleton-equipment-3"].icon = "__morebobs__/graphics/moreshiny/icons/equipment/exoskeleton-equipment-3.png"
			data.raw["item"]["exoskeleton-equipment-3"].icon_size = 32
		end
		if data.raw["item"]["night-vision-equipment"] then
			data.raw["item"]["night-vision-equipment"].icon = "__morebobs__/graphics/moreshiny/icons/equipment/night-vision-equipment-1.png"
			data.raw["item"]["night-vision-equipment"].icon_size = 32
		end
		if data.raw["item"]["night-vision-equipment-2"] then
			data.raw["item"]["night-vision-equipment-2"].icon = "__morebobs__/graphics/moreshiny/icons/equipment/night-vision-equipment-2.png"
			data.raw["item"]["night-vision-equipment-2"].icon_size = 32
		end
		if data.raw["item"]["night-vision-equipment-3"] then
			data.raw["item"]["night-vision-equipment-3"].icon = "__morebobs__/graphics/moreshiny/icons/equipment/night-vision-equipment-3.png"
			data.raw["item"]["night-vision-equipment-3"].icon_size = 32
		end
	end
else
	if data.raw["item"]["fusion-reactor-equipment"] then
		data.raw["generator-equipment"]["fusion-reactor-equipment"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/fusion-reactor-equipment-1.png"
		data.raw["item"]["fusion-reactor-equipment"].icon = "__morebobs__/graphics/moreshiny/equipment/fusion-reactor-equipment-1.png"
		data.raw["item"]["fusion-reactor-equipment"].icon_size = 128
	end
	if data.raw["item"]["fusion-reactor-equipment-2"] then
		data.raw["generator-equipment"]["fusion-reactor-equipment-2"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/fusion-reactor-equipment-2.png"
		data.raw["item"]["fusion-reactor-equipment-2"].icon = "__morebobs__/graphics/moreshiny/equipment/fusion-reactor-equipment-2.png"
		data.raw["item"]["fusion-reactor-equipment-2"].icon_size = 128
	end
	if data.raw["item"]["fusion-reactor-equipment-3"] then
		data.raw["generator-equipment"]["fusion-reactor-equipment-3"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/fusion-reactor-equipment-3.png"
		data.raw["item"]["fusion-reactor-equipment-3"].icon = "__morebobs__/graphics/moreshiny/equipment/fusion-reactor-equipment-3.png"
		data.raw["item"]["fusion-reactor-equipment-3"].icon_size = 128
	end
	if data.raw["item"]["fusion-reactor-equipment-4"] then
		data.raw["generator-equipment"]["fusion-reactor-equipment-4"].sprite.filename = "__morebobs__/graphics/moreshiny/equipment/fusion-reactor-equipment-4.png"
		data.raw["item"]["fusion-reactor-equipment-4"].icon = "__morebobs__/graphics/moreshiny/equipment/fusion-reactor-equipment-4.png"
		data.raw["item"]["fusion-reactor-equipment-4"].icon_size = 128
	end
end