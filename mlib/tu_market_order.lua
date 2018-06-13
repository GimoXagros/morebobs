-- TUONELA
-- A Xagros creation
-- Sets the sales item of the market.

market_prices =
{
  ["coal"]=5,
  ["crude-oil-barrel"]=150,
  ["sulfur"]=10,
  ["raw-wood"]=1,
  ["raw-fish"]=1,
  ["transport-belt"]=5,
  ["underground-belt"]=20,
  ["fast-transport-belt"]=50,
  ["fast-underground-belt"]=200,
  ["express-transport-belt"]=150,
  ["express-underground-belt"]=500,
  ["splitter"]=25,
  ["fast-splitter"]=50,
  ["express-splitter"]=200,
  ["burner-inserter"]=10,
  ["inserter"]=10,
  ["long-handed-inserter"]=15,
  ["fast-inserter"]=20,
  ["filter-inserter"]=35,
  ["loader"]=100,
  ["fast-loader"]=500,
  ["express-loader"]=1000,
  ["player-port"]=3000,
  ["red-wire"]=2,
  ["green-wire"]=2,
  ["wooden-chest"]=5,
  ["iron-chest"]=10,
  ["steel-chest"]=25,
  ["stone-furnace"]=10,
  ["steel-furnace"]=50,
  ["electric-furnace"]=70,
  ["offshore-pump"]=10,
  ["pipe"]=5,
  ["pipe-to-ground"]=20,
  ["boiler"]=15,
  ["steam-engine"]=50,
  ["steam-turbine"]=250,
  ["small-electric-pole"]=10,
  ["medium-electric-pole"]=50,
  ["big-electric-pole"]=100,
  ["solar-panel"]=150,
  ["substation"]=150,
  ["accumulator"]=150,
  ["assembling-machine-1"]=30,
  ["assembling-machine-2"]=50,
  ["assembling-machine-3"]=100,
  ["electric-mining-drill"]=50,
  ["burner-mining-drill"]=10,
  ["pumpjack"]=50,
  ["oil-refinery"]=100,
  ["chemical-plant"]=50,
  ["storage-tank"]=40,
  ["pump"]=20,
  ["logistic-robot"]=150,
  ["logistic-chest-passive-provider"]=50,
  ["logistic-chest-requester"]=50,
  ["radar"]=1500,
  ["light-armor"]=10,
  ["heavy-armor"]=50,
  ["modular-armor"]=100,
  ["power-armor"]=500,
  ["power-armor-mk2"]=1500,
  ["rail"]=5,
  ["stone-wall"]=10,
  ["gate"]=25,
  ["landfill"]=50,
	--tuonela
  ["supply_box_b"]=550,
  ["supply_box_g"]=250,
  ["supply_box_y"]=350,
}

shops =
{
	fishhut_items =
  {
		"raw-fish",
		"stone-wall",
		"gate",
		"rail",
		"radar",
		"player-port",
		"power-armor",
		"supply_box_b",
		"supply_box_g",
		"supply_box_y"
  },
	base_items =
  {
		"raw-wood",
		"transport-belt",
		"underground-belt",
		"burner-inserter",
		"inserter",
		"splitter",
		"loader",
		"stone-furnace",
		"offshore-pump",
		"pipe",
		"boiler",
		"steam-engine",
		"solar-panel",
		"wooden-chest",
		"iron-chest",
		"small-electric-pole",
		"assembling-machine-1",
		"burner-mining-drill",
		"light-armor",
		"heavy-armor"
  },
	mid_items =
  {
		"coal",
		"fast-transport-belt",
		"fast-underground-belt",
		"burner-inserter",
		"long-handed-inserter",
		"fast-splitter",
		"fast-loader",
		"steel-furnace",
		"pumpjack",
		"pipe",
		"oil-refinery",
		"chemical-plant",
		"pump",
		"pipe-to-ground",
		"storage-tank",
		"medium-electric-pole",
		"big-electric-pole",
		"assembling-machine-2",
		"electric-mining-drill",
		"modular-armor"
  },
	last_items =
  {
		"crude-oil-barrel",
		"sulfur",
		"express-transport-belt",
		"express-underground-belt",
		"filter-inserter",
		"fast-inserter",
		"express-splitter",
		"express-loader",
		"electric-furnace",
		"red-wire",
		"green-wire",
		"logistic-robot",
		"logistic-chest-passive-provider",
		"logistic-chest-requester",
		"steel-chest",
		"accumulator",
		"substation",
		"steam-turbine",
		"assembling-machine-3",
		"landfill",
		"power-armor-mk2"
  },
}

function market_make_offer(item)
  if not market_prices[item] then game.print(item.." price is not defined. Please report this on the factorio bug forum") return end
  return {price={{"coin", market_prices[item]}}, offer={type="give-item", item=item}}
end

function market_matching(shops, shop, market_cnt)
	if market_cnt == 2 then
		global.market1 = {shop.name, shop.position}
		local market1 = game.surfaces[1].find_entity(global.market1[1], global.market1[2])
		for index, item in pairs(shops.offers1) do
			market1.add_market_item(item)
		end
		market1_build_comp = true
	elseif market_cnt == 0 then
		global.market2 = {shop.name, shop.position}
		local market2 = game.surfaces[1].find_entity(global.market2[1], global.market2[2])
		for index, item in pairs(shops.offers2) do
			market2.add_market_item(item)
		end
		market2_build_comp = true
	elseif market_cnt == 1 then
		global.market3 = {shop.name, shop.position}
		local market3 = game.surfaces[1].find_entity(global.market3[1], global.market3[2])
		for index, item in pairs(shops.offers3) do
			market3.add_market_item(item)
		end
		market3_build_comp = true
	elseif market_cnt == 3 then
		global.market4 = {shop.name, shop.position}
		local market4 = game.surfaces[1].find_entity(global.market4[1], global.market4[2])
		for index, item in pairs(shops.offers4) do
			market4.add_market_item(item)
		end
		market4_build_comp = true
	end
end