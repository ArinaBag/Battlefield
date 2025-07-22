local tool = script.Parent

local function onEquipped()
 tool.Handle.Anchored = false
end

local function onUnequipped()
 tool.Handle.Anchored = true
 tool.Enabled = false
 wait(1)
 tool.Enabled = true
end

local function spawnPart(pos)
 local part = Instance.new("Part")
 part.Anchored = true
 part.Size = Vector3.new(10, 0.2, 10)
 part.Position = pos + Vector3.new(0, -2, 0)
 part.Parent = game.Workspace
 part.BrickColor = BrickColor.Random()
 game:GetService("Debris"):AddItem(part, 5)
end

local function onActivate()
 tool.GripUp = Vector3.new(-1, 0, 0)
 spawnPart(tool.TopSphere.Position)
 wait(1)
 tool.GripUp = Vector3.new(1, 0, 0)
end

tool.Activated:Connect(onActivate)
tool.Equipped:Connect(onEquipped)
tool.Unequipped:Connect(onUnequipped)
