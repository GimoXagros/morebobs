--More Shiny bob!

--logistics
if data.raw["item-group"]["logistics"] then
	--chests
	if data.raw["item-subgroup"]["shinychests1"] then
		data:extend({
		  {
				type = "item-subgroup",
				name = "shinychests1MS",
				group = "logistics",
				order = "a-10",
		  },
		})
		if mods["ammo-loader"] then
			if data.raw["item"]["ammo-loader-chest"] then
				data.raw["item"]["ammo-loader-chest"].subgroup = "shinychests1MS"
				data.raw["item"]["ammo-loader-chest"].order = "a-a[ammo-loader-chest]"
			end
			if data.raw["item"]["fuel-loader-chest"] then
				data.raw["item"]["fuel-loader-chest"].subgroup = "shinychests1MS"
				data.raw["item"]["fuel-loader-chest"].order = "a-b[fuel-loader-chest]"
			end
			if data.raw["item"]["Artifact-collector-area"] then
				data.raw["item"]["Artifact-collector-area"].subgroup = "shinychests1MS"
				data.raw["item"]["Artifact-collector-area"].order = "a-c[Artifact-collector]"
			end
			if data.raw["item"]["item-collector-base-item-collector"] then
				data.raw["item"]["item-collector-base-item-collector"].subgroup = "shinychests1MS"
				data.raw["item"]["item-collector-base-item-collector"].order = "a-d[item-collector]"
			end
		else
			if data.raw["item"]["Artifact-collector-area"] then
				data.raw["item"]["Artifact-collector-area"].subgroup = "shinychests1"
				data.raw["item"]["Artifact-collector-area"].order = "a9-a[Artifact-collector]"
			end
			if data.raw["item"]["item-collector-base-item-collector"] then
				data.raw["item"]["item-collector-base-item-collector"].subgroup = "shinychests1"
				data.raw["item"]["item-collector-base-item-collector"].order = "a9-b[item-collector]"
			end
		end
	end
	if data.raw["item-group"]["bob-logistics"] then
		if data.raw["item-subgroup"]["shinylogchests4"] then
			data:extend({
			  {
					type = "item-subgroup",
					name = "shinylogchests5",
					group = "bob-logistics",
					order = "l6-a",
			  },
			})
			if data.raw["item"]["warehouse-passive-provider"] then
				data.raw["item"]["warehouse-passive-provider"].subgroup = "shinylogchests5"
				data.raw["item"]["warehouse-passive-provider"].order = "a1-b[logistic-warehouse]"
			end
			if data.raw["item"]["warehouse-active-provider"] then
				data.raw["item"]["warehouse-active-provider"].subgroup = "shinylogchests5"
				data.raw["item"]["warehouse-active-provider"].order = "a2-b[logistic-warehouse]"
			end
			if data.raw["item"]["warehouse-storage"] then
				data.raw["item"]["warehouse-storage"].subgroup = "shinylogchests5"
				data.raw["item"]["warehouse-storage"].order = "a3-b[logistic-warehouse]"
			end
			if data.raw["item"]["warehouse-requester"] then
				data.raw["item"]["warehouse-requester"].subgroup = "shinylogchests5"
				data.raw["item"]["warehouse-requester"].order = "a4-b[logistic-warehouse]"
			end
			if data.raw["item"]["warehouse-buffer"] then
				data.raw["item"]["warehouse-buffer"].subgroup = "shinylogchests5"
				data.raw["item"]["warehouse-buffer"].order = "a5-b[logistic-warehouse]"
			end
			if data.raw["item-group"]["angels-logistics"] then
				if data.raw["item-subgroup"]["shinyangellogchest1"] then
					data.raw["item-subgroup"]["shinyangellogchest1"].group = "angels-logistics"
					data.raw["item-subgroup"]["shinyangellogchest1"].order = "a3"
				end
				data:extend({
				  {
						type = "item-subgroup",
						name = "mshinyangellogchest1",
						group = "angels-logistics",
						order = "a4-a",
				  }
				})
				if data.raw["item"]["silo-passive-provider"] then
					data.raw["item"]["silo-passive-provider"].subgroup = "mshinyangellogchest1"
					data.raw["item"]["silo-passive-provider"].order = "a1-a[angels-logistic-silo]"
				end
				if data.raw["item"]["silo-active-provider"] then
					data.raw["item"]["silo-active-provider"].subgroup = "mshinyangellogchest1"
					data.raw["item"]["silo-active-provider"].order = "a2-a[angels-logistic-silo]"
				end
				if data.raw["item"]["silo-storage"] then
					data.raw["item"]["silo-storage"].subgroup = "mshinyangellogchest1"
					data.raw["item"]["silo-storage"].order = "a3-a[angels-logistic-silo]"
				end
				if data.raw["item"]["silo-requester"] then
					data.raw["item"]["silo-requester"].subgroup = "mshinyangellogchest1"
					data.raw["item"]["silo-requester"].order = "a4-a[angels-logistic-silo]"
				end
				if data.raw["item-subgroup"]["shinyangellogchest2"] then
					data.raw["item-subgroup"]["shinyangellogchest2"].group = "angels-logistics"
					data.raw["item-subgroup"]["shinyangellogchest2"].order = "a4-b"
				end
			end
		end
	end

	--loader+
	if data.raw["item-subgroup"]["shinybelt6"] then
		if mods["DeadlockLoaders"] then
			data:extend({
			  {
					type = "item-subgroup",
					name = "shinybelt7MS",
					group = "logistics",
					order = "b-3a",
			  },
			})
			if data.raw["recipe"]["deadlock-loader-0"] then
				data.raw["recipe"]["deadlock-loader-0"].subgroup = "shinybelt7MS"
				data.raw["recipe"]["deadlock-loader-0"].order = "a-01[deadlock-loader]"
			end
			if data.raw["recipe"]["deadlock-loader-1"] then
				data.raw["recipe"]["deadlock-loader-1"].subgroup = "shinybelt7MS"
				data.raw["recipe"]["deadlock-loader-1"].order = "a-02[deadlock-loader]"
			end
			if data.raw["recipe"]["deadlock-loader-2"] then
				data.raw["recipe"]["deadlock-loader-2"].subgroup = "shinybelt7MS"
				data.raw["recipe"]["deadlock-loader-2"].order = "a-03[deadlock-loader]"
			end
			if data.raw["recipe"]["deadlock-loader-3"] then
				data.raw["recipe"]["deadlock-loader-3"].subgroup = "shinybelt7MS"
				data.raw["recipe"]["deadlock-loader-3"].order = "a-04[deadlock-loader]"
			end
			if data.raw["recipe"]["deadlock-loader-4"] then
				data.raw["recipe"]["deadlock-loader-4"].subgroup = "shinybelt7MS"
				data.raw["recipe"]["deadlock-loader-4"].order = "a-05[deadlock-loader]"
			end
			if data.raw["recipe"]["deadlock-loader-5"] then
				data.raw["recipe"]["deadlock-loader-5"].subgroup = "shinybelt7MS"
				data.raw["recipe"]["deadlock-loader-5"].order = "a-06[deadlock-loader]"
			end
		end
	end
	if data.raw["item-subgroup"]["shinybelt1"] then
		if data.raw["item"]["wooden-belt"] then
			data.raw["item"]["wooden-belt"].subgroup = "shinybelt1"
			data.raw["item"]["wooden-belt"].order = "a0"
		end
	end

	--poles
	require("pole-order")
	require("lighted-pole-order")

	--pump+
	if data.raw["item-subgroup"]["shinyvalve1"] then
		if data.raw["item-group"]["angels-fluid-control"] then
			data:extend({
			  {
					type = "item-subgroup",
					name = "shinyvalve2",
					group = "angels-fluid-control",
					order = "a-1A",
			  },
			})
			if data.raw["item-subgroup"]["shinypumps1"] then
				data.raw["item-subgroup"]["shinypumps1"].group = "angels-fluid-control"
				data.raw["item-subgroup"]["shinypumps1"].order = "a-1B"
			end
		elseif data.raw["item-group"]["bob-logistics"] then
			data:extend({
			  {
					type = "item-subgroup",
					name = "shinyvalve2",
					group = "bob-logistics",
					order = "c-2A",
			  },
			})
			if data.raw["item-subgroup"]["shinypumps1"] then
				data.raw["item-subgroup"]["shinypumps1"].group = "bob-logistics"
				data.raw["item-subgroup"]["shinypumps1"].order = "c-2B"
			end
		end
		if data.raw["item-subgroup"]["shinyvalve2"] then
			if data.raw["item"]["pipe-meter"] then
				data.raw["item"]["pipe-meter"].subgroup = "shinyvalve2"
				data.raw["item"]["pipe-meter"].order = "a-01[pipe-meter]"
			end
			if data.raw["item"]["bob-valve"] then
				data.raw["item"]["bob-valve"].subgroup = "shinyvalve2"
				data.raw["item"]["bob-valve"].order = "a-02[pipe-meter]"
			end
			if data.raw["item"]["check-valve"] then
				data.raw["item"]["check-valve"].subgroup = "shinyvalve2"
				data.raw["item"]["check-valve"].order = "b-01[check-valve]"
			end
			if data.raw["item"]["overflow-valve"] then
				data.raw["item"]["overflow-valve"].subgroup = "shinyvalve2"
				data.raw["item"]["overflow-valve"].order = "b-02[overflow-valve]"
			end
			if data.raw["item"]["underflow-valve"] then
				data.raw["item"]["underflow-valve"].subgroup = "shinyvalve2"
				data.raw["item"]["underflow-valve"].order = "b-03[underflow-valve]"
			end
		end
	end
	--rail
	data:extend({
	  {
			type = "item-subgroup",
			name = "transportetc",
			group = "logistics",
			order = "e-0",
	  },
	})
	if data.raw["item"]["rail-signal"] then
		data.raw["item"]["rail-signal"].subgroup = "transportetc"
		data.raw["item"]["rail-signal"].order = "a-01[rail-signal]"
	end
	if data.raw["item"]["rail-chain-signal"] then
		data.raw["item"]["rail-chain-signal"].subgroup = "transportetc"
		data.raw["item"]["rail-chain-signal"].order = "a-02[rail-chain-signal]"
	end
	if data.raw["item"]["train-limit"] then
		data.raw["item"]["train-limit"].subgroup = "transportetc"
		data.raw["item"]["train-limit"].order = "b-01[train-limit]"
	end
	if data.raw["item"]["train-unlimit"] then
		data.raw["item"]["train-unlimit"].subgroup = "transportetc"
		data.raw["item"]["train-unlimit"].order = "b-02[placed-train-limit]"
	end
	if data.raw["item"]["railloader"] then
		data.raw["item"]["railloader"].subgroup = "transportetc"
		data.raw["item"]["railloader"].order = "c-01[railloader]"
	end
	if data.raw["item"]["railunloader"] then
		data.raw["item"]["railunloader"].subgroup = "transportetc"
		data.raw["item"]["railunloader"].order = "c-02[railunloader]"
	end
	--bot
	if data.raw["item-subgroup"]["shinycharger1"] then
		if data.raw["item"]["robocharger"] then
			data.raw["item"]["robocharger"].subgroup = "shinycharger1"
			data.raw["item"]["robocharger"].order = "c-01[robocharger]"
		end
	end
	if data.raw["item-subgroup"]["shinybots1"] then
		if data.raw["recipe"]["broken-construction-robot"] then
			data.raw["recipe"]["broken-construction-robot"].subgroup = "shinybots1"
			data.raw["recipe"]["broken-construction-robot"].order = "b1-a[construction-robot]"
		end
	end
	if data.raw["item-subgroup"]["shinybots2"] then
		if data.raw["recipe"]["broken-logistic-robot"] then
			data.raw["recipe"]["broken-logistic-robot"].subgroup = "shinybots2"
			data.raw["recipe"]["broken-logistic-robot"].order = "b1-a[logistic-robot]"
		end
	end
	--combinator
	if data.raw["item-with-tags"]["turret-shield-combinator"] then
		data.raw["item-with-tags"]["turret-shield-combinator"].subgroup = "circuit-network"
		data.raw["item-with-tags"]["turret-shield-combinator"].order = "c[combinators]-d[eturret-shield-combinator]"
	end
