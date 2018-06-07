local teslaIngredients = {}

local function ing(standard, c1, fallback, c2)
	if (data.raw["recipe"][standard] ~= nil or data.raw["recipe"]["bob-"..standard] ~= nil) then
		teslaIngredients[standard] = c1
	else
		teslaIngredients[fallback] = (teslaIngredients[fallback] or 0) + c2
	end
end

ing("processing-unit", 5)
ing("lithium-ion-battery", 20, "accumulator", 5)
ing("gold-plate", 10, "steel-plate", 20)
ing("titanium-plate", 10, "steel-plate", 40)
ing("tungsten-plate", 10, "steel-plate", 40)

local ingredients = {}

for name, c in pairs(teslaIngredients) do
  table.insert(ingredients, {name, c})  
end

data.raw["recipe"]["tesla-turret"].ingredients = ingredients