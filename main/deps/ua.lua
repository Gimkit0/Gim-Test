local UniversalAimbot = {}
UniversalAimbot.__index = UniversalAimbot

local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")

local localPlayer = Players.LocalPlayer
local camera = workspace.CurrentCamera
local viewportSize = camera.ViewportSize
local mouse = localPlayer:GetMouse()

local function validateConfig(defaults, options)
	defaults = defaults or {}
	options = options or {}
	for option, value in next, options do
		defaults[option] = value
	end
	return defaults
end

local function tween(obj, info, goal)
	local tween = TweenService:Create(obj, info, goal)
	tween:Play()
	return tween
end

local function castRay(origin, direction, params)
	while true do
		if type(params) == "table" then
			local newParams = RaycastParams.new()
			for k, v in next, params do
				newParams[k] = v
			end
			params = newParams
		end
		local result = workspace:Raycast(origin, direction, params)
		if not result then return nil end
		
		local part = result.Instance
		if part:IsA("BasePart") and (part.Transparency > 0 or not part.CanCollide) then
			local filter = params.FilterDescendantsInstances
			table.insert(filter, part)
			params.FilterDescendantsInstances = filter
		else
			return result
		end
	end
end

local function getHRP(character)
	if not character then return nil end
	if character:FindFirstChild("HumanoidRootPart") then
		return character.HumanoidRootPart
	elseif character:FindFirstChild("Torso") then
		return character.Torso
	elseif character:FindFirstChild("UpperTorso") then
		return character.UpperTorso
	elseif character:FindFirstChild("LowerTorso") then
		return character.LowerTorso
	elseif character:FindFirstChild("Head") then
		return character.Head
	end
	return nil
end

local function getPlayerDistance(character)
	local root = character and character:FindFirstChild("Head") or getHRP(character)
	if root and localPlayer.Character and localPlayer.Character.PrimaryPart then
		return (root.Position - localPlayer.Character.PrimaryPart.Position).Magnitude
	end
end

function UniversalAimbot.new(options)
	local self = setmetatable({}, UniversalAimbot)
	self.Config = validateConfig({
		CIRCLE_RADIUS = 200,
		PREDICTION = 0.1,
		SMOOTHNESS = 0.1,
		
		AIM_MODE = "Mouse",
		
		BULLET_SPEED = 1,
		
		HEAD_OFFSET = Vector3.new(0, 0, 0),

		TEAM_CHECK = true,
		FRIEND_CHECK = true,
		COUNT_NPCS = false,
	}, options)
	return self
end

function UniversalAimbot:GetTargetsOnScreen(countNpcs: boolean)
	local targets = {}
	for _, player in pairs(Players:GetPlayers()) do
		if player ~= localPlayer then
			local character = player.Character
			local rootPart = getHRP(character)
			if character and rootPart then
				local screenPos, onScreen = camera:WorldToViewportPoint(rootPart.Position)
				if onScreen then
					table.insert(targets, player)
				end
			end
		end
	end
	if countNpcs then
		for _, model in pairs(workspace:GetDescendants()) do
			local rootPart = getHRP(model)
			if model:IsA("Model") and rootPart and model:FindFirstChildWhichIsA("Humanoid") then
				local screenPos, onScreen = camera:WorldToViewportPoint(rootPart.Position)
				if onScreen then
					table.insert(targets, {
						Character = model,
					})
				end
			end
		end
	end
	return targets
end

function UniversalAimbot:IsInSight(model: Instance)
	if model:IsA("Model") then
		for _, part in pairs(model:GetDescendants()) do
			if part:IsA("BasePart") then
				local result = castRay(camera.CFrame.Position, part.Position, {FilterDescendantsInstances = {localPlayer.Character}})
				if result then return true end
			end
		end
	elseif model:IsA("BasePart") then
		local result = castRay(camera.CFrame.Position, model.Position, {FilterDescendantsInstances = {localPlayer.Character}})
		if result then return true end
	end
end

function UniversalAimbot:GetRawPriorityLevel(model: Instance)
	local priority = 0
	
	local humanoid = model:FindFirstChildWhichIsA("Humanoid")
	if humanoid and humanoid.Health <= 0 then return math.huge end
	
	local player = Players:GetPlayerFromCharacter(model)
	if player and player == localPlayer then return math.huge end
	--if player and player:IsFriendsWithAsync(localPlayer) then return math.huge end
	
	-- Additions
	if player then priority -= 1000 end
	if self:IsInSight(model) then priority -= 1000 end
	
	-- Subtractions
	if model:FindFirstChildWhichIsA("ForceField") then priority += 1000 end
	if humanoid and humanoid.Health == math.huge then priority += 1000 end
	--if player and player:IsFriendsWithAsync(localPlayer) then priority += 1000 end
	
	return priority
end

