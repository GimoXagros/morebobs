--car
if data.raw["item-with-entity-data"]["car-flamer"] then
	data.raw["item-with-entity-data"]["car-flamer"].subgroup = "tank-other-vehicle"
	data.raw["item-with-entity-data"]["car-flamer"].order = "a-02[car-flamer]"
end

--tank
if data.raw["item-with-entity-data"]["mine-tank"] then
	data.raw["item-with-entity-data"]["mine-tank"].subgroup = "tank-other-tank"
	data.raw["item-with-entity-data"]["mine-tank"].order = "a-01[mine-tank]"
end
if data.raw["item-with-entity-data"]["rocket-tank"] then
	data.raw["item-with-entity-data"]["rocket-tank"].subgroup = "tank-other-tank"
	data.raw["item-with-entity-data"]["rocket-tank"].order = "a-02[rocket-tank]"
end
if data.raw["item"]["better-tank"] then
	data.raw["item"]["better-tank"].subgroup = "tank-other-tank"
	data.raw["item"]["better-tank"].order = "b-03[tank]"
end

--TFB!
if data.raw["item-with-entity-data"]["auto-tank"] then
	data.raw["item-with-entity-data"]["auto-tank"].subgroup = "tank-vehicle"
	data.raw["item-with-entity-data"]["auto-tank"].order = "a-01[auto-tank]"
end
if data.raw["item-with-entity-data"]["auto-tank-wlsk"] then
	data.raw["item-with-entity-data"]["auto-tank-wlsk"].subgroup = "tank-vehicle"
	data.raw["item-with-entity-data"]["auto-tank-wlsk"].order = "a-02[auto-tank-wlsk]"
end
if data.raw["item-with-entity-data"]["super-tank"] then
	data.raw["item-with-entity-data"]["super-tank"].subgroup = "tank-vehicle"
	data.raw["item-with-entity-data"]["super-tank"].order = "a-03[super-tank]"
end
if data.raw["item-with-entity-data"]["flame-tank"] then
	data.raw["item-with-entity-data"]["flame-tank"].subgroup = "tank-vehicle"
	data.raw["item-with-entity-data"]["flame-tank"].order = "b-01[flame-tank]"
end
if data.raw["item-with-entity-data"]["flame-tank-wlsk"] then
	data.raw["item-with-entity-data"]["flame-tank-wlsk"].subgroup = "tank-vehicle"
	data.raw["item-with-entity-data"]["flame-tank-wlsk"].order = "b-02[flame-tank-wlsk]"
end
if data.raw["item-with-entity-data"]["super-tank-alternate"] then
	data.raw["item-with-entity-data"]["super-tank-alternate"].subgroup = "tank-vehicle"
	data.raw["item-with-entity-data"]["super-tank-alternate"].order = "b-03[super-tank-alternate]"
end
if data.raw["item-with-entity-data"]["nade-tank"] then
	data.raw["item-with-entity-data"]["nade-tank"].subgroup = "tank-vehicle"
	data.raw["item-with-entity-data"]["nade-tank"].order = "c-01[nade-tank]"
end
if data.raw["item-with-entity-data"]["nade-tank-wlsk"] then
	data.raw["item-with-entity-data"]["nade-tank-wlsk"].subgroup = "tank-vehicle"
	data.raw["item-with-entity-data"]["nade-tank-wlsk"].order = "c-02[nade-tank-wlsk]"
end
if data.raw["item-with-entity-data"]["super-tank-wmd"] then
	data.raw["item-with-entity-data"]["super-tank-wmd"].subgroup = "tank-vehicle"
	data.raw["item-with-entity-data"]["super-tank-wmd"].order = "c-03[super-tank-wmd]"
end

--vhicleammo
if data.raw["ammo"]["rocket-magazine"] then
	data:extend({
		{
			type = "item-subgroup",
			name = "tank-ammo-3",
			group = "vehicles",
			order = "b-3",
		},
	})
	data.raw["ammo"]["rocketpack"].subgroup = "tank-ammo-3"
	data.raw["ammo"]["tank-wmd-ammo"].subgroup = "tank-ammo-3"
	data.raw["recipe"]["tank-wmd-ammo"].subgroup = "tank-ammo-3"
end

--infantry
if data.raw["item-with-inventory"]["blank-iron-backpack"] then
	data.raw["item-with-inventory"]["blank-iron-backpack"].subgroup = "tank-ammo-infantry"
	data.raw["item-with-inventory"]["blank-iron-backpack"].order = "c-01[backpack]"
end
if data.raw["item-with-inventory"]["blank-steel-backpack"] then
	data.raw["item-with-inventory"]["blank-steel-backpack"].subgroup = "tank-ammo-infantry"
	data.raw["item-with-inventory"]["blank-steel-backpack"].order = "c-02[2backpack]"
