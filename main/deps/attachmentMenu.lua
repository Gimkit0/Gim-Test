local TweenService 		= game:GetService("TweenService")
local Run 				= game:GetService("RunService")

local plr 			= game.Players.LocalPlayer
local RS 			= game.ReplicatedStorage
local Engine 		= RS:WaitForChild("ACS_Engine")
local Mods 			= Engine:FindFirstChild("Modules") or Engine:FindFirstChild("Modulos")
local GunModels 	= Engine:FindFirstChild("GunModels")
local AttModels 	= Engine:FindFirstChild("AttModels")
local AttModules  	= Engine:FindFirstChild("AttModules")
local Rules			= Engine:FindFirstChild("GameRules")

local Ultil			= require(Mods:WaitForChild("Utilities"))

--local WT 				= script.Parent.Vars.Model.Value
local WT_Tool 			= script.Parent.Vars.ToolStorage
--local WT_Evt 			= WT.Configuration.Events

local Gun, GunData

local viewportFrame 	= script.Parent.Main.ViewportFrame

local viewportCamera 	= Instance.new("Camera")
viewportFrame.CurrentCamera = viewportCamera
viewportCamera.Parent 	= viewportFrame

local model
local orientation, size

local SightAtt, BarrelAtt, UnderBarrelAtt, OtherAtt
local SightData, BarrelData, UnderBarrelData, OtherData

local a = 90

--------------------mods

local ModTable = {

	camRecoilMod 	= {
		RecoilUp 	= 1,
		RecoilLeft 	= 1,
		RecoilRight = 1
	}

	,gunRecoilMod	= {
		RecoilUp 	= 1,
		RecoilTilt 	= 1,
		RecoilLeft 	= 1,
		RecoilRight = 1
	}

	,ZoomValue 		= 70
	,AimRM 			= 1
	,SpreadRM 		= 1
	,DamageMod 		= 1
	,minDamageMod 	= 1

	,MinRecoilPower 			= 1
	,MaxRecoilPower 			= 1
	,RecoilPowerStepAmount 		= 1

	,MinSpread 					= 1
	,MaxSpread 					= 1					
	,AimInaccuracyStepAmount 	= 1
	,AimInaccuracyDecrease 		= 1
	,WalkMult 					= 1
	,adsTime 					= 1		
	,MuzzleVelocity 			= 1
}  

--------------------mods


function UnSetGun()
	model:Destroy()
	model = nil
	Gun = nil
	GunData = nil
	resetMods()
end

function SetupGun()

	for Arg1, Child in pairs(WT_Tool:GetChildren()) do
		if Child:IsA("Tool") then
			Gun 		= Child
			--GunData 	= require(Child.ACS_Settings)

			model				= GunModels:FindFirstChild(Child.Name):Clone()
			model.PrimaryPart 	= model.Handle
			
			for L_213_forvar1, L_214_forvar2 in pairs(model.Nodes:GetChildren()) do
				if L_214_forvar2:IsA('BasePart') then
					Ultil.Weld(L_214_forvar2, model:WaitForChild("Handle"))
					L_214_forvar2.Anchored = false
					L_214_forvar2.CanCollide = false
				end
			end;
			
			loadAttachment(model)
			
			orientation, size 	= model:GetBoundingBox()
			model.Parent 		= viewportFrame
			
			model:SetPrimaryPartCFrame(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(a),math.rad(0)))

			viewportCamera.CFrame = CFrame.new(size*1.5, model.PrimaryPart.Position)
			
			GunInfoUpdate()
			
			if model.Nodes:FindFirstChild("Sight") ~= nil then
				script.Parent.Main.Attachments.Sight.Visible = true
			else
				script.Parent.Main.Attachments.Sight.Visible = false
			end
			
			if model.Nodes:FindFirstChild("Barrel") ~= nil then
				script.Parent.Main.Attachments.Barrel.Visible = true
			else
				script.Parent.Main.Attachments.Barrel.Visible = false
			end
			
			if model.Nodes:FindFirstChild("UnderBarrel") ~= nil then
				script.Parent.Main.Attachments.Under.Visible = true
			else
				script.Parent.Main.Attachments.Under.Visible = false
			end
			
			if model.Nodes:FindFirstChild("Other") ~= nil then
				script.Parent.Main.Attachments.Other.Visible = true
			else
				script.Parent.Main.Attachments.Other.Visible = false
			end
			
		else
			
			Gun 		= nil
			GunData		= nil
			model 		= nil
			orientation = nil 
			size 		= nil
			GunInfoUpdate()
		end
	end

