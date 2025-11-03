--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88    @uniquadev
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER 
]=]

-- Instances: 36 | Scripts: 1 | Modules: 2 | Tags: 0
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


-- StarterGui.PianoPlayer.Client.InteractiveMidi
G2L["3"] = Instance.new("ModuleScript", G2L["2"]);
G2L["3"]["Name"] = [[InteractiveMidi]];


-- StarterGui.PianoPlayer.Client.InteractiveMidi.ByteRealm
G2L["4"] = Instance.new("ModuleScript", G2L["3"]);
G2L["4"]["Name"] = [[ByteRealm]];


-- StarterGui.PianoPlayer.Main
G2L["5"] = Instance.new("Frame", G2L["1"]);
G2L["5"]["BorderSizePixel"] = 0;
G2L["5"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 26);
G2L["5"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["5"]["Size"] = UDim2.new(0, 525, 0, 350);
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
G2L["11"]["CursorPosition"] = -1;
G2L["11"]["Name"] = [[JSON]];
G2L["11"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["11"]["PlaceholderColor3"] = Color3.fromRGB(151, 151, 151);
G2L["11"]["BorderSizePixel"] = 0;
G2L["11"]["TextWrapped"] = true;
G2L["11"]["TextSize"] = 14;
G2L["11"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["11"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["11"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
G2L["11"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["11"]["MultiLine"] = true;
G2L["11"]["ClearTextOnFocus"] = false;
G2L["11"]["ClipsDescendants"] = true;
G2L["11"]["PlaceholderText"] = [[Put your MIDI JSON code here! Or put URL (URL RECOMMENDED)]];
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
G2L["16"]["Size"] = UDim2.new(0, 50, 1, 0);
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
G2L["18"]["Size"] = UDim2.new(0, 50, 1, 0);
G2L["18"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["18"]["Text"] = [[Stop]];
G2L["18"]["Name"] = [[Stop]];
G2L["18"]["Position"] = UDim2.new(0, 60, 0, 0);


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
G2L["1a"]["PlaceholderText"] = [[Vol]];
G2L["1a"]["Size"] = UDim2.new(0, 50, 1, 0);
G2L["1a"]["Position"] = UDim2.new(0, 180, 0, 0);
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


-- StarterGui.PianoPlayer.Main.Content.Buttons.Instrument
G2L["1e"] = Instance.new("TextButton", G2L["15"]);
G2L["1e"]["BorderSizePixel"] = 0;
G2L["1e"]["TextSize"] = 18;
G2L["1e"]["TextColor3"] = Color3.fromRGB(236, 236, 236);
G2L["1e"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
G2L["1e"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["1e"]["Size"] = UDim2.new(0, 165, 1, 0);
G2L["1e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1e"]["Text"] = [[Acoustic Grand Piano]];
G2L["1e"]["Name"] = [[Instrument]];
G2L["1e"]["Position"] = UDim2.new(0, 330, 0, 0);


-- StarterGui.PianoPlayer.Main.Content.Buttons.Instrument.UICorner
G2L["1f"] = Instance.new("UICorner", G2L["1e"]);
G2L["1f"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.PianoPlayer.Main.Content.Buttons.Instrument.UIStroke
G2L["20"] = Instance.new("UIStroke", G2L["1e"]);
G2L["20"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["20"]["Color"] = Color3.fromRGB(76, 76, 76);


-- StarterGui.PianoPlayer.Main.Content.Buttons.Loop
G2L["21"] = Instance.new("TextButton", G2L["15"]);
G2L["21"]["BorderSizePixel"] = 0;
G2L["21"]["TextSize"] = 18;
G2L["21"]["TextColor3"] = Color3.fromRGB(236, 236, 236);
G2L["21"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
G2L["21"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["21"]["Size"] = UDim2.new(0, 50, 1, 0);
G2L["21"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["21"]["Text"] = [[Loop]];
G2L["21"]["Name"] = [[Loop]];
G2L["21"]["Position"] = UDim2.new(0, 120, 0, 0);


-- StarterGui.PianoPlayer.Main.Content.Buttons.Loop.UICorner
G2L["22"] = Instance.new("UICorner", G2L["21"]);
G2L["22"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.PianoPlayer.Main.Content.Buttons.Loop.UIStroke
G2L["23"] = Instance.new("UIStroke", G2L["21"]);
G2L["23"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["23"]["Color"] = Color3.fromRGB(76, 76, 76);


-- StarterGui.PianoPlayer.Main.DropShadow
G2L["24"] = Instance.new("ImageLabel", G2L["5"]);
G2L["24"]["ZIndex"] = 0;
G2L["24"]["BorderSizePixel"] = 0;
G2L["24"]["SliceCenter"] = Rect.new(49, 49, 450, 450);
G2L["24"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["24"]["ImageTransparency"] = 0.5;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["24"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["24"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["24"]["Image"] = [[rbxassetid://6014261993]];
G2L["24"]["Size"] = UDim2.new(1, 47, 1, 47);
G2L["24"]["BackgroundTransparency"] = 1;
G2L["24"]["Name"] = [[DropShadow]];
G2L["24"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


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

local ByteRealm = require(script.ByteRealm)

local secondsPerBeat = 0

local stringByte = string.byte
local stringSub = string.sub
local stringFind = string.find
local stringSplit = string.split

local pow = math.pow
local floor = math.floor

local tableInsert = table.insert
local tableClone = table.clone
local tablePack = table.pack

local InteractiveMidi = {}

local References = {}
local MidiClasses = {}
local JSONTracks = {}

local InstructionEventData = {
	SystemExclusive = { "Text" },
	TuneRequest = {},
	SongSelect = {},
	SongPosition = { "LSB", "MSB" },
	SequencerSpecific = { "Text" },
	
	KeySignature = { "Signature", "RelativeKey" },
	TimeSignature = { "Numerator", "Denominator", "ClockInMetronome", "Notated32ndNotesInQuarter" },
	
	SMPTEOffset = { "Hours", "Minutes", "Seconds", "Frames", "FractionalFrames" },
	SetTempo = { "Tempo" },
	
	SetSequenceNumber = { "SequenceNumber" },
	EndOfTrack = {},
	
	ChannelPrefix = { "Channel" },
	
	TextEvent = { "Text" },
	CopyrightText = { "Text" },
	TrackName = { "Text" },
	InstrumentName = { "Text" },
	Lyric = { "Text" },
	Marker = { "Text" },
	CuePoint = { "Text" },
	
	NoteOn = { "Channel", "NoteNumber", "Velocity" },
	NoteOff = { "Channel", "NoteNumber", "Velocity" },
	
	AfterTouchPoly = { "NoteNumber", "Touch" },
	ProgramChange = { "Channel", "PatchNumber" },
	ControlChange = { "ControllerNumber", "ControlChange" },
	AfterTouchChannel = { "Pressure" },
	PitchWheel = { "PitchBendLSB", "PitchBendMSB" },
}

local InstructionEventBytes = {
	-- Meta-Events --
	["F7"] = { "SystemExclusive", { "LENGTH" } },
	["F6"] = { "TuneRequest", {} },
	["F3"] = { "SongSelect", {} },
	["F2"] = { "SongPosition", { 2, 2 } },
	["F0"] = { "SystemExclusive", { "LENGTH" } },
	
	["7F"] = { "SequencerSpecific", { "LENGTH" } },
	
	["59"] = { "KeySignature", { 2, 2 } },
	["58"] = { "TimeSignature", { 2, 2, 2, 2 } },
	
	["54"] = { "SMPTEOffset", { 2, 2, 2, 2, 2 } },
	["51"] = { "SetTempo", { 6 } },
	
	["00"] = { "SetSequenceNumber", { 2 } },
	["2F"] = { "EndOfTrack", {} },
	
	["20"] = { "ChannelPrefix", { 2 } },
	["21"] = { "CopyrightText", { "LENGTH" } },
	
	-- Text Events --
	["01"] = { "TextEvent", { "LENGTH" } },
	["02"] = { "CopyrightText", { "LENGTH" } },
	["03"] = { "TrackName", { "LENGTH" } },
	["04"] = { "InstrumentName", { "LENGTH" } },
	["05"] = { "Lyric", { "LENGTH" } },
	["06"] = { "Marker", { "LENGTH" } },
	["07"] = { "CuePoint", { "LENGTH" } },
	
	-- Reserved/Unassigned Text Events --
	["08"] = { "TextEvent", { "LENGTH" } },
	["09"] = { "TextEvent", { "LENGTH" } },
	["0A"] = { "TextEvent", { "LENGTH" } },
	["0B"] = { "TextEvent", { "LENGTH" } },
	["0C"] = { "TextEvent", { "LENGTH" } },
	["0D"] = { "TextEvent", { "LENGTH" } },
	["0E"] = { "TextEvent", { "LENGTH" } },
	["0F"] = { "TextEvent", { "LENGTH" } },
	
	-- Midi-Events --
	["9"] = { "NoteOn", { 2, 2 } },
	["8"] = { "NoteOff", { 2, 2 } },
	
	["A"] = { "AfterTouchPoly", { 2, 2 } },
	["B"] = { "ControlChange", { 2, 2 } },
	["C"] = { "ProgramChange", { 2 } },
	["D"] = { "AfterTouchChannel", { 2 } },
	["E"] = { "PitchWheel", { 2, 2 } }
}

for _, eventData in next, InstructionEventData do
	tableInsert(eventData, 1, "DeltaTime")
	tableInsert(eventData, 1, "TrackNumber")
end

InteractiveMidi.References = References

local insert = function(t, ...)
	tableInsert(t, ...)
	return t
end

local pack = function(...)
	local packed = tablePack(...)
	packed.n = nil
	return packed
end

local assignProperty = function(table1, table2)
	local newPack = {}
	for i, index in next, table1 do
		newPack[index] = table2[i]
	end; return newPack
end

local FormatEvent = function(eventType: string, instruction: {}, trackNumber: number)
	return InstructionEventData[eventType] and assignProperty(InstructionEventData[eventType], insert(tableClone(instruction), 1, trackNumber)) or instruction
end


References.FormatEvent = FormatEvent

References.Classes = MidiClasses
References.InstructionEventData = InstructionEventData
References.InstructionEventBytes = InstructionEventBytes

References.TempoTimeConstant = function(timePosition, newTimePosition)
	return newTimePosition == timePosition and 1 or timePosition/newTimePosition
end

References.TempoToBeatsPerMinute = function(tempo)
	return 60000000/tempo
end

References.BeatsPerMinuteToTempo = References.TempoToBeatsPerMinute

References.TicksToSeconds = function(ticks, tempo, pulsesPerQuarter)
	return (ticks * tempo)/(pulsesPerQuarter * 1000000)
end

References.SecondsToTicks = function(seconds, tempo, pulsesPerQuarter)
	return (seconds * (pulsesPerQuarter * 1000000))/tempo
end

References.NoteNumberToPitch = function(noteNumber: number, offset: number)
	local freq = 440 * (2 ^ (((noteNumber - 69) + offset) / 12))
	return freq / 440
end

References.NoteNumberToNoteName = function(noteNumber)
	local notes = {"C", "C#", "D", "D#", "E", "F", "F#", "G", "G#", "A", "A#", "B"}
	local octave = floor((noteNumber - 12) / 12)
	local noteIndex = (noteNumber - 12) % 12 + 1
	local noteName = notes[noteIndex]
	return noteName, octave
end

References.FormatJSON = function(json)
	local function capitalizeFirstLetter(str)
		return (str:gsub("^%l", string.upper))
	end

	local function formatJSONKeys(data)
		local formatted = {}

		for key, value in pairs(data) do
			local newKey = key
			
			if type(newKey) == "string" then
				newKey = capitalizeFirstLetter(newKey)
				if key:lower() == "midi" then
					newKey = "NoteNumber"
				end
			end

			if typeof(value) == "table" then
				formatted[newKey] = formatJSONKeys(value)
			else
				formatted[newKey] = value
			end
			
		end

		return formatted
	end
	
	return formatJSONKeys(json)
end

MidiClasses.Player = function()
	local Player = {
		IsPlayer = true,
		IsPlaying = false,
		
		TimePosition = 0,
		LastTimePosition = 0,
		
		TempoTimePosition = 0,
		TempoTimeConstant = 1,
		
		CurrentSession = 0,
		
		Loop = false,
		TimeMultiplier = 1,
		
		TimeLength = 0,
		Tempo = References.BeatsPerMinuteToTempo(120),
		IsTempoSet = false,
		
		Memory = {},
		Events = {},
		EndOfTracks = {},
		InstructionProgress = {},
		
		Loaded = nil
	}
	
	function Player:GetSongLength()
		if #JSONTracks > 0 then
			return Player
		end
		
		local MidiClass = Player.Loaded
		if MidiClass then
			if MidiClass.ParseType == "Summation" then
				local currentTempo = Player.Tempo
				local longestTime = 0
				for trackNumber, trackInstructions in next, MidiClass.Instructions do
					local lastDeltaTime = 0
					local totalTime = 0
					for instructionIndex, instruction in next, trackInstructions do
						local deltaTime = instruction[2] - lastDeltaTime
						totalTime += (deltaTime * currentTempo)/(MidiClass.Header.PulsesPerQuarter * 1000000)
						lastDeltaTime = instruction[2]
						if instruction[1] == "SetTempo" then
							currentTempo = instruction[3]
						end
					end; if totalTime > longestTime then
						longestTime = totalTime
					end
				end
				
				Player.TimeLength = longestTime
			end
		end
		
		return Player
	end
	
	function Player:Load(MidiClass)
		if #JSONTracks > 0 or not MidiClass then
			Player.TimeLength = 0
			return Player
		end
		if MidiClass.IsParser then
			Player.Loaded = MidiClass
		end
		
		Player:GetSongLength()
		
		return Player
	end
	
	function Player:FireEvent(EventName, ...)
		if Player.Events[EventName] then
			task.spawn(Player.Events[EventName], ...)
		end
		
		return Player
	end
	
	function Player:SetTempo(tempo)
		if not Player.IsTempoSet then Player.Tempo = tempo end
		if #JSONTracks > 0 then
			return Player
		end
		local MidiClass = Player.Loaded
		local timeInSeconds = Player.TimePosition
		local deltaTime = References.SecondsToTicks(timeInSeconds, Player.Tempo, MidiClass.Header.PulsesPerQuarter)
		local newTimePosition = (deltaTime * tempo)/(MidiClass.Header.PulsesPerQuarter * 1000000) 
		Player.TempoTimeConstant *= newTimePosition == timeInSeconds and 1 or timeInSeconds/newTimePosition
		Player.Tempo = tempo
		local timeDifference = (timeInSeconds * Player.TempoTimeConstant^-1) - timeInSeconds
		Player.TempoTimePosition = timeDifference
		return Player
	end
	
	function Player:HeartbeatStep(MidiClass, heartBeatDeltaTime)
		if #JSONTracks > 0 then
			return
		end
		
		Player.LastTimePosition = Player.TimePosition
		Player.TimePosition += heartBeatDeltaTime * Player.TimeMultiplier

		if #Player.EndOfTracks == #MidiClass.Instructions or Player.TimePosition >= Player.TimeLength then
			if Player.Loop then
				Player:FireEvent("Looping")
				Player:SetTimePosition(0)
				Player:Play()
				return
			else
				return Player:Stop()
			end
		end
		
		for trackNumber, trackInstructions in next, MidiClass.Instructions do
			if not Player.InstructionProgress[trackNumber] then Player.InstructionProgress[trackNumber] = 0 end
			for instructionIndex, instruction in next, trackInstructions do
				local deltaTime = instruction[2]
				local timeInSeconds = ((deltaTime * Player.Tempo)/(MidiClass.Header.PulsesPerQuarter * 1000000))
				if Player.TimePosition + Player.TempoTimePosition >= timeInSeconds and Player.LastTimePosition + Player.TempoTimePosition <= timeInSeconds then
					if instructionIndex < Player.InstructionProgress[trackNumber] then
						Player:FireEvent("Error", {
							TrackNumber = trackNumber,
							Message = `Instruction #{instructionIndex} jumped backwards.`,
							Code = 4
						})
					elseif instructionIndex > Player.InstructionProgress[trackNumber] + 1 then
						Player:FireEvent("Error", {
							TrackNumber = trackNumber,
							Message = `Instruction #{instructionIndex} jumped forwards.`,
							Code = 5
						})
					end
					
					Player.InstructionProgress[trackNumber] = instructionIndex
					if instruction[1] == "SetTempo" then
						Player:SetTempo(instruction[3])
						if not Player.IsTempoSet then
							Player.IsTempoSet = instruction[3]
						end
					elseif instruction[1] == "EndOfTrack" then
						table.insert(Player.EndOfTracks, trackNumber)
					end
					
					local formattedData = FormatEvent(instruction[1], pack(unpack(instruction, 2)), trackNumber)
					formattedData.Instruction = instruction[1]
					
					if formattedData and formattedData.Velocity then
						if formattedData.Velocity > 0 then
							Player:FireEvent(instruction[1], formattedData)
							Player:FireEvent("OnInstruction", formattedData)
						end
					end
				end
			end
		end
		
		Player:FireEvent("Stepped")
		
		return Player
	end
	
	function Player:SetTimePosition(timePosition: number)
		Player.TimePosition = timePosition
		Player.LastTimePosition = timePosition
	end
	
	function Player:Stop()
		if Player.Heartbeat then
			Player:FireEvent("Stopped")
		end
		
		Player.IsPlaying = false
		Player:Pause()
		table.clear(Player.EndOfTracks)
		table.clear(Player.InstructionProgress)
		Player.IsTempoSet = false
		Player.Tempo = References.BeatsPerMinuteToTempo(120)
		Player.TimePosition = 0
		Player.LastTimePosition = 0
		Player.TempoTimePosition = 0
		Player.TempoTimeConstant = 1
	end
	
	function Player:Pause()
		Player.IsPlaying = false
		if Player.Heartbeat then
			Player:FireEvent("Paused")
			Player.Heartbeat:Disconnect()
			Player.Heartbeat = nil
		end
	end
	
	function Player:Play()
		local MidiClass = Player.Loaded
		
		if (#JSONTracks <= 0) and MidiClass then
			if MidiClass.ParseType == "Default" then

			elseif MidiClass.ParseType == "Summation" then
				Player.IsPlaying = true
				if Player.Heartbeat then
					Player.Heartbeat:Disconnect()
				end

				Player.Heartbeat = game:GetService("RunService").Heartbeat:Connect(function(deltaTime)
					Player:HeartbeatStep(MidiClass, deltaTime)
				end)
			end
		else
			Player:Stop()
			
			Player.IsPlaying = true
			
			task.spawn(function()
				Player.CurrentSession += 1
				local newSession = Player.CurrentSession
				
				while Player.IsPlaying do
					local sessionStart = os.clock()
					
					local totalDuration = 0
					for _, track in ipairs(JSONTracks) do
						if #track.Notes > 0 then
							local lastNote = track.Notes[#track.Notes]
							local trackDuration = (lastNote.Time * secondsPerBeat)
							if trackDuration > totalDuration then
								totalDuration = trackDuration
							end
						end
					end
					
					for _, track in ipairs(JSONTracks) do
						task.spawn(function()
							local startTime = os.clock()
							for _, note in ipairs(track.Notes) do
								if not Player.IsPlaying then break end

								note.Time = note.Time * secondsPerBeat

								local waitTime = (note.Time) - (os.clock() - startTime)
								if waitTime > 0 then task.wait(waitTime) end
								if not Player.IsPlaying then return end
								if Player.CurrentSession ~= newSession then return end
								if type(note) ~= "table" then return end

								if note and note.Velocity then
									if note.Velocity > 0 then
										Player:FireEvent("NoteOn", note)
										Player:FireEvent("OnInstruction", note)
									end
								end

								Player:FireEvent("Stepped")
							end
						end)
					end
					
					while os.clock() - sessionStart < totalDuration do
						if not Player.IsPlaying or Player.CurrentSession ~= newSession then break end
						task.wait()
					end
					
					if not Player.Loop then
						break
					end
				end
				
			end)
			--[[
			task.spawn(function()
				local startTime = os.clock()
				
				Player.CurrentSession += 1
				local newSession = Player.CurrentSession
				
				for _, note in ipairs(JSONTracks) do
					if not Player.IsPlaying then break end

					task.spawn(function()
						note.Time = note.Time * secondsPerBeat

						local waitTime = (note.Time) - (os.clock() - startTime)
						if waitTime > 0 then task.wait(waitTime) end
						if not Player.IsPlaying then return end
						if Player.CurrentSession ~= newSession then return end
						if type(note) ~= "table" then return end
						
						if note and note.Velocity then
							if note.Velocity > 0 then
								Player:FireEvent("NoteOn", note)
								Player:FireEvent("OnInstruction", note)
							end
						end
						
						Player:FireEvent("Stepped")
					end)
				end
			end)
			]]
		end
		
		return Player
	end
	
	return Player
end

MidiClasses.Parser = function()
	local Parser = {
		IsParser = true,
		Tracks = {},
		Instructions = {},
		Events = {}
	} 

	function Parser:Load(Midi)
		Parser = setmetatable(Parser, { __index = Midi })
		return Parser
	end

	function Parser:Parse(ParseType: string)
		if #JSONTracks > 0 then
			return
		end
		
		local Hex = Parser.Raw.Hex
		
		Parser.ParseType = ParseType or "Default"

		local previousTrackEnd = 0
		for trackNumber = 1, Parser.Header.NumberOfTracks do
			_, previousTrackEnd = stringFind(Hex, "4D54726B", previousTrackEnd)
			if previousTrackEnd then
				insert(Parser.Tracks, { previousTrackEnd + 1, tonumber(stringSub(Hex, previousTrackEnd + 1, previousTrackEnd + 8), 16), 8, {} }) -- { TrackStart, TrackLength, Pointer, Memory }
			else
				error(`Number of Tracks did not match decimal of Bytes on TrackData, ended at Track #{trackNumber}`)
			end
		end
		
		local function FireEvent(EventName: string, instruction)
			if Parser.Events[EventName] then
				if InstructionEventData[EventName] then
					task.spawn(Parser.Events[EventName], FormatEvent(EventName, instruction))
				else
					task.spawn(Parser.Events[EventName], instruction)
				end
			end
		end

		for trackNumber, trackData in next, Parser.Tracks do
			Parser.Instructions[trackNumber] = {}
			if ParseType == "Summation" then
				trackData.DeltaSummation = 0
			end
		end

		local EventCodes = {  }
		repeat
			local EndOfTrack = true
			for trackNumber, trackData in next, Parser.Tracks do
				if not EventCodes[trackNumber] then EventCodes[trackNumber] = -1 end
				if trackData[4].EndOfTrack or trackData[4].Exit then continue else EndOfTrack = false end				
				
				local pointer = trackData[1] + trackData[3]
				local _startingPointer = pointer
				
				-- Calculate DeltaTime and new Pointer position
				local deltaTime = 0
				while true do
					local statusByteDecimal = tonumber(stringSub(Hex, pointer, pointer + 1), 16)
					deltaTime += statusByteDecimal%128
					if statusByteDecimal < 127.5 then
						pointer += 2
						break
					end
					if pointer >= #Hex then
						deltaTime = 0
						pointer = _startingPointer
						FireEvent("Error", {
							TrackNumber = trackNumber,
							Message = `No end of Delta-Time found {stringSub(Hex, pointer, pointer + 1)}`,
							Pointer = pointer,
							SurroundingBytes = stringSub(Hex, pointer - 6, pointer + 3),
							Code = 3
						})
						break
					end
					
					pointer += 2
					deltaTime *= 128
				end

				local deltaTimeBeforeParse = deltaTime
				if ParseType == "Summation" then
					trackData.DeltaSummation += deltaTime

					deltaTime = trackData.DeltaSummation
				end

				local statusByte = stringSub(Hex, pointer, pointer + 1)
				local statusByteDecimal = tonumber(statusByte, 16)
				if not statusByteDecimal then trackData[4].EndOfTrack = true end
				
				pointer += 2

				if statusByte == "FF" then -- Meta-Event
					local eventType = stringSub(Hex, pointer, pointer + 1)
					pointer += 2

					local dataLength = tonumber(stringSub(Hex, pointer, pointer + 1), 16)

					local eventBind = InstructionEventBytes[eventType]
					if eventBind then
						local eventData = {}
						local eventDataPointer = 2
						for _, eventDataLength in next, eventBind[2] do
							if eventDataLength == "LENGTH" then
								eventDataLength = 2 + dataLength * 2
							end
							
							table.insert(eventData, tonumber(stringSub(Hex, pointer + eventDataPointer, pointer + (eventDataPointer + (eventDataLength - 1))), 16))
							eventDataPointer += eventDataLength
						end
						
						local instruction = { eventBind[1], deltaTime, unpack(eventData) }
						insert(Parser.Instructions[trackNumber], instruction)
						FireEvent(eventBind[1], instruction)
						
						if eventType == "2F" then -- EndOfTrack
							trackData[4].EndOfTrack = true
						end
						
						pointer += 2 + dataLength * 2
					else
						pointer -= 2
						FireEvent("Error", {
							TrackNumber = trackNumber,
							Message = `Unknown Meta-Event {eventType}`,
							Pointer = pointer,
							SurroundingBytes = stringSub(Hex, pointer - 6, pointer + 3),
							Code = 0
						})
						
						break
					end
				else -- Midi-Event & Other Events
					local eventCode = EventCodes[trackNumber]
					if not statusByteDecimal then statusByteDecimal = math.huge end
					if statusByteDecimal < 240 then -- Check if Midi-Event and Running Status
						if statusByteDecimal and statusByteDecimal % 256 > 127 then
							EventCodes[trackNumber] = statusByte
							eventCode = EventCodes[trackNumber]
						else -- Wants a Running Status
							pointer -= 2
							if EventCodes[trackNumber] == -1 then
								insert(Parser.Instructions[trackNumber], { "EndOfTrack", 0 })
								FireEvent("Error", {
									TrackNumber = trackNumber,
									Message = `Running Status not set {EventCodes[trackNumber]}`,
									Pointer = pointer,
									SurroundingBytes = stringSub(Hex, pointer - 6, pointer + 3),
									Code = 2
								})

								trackData[4].Exit = true
								break
							end
						end
					else -- Other Events
						eventCode = statusByte
					end
					
					local status, channel = unpack(stringSplit(eventCode, ""))
					
					local eventBind = InstructionEventBytes[status] or InstructionEventBytes[eventCode]
					if eventBind then
						local eventData = {}
						local eventDataPointer = 0
						
						local dataLength = tonumber(stringSub(Hex, pointer, pointer + 1), 16)
						for _, eventDataLength in next, eventBind[2] do
							if eventDataLength == "LENGTH" then

								eventDataLength = 2 + dataLength * 2
							end
							
							table.insert(eventData, tonumber(stringSub(Hex, pointer + eventDataPointer, pointer + (eventDataPointer + (eventDataLength - 1))), 16))
							eventDataPointer += eventDataLength
						end

						local instruction = { eventBind[1], deltaTime, tonumber(channel, 16), unpack(eventData) }
						insert(Parser.Instructions[trackNumber], instruction)
						FireEvent(eventBind[1], instruction)
						
						pointer += eventDataPointer
					else
						FireEvent("Error", {
							TrackNumber = trackNumber,
							Message = `Unknown Byte {eventCode}`,
							Pointer = pointer,
							SurroundingBytes = stringSub(Hex, pointer - 6, pointer + 3),
							Code = 1
						})
					end
				end

				trackData[3] = pointer - trackData[1]
			end
			if EndOfTrack then break end
		until false

		return Parser
	end

	return Parser
end

MidiClasses.Midi = function()
	return setmetatable({
		IsMidi = true,
		Raw = {},
		Header = {}
	}, { __index = InteractiveMidi })
end

MidiClasses.Binder = function()
	local Binder = {
		IsBinder = true,
		BindingOrder = {}
	}
	
	function Binder:Bind(...)
		Binder.BindingOrder = {...}
		return Binder
	end
	
	function Binder:Load(Buffer)
		if Binder.BindingOrder[1] then
			local Data = Binder.BindingOrder[1]:Load(Buffer)
			for _, MidiClass in next, Binder.BindingOrder, 1 do
				if MidiClass[1] then
					Data = MidiClass[1]:Load(Data)[MidiClass[2]](MidiClass[1], unpack(MidiClass, 3))
				else
					Data = MidiClass:Load(Data)
				end
			end
		end
		
		return Binder
	end
	
	return Binder
end

MidiClasses.Notator = function()
	local Notator = {
		Instruments = {
			["Acoustic Grand"] = { SoundId = "rbxassetid://100927904163801", Offset = -.05, VolumeShift = -.45 },
			["HighPiano"] = { SoundId = "rbxassetid://128383167749420", Offset = -.05 },
			["Harpsichord"] = { SoundId = "rbxassetid://1435304153", Offset = 10, VolumeShift = .5 },
			["Electric Piano"] = { SoundId = "rbxassetid://5924276201", Offset = .2, VolumeShift = -.2 },
			["Tuba"] = { SoundId = "rbxassetid://1846986991", Offset = 0 },
			["Recorder"] = { SoundId = "rbxassetid://75338648", Offset = -5},
			["Beep"] = { SoundId = "rbxassetid://98604686963796", Offset = 0 },
			["Guitar"] = { SoundId = "rbxassetid://96734055273715", Offset = 0 },
			["Latino Guitar"] = { SoundId = "rbxassetid://96734055273715", Offset = 10 },
			["High Guitar"] = { SoundId = "rbxassetid://96734055273715", Offset = 11 },
			["Gunshot"] = { SoundId = "rbxassetid://680140087", Offset = 0 },
		},
		
		AutoInstruments = {
			-- Piano
			[0] = {SoundId = "rbxassetid://100927904163801", Pitch = .95},
			[1] = "rbxassetid://105581334194673",
			[2] = {SoundId = "rbxassetid://128383167749420", Pitch = .95},
			
			-- Organs
			[19] = "rbxassetid://99666917",

			-- Guitars
			[24] = "rbxassetid://4007485270",
			[25] = "rbxassetid://102664970332431",
			
			-- Violin
			[40] = "rbxassetid://108364710554662",
		},
		
		Percussion = {
			
			-- Bass Drum
			[35] = "rbxassetid://31173820",
			[36] = "rbxassetid://31173820",
			
			-- Clap
			[39] = {SoundId = "rbxassetid://92280817204759", Pitch = .9},

			--Conga
			[62] = "rbxassetid://57802212",
			[63] = "rbxassetid://57802212",
			[64] = "rbxassetid://57802134",

			--Conga
			[60] = "rbxassetid://57802055",
			[61] = "rbxassetid://57801983",
			--Toms
			[45] = "rbxassetid://31173881",

			[47] = "rbxassetid://31173863",
			[48] = "rbxassetid://31173863",

			[50] = "rbxassetid://31173844",

			--Cowbell
			[56] = "rbxassetid://9120917609",


			--Cymbals
			[49] = "rbxassetid://18572234953", -- Crash
			[51] = "rbxassetid://82774576630991", -- Ride
			[57] = "rbxassetid://18572234953", -- Crash
			[59] = "rbxassetid://82774576630991", -- Ride
			
			-- HiHat
			[42] = "rbxassetid://136451722633397", --HiHat Closed
			[44] = "rbxassetid://4702649974", --HiHat
			[46] = "rbxassetid://4702649315", --HiHat
			[82] = "rbxassetid://4702649974",

			-- Cuica
			[78] = "rbxassetid://7430849680",
			[79] = "rbxassetid://7430849680",
			-- Snare
			[38] = "rbxassetid://31173799",
			[40] = "rbxassetid://31173799",

			--Triangle
			[80] = "rbxassetid://6732342375",
			[81] = "rbxassetid://6732342375",
			
			[74] = "rbxassetid://129351454315613",

			-- Wood Blocks
			[76] = "rbxassetid://9120917978",
			[77] = "rbxassetid://9120917605",
			
			-- Banjo
			[105] = "rbxassetid://102552141386469",
		},
		
		SecondPercussion = {
			[56] = { SoundId = "rbxassetid://102664970332431", VolumeShift = -.3}
		},
	}
	
	function Notator:AddInstruments(instruments: { { SoundId: string, Offset: number } })
		for instrumentName, soundData in next, instruments do
			Notator.Instruments[instrumentName] = soundData
		end; return Notator
	end
	
	function Notator:IsPercussion(noteNumber, channel)
		if channel == 10 then
			return Notator.SecondPercussion[noteNumber]
		elseif channel == 9 then
			return Notator.Percussion[noteNumber]
		end
	end
	
	function Notator:GetInstrument(noteNumber, instrument)
		--[[
		return Notator.AutoInstruments[noteNumber]
			or Notator.Instruments[instrument]
			or Notator.Instruments["Acoustic Grand"]
		]]
		return Notator.Instruments[instrument]
			or Notator.Instruments["Acoustic Grand"]
	end
	
	function Notator:GetInstruments()
		return Notator.Instruments
	end
	
	function Notator:CreateSound(
		instrument: string,
		settings: {
			NoteNumber: number,
			Velocity: number,
			Offset: number, -- Optional
			CheckForPercussion: boolean
		}
	)
		if settings.CheckForPercussion == nil then
			if settings.Channel then
				settings.CheckForPercussion = settings.Channel == 9
					or settings.Channel == 10
			end
		end
		
		local isPercussion = settings.CheckForPercussion and Notator:IsPercussion(settings.NoteNumber, settings.Channel)
		local instrumentSoundData = Notator:GetInstrument(settings.NoteNumber, instrument)
		
		local soundId = type(instrumentSoundData) == "string" and instrumentSoundData or instrumentSoundData.SoundId
		local pitch = References.NoteNumberToPitch(settings.NoteNumber, settings.Offset or instrumentSoundData.Offset or 0)
		local volume = .5 + (settings.Velocity/1000)
		
		local notePitch = 2 ^ ((settings.NoteNumber) / 60)
		
		if type(isPercussion) == "table" then
			soundId = isPercussion.SoundId
			pitch = isPercussion.Pitch or 1 * notePitch
			volume = volume + (isPercussion.VolumeShift or 0)
		elseif type(isPercussion) == "string" then
			soundId = isPercussion
			pitch = 1 * notePitch
		elseif not isPercussion then
			volume = volume + (instrumentSoundData.VolumeShift or 0)
		end
		
		local Sound = Instance.new("Sound")
		Sound.Name = References.NoteNumberToNoteName(settings.NoteNumber)
		Sound.SoundId = soundId
		Sound.PlaybackSpeed = pitch
		Sound.Volume = volume
		
		if isPercussion then
			Sound.Volume /= 2
		else
			Sound.Volume += .1
		end
		
		Sound.Volume -= (settings.NoteNumber/1250)
		
		return Sound
	end
	
	return Notator
end

MidiClasses.Visualizer = function()
	local Visualizer = {}
	
	function Visualizer:Basic(
		settings: {
			NoteNumber: number,
			Length: number,
			CenterCFrame: CFrame,
			
			Size: number,
			
			Z: number,
			
			Sharp: number,
			C: number
		}
	)
		local NoteLetter = InteractiveMidi.References.NoteNumberToNoteName(settings.NoteNumber)
		
		local NoteBlock = Instance.new("Part")
		NoteBlock.Anchored = true
		NoteBlock.Massless = true
		NoteBlock.CanCollide = false
		NoteBlock.CanQuery = false
		NoteBlock.CanTouch = false
		NoteBlock.CFrame = settings.CenterCFrame * CFrame.new((settings.NoteNumber - 60) * settings.Size, 0, 0)
		NoteBlock.Size = Vector3.new(stringFind(NoteLetter, "#") and settings.Sharp or settings.C, settings.Length, settings.Z) * settings.Size
		
		local BlockData = { NoteLetter = NoteLetter, Block = NoteBlock }
		
		function BlockData:Stop()
			BlockData.StopThread = true
			if BlockData.MoveThread then coroutine.close(BlockData.MoveThread); BlockData.MoveThread = nil end
			return BlockData
		end
		
		function BlockData:SmoothHide(tweenTime)
			game:GetService("TweenService"):Create(NoteBlock, TweenInfo.new(tweenTime), {
				Transparency = 1
			}):Play()
			return BlockData
		end
		
		function BlockData:SmoothVisibility(tweenTime)
			NoteBlock.Transparency = 1
			game:GetService("TweenService"):Create(NoteBlock, TweenInfo.new(tweenTime), {
				Transparency = 0,
			}):Play()
			return BlockData
		end
		
		function BlockData:StopGrow()
			BlockData.Grow = false
			return BlockData
		end
		
		function BlockData:MoveUp(height, tweenTime, grows)
			BlockData:Stop()
			BlockData.MoveThread = task.spawn(function()
				BlockData.MovingStart = NoteBlock.CFrame
				BlockData.Height = height
				BlockData.TweenTime = tweenTime * 2
				BlockData.TimeElapsed = 0
				BlockData.LastBlockTime = 0
				BlockData.BlockTime = 0
				BlockData.StopThread = false
				BlockData.Grow = grows
				
				while BlockData.TimeElapsed < BlockData.TweenTime do
					BlockData.LastBlockTime = BlockData.BlockTime
					local deltaTime = task.wait()
					BlockData.BlockTime += deltaTime
					BlockData.TimeElapsed += deltaTime
					
					local heightPositionY = BlockData.Height * (BlockData.BlockTime/BlockData.TweenTime)
					local growY = BlockData.Height * (BlockData.TimeElapsed/BlockData.TweenTime)
					NoteBlock.CFrame = BlockData.MovingStart * CFrame.new(0, heightPositionY + growY, 0)
					
					if BlockData.Grow then
						local growHeightY = BlockData.Height * (BlockData.TimeElapsed/BlockData.TweenTime)
						NoteBlock.Size = NoteBlock.Size * Vector3.new(1, 0, 1) + Vector3.yAxis * growHeightY * 2
						BlockData.BlockTime = BlockData.LastBlockTime
					end
				end
			end)
			
			return BlockData
		end
		
		NoteBlock.Destroying:Once(BlockData.Stop)
		
		return BlockData
	end
	
	return Visualizer
end

function InteractiveMidi.new(...)
	local SpecifiedClasses = {...}
	local CreatedClasses = {}
	
	for _, MidiClass in next, SpecifiedClasses do
		if not (MidiClass and MidiClasses[MidiClass]) then
			local Classes = ""
			for ClassName, _ in next, MidiClasses do
				Classes ..= ClassName..", "
			end; Classes = stringSub(Classes, 1, #Classes - 2)

			error(`{MidiClass} is an Invalid Midi Class. Classes: [{Classes}] EX: InteractiveMidi.new("Midi")`)
		else
			insert(CreatedClasses, MidiClasses[MidiClass]())
		end
	end
	
	return unpack(CreatedClasses)
end

function InteractiveMidi:Load(Buffer)
	assert(Buffer, "Buffer is nil or false.")
	assert(typeof(Buffer) == "string", `Invalid Buffer Type got {typeof(Buffer)} expected string`)
	
	if Buffer:sub(1, 1) == "{" then
		return self:LoadWebJSON(Buffer)
	end
	
	local Hex = ByteRealm:ToHex(Buffer)
	self.Raw.Hex = Hex

	local header = ByteRealm:GetHeader(Buffer)
	assert(header == "MThd", `Invalid Header got {header} expected MThd`)

	local upcomingBytes = ByteRealm:HexToDecimal(stringSub(Hex, 10, 16))
	assert(upcomingBytes == 6, "Most significant byte of MThd header chunk length is not 6")
	
	if #JSONTracks > 0 then
		JSONTracks = {}
	end

	self.Header.Format = ByteRealm:HexToDecimal(stringSub(Hex, 18, 20))
	self.Header.NumberOfTracks = ByteRealm:HexToDecimal(stringSub(Hex, 22, 24))
	self.Header.PulsesPerQuarter = ByteRealm:HexToDecimal(stringSub(Hex, 26, 28))
	
	return self
end

function InteractiveMidi:LoadWebJSON(jsonString)
	assert(typeof(jsonString) == "string", `Expected JSON string, got {typeof(jsonString)}`)
	
	jsonString = game:GetService("HttpService"):JSONDecode(jsonString)
	local data = References.FormatJSON(jsonString)
	
	local bpm = (data.Header and data.Header.Bpm) or 120
	secondsPerBeat = ((bpm/120)*120) / bpm

	local newTracks = {}
	for _, track in ipairs(data.Tracks or {}) do
		if track.Notes and #track.Notes > 0 then
			table.sort(track.Notes, function(a, b)
				return a.Time < b.Time
			end)
			
			for _, note in ipairs(track.Notes) do
				note.Channel = track.ChannelNumber
				note.Time = note.Time * secondsPerBeat
			end
			table.insert(newTracks, track)
		end
	end
	
	if #newTracks == 0 then return end
	
	JSONTracks = newTracks

	return self
end

return InteractiveMidi
end;
};
G2L_MODULES[G2L["4"]] = {
Closure = function()
    local script = G2L["4"];-- // Types \\ --

type Byte = string
type Hexadecimal = string

-- // Variables \\ --
local stringByte = string.byte
local stringFormat = string.format
local stringChar = string.char
local stringSub = string.sub
local tableInsert = table.insert

-- // Module \\ --

local ByteRealm = {}

-- [ Hexadecimals ] --

function ByteRealm:ToHex(str: Byte): Hexadecimal
	return (str:gsub('.', function (c)
		return stringFormat('%02X', stringByte(c))
	end))
end

function ByteRealm:FromHex(str: Hexadecimal): Byte
	return (str:gsub('..', function (cc)
		return stringChar(tonumber(cc, 16))
	end))
end

function ByteRealm:HexInTable(str: Hexadecimal): (string?, string?, ...string?)
	local parts = {}
	for i = 1, #str, 2 do
		parts[#parts + 1] = stringSub(str, i, i + 1)
	end; return parts
end

function ByteRealm:HexToDecimalTwo(cc: Hexadecimal): { number }
	local hexInTable = ByteRealm:HexInTable(cc)
	local decimals = {}
	for i, hex in next, hexInTable do
		decimals[i] = tonumber(hex, 16)
	end; return decimals
end

function ByteRealm:HexToDecimal(cc: Hexadecimal): number
	return tonumber(cc, 16)
end

function ByteRealm:BufferToDecimal(byte: Byte)
	return stringByte(byte)
end

function ByteRealm:AddSpacesToHex(hex: Hexadecimal): string
	local spaced_hex = ""
	for i = 1, #hex, 2 do
		spaced_hex = spaced_hex .. hex:sub(i, i+1) .. " "
	end; return spaced_hex:sub(1, -2) -- remove trailing space
end

function ByteRealm:DecimalToHexadecimal(decimal: number | { number }): Hexadecimal
	if typeof(decimal) == "table" then
		local hexadecimal = ""
		for _, v in next, decimal do
			hexadecimal ..= stringFormat("%X", v)
		end; return hexadecimal
	else
		return stringFormat("%X", decimal)
	end
end

function ByteRealm:BufferToBerInteger(s: Byte, start: number): (number, number)
	local i = start
	local integer = 0
	while true do
		local byte = string.byte(s, i)
		integer = integer + (byte%128)
		if byte < 127.5 then
			return integer, i+1
		end
		if i >= #s then
			warn('BufferToBerInteger: no end-of-integer found')
			return 0, start
		end
		i = i + 1
		integer = integer * 128
	end
end

-- [ Byte Reading ] --

function ByteRealm:GetHeader(byte: Byte): string
	return stringSub(byte, 1, 4)
end

return ByteRealm
end;
};
-- StarterGui.PianoPlayer.Client
local function C_2()
local script = G2L["2"];
	local HttpService = game:GetService("HttpService")
	local RunService = game:GetService("RunService")
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	
	local InteractiveMidi = require(script:WaitForChild("InteractiveMidi"))
	
	local Midi, Parser, Player, Binder, Notator, Visualizer = InteractiveMidi.new("Midi", "Parser", "Player", "Binder", "Notator", "Visualizer")
	Binder:Bind(Midi, { Parser, "Parse", "Summation" }, Player)
	
	local gui = script.Parent
	local main = gui:WaitForChild("Main")
	local content = main:WaitForChild("Content")
	local json = content.JSON
	local buttons = content.Buttons
	
	local instruments = Notator:GetInstruments()
	local currentInstrument = 1
	local instrumentName = "Acoustic Grand Piano"
	
	local VOLUME = 2
	local LOOPED = false
	
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
		local success, result = pcall(function()
			return HttpService:GetAsync(json.Text)
		end)
		
		if success then
			Binder:Load(result) else
			Binder:Load(tostring(json.Text))
		end
		
		Player:Play()
	end)
	buttons.Stop.Activated:Connect(function()
		Player:Stop()
	end)
	buttons.Loop.Activated:Connect(function()
		LOOPED = not LOOPED
		buttons.Loop.Text = LOOPED and "Unloop" or "Loop"
		Player.Loop = LOOPED
	end)
	buttons.Instrument.Activated:Connect(function()
		local selectedIndex = 0
		local broken = false
		
		currentInstrument += 1
		for instrument, data in pairs(instruments) do
			selectedIndex += 1
			
			if selectedIndex == currentInstrument then
				buttons.Instrument.Text = instrument
				instrumentName = instrument
				broken = true
				break
			end
		end
		if not broken then
			currentInstrument = 1
			buttons.Instrument.Text = "Acoustic Grand Piano"
			instrumentName = "Acoustic Grand Piano"
		end
	end)
	buttons.Volume.FocusLost:Connect(function(enterPressed)
		if enterPressed then
			VOLUME = tonumber(buttons.Volume.Text) or 1
		end
	end)
	main.Top.Close.Activated:Connect(function()
		gui:Destroy()
	end)
	
	Player.Events.NoteOn = function(Instruction)
		local sound = Notator:CreateSound(instrumentName, Instruction)
		sound.Parent = game:GetService("SoundService")
		sound.Volume *= VOLUME
	
		task.spawn(function()
			task.delay(2, function()
				if sound.TimeLength <= 0 then
					sound:Destroy()
				end
			end)
			repeat task.wait() until sound.TimeLength > 0
			if sound then
				local audioRemote = soundRemote()
				sound:Play()
	
				if audioRemote then
					if audioRemote.Name == "PlayAudio" then
						audioRemote:FireServer({
							Name = "SERVER'S_SOUND",
							Origin = game:GetService("SoundService"),
							SoundId = sound.SoundId,
							Volume = sound.Volume,
							Pitch = sound.PlaybackSpeed,
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
							soundId = removeRbxAssetId(sound.SoundId),
							volume = sound.Volume,
							pitch = sound.PlaybackSpeed,
							dist = {10, 10000}
						})
					end
				end
				
				sound.Ended:Connect(function()
					sound:Destroy()
				end)
			end
		end)
	end
end;
task.spawn(C_2);

return G2L["1"]