end

--production
if data.raw["item-group"]["production"] then

	data:extend({
	  {
			type = "item-subgroup",
			name = "shinymisc3",
			group = "production",
			order = "e-d",
	  },
	})
	if data.raw["item"]["deadlock-machine-packer-item-1"] then
		data.raw["item"]["deadlock-machine-packer-item-1"].subgroup = "shinymisc3"
		data.raw["item"]["deadlock-machine-packer-item-1"].order = "a-01[machine-packer]"
	end
	if data.raw["item"]["deadlock-machine-packer-item-2"] then
		data.raw["item"]["deadlock-machine-packer-item-2"].subgroup = "shinymisc3"
		data.raw["item"]["deadlock-machine-packer-item-2"].order = "a-02[machine-packer]"
	end
	if data.raw["item"]["deadlock-machine-packer-item-3"] then
		data.raw["item"]["deadlock-machine-packer-item-3"].subgroup = "shinymisc3"
		data.raw["item"]["deadlock-machine-packer-item-3"].order = "a-03[machine-packer]"
	end
	if data.raw["item"]["electronics-machine-1"] then
		data.raw["item"]["electronics-machine-1"].subgroup = "shinymisc3"
		data.raw["item"]["electronics-machine-1"].order = "b-01[electronics-machine]"
	end
	if data.raw["item"]["electronics-machine-2"] then
		data.raw["item"]["electronics-machine-2"].subgroup = "shinymisc3"
		data.raw["item"]["electronics-machine-2"].order = "b-02[electronics-machine]"
	end
	if data.raw["item"]["electronics-machine-3"] then
		data.raw["item"]["electronics-machine-3"].subgroup = "shinymisc3"
		data.raw["item"]["electronics-machine-3"].order = "b-03[electronics-machine]"
	end
	
	if mods["ShinyIcons"] then
		data.raw["item-subgroup"]["shinymisc3"].order = "k4"
	end

	data:extend({
	  {
			type = "item-subgroup",
			name = "mshinyminer",
			group = "production",
			order = "g3",
	  },
	})
	if data.raw["item"]["mining-robot"] then
		data.raw["item"]["mining-robot"].subgroup = "mshinyminer"
		data.raw["item"]["mining-robot"].order = "a-01[mining-robot]"
	end
	if data.raw["recipe"]["broken-mining-robot"] then
		data.raw["recipe"]["broken-mining-robot"].subgroup = "mshinyminer"
		data.raw["recipe"]["broken-mining-robot"].order = "a-02[mining-robot]"
	end
	if data.raw["item"]["robotMiningSite"] then
		data.raw["item"]["robotMiningSite"].subgroup = "mshinyminer"
		data.raw["item"]["robotMiningSite"].order = "a-03[robotMiningSite]"
	end
	if data.raw["item"]["robotMiningSite-large"] then
		data.raw["item"]["robotMiningSite-large"].subgroup = "mshinyminer"
		data.raw["item"]["robotMiningSite-large"].order = "a-04[robotMiningSite]"
	end
	if data.raw["item"]["robotMiningSite-extra"] then
		data.raw["item"]["robotMiningSite-extra"].subgroup = "mshinyminer"
		data.raw["item"]["robotMiningSite-extra"].order = "a-05[robotMiningSite]"
	end
	
	if data.raw["item"]["vtk-deepcore-mining-drill"] then
		data.raw["item"]["vtk-deepcore-mining-drill"].subgroup = "mshinyminer"
		data.raw["item"]["vtk-deepcore-mining-drill"].order = "b-01[deepcore-mining]"
	end
	if data.raw["item"]["vtk-deepcore-mining-drill-advanced"] then
		data.raw["item"]["vtk-deepcore-mining-drill-advanced"].subgroup = "mshinyminer"
		data.raw["item"]["vtk-deepcore-mining-drill-advanced"].order = "b-02[deepcore-mining]"
	end
	
	if mods["bobclasses"] then
		if data.raw["item-subgroup"]["bodies"] then
			data.raw["item-subgroup"]["bodies"].group = "production"
			data.raw["item-subgroup"]["bodies"].order = "b2"
		end
	end
	if data.raw["item-subgroup"]["shinyjack1"] then
		if data.raw["item"]["hydraulic-pupmjack"] then
			data.raw["item"]["hydraulic-pupmjack"].subgroup = "shinyjack1"
			data.raw["item"]["hydraulic-pupmjack"].order = "b0[pupmjack]"
		end
	end

	--power
	if data.raw["item-subgroup"]["shinysteam1"] then
		data:extend({
		  {
				type = "item-subgroup",
				name = "shinysteam0",
				group = "production",
				order = "c0",
		  },
		  {
				type = "item-subgroup",
				name = "shinysteam2",
				group = "production",
				order = "c2",
		  },
		})
		if data.raw["item"]["burner-generator"] then
			data.raw["item"]["burner-generator"].subgroup = "shinysteam0"
			data.raw["item"]["burner-generator"].order = "a-1"
		end
		if data.raw["item"]["burner-turbine"] then
			data.raw["item"]["burner-turbine"].subgroup = "shinysteam0"
			data.raw["item"]["burner-turbine"].order = "a-2"
		end
		if data.raw["item"]["wind-turbine-2"] then
			data.raw["item"]["wind-turbine-2"].subgroup = "shinysteam0"
			data.raw["item"]["wind-turbine-2"].order = "b-1"
		end
		if data.raw["item"]["realistic-reactor"] then
			data.raw["item"]["realistic-reactor"].subgroup = "shinysteam0"
			data.raw["item"]["realistic-reactor"].order = "c-1"
		end
		if data.raw["item"]["rr-cooling-tower"] then
			data.raw["item"]["rr-cooling-tower"].subgroup = "shinysteam0"
			data.raw["item"]["rr-cooling-tower"].order = "c-2"
		end

		if data.raw["item"]["bi-bio-boiler"] then
			data.raw["item"]["bi-bio-boiler"].subgroup = "shinysteam2"
			data.raw["item"]["bi-bio-boiler"].order = "a-1"
		end
		if data.raw["item"]["OilSteamBoiler"] then
			data.raw["item"]["OilSteamBoiler"].subgroup = "shinysteam2"
			data.raw["item"]["OilSteamBoiler"].order = "a-2"
		end
		if data.raw["item"]["petroleum-generator"] then
			data.raw["item"]["petroleum-generator"].subgroup = "shinysteam2"
			data.raw["item"]["petroleum-generator"].order = "b-1"
		end
		if data.raw["item"]["fluid-generator"] then
			data.raw["item"]["fluid-generator"].subgroup = "shinysteam2"
			data.raw["item"]["fluid-generator"].order = "c-1"
		end
		if data.raw["item"]["fluid-generator-2"] then
			data.raw["item"]["fluid-generator-2"].subgroup = "shinysteam2"
			data.raw["item"]["fluid-generator-2"].order = "c-2"
		end
		if data.raw["item"]["fluid-generator-3"] then
			data.raw["item"]["fluid-generator-3"].subgroup = "shinysteam2"
			data.raw["item"]["fluid-generator-3"].order = "c-3"
		end
		if data.raw["item"]["hydrazine-generator"] then
			data.raw["item"]["hydrazine-generator"].subgroup = "shinysteam2"
			data.raw["item"]["hydrazine-generator"].order = "c-4"
		end
	end
	--building
	if data.raw["item-subgroup"]["shinylab1"] then
		if data.raw["item"]["burner-mint"] then
			data.raw["item"]["burner-mint"].subgroup = "shinylab1"
			data.raw["item"]["burner-mint"].order = "d-1[mint]"
		end
		if data.raw["item"]["electric-mint"] then
			data.raw["item"]["electric-mint"].subgroup = "shinylab1"
			data.raw["item"]["electric-mint"].order = "d-2[mint]"
		end
	end
	if data.raw["item-subgroup"]["shinymisc1"] then
		data:extend({
		  {
				type = "item-subgroup",
				name = "shinymisc2",
				group = "production",
				order = "y2",
		  },
		})
		if data.raw["item"]["bob-greenhouse"] then
			data.raw["item"]["bob-greenhouse"].subgroup = "shinymisc2"
			data.raw["item"]["bob-greenhouse"].order = "a-1[shinymisc1]"
		end	
		if data.raw["item"]["fuel-processor"] then
			data.raw["item"]["fuel-processor"].subgroup = "shinymisc2"
			data.raw["item"]["fuel-processor"].order = "a-2[shinymisc1]"
		end	
		if data.raw["item"]["auto-compressor"] then
			data.raw["item"]["auto-compressor"].subgroup = "shinymisc2"
			data.raw["item"]["auto-compressor"].order = "a-3[shinymisc1]"
		end	
		if data.raw["item"]["bob-distillery"] then
			data.raw["item"]["bob-distillery"].subgroup = "shinymisc2"
			data.raw["item"]["bob-distillery"].order = "a-4[shinymisc1]"
		end	
		if data.raw["item"]["remover"] then
			data.raw["item"]["remover"].subgroup = "shinymisc2"
			data.raw["item"]["remover"].order = "b-1[remover]"
		end	
		if data.raw["item"]["vent-stack"] then
			data.raw["item"]["vent-stack"].subgroup = "shinymisc2"
			data.raw["item"]["vent-stack"].order = "b-2[remover]"
		end
		if data.raw["item"]["flare-stack"] then
			data.raw["item"]["flare-stack"].subgroup = "shinymisc2"
			data.raw["item"]["flare-stack"].order = "b-3[remover]"
		end
		if data.raw["item"]["incinerator"] then
			data.raw["item"]["incinerator"].subgroup = "shinymisc2"
			data.raw["item"]["incinerator"].order = "b-4[remover]"
		end
		if data.raw["item"]["electric-incinerator"] then
			data.raw["item"]["electric-incinerator"].subgroup = "shinymisc2"
			data.raw["item"]["electric-incinerator"].order = "b-5[remover]"
		end
		if data.raw["item"]["disintegrator"] then
			data.raw["item"]["disintegrator"].subgroup = "shinymisc2"
			data.raw["item"]["disintegrator"].order = "b-6[remover]"
		end	
		if data.raw["item"]["air-filter-machine"] then
			data.raw["item"]["air-filter-machine"].subgroup = "shinymisc2"
			data.raw["item"]["air-filter-machine"].order = "c-1[air-filter-machine]"
			if data.raw["item"]["air-filter-machine-mk2"] then
				data.raw["item"]["air-filter-machine-mk2"].subgroup = "shinymisc2"
				data.raw["item"]["air-filter-machine-mk2"].order = "c-2[air-filter-machine]"
			end
			if data.raw["item"]["air-filter-machine-mk3"] then
				data.raw["item"]["air-filter-machine-mk3"].subgroup = "shinymisc2"
				data.raw["item"]["air-filter-machine-mk3"].order = "c-3[air-filter-machine]"
			end
		end
		if data.raw["item"]["air-filter-machine-mk1"] then
			data:extend({
			  {
					type = "item-subgroup",
					name = "shinymisc4",
					group = "production",
					order = "k5",
			  },
			})
			data.raw["item"]["air-filter-machine-mk1"].subgroup = "shinymisc4"
			data.raw["item"]["air-filter-machine-mk1"].order = "b-1[air-filter-machine]"
			if data.raw["item"]["air-filter-machine-mk2"] then
				data.raw["item"]["air-filter-machine-mk2"].subgroup = "shinymisc4"
				data.raw["item"]["air-filter-machine-mk2"].order = "b-2[air-filter-machine]"
			end
			if data.raw["item"]["air-filter-machine-mk3"] then
				data.raw["item"]["air-filter-machine-mk3"].subgroup = "shinymisc4"
				data.raw["item"]["air-filter-machine-mk3"].order = "b-3[air-filter-machine]"
			end
			if data.raw["item"]["air-filter-machine-mk4"] then
				data.raw["item"]["air-filter-machine-mk4"].subgroup = "shinymisc4"
				data.raw["item"]["air-filter-machine-mk4"].order = "b-4[air-filter-machine]"
			end
			if data.raw["item"]["air-filter-machine-mk5"] then
				data.raw["item"]["air-filter-machine-mk5"].subgroup = "shinymisc4"
				data.raw["item"]["air-filter-machine-mk5"].order = "b-5[air-filter-machine]"
			end
			if data.raw["item"]["air-filter-machine-mk6"] then
				data.raw["item"]["air-filter-machine-mk6"].subgroup = "shinymisc4"
				data.raw["item"]["air-filter-machine-mk6"].order = "b-6[air-filter-machine]"
			end
		end
	end
