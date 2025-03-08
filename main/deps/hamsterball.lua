local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Camera = workspace.CurrentCamera
local Players = game:GetService("Players")

local SPEED_MULTIPLIER = 30
local JUMP_POWER = 60
local JUMP_GAP = 0.3

local player = Players.LocalPlayer
local character = player.Character

for i, v in ipairs(character:GetDescendants()) do
	if v:IsA("BasePart") then
		v.CanCollide = false
	end
end

local ball = character.HumanoidRootPart
ball.Shape = Enum.PartType.Ball
ball.Size = Vector3.new(5,5,5)
local humanoid = character:WaitForChild("Humanoid")
local params = RaycastParams.new()
params.FilterType = Enum.RaycastFilterType.Blacklist
params.FilterDescendantsInstances = {character}

local moveVector = Vector3.new(0, 0, 0)
UserInputService.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.Touch and input.UserInputState == Enum.UserInputState.Change then
		moveVector = Vector3.new(input.Position.x, 0, input.Position.y)
	else
		moveVector = Vector3.new(0, 0, 0)
	end
end)

local tc = RunService.RenderStepped:Connect(function(delta)
	ball.CanCollide = true
	humanoid.PlatformStand = true
	if UserInputService:GetFocusedTextBox() then return end

	if UserInputService:IsKeyDown(Enum.KeyCode.W) then
		ball.RotVelocity -= Camera.CFrame.RightVector * delta * SPEED_MULTIPLIER
	end
	if UserInputService:IsKeyDown(Enum.KeyCode.A) then
		ball.RotVelocity -= Camera.CFrame.LookVector * delta * SPEED_MULTIPLIER
	end
	if UserInputService:IsKeyDown(Enum.KeyCode.S) then
		ball.RotVelocity += Camera.CFrame.RightVector * delta * SPEED_MULTIPLIER
	end
	if UserInputService:IsKeyDown(Enum.KeyCode.D) then
		ball.RotVelocity += Camera.CFrame.LookVector * delta * SPEED_MULTIPLIER
	end

	if UserInputService.TouchEnabled then
		local moveDirection = (Camera.CFrame.RightVector * moveVector.X + Camera.CFrame.LookVector * moveVector.Z).unit
		ball.RotVelocity -= moveDirection * delta * SPEED_MULTIPLIER
	end
end)

UserInputService.JumpRequest:Connect(function()
	local result = workspace:Raycast(
		ball.Position,
		Vector3.new(0, -((ball.Size.Y / 2) + JUMP_GAP), 0),
		params
	)
	if result then
		ball.Velocity = ball.Velocity + Vector3.new(0, JUMP_POWER, 0)
	end
end)

Camera.CameraSubject = ball
humanoid.Died:Connect(function() tc:Disconnect() end)
