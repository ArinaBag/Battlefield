-- Скрипт для добавления головного убора при нажатии на кнопку
local ReplicatedStorage=game:GetService("ReplicatedStorage")


local b = Instance.new("Accessory")
b.Name = "lPHat"

local handle = Instance.new("Part")
handle.Name = "Handle"
handle.Size = Vector3.new(1,1.6,1)
handle.Parent = b

local HatAttachment = Instance.new("Attachment")
HatAttachment.Name = "HatAttachment"
HatAttachment.Position = Vector3.new(0,0,0)
HatAttachment.Parent = handle

local mesh = Instance.new("SpecialMesh")
mesh.Name = "Mesh"
mesh.Scale = Vector3.new(1, 1, 1)
mesh.MeshId = "rbxassetid://1135431742"
mesh.TextureId = "rbxassetid://1135431779"
mesh.Parent = handle

b.Parent = ReplicatedStorage
