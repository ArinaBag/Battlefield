local demonoid = script.Parent.DemonType
local currentHealth = demonoid.Health
demonoid.HealthChanged:Connect(function(health)
 if health <= 0 then
  local exp = game.Workspace.Data.Player.Value.leaderstats.Exp
  exp.Value += 1
  script.Parent:Destroy()
 end
end)