end

function resetMods()

	ModTable.camRecoilMod.RecoilUp 		= 1
	ModTable.camRecoilMod.RecoilLeft 	= 1
	ModTable.camRecoilMod.RecoilRight 	= 1

	ModTable.gunRecoilMod.RecoilUp 		= 1
	ModTable.gunRecoilMod.RecoilTilt 	= 1
	ModTable.gunRecoilMod.RecoilLeft 	= 1
	ModTable.gunRecoilMod.RecoilRight 	= 1

	ModTable.AimRM			= 1
	ModTable.SpreadRM 		= 1
	ModTable.DamageMod 		= 1
	ModTable.minDamageMod 	= 1

	ModTable.MinRecoilPower 		= 1
	ModTable.MaxRecoilPower 		= 1
	ModTable.RecoilPowerStepAmount 	= 1

	ModTable.MinSpread 					= 1
	ModTable.MaxSpread 					= 1
	ModTable.AimInaccuracyStepAmount 	= 1
	ModTable.AimInaccuracyDecrease 		= 1
	ModTable.WalkMult 					= 1
	ModTable.MuzzleVelocity 			= 1

end

function setMods(ModData)

	ModTable.camRecoilMod.RecoilUp 		= ModTable.camRecoilMod.RecoilUp * ModData.camRecoil.RecoilUp
	ModTable.camRecoilMod.RecoilLeft 	= ModTable.camRecoilMod.RecoilLeft * ModData.camRecoil.RecoilLeft
	ModTable.camRecoilMod.RecoilRight 	= ModTable.camRecoilMod.RecoilRight * ModData.camRecoil.RecoilRight

	ModTable.gunRecoilMod.RecoilUp 		= ModTable.gunRecoilMod.RecoilUp * ModData.gunRecoil.RecoilUp
	ModTable.gunRecoilMod.RecoilTilt 	= ModTable.gunRecoilMod.RecoilTilt * ModData.gunRecoil.RecoilTilt
	ModTable.gunRecoilMod.RecoilLeft 	= ModTable.gunRecoilMod.RecoilLeft * ModData.gunRecoil.RecoilLeft
	ModTable.gunRecoilMod.RecoilRight 	= ModTable.gunRecoilMod.RecoilRight * ModData.gunRecoil.RecoilRight

	ModTable.AimRM						= ModTable.AimRM * ModData.AimRecoilReduction
	ModTable.SpreadRM 					= ModTable.SpreadRM * ModData.AimSpreadReduction
	ModTable.DamageMod 					= ModTable.DamageMod * ModData.DamageMod
	ModTable.minDamageMod 				= ModTable.minDamageMod * ModData.minDamageMod

	ModTable.MinRecoilPower 			= ModTable.MinRecoilPower * ModData.MinRecoilPower
	ModTable.MaxRecoilPower 			= ModTable.MaxRecoilPower * ModData.MaxRecoilPower
	ModTable.RecoilPowerStepAmount 		= ModTable.RecoilPowerStepAmount * ModData.RecoilPowerStepAmount

	ModTable.MinSpread 					= ModTable.MinSpread * ModData.MinSpread
	ModTable.MaxSpread 					= ModTable.MaxSpread * ModData.MaxSpread
	ModTable.AimInaccuracyStepAmount 	= ModTable.AimInaccuracyStepAmount * ModData.AimInaccuracyStepAmount
	ModTable.AimInaccuracyDecrease 		= ModTable.AimInaccuracyDecrease * ModData.AimInaccuracyDecrease
	ModTable.WalkMult 					= ModTable.WalkMult * ModData.WalkMult
	ModTable.MuzzleVelocity 			= ModTable.MuzzleVelocity * ModData.MuzzleVelocityMod
