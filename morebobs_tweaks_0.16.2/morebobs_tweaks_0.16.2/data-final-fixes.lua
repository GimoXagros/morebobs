if settings.startup["enable-morebobsimprove"] and settings.startup["enable-morebobsimprove"].value == true then
	require('prototypes/Improves-s')
end

if settings.startup["enable-morebobstweaks"] and settings.startup["enable-morebobsimprove"].value == true then
	require('prototypes/tweaks')
end