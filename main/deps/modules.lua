local modules = {}

function modules.Fade()
	local TweenService = game:GetService("TweenService")

	local Fade = {}

	local EXCLUDED_NAMES = {"Container"}
	local EASING_STYLE = Enum.EasingStyle.Quint
	local EASING_DIRECTION = Enum.EasingDirection.InOut

	function Fade:Tween(obj, info, goal)
		local tween = TweenService:Create(obj, info, goal)
		tween:Play()
		return tween
	end

	function Fade:_checkIfValid(obj)
		local VALID_CLASSES = {
			"TextButton", "TextLabel", "TextBox", "ScrollingFrame", "ImageLabel", "ImageButton", 
			"UIStroke", "BasePart", "MeshPart", "Frame", "Texture", "Decal", "Folder"
		}

		return table.find(VALID_CLASSES, obj.ClassName) and not table.find(EXCLUDED_NAMES, obj.Name)
	end

	function Fade:_storeInitialTransparency(obj, Attributes)
		for _, attr in ipairs(Attributes) do
			if obj[attr] ~= nil and obj:GetAttribute("Initial" .. attr) == nil then
				obj:SetAttribute("Initial" .. attr, obj[attr])
			end
		end
	end

	function Fade:_checkForAttributes(obj)
		local attributeMap = {
			TextButton = {"BackgroundTransparency", "TextTransparency"},
			TextLabel = {"BackgroundTransparency", "TextTransparency"},
			TextBox = {"BackgroundTransparency", "TextTransparency"},
			ScrollingFrame = {"BackgroundTransparency", "ScrollBarImageTransparency"},
			ImageLabel = {"BackgroundTransparency", "ImageTransparency"},
			ImageButton = {"BackgroundTransparency", "ImageTransparency"},
			UIStroke = {"Transparency"},
			Frame = {"BackgroundTransparency"},
			BasePart = {"Transparency"},
			MeshPart = {"Transparency"},
			Texture = {"Transparency"},
			Decal = {"Transparency"}
		}

		local attributes = attributeMap[obj.ClassName]
		if attributes then
			self:_storeInitialTransparency(obj, attributes)
		end
	end

	function Fade:SetTransparency(obj, transparency, speed)
		local function applyTransparency(obj, transparency)
			local goals = {}

			for _, attr in ipairs({"Transparency", "BackgroundTransparency", "ImageTransparency", "TextTransparency", "ScrollBarImageTransparency"}) do
				local InitialAttr = "Initial" .. attr
				if obj:GetAttribute(InitialAttr) ~= nil then
					goals[attr] = (transparency == 0) and obj:GetAttribute(InitialAttr) or transparency
				end
			end

			if next(goals) then
				self:Tween(obj, TweenInfo.new(speed, EASING_STYLE, EASING_DIRECTION), goals)
			end
		end

		local function scan(obj)
			if self:_checkIfValid(obj) then
				self:_checkForAttributes(obj)
				applyTransparency(obj, transparency)
			else
				return
			end

			for _, inst in ipairs(obj:GetChildren()) do
				scan(inst)
			end
		end

		scan(obj)
	end

	function Fade:FadeClose(obj, speed)
		self:SetTransparency(obj, 1, speed)
	end

	function Fade:FadeOpen(obj, speed)
		self:SetTransparency(obj, 0, speed)
	end

	return Fade
end

