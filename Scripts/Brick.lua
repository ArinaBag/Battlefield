tool = script.Parent
function add()
 local brick = Instance.new("Part", workspace)
 local c = game.Players.LocalPlayer.Character.Humanoid.RootPart
 brick.Position = c.Position + Vector3.new(10,0,0)
 brick.BrickColor=BrickColor.Random()
end
tool.Activated:Connect(add)
