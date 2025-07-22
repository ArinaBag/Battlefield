-- Скрипт для инструмента MagicWand
Wand = script.Parent
function add()
 local X = math.random(-20, 20)
 local Z = math.random(-20, 20)
 local detal =Instance.new("Part", workspace)
 local X0 = Wand.Part.Position.X
 local Z0 = Wand.Part.Position.Z
 detal.Position = Vector3.new(X0 + X, 100, Z0 + Z)
 detal.BrickColor = BrickColor.Random()
 detal.Size = detal.Size*math.random(1.5)
 detal.Shape = "Ball"
end
Wand.Activated:Connect(add)