function modules.Autocomplete()
	local Autocomplete = {}

	function Autocomplete:Get(...)
		local Args = {...}

		self.fillText = Args[1]
		self.currentText = Args[2]
		self.shortHands = Args[3]

		if self.shortHands[self.currentText] then
			self.currentText = self.fillText
		end

		return self.currentText.. string.rep("", #self.currentText) .. self.fillText:sub(#self.currentText + 1)
	end

	return Autocomplete
end

function modules.Resuponshibu()
	--[[
		サーバーによって作成されたレスポンシブモジュール
	]]

	local Resuponshibu = {}
	Resuponshibu.__index = Resuponshibu

	function Resuponshibu.new()
		local self = setmetatable({}, Resuponshibu)

		self._services = {
			RunService = game:GetService("RunService"),
			TweenService = game:GetService("TweenService"),
		}

		self._scale = Instance.new("UIScale")
		self._connection = nil
		self._startChangeSize = 0
		self._smoothChange = false

		return self
	end

	function Resuponshibu:Set(gui, startChangeSize, smooth : boolean?)
		--assert(gui:IsA("GuiObject"), "Argument 'gui' must be a valid GUI object.")

		self._scale.Parent = gui
		self._scale.Name = "@Resuponshiburendaringu"

		self._startChangeSize = startChangeSize
		self._smoothChange = smooth

		if self._connection then
			self._connection:Disconnect()
		end

		self._connection = self._services.RunService.RenderStepped:Connect(function()
			self:_update()
		end)
	end

	function Resuponshibu:Destroy()
		if self._connection then
			self._connection:Disconnect()
			self._connection = nil
		end

		self._scale.Parent = nil
		self._scale:Destroy()
	end

	function Resuponshibu:_update()
		local cam = workspace.CurrentCamera
		if not cam then return end

		local vps = cam.ViewportSize
		local newScale = 0

		newScale = (vps.X + vps.Y)/self._startChangeSize
		if newScale >= 1 then
			newScale = 1
		end

		if self._smoothChange then
			self:_tween(self._scale, TweenInfo.new(.25), {Scale = newScale})
		else
			self._scale.Scale = newScale
		end
	end

	function Resuponshibu:_tween(object, info, goal)
		local tween = self._services.TweenService:Create(object, info, goal)
		tween:Play()
		return tween
	end

	return Resuponshibu

end

function modules.Parser()
	local Parser = {}

	function Parser.new(client)
		local self = setmetatable({}, {__index = Parser})

		self.Client = client

		self.split = function(message, key, number, useMagicChars)
			if not message or not key then return {} end
			if key == "" or key == nil then key = " " end
			if number == nil then number = math.huge end
			if useMagicChars == nil then useMagicChars = true end

			local tab = {}
			local stringAccum = ""

			local spat, epat, escapeQuotePat, buff, quoted = [=[^(['"])]=], [=[(['"])$]=], [=[(\(['"]))]=], nil, nil

			if not useMagicChars then
				spat = ""
				epat = ""
				escapeQuotePat = ""
			end

			local keyPattern = "[^"..key.."]+"

			if string.match(key, "%s") then
				keyPattern = "%S+"
			end

			for argument in string.gmatch(message, keyPattern) do
				local squoted = string.match(argument, spat)
				local equoted = string.match(argument, epat)
				local escaped = string.match(argument, [=[(\*)['"]$]=])

				if #tab >= number then
					break
				elseif #tab >= number - 1 then
					table.insert(tab, string.sub(message, #stringAccum + 1, #message))
					continue
				end

				if squoted and not quoted and not equoted then
					buff, quoted = argument, squoted
				elseif buff and equoted == quoted and #escaped % 2 == 0 then
					argument, buff, quoted = buff .. key .. argument, nil, nil
				elseif buff then
					buff = buff .. key .. argument
				end

				if not buff then
					local result = string.gsub(string.gsub(string.gsub(argument, spat, ""), epat, ""), escapeQuotePat, "%2")
					stringAccum ..= result .. key
					table.insert(tab, result)
				end
			end

			return tab
		end
		self.getArguments = function(message, number, ...)
			local arguments = self.split(
				string.match(message, "^.-" .. self.Client.Config.EXECUTION.SPLIT_KEY .. "(.+)") or '',
				self.Client.Config.EXECUTION.SPLIT_KEY,
				number
			) or {}
			for index, value in {...} do
				table.insert(arguments, value)
			end
			return arguments
		end
		self.getCommand = function(command)
			local matched
			matched = if string.find(command, self.Client.Config.EXECUTION.SPLIT_KEY) then
				string.match(command, "^(%S+)" .. self.Client.Config.EXECUTION.SPLIT_KEY)
				else string.match(command, "^(%S+)")

			if matched then
				matched = string.gsub(matched, self.Client.Config.EXECUTION.PREFIX, "")
				local found = nil
				for _, value in next, self.Client.Commands do
					if value.Name:lower() == matched:lower() then
						found = value
					end

					if value.Aliases and not found then
						for _, alias in ipairs(value.Aliases) do
							if alias:lower() == matched:lower() then
								found = value
							end
						end
					end
				end

				if found then
					local real = found
					if real then
						return real
					end
				end
			end
		end
		self.trim = function(stringInput)
			return string.match(stringInput, "^%s*(.-)%s*$")
		end
		self.sanitizePattern = function(stringInput)
			return string.gsub(stringInput, "([%^%$%(%)%%%.%[%]%*%+%-%?])", "%%%1")
		end
		self.stripArgumentPlaceholders = function(alias)
			return self.trim(string.gsub(alias, "<%S+>", ""))
		end
		self.checkAliasBlacklist = function(alias)
			local prefix = self.Client.Config.EXECUTION.PREFIX
			local blacklist = {
				[prefix .. "alias"] = true,
				[prefix .. "newalias"] = true,
				[prefix .. "removealias"] = true,
				[prefix .. "client"] = true,
				[prefix .. "userpanel"] = true,
			}
			return blacklist[alias]
		end
		self.formatAliasArgs = function(alias, aliasCmd, msg)
			local uniqueArgs = {}
			local argTab = {}
			local numArgs = 0

			for arg in string.gmatch(alias, "<(%S+)>") do
				if arg ~= "" and arg ~= " " then
					local argKey = "<" .. arg .. ">"
					if not uniqueArgs[argKey] then
						numArgs += 1
						uniqueArgs[argKey] = true
						table.insert(argTab, argKey)
					end
				end
			end

			if numArgs == 0 then
				for arg in string.gmatch(aliasCmd, "<(%S+)>") do
					if arg ~= "" and arg ~= " " then
						local argKey = "<" .. arg .. ">"
						if not uniqueArgs[argKey] then
							numArgs += 1
							uniqueArgs[argKey] = true
							table.insert(argTab, argKey)
						end
					end
				end
			end

			local suppliedArgs = self.getArguments(msg, numArgs)
			local out = aliasCmd

			for i, argType in ipairs(argTab) do
				local replaceWith = suppliedArgs[i]
				if replaceWith then
					out = string.gsub(out, self.sanitizePattern(argType), replaceWith)
				end
			end

			return out
		end
		self.aliasFormat = function(aliases, msg)
			local checkAliasBlacklist, sanitizePattern = self.checkAliasBlacklist, self.sanitizePattern

			if aliases then
				for alias, command in pairs(aliases) do
					local trimmedAlias = self.stripArgumentPlaceholders(alias)
					if not self.checkAliasBlacklist(trimmedAlias) then
						local pattern = "^" .. sanitizePattern(trimmedAlias) .. "(.*)"
						local args = string.match(msg, pattern)
						if args then
							local replacedCmd = self.formatAliasArgs(alias, command, msg)
							if replacedCmd then
								return replacedCmd
							end
						end
					end
				end
			end
		end
		self.getOverrideMap = function(stringInput)
			local inputs, outputs = string.match(stringInput, `{self.Client.Config.EXECUTION.BATCH_KEY}([%d,]+)>([%d,]+)`)
			local tbl1, tbl2 = {}, {}
			local i = 0

			for num in string.gmatch(inputs or "", "(%d+),?") do
				table.insert(tbl1, tonumber(num) or 1)
			end

			for num in string.gmatch(outputs or "", "(%d+),?") do
				i += 1
				if tbl1[i] then
					tbl2[tbl1[i]] = tonumber(num) or 1
				end
			end

			return tbl2
		end

		return self
	end

	function Parser:Parse(player, message, optimized)
		message = self.trim(message)

		if string.match(message, self.Client.Config.EXECUTION.BATCH_KEY) then
			local overrideArgsents = {}

			for command, overrideMap in string.gmatch(message, `([^{self.Client.Config.EXECUTION.BATCH_KEY}]+)({self.Client.Config.EXECUTION.BATCH_KEY}?[%d,>]*)`) do
				command, overrideMap = self.trim(command), self.getOverrideMap(overrideMap)

				local waiter = {self.Client.Config.EXECUTION.PREFIX}task.wait()
				if string.sub(string.lower(command), 1, #waiter) == waiter then
					local number = tonumber(overrideArgsents[1] or string.sub(command, #waiter + 1))

					if overrideMap[1] then
						table.clear(overrideArgsents)
						overrideArgsents[overrideMap[1]] = number
					end

					if number then
						task.wait(tonumber(number))
					end
				else
					local returnArguments = table.pack(self:Parse(player, command, optimized))
					table.clear(overrideArgsents)

					for index, value in overrideMap do
						overrideArgsents[value] = returnArguments[index + 1]
					end

					optimized.overrideArgsents = overrideArgsents
				end
			end
		else
			if string.match(message, self.Client.Config.EXECUTION.BATCH_KEY) then
				return self:Parse(player, message)
			end

			local command = self.getCommand(message)
			if not command then
				return
			end

			local commandArguments = command.Args or command.Arguments
			local argumentString = string.match(message, `^.-{self.Client.Config.EXECUTION.SPLIT_KEY}(.+)`) or ""
			local arguments = (#commandArguments > 0 and self.split(argumentString, self.Client.Config.EXECUTION.SPLIT_KEY, #commandArguments)) or {}

			if optimized.overrideArgsents then
				for index, override in optimized.overrideArgsents do
					arguments[index] = override
				end
			end

			self.Client.spawn(function()
				command.Function(player, arguments)
			end, true)
		end
	end

	function Parser:RunCommand(speaker, commandName, ...)
		local command = self.getCommand(commandName)
		if command then
			local commandArguments = command.Args or command.Arguments
			local arguments = self.getArguments(commandName, #commandArguments, ...)

			self.Client.spawn(function()
				command.Function(speaker, arguments)
			end)
		end
	end

	return Parser
end

function modules.Core()
	local Core = {}
	Core.__index = Core

	function Core.new(client)
		local self = setmetatable({}, Core)

		self.Client = client
		
		self.Storage = {
			lastFakeGame = 0,
			
			checkPoints = {},
			connections = {
				flyKeyDown = nil,
				flyKeyUp = nil,
				
				mfly1 = nil,
				mfly2 = nil,
				
				cframeSpeed = nil,
			},
			
			values = {
				flying = false,
				
				vfly_speed = 2,
				fly_speed = 2,
				
				m_fly_name1 = "",
				m_fly_name2 = "",
			},
		}

		return self
	end

	function Core:TeleportToServer(placeId, guid)
		local retries = 0
		local successful = false
		
		repeat
			local success, err = pcall(function()
				self.Client.Services.TeleportService:TeleportToPlaceInstance(placeId, guid, self.Client.LocalPlayer)
			end)
			if not success then
				retries += 1
				warn(`There was an error: {err} retry {retries} / 3`)
				task.wait(1)
			else
				successful = true
			end
		until retries < 3 or successful
	end
	
	function Core:TeleportToPlayerByPlace(user, placeId)
		local retries = 0
		
		local success, err = pcall(function()
			local user, userId = pcall(function()
				if tonumber(user) then
					return tonumber(user)
				end

				return self.Client.Services.Players:GetUserIdFromNameAsync(user)
			end)
			
			if user then
				local url = ("https://games.roblox.com/v1/games/"..placeId.."/servers/Public?sortOrder=Asc&limit=100")
				local http = self.Client.Services.HttpService:JSONDecode(game:HttpGet(url))
				
				local guid
				
				for i = 1, tonumber(self.Client.getTableLength(http.data)) do
					for _, playerId in pairs(http.data[i].playerIds) do
						if playerId == userId then
							guid = http.data[i].id
						end
					end
				end
				
				if guid then
					self:TeleportToServer(placeId, guid)
				end
			end
		end)
		if not success then
			error(`There was an error: {err}`)
		end
		return success
	end

	function Core:TeleportToLocation(cframe)
		local root = self.Client.fetchHrp(self.Client.LocalPlayer.Character)
		if root then
			local hum = self.Client.fetchHum(self.Client.LocalPlayer.Character)
			if hum and hum.SeatPart then
				if not hum.SeatPart.Anchored then
					hum.Sit = false
				end
			end
			self.Client.spawn(function()
				if game.PlaceId == 185655149--[[Bloxburg]] then
					local fakeGames = {
						10949429194040214,
						8599403013003,
						959491030313413,
						9313477575754,
						4843993134738183,
						3849138484933134,
						92939319484313,
						8449913848138134,
					}

					local function getFakeGame()
						local fakeGame = fakeGames[math.random(1, #fakeGames)]
						if fakeGame == self.Storage.lastFakeGame then
							fakeGame = getFakeGame()
						end
						return fakeGame
					end

					self.Client.Services.TeleportService:Teleport(getFakeGame(), self.Client.Services.Players)
					
					task.wait(1.5)
					
					root.CFrame = cframe
				else
					root.CFrame = cframe
				end
			end)
		end
	end
	
	function Core:SetJumppower(power)
		if not power then
			power = 50
		end

		local hum = self.Client.fetchHum(self.Client.LocalPlayer.Character)
		if hum then
			hum.UseJumpPower = true
			hum.JumpPower = tonumber(power)
		end
	end
	
	function Core:SetWalkspeed(speed, cframe : boolean?)
		if not speed then
			speed = 16
		end
		if game.PlaceId == 9872472334--[[Evade]]
			or game.PlaceId == 2788229376--[[Da Hood]]
		then
			cframe = true
		end
		
		local cframeSpeedDivider = 80

		local hum = self.Client.fetchHum(self.Client.LocalPlayer.Character)
		local hrp = self.Client.fetchHrp(self.Client.LocalPlayer.Character)
		local camera = self.Client.Camera
		
		if not cframe then
			if hum then
				hum.WalkSpeed = tonumber(speed)
			end
		else
			if self.Storage.connections.cframeSpeed then
				self.Storage.connections.cframeSpeed:Disconnect()
				self.Storage.connections.cframeSpeed = nil
			end
			
			self.Storage.connections.cframeSpeed = self.Client.Services.RunService.Heartbeat:Connect(function()
				if not hrp then
					if self.Storage.connections.cframeSpeed then self.Storage.connections.cframeSpeed:Disconnect() end
					return
				end

				hrp.CFrame = hrp.CFrame + hum.MoveDirection * speed/cframeSpeedDivider
			end)
		end
	end
	
	function Core:UncframeSpeed()
		if self.Storage.connections.cframeSpeed then
			self.Storage.connections.cframeSpeed:Disconnect()
			self.Storage.connections.cframeSpeed = nil
		end
	end
	
	function Core:RefreshPlayer()
		local hum = self.Client.fetchHum(self.Client.LocalPlayer.Character)
		local hrp = self.Client.fetchHrp(self.Client.LocalPlayer.Character)
		if hum and hrp then
			local lastPos = hrp.CFrame
			
			self.Client.addConn("REFRESHING_PLAYER", self.Client.Services.Players[self.Client.LocalPlayer.Name].CharacterAdded:Connect(function(char)
				self.Client.removeConn("REFRESHING_PLAYER")
				self:TeleportToLocation(lastPos)
			end))
			
			self:TeleportToLocation(CFrame.new(0, 50000, 0))
			
			task.wait(.25)
			hum:ChangeState(Enum.HumanoidStateType.Dead)
		end
	end
	
	function Core:PromptRig(rig)
		local hum = self.Client.fetchHum(self.Client.LocalPlayer.Character)
		if hum then
			self.Client.Services.AvatarEditorService:PromptSaveAvatar(hum.HumanoidDescription, Enum.HumanoidRigType[rig])
			local result = self.Client.Services.AvatarEditorService.PromptSaveAvatarCompleted:Wait()
			if result == Enum.AvatarPromptResult.Success then
				--self.Client.Modules.Parser:RunCommand(self.Client.LocalPlayer, "reset")
				self:RefreshPlayer()
			end
		end
	end
	
	function Core:Fly(isVfly, speed)
		if game.PlaceId == 9872472334--[[Evade]] then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/CF-Trail/random/main/bypassedfly.lua"))()
			_G.Speed = speed
		else
			local QEfly = true

			self:Unfly()

			if speed then
				if isVfly then
					self.Storage.values.vfly_speed = speed else
					self.Storage.values.fly_speed = speed
				end
			end

			if self.Client.Services.UserInputService.TouchEnabled then
				self:MobileFly(isVfly)
				return
			end

			repeat wait() until self.Client.LocalPlayer and self.Client.LocalPlayer.Character
				and self.Client.fetchHrp(self.Client.LocalPlayer.Character)
				and self.Client.fetchHum(self.Client.LocalPlayer.Character)
			repeat wait() until self.Client.Mouse

			local T = self.Client.fetchHrp(self.Client.LocalPlayer.Character)
			local CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
			local lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
			local SPEED = 0

			local hum = self.Client.fetchHum(self.Client.LocalPlayer.Character)

			local function FLY()
				self.Storage.values.flying = true
				local BG = Instance.new('BodyGyro')
				local BV = Instance.new('BodyVelocity')
				BG.P = 9e4
				BG.Parent = T
				BV.Parent = T
				BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
				BG.cframe = T.CFrame
				BV.velocity = Vector3.new(0, 0, 0)
				BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
				task.spawn(function()
					repeat wait()
						if not isVfly and hum then
							hum.PlatformStand = true
						end
						if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0 then
							SPEED = 50
						elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0) and SPEED ~= 0 then
							SPEED = 0
						end
						if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 or (CONTROL.Q + CONTROL.E) ~= 0 then
							BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
							lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
						elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and (CONTROL.Q + CONTROL.E) == 0 and SPEED ~= 0 then
							BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
						else
							BV.velocity = Vector3.new(0, 0, 0)
						end
						BG.cframe = workspace.CurrentCamera.CoordinateFrame
					until not self.Storage.values.flying
					CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
					lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
					SPEED = 0
					BG:Destroy()
					BV:Destroy()
					if hum then
						hum.PlatformStand = false
					end
				end)
			end
			self.Storage.connections.flyKeyDown = self.Client.Mouse.KeyDown:Connect(function(KEY)
				if KEY:lower() == 'w' then
					CONTROL.F = (isVfly and self.Storage.values.vfly_speed or self.Storage.values.fly_speed)
				elseif KEY:lower() == 's' then
					CONTROL.B = - (isVfly and self.Storage.values.vfly_speed or self.Storage.values.fly_speed)
				elseif KEY:lower() == 'a' then
					CONTROL.L = - (isVfly and self.Storage.values.vfly_speed or self.Storage.values.fly_speed)
				elseif KEY:lower() == 'd' then 
					CONTROL.R = (isVfly and self.Storage.values.vfly_speed or self.Storage.values.fly_speed)
				elseif QEfly and KEY:lower() == 'e' then
					CONTROL.Q = (isVfly and self.Storage.values.vfly_speed or self.Storage.values.fly_speed)*2
				elseif QEfly and KEY:lower() == 'q' then
					CONTROL.E = -(isVfly and self.Storage.values.vfly_speed or self.Storage.values.fly_speed)*2
				end
				pcall(function() workspace.CurrentCamera.CameraType = Enum.CameraType.Track end)
			end)
			self.Storage.connections.flyKeyUp = self.Client.Mouse.KeyUp:Connect(function(KEY)
				if KEY:lower() == 'w' then
					CONTROL.F = 0
				elseif KEY:lower() == 's' then
					CONTROL.B = 0
				elseif KEY:lower() == 'a' then
					CONTROL.L = 0
				elseif KEY:lower() == 'd' then
					CONTROL.R = 0
				elseif KEY:lower() == 'e' then
					CONTROL.Q = 0
				elseif KEY:lower() == 'q' then
					CONTROL.E = 0
				end
			end)
			FLY()
		end
	end
	
	function Core:MobileFly(isVfly)
		self:Unfly()
		self.Storage.values.flying = true
		
		self.Storage.values.m_fly_name1 = self:RandomString()
		self.Storage.values.m_fly_name2 = self:RandomString()

		local hrp = self.Client.fetchHrp(self.Client.LocalPlayer.Character)
		local hum = self.Client.fetchHum(self.Client.LocalPlayer.Character)
		
		local camera = workspace.CurrentCamera
		local v3none = Vector3.new()
		local v3zero = Vector3.new(0, 0, 0)
		local v3inf = Vector3.new(9e9, 9e9, 9e9)

		local controlModule = require(self.Client.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule"))
		local bv = Instance.new("BodyVelocity")
		bv.Name = self.Storage.values.m_fly_name1
		bv.Parent = hrp
		bv.MaxForce = v3zero
		bv.Velocity = v3zero

		local bg = Instance.new("BodyGyro")
		bg.Name = self.Storage.values.m_fly_name2
		bg.Parent = hrp
		bg.MaxTorque = v3inf
		bg.P = 1000
		bg.D = 50

		self.Storage.connections.mfly1 = self.Client.LocalPlayer.CharacterAdded:Connect(function()
			local bv = Instance.new("BodyVelocity")
			bv.Name = self.Storage.values.m_fly_name1
			bv.Parent = hrp
			bv.MaxForce = v3zero
			bv.Velocity = v3zero

			local bg = Instance.new("BodyGyro")
			bg.Name = self.Storage.values.m_fly_name2
			bg.Parent = hrp
			bg.MaxTorque = v3inf
			bg.P = 1000
			bg.D = 50
		end)

		self.Storage.connections.mfly2 = self.Client.Services.RunService.RenderStepped:Connect(function()
			hrp = self.Client.fetchHrp(self.Client.LocalPlayer.Character)
			camera = workspace.CurrentCamera
			if hum and hrp
				and hrp:FindFirstChild(self.Storage.values.m_fly_name1)
				and hrp:FindFirstChild(self.Storage.values.m_fly_name2)
			then
				local hum = self.Client.fetchHum(self.Client.LocalPlayer.Character)
				local VelocityHandler = hrp:FindFirstChild(self.Storage.values.m_fly_name1)
				local GyroHandler = hrp:FindFirstChild(self.Storage.values.m_fly_name2)

				VelocityHandler.MaxForce = v3inf
				GyroHandler.MaxTorque = v3inf
				
				if not isVfly then
					hum.PlatformStand = true
				end
				
				GyroHandler.CFrame = camera.CoordinateFrame
				VelocityHandler.Velocity = v3none

				local direction = controlModule:GetMoveVector()
				if direction.X > 0 then
					VelocityHandler.Velocity = VelocityHandler.Velocity + camera.CFrame.RightVector * (direction.X * ((isVfly and self.Storage.values.vfly_speed or self.Storage.values.fly_speed) * 50))
				end
				if direction.X < 0 then
					VelocityHandler.Velocity = VelocityHandler.Velocity + camera.CFrame.RightVector * (direction.X * ((isVfly and self.Storage.values.vfly_speed or self.Storage.values.fly_speed) * 50))
				end
				if direction.Z > 0 then
					VelocityHandler.Velocity = VelocityHandler.Velocity - camera.CFrame.LookVector * (direction.Z * ((isVfly and self.Storage.values.vfly_speed or self.Storage.values.fly_speed) * 50))
				end
				if direction.Z < 0 then
					VelocityHandler.Velocity = VelocityHandler.Velocity - camera.CFrame.LookVector * (direction.Z * ((isVfly and self.Storage.values.vfly_speed or self.Storage.values.fly_speed) * 50))
				end
			end
		end)
	end
	
	function Core:Unfly()
		local hum = self.Client.fetchHum(self.Client.LocalPlayer.Character)
		local hrp = self.Client.fetchHrp(self.Client.LocalPlayer.Character)
		
		self.Storage.values.flying = false
		
		if self.Storage.connections.flyKeyDown or self.Storage.connections.flyKeyUp then
			self.Storage.connections.flyKeyDown:Disconnect()
			self.Storage.connections.flyKeyUp:Disconnect()
			
			self.Storage.connections.flyKeyDown = nil
			self.Storage.connections.flyKeyUp = nil
		end
		
		if self.Storage.connections.mfly1 or self.Storage.connections.mfly2 then
			self.Storage.connections.mfly1:Disconnect()
			self.Storage.connections.mfly2:Disconnect()

			self.Storage.connections.mfly1 = nil
			self.Storage.connections.mfly2 = nil
		end
		
		if hrp:FindFirstChild(self.Storage.values.m_fly_name1) then
			hrp[self.Storage.values.m_fly_name1]:Destroy()
		end
		if hrp:FindFirstChild(self.Storage.values.m_fly_name2) then
			hrp[self.Storage.values.m_fly_name2]:Destroy()
		end
		
		self.Client.spawn(function()
			workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
		end)
	end
	
	function Core:SetFlySpeed(isVfly, speed)
		if isVfly then
			self.Storage.values.vfly_speed = speed
		else
			self.Storage.values.fly_speed = speed
		end
	end
	
	function Core:RandomString()
		local length = math.random(10,20)
		local array = {}
		for i = 1, length do
			array[i] = string.char(math.random(32, 126))
		end
		return table.concat(array)
	end

	return Core
end

function modules.ConsoleInterface()
	local G2L = {};

	-- StarterGui.Console
	G2L["1"] = Instance.new("ScreenGui");
	G2L["1"]["IgnoreGuiInset"] = true;
	G2L["1"]["Enabled"] = false;
	G2L["1"]["ScreenInsets"] = Enum.ScreenInsets.DeviceSafeInsets;
	G2L["1"]["Name"] = [[Console]];
	G2L["1"]["ResetOnSpawn"] = false;

	-- StarterGui.Console.Main
	G2L["2"] = Instance.new("Frame", G2L["1"]);
	G2L["2"]["ZIndex"] = -1;
	G2L["2"]["BorderSizePixel"] = 0;
	G2L["2"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
	G2L["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
	G2L["2"]["Size"] = UDim2.new(0, 800, 0, 50);
	G2L["2"]["Position"] = UDim2.new(.5,0,.5,20);
	G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["2"]["Name"] = [[Main]];
	G2L["2"]["BackgroundTransparency"] = 1;

	-- StarterGui.Console.Main.Background
	G2L["3"] = Instance.new("Frame", G2L["2"]);
	G2L["3"]["ZIndex"] = 0;
	G2L["3"]["BorderSizePixel"] = 0;
	G2L["3"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
	G2L["3"]["Size"] = UDim2.new(1, 0, 1, 0);
	G2L["3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["3"]["Name"] = [[Background]];
	G2L["3"]["BackgroundTransparency"] = 0.8;

	-- StarterGui.Console.Main.Background.UICorner
	G2L["4"] = Instance.new("UICorner", G2L["3"]);
	G2L["4"]["CornerRadius"] = UDim.new(0, 10);

	-- StarterGui.Console.Main.Background.DropShadow2
	G2L["6"] = Instance.new("ImageLabel", G2L["3"]);
	G2L["6"]["ZIndex"] = -6;
	G2L["6"]["BorderSizePixel"] = 0;
	G2L["6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["6"]["ImageTransparency"] = 0.8;
	G2L["6"]["ImageColor3"] = Color3.fromRGB(22, 22, 22);
	G2L["6"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
	G2L["6"]["Image"] = [[rbxassetid://5587865193]];
	G2L["6"]["Size"] = UDim2.new(1.35, 0, 1.5, 0);
	G2L["6"]["BackgroundTransparency"] = 1;
	G2L["6"]["Name"] = [[DropShadow2]];
	G2L["6"]["Position"] = UDim2.new(0.507, 0, 0.7, 0);

	-- StarterGui.Console.Main.Background.DropShadow1
	G2L["7"] = Instance.new("ImageLabel", G2L["3"]);
	G2L["7"]["ZIndex"] = -22;
	G2L["7"]["BorderSizePixel"] = 0;
	G2L["7"]["SliceCenter"] = Rect.new(49, 49, 450, 450);
	G2L["7"]["ScaleType"] = Enum.ScaleType.Slice;
	G2L["7"]["ImageTransparency"] = 0.5;
	G2L["7"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["7"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
	G2L["7"]["Image"] = [[rbxassetid://6014261993]];
	G2L["7"]["Size"] = UDim2.new(1, 40, 1, 40);
	G2L["7"]["BackgroundTransparency"] = 1;
	G2L["7"]["Name"] = [[DropShadow1]];
	G2L["7"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

	-- StarterGui.Console.Main.Content
	G2L["8"] = Instance.new("Frame", G2L["2"]);
	G2L["8"]["BorderSizePixel"] = 0;
	G2L["8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["8"]["Size"] = UDim2.new(1, 0, 1, 0);
	G2L["8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["8"]["Name"] = [[Content]];
	G2L["8"]["BackgroundTransparency"] = 1;

	-- StarterGui.Console.Main.Content.ScrollingFrame
	G2L["9"] = Instance.new("ScrollingFrame", G2L["8"]);
	G2L["9"]["Active"] = true;
	G2L["9"]["BorderSizePixel"] = 0;
	G2L["9"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
	G2L["9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["9"]["ScrollBarImageTransparency"] = 1;
	G2L["9"]["AutomaticCanvasSize"] = Enum.AutomaticSize.X;
	G2L["9"]["Size"] = UDim2.new(1, -120, 1, 0);
	G2L["9"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["9"]["Position"] = UDim2.new(0, 45, 0, 0);
	G2L["9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["9"]["ScrollBarThickness"] = 0;
	G2L["9"]["BackgroundTransparency"] = 1;

	-- StarterGui.Console.Main.Content.ScrollingFrame.TextBox
	G2L["a"] = Instance.new("TextBox", G2L["9"]);
	G2L["a"]["TextColor3"] = Color3.fromRGB(226, 226, 226);
	G2L["a"]["PlaceholderColor3"] = Color3.fromRGB(151, 151, 151);
	G2L["a"]["ZIndex"] = 3;
	G2L["a"]["BorderSizePixel"] = 0;
	G2L["a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
	G2L["a"]["TextSize"] = 18;
	G2L["a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["a"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
	G2L["a"]["PlaceholderText"] = [[Bananas Admin Console]];
	G2L["a"]["Size"] = UDim2.new(1, 0, 1, 0);
	G2L["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["a"]["Text"] = [[]];
	G2L["a"]["BackgroundTransparency"] = 1;

	-- StarterGui.Console.Main.Content.ScrollingFrame.TextBox.Autofill
	G2L["b"] = Instance.new("TextLabel", G2L["a"]);
	G2L["b"]["BorderSizePixel"] = 0;
	G2L["b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
	G2L["b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["b"]["TextSize"] = 18;
	G2L["b"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
	G2L["b"]["TextColor3"] = Color3.fromRGB(151, 151, 151);
	G2L["b"]["BackgroundTransparency"] = 1;
	G2L["b"]["RichText"] = true;
	G2L["b"]["Size"] = UDim2.new(0, 0, 1, 0);
	G2L["b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["b"]["Text"] = [[]];
	G2L["b"]["AutomaticSize"] = Enum.AutomaticSize.X;
	G2L["b"]["Name"] = [[Autofill]];

	-- StarterGui.Console.Main.Content.ScrollingFrame.TextBox.Colorfill
	G2L["c"] = Instance.new("TextLabel", G2L["a"]);
	G2L["c"]["ZIndex"] = 4;
	G2L["c"]["BorderSizePixel"] = 0;
	G2L["c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
	G2L["c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["c"]["TextSize"] = 18;
	G2L["c"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
	G2L["c"]["TextColor3"] = Color3.fromRGB(226, 226, 226);
	G2L["c"]["BackgroundTransparency"] = 1;
	G2L["c"]["RichText"] = true;
	G2L["c"]["Size"] = UDim2.new(0, 0, 1, 0);
	G2L["c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["c"]["Text"] = [[]];
	G2L["c"]["AutomaticSize"] = Enum.AutomaticSize.X;
	G2L["c"]["Name"] = [[Colorfill]];

	-- StarterGui.Console.Main.Content.ScrollingFrame.UIPadding
	G2L["d"] = Instance.new("UIPadding", G2L["9"]);
	G2L["d"]["PaddingLeft"] = UDim.new(0, 5);

	-- StarterGui.Console.Main.Content.Commands
	G2L["e"] = Instance.new("Frame", G2L["8"]);
	G2L["e"]["ZIndex"] = -1;
	G2L["e"]["BorderSizePixel"] = 0;
	G2L["e"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
	G2L["e"]["ClipsDescendants"] = true;
	G2L["e"]["Size"] = UDim2.new(1, 0, 1, 0);
	G2L["e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["e"]["Name"] = [[Commands]];
	G2L["e"]["BackgroundTransparency"] = 0.1;

	-- StarterGui.Console.Main.Content.Commands.UICorner
	G2L["f"] = Instance.new("UICorner", G2L["e"]);
	G2L["f"]["CornerRadius"] = UDim.new(0, 10);

	-- StarterGui.Console.Main.Content.Commands.UIPadding
	G2L["10"] = Instance.new("UIPadding", G2L["e"]);
	G2L["10"]["PaddingTop"] = UDim.new(0, 50);

	-- StarterGui.Console.Main.Content.Commands.Background
	G2L["11"] = Instance.new("ImageLabel", G2L["e"]);
	G2L["11"]["ZIndex"] = -1;
	G2L["11"]["BorderSizePixel"] = 0;
	G2L["11"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["11"]["ScaleType"] = Enum.ScaleType.Crop;
	G2L["11"]["ImageTransparency"] = 0.9;
	G2L["11"]["Image"] = [[rbxassetid://16255699706]];
	G2L["11"]["Size"] = UDim2.new(1, 0, 1, 0);
	G2L["11"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["11"]["BackgroundTransparency"] = 1;
	G2L["11"]["Name"] = [[Background]];

	-- StarterGui.Console.Main.Content.Commands.Background.UICorner
	G2L["12"] = Instance.new("UICorner", G2L["11"]);
	G2L["12"]["CornerRadius"] = UDim.new(0, 10);

	-- StarterGui.Console.Main.Content.Icon
	G2L["13"] = Instance.new("ImageLabel", G2L["8"]);
	G2L["13"]["ZIndex"] = 2;
	G2L["13"]["BorderSizePixel"] = 0;
	G2L["13"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["13"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["13"]["AnchorPoint"] = Vector2.new(0, 0.5);
	G2L["13"]["Image"] = [[rbxassetid://18559711622]];
	G2L["13"]["Size"] = UDim2.new(0, 20, 0, 20);
	G2L["13"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["13"]["BackgroundTransparency"] = 1;
	G2L["13"]["Name"] = [[Icon]];
	G2L["13"]["Position"] = UDim2.new(0, 15, 0.5, 0);

	-- StarterGui.Console.Main.Content.Icon.Background
	G2L["14"] = Instance.new("Frame", G2L["13"]);
	G2L["14"]["BorderSizePixel"] = 0;
	G2L["14"]["BackgroundColor3"] = Color3.fromRGB(255, 0, 0);
	G2L["14"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
	G2L["14"]["Size"] = UDim2.new(1, 10, 1, 10);
	G2L["14"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
	G2L["14"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["14"]["Name"] = [[Background]];

	-- StarterGui.Console.Main.Content.Icon.Background.UICorner
	G2L["15"] = Instance.new("UICorner", G2L["14"]);


	-- StarterGui.Console.Main.Content.Tab
	G2L["16"] = Instance.new("TextLabel", G2L["8"]);
	G2L["16"]["BorderSizePixel"] = 0;
	G2L["16"]["BackgroundColor3"] = Color3.fromRGB(51, 51, 51);
	G2L["16"]["TextSize"] = 14;
	G2L["16"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
	G2L["16"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["16"]["BackgroundTransparency"] = 0.1;
	G2L["16"]["AnchorPoint"] = Vector2.new(1, 0.5);
	G2L["16"]["Size"] = UDim2.new(0, 50, 0, 25);
	G2L["16"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["16"]["Text"] = [[Tab]];
	G2L["16"]["Name"] = [[Tab]];
	G2L["16"]["Position"] = UDim2.new(1, -15, 0.5, 0);

	-- StarterGui.Console.Main.Content.Tab.UICorner
	G2L["17"] = Instance.new("UICorner", G2L["16"]);


	-- StarterGui.Console.Main.Content.Templates
	G2L["18"] = Instance.new("Folder", G2L["8"]);
	G2L["18"]["Name"] = [[Templates]];

	-- StarterGui.Console.Main.Content.Templates.Command
	G2L["19"] = Instance.new("ImageLabel", G2L["18"]);
	G2L["19"]["ZIndex"] = -1;
	G2L["19"]["BackgroundColor3"] = Color3.fromRGB(151, 151, 151);
	G2L["19"]["ImageTransparency"] = 1;
	G2L["19"]["AnchorPoint"] = Vector2.new(0, 1);
	G2L["19"]["Image"] = [[rbxasset://textures/ui/GuiImagePlaceholder.png]];
	G2L["19"]["Size"] = UDim2.new(1, 0, 0, 50);
	G2L["19"]["Visible"] = false;
	G2L["19"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["19"]["BackgroundTransparency"] = 1;
	G2L["19"]["Name"] = [[Command]];

	-- StarterGui.Console.Main.Content.Templates.Command.NameLabel
	G2L["1a"] = Instance.new("TextLabel", G2L["19"]);
	G2L["1a"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
	G2L["1a"]["ZIndex"] = -1;
	G2L["1a"]["BorderSizePixel"] = 0;
	G2L["1a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
	G2L["1a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["1a"]["TextSize"] = 18;
	G2L["1a"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
	G2L["1a"]["TextColor3"] = Color3.fromRGB(226, 226, 226);
	G2L["1a"]["BackgroundTransparency"] = 1;
	G2L["1a"]["RichText"] = true;
	G2L["1a"]["Size"] = UDim2.new(1, 0, 1, 0);
	G2L["1a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["1a"]["Text"] = "";
	G2L["1a"]["Name"] = [[NameLabel]];

	-- StarterGui.Console.Main.Content.Templates.Command.NameLabel.UIPadding
	G2L["1b"] = Instance.new("UIPadding", G2L["1a"]);
	G2L["1b"]["PaddingBottom"] = UDim.new(0, 10);

	-- StarterGui.Console.Main.Content.Templates.Command.UIPadding
	G2L["1c"] = Instance.new("UIPadding", G2L["19"]);
	G2L["1c"]["PaddingTop"] = UDim.new(0, 15);
	G2L["1c"]["PaddingRight"] = UDim.new(0, 15);
	G2L["1c"]["PaddingLeft"] = UDim.new(0, 15);
	G2L["1c"]["PaddingBottom"] = UDim.new(0, 15);

	-- StarterGui.Console.Main.Content.Templates.Command.Description
	G2L["1d"] = Instance.new("TextLabel", G2L["19"]);
	G2L["1d"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
	G2L["1d"]["ZIndex"] = -1;
	G2L["1d"]["BorderSizePixel"] = 0;
	G2L["1d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
	G2L["1d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["1d"]["TextSize"] = 12;
	G2L["1d"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
	G2L["1d"]["TextColor3"] = Color3.fromRGB(151, 151, 151);
	G2L["1d"]["BackgroundTransparency"] = 1;
	G2L["1d"]["RichText"] = true;
	G2L["1d"]["Size"] = UDim2.new(1, 0, 1, 0);
	G2L["1d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["1d"]["Text"] = "";
	G2L["1d"]["Name"] = [[Description]];
	G2L["1d"]["Position"] = UDim2.new(0, 0, 0, 10);

	-- StarterGui.Console.Main.Content.Templates.Command.UICorner
	G2L["1e"] = Instance.new("UICorner", G2L["19"]);
	G2L["1e"]["CornerRadius"] = UDim.new(0, 10);

	-- StarterGui.Console.Main.Content.Templates.Command.Select
	G2L["1f"] = Instance.new("Frame", G2L["19"]);
	G2L["1f"]["Visible"] = false;
	G2L["1f"]["BorderSizePixel"] = 0;
	G2L["1f"]["BackgroundColor3"] = Color3.fromRGB(255, 0, 0);
	G2L["1f"]["AnchorPoint"] = Vector2.new(1, 0);
	G2L["1f"]["Size"] = UDim2.new(0, 2, 1, 0);
	G2L["1f"]["Position"] = UDim2.new(1, 0, 0, 0);
	G2L["1f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["1f"]["Name"] = [[Select]];

	-- StarterGui.Console.Main.Content.Effects
	G2L["20"] = Instance.new("Frame", G2L["8"]);
	G2L["20"]["BorderSizePixel"] = 0;
	G2L["20"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["20"]["ClipsDescendants"] = true;
	G2L["20"]["Size"] = UDim2.new(1, 0, 1, 0);
	G2L["20"]["BorderColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["20"]["Name"] = [[Effects]];
	G2L["20"]["BackgroundTransparency"] = 1;

	-- StarterGui.Console.Main.Content.Effects.EnterEffect
	G2L["21"] = Instance.new("ImageLabel", G2L["20"]);
	G2L["21"]["ZIndex"] = 10;
	G2L["21"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["21"]["ImageTransparency"] = 0.9;
	G2L["21"]["ImageColor3"] = Color3.fromRGB(255, 0, 0);
	G2L["21"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
	G2L["21"]["Image"] = [[rbxassetid://266543268]];
	G2L["21"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
	G2L["21"]["BackgroundTransparency"] = 1;
	G2L["21"]["Name"] = [[EnterEffect]];
	G2L["21"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

	-- StarterGui.Console.Main.Scale
	G2L["22"] = Instance.new("UIScale", G2L["2"]);
	G2L["22"]["Name"] = [[Scale]];

	-- StarterGui.Console.Main.MouseUnlock
	G2L["23"] = Instance.new("TextButton", G2L["2"]);
	G2L["23"]["Modal"] = true;
	G2L["23"]["TextSize"] = 14;
	G2L["23"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["23"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["23"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
	G2L["23"]["Selectable"] = false;
	G2L["23"]["BackgroundTransparency"] = 1;
	G2L["23"]["Name"] = [[MouseUnlock]];
	G2L["23"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
	G2L["23"]["Text"] = [[]];

	-- StarterGui.Console.Blur
	G2L["24"] = Instance.new("ScreenGui", G2L["1"]);
	G2L["24"]["IgnoreGuiInset"] = true;
	G2L["24"]["DisplayOrder"] = 2147483645;
	G2L["24"]["ScreenInsets"] = Enum.ScreenInsets.DeviceSafeInsets;
	G2L["24"]["Name"] = [[Blur]];

	-- StarterGui.Console.Blur.Frame
	G2L["25"] = Instance.new("Frame", G2L["24"]);
	G2L["25"]["BorderSizePixel"] = 0;
	G2L["25"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["25"]["Size"] = UDim2.new(1, 0, 1, 0);
	G2L["25"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["25"]["BackgroundTransparency"] = 1;

	-- StarterGui.Console.Open
	G2L["26"] = Instance.new("TextButton", G2L["1"]);
	G2L["26"]["BorderSizePixel"] = 0;
	G2L["26"]["TextTransparency"] = 1;
	G2L["26"]["TextSize"] = 1;
	G2L["26"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["26"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["26"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
	G2L["26"]["AnchorPoint"] = Vector2.new(1, 0.5);
	G2L["26"]["Size"] = UDim2.new(0, 200, 0, 50);
	G2L["26"]["BackgroundTransparency"] = 1;
	G2L["26"]["Name"] = [[Open]];
	G2L["26"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["26"]["Text"] = [[]];
	G2L["26"]["Position"] = UDim2.new(1, -10, 0.5, 0);

	-- StarterGui.Console.Open.Background
	G2L["27"] = Instance.new("Frame", G2L["26"]);
	G2L["27"]["ZIndex"] = 0;
	G2L["27"]["BorderSizePixel"] = 0;
	G2L["27"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
	G2L["27"]["Size"] = UDim2.new(1, 0, 1, 0);
	G2L["27"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["27"]["Name"] = [[Background]];
	G2L["27"]["BackgroundTransparency"] = 0.5;

	-- StarterGui.Console.Open.Background.UICorner
	G2L["28"] = Instance.new("UICorner", G2L["27"]);
	G2L["28"]["CornerRadius"] = UDim.new(0, 10);

	-- StarterGui.Console.Open.Background.UIStroke
	G2L["2a"] = Instance.new("UIStroke", G2L["27"]);
	G2L["2a"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
	G2L["2a"]["Color"] = Color3.fromRGB(41, 41, 41);

	-- StarterGui.Console.Open.Background.DropShadow1
	G2L["2b"] = Instance.new("ImageLabel", G2L["27"]);
	G2L["2b"]["ZIndex"] = -22;
	G2L["2b"]["BorderSizePixel"] = 0;
	G2L["2b"]["SliceCenter"] = Rect.new(49, 49, 450, 450);
	G2L["2b"]["ScaleType"] = Enum.ScaleType.Slice;
	G2L["2b"]["ImageTransparency"] = 0.5;
	G2L["2b"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["2b"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
	G2L["2b"]["Image"] = [[rbxassetid://6014261993]];
	G2L["2b"]["Size"] = UDim2.new(1, 40, 1, 40);
	G2L["2b"]["BackgroundTransparency"] = 1;
	G2L["2b"]["Name"] = [[DropShadow1]];
	G2L["2b"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

	-- StarterGui.Console.Open.Background.DropShadow2
	G2L["2c"] = Instance.new("ImageLabel", G2L["27"]);
	G2L["2c"]["ZIndex"] = -6;
	G2L["2c"]["BorderSizePixel"] = 0;
	G2L["2c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["2c"]["ImageTransparency"] = 0.8;
	G2L["2c"]["ImageColor3"] = Color3.fromRGB(22, 22, 22);
	G2L["2c"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
	G2L["2c"]["Image"] = [[rbxassetid://5587865193]];
	G2L["2c"]["Size"] = UDim2.new(1.35, 0, 1.5, 0);
	G2L["2c"]["BackgroundTransparency"] = 1;
	G2L["2c"]["Name"] = [[DropShadow2]];
	G2L["2c"]["Position"] = UDim2.new(0.507, 0, 0.7, 0);

	-- StarterGui.Console.Open.Title
	G2L["2d"] = Instance.new("TextLabel", G2L["26"]);
	G2L["2d"]["BorderSizePixel"] = 0;
	G2L["2d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["2d"]["TextSize"] = 16;
	G2L["2d"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
	G2L["2d"]["TextColor3"] = Color3.fromRGB(236, 236, 236);
	G2L["2d"]["BackgroundTransparency"] = 1;
	G2L["2d"]["RichText"] = true;
	G2L["2d"]["Size"] = UDim2.new(1, 0, 1, 0);
	G2L["2d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["2d"]["Text"] = [[OPEN CONSOLE]];
	G2L["2d"]["Name"] = [[Title]];
	
	-- StarterGui.Console.Main.Background.UIStroke
	G2L["5"] = Instance.new("UIStroke", G2L["e"]);
	G2L["5"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
	G2L["5"]["Color"] = Color3.fromRGB(41, 41, 41);

	return G2L["1"];
end

function modules.NotifyUI()
	local G2L = {};
	-- StarterGui.ScreenGui.Notification
	G2L["2"] = Instance.new("Frame");
	G2L["2"]["BorderSizePixel"] = 0;
	G2L["2"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
	G2L["2"]["Size"] = UDim2.new(1, 0, 0, 150);
	G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["2"]["Name"] = [[Notification]];
	G2L["2"]["BackgroundTransparency"] = 1;

	-- StarterGui.ScreenGui.Notification.Graphical
	G2L["3"] = Instance.new("Folder", G2L["2"]);
	G2L["3"]["Name"] = [[Graphical]];

	-- StarterGui.ScreenGui.Notification.Graphical.Background
	G2L["4"] = Instance.new("Frame", G2L["3"]);
	G2L["4"]["Visible"] = false;
	G2L["4"]["ZIndex"] = -5;
	G2L["4"]["BorderSizePixel"] = 0;
	G2L["4"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 26);
	G2L["4"]["Size"] = UDim2.new(1, 0, 1, 0);
	G2L["4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["4"]["Name"] = [[Background]];
	G2L["4"]["BackgroundTransparency"] = 0.2;

	-- StarterGui.ScreenGui.Notification.Graphical.Background.DropShadow1
	G2L["5"] = Instance.new("ImageLabel", G2L["4"]);
	G2L["5"]["ZIndex"] = -6;
	G2L["5"]["BorderSizePixel"] = 0;
	G2L["5"]["SliceCenter"] = Rect.new(49, 49, 450, 450);
	G2L["5"]["ScaleType"] = Enum.ScaleType.Slice;
	G2L["5"]["ImageTransparency"] = 0.5;
	G2L["5"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["5"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
	G2L["5"]["Image"] = [[rbxassetid://6014261993]];
	G2L["5"]["Size"] = UDim2.new(1, 47, 1, 47);
	G2L["5"]["BackgroundTransparency"] = 1;
	G2L["5"]["Name"] = [[DropShadow1]];
	G2L["5"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

	-- StarterGui.ScreenGui.Notification.Graphical.Background.UICorner
	G2L["6"] = Instance.new("UICorner", G2L["4"]);
	G2L["6"]["CornerRadius"] = UDim.new(0, 10);

	-- StarterGui.ScreenGui.Notification.Graphical.Background.DropShadow2
	G2L["7"] = Instance.new("ImageLabel", G2L["4"]);
	G2L["7"]["ZIndex"] = -6;
	G2L["7"]["BorderSizePixel"] = 0;
	G2L["7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["7"]["ImageTransparency"] = 0.2;
	G2L["7"]["ImageColor3"] = Color3.fromRGB(22, 22, 22);
	G2L["7"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
	G2L["7"]["Image"] = [[rbxassetid://5587865193]];
	G2L["7"]["Size"] = UDim2.new(1.6, 0, 1.3, 0);
	G2L["7"]["BackgroundTransparency"] = 1;
	G2L["7"]["Name"] = [[DropShadow2]];
	G2L["7"]["Position"] = UDim2.new(0.50748, 0, 0.5098, 0);
	-- Attributes
	G2L["7"]:SetAttribute([[InitialBackgroundTransparency]], 1);
	G2L["7"]:SetAttribute([[InitialImageTransparency]], 0.4);

	-- StarterGui.ScreenGui.Notification.Graphical.Background.Background
	G2L["9"] = Instance.new("ImageLabel", G2L["4"]);
	G2L["9"]["ZIndex"] = -1;
	G2L["9"]["BorderSizePixel"] = 0;
	G2L["9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["9"]["ScaleType"] = Enum.ScaleType.Crop;
	G2L["9"]["ImageTransparency"] = 0.9;
	G2L["9"]["Image"] = [[rbxassetid://16255699706]];
	G2L["9"]["Size"] = UDim2.new(1, 0, 1, 0);
	G2L["9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["9"]["BackgroundTransparency"] = 1;
	G2L["9"]["Name"] = [[Background]];

	-- StarterGui.ScreenGui.Notification.Graphical.Background.Background.UICorner
	G2L["a"] = Instance.new("UICorner", G2L["9"]);
	G2L["a"]["CornerRadius"] = UDim.new(0, 10);

	-- StarterGui.ScreenGui.Notification.Graphical.Content
	G2L["b"] = Instance.new("Frame", G2L["3"]);
	G2L["b"]["Visible"] = false;
	G2L["b"]["BorderSizePixel"] = 0;
	G2L["b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["b"]["AnchorPoint"] = Vector2.new(0, 1);
	G2L["b"]["Size"] = UDim2.new(1, 0, 1, -45);
	G2L["b"]["Position"] = UDim2.new(0, 0, 1, 0);
	G2L["b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["b"]["Name"] = [[Content]];
	G2L["b"]["BackgroundTransparency"] = 1;

	-- StarterGui.ScreenGui.Notification.Graphical.Content.Scroll
	G2L["c"] = Instance.new("ScrollingFrame", G2L["b"]);
	G2L["c"]["Active"] = true;
	G2L["c"]["BorderSizePixel"] = 0;
	G2L["c"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
	G2L["c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["c"]["Name"] = [[Scroll]];
	G2L["c"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
	G2L["c"]["Size"] = UDim2.new(1, 0, 1, 0);
	G2L["c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["c"]["ScrollBarThickness"] = 1;
	G2L["c"]["BackgroundTransparency"] = 1;

	-- StarterGui.ScreenGui.Notification.Graphical.Content.Scroll.Description
	G2L["d"] = Instance.new("TextLabel", G2L["c"]);
	G2L["d"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
	G2L["d"]["BorderSizePixel"] = 0;
	G2L["d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
	G2L["d"]["TextYAlignment"] = Enum.TextYAlignment.Top;
	G2L["d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["d"]["TextSize"] = 14;
	G2L["d"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
	G2L["d"]["TextColor3"] = Color3.fromRGB(151, 151, 151);
	G2L["d"]["BackgroundTransparency"] = 1;
	G2L["d"]["RichText"] = true;
	G2L["d"]["Size"] = UDim2.new(1, 0, 0, 0);
	G2L["d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["d"]["Text"] = [[Wow guys! This is a description! Can't you believe that?]];
	G2L["d"]["AutomaticSize"] = Enum.AutomaticSize.Y;
	G2L["d"]["Name"] = [[Description]];

	-- StarterGui.ScreenGui.Notification.Graphical.Content.Scroll.Description.UIPadding
	G2L["e"] = Instance.new("UIPadding", G2L["d"]);
	G2L["e"]["PaddingTop"] = UDim.new(0, 15);
	G2L["e"]["PaddingRight"] = UDim.new(0, 15);
	G2L["e"]["PaddingLeft"] = UDim.new(0, 15);
	G2L["e"]["PaddingBottom"] = UDim.new(0, 15);

	-- StarterGui.ScreenGui.Notification.Graphical.Content.Bottom
	G2L["f"] = Instance.new("Frame", G2L["b"]);
	G2L["f"]["BorderSizePixel"] = 0;
	G2L["f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["f"]["AnchorPoint"] = Vector2.new(0, 1);
	G2L["f"]["ClipsDescendants"] = true;
	G2L["f"]["Size"] = UDim2.new(1, 0, 0, 6);
	G2L["f"]["Position"] = UDim2.new(0, 0, 1, 0);
	G2L["f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["f"]["Name"] = [[Bottom]];
	G2L["f"]["BackgroundTransparency"] = 1;

	-- StarterGui.ScreenGui.Notification.Graphical.Content.Bottom.Fill
	G2L["10"] = Instance.new("Frame", G2L["f"]);
	G2L["10"]["BorderSizePixel"] = 0;
	G2L["10"]["BackgroundColor3"] = Color3.fromRGB(255, 0, 0);
	G2L["10"]["AnchorPoint"] = Vector2.new(0, 1);
	G2L["10"]["Size"] = UDim2.new(0, 0, 1, 10);
	G2L["10"]["Position"] = UDim2.new(0, 0, 1, 0);
	G2L["10"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["10"]["Name"] = [[Fill]];

	-- StarterGui.ScreenGui.Notification.Graphical.Content.Bottom.Fill.UICorner
	G2L["11"] = Instance.new("UICorner", G2L["10"]);
	G2L["11"]["CornerRadius"] = UDim.new(0, 10);

	-- StarterGui.ScreenGui.Notification.Graphical.Top
	G2L["12"] = Instance.new("Frame", G2L["3"]);
	G2L["12"]["Visible"] = false;
	G2L["12"]["BorderSizePixel"] = 0;
	G2L["12"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["12"]["Size"] = UDim2.new(1, 0, 0, 45);
	G2L["12"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["12"]["Name"] = [[Top]];
	G2L["12"]["BackgroundTransparency"] = 1;

	-- StarterGui.ScreenGui.Notification.Graphical.Top.Title
	G2L["13"] = Instance.new("TextLabel", G2L["12"]);
	G2L["13"]["BorderSizePixel"] = 0;
	G2L["13"]["TextXAlignment"] = Enum.TextXAlignment.Left;
	G2L["13"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["13"]["TextSize"] = 16;
	G2L["13"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
	G2L["13"]["TextColor3"] = Color3.fromRGB(236, 236, 236);
	G2L["13"]["BackgroundTransparency"] = 1;
	G2L["13"]["RichText"] = true;
	G2L["13"]["Size"] = UDim2.new(1, 0, 1, 0);
	G2L["13"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["13"]["Text"] = [[OmniControl]];
	G2L["13"]["Name"] = [[Title]];

	-- StarterGui.ScreenGui.Notification.Graphical.Top.Title.UIPadding
	G2L["14"] = Instance.new("UIPadding", G2L["13"]);
	G2L["14"]["PaddingTop"] = UDim.new(0, 15);
	G2L["14"]["PaddingRight"] = UDim.new(0, 15);
	G2L["14"]["PaddingLeft"] = UDim.new(0, 15);
	G2L["14"]["PaddingBottom"] = UDim.new(0, 15);

	-- StarterGui.ScreenGui.Notification.Graphical.Top.Underline
	G2L["15"] = Instance.new("Frame", G2L["12"]);
	G2L["15"]["BorderSizePixel"] = 0;
	G2L["15"]["BackgroundColor3"] = Color3.fromRGB(51, 51, 51);
	G2L["15"]["AnchorPoint"] = Vector2.new(0, 1);
	G2L["15"]["Size"] = UDim2.new(1, 0, 0, 1);
	G2L["15"]["Position"] = UDim2.new(0, 0, 1, 0);
	G2L["15"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["15"]["Name"] = [[Underline]];

	-- StarterGui.ScreenGui.Notification.Graphical.Top.Icon
	G2L["16"] = Instance.new("ImageLabel", G2L["12"]);
	G2L["16"]["BorderSizePixel"] = 0;
	G2L["16"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["16"]["ImageColor3"] = Color3.fromRGB(255, 0, 0);
	G2L["16"]["AnchorPoint"] = Vector2.new(1, 0.5);
	G2L["16"]["Image"] = [[rbxassetid://2790458276]];
	G2L["16"]["Size"] = UDim2.new(0, 25, 0, 25);
	G2L["16"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["16"]["BackgroundTransparency"] = 1;
	G2L["16"]["Name"] = [[Icon]];
	G2L["16"]["Position"] = UDim2.new(1, -10, 0.5, 0);

	-- StarterGui.ScreenGui.Notification.Graphical.Button
	G2L["17"] = Instance.new("ImageButton", G2L["3"]);
	G2L["17"]["BorderSizePixel"] = 0;
	G2L["17"]["ImageTransparency"] = 1;
	G2L["17"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["17"]["ZIndex"] = 5;
	G2L["17"]["Image"] = [[rbxasset://textures/ui/GuiImagePlaceholder.png]];
	G2L["17"]["Size"] = UDim2.new(1, 0, 1, 0);
	G2L["17"]["BackgroundTransparency"] = 1;
	G2L["17"]["Name"] = [[Button]];
	G2L["17"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);

	-- StarterGui.ScreenGui.Notification.Scripts
	G2L["18"] = Instance.new("Folder", G2L["2"]);
	G2L["18"]["Name"] = [[Scripts]];

	-- StarterGui.ScreenGui.Notification.Scripts.Core
	G2L["19"] = Instance.new("LocalScript", G2L["18"]);
	G2L["19"]["Name"] = [[Core]];

	-- StarterGui.ScreenGui.Notification.Settings
	G2L["1a"] = Instance.new("Folder", G2L["2"]);
	G2L["1a"]["Name"] = [[Settings]];

	-- StarterGui.ScreenGui.Notification.Settings.NameString
	G2L["1b"] = Instance.new("StringValue", G2L["1a"]);
	G2L["1b"]["Name"] = [[NameString]];
	G2L["1b"]["Value"] = [[nil]];

	-- StarterGui.ScreenGui.Notification.Settings.DescriptionString
	G2L["1c"] = Instance.new("StringValue", G2L["1a"]);
	G2L["1c"]["Name"] = [[DescriptionString]];
	G2L["1c"]["Value"] = [[nil]];

	-- StarterGui.ScreenGui.Notification.Settings.DurationNumber
	G2L["1d"] = Instance.new("NumberValue", G2L["1a"]);
	G2L["1d"]["Name"] = [[DurationNumber]];
	G2L["1d"]["Value"] = 15;

	-- StarterGui.ScreenGui.Notification.Intro
	G2L["1e"] = Instance.new("Frame", G2L["2"]);
	G2L["1e"]["BorderSizePixel"] = 0;
	G2L["1e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["1e"]["ClipsDescendants"] = true;
	G2L["1e"]["Size"] = UDim2.new(1, 0, 1, 0);
	G2L["1e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["1e"]["Name"] = [[Intro]];
	G2L["1e"]["BackgroundTransparency"] = 1;

	-- StarterGui.ScreenGui.Notification.Intro.Line
	G2L["1f"] = Instance.new("Frame", G2L["1e"]);
	G2L["1f"]["ZIndex"] = 10;
	G2L["1f"]["BorderSizePixel"] = 0;
	G2L["1f"]["BackgroundColor3"] = Color3.fromRGB(255, 0, 0);
	G2L["1f"]["Size"] = UDim2.new(1, 0, 1, 0);
	G2L["1f"]["Position"] = UDim2.new(-1, 0, 0, 0);
	G2L["1f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["1f"]["Name"] = [[Line]];

	-- StarterGui.ScreenGui.Notification.Scripts.Core
	

	return G2L["2"]
end

function modules.UniversalCommands()
	local module = {}
	
	function module.new(self)
		local sethidden
		local gethidden
		local queueteleport
		local httprequest
		
		local universalValues = {
			-- Evade --
			evade_ticket_farming = false,
			break_bots = false,
		}
		
		local instances = {
			fov_circle = nil,
		}

		if not self.Services.RunService:IsStudio() then
			sethidden = sethiddenproperty or set_hidden_property or set_hidden_prop
			gethidden = gethiddenproperty or get_hidden_property or get_hidden_prop
			queueteleport = (syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport)
			httprequest = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request
		end
		
		local function gameDetectedNotify(gameName)
			self.spawn(function()
				task.wait(1)
				self:Notify(self.Config.SYSTEM.NAME, `Game detected: <b>{gameName}</b> new commands loaded or modified`, "INFO", nil, 5)
			end)
		end
		
		if game.PlaceId == 9872472334--[[Evade]] then
			gameDetectedNotify("Evade")
			
			self:AddCommand({
				Name = "EventGrind",
				Description = "Makes you grind for the special points (Credits to: Bac0nH1ckOff)",

				Aliases = {"EGrind", "TicketGrind"},
				Arguments = {},

				Function = function(speaker, args)
					-- 引数 --

					-- 変数 --
					local tickets = workspace:FindFirstChild("Game")
						and workspace.Game:FindFirstChild("Effects")
						and workspace.Game.Effects:FindFirstChild("Tickets")

					-- 関数 --
					if tickets then
						universalValues.evade_ticket_farming = true
						
						while universalValues.evade_ticket_farming do
							local hrp = self.fetchHrp(speaker.Character)
							
							tickets = workspace:FindFirstChild("Game")
								and workspace.Game:FindFirstChild("Effects")
								and workspace.Game.Effects:FindFirstChild("Tickets")
							
							if tickets then
								if speaker.Character then
									if speaker.Character:GetAttribute("Downed") then
										self.Services.ReplicatedStorage.Events.Player.ChangePlayerMode:FireServer(true)
									end

									for _, ticket in ipairs(tickets:GetChildren()) do
										local ticketPart = ticket:FindFirstChild("HumanoidRootPart")
										if ticketPart then
											self.Modules.core:TeleportToLocation(ticketPart.CFrame)
											task.wait(0.1)
										end
									end
								end
							end
							task.wait()
						end
						
					end
				end,
			})
			
			self:AddCommand({
				Name = "StopEventGrind",
				Description = "Stops you from grinding tickets",

				Aliases = {"StopEGrind", "StopTicketGrind"},
				Arguments = {},

				Function = function(speaker, args)
					-- 引数 --

					-- 変数 --

					-- 関数 --
					universalValues.evade_ticket_farming = false
				end,
			})
			
			self:AddCommand({
				Name = "GrabAllTickets",
				Description = "Collects all of the tickets in the map",

				Aliases = {"CollectAllTickets"},
				Arguments = {},

				Function = function(speaker, args)
					-- 引数 --

					-- 変数 --
					local tickets = workspace:FindFirstChild("Game")
						and workspace.Game:FindFirstChild("Effects")
						and workspace.Game.Effects:FindFirstChild("Tickets")

					-- 関数 --
					if tickets then
						while #tickets:GetChildren() >= 1 do
							local hrp = self.fetchHrp(speaker.Character)

							if speaker.Character then
								if speaker.Character:GetAttribute("Downed") then
									self.Services.ReplicatedStorage.Events.Player.ChangePlayerMode:FireServer(true)
								end

								for _, ticket in ipairs(tickets:GetChildren()) do
									local ticketPart = ticket:FindFirstChild("HumanoidRootPart")
									if ticketPart then
										self.Modules.core:TeleportToLocation(ticketPart.CFrame)
										task.wait(0.1)
									end
								end
							end
							task.wait()
						end
					end
				end,
			})
			
			self:AddCommand({
				Name = "FastRevive",
				Description = "Makes it so you can revive people faster",

				Aliases = {"FRevive", "SpeedRevive"},
				Arguments = {},

				Function = function(speaker, args)
					-- 引数 --

					-- 変数 --
					

					-- 関数 --
					workspace.Game.Settings:SetAttribute("ReviveTime", 2.25)
				end,
			})
			
			self:AddCommand({
				Name = "Respawn",
				Description = "Respawns your character back into the game",

				Aliases = {},
				Arguments = {},

				Function = function(speaker, args)
					-- 引数 --

					-- 変数 --


					-- 関数 --
					self.Services.ReplicatedStorage.Events.Player.ChangePlayerMode:FireServer(true)
				end,
			})
			
			self:AddCommand({
				Name = "RemoveBarriers",
				Description = "Removes the invisible walls around the map",

				Aliases = {},
				Arguments = {},

				Function = function(speaker, args)
					-- 引数 --

					-- 変数 --

					-- 関数 --
					workspace.Game.Map.InvisParts:ClearAllChildren()
				end,
			})
			
			self:AddCommand({
				Name = "TeleportToObjectives",
				Description = "Disables water damaging",

				Aliases = {"ToObjectives"},
				Arguments = {},

				Function = function(speaker, args)
					-- 引数 --

					-- 変数 --
					local hrp = self.fetchHrp(speaker.Character)

					-- 関数 --
					if workspace.Game.Map.Parts:FindFirstChild("Objectives") then
						for i, v in next, workspace.Game.Map.Parts.Objectives:GetChildren() do
							if v.IsA(v, "Model") then
								self.Modules.core:TeleportToLocation(CFrame.new(v:FindFirstChildWhichIsA("BasePart").Position))
							end
						end
					end
				end,
			})
			
			self:AddCommand({
				Name = "AutofarmWins",
				Description = "Makes you win the game everytime",

				Aliases = {},
				Arguments = {},

				Function = function(speaker, args)
					-- 引数 --

					-- 変数 --

					-- 関数 --
					universalValues.break_bots = true
					while universalValues.break_bots do
						local n = math.random(1, 10000000)
						local z = math.random(200, 8000)
						local x = math.random(1, 10000000)
						if not universalValues.break_bots then
							break
						end
						if game:GetService("Workspace").Game:WaitForChild('Map'):WaitForChild('Parts'):FindFirstChild("KillBricks") then
							game:GetService("Workspace").Game:WaitForChild('Map').KillBricks:Destroy()
						end
						task.wait()
						game.Workspace.Game.Players:WaitForChild(game.Players.LocalPlayer.Name):WaitForChild("HumanoidRootPart").CFrame = CFrame.new(0, z, 0)
					end
				end,
			})
			
			self:AddCommand({
				Name = "StopAutofarmWins",
				Description = "Disables auto winning",

				Aliases = {},
				Arguments = {},

				Function = function(speaker, args)
					-- 引数 --

					-- 変数 --

					-- 関数 --
					universalValues.break_bots = false
				end,
			})
		end
		
		--------------------------------------------------------------------
		--[[							END								]]--
		--------------------------------------------------------------------

		self:AddCommand({
			Name = "View",
			Description = "Views the [Player]",

			Aliases = {"Spectate", "Watch"},
			Arguments = {"Player"},

			Function = function(speaker, args)
				-- 引数 --
				local user = args[1]

				-- 変数 --
				local users = self.getPlayer(speaker, user)

				-- 関数 --
				for index, player in next, users do
					if player.Character then
						self.removeConn("VIEW_DIED")
						self.removeConn("VIEW_CHANGED")
						self.removeConn("VIEW_PLAYER_REMOVED")

						self.Camera.CameraSubject = player.Character
						self.addConn("VIEW_DIED", player.CharacterAdded:Connect(function()
							repeat task.wait() until player.Character ~= nil and self.fetchHrp(player.Character)
							self.Camera.CameraSubject = player.Character
						end))
						self.addConn("VIEW_CHANGED", self.Camera:GetPropertyChangedSignal("CameraSubject"):Connect(function()
							self.Camera.CameraSubject = player.Character
						end))
						self.addConn("VIEW_PLAYER_REMOVED", self.Services.Players.PlayerRemoving:Connect(function(leftplayer)
							if leftplayer.Name == player.Name then
								self.Camera.CameraSubject = speaker.Character
							end
						end))
						self:Notify(self.Config.SYSTEM.NAME, `Viewing <b>{player.Name}</b> (@{player.DisplayName})`, "INFO", nil, 5)
					end
				end
			end,
		})

		self:AddCommand({
			Name = "Unview",
			Description = "Unviews if you're viewing someone",

			Aliases = {"Unspectate", "Unwatch"},
			Arguments = {},

			Function = function(speaker, args)
				-- 引数 --

				-- 変数 --

				-- 関数 --
				self.removeConn("VIEW_DIED")
				self.removeConn("VIEW_CHANGED")
				self.removeConn("VIEW_PLAYER_REMOVED")
				
				self.Camera.CameraSubject = speaker.Character
			end,
		})

		self:AddCommand({
			Name = "To",
			Description = "Teleports your character to [Player]",

			Aliases = {"Goto"},
			Arguments = {"Player"},

			Function = function(speaker, args)
				-- 引数 --
				local user = args[1]

				-- 変数 --
				local users = self.getPlayer(speaker, user)

				-- 関数 --
				for index, player in next, users do
					if player.Character then
						local hrp = self.fetchHrp(player.Character)
						if hrp then
							self.Modules.core:TeleportToLocation(hrp.CFrame + Vector3.new(3,1,0))
							self:Notify(self.Config.SYSTEM.NAME, `Teleported to <b>{player.Name}</b> (@{player.DisplayName})`, "INFO", nil, 5)
						end
					end
				end
				self.Modules.parser:RunCommand(speaker, "breakvelocity")
			end,
		})

		self:AddCommand({
			Name = "BreakVelocity",
			Description = "Makes your character have no velocity",

			Aliases = {},
			Arguments = {},

			Function = function(speaker, args)
				-- 引数 --

				-- 変数 --

				-- 関数 --
				local stopped, vector = false, Vector3.new(0, 0, 0)
				delay(1, function()
					stopped = true
				end)
				while not stopped do
					for _, v in ipairs(speaker.Character:GetDescendants()) do
						if v:IsA("BasePart") then
							v.Velocity, v.RotVelocity = vector, vector
						end
					end
					task.wait()
				end
			end,
		})

		self:AddCommand({
			Name = "JumpPower",
			Description = "Makes your jumppower set to [Power]",

			Aliases = {},
			Arguments = {"Power"},

			Function = function(speaker, args)
				-- 引数 --
				local power = args[1]

				-- 変数 --

				-- 関数 --
				self.Modules.core:SetJumppower(power)
			end,
		})

		self:AddCommand({
			Name = "Walkspeed",
			Description = "Makes your walkspeed set to [Speed]",

			Aliases = {"Speed"},
			Arguments = {"Speed"},

			Function = function(speaker, args)
				-- 引数 --
				local speed = args[1]

				-- 変数 --

				-- 関数 --
				self.Modules.core:SetWalkspeed(speed, false)
			end,
		})
		
		self:AddCommand({
			Name = "CFrameSpeed",
			Description = "Makes you move upon CFrame at a speed of [Speed]",

			Aliases = {"Speed"},
			Arguments = {"Speed"},

			Function = function(speaker, args)
				-- 引数 --
				local speed = args[1]

				-- 変数 --

				-- 関数 --
				self.Modules.core:SetWalkspeed(speed, true)
			end,
		})
		
		self:AddCommand({
			Name = "UncframeSpeed",
			Description = "Disables CFrame speed",

			Aliases = {},
			Arguments = {},

			Function = function(speaker, args)
				-- 引数 --

				-- 変数 --

				-- 関数 --
				self.Modules.core:UncframeSpeed()
			end,
		})

		self:AddCommand({
			Name = "Gravity",
			Description = "Sets the gravity to [Gravity] (CLIENT)",

			Aliases = {"Grav", "GGrav"},
			Arguments = {"Gravity"},

			Function = function(speaker, args)
				-- 引数 --
				local speed = args[1]

				-- 変数 --

				-- 関数 --
				workspace.Gravity = tonumber(args[1])
			end,
		})

		self:AddCommand({
			Name = "Reset",
			Description = "Resets your character",

			Aliases = {"Re"},
			Arguments = {},

			Function = function(speaker, args)
				-- 引数 --

				-- 変数 --

				-- 関数 --
				local hum = self.fetchHum(speaker.Character)
				if hum then
					hum:ChangeState(Enum.HumanoidStateType.Dead)
				end
			end,
		})

		self:AddCommand({
			Name = "Refresh",
			Description = "Refreshes your character",

			Aliases = {"Ref", "Respawn"},
			Arguments = {},

			Function = function(speaker, args)
				-- 引数 --

				-- 変数 --

				-- 関数 --
				self.Modules.core:RefreshPlayer()
			end,
		})

		self:AddCommand({
			Name = "WalkOnWalls",
			Description = "Makes you able to walk on walls",

			Aliases = {"Wallwalk"},
			Arguments = {},

			Function = function(speaker, args)
				-- 引数 --

				-- 変数 --

				-- 関数 --
				loadstring(game:HttpGet("https://raw.githubusercontent.com/Gimkit0/Gim-Test/refs/heads/main/main/deps/walkwalk.lua"))()
			end,
		})
		
		self:AddCommand({
			Name = "God",
			Description = "Unkillable in most games",

			Aliases = {"GodMode", "AntiKill"},
			Arguments = {},

			Function = function(speaker, args)
				-- 引数 --

				-- 変数 --

				-- 関数 --
				if game.PlaceId == 9872472334--[[Evade]] then
					self.spawn(function()
						for i, v in next, workspace.Game.Players:GetDescendants() do
							if v.IsA(v, "BindableEvent") and string.lower(v.Name) == "force" then
								v:Destroy()
							end
						end
						workspace.Game.Players.DescendantAdded:Connect(function(v)
							task.wait()
							if v.IsA(v, "BindableEvent") and string.lower(v.Name) == "force" then
								v:Destroy()
							end
						end)
					end)
				else
					loadstring(game:HttpGet("https://pastebin.com/raw/NdaKWSRG"))()
				end
			end,
		})

		self:AddCommand({
			Name = "PromptR15",
			Description = "Prompts you to change your avatar rig to R15",

			Aliases = {},
			Arguments = {},

			Function = function(speaker, args)
				-- 引数 --

				-- 変数 --

				-- 関数 --
				self.Modules.core:PromptRig("R15")
			end,
		})

		self:AddCommand({
			Name = "PromptR6",
			Description = "Prompts you to change your avatar rig to R6",

			Aliases = {},
			Arguments = {},

			Function = function(speaker, args)
				-- 引数 --

				-- 変数 --

				-- 関数 --
				self.Modules.core:PromptRig("R6")
			end,
		})

		self:AddCommand({
			Name = "Fly",
			Description = "Makes your character fly with the speed of [Speed]",

			Aliases = {"Bird", "Flight"},
			Arguments = {"Speed"},

			Function = function(speaker, args)
				-- 引数 --
				local speed = args[1]

				-- 変数 --

				-- 関数 --
				self.Modules.core:Fly(false, speed)
			end,
		})

		self:AddCommand({
			Name = "VFly",
			Description = "Makes your character fly even with vehicles with the speed of [Speed]",

			Aliases = {"VehicleFly"},
			Arguments = {"Speed"},

			Function = function(speaker, args)
				-- 引数 --
				local speed = args[1]

				-- 変数 --

				-- 関数 --
				self.Modules.core:Fly(true, speed)
			end,
		})

		self:AddCommand({
			Name = "Unfly",
			Description = "Unflies your character",

			Aliases = {"Unvfly", "Unvehiclefly", "Unbird", "Unflight"},
			Arguments = {},

			Function = function(speaker, args)
				-- 引数 --

				-- 変数 --

				-- 関数 --
				self.Modules.core:Unfly()
			end,
		})

		self:AddCommand({
			Name = "FlySpeed",
			Description = "Sets the fly speed to [Speed]",

			Aliases = {"FSpeed"},
			Arguments = {"Speed"},

			Function = function(speaker, args)
				-- 引数 --
				local speed = args[1]

				-- 変数 --

				-- 関数 --
				self.Modules.core:SetFlySpeed(false, speed)
			end,
		})

		self:AddCommand({
			Name = "VehicleFlySpeed",
			Description = "Sets the vehicle fly speed to [Speed]",

			Aliases = {"VFlySpeed"},
			Arguments = {"Speed"},

			Function = function(speaker, args)
				-- 引数 --
				local speed = args[1]

				-- 変数 --

				-- 関数 --
				self.Modules.core:SetFlySpeed(true, speed)
			end,
		})

		self:AddCommand({
			Name = "Rejoin",
			Description = "Makes you rejoin the server",

			Aliases = {"RJ", "RJoin"},
			Arguments = {},

			Function = function(speaker, args)
				-- 引数 --

				-- 変数 --

				-- 関数 --
				if #self.Services.Players <= 1 then
					self.Services.TeleportService:Teleport(game.PlaceId, speaker)
				else
					self.Services.TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, speaker)
				end
			end,
		})

		self:AddCommand({
			Name = "ServerHop",
			Description = "Makes you join a different server",

			Aliases = {"SerHop"},
			Arguments = {},

			Function = function(speaker, args)
				-- 引数 --

				-- 変数 --

				-- 関数 --
				if httprequest then
					local servers = {}
					local req = httprequest({Url = string.format("https://games.roblox.com/v1/games/%d/servers/Public?sortOrder=Desc&limit=100&excludeFullGames=true", game.PlaceId)})
					local body = self.Services.HttpService:JSONDecode(req.Body)

					if body and body.data then
						for i, v in next, body.data do
							if type(v) == "table" and tonumber(v.playing)
								and tonumber(v.maxPlayers)
								and v.playing < v.maxPlayers
								and v.id ~= game.JobId
							then
								table.insert(servers, 1, v.id)
							end
						end
					end

					if #servers > 0 then
						self.Modules.core:TeleportToServer(game.PlaceId, servers[math.random(1, #servers)])
					end
				end
			end,
		})

		self:AddCommand({
			Name = "JoinPlayer",
			Description = "Makes you join the [User] in [PlaceId]",

			Aliases = {"JoinP"},
			Arguments = {"User", "PlaceId"},

			Function = function(speaker, args)
				-- 引数 --
				local user = args[1]
				local placeId = args[2]

				-- 変数 --
				local retries = 0

				-- 関数 --
				self.Modules.core:TeleportToPlayerByPlace(user, placeId)
			end,
		})

		self:AddCommand({
			Name = "Exit",
			Description = "Exits the game",

			Aliases = {"ExitGame"},
			Arguments = {},

			Function = function(speaker, args)
				-- 引数 --

				-- 変数 --

				-- 関数 --
				game:Shutdown()
			end,
		})

		self:AddCommand({
			Name = "Noclip",
			Description = "Makes it so you can clip through walls",

			Aliases = {},
			Arguments = {},

			Function = function(speaker, args)
				-- 引数 --

				-- 変数 --

				-- 関数 --
				self.stopLoop("NOCLIPPING")
				self.startLoop("NOCLIPPING", .1, function()
					for _, child in pairs(speaker.Character:GetDescendants()) do
						if child:IsA("BasePart") and child.CanCollide == true and child.Name ~= self.floatName then
							child.CanCollide = false
						end
					end
				end)
			end,
		})

		self:AddCommand({
			Name = "Clip",
			Description = "Disables noclip",

			Aliases = {},
			Arguments = {},

			Function = function(speaker, args)
				-- 引数 --

				-- 変数 --

				-- 関数 --
				self.stopLoop("NOCLIPPING")
			end,
		})
		
		self:AddCommand({
			Name = "WalkFling",
			Description = "When you touch someone with collision on, then it flings them",

			Aliases = {},
			Arguments = {},

			Function = function(speaker, args)
				-- 引数 --

				-- 変数 --

				-- 関数 --
				
			end,
		})
		
		self:AddCommand({
			Name = "ChangeTheme",
			Description = "Changes the theme to [Theme]",

			Aliases = {"CTheme", "Theme"},
			Arguments = {"Theme"},

			Function = function(speaker, args)
				-- 引数 --
				local theme = args[1]
				
				-- 変数 --

				-- 関数 --
				self.changeTheme(theme)
			end,
		})
		
		self:AddCommand({
			Name = "Aimlock",
			Description = "Have god tier aim. [Epitaph] is prediction of where the bullet will land",

			Aliases = {},
			Arguments = {"Epitaph"},

			Function = function(speaker, args)
				-- 引数 --
				local epipath = args[1]
				
				-- 変数 --
				local headOffset = Vector3.new(0, .1, 0)
				
				local holdingMouse = false
				
				local circleSides = 64
				local circleRadius = 200
				local circleThickness = 1
				local circleTransparency = .5
				local circleFilled = false
				local circleVisible = true
				
				local aimPart = "Head"
				
				-- 関数 --
				instances.fov_circle = Drawing.new("Circle")
				
				local circle = instances.fov_circle
				circle.Position = Vector2.new(self.Camera.ViewportSize.X / 2, self.Camera.ViewportSize.Y / 2)
				circle.Radius = circleRadius
				circle.Filled = circleFilled
				circle.Color = self.Theme.THEME_COLOR
				circle.Visible = circleVisible
				circle.Transparency = circleTransparency
				circle.NumSides = circleSides
				circle.Thickness = circleThickness
				
				local function isTargetVisible(targetPart)
					local origin = self.Camera.CFrame.Position
					local direction = (targetPart.Position - origin).Unit * (targetPart.Position - origin).Magnitude
					local rayParams = RaycastParams.new()
					rayParams.FilterType = Enum.RaycastFilterType.Exclude
					rayParams.FilterDescendantsInstances = {speaker.Character}

					local result = workspace:Raycast(origin, direction, rayParams)

					if result then
						local hitPart = result.Instance
						if hitPart and hitPart.Transparency > 0.05 then
							return true
						else
							return false
						end
					else
						return true
					end
				end
				
				local function findNearest()
					local dist = math.huge
					local Target = nil
					for _, v in pairs(self.Services.Players:GetPlayers()) do
						local hum = self.fetchHum(speaker.Character)
						if v ~= speaker
							and v.Character
							and hum
							and hum.Health > 0
							and v.Character:FindFirstChild(aimPart)
						then
							local char = v.Character
							local root = char[aimPart]
							local screenPos, visible = self.Camera:WorldToViewportPoint(root.Position)

							if visible and isTargetVisible(root) then
								local magnitude = (Vector2.new(self.Mouse.X, self.Mouse.Y) - Vector2.new(screenPos.X, screenPos.Y)).Magnitude
								if magnitude < dist and magnitude < circle.Radius then
									dist = magnitude
									Target = char
								end
							end
						end
					end
					return Target
				end
				
				self.addConn("AIMLOCK_INPUT_BEGAN", self.Services.UserInputService.InputBegan:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton2 then
						holdingMouse = true
						if holdingMouse then
							local target = findNearest()
							while holdingMouse do
								if holdingMouse and target ~= nil then
									local future = target.HumanoidRootPart.CFrame + (target.HumanoidRootPart.Velocity * epipath + headOffset)
									self.Camera.CFrame = CFrame.lookAt(self.Camera.Position, future.Position)
									self.Services.UserInputService.MouseBehavior = Enum.MouseBehavior.LockCenter
								end
								task.wait()
							end
						end
					end
				end))
				self.addConn("AIMLOCK_INPUT_ENDED", self.Services.UserInputService.InputEnded:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton2 then
						holdingMouse = true
						self.Services.UserInputService.MouseBehavior = Enum.MouseBehavior.Default
					end
				end))
			end,
		})
	end
	
	return module
end

return modules
