--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88    @uniquadev
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER 
]=]

-- Instances: 30 | Scripts: 1 | Modules: 1 | Tags: 0
local G2L = {};

local RunService = game:GetService("RunService")

-- StarterGui.PianoPlayer
G2L["1"] = Instance.new("ScreenGui", RunService:IsStudio() and game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui") or game:GetService("CoreGui"));
G2L["1"]["IgnoreGuiInset"] = true;
G2L["1"]["ScreenInsets"] = Enum.ScreenInsets.DeviceSafeInsets;
G2L["1"]["Name"] = [[PianoPlayer]];
G2L["1"]["ResetOnSpawn"] = false;


-- StarterGui.PianoPlayer.Client
G2L["2"] = Instance.new("LocalScript", G2L["1"]);
G2L["2"]["Name"] = [[Client]];


-- StarterGui.PianoPlayer.Client.MIDIPlayer
G2L["3"] = Instance.new("ModuleScript", G2L["2"]);
G2L["3"]["Name"] = [[MIDIPlayer]];


-- StarterGui.PianoPlayer.Client.Beep
G2L["4"] = Instance.new("Sound", G2L["2"]);
G2L["4"]["Volume"] = 3;
G2L["4"]["Name"] = [[Beep]];
G2L["4"]["SoundId"] = [[rbxassetid://100927904163801]];


-- StarterGui.PianoPlayer.Main
G2L["5"] = Instance.new("Frame", G2L["1"]);
G2L["5"]["BorderSizePixel"] = 0;
G2L["5"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 26);
G2L["5"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["5"]["Size"] = UDim2.new(0, 350, 0, 350);
G2L["5"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5"]["Name"] = [[Main]];


-- StarterGui.PianoPlayer.Main.UICorner
G2L["6"] = Instance.new("UICorner", G2L["5"]);
G2L["6"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.PianoPlayer.Main.UIDragDetector
G2L["7"] = Instance.new("UIDragDetector", G2L["5"]);



-- StarterGui.PianoPlayer.Main.Top
G2L["8"] = Instance.new("Frame", G2L["5"]);
G2L["8"]["BorderSizePixel"] = 0;
G2L["8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8"]["Size"] = UDim2.new(1, 0, 0, 50);
G2L["8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8"]["Name"] = [[Top]];
G2L["8"]["BackgroundTransparency"] = 1;


-- StarterGui.PianoPlayer.Main.Top.Close
G2L["9"] = Instance.new("TextButton", G2L["8"]);
G2L["9"]["TextWrapped"] = true;
G2L["9"]["BorderSizePixel"] = 0;
G2L["9"]["TextSize"] = 25;
G2L["9"]["TextScaled"] = true;
G2L["9"]["TextColor3"] = Color3.fromRGB(151, 151, 151);
G2L["9"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
G2L["9"]["FontFace"] = Font.new([[rbxasset://fonts/families/Arial.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["9"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["9"]["Size"] = UDim2.new(0, 30, 0, 30);
G2L["9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9"]["Text"] = [[X]];
G2L["9"]["Name"] = [[Close]];
G2L["9"]["Position"] = UDim2.new(1, 0, 0.5, 0);


-- StarterGui.PianoPlayer.Main.Top.Close.UICorner
G2L["a"] = Instance.new("UICorner", G2L["9"]);
G2L["a"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.PianoPlayer.Main.Top.Close.UIStroke
G2L["b"] = Instance.new("UIStroke", G2L["9"]);
G2L["b"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["b"]["Color"] = Color3.fromRGB(76, 76, 76);


-- StarterGui.PianoPlayer.Main.Top.Close.UIPadding
G2L["c"] = Instance.new("UIPadding", G2L["9"]);
G2L["c"]["PaddingTop"] = UDim.new(0, 5);
G2L["c"]["PaddingRight"] = UDim.new(0, 5);
G2L["c"]["PaddingLeft"] = UDim.new(0, 5);
G2L["c"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.PianoPlayer.Main.Top.UIPadding
G2L["d"] = Instance.new("UIPadding", G2L["8"]);
G2L["d"]["PaddingTop"] = UDim.new(0, 15);
G2L["d"]["PaddingRight"] = UDim.new(0, 15);
G2L["d"]["PaddingLeft"] = UDim.new(0, 15);
G2L["d"]["PaddingBottom"] = UDim.new(0, 15);


-- StarterGui.PianoPlayer.Main.Top.TextLabel
G2L["e"] = Instance.new("TextLabel", G2L["8"]);
G2L["e"]["BorderSizePixel"] = 0;
G2L["e"]["TextSize"] = 16;
G2L["e"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e"]["BackgroundTransparency"] = 1;
G2L["e"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e"]["Text"] = [[MIDI Player]];


-- StarterGui.PianoPlayer.Main.Content
G2L["f"] = Instance.new("Frame", G2L["5"]);
G2L["f"]["BorderSizePixel"] = 0;
G2L["f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f"]["AnchorPoint"] = Vector2.new(0, 1);
G2L["f"]["Size"] = UDim2.new(1, 0, 1, -50);
G2L["f"]["Position"] = UDim2.new(0, 0, 1, 0);
G2L["f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f"]["Name"] = [[Content]];
G2L["f"]["BackgroundTransparency"] = 1;


-- StarterGui.PianoPlayer.Main.Content.UIPadding
G2L["10"] = Instance.new("UIPadding", G2L["f"]);
G2L["10"]["PaddingTop"] = UDim.new(0, 15);
G2L["10"]["PaddingRight"] = UDim.new(0, 15);
G2L["10"]["PaddingLeft"] = UDim.new(0, 15);
G2L["10"]["PaddingBottom"] = UDim.new(0, 15);


-- StarterGui.PianoPlayer.Main.Content.JSON
G2L["11"] = Instance.new("TextBox", G2L["f"]);
G2L["11"]["Name"] = [[JSON]];
G2L["11"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["11"]["PlaceholderColor3"] = Color3.fromRGB(151, 151, 151);
G2L["11"]["BorderSizePixel"] = 0;
G2L["11"]["TextSize"] = 14;
G2L["11"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["11"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["11"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
G2L["11"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["11"]["MultiLine"] = true;
G2L["11"]["ClearTextOnFocus"] = false;
G2L["11"]["ClipsDescendants"] = true;
G2L["11"]["PlaceholderText"] = [[Put your MIDI JSON code here!]];
G2L["11"]["Size"] = UDim2.new(1, 0, 1, -50);
G2L["11"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["11"]["Text"] = [[]];


-- StarterGui.PianoPlayer.Main.Content.JSON.UICorner
G2L["12"] = Instance.new("UICorner", G2L["11"]);
G2L["12"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.PianoPlayer.Main.Content.JSON.UIPadding
G2L["13"] = Instance.new("UIPadding", G2L["11"]);
G2L["13"]["PaddingTop"] = UDim.new(0, 15);
G2L["13"]["PaddingRight"] = UDim.new(0, 15);
G2L["13"]["PaddingLeft"] = UDim.new(0, 15);
G2L["13"]["PaddingBottom"] = UDim.new(0, 15);


-- StarterGui.PianoPlayer.Main.Content.JSON.UIStroke
G2L["14"] = Instance.new("UIStroke", G2L["11"]);
G2L["14"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["14"]["Color"] = Color3.fromRGB(76, 76, 76);


-- StarterGui.PianoPlayer.Main.Content.Buttons
G2L["15"] = Instance.new("Frame", G2L["f"]);
G2L["15"]["BorderSizePixel"] = 0;
G2L["15"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["15"]["AnchorPoint"] = Vector2.new(0, 1);
G2L["15"]["Size"] = UDim2.new(1, 0, 0, 40);
G2L["15"]["Position"] = UDim2.new(0, 0, 1, 0);
G2L["15"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["15"]["Name"] = [[Buttons]];
G2L["15"]["BackgroundTransparency"] = 1;


-- StarterGui.PianoPlayer.Main.Content.Buttons.Play
G2L["16"] = Instance.new("TextButton", G2L["15"]);
G2L["16"]["BorderSizePixel"] = 0;
G2L["16"]["TextSize"] = 18;
G2L["16"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["16"]["BackgroundColor3"] = Color3.fromRGB(137, 255, 104);
G2L["16"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["16"]["Size"] = UDim2.new(0, 100, 1, 0);
G2L["16"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["16"]["Text"] = [[Play]];
G2L["16"]["Name"] = [[Play]];


-- StarterGui.PianoPlayer.Main.Content.Buttons.Play.UICorner
G2L["17"] = Instance.new("UICorner", G2L["16"]);
G2L["17"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.PianoPlayer.Main.Content.Buttons.Stop
G2L["18"] = Instance.new("TextButton", G2L["15"]);
G2L["18"]["BorderSizePixel"] = 0;
G2L["18"]["TextSize"] = 18;
G2L["18"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["18"]["BackgroundColor3"] = Color3.fromRGB(255, 106, 56);
G2L["18"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["18"]["Size"] = UDim2.new(0, 100, 1, 0);
G2L["18"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["18"]["Text"] = [[Stop]];
G2L["18"]["Name"] = [[Stop]];
G2L["18"]["Position"] = UDim2.new(0, 110, 0, 0);


-- StarterGui.PianoPlayer.Main.Content.Buttons.Stop.UICorner
G2L["19"] = Instance.new("UICorner", G2L["18"]);
G2L["19"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.PianoPlayer.Main.Content.Buttons.Volume
G2L["1a"] = Instance.new("TextBox", G2L["15"]);
G2L["1a"]["Name"] = [[Volume]];
G2L["1a"]["PlaceholderColor3"] = Color3.fromRGB(151, 151, 151);
G2L["1a"]["BorderSizePixel"] = 0;
G2L["1a"]["TextSize"] = 14;
G2L["1a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
G2L["1a"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["1a"]["PlaceholderText"] = [[Volume Here]];
G2L["1a"]["Size"] = UDim2.new(0, 100, 1, 0);
G2L["1a"]["Position"] = UDim2.new(0, 220, 0, 0);
G2L["1a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a"]["Text"] = [[]];


-- StarterGui.PianoPlayer.Main.Content.Buttons.Volume.UICorner
G2L["1b"] = Instance.new("UICorner", G2L["1a"]);
G2L["1b"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.PianoPlayer.Main.Content.Buttons.Volume.UIPadding
G2L["1c"] = Instance.new("UIPadding", G2L["1a"]);
G2L["1c"]["PaddingTop"] = UDim.new(0, 15);
G2L["1c"]["PaddingRight"] = UDim.new(0, 15);
G2L["1c"]["PaddingLeft"] = UDim.new(0, 15);
G2L["1c"]["PaddingBottom"] = UDim.new(0, 15);


-- StarterGui.PianoPlayer.Main.Content.Buttons.Volume.UIStroke
G2L["1d"] = Instance.new("UIStroke", G2L["1a"]);
G2L["1d"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["1d"]["Color"] = Color3.fromRGB(76, 76, 76);


-- StarterGui.PianoPlayer.Main.DropShadow
G2L["1e"] = Instance.new("ImageLabel", G2L["5"]);
G2L["1e"]["ZIndex"] = 0;
G2L["1e"]["BorderSizePixel"] = 0;
G2L["1e"]["SliceCenter"] = Rect.new(49, 49, 450, 450);
G2L["1e"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["1e"]["ImageTransparency"] = 0.5;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["1e"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1e"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["1e"]["Image"] = [[rbxassetid://6014261993]];
G2L["1e"]["Size"] = UDim2.new(1, 47, 1, 47);
G2L["1e"]["BackgroundTransparency"] = 1;
G2L["1e"]["Name"] = [[DropShadow]];
G2L["1e"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- Require G2L wrapper
local G2L_REQUIRE = require;
local G2L_MODULES = {};
local function require(Module:ModuleScript)
    local ModuleState = G2L_MODULES[Module];
    if ModuleState then
        if not ModuleState.Required then
            ModuleState.Required = true;
            ModuleState.Value = ModuleState.Closure();
        end
        return ModuleState.Value;
    end;
    return G2L_REQUIRE(Module);
end

G2L_MODULES[G2L["3"]] = {
Closure = function()
    local script = G2L["3"];local HttpService = game:GetService("HttpService")
local SoundService = game:GetService("SoundService")

local MIDIPlayer = {}
local baseFrequency = 440

local activeBeeps = {}
local lastBaseProps = {}

local currentSession = 0

local currentBaseSound = nil

local isPlaying = false

local function midiToPitch(midiNumber)
	local freq = 440 * (2 ^ ((midiNumber - 69) / 12))
	return freq / baseFrequency
end
local function updateLastProps(newSound)
	lastBaseProps.Sound = newSound.Volume
end

function MIDIPlayer.PlaySong(json, baseSound, onBeepPlayed)
	if not baseSound or not baseSound:IsA("Sound") then
		baseSound = Instance.new("Sound")
		baseSound.Volume = lastBaseProps.Volume or 1
		baseSound.SoundId = "rbxassetid://100927904163801"
	end

	MIDIPlayer.StopSong()

	local data = HttpService:JSONDecode(json)
	local track = data.tracks[1]
	local notes = track.notes

	isPlaying = true
	currentSession += 1
	
	local thisSession = currentSession

	task.spawn(function()
		local startTime = os.clock()
		currentBaseSound = baseSound
		updateLastProps(currentBaseSound)

		for _, note in ipairs(notes) do
			if not isPlaying or thisSession ~= currentSession then break end
			task.spawn(function()
				local waitTime = note.time - (os.clock() - startTime)
				if waitTime > 0 then task.wait(waitTime) end

				if not isPlaying or thisSession ~= currentSession then return end

				local beep = currentBaseSound:Clone()
				beep.Parent = SoundService
				beep.PlaybackSpeed = midiToPitch(note.midi) + (baseSound.PlaybackSpeed - 1)
				beep.Volume = math.clamp(note.velocity or baseSound.Volume / 5, 0, baseSound.Volume / 5)
				beep.Name = note.name or beep.Name
				beep:Play()
				
				if type(onBeepPlayed) == "function" then
					onBeepPlayed(beep)
				end

				table.insert(activeBeeps, beep)
				game:GetService("Debris"):AddItem(beep, (beep.TimeLength or note.duration) + 0.1)
			end)
		end
	end)
end

function MIDIPlayer.StopSong()
	if not isPlaying then return end
	
	isPlaying = false
	currentSession += 1
	
	if currentBaseSound then
		currentBaseSound:Destroy()
		currentBaseSound = nil
	end

	for i, beep in ipairs(activeBeeps) do
		if beep and beep:IsA("Sound") then
			beep:Stop()
			beep:Destroy()
		end
	end

	activeBeeps = {}
end

function MIDIPlayer.SetVolume(volume)
	if currentBaseSound then
		currentBaseSound.Volume = tonumber(volume or 1)
		updateLastProps(currentBaseSound)
	end
end

return MIDIPlayer

end;
};
-- StarterGui.PianoPlayer.Client
local function C_2()
local script = G2L["2"];
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	
	local beepSound = script:WaitForChild("Beep") -- the sound to clone
	beepSound.Looped = false
	
	local MIDIPlayer = require(script.MIDIPlayer)
	
	local gui = script.Parent
	local main = gui:WaitForChild("Main")
	local content = main:WaitForChild("Content")
	local json = content.JSON
	local buttons = content.Buttons
	
	local function soundRemote()
		local remotes = ReplicatedStorage:FindFirstChild("Remotes")
		if remotes then
			local playAudio = remotes:FindFirstChild("PlayAudio")
				or remotes:FindFirstChild("repAudio")
			
			if playAudio then
				return playAudio
			end
		end
	end
	
	buttons.Play.Activated:Connect(function()
		MIDIPlayer.PlaySong(json.Text, beepSound, function(beep)
			local audioRemote = soundRemote()
			
			if audioRemote then
				if audioRemote.Name == "PlayAudio" then
					audioRemote:FireServer({
						Name = "SERVER'S_SOUND",
						Origin = game:GetService("SoundService"),
						SoundId = beep.SoundId,
						Volume = beep.Volume,
						Pitch = beep.PlaybackSpeed,
						MaxDistance = 10000
					}, {
						Enabled = false,
					})
				elseif audioRemote.Name == "repAudio" then
					local function removeRbxAssetId(str)
						return str:gsub("rbxassetid://", "")
					end
					
					audioRemote.repAudio:FireServer(game:GetService("SoundService"), {
						name = "SERVER'S_SOUND",
						soundId = removeRbxAssetId(beep.SoundId),
						volume = beep.Volume,
						pitch = beep.PlaybackSpeed,
						dist = {10, 10000}
					})
				end
			end
		end)
	end)
	buttons.Stop.Activated:Connect(function()
		MIDIPlayer.StopSong()
	end)
	buttons.Volume.FocusLost:Connect(function(enterPressed)
		if enterPressed then
			MIDIPlayer.SetVolume(buttons.Volume.Text)
		end
	end)
	main.Top.Close.Activated:Connect(function()
		gui:Destroy()
	end)
end;
task.spawn(C_2);

return G2L["1"], require;
