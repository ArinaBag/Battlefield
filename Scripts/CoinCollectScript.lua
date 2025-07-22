-- Скрипт отключен(Enabled)
script.Parent.Touched:Connect(function(hit)
 if hit and hit.Parent:FindFirstChild("Humanoid") then
  local money = game.Players[hit.Parent.Name].leaderstats.Coins
  money.Value += 1
  script.Parent:Destroy()
 end
end)
