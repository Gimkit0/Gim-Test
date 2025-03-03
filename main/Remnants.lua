--[=[
	Remnants Admin Console, Made by ._.l5 at discord AKA Server
	
	- * - Credits - * -
	  - Exoliner: Some gui assets
	  - Infinite Yield: Most of the commands and getplayer function
	  - Adonis (Davey_Bones): Batch commands
	  - And you: For making this possible 😘
]=]

local CommandBar = {}
CommandBar.__index = CommandBar

function CommandBar.new(config)
	local self = setmetatable({}, CommandBar)
	
	local loadedModules
	
	local globalName = "サーバー管理者コンソール"
	
	if _G[globalName] then
		_G[globalName]:Destroy()
	end
	
	if game:GetService("RunService"):IsStudio() then
		loadedModules = require(script.Modules)
	else
		loadedModules = loadstring(game:HttpGet("https://raw.githubusercontent.com/Gimkit0/Gim-Test/refs/heads/main/main/deps/modules.lua"))()
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
		ReplicatedStorage = game:GetService("ReplicatedStorage"),
	}
	local states = {
		consoleOpened = false,
		currentlyOpened = false,
		changingFOV = false,
		changeFOV = false,
		teleportCheck = false,
	}
	local defaultConfig = {
		SYSTEM = {
			NAME = "Server's Admin",
			RELOAD_LOADSTRING  = [[loadstring(game:HttpGet("https://raw.githubusercontent.com/Gimkit0/Gim-Test/refs/heads/main/main/Remnants.lua"))().new()]],
			
			VERSION = 1.0,
			VERSION_CHECKER_LINK = "https://raw.githubusercontent.com/Gimkit0/Gim-Test/refs/heads/main/CurrentVersion.lua",
			
			KEEP_ON_TELEPORT = true,
			CAN_AUTOMATICALLY_UPDATE = true,
		},
		
		FOCUSED = {
			FOV = {
				ENABLED = false,
				AMOUNT = 60,
			},
			BLUR = {
				ENABLED = true,
				AMOUNT = 10,
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
		
		COMMANDS = {
			UNIVERSAL_COMMANDS = true,
			AUTOMATIC_BACKDOOR_SCAN = false,
			
			BANG_OFFSET = CFrame.new(0, 0, 1.1),
		},
		
		UI = {
			DEFAULT_THEME = "Mocha",
			
			THEME_CHANGE_SPEED = .5,
			
			THEMES = {
				Dark = {
					THEME_COLOR = Color3.fromRGB(255, 0, 0),

					BACKGROUND = Color3.fromRGB(25, 25, 25),
					LIGHT_BACKGROUND = Color3.fromRGB(50, 50, 50),
					BACKGROUND_TRANSPARENCY = .1,
					BACKGROUND_IMAGE = 16255699706,
					BACKGROUND_IMAGE_TRANSPARENCY = .9,
					BACKGROUND_IMAGE_COLOR = Color3.fromRGB(255, 255, 255),
					DROPSHADOW = Color3.fromRGB(20, 20, 20),
					DROPSHADOW_TRANSPARENCY = .5,
					
					BLUR_BACKGROUND = Color3.fromRGB(0, 0, 0),

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
					
					SUCCESS = Color3.fromRGB(115, 255, 0),
					ERROR = Color3.fromRGB(255, 0, 0),
					INFO = Color3.fromRGB(5, 138, 255),
				},
				Light = {
					THEME_COLOR = Color3.fromRGB(30, 131, 255),

					BACKGROUND = Color3.fromRGB(240, 240, 240),
					LIGHT_BACKGROUND = Color3.fromRGB(255, 255, 255),
					BACKGROUND_TRANSPARENCY = .1,
					BACKGROUND_IMAGE = 16255699706,
					BACKGROUND_IMAGE_TRANSPARENCY = .9,
					BACKGROUND_IMAGE_COLOR = Color3.fromRGB(255, 255, 255),
					DROPSHADOW = Color3.fromRGB(165, 165, 165),
					DROPSHADOW_TRANSPARENCY = .5,

					BLUR_BACKGROUND = Color3.fromRGB(255, 255, 255),

					REGULAR_TEXT = Color3.fromRGB(50, 50, 50),
					SHADED_TEXT = Color3.fromRGB(100, 100, 100),
					THEME_FILL_TEXT = Color3.fromRGB(255, 255, 255),

					OUTLINE = Color3.fromRGB(180, 180, 180),
					UNDERLINE = Color3.fromRGB(180, 180, 180),

					SUGGESTION_TRANSPAENCY = .2,

					REGULAR_BUTTON_TRANSPARENCY = 1,
					REGULAR_BUTTON_HOVER_TRANSPARENCY = .9,
					REGULAR_BUTTON_CLICK_TRANSPARENCY = .5,

					RIPPLE_COLOR = Color3.fromRGB(0, 122, 255),
					RIPPLE_TRANSPARENCY = .95,
					RIPPLE_CLICK_TRANSPARENCY = .8,

					HEADER_SHADOW = Color3.fromRGB(200, 200, 200),
					HEADER_SHADOW_TRANSPARENCY = .7,
					HEADER_SHADOW_INFO_TRANSPARENCY = .8,
					HEADER_SHAODW_BOTTOM_TRANSPARENCY = .1,
					HEADER_TRANSPARENCY = .5,

					PLAYER_COLOR = Color3.fromRGB(0, 122, 255),
					STRING_COLOR = Color3.fromRGB(136, 136, 136),
					UTILITY_COLOR = Color3.fromRGB(255, 199, 57),

					SUCCESS = Color3.fromRGB(116, 227, 154),
					ERROR = Color3.fromRGB(255, 0, 0),
					INFO = Color3.fromRGB(5, 138, 255),
				},
				Mocha = {
					THEME_COLOR = Color3.fromRGB(231, 130, 132), -- Rosewater

					BACKGROUND = Color3.fromRGB(30, 30, 46), -- Base
					LIGHT_BACKGROUND = Color3.fromRGB(49, 50, 68), -- Mantle
					BACKGROUND_TRANSPARENCY = .1,
					BACKGROUND_IMAGE = 16255699706,
					BACKGROUND_IMAGE_TRANSPARENCY = .9,
					BACKGROUND_IMAGE_COLOR = Color3.fromRGB(205, 214, 244), -- Text
					DROPSHADOW = Color3.fromRGB(20, 20, 30), 
					DROPSHADOW_TRANSPARENCY = .5,

					BLUR_BACKGROUND = Color3.fromRGB(24, 24, 37), -- Surface0

					REGULAR_TEXT = Color3.fromRGB(205, 214, 244), -- Text
					SHADED_TEXT = Color3.fromRGB(166, 173, 200), -- Subtext1
					THEME_FILL_TEXT = Color3.fromRGB(30, 30, 46), -- Base

					OUTLINE = Color3.fromRGB(88, 91, 112), -- Surface2
					UNDERLINE = Color3.fromRGB(108, 112, 134), -- Surface1

					SUGGESTION_TRANSPAENCY = .2,

					REGULAR_BUTTON_TRANSPARENCY = 1,
					REGULAR_BUTTON_HOVER_TRANSPARENCY = .9,
					REGULAR_BUTTON_CLICK_TRANSPARENCY = .5,

					RIPPLE_COLOR = Color3.fromRGB(231, 130, 132), -- Rosewater
					RIPPLE_TRANSPARENCY = .95,
					RIPPLE_CLICK_TRANSPARENCY = .8,

					HEADER_SHADOW = Color3.fromRGB(30, 30, 46), 
					HEADER_SHADOW_TRANSPARENCY = .7,
					HEADER_SHADOW_INFO_TRANSPARENCY = .8,
					HEADER_SHAODW_BOTTOM_TRANSPARENCY = .1,
					HEADER_TRANSPARENCY = .5,

					PLAYER_COLOR = Color3.fromRGB(137, 180, 250), -- Blue
					STRING_COLOR = Color3.fromRGB(166, 218, 149), -- Green
					UTILITY_COLOR = Color3.fromRGB(250, 179, 135), -- Peach

					SUCCESS = Color3.fromRGB(166, 218, 149), -- Green
					ERROR = Color3.fromRGB(243, 139, 168), -- Red
					INFO = Color3.fromRGB(137, 180, 250), -- Blue
				},
				Frappe = {
					THEME_COLOR = Color3.fromRGB(198, 160, 246), -- Lavender

					BACKGROUND = Color3.fromRGB(41, 42, 60), -- Base
					LIGHT_BACKGROUND = Color3.fromRGB(61, 64, 89), -- Mantle
					BACKGROUND_TRANSPARENCY = .1,
					BACKGROUND_IMAGE = 16255699706,
					BACKGROUND_IMAGE_TRANSPARENCY = .9,
					BACKGROUND_IMAGE_COLOR = Color3.fromRGB(202, 211, 245), -- Text
					DROPSHADOW = Color3.fromRGB(35, 38, 59), -- Slightly darker shadow
					DROPSHADOW_TRANSPARENCY = .5,

					BLUR_BACKGROUND = Color3.fromRGB(48, 52, 70), -- Surface0

					REGULAR_TEXT = Color3.fromRGB(202, 211, 245), -- Text
					SHADED_TEXT = Color3.fromRGB(175, 181, 205), -- Subtext1
					THEME_FILL_TEXT = Color3.fromRGB(41, 42, 60), -- Base

					OUTLINE = Color3.fromRGB(98, 104, 128), -- Surface2
					UNDERLINE = Color3.fromRGB(116, 122, 152), -- Surface1

					SUGGESTION_TRANSPAENCY = .2,

					REGULAR_BUTTON_TRANSPARENCY = 1,
					REGULAR_BUTTON_HOVER_TRANSPARENCY = .9,
					REGULAR_BUTTON_CLICK_TRANSPARENCY = .5,

					RIPPLE_COLOR = Color3.fromRGB(198, 160, 246), -- Lavender
					RIPPLE_TRANSPARENCY = .95,
					RIPPLE_CLICK_TRANSPARENCY = .8,

					HEADER_SHADOW = Color3.fromRGB(41, 42, 60),
					HEADER_SHADOW_TRANSPARENCY = .7,
					HEADER_SHADOW_INFO_TRANSPARENCY = .8,
					HEADER_SHAODW_BOTTOM_TRANSPARENCY = .1,
					HEADER_TRANSPARENCY = .5,

					PLAYER_COLOR = Color3.fromRGB(140, 170, 238), -- Blue
					STRING_COLOR = Color3.fromRGB(166, 209, 137), -- Green
					UTILITY_COLOR = Color3.fromRGB(238, 212, 159), -- Peach

					SUCCESS = Color3.fromRGB(166, 209, 137), -- Green
					ERROR = Color3.fromRGB(237, 135, 150), -- Red
					INFO = Color3.fromRGB(140, 170, 238), -- Blue
				},
			},
		},
	}
	local storage = {
		autofillQuery = "",
		lastCommand = "",
		
		numCommands = 0,
		lastFov = 0,
		
		onThemeChangeConns = {},
	}
	local modules = {
		autocomplete = loadedModules.Autocomplete(),
		fade = loadedModules.Fade(),
		universalCommands = loadedModules.UniversalCommands(),
		resuponshibu = loadedModules.Resuponshibu().new(),
		parser = loadedModules.Parser().new(self),
		core = loadedModules.Core().new(self),
		
		notifcationTemp = loadedModules.NotifyUI(),
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
	
	self.UI = loadedModules.ConsoleInterface()
	
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
	self.changeTheme = function(themeName)
		self.Theme = self.Config.UI.THEMES[themeName]
		
		self.spawn(function()
			local function themeChangeTween(obj, goal)
				self.tween(obj, TweenInfo.new(self.Config.UI.THEME_CHANGE_SPEED, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut), goal)
			end

			for _, themeConn in pairs(self.Storage.onThemeChangeConns) do
				themeConn(self.Theme, themeChangeTween)
			end
		end)
	end
	self.onThemeChange = function(func)
		if type(func) ~= "function" then
			return
		end
		
		local function themeChangeTween(obj, goal)
			self.tween(obj, TweenInfo.new(0, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut), goal)
		end
		
		table.insert(self.Storage.onThemeChangeConns, function(theme, themeTween)
			func(theme, themeTween)
		end)
		self.spawn(function()
			repeat task.wait() until self.Theme
			func(self.Theme, themeChangeTween)
		end, true)
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
	self.getTableLength = function(table)
		local count = 0
		for _ in pairs(table) do
			count = count + 1
		end
		return count
	end
	self.splitString = function(str, delimeter)
		local broken = {}
		if delimeter == nil then delimeter = "," end
		for match in string.gmatch(str,"[^"..delimeter.."]+") do
			table.insert(broken, match)
		end
		return broken
	end
	self.validateConfig = function(default, newConfig)
		for i, v in pairs(default) do
			if newConfig[i] == nil then
				newConfig[i] = v
			end
		end
		return newConfig
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
	self.createDep = function(depName, className, parent)
		if parent:FindFirstChild(depName) then
			return parent[depName]
		end
		
		local inst = Instance.new(className, parent)
		inst.Name = depName
		
		return inst
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
		local closestDistance = math.huge
		for i, v in pairs(self.Services.Players:GetPlayers()) do
			if v ~= self.LocalPlayer and v.Character and v.Character:FindFirstChildOfClass("Humanoid") then
				for _, x in pairs(v.Character:GetChildren()) do
					if string.find(x.Name, "Torso") then
						local distance = (self.worldToScreen(x) - self.mousePositionToVector2()).Magnitude
						if distance < closestDistance then
							closestDistance = distance
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
				if #players > 1 then
					table.remove(players, table.find(players, localplayer))
				end
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
						if not self.Services.RunService:IsStudio() then
							local clone = Instance.new("Player")
							clone.Name = v.Name .. " - " .. v:FindFirstChildWhichIsA("Humanoid").DisplayName
							clone.Character = v
							table.insert(returns, clone)
						else
							local clone = {
								Name = v.Name,
								DisplayName = v.Name,
								Character = v,
							}
							table.insert(returns, clone)
						end
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

		for _, name in pairs(nameList) do
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
							initialPlayers = self.onlyIncludeInTable(initialPlayers, case(speaker,matches,initialPlayers))
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
	
	self.Config = self.validateConfig(defaultConfig, config or {})
	
	self.floatName = self.Modules.core:RandomString()
	
	if self.Config.COMMANDS.UNIVERSAL_COMMANDS then
		self.Modules.universalCommands.new(self)
	end
	
	self:ConstructUI()
	
	self.changeTheme(self.Config.UI.DEFAULT_THEME)
	
	_G[globalName] = self
	
	self.spawn(function()
		task.wait(5)
		while self.Config.SYSTEM.CAN_AUTOMATICALLY_UPDATE do
			self:_checkForUpdates()
			task.wait(30)
		end
	end)

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
	
	local queueteleport
	
	if not self.Services.RunService:IsStudio() then
		queueteleport = (syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport)
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
	
	self.onThemeChange(function(theme, tween)
		tween(main.Background, {BackgroundColor3 = theme.BACKGROUND})
		tween(commandsFrame.UIStroke, {Color = theme.OUTLINE})
		tween(main.Background.DropShadow1, {ImageColor3 = theme.DROPSHADOW})
		tween(main.Background.DropShadow2, {ImageColor3 = theme.DROPSHADOW})
		tween(textbox, {TextColor3 = theme.REGULAR_TEXT})
		tween(textbox, {PlaceholderColor3 = theme.SHADED_TEXT})
		tween(autofill, {TextColor3 = theme.SHADED_TEXT})
		tween(commandsFrame, {BackgroundColor3 = theme.LIGHT_BACKGROUND})
		tween(commandsFrame.Background, {ImageColor3 = theme.BACKGROUND_IMAGE_COLOR})
		tween(commandsFrame.Background, {ImageTransparency = theme.BACKGROUND_IMAGE_TRANSPARENCY})
		tween(content.Tab, {TextColor3 = theme.REGULAR_TEXT})
		tween(content.Tab, {BackgroundColor3 = theme.LIGHT_BACKGROUND})
		tween(blurUI.Frame, {BackgroundColor3 = theme.BLUR_BACKGROUND})
		tween(content.Icon, {ImageColor3 = theme.THEME_FILL_TEXT})
		tween(content.Icon.Background, {BackgroundColor3 = theme.THEME_COLOR})
		tween(content.Effects.EnterEffect, {ImageColor3 = theme.THEME_COLOR})
		tween(open.Title, {TextColor3 = theme.REGULAR_TEXT})
		tween(open.Background, {BackgroundColor3 = theme.BACKGROUND})
		tween(open.Background.UIStroke, {Color = theme.OUTLINE})
		tween(open.Background.DropShadow1, {ImageColor3 = theme.DROPSHADOW})
		tween(open.Background.DropShadow2, {ImageColor3 = theme.DROPSHADOW})
		tween(open.Background.DropShadow1, {ImageTransparency = theme.DROPSHADOW_TRANSPARENCY})
		tween(open.Background.DropShadow2, {ImageTransparency = theme.DROPSHADOW_TRANSPARENCY})
		
		commandsFrame.Background.Image = `rbxassetid://{theme.BACKGROUND_IMAGE}`
	end)
	
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
			
			self.tween(main.Background.DropShadow1, TweenInfo.new(1), {ImageTransparency = self.Theme.DROPSHADOW_TRANSPARENCY})
			self.tween(main.Background.DropShadow2, TweenInfo.new(1), {ImageTransparency = self.Theme.DROPSHADOW_TRANSPARENCY})

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

				self.tween(content.Effects.EnterEffect, TweenInfo.new(.2, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut), {Size = UDim2.new(0,2000,0,2000)})
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

					temp.NameLabel.Text = foundCmd.Name..cmdAliases..`<font color='#{self.Theme.SHADED_TEXT:ToHex()}'>`..cmdArgsStr..`</font>`
					temp.Name = foundCmd.Name
					temp.Description.Text = foundCmd.Description
					temp.Parent = commandsFrame
					temp.Visible = true
					
					temp.NameLabel.TextColor3 = self.Theme.REGULAR_TEXT
					temp.Description.TextColor3 = self.Theme.SHADED_TEXT

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
						temp.Select.BackgroundColor3 = self.Theme.THEME_COLOR
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
		
		open.Title.Text = `Open {self.Config.SYSTEM.NAME}`
		
		self.LocalPlayer.OnTeleport:Connect(function()
			if self.Config.SYSTEM.KEEP_ON_TELEPORT and (not self.States.teleportCheck) and queueteleport then
				self.States.teleportCheck = true
				queueteleport(self.Config.SYSTEM.RELOAD_LOADSTRING)
			end
		end)
		
		self:Notify(self.Config.SYSTEM.NAME, `Welcome to <b>{self.Config.SYSTEM.NAME}</b>! Press <b>';'</b> for command bar.`, "SUCCESS", nil, 15)
	end
end

function CommandBar:Notify(name, desc, ntype, clickFunc, duration)
	local notifyFrame = self.UI:FindFirstChild("NotifyFrame")
	if not notifyFrame then
		notifyFrame = Instance.new("ScrollingFrame", self.UI)
		notifyFrame.Name = "NotifyFrame"
		notifyFrame.BackgroundTransparency = 1
		notifyFrame.Active = false
		notifyFrame.CanvasSize = UDim2.new(0,0,0,0)
		notifyFrame.Size = UDim2.new(0, 300, 1, 0)
		notifyFrame.AnchorPoint = Vector2.new(1,1)
		notifyFrame.Position = UDim2.new(1,0,1,0)
		notifyFrame.ScrollingEnabled = false
		notifyFrame.ClipsDescendants = false
		
		local list = Instance.new("UIListLayout", notifyFrame)
		list.Padding = UDim.new(0, 15)
		list.HorizontalAlignment = Enum.HorizontalAlignment.Center
		list.VerticalAlignment = Enum.VerticalAlignment.Bottom
		
		local padding = Instance.new("UIPadding", notifyFrame)
		padding.PaddingBottom = UDim.new(0,20)
		padding.PaddingLeft = UDim.new(0,20)
		padding.PaddingRight = UDim.new(0,20)
		padding.PaddingTop = UDim.new(0,20)
	end
	
	local frame = self.Modules.notifcationTemp:Clone()
	frame.Parent = notifyFrame
	
	frame.Settings.NameString.Value = name
	frame.Settings.DescriptionString.Value = desc
	frame.Settings.DurationNumber.Value = duration
	
	self.onThemeChange(function(theme, tween)
		tween(frame.Graphical.Background, {BackgroundColor3 = theme.BACKGROUND})
		tween(frame.Graphical.Background.DropShadow1, {ImageColor3 = theme.DROPSHADOW})
		tween(frame.Graphical.Background.DropShadow2, {ImageColor3 = theme.DROPSHADOW})
		tween(frame.Graphical.Background.Background, {ImageColor3 = theme.BACKGROUND_IMAGE_COLOR})
		tween(frame.Graphical.Background.Background, {ImageTransparency = theme.BACKGROUND_IMAGE_TRANSPARENCY})
		tween(frame.Graphical.Top.Underline, {BackgroundColor3 = theme.UNDERLINE})
		tween(frame.Graphical.Top.Icon, {ImageColor3 = theme[ntype]})
		tween(frame.Graphical.Top.Title, {TextColor3 = theme.REGULAR_TEXT})
		tween(frame.Graphical.Content.Bottom.Fill, {BackgroundColor3 = theme[ntype]})
		tween(frame.Graphical.Content.Scroll.Description, {BackgroundColor3 = theme.SHADED_TEXT})
		tween(frame.Intro.Line, {BackgroundColor3 = theme.THEME_COLOR})
		
		frame.Graphical.Background.Background.Image = `rbxassetid://{theme.BACKGROUND_IMAGE}`
	end)
	
	local function C_19()
		local script = frame.Scripts.Core;

		local client = {}

		function client:init()
			self._scripts = script.Parent
			self._frame = self._scripts.Parent

			self._graphical = self._frame.Graphical
			self._settings = self._frame.Settings
			self._intro = self._frame.Intro

			self._services = {
				RunService = game:GetService("RunService"),
				TweenService = game:GetService("TweenService"),
			}
			self._connections = {}

			self._durationTicks = 0

			self._closed = false

			self.tween = function(object, info, goal)
				local tween = self._services.TweenService:Create(object, info, goal)
				tween:Play()
				return tween
			end

			self.addConnection = function(name, connection)
				table.insert(self._connections, {Name = name, Connection = connection})
			end

			self.removeConnection = function(name)
				for index, connection in pairs(self._connections) do
					if connection.Name == name then
						connection.Connection:Disconnect()
						table.remove(self._connections, index)
					end
				end
			end

			self.removeAllConnections = function()
				for index, connection in pairs(self._connections) do
					connection.Connection:Disconnect()
					table.remove(self._connections, index)
				end
			end

			self.ringAnimation = function(icon)
				local TIME = .25
				local EASING_STYLE = Enum.EasingStyle.Quart
				local EASING_DIRECTION = Enum.EasingDirection.Out

				task.spawn(function()
					self.tween(icon, TweenInfo.new(TIME, EASING_STYLE, EASING_DIRECTION), {Rotation = 45})
					task.wait(TIME)
					self.tween(icon, TweenInfo.new(TIME, EASING_STYLE, EASING_DIRECTION), {Rotation = -45})
					task.wait(TIME)
					self.tween(icon, TweenInfo.new(TIME, EASING_STYLE, EASING_DIRECTION), {Rotation = 0})
				end)
			end

			self.openAnimation = function()
				local lastSize = self._frame.Size
				self._frame.Size = UDim2.new(1,0,0,0)
				self._frame:TweenSize(lastSize, Enum.EasingDirection.InOut, Enum.EasingStyle.Quart, .15, true, nil)
				self._intro.Line:TweenPosition(UDim2.new(0,0,0,0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quad, .20, true, nil)
				task.wait(.20)
				for index, object in ipairs(self._graphical:GetChildren()) do
					if object:IsA("Frame") then
						object.Visible = true
					end
				end
				self.ringAnimation(self._graphical.Top.Icon)
				self._intro.Line:TweenPosition(UDim2.new(1,0,0,0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quad, .20, true, nil)
			end

			self.closeAnimation = function()
				self._closed = true
				self._intro.Line:TweenPosition(UDim2.new(0,0,0,0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quad, .20, true, nil)
				task.wait(.20)
				for index, object in ipairs(self._graphical:GetChildren()) do
					if object:IsA("Frame") then
						object.Visible = false
					end
				end
				self._intro.Line:TweenPosition(UDim2.new(-1,0,0,0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quad, .20, true, nil)
				task.wait(.20)
				self._intro.Line.Visible = false
				self._frame:TweenSize(UDim2.new(1,0,0,0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quart, .3, true, nil)
				task.wait(.3)
				self._frame:Destroy()
			end

			self.addConnection("Rendering", self._services.RunService.RenderStepped:Connect(function()
				pcall(function()
					self._graphical.Content.Scroll.Description.Text = self._settings.DescriptionString.Value
					self._graphical.Content.Scroll.Description.TextWrapped = true
					
					self._graphical.Top.Title.Text = self._settings.NameString.Value
					
					if ntype == "SUCCESS" then
						self._graphical.Top.Icon.Image = `rbxassetid://17829956110`
					elseif ntype == "ERROR" then
						self._graphical.Top.Icon.Image = `rbxassetid://17829927053`
					elseif ntype == "INFO" then
						self._graphical.Top.Icon.Image = `rbxassetid://11780939099`
					end
				end)
			end))

			self.addConnection("CloseOnClick", self._graphical.Button.Activated:Connect(function()
				if type(clickFunc) == "function" then
					clickFunc()
				end
				self.closeAnimation()
			end))

			self.tween(self._frame.Graphical.Content.Bottom.Fill, TweenInfo.new(self._settings.DurationNumber.Value), {Size = UDim2.new(1,0,1,10)})

			self.openAnimation()
			
			pcall(function()
				while true do
					wait(1)
					self._durationTicks = self._durationTicks + 1
					if self._durationTicks >= self._settings.DurationNumber.Value then
						self.closeAnimation()
						self.removeAllConnections()
						break
					end
					if self._closed then
						self.removeAllConnections()
						break
					end
				end
			end)

		end

		client:init()

		return client
	end;
	task.spawn(C_19);
end

function CommandBar:Destroy()
	self.UI:Destroy()
	self.UI = nil
	
	for _, conn in pairs(self.Connections) do
		conn:Disconnect()
	end
	self.Connections = nil
end

function CommandBar:_checkForUpdates()
	if self.Services.RunService:IsStudio() then
		return
	end
	
	local newVersion = loadstring(game:HttpGet(self.Config.SYSTEM.VERSION_CHECKER_LINK))()
	if self.Version < newVersion then
		self.Config.SYSTEM.CAN_AUTOMATICALLY_UPDATE = false
		
		self:Notify(self.Config.SYSTEM.NAME, `New version detected: <b>{newVersion}</b> reloading in 5 seconds!`, "SUCCESS", nil, 5)
		task.wait(5)
		loadstring(self.Config.SYSTEM.RELOAD_LOADSTRING)()
	end
end

return CommandBar
