if settings.startup["enable-morebobsaddon"] and settings.startup["enable-morebobsaddon"].value then
	require("lib/tu_market")
	script.on_event(defines.events.on_entity_died, function(event)
		-- get shops
		market_spawning(event)
	end)
	local tuonela = require("lib/tuonela")
end