function UniversalAimbot:GetClosest(teamCheck, circleRadius, countNpcs)
	local bestScore = math.huge
	local dist = math.huge
	local target = nil

	for _, player in ipairs(self:GetTargetsOnScreen(countNpcs)) do
		if player.Character then
			local hum = player.Character:FindFirstChildOfClass("Humanoid")
			if player ~= localPlayer and hum and hum.Health > 0 then
				if teamCheck and localPlayer.Team and localPlayer.Team.Name:lower() ~= "neutral" then
					if player.Team == localPlayer.Team then
						continue
					end
				end

				local char = player.Character
				local root = char and char:FindFirstChild("Head") or getHRP(char)
				if root then
					local screenPos, visible = camera:WorldToViewportPoint(root.Position)
					local playerDistance = getPlayerDistance(char)
					local screenDistance = (Vector2.new(mouse.X, mouse.Y) - Vector2.new(screenPos.X, screenPos.Y)).Magnitude
					
					local penalty = self:GetRawPriorityLevel(char)
					if penalty == math.huge then continue end

					if visible then
						if (screenDistance < dist and screenDistance < circleRadius) then
							local score = (playerDistance * 0.6) + (screenDistance * 0.4) + penalty
							if score < bestScore then
								dist = screenDistance
								bestScore = score
								target = char
							end
						end
					end
				end
			end
		end
	end

	return target
end

function UniversalAimbot:GetPrediction(target)
	if not localPlayer.Character then return end
	if target == nil then
		self:Stop()
		return
	end
	local playerDistance = getPlayerDistance(target)
	if not playerDistance then
		self:Stop()
		return
	end
	
	local function getCameraTarget(target)
		local humanoid = target:FindFirstChildOfClass("Humanoid")
		if not humanoid then return end
		if humanoid.Health <= 0 then return end
		
		return target:FindFirstChild("Head")
			or target:FindFirstChild("Torso")
			or target:FindFirstChild("UpperTorso")
			or target:FindFirstChild("LowerTorso")
	end
	
	local cameraTarget = getCameraTarget(target)
	local nativeTarget = getCameraTarget(localPlayer.Character)
	
	if not cameraTarget then return end
	if not nativeTarget then return end
	
	local basePrediction = self.Config.PREDICTION
	local maxPrediction = 0.2

	local maxDistance = 100
	local minDistance = 5

	local alpha = 1 - math.clamp(
		(playerDistance + minDistance) * (maxDistance + minDistance),
		0,
		1
	)

	local prediction = basePrediction + (maxPrediction - basePrediction) * (alpha / self.Config.BULLET_SPEED)
	local future = cameraTarget.CFrame + (cameraTarget.Velocity * prediction + self.Config.HEAD_OFFSET)
	
	return {
		WorldPosition = CFrame.lookAt(camera.CFrame.Position, future.Position),
		ViewportPoint = {camera:WorldToViewportPoint(future.Position)},
	}
end

function UniversalAimbot:Start()
	self:Stop()
	
	local target = self:GetClosest(self.Config.TEAM_CHECK, self.Config.CIRCLE_RADIUS, self.Config.COUNT_NPCS)
	if target then
		local cameraTarget = target:FindFirstChild("Head")
			or target:FindFirstChild("Torso")
			or target:FindFirstChild("UpperTorso")
			or target:FindFirstChild("LowerTorso")
		
		if cameraTarget then
			if self.Config.AIM_MODE == "Camera" or RunService:IsStudio() then
				--self.LastCameraType = camera.CameraType
				self.LastMouseBehavior = UserInputService.MouseBehavior
				self.LastMouseSensitivity = UserInputService.MouseDeltaSensitivity

				--camera.CameraType = Enum.CameraType.Custom
				UserInputService.MouseBehavior = Enum.MouseBehavior.LockCenter
				UserInputService.MouseDeltaSensitivity = 0
			end
			
			self.Connection = RunService.RenderStepped:Connect(function()
				local prediction = self:GetPrediction(target)
				if not prediction then self:Stop() return end
				
				if self.Config.AIM_MODE == "Camera" or RunService:IsStudio() then
					camera.CFrame = prediction.WorldPosition
				elseif self.Config.AIM_MODE == "Mouse" then
					if RunService:IsStudio() and prediction.ViewportPoint[2] then
						mouse.Target = Vector2.new(select(2, unpack(prediction.ViewportPoint)))
					elseif mousemoverel and typeof(mousemoverel) == "function" and prediction.ViewportPoint[2] then
						local mouseLocation = UserInputService:GetMouseLocation()
						local sensitivity = 20
						mousemoverel((prediction.ViewportPoint[1].X - mouseLocation.X) / sensitivity, (prediction.ViewportPoint[1].Y - mouseLocation.Y) / sensitivity)
					end
				end
			end)
		end
	end
end

function UniversalAimbot:Stop()
	if self.Connection then
		self.Connection:Disconnect()
		self.Connection = nil
	end
	if self.LastCameraType then
		camera.CameraType = self.LastCameraType
		self.LastCameraType = nil
	end
	if self.LastMouseBehavior then
		UserInputService.MouseBehavior = self.LastMouseBehavior
		self.LastMouseBehavior = nil
	end
	if self.LastMouseSensitivity then
		UserInputService.MouseDeltaSensitivity = self.LastMouseSensitivity
		self.LastMouseSensitivity = nil
	end
end

return UniversalAimbot