end

--vehicles
if data.raw["item-group"]["vehicles"] then
	--subgroup-vehicle
	data:extend({
	  {
			type = "item-subgroup",
			name = "tank-other-vehicle",
			group = "vehicles",
			order = "d-0-a",
	  },
	  {
			type = "item-subgroup",
			name = "tank-other-tank",
			group = "vehicles",
			order = "d-0-b",
	  },
	  {
			type = "item-subgroup",
			name = "tank-miner",
			group = "vehicles",
			order = "d-0-c",
	  },
	  {
			type = "item-subgroup",
			name = "tank-aircraft",
			group = "vehicles",
			order = "d-0-d",
	  },
	  {
			type = "item-subgroup",
			name = "tank-locomotive",
			group = "vehicles",
			order = "d-3",
	  },
	  {
			type = "item-subgroup",
			name = "tank-cargowagon",
			group = "vehicles",
			order = "d-4",
	  },
	  {
			type = "item-subgroup",
			name = "tank-fluidwagon",
			group = "vehicles",
			order = "d-5",
	  },
	  {
			type = "item-subgroup",
			name = "tank-other-train",
			group = "vehicles",
			order = "d-6",
	  },
	})

	--car
	if data.raw["item-with-entity-data"]["car"] then
		data.raw["item-with-entity-data"]["car"].subgroup = "tank-other-vehicle"
		data.raw["item-with-entity-data"]["car"].order = "a-01[car]"
	end
	if data.raw["item-with-entity-data"]["car-flamer"] then
		data.raw["item-with-entity-data"]["car-flamer"].subgroup = "tank-other-vehicle"
		data.raw["item-with-entity-data"]["car-flamer"].order = "a-02[car-flamer]"
	end
	if data.raw["item-with-entity-data"]["vehicle-hauler"] then
		data.raw["item-with-entity-data"]["vehicle-hauler"].subgroup = "tank-other-vehicle"
		data.raw["item-with-entity-data"]["vehicle-hauler"].order = "b-01[vehicle-hauler]"
	end
	if data.raw["item-with-entity-data"]["vehicle-chaingunner"] then
		data.raw["item-with-entity-data"]["vehicle-chaingunner"].subgroup = "tank-other-vehicle"
		data.raw["item-with-entity-data"]["vehicle-chaingunner"].order = "b-02[vehicle-chaingunner]"
	end
	if data.raw["item-with-entity-data"]["vehicle-flame-tumbler"] then
		data.raw["item-with-entity-data"]["vehicle-flame-tumbler"].subgroup = "tank-other-vehicle"
		data.raw["item-with-entity-data"]["vehicle-flame-tumbler"].order = "b-03[vehicle-flame-tumbler]"
	end
	if data.raw["item-with-entity-data"]["vehicle-warden"] then
		data.raw["item-with-entity-data"]["vehicle-warden"].subgroup = "tank-other-vehicle"
		data.raw["item-with-entity-data"]["vehicle-warden"].order = "b-04[vehicle-warden]"
	end
	if data.raw["item-with-entity-data"]["angels-crawler"] then
		data.raw["item-with-entity-data"]["angels-crawler"].subgroup = "tank-other-vehicle"
		data.raw["item-with-entity-data"]["angels-crawler"].order = "c-01[angels-crawler]"
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
	if data.raw["item-with-entity-data"]["tank"] then
		data.raw["item-with-entity-data"]["tank"].subgroup = "tank-other-tank"
		data.raw["item-with-entity-data"]["tank"].order = "a-03[tank]"
	end
	if data.raw["item-with-entity-data"]["bob-tank-2"] then
		data.raw["item-with-entity-data"]["bob-tank-2"].subgroup = "tank-other-tank"
		data.raw["item-with-entity-data"]["bob-tank-2"].order = "b-01[bob-tank-2]"
	end
	if data.raw["item-with-entity-data"]["bob-tank-3"] then
		data.raw["item-with-entity-data"]["bob-tank-3"].subgroup = "tank-other-tank"
		data.raw["item-with-entity-data"]["bob-tank-3"].order = "b-02[bob-tank-3]"
	end
	if data.raw["item"]["better-tank"] then
		data.raw["item"]["better-tank"].subgroup = "tank-other-tank"
		data.raw["item"]["better-tank"].order = "b-03[tank]"
	end
	if data.raw["item-with-entity-data"]["vehicle-flame-tank"] then
		data.raw["item-with-entity-data"]["vehicle-flame-tank"].subgroup = "tank-other-tank"
		data.raw["item-with-entity-data"]["vehicle-flame-tank"].order = "c-01[vehicle-flame-tank]"
	end
	if data.raw["item-with-entity-data"]["vehicle-laser-tank"] then
		data.raw["item-with-entity-data"]["vehicle-laser-tank"].subgroup = "tank-other-tank"
		data.raw["item-with-entity-data"]["vehicle-laser-tank"].order = "c-02[vehicle-laser-tank]"
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

	--AAI miner
	if data.raw["item-with-entity-data"]["vehicle-miner"] then
		data.raw["item-with-entity-data"]["vehicle-miner"].subgroup = "tank-miner"
		data.raw["item-with-entity-data"]["vehicle-miner"].order = "a-01[vehicle-miner]"
	end
	if data.raw["item-with-entity-data"]["vehicle-miner-mk2"] then
		data.raw["item-with-entity-data"]["vehicle-miner-mk2"].subgroup = "tank-miner"
		data.raw["item-with-entity-data"]["vehicle-miner-mk2"].order = "a-02[vehicle-miner-mk2]"
	end
	if data.raw["item-with-entity-data"]["vehicle-miner-mk3"] then
		data.raw["item-with-entity-data"]["vehicle-miner-mk3"].subgroup = "tank-miner"
		data.raw["item-with-entity-data"]["vehicle-miner-mk3"].order = "a-03[vehicle-miner-mk3]"
	end
	if data.raw["item-with-entity-data"]["vehicle-miner-mk4"] then
		data.raw["item-with-entity-data"]["vehicle-miner-mk4"].subgroup = "tank-miner"
		data.raw["item-with-entity-data"]["vehicle-miner-mk4"].order = "a-04[vehicle-miner-mk4]"
	end
	if data.raw["item-with-entity-data"]["vehicle-miner-mk5"] then
		data.raw["item-with-entity-data"]["vehicle-miner-mk5"].subgroup = "tank-miner"
		data.raw["item-with-entity-data"]["vehicle-miner-mk5"].order = "a-05[vehicle-miner-mk5]"
	end

	--aircraft
	if data.raw["item"]["hovercraft-item"] then
		data.raw["item"]["hovercraft-item"].subgroup = "tank-aircraft"
		data.raw["item"]["hovercraft-item"].order = "a-01[hovercraft]"
	end
	if data.raw["item"]["raven-1"] then
		data.raw["item"]["raven-1"].subgroup = "tank-aircraft"
		data.raw["item"]["raven-1"].order = "a-02[raven-1]"
	end
	if data.raw["item-with-entity-data"]["heli-item"] then
		data.raw["item-with-entity-data"]["heli-item"].subgroup = "tank-aircraft"
		data.raw["item-with-entity-data"]["heli-item"].order = "a-03[heli]"
	end
	if data.raw["item-with-entity-data"]["cargo-plane"] then
		data.raw["item-with-entity-data"]["cargo-plane"].subgroup = "tank-aircraft"
		data.raw["item-with-entity-data"]["cargo-plane"].order = "b-01[cargo-plane]"
	end
	if data.raw["item-with-entity-data"]["gunship"] then
		data.raw["item-with-entity-data"]["gunship"].subgroup = "tank-aircraft"
		data.raw["item-with-entity-data"]["gunship"].order = "b-02[gunship]"
	end
	if data.raw["item-with-entity-data"]["jet"] then
		data.raw["item-with-entity-data"]["jet"].subgroup = "tank-aircraft"
		data.raw["item-with-entity-data"]["jet"].order = "b-03[jet]"
	end
	if data.raw["item-with-entity-data"]["flying-fortress"] then
		data.raw["item-with-entity-data"]["flying-fortress"].subgroup = "tank-aircraft"
		data.raw["item-with-entity-data"]["flying-fortress"].order = "b-04[flying-fortress]"
	end

	--locomotive
	if data.raw["item-with-entity-data"]["locomotive"] then
		data.raw["item-with-entity-data"]["locomotive"].subgroup = "tank-locomotive"
		data.raw["item-with-entity-data"]["locomotive"].order = "a-01[locomotive]"
	end
	if data.raw["item-with-entity-data"]["bob-locomotive-2"] then
		data.raw["item-with-entity-data"]["bob-locomotive-2"].subgroup = "tank-locomotive"
		data.raw["item-with-entity-data"]["bob-locomotive-2"].order = "b-01[bob-locomotive-2]"
	end
	if data.raw["item-with-entity-data"]["bob-locomotive-3"] then
		data.raw["item-with-entity-data"]["bob-locomotive-3"].subgroup = "tank-locomotive"
		data.raw["item-with-entity-data"]["bob-locomotive-3"].order = "b-02[bob-locomotive-3]"
	end
	if data.raw["item-with-entity-data"]["bob-armoured-locomotive"] then
		data.raw["item-with-entity-data"]["bob-armoured-locomotive"].subgroup = "tank-locomotive"
		data.raw["item-with-entity-data"]["bob-armoured-locomotive"].order = "b-03[bob-armoured-locomotive]"
	end
	if data.raw["item-with-entity-data"]["bob-armoured-locomotive-2"] then
		data.raw["item-with-entity-data"]["bob-armoured-locomotive-2"].subgroup = "tank-locomotive"
		data.raw["item-with-entity-data"]["bob-armoured-locomotive-2"].order = "b-04[bob-armoured-locomotive-2]"
	end
	if data.raw["item-with-entity-data"]["petro-locomotive-1"] then
		data.raw["item-with-entity-data"]["petro-locomotive-1"].subgroup = "tank-locomotive"
		data.raw["item-with-entity-data"]["petro-locomotive-1"].order = "c-01[petro-locomotive-1]"
	end
	if data.raw["item-with-entity-data"]["crawler-locomotive"] then
		data.raw["item-with-entity-data"]["crawler-locomotive"].subgroup = "tank-locomotive"
		data.raw["item-with-entity-data"]["crawler-locomotive"].order = "c-02[crawler-locomotive]"
	end
	if data.raw["item-with-entity-data"]["crawler-locomotive-wagon"] then
		data.raw["item-with-entity-data"]["crawler-locomotive-wagon"].subgroup = "tank-locomotive"
		data.raw["item-with-entity-data"]["crawler-locomotive-wagon"].order = "c-03[crawler-locomotive-wagon]"
	end
	if data.raw["item-with-entity-data"]["farl"] then
		data.raw["item-with-entity-data"]["farl"].subgroup = "tank-locomotive"
		data.raw["item-with-entity-data"]["farl"].order = "d-01[farl]"
	end
	if data.raw["item-with-entity-data"]["farl-roboport"] then
		data.raw["item-with-entity-data"]["farl-roboport"].subgroup = "tank-locomotive"
		data.raw["item-with-entity-data"]["farl-roboport"].order = "d-02[farl-roboport]"
	end

	--cargowagon
	if data.raw["item-with-entity-data"]["cargo-wagon"] then
		data.raw["item-with-entity-data"]["cargo-wagon"].subgroup = "tank-cargowagon"
		data.raw["item-with-entity-data"]["cargo-wagon"].order = "a-01[cargo-wagon]"
	end
	if data.raw["item-with-entity-data"]["bob-cargo-wagon-2"] then
		data.raw["item-with-entity-data"]["bob-cargo-wagon-2"].subgroup = "tank-cargowagon"
		data.raw["item-with-entity-data"]["bob-cargo-wagon-2"].order = "b-01[bob-cargo-wagon-2]"
	end
	if data.raw["item-with-entity-data"]["bob-cargo-wagon-3"] then
		data.raw["item-with-entity-data"]["bob-cargo-wagon-3"].subgroup = "tank-cargowagon"
		data.raw["item-with-entity-data"]["bob-cargo-wagon-3"].order = "b-02[bob-cargo-wagon-3]"
	end
	if data.raw["item-with-entity-data"]["bob-armoured-cargo-wagon"] then
		data.raw["item-with-entity-data"]["bob-armoured-cargo-wagon"].subgroup = "tank-cargowagon"
		data.raw["item-with-entity-data"]["bob-armoured-cargo-wagon"].order = "b-03[bob-armoured-cargo-wagon]"
	end
	if data.raw["item-with-entity-data"]["bob-armoured-cargo-wagon-2"] then
		data.raw["item-with-entity-data"]["bob-armoured-cargo-wagon-2"].subgroup = "tank-cargowagon"
		data.raw["item-with-entity-data"]["bob-armoured-cargo-wagon-2"].order = "b-04[bob-armoured-cargo-wagon-2]"
	end
	if data.raw["item-with-entity-data"]["crawler-wagon"] then
		data.raw["item-with-entity-data"]["crawler-wagon"].subgroup = "tank-cargowagon"
		data.raw["item-with-entity-data"]["crawler-wagon"].order = "c-01[crawler-wagon]"
	end
	if data.raw["item-with-entity-data"]["crawler-bot-wagon"] then
		data.raw["item-with-entity-data"]["crawler-bot-wagon"].subgroup = "tank-cargowagon"
		data.raw["item-with-entity-data"]["crawler-bot-wagon"].order = "c-02[crawler-bot-wagon]"
	end

	--fluidwagon
	if data.raw["item-with-entity-data"]["fluid-wagon"] then
		data.raw["item-with-entity-data"]["fluid-wagon"].subgroup = "tank-fluidwagon"
		data.raw["item-with-entity-data"]["fluid-wagon"].order = "a-01[fluid-wagon]"
	end
	if data.raw["item-with-entity-data"]["bob-fluid-wagon-2"] then
		data.raw["item-with-entity-data"]["bob-fluid-wagon-2"].subgroup = "tank-fluidwagon"
		data.raw["item-with-entity-data"]["bob-fluid-wagon-2"].order = "b-01[bob-fluid-wagon-2]"
	end
	if data.raw["item-with-entity-data"]["bob-fluid-wagon-3"] then
		data.raw["item-with-entity-data"]["bob-fluid-wagon-3"].subgroup = "tank-fluidwagon"
		data.raw["item-with-entity-data"]["bob-fluid-wagon-3"].order = "b-02[bob-fluid-wagon-3]"
	end
	if data.raw["item-with-entity-data"]["bob-armoured-fluid-wagon"] then
		data.raw["item-with-entity-data"]["bob-armoured-fluid-wagon"].subgroup = "tank-fluidwagon"
		data.raw["item-with-entity-data"]["bob-armoured-fluid-wagon"].order = "b-03[bob-armoured-fluid-wagon]"
	end
	if data.raw["item-with-entity-data"]["bob-armoured-fluid-wagon-2"] then
		data.raw["item-with-entity-data"]["bob-armoured-fluid-wagon-2"].subgroup = "tank-fluidwagon"
		data.raw["item-with-entity-data"]["bob-armoured-fluid-wagon-2"].order = "b-04[bob-armoured-fluid-wagon-2]"
	end
	if data.raw["item-with-entity-data"]["petro-tank1"] then
		data.raw["item-with-entity-data"]["petro-tank1"].subgroup = "tank-fluidwagon"
		data.raw["item-with-entity-data"]["petro-tank1"].order = "c-01[petro-tank1]"
	end
	if data.raw["item-with-entity-data"]["petro-tank2"] then
		data.raw["item-with-entity-data"]["petro-tank2"].subgroup = "tank-fluidwagon"
		data.raw["item-with-entity-data"]["petro-tank2"].order = "c-02[petro-tank2]"
	end

	--artillery-wagon
	if data.raw["item-with-entity-data"]["artillery-wagon"] then
		data.raw["item-with-entity-data"]["artillery-wagon"].subgroup = "tank-other-train"
		data.raw["item-with-entity-data"]["artillery-wagon"].order = "a-01[artillery-wagon]"
	end
	if data.raw["item-with-entity-data"]["bob-artillery-wagon-2"] then
		data.raw["item-with-entity-data"]["bob-artillery-wagon-2"].subgroup = "tank-other-train"
		data.raw["item-with-entity-data"]["bob-artillery-wagon-2"].order = "a-02[bob-artillery-wagon-2]"
	end
	if data.raw["item-with-entity-data"]["bob-artillery-wagon-3"] then
		data.raw["item-with-entity-data"]["bob-artillery-wagon-3"].subgroup = "tank-other-train"
		data.raw["item-with-entity-data"]["bob-artillery-wagon-3"].order = "a-03[bob-artillery-wagon-3]"
	end

	--vhicleequipment
	if data.raw["item-subgroup"]["vehicle-equipment"] then
		data.raw["item-subgroup"]["vehicle-equipment"].group = "vehicles"
		data.raw["item-subgroup"]["vehicle-equipment"].order = "e-1"
	end
	if data.raw["item-subgroup"]["shinyvehe1"] then
		data.raw["item-subgroup"]["shinyvehe1"].group = "vehicles"
		data.raw["item-subgroup"]["shinyvehe1"].order = "e-2"
	end
	if data.raw["item-subgroup"]["shinyvehe3"] then
		data.raw["item-subgroup"]["shinyvehe3"].group = "vehicles"
		data.raw["item-subgroup"]["shinyvehe3"].order = "e-3"
	end
	if data.raw["item-subgroup"]["shinyvehe5"] then
		data.raw["item-subgroup"]["shinyvehe5"].group = "vehicles"
		data.raw["item-subgroup"]["shinyvehe5"].order = "e-4"
	end
	if data.raw["item-subgroup"]["shinyvehe2"] then
		data.raw["item-subgroup"]["shinyvehe2"].group = "vehicles"
		data.raw["item-subgroup"]["shinyvehe2"].order = "e-5"
	end
	if data.raw["item-subgroup"]["shinyvehe4"] then
		data.raw["item-subgroup"]["shinyvehe4"].group = "vehicles"
		data.raw["item-subgroup"]["shinyvehe4"].order = "e-6"
	end
	if data.raw["item-subgroup"]["shinyvehe6"] then
		data.raw["item-subgroup"]["shinyvehe6"].group = "vehicles"
		data.raw["item-subgroup"]["shinyvehe6"].order = "e-7"
	end
	if data.raw["item-subgroup"]["shinyvehe7"] then
		data.raw["item-subgroup"]["shinyvehe7"].group = "vehicles"
		data.raw["item-subgroup"]["shinyvehe7"].order = "e-8"
	end
	if data.raw["item-subgroup"]["shinyvehe8"] then
		data.raw["item-subgroup"]["shinyvehe8"].group = "vehicles"
		data.raw["item-subgroup"]["shinyvehe8"].order = "e-9"
		if data.raw["item"]["vehicle-gun-turret"] then
			data.raw["item"]["vehicle-gun-turret"].subgroup = "shinyvehe8"
			data.raw["item"]["vehicle-gun-turret"].order = "d1"
		end
		if data.raw["item"]["vehicle-rocket-turret"] then
			data.raw["item"]["vehicle-rocket-turret"].subgroup = "shinyvehe8"
			data.raw["item"]["vehicle-rocket-turret"].order = "d2"
		end
	end

	data:extend({
	  {
			type = "item-subgroup",
			name = "shinyveheangels",
			group = "vehicles",
			order = "e-90",
	  },
	})
	if data.raw["item"]["angels-burner-generator-vequip"] then
		data.raw["item"]["angels-burner-generator-vequip"].subgroup = "shinyveheangels"
		data.raw["item"]["angels-burner-generator-vequip"].order = "a-01[angels-burner-generator-vequip]"
	end
	if data.raw["item"]["angels-fusion-reactor-vequip"] then
		data.raw["item"]["angels-fusion-reactor-vequip"].subgroup = "shinyveheangels"
		data.raw["item"]["angels-fusion-reactor-vequip"].order = "a-02[angels-fusion-reactor-vequip]"
	end
	if data.raw["item"]["angels-repair-roboport-vequip"] then
		data.raw["item"]["angels-repair-roboport-vequip"].subgroup = "shinyveheangels"
		data.raw["item"]["angels-repair-roboport-vequip"].order = "a-03[angels-repair-roboport-vequip]"
	end
	if data.raw["item"]["angels-construction-roboport-vequip"] then
		data.raw["item"]["angels-construction-roboport-vequip"].subgroup = "shinyveheangels"
		data.raw["item"]["angels-construction-roboport-vequip"].order = "a-04[angels-construction-roboport-vequip]"
	end
	if data.raw["item"]["angels-heavy-energy-shield-vequip"] then
		data.raw["item"]["angels-heavy-energy-shield-vequip"].subgroup = "shinyveheangels"
		data.raw["item"]["angels-heavy-energy-shield-vequip"].order = "a-05[angels-heavy-energy-shield-vequip]"
	end
	if data.raw["item"]["angels-rocket-defense-equipment-vequip"] then
		data.raw["item"]["angels-rocket-defense-equipment-vequip"].subgroup = "shinyveheangels"
		data.raw["item"]["angels-rocket-defense-equipment-vequip"].order = "a-06[angels-rocket-defense-equipment-vequip]"
	end

	--vhicleammo
	if data.raw["ammo"]["cannon-shell"] then
		data.raw["ammo"]["cannon-shell"].subgroup = "tank-ammo"
		data.raw["ammo"]["cannon-shell"].order = "a1[cannon-shell]"
	end
	if data.raw["ammo"]["explosive-cannon-shell"] then
		data.raw["ammo"]["explosive-cannon-shell"].subgroup = "tank-ammo"
		data.raw["ammo"]["explosive-cannon-shell"].order = "a2[explosive-cannon-shell]"
	end
	if data.raw["ammo"]["scatter-cannon-shell"] then
		data.raw["ammo"]["scatter-cannon-shell"].subgroup = "tank-ammo"
		data.raw["ammo"]["scatter-cannon-shell"].order = "a3[scatter-cannon-shell]"
	end
	if data.raw["ammo"]["uranium-cannon-shell"] then
		data.raw["ammo"]["uranium-cannon-shell"].subgroup = "tank-ammo"
		data.raw["ammo"]["uranium-cannon-shell"].order = "a4[uranium-cannon-shell]"
	end
	if data.raw["ammo"]["explosive-uranium-cannon-shell"] then
		data.raw["ammo"]["explosive-uranium-cannon-shell"].subgroup = "tank-ammo"
		data.raw["ammo"]["explosive-uranium-cannon-shell"].order = "a5[explosive-uranium-cannon-shell]"
	end
	
	if data.raw["ammo"]["electroshock-pulse-ammo"] then
		data.raw["ammo"]["electroshock-pulse-ammo"].subgroup = "tank-ammo-2"
		data.raw["ammo"]["electroshock-pulse-ammo"].order = "c[tank-ammo]-a[electroshock-pulse-ammo]"
	end
	if data.raw["ammo"]["laser-cannon-battery-piercing"] then
		data.raw["ammo"]["laser-cannon-battery-piercing"].subgroup = "tank-ammo-2"
		data.raw["ammo"]["laser-cannon-battery-piercing"].order = "c[tank-ammo]-b[laser-cannon-battery-piercing]"
	end
	if data.raw["ammo"]["laser-cannon-battery-focussed"] then
		data.raw["ammo"]["laser-cannon-battery-focussed"].subgroup = "tank-ammo-2"
		data.raw["ammo"]["laser-cannon-battery-focussed"].order = "c[tank-ammo]-c[laser-cannon-battery-focussed]"
	end

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
		if data.raw["ammo"]["rocket-magazine"] then
			data.raw["ammo"]["rocket-magazine"].subgroup = "tank-ammo-3"
			data.raw["ammo"]["rocket-magazine"].order = "b[tank-ammo]-c[rocketpack]-a"
		end
		if data.raw["ammo"]["explosive-rocket-magazine"] then
			data.raw["ammo"]["explosive-rocket-magazine"].subgroup = "tank-ammo-3"
			data.raw["ammo"]["explosive-rocket-magazine"].order = "b[tank-ammo]-c[rocketpack]-b"
		end
		if data.raw["ammo"]["uranium-rocket-magazine"] then
			data.raw["ammo"]["uranium-rocket-magazine"].subgroup = "tank-ammo-3"
			data.raw["ammo"]["uranium-rocket-magazine"].order = "b[tank-ammo]-c[rocketpack]-c"
		end
	end
	
	--infantry
	if data.raw["capsule"]["first_aid_kit"] then
		data.raw["capsule"]["first_aid_kit"].subgroup = "tank-ammo-infantry"
		data.raw["capsule"]["first_aid_kit"].order = "a-02[first_aid_kit]"
	end
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
end