end

function loadAttachment(weapon)
	if weapon and weapon:FindFirstChild("Nodes") ~= nil then

		--load sight Att
		if weapon.Nodes:FindFirstChild("Sight") ~= nil then
			
			SightData =  require(AttModules[GunData.SightAtt])
			SightAtt = AttModels[GunData.SightAtt]:Clone()
			SightAtt.Parent = weapon
			SightAtt:SetPrimaryPartCFrame(weapon.Nodes.Sight.CFrame)
			weapon.AimPart.CFrame = SightAtt.AimPos.CFrame
			
			setMods(SightData)

			for L_209_forvar1, L_210_forvar2 in pairs(weapon:GetChildren()) do
				if L_210_forvar2.Name == "IS" then
					L_210_forvar2.Transparency = 1
				end
			end

			for L_209_forvar1, L_210_forvar2 in pairs(SightAtt:GetChildren()) do
				if L_210_forvar2:IsA('BasePart') then
					Ultil.Weld(L_210_forvar2, weapon:WaitForChild("Handle"))
					L_210_forvar2.Anchored = false
					L_210_forvar2.CanCollide = false
				end
			end
		end

		--load Barrel Att
		if weapon.Nodes:FindFirstChild("Barrel") ~= nil then
			
			BarrelData =  require(AttModules[GunData.BarrelAtt])
			BarrelAtt = AttModels[GunData.BarrelAtt]:Clone()
			BarrelAtt.Parent = weapon
			BarrelAtt:SetPrimaryPartCFrame(weapon.Nodes.Barrel.CFrame)
			
			setMods(BarrelData)

			for L_209_forvar1, L_210_forvar2 in pairs(BarrelAtt:GetChildren()) do
				if L_210_forvar2:IsA('BasePart') then
					Ultil.Weld(L_210_forvar2, weapon:WaitForChild("Handle"))
					L_210_forvar2.Anchored = false
					L_210_forvar2.CanCollide = false
				end
			end
		end

		--load Under Barrel Att
		if weapon.Nodes:FindFirstChild("UnderBarrel") ~= nil then
			
			UnderBarrelData =  require(AttModules[GunData.UnderBarrelAtt])
			UnderBarrelAtt = AttModels[GunData.UnderBarrelAtt]:Clone()
			UnderBarrelAtt.Parent = weapon
			UnderBarrelAtt:SetPrimaryPartCFrame(weapon.Nodes.UnderBarrel.CFrame)
			
			setMods(UnderBarrelData)

			for L_209_forvar1, L_210_forvar2 in pairs(UnderBarrelAtt:GetChildren()) do
				if L_210_forvar2:IsA('BasePart') then
					Ultil.Weld(L_210_forvar2, weapon:WaitForChild("Handle"))
					L_210_forvar2.Anchored = false
					L_210_forvar2.CanCollide = false
				end
			end
		end

		if weapon.Nodes:FindFirstChild("Other") ~= nil then
			
			OtherData =  require(AttModules[GunData.OtherAtt])
			OtherAtt = AttModels[GunData.OtherAtt]:Clone()
			OtherAtt.Parent = weapon
			OtherAtt:SetPrimaryPartCFrame(weapon.Nodes.Other.CFrame)
			
			setMods(OtherData)

			for L_209_forvar1, L_210_forvar2 in pairs(OtherAtt:GetChildren()) do
				if L_210_forvar2:IsA('BasePart') then
					Ultil.Weld(L_210_forvar2, weapon:WaitForChild("Handle"))
					L_210_forvar2.Anchored = false
					L_210_forvar2.CanCollide = false
				end
			end
		end

	end
end

