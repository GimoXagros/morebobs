local useful_equipment = {}

-- Based on ARMOR POCKETS script
-- And remade by Xagros
-- uetotal = {}
-- script.on_event(defines.events.on_player_created, function(event)
	-- local player = game.players[event.player_index]

	-- uetotal.player = 
	-- {
		-- name = player.name,
		-- craftingSpeed = 0,
		-- health = 0,
		-- logisticSlots = 0,
		-- quickbar = 0,
		-- trashSlots = 0,
		-- followingrobot = 0,
		-- inventoryslots = 0,
	-- }
-- end
-- )

-- Placed Equipment
script.on_event(defines.events.on_player_placed_equipment, function(event)
	local player = game.players[event.player_index]

	if player.character ~= nil then
		local craftingSpeed = player.character_crafting_speed_modifier
		local health = player.character_health_bonus
		local logisticSlots = player.character_logistic_slot_count_bonus
		local quickbar = player.quickbar_count_bonus
		
		--Added Xagros's UE
		local trashSlots = player.character_trash_slot_count_bonus
		local followingrobot = player.character_maximum_following_robot_count_bonus
		local inventoryslots = player.character_inventory_slots_bonus

		-- local miningSpeed = player.character_mining_speed_modifier

		-- local reachdistance = player.character_reach_distance_bonus
		-- local builddistance = player.character_build_distance_bonus
		-- local itemdropdistance = player.character_item_drop_distance_bonus
		-- local resourcereachdistance = player.character_resource_reach_distance_bonus
		-- local itempickupdistance = player.character_item_pickup_distance_bonus
		-- local lootpickupdistance = player.character_loot_pickup_distance_bonus
		
		
		-- check if we are adding an armor pocket
		if event.equipment.name == "uep-craft-assistent" then
			-- add the bonus
			player.character_crafting_speed_modifier = craftingSpeed + 0.5
			-- -- bonus value
			-- uetotal.player.craftingSpeed = uetotal.player.craftingSpeed + 0.5
			-- --log the inventory slot count to console
			-- log_crafting_Bonus(player)
		end
		if event.equipment.name == "uep-artificial-organ" then
			-- add the bonus
			player.character_health_bonus = health + 150
			-- -- bonus value
			-- uetotal.player.health = uetotal.player.health + 150
			-- --log the inventory slot count to console
			-- log_health_Bonus(player)
		end
		if event.equipment.name == "uep-portable-logistic-computer" then
			-- add the bonus
			player.character_logistic_slot_count_bonus = logisticSlots + 2
			-- -- bonus value
			-- uetotal.player.logisticSlots = uetotal.player.logisticSlots + 2
			-- --log the inventory slot count to console
			-- log_logistic_Bonus(player)
		end
		if event.equipment.name == "uep-additional-toolbelt" then
			-- add the bonus
			player.quickbar_count_bonus = quickbar + 1
			-- -- bonus value
			-- uetotal.player.quickbar = uetotal.player.quickbar + 1
			-- --log the inventory slot count to console
			-- log_quickbar_Bonus(player)
		end
		if event.equipment.name == "uep-portable-autotrash-computer" then
			-- add the bonus
			player.character_trash_slot_count_bonus = trashSlots + 2
			-- -- bonus value
			-- uetotal.player.trashSlots = uetotal.player.trashSlots + 2
			-- --log the inventory slot count to console
			-- log_trashSlots_Bonus(player)
		end
		if event.equipment.name == "uep-combet-control-module" then
			-- add the bonus
			player.character_maximum_following_robot_count_bonus = followingrobot + 1
			-- -- bonus value
			-- uetotal.player.followingrobot = uetotal.player.followingrobot + 1
			-- --log the inventory slot count to console
			-- log_followingrobot_Bonus(player)
		end
		if event.equipment.name == "uep-armor-pocket" then
			-- add the bonus
			player.character_inventory_slots_bonus = inventoryslots + 5
			-- -- bonus value
			-- uetotal.player.inventoryslots = uetotal.player.inventoryslots + 5
			-- --log the inventory slot count to console
			-- log_inventoryslots_Bonus(player)
		end
	end
end
)