end
if data.raw["item-with-inventory"]["blank-alien-backpack"] then
	data.raw["item-with-inventory"]["blank-alien-backpack"].subgroup = "tank-ammo-infantry"
	data.raw["item-with-inventory"]["blank-alien-backpack"].order = "c-03[3backpack]"
end

--mine
if data.raw["item"]["last-stand-turret"] then
	data.raw["item"]["last-stand-turret"].subgroup = "mshinycombat1"
	data.raw["item"]["last-stand-turret"].order = "c-a[last-stand-turret]"
end

--capsule
if data.raw["capsule"]["acid-capsule"] then
	data.raw["capsule"]["acid-capsule"].subgroup = "mshinycombat3"
	data.raw["capsule"]["acid-capsule"].order = "a-03[poison-capsule]"
end
if data.raw["capsule"]["radiation-capsule"] then
	data.raw["capsule"]["radiation-capsule"].subgroup = "mshinycombat3"
	data.raw["capsule"]["radiation-capsule"].order = "a-04[slowdown-capsule]"
end

--walls
data:extend({
	{
		type = "item-subgroup",
		name = "shinywalls2",
		group = "combat",
		order = "c1-a",
	},
})
if data.raw["item"]["iron-wall"] then
	data.raw["item"]["iron-wall"].subgroup = "shinywalls1"
	data.raw["item"]["iron-wall"].order = "a[wall]-f[iron-wall]"
end
if data.raw["item"]["steel-walln"] then
	data.raw["item"]["steel-walln"].subgroup = "shinywalls1"
	data.raw["item"]["steel-walln"].order = "a[wall]-g[steel-wall]"
end
if data.raw["item"]["iron-gate"] then
	data.raw["item"]["iron-gate"].subgroup = "shinywalls2"
	data.raw["item"]["iron-gate"].order = "b[gate]-c[iron-gate]"
end
if data.raw["item"]["steel-gate"] then
	data.raw["item"]["steel-gate"].subgroup = "shinywalls2"
	data.raw["item"]["steel-gate"].order = "b[gate]-d[steel-gate]"
end

-- boards
if mods["bobelectronics"] then
	if data.raw["item-subgroup"]["bob-boards"] then
		if data.raw["item"]["wooden-board"] then
			data.raw["item"]["wooden-board"].subgroup = "bob-boards"
			data.raw["item"]["wooden-board"].order = "c-a1[wooden-board]"
		end
		if data.raw["item"]["basic-circuit-board"] then
			data.raw["item"]["basic-circuit-board"].subgroup = "bob-boards"
			data.raw["item"]["basic-circuit-board"].order = "c-a2[basic-circuit-board]"
		end
		if data.raw["item"]["electronic-circuit"] then
			data.raw["item"]["electronic-circuit"].subgroup = "bob-boards"
			data.raw["item"]["electronic-circuit"].order = "c-a3[electronic-circuit]"
		end
		if data.raw["item"]["phenolic-board"] then
			data.raw["item"]["phenolic-board"].subgroup = "bob-boards"
			data.raw["item"]["phenolic-board"].order = "c-a4[phenolic-board]"
		end
		if data.raw["item"]["circuit-board"] then
			data.raw["item"]["circuit-board"].subgroup = "bob-boards"
			data.raw["item"]["circuit-board"].order = "c-a5[circuit-board]"
		end
		if data.raw["item"]["advanced-circuit"] then
			data.raw["item"]["advanced-circuit"].subgroup = "bob-boards"
			data.raw["item"]["advanced-circuit"].order = "c-a6[advanced-circuit]"
		end
	end
	if data.raw["item-subgroup"]["bob-electronic-boards"] then
		if data.raw["item"]["fibreglass-board"] then
			data.raw["item"]["fibreglass-board"].subgroup = "bob-electronic-boards"
			data.raw["item"]["fibreglass-board"].order = "c-a1[fibreglass-board]"
		end
		if data.raw["item"]["superior-circuit-board"] then
			data.raw["item"]["superior-circuit-board"].subgroup = "bob-electronic-boards"
			data.raw["item"]["superior-circuit-board"].order = "c-a2[superior-circuit-board]"
		end
		if data.raw["item"]["processing-unit"] then
			data.raw["item"]["processing-unit"].subgroup = "bob-electronic-boards"
			data.raw["item"]["processing-unit"].order = "c-a3[processing-unit]"
		end
		if data.raw["item"]["multi-layer-circuit-board"] then
			data.raw["item"]["multi-layer-circuit-board"].subgroup = "bob-electronic-boards"
			data.raw["item"]["multi-layer-circuit-board"].order = "c-a4[multi-layer-circuit-board]"
		end
		if data.raw["item"]["advanced-processing-unit"] then
			data.raw["item"]["advanced-processing-unit"].subgroup = "bob-electronic-boards"
			data.raw["item"]["advanced-processing-unit"].order = "c-a5[advanced-processing-unit]"
		end
	end