function unloadAttachment(weapon)
	if weapon and weapon:FindFirstChild("Nodes") ~= nil then

		--load sight Att
		if weapon.Nodes:FindFirstChild("Sight") ~= nil then

			SightAtt:Destroy()
			SightAtt = nil
			SightData = nil

		end

		--load Barrel Att
		if weapon.Nodes:FindFirstChild("Barrel") ~= nil then
			
			BarrelAtt:Destroy()
			BarrelAtt = nil
			BarrelData = nil
			
		end

		--load Under Barrel Att
		if weapon.Nodes:FindFirstChild("UnderBarrel") ~= nil then
			
			UnderBarrelAtt:Destroy()
			UnderBarrelAtt = nil
			UnderBarrelData = nil
			
		end

		if weapon.Nodes:FindFirstChild("Other") ~= nil then
			
			OtherAtt:Destroy()
			OtherAtt = nil
			OtherData = nil
			
		end

	end
end

function GunInfoUpdate()
	if GunData then
		script.Parent.Main.GunInfos.Visible 	= true
		script.Parent.Main.GunInfos.Gname.Text	= GunData.gunName
		script.Parent.Main.GunInfos.S.Text	 	= GunData.SightAtt
		script.Parent.Main.GunInfos.B.Text 		= GunData.BarrelAtt
		script.Parent.Main.GunInfos.UB.Text 	= GunData.UnderBarrelAtt
		script.Parent.Main.GunInfos.O.Text 		= GunData.OtherAtt
		script.Parent.Main.GunInfos.MV.Text 	= GunData.MuzzleVelocity * ModTable.MuzzleVelocity 
	else
		script.Parent.Main.GunInfos.Visible 	= false
		script.Parent.Main.GunInfos.Gname.Text	= "---"
		script.Parent.Main.GunInfos.S.Text	 	= ""
		script.Parent.Main.GunInfos.B.Text 		= ""
		script.Parent.Main.GunInfos.UB.Text 	= ""
		script.Parent.Main.GunInfos.O.Text 		= ""
		script.Parent.Main.GunInfos.MV.Text 	= ""
	end
end

function SetSight(SightName)
	--[[
	if GunData.SightAtt == SightName then
		GunData.SightAtt = ""
	else
		GunData.SightAtt = SightName
	end
	]]
	UnSetGun()
	SetupGun()
	GunInfoUpdate()
end

function SetBarrel(SightName)
--[[
if GunData.BarrelAtt == SightName then
		GunData.BarrelAtt = ""
	else
		GunData.BarrelAtt = SightName
	end
]]
	UnSetGun()
	SetupGun()
	GunInfoUpdate()
end

function SetUnderBarrel(SightName)
	--[[
	if GunData.UnderBarrelAtt == SightName then
		GunData.UnderBarrelAtt = ""
	else
		GunData.UnderBarrelAtt = SightName
	end
	]]
	UnSetGun()
	SetupGun()
	GunInfoUpdate()
end

function SetOther(SightName)
	--[[
	if GunData.OtherAtt == SightName then
		GunData.OtherAtt = ""
	else
		GunData.OtherAtt = SightName
	end
	]]
	UnSetGun()
	SetupGun()
	GunInfoUpdate()
end

Run.Heartbeat:Connect(function()

	if Gun then
		a = a + 1
		model:SetPrimaryPartCFrame(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(a),math.rad(0)))
	end

end)

script.Parent.Main.Finish.MouseButton1Click:Connect(function()
	Gun.Parent = plr.Backpack
	UnSetGun()
	GunInfoUpdate()
	script.Parent:Destroy()
end)

script.Parent.Main.Attachments.Sight.MouseButton1Click:Connect(function()
	if script.Parent.Main.SightAtt.Visible then
		script.Parent.Main.SightAtt.Visible = false
	else
		script.Parent.Main.SightAtt.Visible = true
		script.Parent.Main.BarrelAtt.Visible = false
		script.Parent.Main.UnderBarrelAtt.Visible = false
		script.Parent.Main.OtherAtt.Visible = false
	end
end)