-- Removed Equipment
script.on_event(defines.events.on_player_removed_equipment, function(event)
	local player = game.players[event.player_index]
	local armor = player.get_inventory(defines.inventory.player_armor)

	if player.character ~= nil then
		local crafting_speed_bonus = player.character_crafting_speed_modifier
		local health_bonus = player.character_health_bonus
		local logisti_slots_bonus = player.character_logistic_slot_count_bonus
		local quickbar_bonus = player.quickbar_count_bonus 
		
		--Added Xagros's UE
		local trashSlots_bonus = player.character_trash_slot_count_bonus
		local followingrobot_bonus = player.character_maximum_following_robot_count_bonus
		local inventoryslots_bonus = player.character_inventory_slots_bonus

		-- check if we are removing an armor pocket
		if event.equipment == "uep-craft-assistent" then
			if event.count >= 0 then

				local craftingCount = crafting_speed_bonus - (0.5 * event.count)
				if craftingCount >= 0 then
					-- subtract the inventory bonus multiplied by the number of equipment items removed
					crafting_speed_bonus = craftingCount
					-- set the player's inventory slot bonus count
					player.character_crafting_speed_modifier = crafting_speed_bonus
					-- -- bonus value
					-- uetotal.player.craftingSpeed = uetotal.player.craftingSpeed - (0.5 * event.count)
				end
			-- --log the inventory slot count to console
			-- log_crafting_Bonus(player)
			end
		end
		if event.equipment == "uep-artificial-organ" then
			if event.count >= 0 then

				local healthCount = health_bonus - (150 * event.count)
				
				if healthCount >= 0 then
					-- subtract the inventory bonus multiplied by the number of equipment items removed
					health_bonus = healthCount
					-- set the player's inventory slot bonus count
					player.character_health_bonus = health_bonus
					-- -- bonus value
					-- uetotal.player.health = uetotal.player.health - (150 * event.count)
				end
			-- --log the inventory slot count to console
			--log_health_Bonus(player)
			end
		end
		if event.equipment == "uep-portable-logistic-computer" then
			if event.count >= 0 then

				local logisticCount = logisti_slots_bonus - (2 * event.count)
				
				if logisticCount >= 0 then
					-- subtract the inventory bonus multiplied by the number of equipment items removed
					logisti_slots_bonus = logisticCount
					-- set the player's inventory slot bonus count
					player.character_logistic_slot_count_bonus = logisti_slots_bonus
					-- -- bonus value
					-- uetotal.player.logisticSlots = uetotal.player.logisticSlots - (2 * event.count)
				end
			-- --log the inventory slot count to console
			--log_logistic_Bonus(player)
			end
		end
		if event.equipment == "uep-additional-toolbelt" then
			if event.count >= 0 then

				local toolbeltCount = quickbar_bonus - (1 * event.count)
				
				if toolbeltCount >= 0 then
					-- subtract the inventory bonus multiplied by the number of equipment items removed
					quickbar_bonus = toolbeltCount
					-- set the player's inventory slot bonus count
					player.quickbar_count_bonus = quickbar_bonus
					-- -- bonus value
					-- uetotal.player.quickbar = uetotal.player.quickbar - (1 * event.count)
				end
			-- --log the inventory slot count to console
			--log_quickbar_Bonus(player)
			end
		end
		if event.equipment == "uep-portable-autotrash-computer" then
			if event.count >= 0 then

				local trashCount = trashSlots_bonus - (2 * event.count)
				
				if trashCount >= 0 then
					-- subtract the inventory bonus multiplied by the number of equipment items removed
					trashSlots_bonus = trashCount
					-- set the player's inventory slot bonus count
					player.character_trash_slot_count_bonus = trashSlots_bonus
					-- -- bonus value
					-- uetotal.player.trashSlots = uetotal.player.trashSlots - (2 * event.count)
				end
			-- --log the inventory slot count to console
			--log_trashSlots_Bonus(player)
			end
		end
		if event.equipment == "uep-combet-control-module" then
			if event.count >= 0 then

				local combetCount = followingrobot_bonus - (1 * event.count)
				
				if combetCount >= 0 then
					-- subtract the inventory bonus multiplied by the number of equipment items removed
					followingrobot_bonus = combetCount
					-- set the player's inventory slot bonus count
					player.character_maximum_following_robot_count_bonus = followingrobot_bonus
					-- -- bonus value
					-- uetotal.player.followingrobot = uetotal.player.followingrobot - (1 * event.count)
				end
			-- --log the inventory slot count to console
			--log_followingrobot_Bonus(player)
			end
		end
		if event.equipment == "uep-armor-pocket" then
			if event.count >= 0 then

				local slotCount = inventoryslots_bonus - (5 * event.count)

				if slotCount >= 0 then
					-- subtract the inventory bonus multiplied by the number of equipment items removed
					inventoryslots_bonus = slotCount

					-- set the player's inventory slot bonus count
					player.character_inventory_slots_bonus = inventoryslots_bonus
					-- -- bonus value
					-- uetotal.player.inventoryslots = uetotal.player.inventoryslots - (5 * event.count)
				end
			end			
			-- -- log the inventory slot count to console
			--log_inventoryslots_Bonus(player)
		end
	end
end
)

