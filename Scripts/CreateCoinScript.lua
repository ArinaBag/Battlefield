-- Скрипт не отключен(Enabled)
local coin_time = 2
while true do
 coin_time = math.random(5,60)
 wait(coin_time)
 local part = Instance.new("Part")
 part.Name = "coin"
 part.Shape = "Cylinder"
 part.Material = "Metal"
 part.Color = Color3.new(1, 0.933333, 0.00392157)
 part.Size = Vector3.new(0.2, 2, 2)
 part.Position = script.Parent.Position + Vector3.new(math.random(-2, 2), 2, math.random(-2, 2))
 part.Anchored = true
 part.CanCollide = false
 part.Parent = game.Workspace.CoinSpawner
 local s = script.Parent.CoinCollectScript
 s.Disabled = false
 s:Clone().Parent = part
 s.Disabled = true

end
