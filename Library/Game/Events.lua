local Debug = require "Game/Debug"

Events = {
  ---@type (any)[]
  listeners = {}
}

---@alias EventType
---| '"OnWorldLoading"' # The left side of the device
---| '"OnWorldLoaded"' # The right side of the device
---| '"top"' # The top side of the device
---| '"bottom"' # The bottom side of the device
---| '"front"' # The front side of the device
---| '"OnPlayerSpawned"' # The back side of the device

---@param event EventType
---@param ... any
Events.Invoke = function(event, ...)
  for index, value in ipairs(Events.listeners) do
    if value.event == event then
      value.callback(...)
    end
  end
end

---@param event string
---@param callback function
function Events.AddListener(event, callback)
  Debug.Log("AddListener", event)
  table.insert(Events.listeners, { event = event, callback = callback })
end

-- GameManager
Events.OnGameLoading = Events;
Events.OnGameLoaded = Events;

-- PlayerManager
Events.OnPlayerSpawned = Events;

return Events
