-- Скрипт в папке Data для подключения игрока
function whenLoaded(player)
 warn("Игрок", player, "подключился к игре!")
 script.Parent.Player.Value = player
 print(script.Parent.Player.Value)
end
game.Players.PlayerAdded:Connect(whenLoaded)