--modules
if data.raw["item-group"]["bobmodules"] then
	data:extend({
	  {
			type = "item-subgroup",
			name = "mshinymodules1",
			group = "bobmodules",
			order = "f-0a",
	  },
	  {
			type = "item-subgroup",
			name = "mshinymodules2",
			group = "bobmodules",
			order = "f-0b",
	  },
	})
	--speed
	if data.raw["tool"]["speed-processor"] then
		data.raw["tool"]["speed-processor"].subgroup = "mshinymodules1"
		data.raw["tool"]["speed-processor"].order = "a-01[processor]"
	end
	if data.raw["item"]["speed-processor-2"] then
		data.raw["item"]["speed-processor-2"].subgroup = "mshinymodules1"
		data.raw["item"]["speed-processor-2"].order = "a-02[processor]"
	end
	if data.raw["item"]["speed-processor-3"] then
		data.raw["item"]["speed-processor-3"].subgroup = "mshinymodules1"
		data.raw["item"]["speed-processor-3"].order = "a-03[processor]"
	end
	--effectivity
	if data.raw["tool"]["effectivity-processor"] then
		data.raw["tool"]["effectivity-processor"].subgroup = "mshinymodules1"
		data.raw["tool"]["effectivity-processor"].order = "b-01[processor]"
	end
	if data.raw["item"]["effectivity-processor-2"] then
		data.raw["item"]["effectivity-processor-2"].subgroup = "mshinymodules1"
		data.raw["item"]["effectivity-processor-2"].order = "b-02[processor]"
	end
	if data.raw["item"]["effectivity-processor-3"] then
		data.raw["item"]["effectivity-processor-3"].subgroup = "mshinymodules1"
		data.raw["item"]["effectivity-processor-3"].order = "b-03[processor]"
	end
	--productivity
	if data.raw["tool"]["productivity-processor"] then
		data.raw["tool"]["productivity-processor"].subgroup = "mshinymodules1"
		data.raw["tool"]["productivity-processor"].order = "c-01[processor]"
	end
	if data.raw["item"]["productivity-processor-2"] then
		data.raw["item"]["productivity-processor-2"].subgroup = "mshinymodules1"
		data.raw["item"]["productivity-processor-2"].order = "c-02[processor]"
	end
	if data.raw["item"]["productivity-processor-3"] then
		data.raw["item"]["productivity-processor-3"].subgroup = "mshinymodules1"
		data.raw["item"]["productivity-processor-3"].order = "c-03[processor]"
	end
	--pollution-create
	if data.raw["tool"]["pollution-create-processor"] then
		data.raw["tool"]["pollution-create-processor"].subgroup = "mshinymodules2"
		data.raw["tool"]["pollution-create-processor"].order = "a-01[processor]"
	end
	if data.raw["item"]["pollution-create-processor-2"] then
		data.raw["item"]["pollution-create-processor-2"].subgroup = "mshinymodules2"
		data.raw["item"]["pollution-create-processor-2"].order = "a-02[processor]"
	end
	if data.raw["item"]["pollution-create-processor-3"] then
		data.raw["item"]["pollution-create-processor-3"].subgroup = "mshinymodules2"
		data.raw["item"]["pollution-create-processor-3"].order = "a-03[processor]"
	end
	--pollution-clean
	if data.raw["tool"]["pollution-clean-processor"] then
		data.raw["tool"]["pollution-clean-processor"].subgroup = "mshinymodules2"
		data.raw["tool"]["pollution-clean-processor"].order = "b-01[processor]"
	end
	if data.raw["item"]["pollution-clean-processor-2"] then
		data.raw["item"]["pollution-clean-processor-2"].subgroup = "mshinymodules2"
		data.raw["item"]["pollution-clean-processor-2"].order = "b-02[processor]"
	end
	if data.raw["item"]["pollution-clean-processor-3"] then
		data.raw["item"]["pollution-clean-processor-3"].subgroup = "mshinymodules2"
		data.raw["item"]["pollution-clean-processor-3"].order = "b-03[processor]"
	end
