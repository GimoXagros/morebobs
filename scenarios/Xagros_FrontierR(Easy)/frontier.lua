--	Based from the 0.14 Fronteer scenario: https://forums.factorio.com/viewtopic.php?f=36&t=33594
--	2018-03-08 MojoD's Fronteer scenario: https://mods.factorio.com/mod/Frontier-Extended
--	2018-05-12 Xagros's Fronteer scenario: https://mods.factorio.com/mod/morebobs
--	Last updated on 2018-06-05 More bobs! v0.16.47
--  Added an infinite ocean to the left so the map cannot be cheated like the old one scenario

local silo_center = 1050		--center point the silo will be to the right of spawn
local silo_radius = 450			--radius around center point the silo will be
local left_water_boundary = 300 --after this distance just generate water to a barrier
local deathworld_boundary = 300	--point where the ores start getting richer and biters begin

local ore_base_quantity	  = 450  --base ore quantity, everything is scaled up from this
local ore_chunk_scale	  = 256  --sets how fast the ore will increase from spawn, lower = faster

--passed the x distance from spawn and returns a number scaled up depending on how high it is
local function ore_multiplier(distance)
	local a = math.max(1, math.abs(distance/ore_chunk_scale))
	a = math.min(a, 100)
	local multiplier = math.random(a, 10+a) / 4
	return multiplier
end

script.on_event(defines.events.on_chunk_generated, function(event)
	if event.surface.name ~= "nauvis" then return end
	
	--im sure there is a better way to do this #Blamelua
	if global.x == nil or global.y == nil then
		global.x = math.random(silo_center, (silo_center+silo_radius))
		global.y = math.random(-silo_radius, silo_radius)
	end	
	
	--after going left far enough just generate water as a barrier to stop cheesing the map
	if event.area.left_top.x < -left_water_boundary then
		for _, entity in pairs(event.surface.find_entities_filtered{area = event.area}) do
			entity.destroy()
		end
		local tiles = {}
		local i = 1
		for dx = 0,31 do
			for dy = 0,31 do
				tiles[i] = {name = "deepwater", position = {event.area.left_top.x+dx, event.area.left_top.y+dy}}
				i=i+1
			end
		end
		event.surface.set_tiles(tiles, true)
	end
		
	--kill off biters inside the wall
	if event.area.right_bottom.x < (deathworld_boundary + 96) then
		for _, entity in pairs(event.surface.find_entities_filtered{area = event.area, force = "enemy"}) do
			entity.destroy()
		end
	end
	
	-- Wall chunk
	if event.area.left_top.x <= deathworld_boundary and event.area.right_bottom.x >= deathworld_boundary then
		for _, entity in pairs(event.surface.find_entities_filtered{area = event.area}) do
			entity.destroy()
		end
		for dy = 0, 31 do
			local py = event.area.left_top.y+dy
			for dx = 0, 4 do
				local px = event.area.left_top.x+dx+14
				if event.surface.can_place_entity{name = "iron-wall", position = {px, py}, force = "neutral"} then
					local e = event.surface.create_entity{name = "iron-wall", position = {px, py}, force = "neutral"}
					e.minable = false
				end
			end
		end
	end
	
	--test if chunk generatied is the chosen silo hole
	if global.x > event.area.left_top.x and global.x <= event.area.right_bottom.x and global.y > event.area.left_top.y and global.y <= event.area.right_bottom.y then 
		for _, entity in pairs(event.surface.find_entities_filtered{area = {{event.area.left_top.x+10, event.area.left_top.y+11},{event.area.left_top.x+18, event.area.left_top.y+19}}}) do
			entity.destroy()
		end
		local tiles = {}
		local i = 1
		for dx = -7,7 do
			for dy = -8,7 do
				tiles[i] = {name = "concrete", position = {event.area.left_top.x+dx+14, event.area.left_top.y+dy+14}}
				i=i+1
			end
		end
		event.surface.set_tiles(tiles, true)
		local silo = event.surface.create_entity{name = "rocket-silo", position = {event.area.left_top.x+14, event.area.left_top.y+14}, force = "player"}
		silo.destructible = false
		silo.minable = false
	end
	
	--based off Fronteer scenario, it scales freshly generated ore by a scale factor
	for _, resource in pairs(event.surface.find_entities_filtered{area = event.area, type="resource"}) do
		local a
		if resource.position.x > deathworld_boundary then a = ore_multiplier(resource.position.x+deathworld_boundary)
		else a = ore_multiplier(ore_base_quantity) end
		
		if resource.prototype.resource_category == "basic-fluid" then
			resource.amount = 1500 * 5 * a
			if resource.position.x < deathworld_boundary then resource.destroy() end
		elseif resource.prototype.resource_category == "basic-solid" then
			resource.amount = ore_base_quantity * a
		end
	end	
end)

script.on_event(defines.events.on_research_finished, function(event)
	local recipes = event.research.force.recipes
	-- Having an entire rocket silo in your pocket? What a ridiculous notion. Bonkers, I say. Things don't fit in there.
	if recipes["rocket-silo"] then recipes["rocket-silo"].enabled = false end
end)

script.on_event(defines.events.on_player_changed_position, function(event)
	local player = game.players[event.player_index]
	if player.position.x < (-left_water_boundary+9) then 
		if player.character ~= nil then
			player.print({"msg-kraken"})
			player.character.die()
		else
			player.print({"msg-playerghost"})
			player.teleport({0, 0}, player.surface)
		end
	end
	if player.position.x > (deathworld_boundary+8) then 
		if player.character == nil then
			player.print({"msg-playerghost"})
			player.teleport({0, 0}, player.surface)
		end
	end
end)
