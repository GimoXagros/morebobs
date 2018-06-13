if settings.startup["enable-reactorplus"] and settings.startup["enable-reactorplus"].value == false then
	script.on_event(defines.events.on_built_entity, function(event)
		if string.match(event.created_entity.name, "pipe-") and 
		(string.match(event.created_entity.name, "elbow")
		or string.match(event.created_entity.name, "junction")
		or string.match(event.created_entity.name, "straight")) then
			event.created_entity.operable = false
		end
	end)

	script.on_event(defines.events.on_robot_built_entity, function(event)
		if string.match(event.created_entity.name, "pipe-") and 
		(string.match(event.created_entity.name, "elbow")
		or string.match(event.created_entity.name, "junction")
		or string.match(event.created_entity.name, "straight")) then
			event.created_entity.operable = false
		end
	end)
end

if settings.startup["enable-uequipmenttesla"] and settings.startup["enable-uequipmenttesla"].value == true then
	local useful_equipment = require("mlib/useful_equipment")
end

if settings.startup["enable-reactorplus"] and settings.startup["enable-reactorplus"].value == true then
	local reactor = require("mlib/reactor")
	-- local meltdown = require("mlib/meltdown")
end

if settings.startup["enable-tanks_for_bob"] and settings.startup["enable-tanks_for_bob"].value == true then
	if aai_vehicles ~= true then
		local tanks_for_bob = require("mlib/tanks_for_bob")
	end
end
if settings.startup["tuonelatweaks-mint"] and settings.startup["tuonelatweaks-mint"].value == true then
	if settings.startup["enable-tanks_for_bob"] and settings.startup["enable-tanks_for_bob"].value == true and
	settings.startup["enable-uequipmenttesla"] and settings.startup["enable-uequipmenttesla"].value == true then
		local tuonela = require("mlib/tuonela")
	end
end