--[=[
	これは Server (TNTMASTERS SS) によって作成されたコマンド モジュールです

	- Exoliner に感謝します (一部の UI アセット)

	- Adonis (Davey_Bones) (バッチ コマンド)

	- Infinite Yield (getplayer 関数)
]=]

local CommandBar = {}
CommandBar.__index = CommandBar

function CommandBar.new()
	local self = setmetatable({}, CommandBar)
	
	local loadedModules
	local ui
	
	if game:GetService("RunService"):IsStudio() then
		loadedModules = require(script.Modules)
		ui = require(script.UI)
	else
		loadedModules = loadstring(game:HttpGet("https://raw.githubusercontent.com/Gimkit0/Gim-Test/refs/heads/main/main/deps/modules.lua"))()
		ui = loadstring(game:HttpGet("https://raw.githubusercontent.com/Gimkit0/Gim-Test/refs/heads/main/main/deps/ui.lua"))()
	end

	local services = {
		UserInputService = game:GetService("UserInputService"),
		RunService = game:GetService("RunService"),
		TweenService = game:GetService("TweenService"),
		StarterGui = game:GetService("StarterGui"),
		Lighting = game:GetService("Lighting"),
		Players = game:GetService("Players"),
		HttpService = game:GetService("HttpService"),
		TeleportService = game:GetService("TeleportService"),
		AvatarEditorService = game:GetService("AvatarEditorService"),
	}
	local states = {
		consoleOpened = false,
		currentlyOpened = false,
		changingFOV = false,
		changeFOV = false,
	}
	local config = {
		FOCUSED = {
			FOV = {
				ENABLED = false,
				AMOUNT = 60,
			},
			BLUR = {
				ENABLED = true,
				AMOUNT = 8,
			},
		},
		
		EXECUTION = {
			PREFIX = ";",
			SPLIT_KEY = " ",
			BATCH_KEY = ";",
			
			MAX_COMMAND_STRING_LIMIT = 35,

			NO_PERM_MESSAGE = "Insufficient level! Must be rank <b>%s</b> in order to do this.",
		},
		
		CONSOLE = {
			ENABLED = true,

			PC_OPEN_KEY = Enum.KeyCode.Semicolon,

			XBOX_OPEN_KEY = Enum.KeyCode.DPadUp,
		},
		
		UI = {
			DEFAULT_THEME = "Dark",
			THEMES = {
				Dark = {
					THEME_COLOR = Color3.fromRGB(255, 0, 0),

					BACKGROUND = Color3.fromRGB(25, 25, 25),
					LIGHT_BACKGROUND = Color3.fromRGB(50, 50, 50),
					BACKGROUND_TRANSPARENCY = .1,
					BACKGROUND_IMAGE = 16255699706,
					BACKGROUND_IMAGE_TRANSPARENCY = .2,
					BACKGROUND_IMAGE_COLOR = Color3.fromRGB(255, 255, 255),
					DROPSHADOW = Color3.fromRGB(20, 20, 20),
					DROPSHADOW_TRANSPARENCY = .2,

					REGULAR_TEXT = Color3.fromRGB(235, 235, 235),
					SHADED_TEXT = Color3.fromRGB(150, 150, 150),
					THEME_FILL_TEXT = Color3.fromRGB(0, 0, 0),

					OUTLINE = Color3.fromRGB(50, 50, 50),
					UNDERLINE = Color3.fromRGB(50, 50, 50),

					SUGGESTION_TRANSPAENCY = .2,

					REGULAR_BUTTON_TRANSPARENCY = 1,
					REGULAR_BUTTON_HOVER_TRANSPARENCY = .9,
					REGULAR_BUTTON_CLICK_TRANSPARENCY = .5,

					RIPPLE_COLOR = Color3.fromRGB(255, 255, 255),
					RIPPLE_TRANSPARENCY = .95,
					RIPPLE_CLICK_TRANSPARENCY = .8,

					HEADER_SHADOW = Color3.fromRGB(25, 25, 25),
					HEADER_SHADOW_TRANSPARENCY = .7,
					HEADER_SHADOW_INFO_TRANSPARENCY = .8,
					HEADER_SHAODW_BOTTOM_TRANSPARENCY = .1,
					HEADER_TRANSPARENCY = .5,
					
					PLAYER_COLOR = Color3.fromRGB(255, 0, 0),
					STRING_COLOR = Color3.fromRGB(136, 255, 39),
					UTILITY_COLOR = Color3.fromRGB(255, 199, 57),
				},
			},
		},
	}
	local storage = {
		autofillQuery = "",
		lastCommand = "",
		
		numCommands = 0,
		lastFov = 0,
	}
	local modules = {
		autocomplete = loadedModules.Autocomplete(),
		fade = loadedModules.Fade(),
		resuponshibu = loadedModules.Resuponshibu().new(),
		parser = loadedModules.Parser().new(self),
		core = loadedModules.Core().new(self)
	}

	self.States = states
	self.Config = config
	self.Storage = storage
	self.Services = services
	self.Modules = modules
	
	self.Commands = {}
	self.Connections = {}
	self.Loops = {}

	self.Camera = workspace.CurrentCamera
	self.LocalPlayer = services.Players.LocalPlayer
	self.Mouse = self.LocalPlayer:GetMouse()
	
	self.UI = ui
	
	self.Theme = self.Config.UI.THEMES[self.Config.UI.DEFAULT_THEME]
	
	self.findFirstChild = function(location, name)
		for _,v in next, location:GetChildren() do
			if v.Name == name then return v end
		end
	end
	self.tween = function(obj, info, goal)
		local tween = self.Services.TweenService:Create(obj, info, goal)
		tween:Play()
		return tween
	end
	self.spawn = function(func, debug : boolean?)
		if not (type(func) == "function") then
			return
		end
		
		if not debug then
			task.spawn(pcall, func) else
			task.spawn(func)
		end
	end
	self.startLoop = function(name, delay, func)
		self.stopLoop(name)

		local loopTable = {
			Name = name,
			Function = function()
				self.spawn(func)
			end,
			Running = true,
		}

		table.insert(self.Loops, loopTable)

		if loopTable.Running then
			self.spawn(function()
				loopTable.Function()
				while wait(delay) do
					if loopTable.Running then
						loopTable.Function()
					end
				end
			end)
		end
	end
	self.stopLoop = function(name)
		for i,v in ipairs(self.Loops) do
			if v.Name == name then
				v.Running = false
				v.Name = nil
				table.remove(self.Loops, i)
			end
		end
	end
	self.addConn = function(name, conn)
		if self.Connections[name] then
			self.Connections[name]:Disconnect()
		end
		self.Connections[name] = conn
	end
	self.removeConn = function(name)
		if self.Connections[name] then
			self.Connections[name]:Disconnect()
			self.Connections[name] = nil
		end
	end
	self.findCommand = function(name)
		for _, cmd in ipairs(self.Commands) do
			if cmd.Name:lower() == name:lower() then
				return cmd
			end
		end
	end
	self.getSuggestion = function(str, table)
		if not str then
			return
		end
		
		for _, suggestion in next, table do
			if suggestion.Name then
				if string.sub(string.lower(tostring(suggestion.Name)), 1, string.len(str)) == string.lower(str) then
					return self.Modules.autocomplete:Get(suggestion.Name, str, {})
				end
			end
			if suggestion.DisplayName then
				if string.sub(string.lower(tostring(suggestion.DisplayName)), 1, string.len(str)) == string.lower(str) then
					return self.Modules.autocomplete:Get(suggestion.DisplayName, str, {})
				end
			end
			if type(suggestion) == "table" then
				if suggestion.Aliases then
					for _, alias in ipairs(suggestion.Aliases) do
						if string.sub(string.lower(tostring(alias)), 1, string.len(str)) == string.lower(str) then
							return self.Modules.autocomplete:Get(alias, str, {})
						end
					end
				end
			elseif type(suggestion) == "string" then
				if string.sub(string.lower(tostring(suggestion)), 1, string.len(str)) == string.lower(str) then
					return self.Modules.autocomplete:Get(suggestion, str, {})
				end
			end
		end
	end
	self.getResults = function(str)
		if not str then
			return
		end
		
		local int = {}
		local addedCmds = {}
		for index, cmd in next, self.Commands do
			if string.sub(string.lower(tostring(cmd.Name)), 1, string.len(str)) == string.lower(str) then
				if string.len(index) <= self.Config.EXECUTION.MAX_COMMAND_STRING_LIMIT and not addedCmds[cmd.Name] then
					table.insert(int, cmd.Name)
					addedCmds[cmd.Name] = true
				end
			end
			if cmd.Aliases then
				for _, alias in ipairs(cmd.Aliases) do
					if string.sub(string.lower(tostring(alias)), 1, string.len(str)) == string.lower(str) then
						if string.len(alias) <= self.Config.EXECUTION.MAX_COMMAND_STRING_LIMIT and not addedCmds[cmd.Name] then
							table.insert(int, cmd.Name)
							addedCmds[cmd.Name] = true
						end
					end
				end
			end
		end
		return int
	end
	self.splitString = function(str, delimeter)
		local broken = {}
		if delimeter == nil then delimeter = "," end
		for match in string.gmatch(str,"[^"..delimeter.."]+") do
			table.insert(broken, match)
		end
		return broken
	end
	self.toTokens = function(str)
		local tokens = {}
		for op,name in string.gmatch(str,"([+-])([^+-]+)") do
			table.insert(tokens,{Operator = op,Name = name})
		end
		return tokens
	end
	self.onlyIncludeInTable = function(tab, matches)
		local matchTable = {}
		local resultTable = {}
		for i,v in pairs(matches) do matchTable[v.Name] = true end
		for i,v in pairs(tab) do if matchTable[v.Name] then table.insert(resultTable,v) end end
		return resultTable
	end
	self.removeTableMatches = function(tab, matches)
		local matchTable = {}
		local resultTable = {}
		for i,v in pairs(matches) do matchTable[v.Name] = true end
		for i,v in pairs(tab) do if not matchTable[v.Name] then table.insert(resultTable,v) end end
		return resultTable
	end
	self.fetchHrp = function(char)
		local rootPart = char:FindFirstChild('HumanoidRootPart')
			or char:FindFirstChild('Torso')
			or char:FindFirstChild('UpperTorso')
		
		return rootPart
	end
	self.fetchHum = function(char)
		local hum = char:FindFirstChildWhichIsA('Humanoid')

		return hum
	end
	self.getPlayersByName = function(name)
		local name, len, found = string.lower(name),#name,{}
		for _,v in pairs(self.Services.Players:GetPlayers()) do
			if name:sub(0,1) == '@' then
				if string.sub(string.lower(v.Name),1,len-1) == name:sub(2) then
					table.insert(found,v)
				end
			else
				if string.sub(string.lower(v.Name),1,len) == name or string.sub(string.lower(v.DisplayName),1,len) == name then
					table.insert(found,v)
				end
			end
		end
		return found
	end
	self.worldToScreen = function(Object)
		local ObjectVector = workspace.CurrentCamera:WorldToScreenPoint(Object.Position)
		return Vector2.new(ObjectVector.X, ObjectVector.Y)
	end
	self.mousePositionToVector2 = function()
		return Vector2.new(self.Mouse.X, self.Mouse.Y)
	end
	self.getClosestPlayerFromCursor = function()
		local found = nil
		local ClosestDistance = math.huge
		for i, v in pairs(self.Services.Players:GetPlayers()) do
			if v ~= self.LocalPlayer and v.Character and v.Character:FindFirstChildOfClass("Humanoid") then
				for _, x in pairs(v.Character:GetChildren()) do
					if string.find(x.Name, "Torso") then
						local Distance = (self.worldToScreen(x) - self.mousePositionToVector2()).Magnitude
						if Distance < ClosestDistance then
							ClosestDistance = Distance
							found = v
						end
					end
				end
			end
		end
		return found
	end
	self.getPlayer = function(speaker, user)
		if not user then
			return {speaker}
		end
		local nameList = self.splitString(user, ",")
		
		local playerCases = {
			["all"] = function(speaker)
				return self.Services.Players:GetPlayers()
			end,
			["others"] = function(speaker)
				local plrs = {}
				for i,v in pairs(self.Services.Players:GetPlayers()) do
					if v ~= speaker then
						table.insert(plrs,v)
					end
				end
				return plrs
			end,
			["me"] = function(speaker) return {speaker} end,
			["#(%d+)"] = function(speaker,args,currentList)
				local returns = {}
				local randAmount = tonumber(args[1])
				local players = {unpack(currentList)}
				for i = 1,randAmount do
					if #players == 0 then break end
					local randIndex = math.random(1,#players)
					table.insert(returns,players[randIndex])
					table.remove(players,randIndex)
				end
				return returns
			end,
			["random"] = function(speaker,args,currentList)
				local players = self.Services.Players:GetPlayers()
				local localplayer = self.LocalPlayer
				--table.remove(players, table.find(players, localplayer))
				return {players[math.random(1,#players)]}
			end,
			["%%(.+)"] = function(speaker,args)
				local returns = {}
				local team = args[1]
				for _,plr in pairs(self.Services.Players:GetPlayers()) do
					if plr.Team and string.sub(string.lower(plr.Team.Name),1,#team) == string.lower(team) then
						table.insert(returns,plr)
					end
				end
				return returns
			end,
			["allies"] = function(speaker)
				local returns = {}
				local team = speaker.Team
				for _,plr in pairs(self.Services.Players:GetPlayers()) do
					if plr.Team == team then
						table.insert(returns,plr)
					end
				end
				return returns
			end,
			["enemies"] = function(speaker)
				local returns = {}
				local team = speaker.Team
				for _,plr in pairs(self.Services.Players:GetPlayers()) do
					if plr.Team ~= team then
						table.insert(returns,plr)
					end
				end
				return returns
			end,
			["team"] = function(speaker)
				local returns = {}
				local team = speaker.Team
				for _,plr in pairs(self.Services.Players:GetPlayers()) do
					if plr.Team == team then
						table.insert(returns,plr)
					end
				end
				return returns
			end,
			["nonteam"] = function(speaker)
				local returns = {}
				local team = speaker.Team
				for _,plr in pairs(self.Services.Players:GetPlayers()) do
					if plr.Team ~= team then
						table.insert(returns,plr)
					end
				end
				return returns
			end,
			["friends"] = function(speaker,args)
				local returns = {}
				for _,plr in pairs(self.Services.Players:GetPlayers()) do
					if plr:IsFriendsWith(speaker.UserId) and plr ~= speaker then
						table.insert(returns,plr)
					end
				end
				return returns
			end,
			["nonfriends"] = function(speaker,args)
				local returns = {}
				for _,plr in pairs(self.Services.Players:GetPlayers()) do
					if not plr:IsFriendsWith(speaker.UserId) and plr ~= speaker then
						table.insert(returns,plr)
					end
				end
				return returns
			end,
			["guests"] = function(speaker,args)
				local returns = {}
				for _,plr in pairs(self.Services.Players:GetPlayers()) do
					if plr.Guest then
						table.insert(returns,plr)
					end
				end
				return returns
			end,
			["bacons"] = function(speaker,args)
				local returns = {}
				for _,plr in pairs(self.Services.Players:GetPlayers()) do
					if plr.Character:FindFirstChild('Pal Hair') or plr.Character:FindFirstChild('Kate Hair') then
						table.insert(returns,plr)
					end
				end
				return returns
			end,
			["age(%d+)"] = function(speaker,args)
				local returns = {}
				local age = tonumber(args[1])
				if not (age == nil) then
					return
				end
				for _,plr in pairs(self.Services.Players:GetPlayers()) do
					if plr.AccountAge <= age then
						table.insert(returns,plr)
					end
				end
				return returns
			end,
			["nearest"] = function(speaker,args,currentList)
				local speakerChar = speaker.Character
				if not speakerChar or not self.fetchHrp(speakerChar) then return end
				local lowest = math.huge
				local NearestPlayer = nil
				for _,plr in pairs(currentList) do
					if plr ~= speaker and plr.Character then
						local distance = plr:DistanceFromCharacter(self.fetchHrp(speakerChar).Position)
						if distance < lowest then
							lowest = distance
							NearestPlayer = {plr}
						end
					end
				end
				return NearestPlayer
			end,
			["farthest"] = function(speaker,args,currentList)
				local speakerChar = speaker.Character
				if not speakerChar or not self.fetchHrp(speakerChar) then return end
				local highest = 0
				local Farthest = nil
				for _,plr in pairs(currentList) do
					if plr ~= speaker and plr.Character then
						local distance = plr:DistanceFromCharacter(self.fetchHrp(speakerChar).Position)
						if distance > highest then
							highest = distance
							Farthest = {plr}
						end
					end
				end
				return Farthest
			end,
			["group(%d+)"] = function(speaker,args)
				local returns = {}
				local groupID = tonumber(args[1])
				for _,plr in pairs(self.Services.Players:GetPlayers()) do
					if plr:IsInGroup(groupID) then  
						table.insert(returns,plr)
					end
				end
				return returns
			end,
			["alive"] = function(speaker,args)
				local returns = {}
				for _,plr in pairs(self.Services.Players:GetPlayers()) do
					if plr.Character and plr.Character:FindFirstChildOfClass("Humanoid") and plr.Character:FindFirstChildOfClass("Humanoid").Health > 0 then
						table.insert(returns,plr)
					end
				end
				return returns
			end,
			["dead"] = function(speaker,args)
				local returns = {}
				for _,plr in pairs(self.Services.Players:GetPlayers()) do
					if (not plr.Character or not plr.Character:FindFirstChildOfClass("Humanoid")) or plr.Character:FindFirstChildOfClass("Humanoid").Health <= 0 then
						table.insert(returns,plr)
					end
				end
				return returns
			end,
			["rad(%d+)"] = function(speaker,args)
				local returns = {}
				local radius = tonumber(args[1])
				local speakerChar = speaker.Character
				if not speakerChar or not self.fetchHrp(speakerChar) then return end
				for _,plr in pairs(self.Services.Players:GetPlayers()) do
					if plr.Character and self.fetchHrp(plr.Character) then
						local magnitude = (self.fetchHrp(plr.Character).Position-self.fetchHrp(speakerChar).Position).magnitude
						if magnitude <= radius then table.insert(returns,plr) end
					end
				end
				return returns
			end,
			["cursor"] = function(speaker)
				local plrs = {}
				local v = self.getClosestPlayerFromCursor()
				if v ~= nil then table.insert(plrs, v) end
				return plrs
			end,
			["npcs"] = function(speaker,args)
				local returns = {}
				for _, v in pairs(workspace:GetDescendants()) do
					if v:IsA("Model") and self.fetchHrp(v) and v:FindFirstChildWhichIsA("Humanoid") and self.Services.Players:GetPlayerFromCharacter(v) == nil then
						local clone = Instance.new("Player")
						clone.Name = v.Name .. " - " .. v:FindFirstChildWhichIsA("Humanoid").DisplayName
						clone.Character = v
						table.insert(returns, clone)
					end
				end
				return returns
			end,
		}
		local foundList = {}
		
		local function fetchPlayer(name)
			local player = self.Services.Players:FindFirstChild(name)
			if player then
				return player
			end
			return nil
		end

		for _,name in pairs(nameList) do
			if string.sub(name,1,1) ~= "+" and string.sub(name,1,1) ~= "-" then name = "+"..name end
			local tokens = self.toTokens(name)
			local initialPlayers = self.Services.Players:GetPlayers()

			for i,v in pairs(tokens) do
				if v.Operator == "+" then
					local tokenContent = v.Name
					local foundCase = false
					for regex,case in pairs(playerCases) do
						local matches = {string.match(tokenContent,"^"..regex.."$")}
						if #matches > 0 then
							foundCase = true
							initialPlayers = self.onlyIncludeInTable(initialPlayers,case(speaker,matches,initialPlayers))
						end
					end
					if not foundCase then
						initialPlayers = self.onlyIncludeInTable(initialPlayers, self.getPlayersByName(tokenContent))
					end
				else
					local tokenContent = v.Name
					local foundCase = false
					for regex, case in pairs(playerCases) do
						local matches = {string.match(tokenContent,"^"..regex.."$")}
						if #matches > 0 then
							foundCase = true
							initialPlayers = self.removeTableMatches(initialPlayers, case(speaker,matches,initialPlayers))
						end
					end
					if not foundCase then
						initialPlayers = self.removeTableMatches(initialPlayers, self.getPlayersByName(tokenContent))
					end
				end
			end

			for i,v in pairs(initialPlayers) do table.insert(foundList,v) end
		end

		local found = {}
		for i,v in pairs(foundList) do
			table.insert(found, fetchPlayer(v.Name))
		end

		return found
	end
	
	self:UniversalCommands()
	self:ConstructUI()

	return self
end

function CommandBar:AddCommand(cmd)
	if not (type(cmd) == "table") then
		return
	end
	table.insert(self.Commands, cmd)
end

function CommandBar:ConstructUI()
	if self.findFirstChild(self.Services.Lighting, "REMNANTS_CLIENT_BLUR") then
		self.findFirstChild(self.Services.Lighting, "REMNANTS_CLIENT_BLUR"):Destroy()
	end
	
	local cmdBlur = Instance.new("BlurEffect", self.Services.Lighting)
	cmdBlur.Size = 0
	cmdBlur.Name = "REMNANTS_CLIENT_BLUR"
	
	local blurUI = self.UI.Blur
	
	local main = self.UI.Main
	local open = self.UI.Open
	
	local content = main.Content
	local scroll = content.ScrollingFrame
	local commandsFrame = content.Commands
	local textbox = scroll.TextBox
	local autofill = textbox.Autofill
	local colorfill = textbox.Colorfill
	
	self.openBar = function()
		self.spawn(function()
			if self.States.consoleOpened then
				self.UI.Enabled = true
				main.Visible = true
			end

			if not self.States.currentlyOpened then
				main.Position = UDim2.new(.5,0,.5,20)
				main.Scale.Scale = .95
			end

			self.tween(main.Scale, TweenInfo.new(.5, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut), {Scale = 1})
			self.tween(main, TweenInfo.new(.7, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut), {Position = UDim2.new(.5,0,.5,0)})
			self.tween(cmdBlur, TweenInfo.new(.8, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut), {Size = self.Config.FOCUSED.BLUR.AMOUNT})
			self.tween(blurUI.Frame, TweenInfo.new(.8, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut), {BackgroundTransparency = .5})

			if self.Config.FOCUSED.FOV.ENABLED then
				self.tween(self.Camera, TweenInfo.new(.8, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut), {FieldOfView = self.Config.FOCUSED.FOV.AMOUNT})
			end
			self.States.changingFOV = true

			self.spawn(function()
				task.wait(.5)
				if self.States.changingFOV then
					self.States.changingFOV = false
				end
			end)

			self.Modules.fade:FadeOpen(main, .5)
			self.Modules.fade:FadeClose(main.Content.ScrollingFrame, 0)

			self.spawn(function()
				task.wait(.3)
				self.Modules.fade:FadeOpen(main.Content.ScrollingFrame, .5)
			end)

			self.States.currentlyOpened = true
		end)
	end
	self.closeBar = function()
		self.spawn(function()
			self.tween(main.Scale, TweenInfo.new(.4, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut), {Scale = .95})
			self.tween(cmdBlur, TweenInfo.new(1, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut), {Size = 0})
			self.tween(blurUI.Frame, TweenInfo.new(1, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut), {BackgroundTransparency = 1})
			self.tween(main, TweenInfo.new(.5, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut), {Position = UDim2.new(.5,0,.5,20)})
			self.Modules.fade:FadeClose(main, .5)

			if self.Config.FOCUSED.FOV.ENABLED then
				self.tween(self.Camera, TweenInfo.new(.5, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut), {FieldOfView = self.Storage.lastFov})
			end

			self.States.changingFOV = true
			self.spawn(function()
				task.wait(.5)
				if self.States.changingFOV then
					self.States.changingFOV = false
				end
			end)

			if not self.States.consoleOpened then
				task.wait(.3)
				if not self.States.consoleOpened then
					main.Visible = false
					task.wait(.4)
					if not self.States.consoleOpened then
						self.States.currentlyOpened = false
					end
				end
			end
		end)
	end
	self.clearText = function()
		textbox.Text = ""
		autofill.Text = ""
		colorfill.Text = ""
	end
	self.cleanText = function(str)
		local playerColor = "<font color='#"..self.Theme.PLAYER_COLOR:ToHex().."'>"
		local stringColor = "<font color='#"..self.Theme.STRING_COLOR:ToHex().."'>"
		local utilColor = "<font color='#"..self.Theme.UTILITY_COLOR:ToHex().."'>"
		str = str:gsub("<font transparency='1'>", "")
			:gsub("</font>", ""):gsub(playerColor, "")
			:gsub("</font>", ""):gsub(stringColor, "")
			:gsub("</font>", ""):gsub(utilColor, "")
			:gsub("</font>", "")
		return str
	end
	self.cleanWhiteSpaces = function(str)
		str = str:gsub("^%s*(.-)%s*$", "%1")
		str = str:gsub("%s+", " ")
		return str
	end
	self.convertToColor = function(str, color)
		str = string.format('<font color="#%s">%s</font>', color:ToHex(), str)
		return str
	end
	self.transparencyText = function(str, transparency)
		str = string.format('<font transparency="%s">%s</font>', transparency, str)
		return str
	end
	self.findPlayer = function(str)
		local list = {
			"All", "Others", "Friends",
			"Nonfriends", "Dead", "Alive", "Me",
			"Bacons", "Guests", "Random", "Dead", "Team", "NonTeam", "Group",
			"Rad", "Cursor", "Npcs", "Farthest", "Nearest", "Enemies", "Allies",
			"Age",
		}

		local player = self.getSuggestion(str, self.Services.Players:GetPlayers())
		local arg = self.getSuggestion(str, list)
		if player then
			return player
		end
		if arg then
			return arg
		end
	end
	
	main.Scale.Scale = .95
	
	if not self.Services.RunService:IsStudio() then
		self.UI.Parent = game:GetService("CoreGui") else
		self.UI.Parent = self.LocalPlayer.PlayerGui
	end
	
	self.UI.Enabled = true
	self.UI.DisplayOrder = 2147483647
	
	self.Modules.fade:FadeClose(main, 0)
	self.Modules.resuponshibu:Set(self.UI, 1500, true)
	self.closeBar()
	
	main.Visible = false
	content.Tab.Visible = false
	
	textbox.PlaceholderText = `Command console`
	
	do
		self.addConn("TEXTBOX_FOCUSED", textbox.Focused:Connect(function()
			if (not self.States.changingFOV) and (self.Config.FOCUSED.FOV.ENABLED) then
				self.Storage.lastFov = self.Camera.FieldOfView
			end
			local ChatOpened = self.Services.StarterGui:GetCore("ChatActive")
			if ChatOpened then
				self.Services.StarterGui:SetCore("ChatActive", false)
			end
			task.wait()
			self.States.consoleOpened = true
			self.clearText()
			self.openBar()

			task.spawn(function()
				task.wait(.05)
				if (self.Storage.lastCommand and self.Storage.lastCommand ~= "") then
					autofill.Text = self.Storage.lastCommand
					textbox.PlaceholderText = ""
					self.Storage.autofillQuery = self.cleanText(autofill.Text)
				end
			end)
		end))
		
		self.addConn("TEXTBOX_FOCUSLOST", textbox.FocusLost:Connect(function(enterPressed)
			self.States.consoleOpened = false
			self.closeBar()
			if enterPressed then
				if textbox.Text ~= "" then
					self.Storage.lastCommand = self.cleanWhiteSpaces(autofill.Text)
				end
				
				self.Modules.parser:Parse(self.LocalPlayer, textbox.Text, {})

				self.clearText()

				self.tween(content.Effects.EnterEffect, TweenInfo.new(.5, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut), {Size = UDim2.new(0,2000,0,2000)})
				self.tween(content.Effects.EnterEffect, TweenInfo.new(.5, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut), {ImageTransparency = .9})
				task.spawn(function()
					task.wait(.15)
					self.tween(content.Effects.EnterEffect, TweenInfo.new(.5, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut), {Size = UDim2.new(0,0,0,0)})
					self.tween(content.Effects.EnterEffect, TweenInfo.new(.5, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut), {ImageTransparency = 1})
				end)
			end
		end))
		
		self.addConn("TEXTBOX_EDITED", textbox:GetPropertyChangedSignal("Text"):Connect(function()
			local text = textbox.Text:match("%S+")

			self.Storage.numCommands = 0

			commandsFrame:TweenSize(UDim2.new(1,0,1,0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quint, .2, true,nil)
			main:TweenPosition(UDim2.new(.5,0,.5,0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quad, .5, true,nil)

			local batchCommands = self.splitString(textbox.Text, self.Config.EXECUTION.BATCH_KEY)
			
			local autofillTexts = {}
			local colorfillTexts = {}

			local function clearCommands()
				for index, val in ipairs(commandsFrame:GetChildren()) do
					if val:IsA("ImageLabel") and val.Name ~= "Background" then
						val:Destroy()
					end
				end
			end

			for _, fullCommand in ipairs(batchCommands) do
				fullCommand = fullCommand:match("^%s*(.-)%s*$")

				local args = self.splitString(fullCommand, self.Config.EXECUTION.SPLIT_KEY)
				local commandName = args[1]
				if not commandName or commandName == "" then
					continue
				end

				local autofillCommandText = commandName
				local colorfillCommandText = self.transparencyText(commandName, 1)

				local foundCmd = self.findCommand(commandName)
				if not foundCmd then
					for _, cmd in ipairs(self.Commands) do
						if cmd.Aliases then
							for _, alias in ipairs(cmd.Aliases) do
								if string.lower(alias) == string.lower(commandName) then
									foundCmd = cmd
									break
								end
							end
						end
						if foundCmd then break end
					end
				end

				clearCommands()

				for index, result in ipairs(self.getResults(args[1])) do
					local foundCmd = self.findCommand(result)

					local cmdArgsStr = ""
					local cmdAliases = ""

					local paletePos = UDim2.new(0,0,0,0)

					local temp = content.Templates.Command:Clone()

					local cmdArgs = foundCmd.Args or foundCmd.Arguments

					if (not args[2]) then
						autofillCommandText = self.getSuggestion(args[1], self.Commands) or ""
					end

					for index, val in ipairs(cmdArgs) do
						for index, val in ipairs(cmdArgs) do
							cmdArgsStr = " | "
						end
						for index, val in ipairs(cmdArgs) do
							if val then
								if index == #cmdArgs then
									cmdArgsStr = cmdArgsStr.."[ "..val.." ]"
								elseif index ~= #cmdArgs then
									cmdArgsStr = cmdArgsStr.."[ "..val.." ]".." "
								end
							end
						end
					end

					if foundCmd.Aliases then
						for index, val in ipairs(foundCmd.Aliases) do
							cmdAliases = ", "
						end
						for index, val in ipairs(foundCmd.Aliases) do
							if val then
								if index == #foundCmd.Aliases then
									cmdAliases = cmdAliases..val
								elseif index ~= #foundCmd.Aliases then
									cmdAliases = cmdAliases..val..",".." "
								end
							end
						end
					end

					temp.NameLabel.Text = foundCmd.Name..cmdAliases.."<font color='#afafaf'>"..cmdArgsStr.."</font>"
					temp.Name = foundCmd.Name
					temp.Description.Text = foundCmd.Description
					temp.Parent = commandsFrame
					temp.Visible = true

					self.Storage.numCommands += 1

					if index >= 8 then
						temp:Destroy()
						temp = nil
						self.Storage.numCommands = 8
					end

					if temp then
						temp.Position = paletePos
						temp.Position = temp.Position + UDim2.new(0, 0, 0, 50*index)
						paletePos = paletePos + UDim2.new(0, 0, 0, 50)
					end
					if index == 1 then
						temp.Select.Visible = true
					end
					pcall(function()
						if index > 8 then
							return
						end
						commandsFrame:TweenSize(UDim2.new(1,0,1,temp.Size.Y.Offset*(index)), Enum.EasingDirection.InOut, Enum.EasingStyle.Quint, .2, true,nil)
					end)
					pcall(function()
						if index > 8 then
							return
						end
						main:TweenPosition(UDim2.new(.5,0,.5,-(temp.Size.Y.Offset*(index))/2), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, .5, true,nil)
					end)
				end

				if (foundCmd) and (args[2]) then
					local cmdArgs = foundCmd.Args or foundCmd.Arguments

					for index, argDefinition in ipairs(cmdArgs) do
						local userInputArg = args[index + 1]

						if not userInputArg then
							break 
						end

						local argument = argDefinition:lower()

						if (argument == "player") or (argument == "user") then
							local closestPlayer = self.findPlayer(userInputArg)
							if closestPlayer then
								autofillCommandText = autofillCommandText .. " " .. closestPlayer
								colorfillCommandText = colorfillCommandText .. " " .. self.convertToColor(userInputArg, self.Theme.PLAYER_COLOR)
							end
						elseif (argument == "string") then
							local fullString = table.concat(args, " ", index + 1)
							autofillCommandText = autofillCommandText .. " " .. fullString
							colorfillCommandText = colorfillCommandText .. " " .. self.convertToColor(fullString, self.Theme.STRING_COLOR)
						else
							autofillCommandText = autofillCommandText .. " " .. userInputArg
							colorfillCommandText = colorfillCommandText .. " " .. self.transparencyText(userInputArg, 0.8)
						end
					end
				end
				table.insert(autofillTexts, autofillCommandText)
				table.insert(colorfillTexts, colorfillCommandText)
			end

			autofill.Text = table.concat(autofillTexts, ` {self.Config.EXECUTION.BATCH_KEY}`)
			colorfill.Text = table.concat(colorfillTexts, ` {self.Config.EXECUTION.BATCH_KEY}`)
			
			if (self.cleanText(autofill.Text) == self.cleanWhiteSpaces(textbox.Text)) then
				content.Tab.Visible = false else
				content.Tab.Visible = true
			end

			if string.sub(textbox.Text, textbox.CursorPosition - 1) == "	" then
				if self.Storage.autofillQuery ~= "" and string.lower(textbox.Text) ~= string.lower(autofill.Text) then
					textbox.Text = self.Storage.autofillQuery.. " "
					textbox.CursorPosition = string.len(textbox.Text) + 1
				end
			end

			if (self.Storage.lastCommand and self.Storage.lastCommand ~= "") and (textbox.Text == "") then
				autofill.Text = self.Storage.lastCommand
				textbox.PlaceholderText = ""
			end

			self.Storage.autofillQuery = self.cleanText(autofill.Text)
		end))
		
		self.addConn("OPEN_BUTTON_PRESSED", open.Activated:Connect(function()
			textbox:CaptureFocus()
		end))
		
		self.addConn("BAR_INPUT_BEGAN", self.Services.UserInputService.InputBegan:Connect(function(input, gpe)
			if gpe then
				return
			end
			
			if input.KeyCode == self.Config.CONSOLE.PC_OPEN_KEY
				or input.KeyCode == self.Config.CONSOLE.XBOX_OPEN_KEY
			then
				textbox:CaptureFocus()
			end
		end))
		
		self.addConn("BAR_RENDER", self.Services.RunService.RenderStepped:Connect(function()
			if self.Services.UserInputService.TouchEnabled then
				autofill.Visible = false
				colorfill.Visible = false

				open.Visible = not self.States.currentlyOpened
			else
				autofill.Visible = true
				colorfill.Visible = true
				
				open.Visible = false
			end
		end))
	end
end

function CommandBar:UniversalCommands()
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
					self.startLoop("VIEWING_PLAYER", .5, function()
						local player = self.Services.Players:FindFirstChild(player.Name)
						if not player then
							if not player.Character then
								return
							end

							self.stopLoop("VIEWING_PLAYER")
							self.spawn(function()
								for i = 1, 10 do
									self.Camera.CameraSubject = speaker.Character
									task.wait()
								end
							end)

							return
						end
						self.Camera.CameraSubject = player.Character
					end)
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
			self.stopLoop("VIEWING_PLAYER")
			self.spawn(function()
				for i = 1, 10 do
					self.Camera.CameraSubject = speaker.Character
					task.wait()
				end
			end)
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
					print(player.Character)
					local hrp = self.fetchHrp(player.Character)
					if hrp then
						print(hrp)
						self.Modules.core:TeleportToLocation(hrp.CFrame + Vector3.new(3,1,0))
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
			self.Modules.core:SetWalkspeed(speed)
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
			self.Modules.core:SetWalkspeed(speed)
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
			loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/wallwalker.lua"))()
		end,
	})
	
	self:AddCommand({
		Name = "PromptR15",
		Description = "Prompts you to change your avatar rig to R15",

		Aliases = {"Wallwalk"},
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

		Aliases = {"Wallwalk"},
		Arguments = {},

		Function = function(speaker, args)
			-- 引数 --

			-- 変数 --

			-- 関数 --
			self.Modules.core:PromptRig("R6")
		end,
	})
end

return CommandBar