script.Parent.Main.Attachments.Barrel.MouseButton1Click:Connect(function()
	if script.Parent.Main.BarrelAtt.Visible then
		script.Parent.Main.BarrelAtt.Visible = false
	else
		script.Parent.Main.SightAtt.Visible = false
		script.Parent.Main.BarrelAtt.Visible = true
		script.Parent.Main.UnderBarrelAtt.Visible = false
		script.Parent.Main.OtherAtt.Visible = false
	end
end)

script.Parent.Main.Attachments.Under.MouseButton1Click:Connect(function()
	if script.Parent.Main.UnderBarrelAtt.Visible then
		script.Parent.Main.UnderBarrelAtt.Visible = false
	else
		script.Parent.Main.SightAtt.Visible = false
		script.Parent.Main.BarrelAtt.Visible = false
		script.Parent.Main.UnderBarrelAtt.Visible = true
		script.Parent.Main.OtherAtt.Visible = false
	end
end)

script.Parent.Main.Attachments.Other.MouseButton1Click:Connect(function()
	if script.Parent.Main.OtherAtt.Visible then
		script.Parent.Main.OtherAtt.Visible = false
	else
		script.Parent.Main.SightAtt.Visible = false
		script.Parent.Main.BarrelAtt.Visible = false
		script.Parent.Main.UnderBarrelAtt.Visible = false
		script.Parent.Main.OtherAtt.Visible = true
	end
end)

local function determineType(model)
	if model and model:IsA("Model") then
		if model:FindFirstChild("LaserPoint") or model:FindFirstChild("FlashPoint") then
			return "UnderBarrelAtt"
		elseif model:FindFirstChild("AimPos") or model:FindFirstChild("SightMark") then
			return "SightAtt"
		elseif model:FindFirstChild("BarrelPos") then
			return "BarrelAtt"
		else
			return "OtherAtt"
		end
	end
	return nil
end

for _, attachment in ipairs(AttModels:GetChildren()) do
	local typeAtt = determineType(attachment)
	if typeAtt and script.Parent.Main:FindFirstChild(typeAtt) then
		local temp = script.Parent.Vars.Ref.AttachmentButton:Clone()
		temp.Name = attachment.Name
		temp.Text = attachment.Name
		temp.AttValue.Value = attachment.Name
		temp.Visible = true
		temp.Parent = script.Parent.Main[typeAtt]
	end
end

for _, Child in pairs(script.Parent.Main.SightAtt:GetChildren()) do
	if Child:IsA("TextButton") and Child:FindFirstChild("AttValue") ~= nil then
		Child.MouseButton1Click:Connect(function()
			SetSight(Child.AttValue.Value)
		end	)
	end
end

for _, Child in pairs(script.Parent.Main.BarrelAtt:GetChildren()) do
	if Child:IsA("TextButton") and Child:FindFirstChild("AttValue") ~= nil then
		Child.MouseButton1Click:Connect(function()
			SetBarrel(Child.AttValue.Value)
		end	)
	end
end

for _, Child in pairs(script.Parent.Main.UnderBarrelAtt:GetChildren()) do
	if Child:IsA("TextButton") and Child:FindFirstChild("AttValue") ~= nil then
		Child.MouseButton1Click:Connect(function()
			SetUnderBarrel(Child.AttValue.Value)
		end	)
	end
end

for _, Child in pairs(script.Parent.Main.OtherAtt:GetChildren()) do
	if Child:IsA("TextButton") and Child:FindFirstChild("AttValue") ~= nil then
		Child.MouseButton1Click:Connect(function()
			SetOther(Child.AttValue.Value)
		end	)
	end
end

local selections = script.Parent.Selections
local pack = selections.Pack

selections.Close.Activated:Connect(function()
	script.Parent:Destroy()
end)

for _, Child in pairs(plr.Backpack:GetChildren()) do
	if Child:IsA("Tool") then
		
		local Button = script.Parent.Vars.Ref.GunButton:Clone()
		Button.Text = Child.Name
		Button.Parent = pack
		Button.Visible = true
		
		Button.MouseButton1Click:Connect(function()
			Child.Parent = script.Parent.Vars.ToolStorage
			SetupGun()
			selections.Visible = false
			script.Parent.Main.Visible = true
		end	)
	end
end
