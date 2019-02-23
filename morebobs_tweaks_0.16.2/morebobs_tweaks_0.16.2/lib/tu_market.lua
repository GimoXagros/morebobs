-- TUONELA
-- A Xagros creation
-- Generate market on field.

require "tu_market_order"

shops.offers1 = {}
shops.offers2 = {}
shops.offers3 = {}
shops.offers4 = {}
market_cnt = 0

for _, item in ipairs(shops.fishhut_items) do
	shops.offers1[#shops.offers1 + 1] = market_make_offer(item)
end

for _, item in ipairs(shops.base_items) do
	shops.offers2[#shops.offers2 + 1] = market_make_offer(item)
end

for _, item in ipairs(shops.mid_items) do
	shops.offers3[#shops.offers3 + 1] = market_make_offer(item)
end

for _, item in ipairs(shops.last_items) do
	shops.offers4[#shops.offers4 + 1] = market_make_offer(item)
end

function market_spawning(event)
	if event.entity.type == "unit-spawner" and market_cnt < 4 then
		if math.random(100) == 1 then
			local shop = event.entity.surface.create_entity({name = "market", position = event.entity.position, force = "neutral"})
			shop.minable = false
			shop.destructible = false
			market_matching(shops, shop, market_cnt)
			market_cnt = market_cnt + 1
		end
	end
end