end
	
-- endgamecombet
if settings.startup["moreshinybobs-order-endgamecombet"] and settings.startup["moreshinybobs-order-endgamecombet"].value == true then
	require("endgamecombet")
end

if data.raw["armor"]["power-armor-3"] then
	data.raw["armor"]["power-armor-3"].order = "e[power-armor-mk3]"
end
if data.raw["item"]["advanced-laser-defense-equipment"] then
	data.raw["item"]["advanced-laser-defense-equipment"].order = "d[active-defense]-a[personal-laser-defense-equipment]-ADV"
end
if data.raw["item"]["poison-cloud-equipment"] then
	data.raw["item"]["poison-cloud-equipment"].order = "d[active-defense]-c[cloud-dump-equipment-1]"
end
if data.raw["item"]["fire-spraying-equipment"] then
	data.raw["item"]["fire-spraying-equipment"].order = "d[active-defense]-c[cloud-dump-equipment-2]"
end
if data.raw["item"]["acid-spraying-equipment"] then
	data.raw["item"]["acid-spraying-equipment"].order = "d[active-defense]-c[cloud-dump-equipment-3]"
end
if data.raw["item"]["radiation-spraying-equipment"] then
	data.raw["item"]["radiation-spraying-equipment"].order = "d[active-defense]-c[cloud-dump-equipment-4]"
end
if data.raw["item"]["big-radar"] then
	data.raw["item"]["big-radar"].order = "d[radar]-b[big-radar]"
end
if data.raw["item"]["orbital-destroyer"] then
	data.raw["item"]["orbital-destroyer"].order = "d[radar]-b[orbital-destroyer]"
end
if data.raw["item"]["orbital-scanner"] then
	data.raw["item"]["orbital-scanner"].order = "f[remote]-a[orbital-destroyer]"
end
if data.raw["item"]["orbital-manual-target"] then
	data.raw["item"]["orbital-manual-target"].order = "f[remote]-b[orbital-destroyer]"
end
if data.raw["item"]["small-shield-dome"] then
	data.raw["item"]["small-shield-dome"].order = "b[shield-dome]-a[shield-dome-1]"
end
if data.raw["item"]["medium-shield-dome"] then
	data.raw["item"]["medium-shield-dome"].order = "b[shield-dome]-a[shield-dome-2]"
end
if data.raw["item"]["big-shield-dome"] then
	data.raw["item"]["big-shield-dome"].order = "b[shield-dome]-a[shield-dome-3]"
end
if data.raw["item"]["spiked-wall"] then
	data.raw["item"]["spiked-wall"].order = "a[stone-wall]-a[stone-wall]-SPIKED"
end
if data.raw["item"]["tough-wall"] then
	data.raw["item"]["tough-wall"].order = "a[tough-wall]-a[tough-wall]"
end
if data.raw["item"]["tough-spiked-wall"] then
	data.raw["item"]["tough-spiked-wall"].order = "a[tough-wall]-a[tough-wall]-SPIKED"
end
if data.raw["item-group"]["vehicles"] then
	if data.raw["recipe"]["biter-cooking"] then
		data.raw["recipe"]["biter-cooking"].subgroup = "tank-ammo-infantry"
		data.raw["recipe"]["biter-cooking"].order = "a-03[cooked-biter]"
	end
else
	if data.raw["recipe"]["biter-cooking"] then
		data.raw["recipe"]["biter-cooking"].subgroup = "raw-material"
		data.raw["recipe"]["biter-cooking"].order = "k[cooked-biter]"
	end
end
if data.raw["recipe"]["biter-fuel"] then
	data.raw["recipe"]["biter-fuel"].subgroup = "fluid-recipes"
	data.raw["recipe"]["biter-fuel"].order = "b[fluid-chemistry]-f[biter-fuel]"
end
if data.raw["item"]["concussion-turret"] then
	data.raw["item"]["concussion-turret"].order = "b[turret]-a[gun-turret]-ADV"
end
if data.raw["item"]["plasma-turret"] then
	data.raw["item"]["plasma-turret"].order = "b[turret]-b[laser-turret]-ADV"
end
if data.raw["item"]["shockwave-turret"] then
	data.raw["item"]["shockwave-turret"].order = "b[turret]-b[tesla-turret]-ADV"
end
if data.raw["item"]["acid-turret"] then
	data.raw["item"]["acid-turret"].order = "b[turret]-c[flamethrower-turret]-ADV"
end
if data.raw["item"]["cannon-turret"] then
	data.raw["item"]["cannon-turret"].order = "b[turret]-d[artillery-turret]-ADV"
end