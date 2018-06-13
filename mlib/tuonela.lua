local tuonela = {}

local textcr = {
	green = { r = 0.1, g = 0.8, b = 0.1 },
	yellow = { r = 0.9, g = 0.9 },
	red = { r = 1, g = 0.2, b = 0.3 }
}

local function flying_text (msg, pos, clr)
	local surface = game.surfaces[1]
	if clr ~= nil then
		surface.create_entity({name="flying-text", position=pos, text=msg, color=clr})
	else 
		surface.create_entity({name="flying-text", position=pos, text=msg})
	end
end

local function if_can_insert(player, name_item, cnt, textpos, ch_pos_txt)
	local text_cnt = 0
	if ch_pos_txt ~= nil then textpos.y = textpos.y + ch_pos_txt end
	if player.can_insert{name = name_item, count = cnt} then
		player.insert({name = name_item, count = cnt})
		text_cnt = player.get_item_count(name_item)
		flying_text({"tuonela.item-inserted", cnt, game.item_prototypes[name_item].localised_name, text_cnt }, textpos)
	else
		text_cnt = player.get_item_count(name_item)
		flying_text({"tuonela.item-not-inserted", cnt, game.item_prototypes[name_item].localised_name, text_cnt }, textpos, textcr.red)
	end
end

local function on_supply_box_modules(player, chance, cnt, textpos)
	if chance <= 50 then
		if_can_insert(player, "uep-craft-assistent", cnt, player.position, textpos)
	elseif chance > 50 and chance <= 80 then
		if_can_insert(player, "uep-artificial-organ", cnt, player.position, textpos)
	elseif chance > 80 and chance <= 100 then
		if_can_insert(player, "uep-combet-control-module", cnt, player.position, textpos)
	end
end

function on_supply_box(event)
	if event.item.name == "supply_box_b" then
		on_supply_box_open_black(event.player_index)
	elseif event.item.name == "supply_box_g" then
		on_supply_box_open_green(event.player_index)
	elseif event.item.name == "supply_box_y" then
		on_supply_box_open_yellow(event.player_index)
	end
end

