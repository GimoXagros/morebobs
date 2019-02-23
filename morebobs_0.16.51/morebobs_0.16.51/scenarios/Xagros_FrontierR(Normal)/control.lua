require("frontier")
require("deathcount")

local silo_script = require("silo-script")
local version = 1

script.on_event(defines.events.on_player_created, function(event)
  local player = game.players[event.player_index]
	
	if event.player_index%4 == 1 then
		player.force = game.forces["alpha"]
	elseif event.player_index%4 == 2 then
		player.force = game.forces["bravo"]
	elseif event.player_index%4 == 3 then
		player.force = game.forces["charlie"]
	elseif event.player_index%4 == 0 then
		player.force = game.forces["delta"]
	end
	
  player.insert{name="iron-plate", count = 8}
  player.insert{name="pistol", count = 1}
  player.insert{name="firearm-magazine", count = 10}
  player.insert{name="burner-mining-drill", count = 1}
  player.insert{name="stone-furnace", count = 1}
	if game.item_prototypes["bi-dart-turret"] then
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

	mb_team_generator("alpha", 0, 250)
	mb_team_generator("bravo", 0, 500)
	mb_team_generator("charlie", 0, -250)
	mb_team_generator("delta", 0, -500)

	mb_friendly_setting_team("alpha", "player")
	mb_friendly_setting_team("bravo", "player")
	mb_friendly_setting_team("charlie", "player")
	mb_friendly_setting_team("delta", "player")

	mb_alliance_settings("alpha", "bravo")
	mb_alliance_settings("alpha", "charlie")
	mb_alliance_settings("alpha", "delta")

	mb_alliance_settings("bravo", "alpha")
	mb_alliance_settings("bravo", "charlie")
	mb_alliance_settings("bravo", "delta")

	mb_alliance_settings("charlie", "alpha")
	mb_alliance_settings("charlie", "bravo")
	mb_alliance_settings("charlie", "delta")
	
	mb_alliance_settings("delta", "alpha")
	mb_alliance_settings("delta", "bravo")
	mb_alliance_settings("delta", "charlie")
	
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