end

--combat
if data.raw["item-group"]["combat"] then
	--subgroup-combat
	data:extend({
	  {
			type = "item-subgroup",
			name = "mshinycombat1",
			group = "combat",
			order = "c-1",
	  },
	  {
			type = "item-subgroup",
			name = "mshinycombat2",
			group = "combat",
			order = "c-2",
	  },
	  {
			type = "item-subgroup",
			name = "mshinycombat3",
			group = "combat",
			order = "c-3",
	  },
	})
	--mine
	if data.raw["item"]["land-mine"] then
		data.raw["item"]["land-mine"].subgroup = "mshinycombat1"
		data.raw["item"]["land-mine"].order = "a-01[land-mine]"
	end
	if data.raw["item"]["poison-mine"] then
		data.raw["item"]["poison-mine"].subgroup = "mshinycombat1"
		data.raw["item"]["poison-mine"].order = "a-02[poison-mine]"
	end
	if data.raw["item"]["slowdown-mine"] then
		data.raw["item"]["slowdown-mine"].subgroup = "mshinycombat1"
		data.raw["item"]["slowdown-mine"].order = "a-03[slowdown-mine]"
	end
	if data.raw["item"]["distractor-mine"] then
		data.raw["item"]["distractor-mine"].subgroup = "mshinycombat1"
		data.raw["item"]["distractor-mine"].order = "a-04[distractor-mine]"
	end
	if data.raw["ammo"]["bi-seed-bomb-basic"] then
		data.raw["ammo"]["bi-seed-bomb-basic"].subgroup = "mshinycombat1"
		data.raw["ammo"]["bi-seed-bomb-basic"].order = "b[bomb]-a[water-bomb]"
	end
	if data.raw["ammo"]["bi-seed-bomb-standard"] then
		data.raw["ammo"]["bi-seed-bomb-standard"].subgroup = "mshinycombat1"
		data.raw["ammo"]["bi-seed-bomb-standard"].order = "b[bomb]-b[water-bomb]"
	end
	if data.raw["ammo"]["bi-seed-bomb-advanced"] then
		data.raw["ammo"]["bi-seed-bomb-advanced"].subgroup = "mshinycombat1"
		data.raw["ammo"]["bi-seed-bomb-advanced"].order = "b[bomb]-c[water-bomb]"
	end
	if data.raw["item"]["water-bomb"] then
		data.raw["item"]["water-bomb"].subgroup = "mshinycombat1"
		data.raw["item"]["water-bomb"].order = "b[bomb]-d[water-bomb]"
	end
	if data.raw["item"]["last-stand-turret"] then
		data.raw["item"]["last-stand-turret"].subgroup = "mshinycombat1"
		data.raw["item"]["last-stand-turret"].order = "c-a[last-stand-turret]"
	end
	--artilleryshell
	if data.raw["ammo"]["bi-bio-cannon-basic-ammo"] then
		data.raw["ammo"]["bi-bio-cannon-basic-ammo"].subgroup = "mshinycombat2"
		data.raw["ammo"]["bi-bio-cannon-basic-ammo"].order = "a-01[Bio_Cannon_Ammo]"
	end
	if data.raw["ammo"]["bi-bio-cannon-poison-ammo"] then
		data.raw["ammo"]["bi-bio-cannon-poison-ammo"].subgroup = "mshinycombat2"
		data.raw["ammo"]["bi-bio-cannon-poison-ammo"].order = "a-02[Bio_Cannon_Ammo]"
	end
	if data.raw["ammo"]["bi-bio-cannon-biological-ammo"] then
		data.raw["ammo"]["bi-bio-cannon-biological-ammo"].subgroup = "mshinycombat2"
		data.raw["ammo"]["bi-bio-cannon-biological-ammo"].order = "a-03[Bio_Cannon_Ammo]"
	end
	if data.raw["ammo"]["artillery-shell"] then
		data.raw["ammo"]["artillery-shell"].subgroup = "mshinycombat2"
		data.raw["ammo"]["artillery-shell"].order = "b-01[artillery-shell]"
	end
	if data.raw["ammo"]["poison-artillery-shell"] then
		data.raw["ammo"]["poison-artillery-shell"].subgroup = "mshinycombat2"
		data.raw["ammo"]["poison-artillery-shell"].order = "c-01[poison-artillery-shell]"
	end
	if data.raw["ammo"]["explosive-artillery-shell"] then
		data.raw["ammo"]["explosive-artillery-shell"].subgroup = "mshinycombat2"
		data.raw["ammo"]["explosive-artillery-shell"].order = "c-02[explosive-artillery-shell]"
	end
	if data.raw["ammo"]["distractor-artillery-shell"] then
		data.raw["ammo"]["distractor-artillery-shell"].subgroup = "mshinycombat2"
		data.raw["ammo"]["distractor-artillery-shell"].order = "c-03[distractor-artillery-shell]"
	end
	if data.raw["capsule"]["artillery-targeting-remote"] then
		data.raw["capsule"]["artillery-targeting-remote"].subgroup = "mshinycombat2"
		data.raw["capsule"]["artillery-targeting-remote"].order = "d-01[artillery-targeting-remote]"
	end
	--capsule
	if data.raw["capsule"]["poison-capsule"] then
		data.raw["capsule"]["poison-capsule"].subgroup = "mshinycombat3"
		data.raw["capsule"]["poison-capsule"].order = "a-01[poison-capsule]"
	end
	if data.raw["capsule"]["slowdown-capsule"] then
		data.raw["capsule"]["slowdown-capsule"].subgroup = "mshinycombat3"
		data.raw["capsule"]["slowdown-capsule"].order = "a-02[slowdown-capsule]"
	end
	if data.raw["capsule"]["acid-capsule"] then
		data.raw["capsule"]["acid-capsule"].subgroup = "mshinycombat3"
		data.raw["capsule"]["acid-capsule"].order = "a-03[poison-capsule]"
	end
	if data.raw["capsule"]["radiation-capsule"] then
		data.raw["capsule"]["radiation-capsule"].subgroup = "mshinycombat3"
		data.raw["capsule"]["radiation-capsule"].order = "a-04[slowdown-capsule]"
	end
	if data.raw["capsule"]["repair-capsule"] then
		data.raw["capsule"]["repair-capsule"].subgroup = "mshinycombat3"
		data.raw["capsule"]["repair-capsule"].order = "b-01[repair-capsule]"
	end
	if data.raw["capsule"]["defender-capsule"] then
		data.raw["capsule"]["defender-capsule"].subgroup = "mshinycombat3"
		data.raw["capsule"]["defender-capsule"].order = "b-02[defender-capsule]"
	end
	if data.raw["capsule"]["distractor-capsule"] then
		data.raw["capsule"]["distractor-capsule"].subgroup = "mshinycombat3"
		data.raw["capsule"]["distractor-capsule"].order = "b-03[distractor-capsule]"
	end
	if data.raw["capsule"]["destroyer-capsule"] then
		data.raw["capsule"]["destroyer-capsule"].subgroup = "mshinycombat3"
		data.raw["capsule"]["destroyer-capsule"].order = "b-04[destroyer-capsule]"
	end
	if data.raw["capsule"]["bob-laser-robot-capsule"] then
		data.raw["capsule"]["bob-laser-robot-capsule"].subgroup = "mshinycombat3"
		data.raw["capsule"]["bob-laser-robot-capsule"].order = "b-05[bob-laser-robot-capsule]"
	end
	--other
	if data.raw["item-subgroup"]["shinyequshield1"] then
		data.raw["capsule"]["discharge-defense-remote"].subgroup = "shinyequshield1"
		data.raw["capsule"]["discharge-defense-remote"].order = "b2[discharge-defense-remote]"
	end
	if data.raw["capsule"]["cliff-explosives"] then
		data.raw["capsule"]["cliff-explosives"].subgroup = "capsule"
		data.raw["capsule"]["cliff-explosives"].order = "c[cliff-explosives]"
	end
	if data.raw["item"]["ping-tool"] then
		data.raw["item"]["ping-tool"].subgroup = "capsule"
		data.raw["item"]["ping-tool"].order = "d[ping-tool]"
	end
	if data.raw["item-subgroup"]["shinyequpower1"] then
		if data.raw["item"]["portable-engine-equipment"] then
			data.raw["item"]["portable-engine-equipment"].subgroup = "shinyequpower1"
			data.raw["item"]["portable-engine-equipment"].order = "a0"
		end
	end
	--walls
	if data.raw["item-subgroup"]["shinywalls1"] then
		data:extend({
		  {
				type = "item-subgroup",
				name = "shinywalls2",
				group = "combat",
				order = "c1-a",
		  },
		})
		if data.raw["item"]["bi-wooden-fence"] then
			data.raw["item"]["bi-wooden-fence"].subgroup = "shinywalls1"
			data.raw["item"]["bi-wooden-fence"].order = "a[wall]-a[wooden-fence]"
		end
		if data.raw["item"]["stone-wall"] then
			data.raw["item"]["stone-wall"].subgroup = "shinywalls1"
			data.raw["item"]["stone-wall"].order = "a[wall]-b[stone-wall]"
		end
		if data.raw["item"]["concrete-wall"] then
			data.raw["item"]["concrete-wall"].subgroup = "shinywalls1"
			data.raw["item"]["concrete-wall"].order = "a[wall]-c[concrete-wall]"
		end
		if data.raw["item"]["reinforced-wall"] then
			data.raw["item"]["reinforced-wall"].subgroup = "shinywalls1"
			data.raw["item"]["reinforced-wall"].order = "a[wall]-d[concrete-wall]"
		end
		if data.raw["item"]["iron-wall"] then
			data.raw["item"]["iron-wall"].subgroup = "shinywalls1"
			data.raw["item"]["iron-wall"].order = "a[wall]-f[iron-wall]"
		end
		if data.raw["item"]["steel-walln"] then
			data.raw["item"]["steel-walln"].subgroup = "shinywalls1"
			data.raw["item"]["steel-walln"].order = "a[wall]-g[steel-wall]"
		end
		if data.raw["item"]["steel-wall"] then
			data.raw["item"]["steel-wall"].subgroup = "shinywalls1"
			data.raw["item"]["steel-wall"].order = "a[wall]-h[steel-wall]"
		end
		if data.raw["item"]["gate"] then
			data.raw["item"]["gate"].subgroup = "shinywalls2"
			data.raw["item"]["gate"].order = "b[gate]-a[gate]"
		end
		if data.raw["item"]["reinforced-gate"] then
			data.raw["item"]["reinforced-gate"].subgroup = "shinywalls2"
			data.raw["item"]["reinforced-gate"].order = "b[gate]-b[reinforced-gate]"
		end
		if data.raw["item"]["iron-gate"] then
			data.raw["item"]["iron-gate"].subgroup = "shinywalls2"
			data.raw["item"]["iron-gate"].order = "b[gate]-c[iron-gate]"
		end
		if data.raw["item"]["steel-gate"] then
			data.raw["item"]["steel-gate"].subgroup = "shinywalls2"
			data.raw["item"]["steel-gate"].order = "b[gate]-d[steel-gate]"
		end
		if data.raw["item"]["big_brother-surveillance-center"] then
			data.raw["item"]["big_brother-surveillance-center"].subgroup = "shinywalls2"
			data.raw["item"]["big_brother-surveillance-center"].order = "c1"
		end
		if data.raw["item"]["healing-station"] then
			data.raw["item"]["healing-station"].subgroup = "shinywalls2"
			data.raw["item"]["healing-station"].order = "c2"
		end
		if data.raw["item"]["rocket-silo"] then
			data.raw["item"]["rocket-silo"].subgroup = "shinywalls2"
			data.raw["item"]["rocket-silo"].order = "c3"
		end
	end
	--turrets
	if data.raw["item-subgroup"]["shinyturrets1"] then
		if data.raw["item"]["bi-dart-turret"] then
			data.raw["item"]["bi-dart-turret"].subgroup = "shinyturrets1"
			data.raw["item"]["bi-dart-turret"].order = "b1"
		end
		if data.raw["item"]["flamethrower-turret"] then
			data.raw["item"]["flamethrower-turret"].subgroup = "shinyturrets1"
			data.raw["item"]["flamethrower-turret"].order = "b2"
		end
		if data.raw["item"]["tesla-turret"] then
			data.raw["item"]["tesla-turret"].subgroup = "shinyturrets1"
			data.raw["item"]["tesla-turret"].order = "b3"
		end
		if data.raw["item"]["more-biters-seismic"] then
			data.raw["item"]["more-biters-seismic"].subgroup = "shinyturrets1"
			data.raw["item"]["more-biters-seismic"].order = "b4"
		end
	end
	if data.raw["item-subgroup"]["shinyturrets2"] then
		if data.raw["item"]["more-biters-sniper-turret"] then
			data.raw["item"]["more-biters-sniper-turret"].subgroup = "shinyturrets2"
			data.raw["item"]["more-biters-sniper-turret"].order = "b4"
		end
		if data.raw["item"]["bi-bio-cannon-area"] then
			data.raw["item"]["bi-bio-cannon-area"].subgroup = "shinyturrets2"
			data.raw["item"]["bi-bio-cannon-area"].order = "c0"
		end
	end
