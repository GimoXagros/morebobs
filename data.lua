if settings.startup["enable-tuonelatweaks"] and settings.startup["enable-tuonelatweaks"].value == true then
	if not tuonela then tuonela = {} end
	if settings.startup["enable-tanks_for_bob"] and settings.startup["enable-tanks_for_bob"].value == true then
		require("prototypes.steel-wall")
		require('prototypes/tuonelaaddon')
	end
	if settings.startup["tuonelatweaks-mint"] and settings.startup["tuonelatweaks-mint"].value == true then
		require('prototypes/tuonelamint')
	end
end

if settings.startup["enable-uequipmenttesla"] and settings.startup["enable-uequipmenttesla"].value == true then
	require("prototypes.useful_equipment.equipment")
	require("prototypes.useful_equipment.item")
	require("prototypes.useful_equipment.recipe")
	require("prototypes.useful_equipment.technology")
	require("prototypes.TeslaTurret.TeslaTurret")
end

if settings.startup["enable-reactorplus"] and settings.startup["enable-reactorplus"].value == true then
	require("prototypes.reactorinterface")
end

if settings.startup["enable-bioindustries"] and settings.startup["enable-bioindustries"].value == true then
	if data.raw["item"]["stone-crushed"] then data.raw["item"]["stone-crushed"].stack_size = 400 end
	if data.raw["item"]["bi-woodpulp"] then data.raw["item"]["bi-woodpulp"].stack_size = 400 end
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
end

if settings.startup["enable-bobsweaponSoundsRedone"] and settings.startup["enable-bobsweaponSoundsRedone"].value == true then
	if mods["bobwarfare"] then
		if mods["weaponSoundsRedone"] then
			if data.raw.gun["gatling-gun"].attack_parameters.sound then
				data.raw.gun["gatling-gun"].attack_parameters.sound = 
				{
					filename = "__morebobs__/sounds/gatling-gun.ogg",
					volume = 0.6
				}
			end
			if data.raw.gun["rifle"].attack_parameters.sound then
				data.raw.gun["rifle"].attack_parameters.sound = 
				{
					filename = "__morebobs__/sounds/rifle.ogg",
					volume = 0.6
				}
			end
			if data.raw.gun["sniper-rifle"].attack_parameters.sound then
				data.raw.gun["sniper-rifle"].attack_parameters.sound = 
				{
					filename = "__morebobs__/sounds/sniper-rifle.ogg",
					volume = 0.7
				}
			end

			if settings.startup["wsr-replace-turret-sound"] and settings.startup["wsr-replace-turret-sound"].value then
				for i=2,5 do
					data.raw["ammo-turret"]["bob-gun-turret-"..i].attack_parameters.sound =
					{
						filename = "__weaponSoundsRedone__/sounds/turret_fire.ogg",
						volume = 0.5
					}
				end
			else
				for i=2,5 do
					data.raw["ammo-turret"]["bob-gun-turret-"..i].attack_parameters.sound =
					{
						{
							filename = "__base__/sound/fight/heavy-gunshot-1.ogg",
							volume = 0.45
						},
						{
							filename = "__base__/sound/fight/heavy-gunshot-2.ogg",
							volume = 0.45
						},
						{
							filename = "__base__/sound/fight/heavy-gunshot-3.ogg",
							volume = 0.45
						},
						{
							filename = "__base__/sound/fight/heavy-gunshot-4.ogg",
							volume = 0.45
						}
					}
				end
			end
		end

		if mods["EnhancedArtillerySounds"] then
			for i=2,3 do
				data.raw.item["bob-artillery-turret-"..i].sound =
				{
					filename = "__EnhancedArtillerySounds__/sounds/large-explosion-2.ogg",
					volume = 1
				}

				data.raw.gun["bob-artillery-wagon-cannon-"..i].attack_parameters.sound =
				{
					filename = "__EnhancedArtillerySounds__/sounds/large-explosion-2.ogg",
					volume = 1
				}
			end
		end
	end
end

if settings.startup["enable-tanks_for_bob"] and settings.startup["enable-tanks_for_bob"].value == true then
	require("prototypes.tanks_for_bob.tanks_data")
end

--RQ Tech Fix
require('prototypes/rqtechfixed')