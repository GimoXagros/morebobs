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

--Tesla tweaks
if mods["Induction Charging"] then
	if mods["Robocharger"] then
		data.raw["technology"]["robocharger"].prerequisites = {"construction-robotics", "induction1"}
		data.raw["technology"]["robocharger"].icon = "__morebobs_usefulsomething__/graphics/technology/robot-charge-port.png"
		data.raw["technology"]["robocharger"].icon_size = 128
	end
	-- if data.raw["recipe"]["teslacharger"] then data.raw["recipe"]["teslacharger"].enabled = "false" end
	-- if data.raw["recipe"]["teslacharger"] then table.insert(data.raw["technology"]["induction3"].effects,{type="unlock-recipe",recipe="teslacharger"}) end
	if data.raw["technology"]["induction3"] then
		data.raw["technology"]["induction3"].prerequisites = {"flying", "induction2"}
	end
	if data.raw["technology"]["induction4"] then
		if data.raw["technology"]["electric-vehicles-high-voltage-transformer"] then
			data.raw["technology"]["induction4"].prerequisites = {"electric-vehicles-high-voltage-transformer", "induction3"}
		end
	end
	if data.raw["technology"]["induction5"] then
		data.raw["technology"]["induction5"].prerequisites = {"rocket-silo", "induction4"}
	end
	if data.raw["technology"]["tesla-turret"] then
		if data.raw["technology"]["bob-laser-turrets-3"] then
			data.raw["technology"]["tesla-turret"].prerequisites = {"bob-laser-turrets-3", "advanced-electronics-2", "induction2"}
		else
			data.raw["technology"]["tesla-turret"].prerequisites = {"laser-turrets", "advanced-electronics-2", "induction2"}
		end
	end
end