end

--intermediate-products
if data.raw["item-group"]["intermediate-products"] then
	if data.raw["item-subgroup"]["bob-gears"] then
		data.raw["item"]["iron-gear-wheel"].subgroup = "bob-gears"
		data.raw["item"]["iron-gear-wheel"].order = "a-02[iron-gear-wheel]"
		if data.raw["item"]["wooden-gear"] then
			data.raw["item"]["wooden-gear"].subgroup = "bob-gears"
			data.raw["item"]["wooden-gear"].order = "a-01[wooden-gear]"
		end
	else
		if data.raw["item"]["wooden-gear"] then
			data.raw["item"]["wooden-gear"].order = "c[h-wooden-gear]"
		end
	end
	if data.raw["item-subgroup"]["bob-electronic-components"] then
		data.raw["item"]["copper-cable"].subgroup = "bob-electronic-components"
		data.raw["item"]["copper-cable"].order = "0-a0[copper-cable]"
	end
	if data.raw["item"]["battery"] then
		data.raw["item"]["battery"].order = "h[battery]-a[battery]"
	end
	if data.raw["item"]["lithium-ion-battery"] then
		data.raw["item"]["lithium-ion-battery"].order = "h[battery]-b[lithium-ion]"
	end
	if data.raw["item"]["silver-zinc-battery"] then
		data.raw["item"]["silver-zinc-battery"].order = "h[battery]-c[silver-zinc]"
	end

	--uranium&space
	data:extend({
	  {
			type = "item-subgroup",
			name = "mshinyuranium",
			group = "intermediate-products",
			order = "f-01[uranium]",
	  },
	  {
			type = "item-subgroup",
			name = "mshinyspace",
			group = "intermediate-products",
			order = "f-02[space]",
	  },
	})
	if data.raw["recipe"]["nuclear-fuel"] then
		data.raw["recipe"]["nuclear-fuel"].subgroup = "mshinyuranium"
		data.raw["recipe"]["nuclear-fuel"].order = "a-01[uranium]"
	end
	if data.raw["recipe"]["uranium-fuel-cell"] then
		data.raw["recipe"]["uranium-fuel-cell"].subgroup = "mshinyuranium"
		data.raw["recipe"]["uranium-fuel-cell"].order = "a-02[uranium]"
	end
	if data.raw["recipe"]["nuclear-fuel-reprocessing"] then
		data.raw["recipe"]["nuclear-fuel-reprocessing"].subgroup = "mshinyuranium"
		data.raw["recipe"]["nuclear-fuel-reprocessing"].order = "a-03[uranium]"
	end
	if data.raw["recipe"]["uranium-processing"] then
		data.raw["recipe"]["uranium-processing"].subgroup = "mshinyuranium"
		data.raw["recipe"]["uranium-processing"].order = "b-01[uranium]"
	end
	if data.raw["recipe"]["uranium-rubble-cleaning"] then
		data.raw["recipe"]["uranium-rubble-cleaning"].subgroup = "mshinyuranium"
		data.raw["recipe"]["uranium-rubble-cleaning"].order = "b-02[uranium]"
	end
	if data.raw["recipe"]["kovarex-enrichment-process"] then
		data.raw["recipe"]["kovarex-enrichment-process"].subgroup = "mshinyuranium"
		data.raw["recipe"]["kovarex-enrichment-process"].order = "b-03[uranium]"
	end
	if data.raw["recipe"]["kovarex-enrichment-process"] then
		data.raw["recipe"]["kovarex-enrichment-process"].subgroup = "mshinyuranium"
		data.raw["recipe"]["kovarex-enrichment-process"].order = "b-04[uranium]"
	end
	if data.raw["item"]["rocket-fuel"] then
		data.raw["item"]["rocket-fuel"].subgroup = "mshinyspace"
		data.raw["item"]["rocket-fuel"].order = "a-01[space]"
	end
	if data.raw["item"]["low-density-structure"] then
		data.raw["item"]["low-density-structure"].subgroup = "mshinyspace"
		data.raw["item"]["low-density-structure"].order = "a-02[space]"
	end
	if data.raw["item"]["rocket-control-unit"] then
		data.raw["item"]["rocket-control-unit"].subgroup = "mshinyspace"
		data.raw["item"]["rocket-control-unit"].order = "a-03[space]"
	end
	if data.raw["item"]["satellite"] then
		data.raw["item"]["satellite"].subgroup = "mshinyspace"
		data.raw["item"]["satellite"].order = "a-04[space]"
	end
	if data.raw["item"]["destroyer-satellite"] then
		data.raw["item"]["destroyer-satellite"].subgroup = "mshinyspace"
		data.raw["item"]["destroyer-satellite"].order = "b-01[space]"
	end
	--sciencepack
	data:extend({
	  {
			type = "item-subgroup",
			name = "mshinyaliensart",
			group = "intermediate-products",
			order = "c-01[alien-artifact-small]",
	  },
	  {
			type = "item-subgroup",
			name = "mshinyalienart",
			group = "intermediate-products",
			order = "c-02[alien-artifact]",
	  },
	  {
			type = "item-subgroup",
			name = "mshinyasp",
			group = "intermediate-products",
			order = "g-01[sciencepack]",
	  },
	  {
			type = "item-subgroup",
			name = "mshinycoin",
			group = "intermediate-products",
			order = "g-02[sciencepack]",
	  },
	})
	--small-alien-artifact
	if data.raw["item"]["small-alien-artifact"] then
		data.raw["item"]["small-alien-artifact"].subgroup = "mshinyaliensart"
		data.raw["item"]["small-alien-artifact"].order = "a[small-alien-artifact]-a[pink]"
	end
	if data.raw["item"]["small-alien-artifact-red"] then
		data.raw["item"]["small-alien-artifact-red"].subgroup = "mshinyaliensart"
		data.raw["item"]["small-alien-artifact-red"].order = "a[small-alien-artifact]-b[red]"
	end
	if data.raw["item"]["small-alien-artifact-orange"] then
		data.raw["item"]["small-alien-artifact-orange"].subgroup = "mshinyaliensart"
		data.raw["item"]["small-alien-artifact-orange"].order = "a[small-alien-artifact]-c[orange]"
	end
	if data.raw["item"]["small-alien-artifact-yellow"] then
		data.raw["item"]["small-alien-artifact-yellow"].subgroup = "mshinyaliensart"
		data.raw["item"]["small-alien-artifact-yellow"].order = "a[small-alien-artifact]-d[yellow]"
	end
	if data.raw["item"]["small-alien-artifact-green"] then
		data.raw["item"]["small-alien-artifact-green"].subgroup = "mshinyaliensart"
		data.raw["item"]["small-alien-artifact-green"].order = "a[small-alien-artifact]-e[green]"
	end
	if data.raw["item"]["small-alien-artifact-blue"] then
		data.raw["item"]["small-alien-artifact-blue"].subgroup = "mshinyaliensart"
		data.raw["item"]["small-alien-artifact-blue"].order = "a[small-alien-artifact]-f[blue]"
	end
	if data.raw["item"]["small-alien-artifact-purple"] then
		data.raw["item"]["small-alien-artifact-purple"].subgroup = "mshinyaliensart"
		data.raw["item"]["small-alien-artifact-purple"].order = "a[small-alien-artifact]-g[purple]"
	end
	--alien-artifact
	if data.raw["item"]["alien-artifact"] then
		data.raw["item"]["alien-artifact"].subgroup = "mshinyalienart"
		data.raw["item"]["alien-artifact"].order = "a[alien-artifact]-a[pink]"
	end
	if data.raw["item"]["alien-artifact-red"] then
		data.raw["item"]["alien-artifact-red"].subgroup = "mshinyalienart"
		data.raw["item"]["alien-artifact-red"].order = "a[alien-artifact]-b[red]"
	end
	if data.raw["item"]["alien-artifact-orange"] then
		data.raw["item"]["alien-artifact-orange"].subgroup = "mshinyalienart"
		data.raw["item"]["alien-artifact-orange"].order = "a[alien-artifact]-c[orange]"
	end
	if data.raw["item"]["alien-artifact-yellow"] then
		data.raw["item"]["alien-artifact-yellow"].subgroup = "mshinyalienart"
		data.raw["item"]["alien-artifact-yellow"].order = "a[alien-artifact]-d[yellow]"
	end
	if data.raw["item"]["alien-artifact-green"] then
		data.raw["item"]["alien-artifact-green"].subgroup = "mshinyalienart"
		data.raw["item"]["alien-artifact-green"].order = "a[alien-artifact]-e[green]"
	end
	if data.raw["item"]["alien-artifact-blue"] then
		data.raw["item"]["alien-artifact-blue"].subgroup = "mshinyalienart"
		data.raw["item"]["alien-artifact-blue"].order = "a[alien-artifact]-f[blue]"
	end
	if data.raw["item"]["alien-artifact-purple"] then
		data.raw["item"]["alien-artifact-purple"].subgroup = "mshinyalienart"
		data.raw["item"]["alien-artifact-purple"].order = "a[alien-artifact]-g[purple]"
	end
	--alien-science-pack
	if data.raw["recipe"]["alien-science-pack"] then
		data.raw["recipe"]["alien-science-pack"].subgroup = "mshinyasp"
		data.raw["recipe"]["alien-science-pack"].order = "a-01[alien-science-pack]"
	end
	if data.raw["recipe"]["alien-science-pack-red"] then
		data.raw["recipe"]["alien-science-pack-red"].subgroup = "mshinyasp"
		data.raw["recipe"]["alien-science-pack-red"].order = "a-02[alien-science-pack]"
	end
	if data.raw["recipe"]["alien-science-pack-orange"] then
		data.raw["recipe"]["alien-science-pack-orange"].subgroup = "mshinyasp"
		data.raw["recipe"]["alien-science-pack-orange"].order = "a-03[alien-science-pack]"
	end
	if data.raw["recipe"]["alien-science-pack-yellow"] then
		data.raw["recipe"]["alien-science-pack-yellow"].subgroup = "mshinyasp"
		data.raw["recipe"]["alien-science-pack-yellow"].order = "a-04[alien-science-pack]"
	end
	if data.raw["recipe"]["alien-science-pack-green"] then
		data.raw["recipe"]["alien-science-pack-green"].subgroup = "mshinyasp"
		data.raw["recipe"]["alien-science-pack-green"].order = "a-05[alien-science-pack]"
	end
	if data.raw["recipe"]["alien-science-pack-blue"] then
		data.raw["recipe"]["alien-science-pack-blue"].subgroup = "mshinyasp"
		data.raw["recipe"]["alien-science-pack-blue"].order = "a-06[alien-science-pack]"
	end
	if data.raw["recipe"]["alien-science-pack-purple"] then
		data.raw["recipe"]["alien-science-pack-purple"].subgroup = "mshinyasp"
		data.raw["recipe"]["alien-science-pack-purple"].order = "a-07[alien-science-pack]"
	end
	if data.raw["recipe"]["tu-coin-1"] then
		data.raw["recipe"]["tu-coin-1"].subgroup = "mshinycoin"
		data.raw["recipe"]["tu-coin-1"].order = "a-01[coin]"
	end
	if data.raw["recipe"]["tu-coin-2"] then
		data.raw["recipe"]["tu-coin-2"].subgroup = "mshinycoin"
		data.raw["recipe"]["tu-coin-2"].order = "a-02[coin]"
	end
	if data.raw["recipe"]["tu-coin-3"] then
		data.raw["recipe"]["tu-coin-3"].subgroup = "mshinycoin"
		data.raw["recipe"]["tu-coin-3"].order = "a-03[coin]"
	end
	if data.raw["recipe"]["tu-coin-4"] then
		data.raw["recipe"]["tu-coin-4"].subgroup = "mshinycoin"
		data.raw["recipe"]["tu-coin-4"].order = "a-04[coin]"
	end
	--other
	if aai_industry == true then
		data:extend({
		  {
				type = "item-subgroup",
				name = "mshinyaai",
				group = "intermediate-products",
				order = "b-01[aai]",
		  },
		})
		if data.raw["item"]["iron-stick"] then
			data.raw["item"]["iron-stick"].subgroup = "mshinyaai"
			data.raw["item"]["iron-stick"].order = "a[intermediate-products]-01[iron-stick]"
		end
		if data.raw["item"]["motor"] then
			data.raw["item"]["motor"].subgroup = "mshinyaai"
			data.raw["item"]["motor"].order = "a[intermediate-products]-02[motor]"
		end
		if data.raw["item"]["electric-motor"] then
			data.raw["item"]["electric-motor"].subgroup = "mshinyaai"
			data.raw["item"]["electric-motor"].order = "a[intermediate-products]-03[motor]"
		end
		if data.raw["item"]["engine-unit"] then
			data.raw["item"]["engine-unit"].subgroup = "mshinyaai"
			data.raw["item"]["engine-unit"].order = "a[intermediate-products]-04[engine]"
		end
		if data.raw["item"]["electric-engine-unit"] then
			data.raw["item"]["electric-engine-unit"].subgroup = "mshinyaai"
			data.raw["item"]["electric-engine-unit"].order = "a[intermediate-products]-05[engine]"
		end
		--bob
		if data.raw["item-group"]["bob-intermediate-products"] then
			data.raw["item-subgroup"]["mshinyaai"].group = "bob-intermediate-products"
			data.raw["item-subgroup"]["mshinyaai"].order = "e-a0"
		end
	end
	if data.raw["item-group"]["bob-resource-products"] then
		if data.raw["item-subgroup"]["bob-resource"] then
			if data.raw["item"]["wood"] then
				data.raw["item"]["wood"].subgroup = "bob-resource"
				data.raw["item"]["wood"].order = "a[wood]-a[wood]"
			end
			if data.raw["recipe"]["bob-rubber"] then
				data.raw["recipe"]["bob-rubber"].subgroup = "bob-resource"
				data.raw["recipe"]["bob-rubber"].order = "f[resin]-f[rubber]"
			end
			if data.raw["recipe"]["heat-shield-tile"] then
				data.raw["recipe"]["heat-shield-tile"].subgroup = "bob-resource"
				data.raw["recipe"]["heat-shield-tile"].order = "g[heat-shield-tile]"
			end
		end
		if data.raw["item-group"]["resource-refining"] then
			if data.raw["item"]["stone-tablet"] then
				data.raw["item"]["stone-tablet"].subgroup = "bob-resource"
				data.raw["item"]["stone-tablet"].order = "a[stone]-a[stone]"
			end
			if data.raw["item"]["lithium"] then
				data.raw["item"]["lithium"].subgroup = "bob-resource"
				data.raw["item"]["lithium"].order = "g[lithium]"
			end
			if data.raw["recipe"]["lithium"] then
				data.raw["recipe"]["lithium"].subgroup = "bob-resource"
				data.raw["recipe"]["lithium"].order = "g[lithium]"
			end
		end
		if data.raw["item-group"]["angels-casting"] then
			if data.raw["item"]["solder-alloy"] then
				data.raw["item"]["solder-alloy"].subgroup = "angels-solder-casting"
				data.raw["item"]["solder-alloy"].order = "d"
			end
			if data.raw["item"]["copper-tungsten-alloy"] then
				data.raw["item"]["copper-tungsten-alloy"].subgroup = "angels-tungsten-casting"
				data.raw["item"]["copper-tungsten-alloy"].order = "la"
			end
			if data.raw["item"]["tungsten-carbide"] then
				data.raw["item"]["tungsten-carbide"].subgroup = "angels-tungsten-casting"
				data.raw["item"]["tungsten-carbide"].order = "lb"
			end
		end
	end
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
end

