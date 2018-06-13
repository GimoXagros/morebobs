require "util"

local tanks_for_bob = {}

-- Events
script.on_event(defines.events.on_player_driving_changed_state, function(event)
	tank_talk(event.player_index)
end)

script.on_event(defines.events.on_gui_click, function(event)
	button(event.element, event.player_index)
end)

script.on_event(defines.events.on_trigger_created_entity, function(event)
	enityCreated(event.entity)
end)

-- enity Created
function enityCreated(entity)
	if entity.name == "pre-teleport-effect" then
		teleportEffect(entity)
	end
end

-- Button
function button(element, player_index)
	local button = element.name
	tank_button(button, player_index)
end

--tank talk
function tank_talk(player_index)
  local player = game.players[player_index]
  local tanktype = nil
  local count_auto_cannon_shells = 0
  local count_cannon_shells = 0
  local count_mortar_shells = 0

	if player.character then -- must be exist
		if player.character.health > 0.0 then -- must be alive
			if player.driving == false then
				tankCloseGui(player)
			else
				tanktype = player.vehicle.name
				if ( tanktype == "auto-tank" or tanktype == "flame-tank" or tanktype == "nade-tank" or tanktype == "flame-tank-wlsk" or tanktype == "auto-tank-wlsk" or tanktype == "nade-tank-wlsk" ) and player.force.technologies["tank-recall"].researched then
					player.print({"tanks-notify.ready1"})
					tankOpenGui(player)
				end
				if ( tanktype == "mine-tank" or tanktype == "rocket-tank" ) and player.force.technologies["tank-recall"].researched then
					player.print({"tanks-notify.ready2"})
					tankOpenGui(player)
				end
				if ( tanktype == "super-tank" or tanktype == "super-tank-alternate" or tanktype == "super-tank-wmd" ) and player.force.technologies["tank-recall"].researched then
					player.print({"tanks-notify.ready3"})
					tankOpenGui(player)
				end
				if ( tanktype == "tank" or tanktype == "bob-tank-2" or tanktype == "bob-tank-3" ) and player.force.technologies["tank-recall"].researched then
					player.print({"tanks-notify.ready4"})
					tankOpenGui(player)
				end
				if ( tanktype == "diesel-locomotive" ) then
					player.print({"tanks-notify.sit1"})
				end
			end
		end
	end
end

-- Tank Gui and Button
function tankOpenGui(player)
	player.gui.top.add{type = "button", name = "set_recal_tank", caption = {"gui.set-recall-tank"}}
end

function tankCloseGui(player)
	local temp = "tank_"..player.name
	tank = global[temp]

	if player.gui.top.set_recal_tank ~= nil then
		player.gui.top.set_recal_tank.destroy()
	end
end

function tank_button(button, player_index)
	local player = game.players[player_index]
	local tank = player.vehicle

	if button == "set_recal_tank" then
		player.print({"tanks-notify.teleporter-set"})
		local temp = "tank_"..player.name 
		global[temp] = tank
	end
end

