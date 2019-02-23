local reactor_interface = {}

TICKS_PER_UPDATE = settings.global["reactor-interface-tick-interval"].value

REACTOR_ENTITY_NAME = "nuclear-reactor"
INTERFACE_ENTITY_NAME = "reactor-interface"

SIGNAL_TEMP = {type="virtual", name="signal-temperature"}
SIGNAL_FUEL_REMAINING = {type="virtual", name="signal-fuel"}
SIGNAL_FUEL_CELLS = {type="item", name="uranium-fuel-cell"}
SIGNAL_FUEL_SPENT = {type="item", name="used-up-uranium-fuel-cell"}

function init_global()
	global = global or {}
	global.reactors = global.reactors or {}

	local count = 0
	for _,surface in pairs(game.surfaces) do
		local reactors = surface.find_entities_filtered{name=REACTOR_ENTITY_NAME}
		for i,reactor in pairs(reactors) do
			add_interface(reactor)
			count = count + 1
		end
	end
	game.print("Added interfaces to " .. count .. " reactors.")
end

script.on_init(init_global)

function add_interface(reactor)
  local interface = reactor.surface.create_entity
  {
    name = INTERFACE_ENTITY_NAME,
    position = {reactor.position.x, reactor.position.y + 1},
    force = reactor.force
  }
  interface.operable = false
  interface.destructible = false
  table.insert(global.reactors,
  {
    id = reactor.unit_number,
    entity = reactor,
    interface = interface,
    control = interface.get_or_create_control_behavior(),
    signals =
    {
      parameters =
      {
        ["temp"] = {signal=SIGNAL_TEMP, count=0, index=1},
        ["fuel"] = {signal=SIGNAL_FUEL_REMAINING, count=0, index=2},
        ["cells"] = {signal=SIGNAL_FUEL_CELLS, count=0, index=3},
        ["spent"] = {signal=SIGNAL_FUEL_SPENT, count=0, index=4},
      }
    }
  })
end

function remove_interface(dead_reactor)
  for i,reactor in pairs(global.reactors) do
    if reactor.id == dead_reactor.unit_number then
      reactor.interface.destroy() -- remove interface
      table.remove(global.reactors, i) -- remove reactor's table entry
    end
  end
end

script.on_event(defines.events.on_built_entity, function(event)
  if event.created_entity.name == REACTOR_ENTITY_NAME then
    add_interface(event.created_entity)
  end
end)

script.on_event(defines.events.on_robot_built_entity, function(event)
  if event.created_entity.name == REACTOR_ENTITY_NAME then
    add_interface(event.created_entity)
  end
end)

script.on_event(defines.events.on_pre_player_mined_item, function(event)
  if event.entity.name == REACTOR_ENTITY_NAME then
    remove_interface(event.entity)
  end
end)

script.on_event(defines.events.on_robot_pre_mined, function(event)
  if event.entity.name == REACTOR_ENTITY_NAME then
    remove_interface(event.entity)
  end
end)

script.on_event(defines.events.on_entity_died, function(event)
  if event.entity.name == REACTOR_ENTITY_NAME then
    remove_interface(event.entity)
  end
end)

function update(index)
  local reactor = global.reactors[index]
  reactor.signals.parameters["temp"].count = reactor.entity.temperature
  local burner = reactor.entity.burner
  if burner.remaining_burning_fuel > 0 then
    reactor.signals.parameters["fuel"].count = (burner.remaining_burning_fuel / burner.currently_burning.fuel_value * 100)
  else
    reactor.signals.parameters["fuel"].count = 0
  end
  local cells = burner.inventory
  if not cells.is_empty() then
    reactor.signals.parameters["cells"].signal.name = cells[1].name
    reactor.signals.parameters["cells"].count = cells[1].count
  else
    reactor.signals.parameters["cells"].count = 0
  end
  local spent = reactor.entity.get_burnt_result_inventory()
  if not spent.is_empty() then
    reactor.signals.parameters["spent"].signal.name = spent[1].name
    reactor.signals.parameters["spent"].count = spent[1].count
  else
    reactor.signals.parameters["spent"].count = 0
  end
  reactor.control.parameters = reactor.signals
end

if TICKS_PER_UPDATE == 1 then
  script.on_event(defines.events.on_tick, function(event)
    for i,_ in pairs(global.reactors) do
      update(i)
    end
  end)
else
  script.on_event(defines.events.on_tick, function(event)
    local index = (event.tick % TICKS_PER_UPDATE) + 1
    while index <= #global.reactors do
      update(index)
      index = index + TICKS_PER_UPDATE
    end
  end)
end

return reactor_interface