--More Shiny bob!
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
