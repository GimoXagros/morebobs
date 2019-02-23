-- RQ Tech Fix
require('prototypes/rqtechfixed')

if settings.startup["enable-morebobsimprove"] and settings.startup["enable-morebobsimprove"].value == true then
	require('prototypes/Improves-f')
end

if settings.startup["enable-morebobsaddon"] and settings.startup["enable-morebobsaddon"].value == true then
	require('prototypes/tuonelaaddon')
	require('prototypes/tuonelamint')
end
