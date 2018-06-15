require("frontier")
require("deathcount")

local silo_script = require("silo-script")
local version = 1

script.on_event(defines.events.on_player_created, function(event)
  local player = game.players[event.player_index]
	
	if event.player_index%2 == 0 then
		player.force = game.forces["alpha"]
	else
		player.force = game.forces["bravo"]
	end
	
  player.insert{name="iron-plate", count = 8}
  player.insert{name="pistol", count = 1}
  player.insert{name="firearm-magazine", count = 10}
  player.insert{name="burner-mining-drill", count = 1}
  player.insert{name="stone-furnace", count = 1}
	if BI then
		player.insert{name="bi-dart-turret", count = 10}
		player.insert{name="bi-enhanced-dart-magazine", count = 1000}
	end
  player.force.chart(player.surface, {{player.position.x - 200, player.position.y - 200}, {player.position.x + 200, player.position.y + 200}})
  if (#game.players <= 1) then
	game.show_message_dialog{text = {"msg-intro"}}
  else
	player.print({"msg-intro"})
  end
  Init_death_count()
  silo_script.on_player_created(event)
  dc_player_created(event)
end)

script.on_event(defines.events.on_player_died, function(event)
end)

script.on_event(defines.events.on_player_respawned, function(event)
  dc_player_respawned(event)
end)

script.on_event(defines.events.on_player_joined_game, function(event)
	dc_player_rejoin(event)
end)

script.on_event(defines.events.on_gui_click, function(event)
  silo_script.on_gui_click(event)
end)

script.on_init(function()
  global.version = version
  -- Overide map settings for biter expansion
  game.map_settings.enemy_evolution.enabled = true
  game.map_settings.enemy_expansion.enabled = true
  game.map_settings.enemy_expansion.friendly_base_influence_radius = 0
  game.map_settings.enemy_expansion.min_expansion_cooldown = 1800 --30 seconds
  game.map_settings.enemy_expansion.max_expansion_cooldown = 14400 --4 minutes
  game.map_settings.enemy_expansion.max_expansion_distance = 5
  game.map_settings.enemy_evolution.destroy_factor = 0.0001
  --Override map settings for pollution
  game.map_settings.pollution.enabled = true
  game.map_settings.pollution.diffusion_ratio = .08

	--forces options
	game.forces["player"].friendly_fire = false

	game.create_force("alpha")
	game.forces["alpha"].set_spawn_position({x = 0, y = 500}, game.surfaces[1])
	
	game.forces["alpha"].friendly_fire = false
	game.forces["player"].set_friend("alpha", true)
	game.forces["player"].set_cease_fire("alpha", true)
	game.forces["alpha"].set_friend("player", true)
	game.forces["alpha"].set_cease_fire("player", true)

	game.create_force("bravo")
	game.forces["bravo"].set_spawn_position({x = 0, y = -500}, game.surfaces[1])

	game.forces["bravo"].friendly_fire = false
	game.forces["player"].set_friend("bravo", true)
	game.forces["player"].set_cease_fire("bravo", true)
	game.forces["bravo"].set_friend("player", true)
	game.forces["bravo"].set_cease_fire("player", true)

	game.forces["alpha"].set_friend("bravo", true)
	game.forces["bravo"].set_friend("alpha", true)
	game.forces["alpha"].set_cease_fire("bravo", false)
	game.forces["bravo"].set_cease_fire("alpha", false)
	
	game.forces["enemy"].set_friend("alpha", false)
	game.forces["enemy"].set_friend("bravo", false)

  silo_script.on_init()
  Init_death_count()
end)

script.on_event(defines.events.on_rocket_launched, function(event)
  silo_script.on_rocket_launched(event)
end)

script.on_configuration_changed(function(event)
  if global.version ~= version then
    global.version = version
  end
  silo_script.on_configuration_changed(event)
    game.surface[1].peaceful_mode = false
end)

silo_script.add_remote_interface()
silo_script.add_commands()