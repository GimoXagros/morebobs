-- TUONELA
-- A Xagros creation
-- Generate market on field.

require "event"
require "market_order"

shops.offers1 = {}
shops.offers2 = {}
shops.offers3 = {}
shops.offers4 = {}

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

-- get shops
Event.register(Event.core_events.init, function()
	market_init(shops)
end)