function on_supply_box_open_black(player_index)
  local player = game.players[player_index]
	local box_chance_1 = math.random(0,100)
	local box_chance_2 = math.random(0,100)
	local box_chance_3 = math.random(0,100)
	local box_generator = "solar-panel-equipment"
	local box_generator_cnt = 4
	if tuonela_box_g_check == true then
		box_generator = "portable-engine-equipment"
		box_generator_cnt = 1
	end
	
	if box_chance_1 <= 0 then
		if_can_insert(player, "heavy-armor", 10, player.position, 0.5)
	elseif box_chance_1 > 0 and box_chance_1 <= 25 then
		if_can_insert(player, "tuonela-modular-armor", 1, player.position)
		if_can_insert(player, box_generator, box_generator_cnt, player.position, 0.5)
		if_can_insert(player, "uep-armor-pocket", 1, player.position, 1)
		if_can_insert(player, "uep-additional-toolbelt", 1, player.position, 1.5)
		if_can_insert(player, "battery-equipment", 1, player.position, 2)
		if_can_insert(player, "uep-portable-logistic-computer", 3, player.position, 2.5)
		if_can_insert(player, "uep-portable-autotrash-computer", 3, player.position, 3)
		on_supply_box_modules(player, box_chance_2, 5, 3.5)
	elseif box_chance_1 > 25 and box_chance_1 <= 45 then
		if_can_insert(player, "tuonela-modular-armor", 1, player.position)
		if_can_insert(player, box_generator, box_generator_cnt, player.position, 0.5)
		if_can_insert(player, box_generator, box_generator_cnt, player.position, 1)
		if_can_insert(player, "discharge-defense-equipment", 2, player.position, 1.5)
		if_can_insert(player, "battery-equipment", 1, player.position, 2)
		on_supply_box_modules(player, box_chance_2, 5, 2.5)
		on_supply_box_modules(player, box_chance_3, 2, 3)
		if_can_insert(player, "discharge-defense-remote", 1, player.position, 3.5)
	elseif box_chance_1 > 45 and box_chance_1 <= 55 then
		if_can_insert(player, "tuonela-modular-armor", 1, player.position)
		if_can_insert(player, box_generator, box_generator_cnt, player.position, 0.5)
		if_can_insert(player, box_generator, box_generator_cnt, player.position, 1)
		if_can_insert(player, box_generator, box_generator_cnt, player.position, 1.5)
		if_can_insert(player, "personal-laser-defense-equipment", 1, player.position, 2)
		if_can_insert(player, "battery-equipment", 1, player.position, 2.5)
		on_supply_box_modules(player, box_chance_2, 5, 3)
		on_supply_box_modules(player, box_chance_3, 2, 3.5)
	elseif box_chance_1 > 55 and box_chance_1 <= 65 then
		if_can_insert(player, "tuonela-modular-armor", 1, player.position)
		if_can_insert(player, box_generator, box_generator_cnt, player.position, 0.5)
		if_can_insert(player, "night-vision-equipment", 1, player.position, 1)
		if_can_insert(player, "uep-armor-pocket", 2, player.position, 1.5)
		if_can_insert(player, "battery-equipment", 2, player.position, 2)
		on_supply_box_modules(player, box_chance_2, 5, 2.5)
	elseif box_chance_1 > 65 and box_chance_1 <= 75 then
		if_can_insert(player, "tuonela-modular-armor", 1, player.position)
		if_can_insert(player, box_generator, box_generator_cnt, player.position, 0.5)
		if_can_insert(player, box_generator, box_generator_cnt, player.position, 1)
		if_can_insert(player, box_generator, box_generator_cnt, player.position, 1.5)
		if_can_insert(player, "personal-roboport-equipment", 1, player.position, 2)
		if_can_insert(player, "battery-equipment", 1, player.position, 2.5)
		if_can_insert(player, "uep-portable-logistic-computer", 2, player.position, 3.5)
		if_can_insert(player, "uep-portable-autotrash-computer", 2, player.position, 4)
		on_supply_box_modules(player, box_chance_2, 3, 4.5)
		if_can_insert(player, "construction-robot", 5, player.position, 5)
	elseif box_chance_1 > 75 and box_chance_1 <= 85 then
		if_can_insert(player, "tuonela-modular-armor", 1, player.position)
		if_can_insert(player, box_generator, box_generator_cnt, player.position, 0.5)
		if_can_insert(player, box_generator, box_generator_cnt, player.position, 1)
		if_can_insert(player, "personal-roboport-equipment", 2, player.position, 1.5)
		if_can_insert(player, "battery-equipment", 2, player.position, 2)
		if_can_insert(player, "uep-portable-logistic-computer", 2, player.position, 2.5)
		if_can_insert(player, "uep-portable-autotrash-computer", 2, player.position, 3)
		if_can_insert(player, "construction-robot", 10, player.position, 3.5)
		on_supply_box_modules(player, box_chance_2, 1, 3.5)
	elseif box_chance_1 > 85 and box_chance_1 <= 95 then
		if_can_insert(player, "tuonela-modular-armor", 1, player.position)
		if_can_insert(player, box_generator, box_generator_cnt, player.position, 0.5)
		if_can_insert(player, box_generator, box_generator_cnt, player.position, 1)
		if_can_insert(player, "exoskeleton-equipment", 1, player.position, 1.5)
		if_can_insert(player, "battery-equipment", 1, player.position, 2)
		on_supply_box_modules(player, box_chance_2, 7, 2.5)
	elseif box_chance_1 > 95 then
		if_can_insert(player, "tuonela-modular-armor", 1, player.position)
		if_can_insert(player, box_generator, box_generator_cnt, player.position, 0.5)
		if_can_insert(player, "uep-armor-pocket", 1, player.position, 1)
		if_can_insert(player, "exoskeleton-equipment", 1, player.position, 1.5)
		if_can_insert(player, "battery-equipment", 1, player.position, 2)
		on_supply_box_modules(player, box_chance_2, 7, 2.5)
	end
end

