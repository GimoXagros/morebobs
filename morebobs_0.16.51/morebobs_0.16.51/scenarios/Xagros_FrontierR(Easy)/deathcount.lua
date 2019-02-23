-- Player death count
--	2018-4-30 Xagros

function Init_death_count()
	global.death_count = global.death_count or {}
	global.death_count.lifecount = global.death_count.lifecount or {}
	
	for index,player in pairs(game.players) do
		global.death_count[index] = global.death_count[index] or {}	
	end
end

function dc_player_created(event)
	local index = game.players[event.player_index]
	local name = index.name
	global.death_count[event.player_index].lifecount = 10
	local lifecount = global.death_count[event.player_index].lifecount
	index.print({"msg-intro"})

	for _,player in pairs(game.players) do
		player.print({"msg-leftlife", name, lifecount})
	end
end

function dc_player_rejoin(event)
	local index = game.players[event.player_index]
	local name = index.name
	if global.death_count[event.player_index].lifecount then
		local lifecount = global.death_count[event.player_index].lifecount
		for _,player in pairs(game.players) do
			player.print({"msg-leftlife", name, lifecount})
		end
	end
end

function dc_player_respawned(event)
	local index = game.players[event.player_index]
	local name = index.name
	local lifecount = global.death_count[event.player_index].lifecount
	
	if global.death_count[event.player_index].lifecount == 0 then
		set_spectator(index)

		for _,player in pairs(game.players) do
			player.print({"msg-died", name})
		end
	else
		for _,player in pairs(game.players) do
			player.print({"msg-leftlife", name, lifecount - 1})
		end
		
		global.death_count[event.player_index].lifecount = lifecount - 1
	end
end

function set_spectator(player)
	if not player.connected then return end
	if not player.character then return end

	local character = player.character
	player.character = nil
	if character then
		character.destroy()
	end
	player.set_controller{type = defines.controllers.ghost}
end

function mb_team_generator(name, pox, poy)
	game.create_force(name)
	game.forces[name].set_spawn_position({x = pox, y = poy}, game.surfaces[1])
	game.forces["enemy"].set_friend(name, false)
end

function mb_friendly_setting_team(name, target)
	game.forces[name].friendly_fire = false
	game.forces[target].set_friend(name, true)
	game.forces[target].set_cease_fire(name, true)
	game.forces[name].set_friend(target, true)
	game.forces[name].set_cease_fire(target, true)
end

function mb_alliance_settings(name, target)
	game.forces[name].set_friend(target, true)
	game.forces[name].set_cease_fire(target, false)
end