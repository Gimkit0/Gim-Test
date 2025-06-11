local Remote = {}
Remote.__index = Remote

function Remote.new(name, func, dotSize)
	local self = setmetatable({}, Remote)
	
	self.Services = {
		Players = game:GetService("Players"),
		RunService = game:GetService("RunService"),
	}
	self.Conns = {}
	
	self.LocalPlayer = self.Services.Players.LocalPlayer
	self.Camera = workspace.CurrentCamera
	self.Mouse = self.LocalPlayer:GetMouse()
	
	local remoteTool = Instance.new("Tool")
	remoteTool.Name = name
	remoteTool.RequiresHandle = true
	remoteTool.Parent = self.LocalPlayer.Backpack
	remoteTool.Grip = CFrame.new(-0.329, -0.576, 0.157) * CFrame.fromEulerAngles(math.rad(1.751), math.rad(-106.912), math.rad(5.74))
	local handle = Instance.new("Part", remoteTool)
	handle.Size = Vector3.new(.8, 2.3, .4)
	handle.Name = "Handle"
	handle.Reflectance = .35
	local mesh = Instance.new("SpecialMesh", handle)
	mesh.MeshType = Enum.MeshType.FileMesh
	mesh.MeshId = "http://www.roblox.com/asset/?id=88742707"
	mesh.TextureId = "http://www.roblox.com/asset/?id=88742969"
	mesh.Scale = Vector3.new(1, 1, 1)
	local attachment = Instance.new("Attachment", handle)
	attachment.Position = Vector3.new(0, 1, 0)
	attachment.Name = "GripAttachment"
	self.RemoteTool = remoteTool
	local placementDot = Instance.new("Part")
	placementDot.Name = "_PLACEMENT_DOT_"
	placementDot.Color = Color3.fromRGB(0, 255, 30)
	placementDot.Material = Enum.Material.Neon
	placementDot.Shape = Enum.PartType.Cylinder
	placementDot.Orientation = Vector3.new(0, 0, 90)
	placementDot.Size = Vector3.new(.1, dotSize, dotSize)
	placementDot.Anchored = true
	placementDot.CanCollide = false
	placementDot.Transparency = 0.5
	placementDot.CastShadow = false
	placementDot.CanCollide = false
	placementDot.Transparency = 0.5 -- or 1
	placementDot.CastShadow = false
	placementDot.CanQuery = false
	placementDot.Parent = nil
	self.PlacementDot = placementDot
	
	self.onActivate = func
	self.addConn = function(name, conn)
		self.Conns[name] = conn
	end
	
	self:Init()
	
	return self
end

function Remote:Init()
	local equipped = false
	
	self.RemoteTool.Activated:Connect(function()
		if self.Mouse.Hit and self.Mouse.Target then
			self:_activate()
			self:Destroy()
		end
	end)
	
	self.RemoteTool.Equipped:Connect(function()
		self.PlacementDot.Parent = self.Camera
		equipped = true
	end)
	
	self.RemoteTool.Unequipped:Connect(function()
		equipped = false
		self.PlacementDot.Parent = nil
	end)
	
	self.RemoteTool.Destroying:Connect(function()
		self:Destroy()
	end)
	
	self.addConn("RENDERSTEPPED", self.Services.RunService.RenderStepped:Connect(function()
		if self.Camera.CameraType == Enum.CameraType.Track then return end
		if (not self.PlacementDot) or (self.PlacementDot and self.PlacementDot.Parent == nil) then
			return
		end
		if not equipped then
			return
		end
		
		if self.Mouse.Hit and self.Mouse.Target then
			self.PlacementDot.Position = Vector3.new(self.Mouse.Hit.X, self.Mouse.Hit.Y, self.Mouse.Hit.Z)
		end
	end))
end

function Remote:_activate()
	if self.PlacementDot and self.PlacementDot.Parent then
		local success, err = pcall(self.onActivate, self.PlacementDot.Position, self.Mouse.Target)
		if not success then
			warn("Remote activation failed:", err)
		end
	end
end

function Remote:Destroy()
	for connName, conn in pairs(self.Conns) do
		conn:Disconnect()
	end
	if self.RemoteTool then
		self.RemoteTool:Destroy()
	end
	if self.PlacementDot then
		self.PlacementDot:Destroy()
	end
end

return Remote