function on_supply_box_open_green(player_index)
  local player = game.players[player_index]
	local box_chance_1 = math.random(0,100)
	local cnt = 0
	
	if box_chance_1 <= 18 then
		cnt = math.random(100,600)
		if_can_insert(player, "firearm-magazine", cnt, player.position, 0.5)
	elseif box_chance_1 > 18 and box_chance_1 <= 26 then
		cnt = math.random(50,300)
		if_can_insert(player, "piercing-rounds-magazine", cnt, player.position, 0.5)
	elseif box_chance_1 > 26 and box_chance_1 <= 27 then
		cnt = math.random(10,100)
		if_can_insert(player, "uranium-rounds-magazine", cnt, player.position, 0.5)
	elseif box_chance_1 > 27 and box_chance_1 <= 39 then
		cnt = math.random(100,400)
		if_can_insert(player, "shotgun-shell", cnt, player.position, 0.5)
	elseif box_chance_1 > 39 and box_chance_1 <= 42 then
		cnt = math.random(50,100)
		if_can_insert(player, "piercing-shotgun-shell", cnt, player.position, 0.5)
	elseif box_chance_1 > 42 and box_chance_1 <= 50 then
		cnt = math.random(100,200)
		if_can_insert(player, "rocket", cnt, player.position, 0.5)
	elseif box_chance_1 > 50 and box_chance_1 <= 53 then
		cnt = math.random(50,100)
		if_can_insert(player, "explosive-rocket", cnt, player.position, 0.5)
	elseif box_chance_1 > 53 and box_chance_1 <= 54 then
		cnt = 1
		if_can_insert(player, "atomic-bomb", cnt, player.position, 0.5)
	elseif box_chance_1 > 54 and box_chance_1 <= 59 then
		cnt = math.random(10,100)
		if_can_insert(player, "flamethrower-ammo", cnt, player.position, 0.5)
	elseif box_chance_1 > 59 and box_chance_1 <= 64 then
		cnt = math.random(10,100)
		if_can_insert(player, "grenade", cnt, player.position, 0.5)
	elseif box_chance_1 > 64 and box_chance_1 <= 67 then
		cnt = math.random(5,50)
		if_can_insert(player, "cluster-grenade", cnt, player.position, 0.5)
	elseif box_chance_1 > 67 and box_chance_1 <= 69 then
		cnt = math.random(10,50)
		if_can_insert(player, "land-mine", cnt, player.position, 0.5)
	elseif box_chance_1 > 69 and box_chance_1 <= 71 then
		cnt = math.random(5,50)
		if_can_insert(player, "poison-capsule", cnt, player.position, 0.5)
	elseif box_chance_1 > 71 and box_chance_1 <= 73 then
		cnt = math.random(5,100)
		if_can_insert(player, "slowdown-capsule", cnt, player.position, 0.5)
	elseif box_chance_1 > 73 and box_chance_1 <= 78 then
		cnt = math.random(5,100)
		if_can_insert(player, "fish-kit", cnt, player.position, 0.5)
	elseif box_chance_1 > 78 and box_chance_1 <= 83 then
		cnt = math.random(5,50)
		if_can_insert(player, "ap-bullet-brick", cnt, player.position, 0.5)
	elseif box_chance_1 > 83 and box_chance_1 <= 85 then
		cnt = math.random(5,50)
		if_can_insert(player, "piercing-shotgun-shell-brick", cnt, player.position, 0.5)
	elseif box_chance_1 > 85 and box_chance_1 <= 100 then
		cnt = math.random(10,200)
		if_can_insert(player, "raw-fish", cnt, player.position, 0.5)
	end
end

function on_supply_box_open_yellow(player_index)
  local player = game.players[player_index]
	local box_chance_1 = math.random(0,100)
	local cnt = 0
	
	if box_chance_1 <= 30 then
		cnt = math.random(100,600)
		if_can_insert(player, "raw-wood", cnt, player.position, 0.5)
	elseif box_chance_1 > 30 and box_chance_1 <= 65 then
		cnt = math.random(100,1000)
		if_can_insert(player, "iron-plate", cnt, player.position, 0.5)
	elseif box_chance_1 > 65 and box_chance_1 <= 85 then
		cnt = math.random(10,800)
		if_can_insert(player, "copper-plate", cnt, player.position, 0.5)
	elseif box_chance_1 > 85 and box_chance_1 <= 100 then
		cnt = math.random(50,400)
		if_can_insert(player, "stone-brick", cnt, player.position, 0.5)
	end
end
	
script.on_event(defines.events.on_player_used_capsule, function(event)
	on_supply_box(event)
end)

if settings.startup["start-with-supply-box-b"] and settings.startup["start-with-supply-box-b"].value == true then
	local function player_insert_items(event)
		local player = event and game.players[event.player_index]
		if player then
				player.insert{name="supply_box_b", count = 1}
		else
				for _, p in pairs(game.players) do
						p.insert{name="supply_box_b", count = 1}
				end
		end
	end

	script.on_event(defines.events.on_player_created, function(event)
		player_insert_items(event)
	end)
end

return tuonela