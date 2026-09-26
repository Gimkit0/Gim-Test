local UniversalPlayerESP = {}
UniversalPlayerESP.__index = UniversalPlayerESP

local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
--local Teams = game:GetService("Teams")
local CoreGui = RunService:IsStudio() and Players.LocalPlayer:WaitForChild("PlayerGui") or gethui and gethui() or game:GetService("CoreGui")

local localPlayer = Players.LocalPlayer

local function validateConfig(defaults, options)
	defaults = defaults or {}
	options = options or {}
	for option, value in next, options do
		defaults[option] = value
	end
	return defaults
end

local function safePlayerAdded(callback)
	for _, player in ipairs(Players:GetPlayers()) do
		callback(player)
	end
	return Players.PlayerAdded:Connect(callback)
end

local function safePropertyChanged(object, property, callback)
	local value = object[property]
	task.spawn(callback, value)
	return object:GetPropertyChangedSignal(property):Connect(callback)
end

local function getBonePositions(character)
	if not character then return nil end

	local bones = {
		Head = character:FindFirstChild("Head"),
		UpperTorso = character:FindFirstChild("UpperTorso") or character:FindFirstChild("Torso"),
		LowerTorso = character:FindFirstChild("LowerTorso") or character:FindFirstChild("Torso"),
		RootPart = character:FindFirstChild("HumanoidRootPart"),

		-- Left Arm
		LeftUpperArm = character:FindFirstChild("LeftUpperArm") or character:FindFirstChild("Left Arm"),
		LeftLowerArm = character:FindFirstChild("LeftLowerArm") or character:FindFirstChild("Left Arm"),
		LeftHand = character:FindFirstChild("LeftHand") or character:FindFirstChild("Left Arm"),

		-- Right Arm
		RightUpperArm = character:FindFirstChild("RightUpperArm") or character:FindFirstChild("Right Arm"),
		RightLowerArm = character:FindFirstChild("RightLowerArm") or character:FindFirstChild("Right Arm"),
		RightHand = character:FindFirstChild("RightHand") or character:FindFirstChild("Right Arm"),

		-- Left Leg
		LeftUpperLeg = character:FindFirstChild("LeftUpperLeg") or character:FindFirstChild("Left Leg"),
		LeftLowerLeg = character:FindFirstChild("LeftLowerLeg") or character:FindFirstChild("Left Leg"),
		LeftFoot = character:FindFirstChild("LeftFoot") or character:FindFirstChild("Left Leg"),

		-- Right Leg
		RightUpperLeg = character:FindFirstChild("RightUpperLeg") or character:FindFirstChild("Right Leg"),
		RightLowerLeg = character:FindFirstChild("RightLowerLeg") or character:FindFirstChild("Right Leg"),
		RightFoot = character:FindFirstChild("RightFoot") or character:FindFirstChild("Right Leg")
	}

	-- Verify we have the minimum required bones
	if not (bones.Head and bones.UpperTorso) then return nil end

	return bones
end

local function getSize(object)
	if object:IsA("Model") then
		return object:GetExtentsSize()
	elseif object:IsA("BasePart") then
		return object.Size
	end
end

