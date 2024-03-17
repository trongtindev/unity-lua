Events = require "Game.Events"
Player = require "Game.Player"

---@param player Player
local function OnPlayerSpawned(player)
  print("callback OnPlayerSpawned", player)
end

Events.OnPlayerSpawned.AddListener("OnPlayerSpawned", OnPlayerSpawned)

-- test invokes
Events.Invoke("OnPlayerSpawned", {})