-- Changed Armor
script.on_event(defines.events.on_player_armor_inventory_changed, function(event)
	local player = game.players[event.player_index]
	local armor = player.get_inventory(defines.inventory.player_armor)

	if player.character ~= nil then
		-- check if an armor is equiped, before we do anything
		-- else we set the players inventory bonus count to zero
		if not armor.is_empty() then
			
			local total_crafting = 0
			local total_health = 0
			local total_logistic = 0
			local total_quickbar = 0

			local total_trash = 0
			local total_combet = 0
			local total_slots = 0

			local grid = armor[1].grid

			-- check if the armor has a grid
			if grid ~= nil then
				-- loop through the equipment in the grid
				for i = 1, #grid.equipment do
					-- if the equipment item at index is a pocket, we add bonus slots to the total
					if grid.equipment[i].name == "uep-craft-assistent" then
						total_crafting = total_crafting + 0.5
					end
					if grid.equipment[i].name == "uep-artificial-organ" then
						total_health = total_health + 150
					end
					if grid.equipment[i].name == "uep-portable-logistic-computer" then
						total_logistic = total_logistic + 2
					end
					if grid.equipment[i].name == "uep-additional-toolbelt" then
						total_quickbar = total_quickbar + 1
					end

					if grid.equipment[i].name == "uep-portable-autotrash-computer" then
						total_trash = total_trash + 2
					end
					if grid.equipment[i].name == "uep-combet-control-module" then
						total_combet = total_combet + 1
					end
					if grid.equipment[i].name == "uep-armor-pocket" then
						total_slots = total_slots + 5
					end
				end
				set_inventory1(player, total_crafting)
				set_inventory2(player, total_health)
				set_inventory3(player, total_logistic)
				set_inventory4(player, total_quickbar)

				set_inventory5(player, total_trash)
				set_inventory6(player, total_combet)
				set_inventory7(player, total_slots)
			else
				clear_all_bonuses(player)			
			end	
		else
			clear_all_bonuses(player)
		end
		-- -- log the inventory slot count to console
		-- log_crafting_Bonus(player)
		-- log_health_Bonus(player)
		-- log_logistic_Bonus(player)
		-- log_quickbar_Bonus(player)

		-- log_trashSlots_Bonus(player)
		-- log_followingrobot_Bonus(player)
		-- log_inventoryslots_Bonus(player)
	end
end
)