--other
if data.raw["item-group"]["petrochem-refining"] then
	if data.raw["recipe"]["diesel-fuel"] then
		data.raw["recipe"]["diesel-fuel"].subgroup = "petrochem-carbon-oil-feed"
		data.raw["recipe"]["diesel-fuel"].order = "h"
	end
	if data.raw["recipe"]["coal-liquefaction"] then
		data.raw["recipe"]["coal-liquefaction"].subgroup = "petrochem-coal"
		data.raw["recipe"]["coal-liquefaction"].order = "i[coal-liquefaction]"
	end
end
if data.raw["item-subgroup"]["shinygem1"] then
	if data.raw["recipe"]["sort-gem-ore"] then
		data.raw["recipe"]["sort-gem-ore"].subgroup = "shinygem1"
		data.raw["recipe"]["sort-gem-ore"].order = "a0"
	end
end
if data.raw["item-group"]["bob-resource-products"] then
	data.raw["item-group"]["bob-resource-products"].order = "b-or"
	data.raw["item-group"]["bob-resource-products"].inventory_order = "a-a"
end
if data.raw["item-group"]["bob-fluid-products"] then
	data.raw["item-group"]["bob-fluid-products"].order = "b-of"
	data.raw["item-group"]["bob-fluid-products"].inventory_order = "a-b"
