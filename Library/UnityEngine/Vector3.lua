local Vector3 = { x = 0.0, y = 0.0, z = 0.0 }
Vector3.__index = Vector3

local zeroVector = Vector3:new(0, 0, 0)
local oneVector = Vector3:new(1, 1, 1)
local upVector = Vector3:new(0, 1, 0)
local downVector = Vector3:new(0, -1, 0)

Vector3.zero = zeroVector

function Vector3:new(x, y, z)
  -- Convert x, y, and z to floats
  x = tonumber(x) or 0.0
  y = tonumber(y) or 0.0
  z = tonumber(z) or 0.0

  -- Create a new Vector3 instance with the given x, y, and z values
  local vector3 = {}
  setmetatable(vector3, self)

  -- Assign the x, y, and z values to the new Vector3 instance
  self.x = x
  self.y = y
  self.z = z

  -- Return the newly created Vector3 instance
  return vector3
end

-- Multiplies every component of this vector by the same component of scale.
function Vector3:Scale(scale)
  self.x = self.x * scale.x
  self.y = self.y * scale.y
  self.z = self.z * scale.z
end

-- Makes this vector have a magnitude of 1.
function Vector3:Normalize()
  local num = Vector3.Magnitude(self)
  if num > 9.999999747378752E-06 then
    self.x = self.x / num
    self.y = self.y / num
    self.z = self.z / num
  else
    self = zeroVector
  end
end

function Vector3:Magnitude(vector)
  return math.sqrt(vector.x * vector.x + vector.y * vector.y + vector.z * vector.z);
end

return Vector3