--------------------------------------
-- Tank telepoter
--------------------------------------
function teleportEffect(entity)
	-- body
	-- game.players[1].print("pre-teleport-effect")
	local entityPlayer = entity.surface.find_entity('player', entity.position)

	if entityPlayer ~= nil then
		-- entityPlayer = entity.surface.find_nearest_enemy{position={entity.position.x, entity.position.y},max_distance=3,force="enemy"}
		for c, tplayer in pairs(game.players) do
			-- game.players[1].print("Looking x".. entityPlayer.position.x .." y ".. entityPlayer.position.y .." == x".. tplayer.position.x .." y ".. tplayer.position.y)
			if tplayer.position.x == entityPlayer.position.x and tplayer.position.y == entityPlayer.position.y then
				player = tplayer
				-- player.print("found")
			end
		end
		local temp = "tank_"..player.name
		tank = global[temp]
		if tank ~= nil then
			if tank.valid ~= false then
				-- player.print("Teleporting to tank")
				player.surface.create_entity{name="teleport-effect", position={entityPlayer.position.x,entityPlayer.position.y}}
				-- player.teleport(tank.position)
				tank.set_driver(player.character)
				tank.surface.create_entity{name="teleport-effect", position={tank.position.x,tank.position.y}}
				-- tankOpenGui(player)
			else
				global[temp] = nil
				player.insert{name="tank-recall-token", count=1}
				player.print({"tanks-notify.failed-teleport1"})
			end
		else
			player.insert{name="tank-recall-token", count=1}
			player.print({"tanks-notify.failed-teleport1"})
		end
	else
		-- game.players[1].print("Looking in tanks")
		for c, tplayer in pairs(game.players) do      
			if tplayer.vehicle ~= nil then
				-- game.players[1].print("Looking found player in tank")
				if tplayer.vehicle.position.x == tplayer.vehicle.position.x and entity.position.y == entity.position.y then
					player = tplayer
					player.insert{name="tank-recall-token", count=1}
					player.print({"tanks-notify.failed-teleport2"})
				end
			end
		end
	end

	--bobsclass
	if bobmods then
		if bobmods.classes then
			local entityBobClassPlayer1 = entity.surface.find_entity('bob-player-miner', entity.position)
			local entityBobClassPlayer2 = entity.surface.find_entity('bob-player-fighter', entity.position)
			local entityBobClassPlayer3 = entity.surface.find_entity('bob-player-builder', entity.position)
			
			if entityBobClassPlayer1 ~= nil then
				-- entityBobClassPlayer1 = entity.surface.find_nearest_enemy{position={entity.position.x, entity.position.y},max_distance=3,force="enemy"}
				for c, tplayer in pairs(game.players) do
					-- game.players[1].print("Looking x".. entityBobClassPlayer1.position.x .." y ".. entityBobClassPlayer1.position.y .." == x".. tplayer.position.x .." y ".. tplayer.position.y)
					if tplayer.position.x == entityBobClassPlayer1.position.x and tplayer.position.y == entityBobClassPlayer1.position.y then
						player = tplayer
						-- player.print("found")
					end
				end
				local temp = "tank_"..player.name
				tank = global[temp]
				if tank ~= nil then
					if tank.valid ~= false then
						-- player.print("Teleporting to tank")
						player.surface.create_entity{name="teleport-effect", position={entityBobClassPlayer1.position.x,entityBobClassPlayer1.position.y}}
						-- player.teleport(tank.position)
						tank.set_driver(player.character)
						tank.surface.create_entity{name="teleport-effect", position={tank.position.x,tank.position.y}}
						-- tankOpenGui(player)
					else
						global[temp] = nil
						player.insert{name="tank-recall-token", count=1}
						player.print({"tanks-notify.failed-teleport1"})
					end
				else
					player.insert{name="tank-recall-token", count=1}
					player.print({"tanks-notify.failed-teleport1"})
				end
			else
				-- game.players[1].print("Looking in tanks")
				for c, tplayer in pairs(game.players) do      
					if tplayer.vehicle ~= nil then
						-- game.players[1].print("Looking found player in tank")
						if tplayer.vehicle.position.x == tplayer.vehicle.position.x and entity.position.y == entity.position.y then
							player = tplayer
							player.insert{name="tank-recall-token", count=1}
							player.print({"tanks-notify.failed-teleport2"})
						end
					end
				end
			end
			if entityBobClassPlayer2 ~= nil then
				-- entityBobClassPlayer2 = entity.surface.find_nearest_enemy{position={entity.position.x, entity.position.y},max_distance=3,force="enemy"}
				for c, tplayer in pairs(game.players) do
					-- game.players[1].print("Looking x".. entityBobClassPlayer2.position.x .." y ".. entityBobClassPlayer2.position.y .." == x".. tplayer.position.x .." y ".. tplayer.position.y)
					if tplayer.position.x == entityBobClassPlayer2.position.x and tplayer.position.y == entityBobClassPlayer2.position.y then
						player = tplayer
						-- player.print("found")
					end
				end
				local temp = "tank_"..player.name
				tank = global[temp]
				if tank ~= nil then
					if tank.valid ~= false then
						-- player.print("Teleporting to tank")
						player.surface.create_entity{name="teleport-effect", position={entityBobClassPlayer2.position.x,entityBobClassPlayer2.position.y}}
						-- player.teleport(tank.position)
						tank.set_driver(player.character)
						tank.surface.create_entity{name="teleport-effect", position={tank.position.x,tank.position.y}}
						-- tankOpenGui(player)
					else
						global[temp] = nil
						player.insert{name="tank-recall-token", count=1}
						player.print({"tanks-notify.failed-teleport1"})
					end
				else
					player.insert{name="tank-recall-token", count=1}
					player.print({"tanks-notify.failed-teleport1"})
				end
			else
				-- game.players[1].print("Looking in tanks")
				for c, tplayer in pairs(game.players) do      
					if tplayer.vehicle ~= nil then
						-- game.players[1].print("Looking found player in tank")
						if tplayer.vehicle.position.x == tplayer.vehicle.position.x and entity.position.y == entity.position.y then
							player = tplayer
							player.insert{name="tank-recall-token", count=1}
							player.print({"tanks-notify.failed-teleport2"})
						end
					end
				end
			end
			if entityBobClassPlayer3 ~= nil then
				-- entityBobClassPlayer3 = entity.surface.find_nearest_enemy{position={entity.position.x, entity.position.y},max_distance=3,force="enemy"}
				for c, tplayer in pairs(game.players) do
					-- game.players[1].print("Looking x".. entityBobClassPlayer3.position.x .." y ".. entityBobClassPlayer3.position.y .." == x".. tplayer.position.x .." y ".. tplayer.position.y)
					if tplayer.position.x == entityBobClassPlayer3.position.x and tplayer.position.y == entityBobClassPlayer3.position.y then
						player = tplayer
						-- player.print("found")
					end
				end
				local temp = "tank_"..player.name
				tank = global[temp]
				if tank ~= nil then
					if tank.valid ~= false then
						-- player.print("Teleporting to tank")
						player.surface.create_entity{name="teleport-effect", position={entityBobClassPlayer3.position.x,entityBobClassPlayer3.position.y}}
						-- player.teleport(tank.position)
						tank.set_driver(player.character)
						tank.surface.create_entity{name="teleport-effect", position={tank.position.x,tank.position.y}}
						-- tankOpenGui(player)
					else
						global[temp] = nil
						player.insert{name="tank-recall-token", count=1}
						player.print({"tanks-notify.failed-teleport1"})
					end
				else
					player.insert{name="tank-recall-token", count=1}
					player.print({"tanks-notify.failed-teleport1"})
				end
			else
				-- game.players[1].print("Looking in tanks")
				for c, tplayer in pairs(game.players) do      
					if tplayer.vehicle ~= nil then
						-- game.players[1].print("Looking found player in tank")
						if tplayer.vehicle.position.x == tplayer.vehicle.position.x and entity.position.y == entity.position.y then
							player = tplayer
							player.insert{name="tank-recall-token", count=1}
							player.print({"tanks-notify.failed-teleport2"})
						end
					end
				end
			end
		end
	end
end

return tanks_for_bob