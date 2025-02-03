--[=[
	これは Server (TNTMASTERS SS) が作成したコマンド モジュールです
	- Exoliner (一部の UI アセット) に感謝します
	- Adonis (Davey_Bones) (バッチ コマンド)
]=]

local CommandBar = {}
CommandBar.__index = CommandBar

function CommandBar.new()
	local self = setmetatable({}, CommandBar)
	
	local loadedModules = loadstring(game:HttpGet("https://raw.githubusercontent.com/Gimkit0/Gim-Test/refs/heads/main/main/deps/modules.lua?token=GHSAT0AAAAAAC6I67PU7LVL3DEZA7BCJ4HEZ5AEZQQ"))()
	local ui = loadstring(game:HttpGet("https://raw.githubusercontent.com/Gimkit0/Gim-Test/refs/heads/main/main/deps/ui.lua?token=GHSAT0AAAAAAC6I67PVRTZ5YUWK5TIFCHOGZ5AEZDA"))()

	print(true)
	
	local services = {
		UserInputService = game:GetService("UserInputService"),
		RunService = game:GetService("RunService"),
		TweenService = game:GetService("TweenService"),
		StarterGui = game:GetService("StarterGui"),
		Lighting = game:GetService("Lighting"),
		Players = game:GetService("Players"),
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
	}

	self.States = states
	self.Config = config
	self.Storage = storage
	self.Services = services
	self.Modules = modules
	
	self.Commands = {}
	self.Connections = {}

	self.Camera = workspace.CurrentCamera
	self.LocalPlayer = services.Players.LocalPlayer
	
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
	
	self:AddCommand({
		Name = "Test",
		Description = "This kills the [Player]",
		Level = 1,
		Aliases = {"TestAlias1", "TestAlias2"},
		Arguments = {"arg1", "arg2"},
		Function = function(speaker, args)
			-- 引数 --
			local arg1 = args[1]
			local arg2 = args[2]

			-- 変数 --

			-- 関数 --
			print(arg1)
			print(arg2)
		end,
	})
	
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
			"All", "Everybody", "Everyone", "Others", "Friends",
			"Nonfriends", "Dead", "NotAlive", "Alive", "Me", "Baconhairs",
			"Bacons", "Guests", "Random", "Dead", "Team-", "Group-",
			"Radius-",
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
	
	main.Visible = false
	
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

return CommandBar