end
if data.raw["item-group"]["bob-gems"] then
	data.raw["item-group"]["bob-gems"].order = "d-2"
	data.raw["item-group"]["bob-gems"].inventory_order = "g"
end
if data.raw["item-group"]["void"] then
	data.raw["item-group"]["void"].order = "d-3"
	data.raw["item-group"]["void"].inventory_order = "h"
end
if mods["vtk-deep-core-mining"] then
	if data.raw["recipe"]["vtk-deepcore-mining-drone"] then
		data.raw["recipe"]["vtk-deepcore-mining-drone"].subgroup = "raw-material"
		data.raw["recipe"]["vtk-deepcore-mining-drone"].order = "002[deepcore-mining-drone]"
	end
	if data.raw["recipe"]["vtk-deepcore-mining-ore-chunk-refining"] then
		data.raw["recipe"]["vtk-deepcore-mining-ore-chunk-refining"].subgroup = "raw-material"
		data.raw["recipe"]["vtk-deepcore-mining-ore-chunk-refining"].order = "001[deepcore-ore-processing]"
	end
end

--bioinderstries
if settings.startup["moreshinybobs-order-bioinderstries"] and settings.startup["moreshinybobs-order-bioinderstries"].value == true then
	require("bioinderstries")
end

--endgamecombet
if settings.startup["moreshinybobs-order-endgamecombet"] and settings.startup["moreshinybobs-order-endgamecombet"].value == true then
	require("endgamecombet")
end