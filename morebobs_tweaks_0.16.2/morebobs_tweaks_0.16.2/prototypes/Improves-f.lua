-- Bio Industries
if data.raw["item"]["bi-wooden-fence"] then data.raw["item"]["bi-wooden-fence"].icon = "__morebobs_tweaks__/graphics/icons/wooden-fence.png" end
if data.raw["item"]["bi-wooden-fence"] then data.raw["wall"]["bi-wooden-fence"].icon = "__morebobs_tweaks__/graphics/icons/wooden-fence.png" end
if data.raw["item"]["stone-crushed"] then data.raw["item"]["stone-crushed"].stack_size = 200 end
if data.raw["item"]["bi-woodpulp"] then data.raw["item"]["bi-woodpulp"].stack_size = 200 end
if data.raw["ammo-turret"]["bi-arboretum-area"] then
	data.raw["ammo-turret"]["bi-arboretum-area"].flags = { "not-deconstructable", "not-on-map", "not-repairable" }
end
if data.raw["radar"]["bi-arboretum-radar"] then
	data.raw["radar"]["bi-arboretum-radar"].collision_box = {{-0.65, -1.00}, {0.75, 0.40}}
	data.raw["radar"]["bi-arboretum-radar"].selection_box = {{-0.70, -1.05}, {0.80, 0.45}}
	data.raw["radar"]["bi-arboretum-radar"].flags = {"placeable-player", "player-creation", "not-deconstructable", "not-on-map", "hide-alt-info", "not-blueprintable"}
end
if data.raw["assembling-machine"]["bi-arboretum"] then
	data.raw["assembling-machine"]["bi-arboretum"].flags = {"placeable-neutral", "placeable-player", "player-creation", "not-blueprintable"}
end