function clear_all_bonuses(player)
	player.character_crafting_speed_modifier = 0
	player.character_health_bonus = 0
	player.character_logistic_slot_count_bonus = 0
	player.quickbar_count_bonus = 0

	player.character_trash_slot_count_bonus = 0
	player.character_maximum_following_robot_count_bonus = 0
	player.character_inventory_slots_bonus = 0
	
	-- player.character_crafting_speed_modifier = player.character_crafting_speed_modifier - uetotal.player.craftingSpeed
	-- player.character_health_bonus = player.character_health_bonus - uetotal.player.health
	-- player.character_logistic_slot_count_bonus = player.character_logistic_slot_count_bonus - uetotal.player.logisticSlots
	-- player.quickbar_count_bonus = player.quickbar_count_bonus - uetotal.player.quickbar

	-- player.character_trash_slot_count_bonus = player.character_trash_slot_count_bonus - uetotal.player.trashSlots
	-- player.character_maximum_following_robot_count_bonus = player.character_maximum_following_robot_count_bonus - uetotal.player.followingrobot
	-- player.character_inventory_slots_bonus = player.character_inventory_slots_bonus - uetotal.player.inventoryslots

	-- uetotal.player.craftingSpeed = 0
	-- uetotal.player.health = 0
	-- uetotal.player.logisticSlots = 0
	-- uetotal.player.quickbar = 0
	
	-- uetotal.player.trashSlots = 0
	-- uetotal.player.followingrobot = 0
	-- uetotal.player.inventoryslots = 0
end

-- set the player's inventory slot bonus count to total_slots
function set_inventory1(player, count)
	player.character_crafting_speed_modifier = count
end
function set_inventory2(player, count)
	player.character_health_bonus = count
end
function set_inventory3(player, count)
	player.character_logistic_slot_count_bonus = count
end
function set_inventory4(player, count)
	player.quickbar_count_bonus = count
end
function set_inventory5(player, count)
	player.character_trash_slot_count_bonus = count
end
function set_inventory6(player, count)
	player.character_maximum_following_robot_count_bonus = count
end
function set_inventory7(player, count)
	player.character_inventory_slots_bonus = count
end
-- function set_inventory1(player, count)
	-- player.character_crafting_speed_modifier = player.character_crafting_speed_modifier - uetotal.player.craftingSpeed + count
	-- uetotal.player.craftingSpeed = count
-- end
-- function set_inventory2(player, count)
	-- player.character_health_bonus = player.character_health_bonus - uetotal.player.health + count
	-- uetotal.player.health = count
-- end
-- function set_inventory3(player, count)
	-- player.character_logistic_slot_count_bonus = player.character_logistic_slot_count_bonus - uetotal.player.logisticSlots + count
	-- uetotal.player.logisticSlots = count
-- end
-- function set_inventory4(player, count)
	-- player.quickbar_count_bonus = player.quickbar_count_bonus - uetotal.player.quickbar + count
	-- uetotal.player.quickbar = count
-- end
-- function set_inventory5(player, count)
	-- player.character_trash_slot_count_bonus = player.character_trash_slot_count_bonus - uetotal.player.trashSlots + count
	-- uetotal.player.trashSlots = count
-- end
-- function set_inventory6(player, count)
	-- player.character_maximum_following_robot_count_bonus = player.character_maximum_following_robot_count_bonus - uetotal.player.followingrobot + count
	-- uetotal.player.followingrobot = count
-- end
-- function set_inventory7(player, count)
	-- player.character_inventory_slots_bonus = player.character_inventory_slots_bonus - uetotal.player.inventoryslots + count
	-- uetotal.player.inventoryslots = count
-- end

-- log function
function log_crafting_Bonus(player)
	player.print("Character crafting speed: +" .. player.character_crafting_speed_modifier)	
end
function log_health_Bonus(player)
	player.print("Character health bonus: +" .. player.character_health_bonus)	
end
function log_logistic_Bonus(player)
	player.print("Character logistic slots bonus: +" .. player.character_logistic_slot_count_bonus)	
end
function log_quickbar_Bonus(player)
	player.print("Additional tool belts: +" .. player.quickbar_count_bonus)	
end
function log_trashSlots_Bonus(player)
	player.print("Bonus trash slots: +" .. player.character_trash_slot_count_bonus)	
end
function log_followingrobot_Bonus(player)
	player.print("Bonus following robot: +" .. player.character_maximum_following_robot_count_bonus)	
end
function log_inventoryslots_Bonus(player)
	player.print("Bonus inventory slots: +" .. player.character_inventory_slots_bonus)	
end

return useful_equipment