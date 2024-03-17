Transform          = require "Library.UnityEngine.Transform"

local GameObject   = { name = "New Game Object", transform = Transform }
GameObject.__index = GameObject;

function GameObject:new(name)
  local gameObject = {}
  setmetatable(gameObject, self)
  gameObject.name = name
  return gameObject
end

function GameObject:Destroy()

end

function GameObject:PrintData()
  print("Pie flavor: ", self.name)
end
