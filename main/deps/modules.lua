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

	function Core:TeleportToLocation(cframe)
		local root = self.Client.fetchHrp(self.Client.LocalPlayer.Character)
		if root then
			root.CFrame = cframe
			self.Client.spawn(function()
				if game.PlaceId == 185655149 then
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

					task.wait(2.5)

					self.Client.Services.TeleportService:Teleport(getFakeGame(), self.Client.Services.Players)
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
	
	function Core:SetWalkspeed(speed)
		if not speed then
			speed = 16
		end

		local hum = self.Client.fetchHum(self.Client.LocalPlayer.Character)
		if hum then
			hum.WalkSpeed = tonumber(speed)
		end
	end

	return Core
end

return modules