local function createInfo()
	local G2L = {};
	G2L["1"] = Instance.new("BillboardGui", CoreGui);
	G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
	G2L["1"]["AlwaysOnTop"] = true;
	G2L["1"]["LightInfluence"] = 0;
	G2L["1"]["MaxDistance"] = math.huge
	G2L["2"] = Instance.new("Frame", G2L["1"]);
	G2L["2"]["BorderSizePixel"] = 0;
	G2L["2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
	G2L["2"]["Size"] = UDim2.new(0, 200, 0, 200);
	G2L["2"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
	G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["2"]["Name"] = [[Info]];
	G2L["2"]["BackgroundTransparency"] = 1;
	G2L["3"] = Instance.new("TextLabel", G2L["2"]);
	G2L["3"]["TextWrapped"] = true;
	G2L["3"]["BorderSizePixel"] = 0;
	G2L["3"]["TextSize"] = 16;
	G2L["3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["3"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
	G2L["3"]["TextColor3"] = Color3.fromRGB(0, 255, 9);
	G2L["3"]["BackgroundTransparency"] = 1;
	G2L["3"]["Size"] = UDim2.new(1, 0, 1, 0);
	G2L["3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["3"]["Text"] = [[@OnlyTwentyCharacters]];
	G2L["3"]["Name"] = [[UserName]];
	G2L["4"] = Instance.new("UIStroke", G2L["3"]);
	G2L["4"]["Name"] = [[Stroke]];
	G2L["5"] = Instance.new("TextLabel", G2L["2"]);
	G2L["5"]["TextWrapped"] = true;
	G2L["5"]["BorderSizePixel"] = 0;
	G2L["5"]["TextSize"] = 20;
	G2L["5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["5"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
	G2L["5"]["TextColor3"] = Color3.fromRGB(0, 255, 9);
	G2L["5"]["BackgroundTransparency"] = 1;
	G2L["5"]["Size"] = UDim2.new(1, 0, 1, 0);
	G2L["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["5"]["Text"] = [[VeryCoolName]];
	G2L["5"]["Name"] = [[DisplayName]];
	G2L["6"] = Instance.new("UIStroke", G2L["5"]);
	G2L["6"]["Name"] = [[Stroke]];
	G2L["7"] = Instance.new("UIPadding", G2L["5"]);
	G2L["7"]["Name"] = [[Paddding]];
	G2L["7"]["PaddingBottom"] = UDim.new(0, 50);
	G2L["8"] = Instance.new("Frame", G2L["1"]);
	G2L["8"]["BorderSizePixel"] = 0;
	G2L["8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["8"]["Size"] = UDim2.new(1, 0, 1, 0);
	G2L["8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["8"]["Name"] = [[Outline]];
	G2L["8"]["BackgroundTransparency"] = 1;
	G2L["9"] = Instance.new("UIStroke", G2L["8"]);
	G2L["9"]["Thickness"] = 2;
	G2L["9"]["Color"] = Color3.fromRGB(0, 255, 9);
	G2L["9"]["LineJoinMode"] = Enum.LineJoinMode.Miter;
	G2L["9"]["Name"] = [[Stroke]];
	G2L["a"] = Instance.new("Frame", G2L["8"]);
	G2L["a"]["Active"] = true;
	G2L["a"]["BorderSizePixel"] = 0;
	G2L["a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["a"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
	G2L["a"]["Size"] = UDim2.new(1, 3, 1, 3);
	G2L["a"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
	G2L["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["a"]["Name"] = [[OuterStroke]];
	G2L["a"]["BackgroundTransparency"] = 1;
	G2L["b"] = Instance.new("UIStroke", G2L["a"]);
	G2L["b"]["LineJoinMode"] = Enum.LineJoinMode.Miter;
	G2L["b"]["Name"] = [[Stroke]];
	G2L["c"] = Instance.new("Frame", G2L["8"]);
	G2L["c"]["Active"] = true;
	G2L["c"]["BorderSizePixel"] = 0;
	G2L["c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["c"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
	G2L["c"]["Size"] = UDim2.new(1, -3, 1, -3);
	G2L["c"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
	G2L["c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["c"]["Name"] = [[InnerStroke]];
	G2L["c"]["BackgroundTransparency"] = 1;
	G2L["d"] = Instance.new("UIStroke", G2L["c"]);
	G2L["d"]["LineJoinMode"] = Enum.LineJoinMode.Miter;
	G2L["d"]["Name"] = [[Stroke]];
	return G2L["1"]
end

function UniversalPlayerESP.new(options)
	local self = setmetatable({}, UniversalPlayerESP)
	self.Config = validateConfig({
		REFRESH_RATE = 20,
		
		SHOW_TEAM_COLORS = true,
	}, options)
	self.ActivePlayers = {}
	return self
end

function UniversalPlayerESP:CreateESP(player)
	if not player.Character then return end
	if player == localPlayer then return end
	
	local playerSize = getSize(player.Character)
	if self.ActivePlayers[player] then
		self.ActivePlayers[player].Info.Adornee = player.Character or player.CharacterAdded:Wait()
		self.ActivePlayers[player].Info.Size = UDim2.new(playerSize.X, 0, playerSize.Y, 0)
		self.ActivePlayers[player].Highlight.Adornee = player.Character or player.CharacterAdded:Wait()
		return
	end
	
	local charInfo = createInfo()
	charInfo.Info.DisplayName.Text = player.DisplayName
	charInfo.Info.UserName.Text = player.Name
	charInfo.Adornee = player.Character or player.CharacterAdded:Wait()
	charInfo.Size = UDim2.new(playerSize.X, 0, playerSize.Y, 0)
	
	local highlight = Instance.new("Highlight", CoreGui)
	highlight.FillTransparency = 1
	highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
	highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
	highlight.Adornee = charInfo.Adornee
	
	local propConn = safePropertyChanged(player, "TeamColor", function()
		if self.Config.SHOW_TEAM_COLORS then
			charInfo.Info.DisplayName.TextColor3 = player.TeamColor.Color
			charInfo.Info.UserName.TextColor3 = player.TeamColor.Color
			charInfo.Outline.Stroke.Color = player.TeamColor.Color
			highlight.OutlineColor = player.TeamColor.Color
		end
	end)
	
	self.ActivePlayers[player] = {
		Info = charInfo,
		Highlight = highlight,
		
		PropertyChanged = propConn
	}
end

function UniversalPlayerESP:RemoveESP(player)
	if not self.ActivePlayers[player] then return end
	self.ActivePlayers[player].Info:Destroy()
	self.ActivePlayers[player].Highlight:Destroy()
	self.ActivePlayers[player].PropertyChanged:Disconnect()
	self.ActivePlayers[player] = nil
end

function UniversalPlayerESP:Enable()
	local lastUpdate = 0
	
	self.PlayerAdded = safePlayerAdded(function(player)
		self:CreateESP(player)
	end)
	self.PlayerRemoving = Players.PlayerRemoving:Connect(function(player)
		self:RemoveESP(player)
	end)
	self.Render = task.spawn(function()
		while task.wait(0.1) do
			local currentTime = tick()
			if currentTime - lastUpdate >= (1 / self.Config.REFRESH_RATE) then
				for _, player in ipairs(Players:GetPlayers()) do
					self:CreateESP(player)
				end
			end
			lastUpdate = currentTime
		end
	end)
end

function UniversalPlayerESP:Disable()
	if self.PlayerAdded then
		self.PlayerAdded:Disconnect()
		self.PlayerAdded = nil
	end
	if self.PlayerRemoving then
		self.PlayerRemoving:Disconnect()
		self.PlayerRemoving = nil
	end
	if self.Render then
		task.cancel(self.Render)
		self.Render = nil
	end
	for _, player in ipairs(Players:GetPlayers()) do
		self:RemoveESP(player)
	end
end

return UniversalPlayerESP
