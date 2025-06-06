--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88    @uniquadev
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER 
]=]

-- Instances: 113 | Scripts: 1 | Modules: 0 | Tags: 0
local G2L = {};

-- StarterGui.Gunsmith_GUI
G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["Name"] = [[Gunsmith_GUI]];


-- StarterGui.Gunsmith_GUI.Main
G2L["2"] = Instance.new("Frame", G2L["1"]);
G2L["2"]["Visible"] = false;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["2"]["Size"] = UDim2.new(1, 0, 0.75, 0);
G2L["2"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["2"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["2"]["Name"] = [[Main]];
G2L["2"]["BackgroundTransparency"] = 1;


-- StarterGui.Gunsmith_GUI.Main.ViewportFrame
G2L["3"] = Instance.new("ViewportFrame", G2L["2"]);
G2L["3"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXX;
G2L["3"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["3"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["3"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["3"]["BorderColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3"]["BackgroundTransparency"] = 1;


-- StarterGui.Gunsmith_GUI.Main.GunInfos
G2L["4"] = Instance.new("Frame", G2L["2"]);
G2L["4"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["4"]["Size"] = UDim2.new(0.15, 0, 0.6, 0);
G2L["4"]["Position"] = UDim2.new(1, 0, 0.5, 0);
G2L["4"]["BorderColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4"]["Name"] = [[GunInfos]];
G2L["4"]["BackgroundTransparency"] = 0.75;


-- StarterGui.Gunsmith_GUI.Main.GunInfos.Gname
G2L["5"] = Instance.new("TextLabel", G2L["4"]);
G2L["5"]["TextWrapped"] = true;
G2L["5"]["TextStrokeTransparency"] = 0.75;
G2L["5"]["TextSize"] = 14;
G2L["5"]["TextScaled"] = true;
G2L["5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5"]["FontFace"] = Font.new([[rbxasset://fonts/families/Zekton.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["5"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5"]["BorderMode"] = Enum.BorderMode.Inset;
G2L["5"]["BackgroundTransparency"] = 1;
G2L["5"]["Size"] = UDim2.new(1, 0, 0.2, 0);
G2L["5"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["5"]["Text"] = [[Gun Name]];
G2L["5"]["Name"] = [[Gname]];


-- StarterGui.Gunsmith_GUI.Main.GunInfos.Sight
G2L["6"] = Instance.new("TextLabel", G2L["4"]);
G2L["6"]["TextWrapped"] = true;
G2L["6"]["TextStrokeTransparency"] = 0.75;
G2L["6"]["TextSize"] = 14;
G2L["6"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["6"]["TextScaled"] = true;
G2L["6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6"]["FontFace"] = Font.new([[rbxasset://fonts/families/Zekton.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["6"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6"]["BorderMode"] = Enum.BorderMode.Inset;
G2L["6"]["BackgroundTransparency"] = 1;
G2L["6"]["Size"] = UDim2.new(0.5, 0, 0.05, 0);
G2L["6"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["6"]["Text"] = [[Optic:]];
G2L["6"]["Name"] = [[Sight]];
G2L["6"]["Position"] = UDim2.new(0, 0, 0.25, 0);


-- StarterGui.Gunsmith_GUI.Main.GunInfos.Barrel
G2L["7"] = Instance.new("TextLabel", G2L["4"]);
G2L["7"]["TextWrapped"] = true;
G2L["7"]["TextStrokeTransparency"] = 0.75;
G2L["7"]["TextSize"] = 14;
G2L["7"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["7"]["TextScaled"] = true;
G2L["7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7"]["FontFace"] = Font.new([[rbxasset://fonts/families/Zekton.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["7"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7"]["BorderMode"] = Enum.BorderMode.Inset;
G2L["7"]["BackgroundTransparency"] = 1;
G2L["7"]["Size"] = UDim2.new(0.5, 0, 0.05, 0);
G2L["7"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["7"]["Text"] = [[Barrel:]];
G2L["7"]["Name"] = [[Barrel]];
G2L["7"]["Position"] = UDim2.new(0, 0, 0.3, 0);


-- StarterGui.Gunsmith_GUI.Main.GunInfos.Under
G2L["8"] = Instance.new("TextLabel", G2L["4"]);
G2L["8"]["TextWrapped"] = true;
G2L["8"]["TextStrokeTransparency"] = 0.75;
G2L["8"]["TextSize"] = 14;
G2L["8"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["8"]["TextScaled"] = true;
G2L["8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8"]["FontFace"] = Font.new([[rbxasset://fonts/families/Zekton.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["8"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8"]["BorderMode"] = Enum.BorderMode.Inset;
G2L["8"]["BackgroundTransparency"] = 1;
G2L["8"]["Size"] = UDim2.new(0.5, 0, 0.05, 0);
G2L["8"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["8"]["Text"] = [[UnderBarrel:]];
G2L["8"]["Name"] = [[Under]];
G2L["8"]["Position"] = UDim2.new(0, 0, 0.35, 0);


-- StarterGui.Gunsmith_GUI.Main.GunInfos.Other
G2L["9"] = Instance.new("TextLabel", G2L["4"]);
G2L["9"]["TextWrapped"] = true;
G2L["9"]["TextStrokeTransparency"] = 0.75;
G2L["9"]["TextSize"] = 14;
G2L["9"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["9"]["TextScaled"] = true;
G2L["9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9"]["FontFace"] = Font.new([[rbxasset://fonts/families/Zekton.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["9"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9"]["BorderMode"] = Enum.BorderMode.Inset;
G2L["9"]["BackgroundTransparency"] = 1;
G2L["9"]["Size"] = UDim2.new(0.5, 0, 0.05, 0);
G2L["9"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["9"]["Text"] = [[Other:]];
G2L["9"]["Name"] = [[Other]];
G2L["9"]["Position"] = UDim2.new(0, 0, 0.4, 0);


-- StarterGui.Gunsmith_GUI.Main.GunInfos.Muzzle
G2L["a"] = Instance.new("TextLabel", G2L["4"]);
G2L["a"]["TextWrapped"] = true;
G2L["a"]["TextStrokeTransparency"] = 0.75;
G2L["a"]["TextSize"] = 14;
G2L["a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["a"]["TextScaled"] = true;
G2L["a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a"]["FontFace"] = Font.new([[rbxasset://fonts/families/Zekton.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a"]["BorderMode"] = Enum.BorderMode.Inset;
G2L["a"]["BackgroundTransparency"] = 1;
G2L["a"]["Size"] = UDim2.new(0.5, 0, 0.05, 0);
G2L["a"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["a"]["Text"] = [[Muzzle Velocity:]];
G2L["a"]["Name"] = [[Muzzle]];
G2L["a"]["Position"] = UDim2.new(0, 0, 0.5, 0);


-- StarterGui.Gunsmith_GUI.Main.GunInfos.Att
G2L["b"] = Instance.new("TextLabel", G2L["4"]);
G2L["b"]["TextWrapped"] = true;
G2L["b"]["TextStrokeTransparency"] = 0.75;
G2L["b"]["BorderSizePixel"] = 0;
G2L["b"]["TextSize"] = 14;
G2L["b"]["TextScaled"] = true;
G2L["b"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b"]["FontFace"] = Font.new([[rbxasset://fonts/families/Zekton.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["b"]["TextColor3"] = Color3.fromRGB(201, 201, 201);
G2L["b"]["BorderMode"] = Enum.BorderMode.Inset;
G2L["b"]["BackgroundTransparency"] = 0.75;
G2L["b"]["Size"] = UDim2.new(1, 0, 0.05, 0);
G2L["b"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["b"]["Text"] = [[Attachments]];
G2L["b"]["Name"] = [[Att]];
G2L["b"]["Position"] = UDim2.new(0, 0, 0.2, 0);


-- StarterGui.Gunsmith_GUI.Main.GunInfos.Stats
G2L["c"] = Instance.new("TextLabel", G2L["4"]);
G2L["c"]["TextWrapped"] = true;
G2L["c"]["TextStrokeTransparency"] = 0.75;
G2L["c"]["TextSize"] = 14;
G2L["c"]["TextScaled"] = true;
G2L["c"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c"]["FontFace"] = Font.new([[rbxasset://fonts/families/Zekton.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["c"]["TextColor3"] = Color3.fromRGB(201, 201, 201);
G2L["c"]["BorderMode"] = Enum.BorderMode.Inset;
G2L["c"]["BackgroundTransparency"] = 0.75;
G2L["c"]["Size"] = UDim2.new(1, 0, 0.05, 0);
G2L["c"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["c"]["Text"] = [[Statistics]];
G2L["c"]["Name"] = [[Stats]];
G2L["c"]["Position"] = UDim2.new(0, 0, 0.45, 0);


-- StarterGui.Gunsmith_GUI.Main.GunInfos.UICorner
G2L["d"] = Instance.new("UICorner", G2L["4"]);
G2L["d"]["CornerRadius"] = UDim.new(0.1, 0);


-- StarterGui.Gunsmith_GUI.Main.GunInfos.B
G2L["e"] = Instance.new("TextLabel", G2L["4"]);
G2L["e"]["TextWrapped"] = true;
G2L["e"]["TextStrokeTransparency"] = 0.75;
G2L["e"]["TextSize"] = 14;
G2L["e"]["TextXAlignment"] = Enum.TextXAlignment.Right;
G2L["e"]["TextScaled"] = true;
G2L["e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e"]["FontFace"] = Font.new([[rbxasset://fonts/families/Zekton.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e"]["BorderMode"] = Enum.BorderMode.Inset;
G2L["e"]["BackgroundTransparency"] = 1;
G2L["e"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["e"]["Size"] = UDim2.new(0.5, 0, 0.05, 0);
G2L["e"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["e"]["Text"] = [[]];
G2L["e"]["Name"] = [[B]];
G2L["e"]["Position"] = UDim2.new(1, 0, 0.3, 0);


-- StarterGui.Gunsmith_GUI.Main.GunInfos.MV
G2L["f"] = Instance.new("TextLabel", G2L["4"]);
G2L["f"]["TextWrapped"] = true;
G2L["f"]["TextStrokeTransparency"] = 0.75;
G2L["f"]["TextSize"] = 14;
G2L["f"]["TextXAlignment"] = Enum.TextXAlignment.Right;
G2L["f"]["TextScaled"] = true;
G2L["f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f"]["FontFace"] = Font.new([[rbxasset://fonts/families/Zekton.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f"]["BorderMode"] = Enum.BorderMode.Inset;
G2L["f"]["BackgroundTransparency"] = 1;
G2L["f"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["f"]["Size"] = UDim2.new(0.5, 0, 0.05, 0);
G2L["f"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["f"]["Text"] = [[]];
G2L["f"]["Name"] = [[MV]];
G2L["f"]["Position"] = UDim2.new(1, 0, 0.5, 0);


-- StarterGui.Gunsmith_GUI.Main.GunInfos.O
G2L["10"] = Instance.new("TextLabel", G2L["4"]);
G2L["10"]["TextWrapped"] = true;
G2L["10"]["TextStrokeTransparency"] = 0.75;
G2L["10"]["TextSize"] = 14;
G2L["10"]["TextXAlignment"] = Enum.TextXAlignment.Right;
G2L["10"]["TextScaled"] = true;
G2L["10"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["10"]["FontFace"] = Font.new([[rbxasset://fonts/families/Zekton.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["10"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["10"]["BorderMode"] = Enum.BorderMode.Inset;
G2L["10"]["BackgroundTransparency"] = 1;
G2L["10"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["10"]["Size"] = UDim2.new(0.5, 0, 0.05, 0);
G2L["10"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["10"]["Text"] = [[]];
G2L["10"]["Name"] = [[O]];
G2L["10"]["Position"] = UDim2.new(1, 0, 0.4, 0);


-- StarterGui.Gunsmith_GUI.Main.GunInfos.S
G2L["11"] = Instance.new("TextLabel", G2L["4"]);
G2L["11"]["TextWrapped"] = true;
G2L["11"]["TextStrokeTransparency"] = 0.75;
G2L["11"]["TextSize"] = 14;
G2L["11"]["TextXAlignment"] = Enum.TextXAlignment.Right;
G2L["11"]["TextScaled"] = true;
G2L["11"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["11"]["FontFace"] = Font.new([[rbxasset://fonts/families/Zekton.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["11"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["11"]["BorderMode"] = Enum.BorderMode.Inset;
G2L["11"]["BackgroundTransparency"] = 1;
G2L["11"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["11"]["Size"] = UDim2.new(0.5, 0, 0.05, 0);
G2L["11"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["11"]["Text"] = [[]];
G2L["11"]["Name"] = [[S]];
G2L["11"]["Position"] = UDim2.new(1, 0, 0.25, 0);


-- StarterGui.Gunsmith_GUI.Main.GunInfos.UB
G2L["12"] = Instance.new("TextLabel", G2L["4"]);
G2L["12"]["TextWrapped"] = true;
G2L["12"]["TextStrokeTransparency"] = 0.75;
G2L["12"]["TextSize"] = 14;
G2L["12"]["TextXAlignment"] = Enum.TextXAlignment.Right;
G2L["12"]["TextScaled"] = true;
G2L["12"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["12"]["FontFace"] = Font.new([[rbxasset://fonts/families/Zekton.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["12"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["12"]["BorderMode"] = Enum.BorderMode.Inset;
G2L["12"]["BackgroundTransparency"] = 1;
G2L["12"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["12"]["Size"] = UDim2.new(0.5, 0, 0.05, 0);
G2L["12"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["12"]["Text"] = [[]];
G2L["12"]["Name"] = [[UB]];
G2L["12"]["Position"] = UDim2.new(1, 0, 0.35, 0);


-- StarterGui.Gunsmith_GUI.Main.Attachments
G2L["13"] = Instance.new("Frame", G2L["2"]);
G2L["13"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["13"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["13"]["Size"] = UDim2.new(0.15, 0, 0.6, 0);
G2L["13"]["Position"] = UDim2.new(0, 0, 0.5, 0);
G2L["13"]["BorderColor3"] = Color3.fromRGB(255, 255, 255);
G2L["13"]["Name"] = [[Attachments]];
G2L["13"]["BackgroundTransparency"] = 1;


-- StarterGui.Gunsmith_GUI.Main.Attachments.Sight
G2L["14"] = Instance.new("TextButton", G2L["13"]);
G2L["14"]["TextWrapped"] = true;
G2L["14"]["TextStrokeTransparency"] = 0.75;
G2L["14"]["Modal"] = true;
G2L["14"]["TextSize"] = 14;
G2L["14"]["TextScaled"] = true;
G2L["14"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["14"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["14"]["FontFace"] = Font.new([[rbxasset://fonts/families/Zekton.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["14"]["BackgroundTransparency"] = 0.75;
G2L["14"]["Size"] = UDim2.new(1, 0, 0.1, 0);
G2L["14"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["14"]["Text"] = [[Optic]];
G2L["14"]["Name"] = [[Sight]];
G2L["14"]["Visible"] = false;


-- StarterGui.Gunsmith_GUI.Main.Attachments.Sight.UICorner
G2L["15"] = Instance.new("UICorner", G2L["14"]);
G2L["15"]["CornerRadius"] = UDim.new(0.1, 0);


-- StarterGui.Gunsmith_GUI.Main.Attachments.UIListLayout
G2L["16"] = Instance.new("UIListLayout", G2L["13"]);
G2L["16"]["Padding"] = UDim.new(0.025, 0);
G2L["16"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.Gunsmith_GUI.Main.Attachments.Barrel
G2L["17"] = Instance.new("TextButton", G2L["13"]);
G2L["17"]["TextWrapped"] = true;
G2L["17"]["TextStrokeTransparency"] = 0.75;
G2L["17"]["Modal"] = true;
G2L["17"]["TextSize"] = 14;
G2L["17"]["TextScaled"] = true;
G2L["17"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["17"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["17"]["FontFace"] = Font.new([[rbxasset://fonts/families/Zekton.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["17"]["BackgroundTransparency"] = 0.75;
G2L["17"]["Size"] = UDim2.new(1, 0, 0.1, 0);
G2L["17"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["17"]["Text"] = [[Barrel]];
G2L["17"]["Name"] = [[Barrel]];
G2L["17"]["Visible"] = false;


-- StarterGui.Gunsmith_GUI.Main.Attachments.Barrel.UICorner
G2L["18"] = Instance.new("UICorner", G2L["17"]);
G2L["18"]["CornerRadius"] = UDim.new(0.1, 0);


-- StarterGui.Gunsmith_GUI.Main.Attachments.Under
G2L["19"] = Instance.new("TextButton", G2L["13"]);
G2L["19"]["TextWrapped"] = true;
G2L["19"]["TextStrokeTransparency"] = 0.75;
G2L["19"]["Modal"] = true;
G2L["19"]["TextSize"] = 14;
G2L["19"]["TextScaled"] = true;
G2L["19"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["19"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["19"]["FontFace"] = Font.new([[rbxasset://fonts/families/Zekton.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["19"]["BackgroundTransparency"] = 0.75;
G2L["19"]["Size"] = UDim2.new(1, 0, 0.1, 0);
G2L["19"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["19"]["Text"] = [[UnderBarrel]];
G2L["19"]["Name"] = [[Under]];
G2L["19"]["Visible"] = false;


-- StarterGui.Gunsmith_GUI.Main.Attachments.Under.UICorner
G2L["1a"] = Instance.new("UICorner", G2L["19"]);
G2L["1a"]["CornerRadius"] = UDim.new(0.1, 0);


-- StarterGui.Gunsmith_GUI.Main.Attachments.Other
G2L["1b"] = Instance.new("TextButton", G2L["13"]);
G2L["1b"]["TextWrapped"] = true;
G2L["1b"]["TextStrokeTransparency"] = 0.75;
G2L["1b"]["Modal"] = true;
G2L["1b"]["TextSize"] = 14;
G2L["1b"]["TextScaled"] = true;
G2L["1b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1b"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1b"]["FontFace"] = Font.new([[rbxasset://fonts/families/Zekton.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1b"]["BackgroundTransparency"] = 0.75;
G2L["1b"]["Size"] = UDim2.new(1, 0, 0.1, 0);
G2L["1b"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["1b"]["Text"] = [[Other]];
G2L["1b"]["Name"] = [[Other]];
G2L["1b"]["Visible"] = false;


-- StarterGui.Gunsmith_GUI.Main.Attachments.Other.UICorner
G2L["1c"] = Instance.new("UICorner", G2L["1b"]);
G2L["1c"]["CornerRadius"] = UDim.new(0.1, 0);


-- StarterGui.Gunsmith_GUI.Main.SightAtt
G2L["1d"] = Instance.new("ScrollingFrame", G2L["2"]);
G2L["1d"]["Visible"] = false;
G2L["1d"]["Active"] = true;
G2L["1d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1d"]["Name"] = [[SightAtt]];
G2L["1d"]["Size"] = UDim2.new(0.15, 0, 0.8, 0);
G2L["1d"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1d"]["Position"] = UDim2.new(0.155, 0, 0.2, 0);
G2L["1d"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["1d"]["BackgroundTransparency"] = 1;


-- StarterGui.Gunsmith_GUI.Main.SightAtt.None
G2L["1e"] = Instance.new("TextButton", G2L["1d"]);
G2L["1e"]["TextWrapped"] = true;
G2L["1e"]["TextStrokeTransparency"] = 0.75;
G2L["1e"]["TextSize"] = 14;
G2L["1e"]["TextScaled"] = true;
G2L["1e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1e"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1e"]["FontFace"] = Font.new([[rbxasset://fonts/families/Zekton.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1e"]["BackgroundTransparency"] = 0.75;
G2L["1e"]["Size"] = UDim2.new(0.9, 0, 0.03, 0);
G2L["1e"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["1e"]["Text"] = [[Nothing]];
G2L["1e"]["Name"] = [[None]];


-- StarterGui.Gunsmith_GUI.Main.SightAtt.None.UICorner
G2L["1f"] = Instance.new("UICorner", G2L["1e"]);
G2L["1f"]["CornerRadius"] = UDim.new(0.5, 0);


-- StarterGui.Gunsmith_GUI.Main.SightAtt.None.AttValue
G2L["20"] = Instance.new("StringValue", G2L["1e"]);
G2L["20"]["Name"] = [[AttValue]];


-- StarterGui.Gunsmith_GUI.Main.SightAtt.UIListLayout
G2L["21"] = Instance.new("UIListLayout", G2L["1d"]);
G2L["21"]["Padding"] = UDim.new(0.01, 0);
G2L["21"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.Gunsmith_GUI.Main.SightAtt.Reflex
G2L["22"] = Instance.new("TextButton", G2L["1d"]);
G2L["22"]["TextWrapped"] = true;
G2L["22"]["TextStrokeTransparency"] = 0.75;
G2L["22"]["TextSize"] = 14;
G2L["22"]["TextScaled"] = true;
G2L["22"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["22"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["22"]["FontFace"] = Font.new([[rbxasset://fonts/families/Zekton.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["22"]["BackgroundTransparency"] = 0.75;
G2L["22"]["Size"] = UDim2.new(0.9, 0, 0.03, 0);
G2L["22"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["22"]["Text"] = [[Reflex]];
G2L["22"]["Name"] = [[Reflex]];


-- StarterGui.Gunsmith_GUI.Main.SightAtt.Reflex.UICorner
G2L["23"] = Instance.new("UICorner", G2L["22"]);
G2L["23"]["CornerRadius"] = UDim.new(0.5, 0);


-- StarterGui.Gunsmith_GUI.Main.SightAtt.Reflex.AttValue
G2L["24"] = Instance.new("StringValue", G2L["22"]);
G2L["24"]["Name"] = [[AttValue]];
G2L["24"]["Value"] = [[Reflex]];


-- StarterGui.Gunsmith_GUI.Main.SightAtt.EOTech
G2L["25"] = Instance.new("TextButton", G2L["1d"]);
G2L["25"]["TextWrapped"] = true;
G2L["25"]["TextStrokeTransparency"] = 0.75;
G2L["25"]["TextSize"] = 14;
G2L["25"]["TextScaled"] = true;
G2L["25"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["25"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["25"]["FontFace"] = Font.new([[rbxasset://fonts/families/Zekton.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["25"]["BackgroundTransparency"] = 0.75;
G2L["25"]["Size"] = UDim2.new(0.9, 0, 0.03, 0);
G2L["25"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["25"]["Text"] = [[EOTech]];
G2L["25"]["Name"] = [[EOTech]];


-- StarterGui.Gunsmith_GUI.Main.SightAtt.EOTech.UICorner
G2L["26"] = Instance.new("UICorner", G2L["25"]);
G2L["26"]["CornerRadius"] = UDim.new(0.5, 0);


-- StarterGui.Gunsmith_GUI.Main.SightAtt.EOTech.AttValue
G2L["27"] = Instance.new("StringValue", G2L["25"]);
G2L["27"]["Name"] = [[AttValue]];
G2L["27"]["Value"] = [[EOTech]];


-- StarterGui.Gunsmith_GUI.Main.SightAtt.Acog
G2L["28"] = Instance.new("TextButton", G2L["1d"]);
G2L["28"]["TextWrapped"] = true;
G2L["28"]["TextStrokeTransparency"] = 0.75;
G2L["28"]["TextSize"] = 14;
G2L["28"]["TextScaled"] = true;
G2L["28"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["28"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["28"]["FontFace"] = Font.new([[rbxasset://fonts/families/Zekton.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["28"]["BackgroundTransparency"] = 0.75;
G2L["28"]["Size"] = UDim2.new(0.9, 0, 0.03, 0);
G2L["28"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["28"]["Text"] = [[Acog]];
G2L["28"]["Name"] = [[Acog]];


-- StarterGui.Gunsmith_GUI.Main.SightAtt.Acog.UICorner
G2L["29"] = Instance.new("UICorner", G2L["28"]);
G2L["29"]["CornerRadius"] = UDim.new(0.5, 0);


-- StarterGui.Gunsmith_GUI.Main.SightAtt.Acog.AttValue
G2L["2a"] = Instance.new("StringValue", G2L["28"]);
G2L["2a"]["Name"] = [[AttValue]];
G2L["2a"]["Value"] = [[Acog]];


-- StarterGui.Gunsmith_GUI.Main.SightAtt.Acog2
G2L["2b"] = Instance.new("TextButton", G2L["1d"]);
G2L["2b"]["TextWrapped"] = true;
G2L["2b"]["TextStrokeTransparency"] = 0.75;
G2L["2b"]["TextSize"] = 14;
G2L["2b"]["TextScaled"] = true;
G2L["2b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2b"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2b"]["FontFace"] = Font.new([[rbxasset://fonts/families/Zekton.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["2b"]["BackgroundTransparency"] = 0.75;
G2L["2b"]["Size"] = UDim2.new(0.9, 0, 0.03, 0);
G2L["2b"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["2b"]["Text"] = [[TA33 Acog]];
G2L["2b"]["Name"] = [[Acog2]];


-- StarterGui.Gunsmith_GUI.Main.SightAtt.Acog2.UICorner
G2L["2c"] = Instance.new("UICorner", G2L["2b"]);
G2L["2c"]["CornerRadius"] = UDim.new(0.5, 0);


-- StarterGui.Gunsmith_GUI.Main.SightAtt.Acog2.AttValue
G2L["2d"] = Instance.new("StringValue", G2L["2b"]);
G2L["2d"]["Name"] = [[AttValue]];
G2L["2d"]["Value"] = [[TA33 Acog]];


-- StarterGui.Gunsmith_GUI.Main.SightAtt.PM2
G2L["2e"] = Instance.new("TextButton", G2L["1d"]);
G2L["2e"]["TextWrapped"] = true;
G2L["2e"]["TextStrokeTransparency"] = 0.75;
G2L["2e"]["TextSize"] = 14;
G2L["2e"]["TextScaled"] = true;
G2L["2e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2e"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2e"]["FontFace"] = Font.new([[rbxasset://fonts/families/Zekton.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["2e"]["BackgroundTransparency"] = 0.75;
G2L["2e"]["Size"] = UDim2.new(0.9, 0, 0.03, 0);
G2L["2e"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["2e"]["Text"] = [[PM II]];
G2L["2e"]["Name"] = [[PM2]];


-- StarterGui.Gunsmith_GUI.Main.SightAtt.PM2.UICorner
G2L["2f"] = Instance.new("UICorner", G2L["2e"]);
G2L["2f"]["CornerRadius"] = UDim.new(0.5, 0);


-- StarterGui.Gunsmith_GUI.Main.SightAtt.PM2.AttValue
G2L["30"] = Instance.new("StringValue", G2L["2e"]);
G2L["30"]["Name"] = [[AttValue]];
G2L["30"]["Value"] = [[PM II]];


-- StarterGui.Gunsmith_GUI.Main.SightAtt.Aimpoint
G2L["31"] = Instance.new("TextButton", G2L["1d"]);
G2L["31"]["TextWrapped"] = true;
G2L["31"]["TextStrokeTransparency"] = 0.75;
G2L["31"]["TextSize"] = 14;
G2L["31"]["TextScaled"] = true;
G2L["31"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["31"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["31"]["FontFace"] = Font.new([[rbxasset://fonts/families/Zekton.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["31"]["BackgroundTransparency"] = 0.75;
G2L["31"]["Size"] = UDim2.new(0.9, 0, 0.03, 0);
G2L["31"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["31"]["Text"] = [[Aimpoint]];
G2L["31"]["Name"] = [[Aimpoint]];


-- StarterGui.Gunsmith_GUI.Main.SightAtt.Aimpoint.UICorner
G2L["32"] = Instance.new("UICorner", G2L["31"]);
G2L["32"]["CornerRadius"] = UDim.new(0.5, 0);


-- StarterGui.Gunsmith_GUI.Main.SightAtt.Aimpoint.AttValue
G2L["33"] = Instance.new("StringValue", G2L["31"]);
G2L["33"]["Name"] = [[AttValue]];
G2L["33"]["Value"] = [[Aimpoint]];


-- StarterGui.Gunsmith_GUI.Main.BarrelAtt
G2L["34"] = Instance.new("ScrollingFrame", G2L["2"]);
G2L["34"]["Visible"] = false;
G2L["34"]["Active"] = true;
G2L["34"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["34"]["Name"] = [[BarrelAtt]];
G2L["34"]["Size"] = UDim2.new(0.15, 0, 0.8, 0);
G2L["34"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["34"]["Position"] = UDim2.new(0.155, 0, 0.2, 0);
G2L["34"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["34"]["BackgroundTransparency"] = 1;


-- StarterGui.Gunsmith_GUI.Main.BarrelAtt.None
G2L["35"] = Instance.new("TextButton", G2L["34"]);
G2L["35"]["TextWrapped"] = true;
G2L["35"]["TextStrokeTransparency"] = 0.75;
G2L["35"]["TextSize"] = 14;
G2L["35"]["TextScaled"] = true;
G2L["35"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["35"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["35"]["FontFace"] = Font.new([[rbxasset://fonts/families/Zekton.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["35"]["BackgroundTransparency"] = 0.75;
G2L["35"]["Size"] = UDim2.new(0.9, 0, 0.03, 0);
G2L["35"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["35"]["Text"] = [[Nothing]];
G2L["35"]["Name"] = [[None]];


-- StarterGui.Gunsmith_GUI.Main.BarrelAtt.None.UICorner
G2L["36"] = Instance.new("UICorner", G2L["35"]);
G2L["36"]["CornerRadius"] = UDim.new(0.5, 0);


-- StarterGui.Gunsmith_GUI.Main.BarrelAtt.None.AttValue
G2L["37"] = Instance.new("StringValue", G2L["35"]);
G2L["37"]["Name"] = [[AttValue]];


-- StarterGui.Gunsmith_GUI.Main.BarrelAtt.UIListLayout
G2L["38"] = Instance.new("UIListLayout", G2L["34"]);
G2L["38"]["Padding"] = UDim.new(0.01, 0);
G2L["38"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.Gunsmith_GUI.Main.BarrelAtt.MuzzleBrake
G2L["39"] = Instance.new("TextButton", G2L["34"]);
G2L["39"]["TextWrapped"] = true;
G2L["39"]["TextStrokeTransparency"] = 0.75;
G2L["39"]["TextSize"] = 14;
G2L["39"]["TextScaled"] = true;
G2L["39"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["39"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["39"]["FontFace"] = Font.new([[rbxasset://fonts/families/Zekton.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["39"]["BackgroundTransparency"] = 0.75;
G2L["39"]["Size"] = UDim2.new(0.9, 0, 0.03, 0);
G2L["39"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["39"]["Text"] = [[Muzzle Brake]];
G2L["39"]["Name"] = [[MuzzleBrake]];


-- StarterGui.Gunsmith_GUI.Main.BarrelAtt.MuzzleBrake.UICorner
G2L["3a"] = Instance.new("UICorner", G2L["39"]);
G2L["3a"]["CornerRadius"] = UDim.new(0.5, 0);


-- StarterGui.Gunsmith_GUI.Main.BarrelAtt.MuzzleBrake.AttValue
G2L["3b"] = Instance.new("StringValue", G2L["39"]);
G2L["3b"]["Name"] = [[AttValue]];
G2L["3b"]["Value"] = [[Muzzle Brake]];


-- StarterGui.Gunsmith_GUI.Main.BarrelAtt.Compensator
G2L["3c"] = Instance.new("TextButton", G2L["34"]);
G2L["3c"]["TextWrapped"] = true;
G2L["3c"]["TextStrokeTransparency"] = 0.75;
G2L["3c"]["TextSize"] = 14;
G2L["3c"]["TextScaled"] = true;
G2L["3c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3c"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3c"]["FontFace"] = Font.new([[rbxasset://fonts/families/Zekton.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["3c"]["BackgroundTransparency"] = 0.75;
G2L["3c"]["Size"] = UDim2.new(0.9, 0, 0.03, 0);
G2L["3c"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["3c"]["Text"] = [[Compensator]];
G2L["3c"]["Name"] = [[Compensator]];


-- StarterGui.Gunsmith_GUI.Main.BarrelAtt.Compensator.UICorner
G2L["3d"] = Instance.new("UICorner", G2L["3c"]);
G2L["3d"]["CornerRadius"] = UDim.new(0.5, 0);


-- StarterGui.Gunsmith_GUI.Main.BarrelAtt.Compensator.AttValue
G2L["3e"] = Instance.new("StringValue", G2L["3c"]);
G2L["3e"]["Name"] = [[AttValue]];
G2L["3e"]["Value"] = [[Compensator]];


-- StarterGui.Gunsmith_GUI.Main.BarrelAtt.FlashHider
G2L["3f"] = Instance.new("TextButton", G2L["34"]);
G2L["3f"]["TextWrapped"] = true;
G2L["3f"]["TextStrokeTransparency"] = 0.75;
G2L["3f"]["TextSize"] = 14;
G2L["3f"]["TextScaled"] = true;
G2L["3f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3f"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3f"]["FontFace"] = Font.new([[rbxasset://fonts/families/Zekton.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["3f"]["BackgroundTransparency"] = 0.75;
G2L["3f"]["Size"] = UDim2.new(0.9, 0, 0.03, 0);
G2L["3f"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["3f"]["Text"] = [[Flash Hider]];
G2L["3f"]["Name"] = [[FlashHider]];


-- StarterGui.Gunsmith_GUI.Main.BarrelAtt.FlashHider.UICorner
G2L["40"] = Instance.new("UICorner", G2L["3f"]);
G2L["40"]["CornerRadius"] = UDim.new(0.5, 0);


-- StarterGui.Gunsmith_GUI.Main.BarrelAtt.FlashHider.AttValue
G2L["41"] = Instance.new("StringValue", G2L["3f"]);
G2L["41"]["Name"] = [[AttValue]];
G2L["41"]["Value"] = [[Flash Hider]];


-- StarterGui.Gunsmith_GUI.Main.BarrelAtt.Suppressor
G2L["42"] = Instance.new("TextButton", G2L["34"]);
G2L["42"]["TextWrapped"] = true;
G2L["42"]["TextStrokeTransparency"] = 0.75;
G2L["42"]["TextSize"] = 14;
G2L["42"]["TextScaled"] = true;
G2L["42"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["42"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["42"]["FontFace"] = Font.new([[rbxasset://fonts/families/Zekton.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["42"]["BackgroundTransparency"] = 0.75;
G2L["42"]["Size"] = UDim2.new(0.9, 0, 0.03, 0);
G2L["42"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["42"]["Text"] = [[Suppressor]];
G2L["42"]["Name"] = [[Suppressor]];


-- StarterGui.Gunsmith_GUI.Main.BarrelAtt.Suppressor.UICorner
G2L["43"] = Instance.new("UICorner", G2L["42"]);
G2L["43"]["CornerRadius"] = UDim.new(0.5, 0);


-- StarterGui.Gunsmith_GUI.Main.BarrelAtt.Suppressor.AttValue
G2L["44"] = Instance.new("StringValue", G2L["42"]);
G2L["44"]["Name"] = [[AttValue]];
G2L["44"]["Value"] = [[Suppressor]];


-- StarterGui.Gunsmith_GUI.Main.UnderBarrelAtt
G2L["45"] = Instance.new("ScrollingFrame", G2L["2"]);
G2L["45"]["Visible"] = false;
G2L["45"]["Active"] = true;
G2L["45"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["45"]["Name"] = [[UnderBarrelAtt]];
G2L["45"]["Size"] = UDim2.new(0.15, 0, 0.8, 0);
G2L["45"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["45"]["Position"] = UDim2.new(0.155, 0, 0.2, 0);
G2L["45"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["45"]["BackgroundTransparency"] = 1;


-- StarterGui.Gunsmith_GUI.Main.UnderBarrelAtt.None
G2L["46"] = Instance.new("TextButton", G2L["45"]);
G2L["46"]["TextWrapped"] = true;
G2L["46"]["TextStrokeTransparency"] = 0.75;
G2L["46"]["TextSize"] = 14;
G2L["46"]["TextScaled"] = true;
G2L["46"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["46"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["46"]["FontFace"] = Font.new([[rbxasset://fonts/families/Zekton.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["46"]["BackgroundTransparency"] = 0.75;
G2L["46"]["Size"] = UDim2.new(0.9, 0, 0.03, 0);
G2L["46"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["46"]["Text"] = [[Nothing]];
G2L["46"]["Name"] = [[None]];


-- StarterGui.Gunsmith_GUI.Main.UnderBarrelAtt.None.UICorner
G2L["47"] = Instance.new("UICorner", G2L["46"]);
G2L["47"]["CornerRadius"] = UDim.new(0.5, 0);


-- StarterGui.Gunsmith_GUI.Main.UnderBarrelAtt.None.AttValue
G2L["48"] = Instance.new("StringValue", G2L["46"]);
G2L["48"]["Name"] = [[AttValue]];


-- StarterGui.Gunsmith_GUI.Main.UnderBarrelAtt.UIListLayout
G2L["49"] = Instance.new("UIListLayout", G2L["45"]);
G2L["49"]["Padding"] = UDim.new(0.01, 0);
G2L["49"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.Gunsmith_GUI.Main.UnderBarrelAtt.Vertical
G2L["4a"] = Instance.new("TextButton", G2L["45"]);
G2L["4a"]["TextWrapped"] = true;
G2L["4a"]["TextStrokeTransparency"] = 0.75;
G2L["4a"]["TextSize"] = 14;
G2L["4a"]["TextScaled"] = true;
G2L["4a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4a"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4a"]["FontFace"] = Font.new([[rbxasset://fonts/families/Zekton.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["4a"]["BackgroundTransparency"] = 0.75;
G2L["4a"]["Size"] = UDim2.new(0.9, 0, 0.03, 0);
G2L["4a"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["4a"]["Text"] = [[Vertical Grip]];
G2L["4a"]["Name"] = [[Vertical]];


-- StarterGui.Gunsmith_GUI.Main.UnderBarrelAtt.Vertical.UICorner
G2L["4b"] = Instance.new("UICorner", G2L["4a"]);
G2L["4b"]["CornerRadius"] = UDim.new(0.5, 0);


-- StarterGui.Gunsmith_GUI.Main.UnderBarrelAtt.Vertical.AttValue
G2L["4c"] = Instance.new("StringValue", G2L["4a"]);
G2L["4c"]["Name"] = [[AttValue]];
G2L["4c"]["Value"] = [[Vertical Grip]];


-- StarterGui.Gunsmith_GUI.Main.UnderBarrelAtt.Angled
G2L["4d"] = Instance.new("TextButton", G2L["45"]);
G2L["4d"]["TextWrapped"] = true;
G2L["4d"]["TextStrokeTransparency"] = 0.75;
G2L["4d"]["TextSize"] = 14;
G2L["4d"]["TextScaled"] = true;
G2L["4d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4d"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4d"]["FontFace"] = Font.new([[rbxasset://fonts/families/Zekton.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["4d"]["BackgroundTransparency"] = 0.75;
G2L["4d"]["Size"] = UDim2.new(0.9, 0, 0.03, 0);
G2L["4d"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["4d"]["Text"] = [[Angled Grip]];
G2L["4d"]["Name"] = [[Angled]];


-- StarterGui.Gunsmith_GUI.Main.UnderBarrelAtt.Angled.UICorner
G2L["4e"] = Instance.new("UICorner", G2L["4d"]);
G2L["4e"]["CornerRadius"] = UDim.new(0.5, 0);


-- StarterGui.Gunsmith_GUI.Main.UnderBarrelAtt.Angled.AttValue
G2L["4f"] = Instance.new("StringValue", G2L["4d"]);
G2L["4f"]["Name"] = [[AttValue]];
G2L["4f"]["Value"] = [[Angled Grip]];


-- StarterGui.Gunsmith_GUI.Main.UnderBarrelAtt.Bipod
G2L["50"] = Instance.new("TextButton", G2L["45"]);
G2L["50"]["TextWrapped"] = true;
G2L["50"]["TextStrokeTransparency"] = 0.75;
G2L["50"]["TextSize"] = 14;
G2L["50"]["TextScaled"] = true;
G2L["50"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["50"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["50"]["FontFace"] = Font.new([[rbxasset://fonts/families/Zekton.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["50"]["BackgroundTransparency"] = 0.75;
G2L["50"]["Size"] = UDim2.new(0.9, 0, 0.03, 0);
G2L["50"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["50"]["Text"] = [[Bipod]];
G2L["50"]["Name"] = [[Bipod]];


-- StarterGui.Gunsmith_GUI.Main.UnderBarrelAtt.Bipod.UICorner
G2L["51"] = Instance.new("UICorner", G2L["50"]);
G2L["51"]["CornerRadius"] = UDim.new(0.5, 0);


-- StarterGui.Gunsmith_GUI.Main.UnderBarrelAtt.Bipod.AttValue
G2L["52"] = Instance.new("StringValue", G2L["50"]);
G2L["52"]["Name"] = [[AttValue]];
G2L["52"]["Value"] = [[Bipod]];


-- StarterGui.Gunsmith_GUI.Main.OtherAtt
G2L["53"] = Instance.new("ScrollingFrame", G2L["2"]);
G2L["53"]["Visible"] = false;
G2L["53"]["Active"] = true;
G2L["53"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["53"]["Name"] = [[OtherAtt]];
G2L["53"]["Size"] = UDim2.new(0.15, 0, 0.8, 0);
G2L["53"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["53"]["Position"] = UDim2.new(0.155, 0, 0.2, 0);
G2L["53"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["53"]["BackgroundTransparency"] = 1;


-- StarterGui.Gunsmith_GUI.Main.OtherAtt.None
G2L["54"] = Instance.new("TextButton", G2L["53"]);
G2L["54"]["TextWrapped"] = true;
G2L["54"]["TextStrokeTransparency"] = 0.75;
G2L["54"]["TextSize"] = 14;
G2L["54"]["TextScaled"] = true;
G2L["54"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["54"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["54"]["FontFace"] = Font.new([[rbxasset://fonts/families/Zekton.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["54"]["BackgroundTransparency"] = 0.75;
G2L["54"]["Size"] = UDim2.new(0.9, 0, 0.03, 0);
G2L["54"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["54"]["Text"] = [[Nothing]];
G2L["54"]["Name"] = [[None]];


-- StarterGui.Gunsmith_GUI.Main.OtherAtt.None.UICorner
G2L["55"] = Instance.new("UICorner", G2L["54"]);
G2L["55"]["CornerRadius"] = UDim.new(0.5, 0);


-- StarterGui.Gunsmith_GUI.Main.OtherAtt.None.AttValue
G2L["56"] = Instance.new("StringValue", G2L["54"]);
G2L["56"]["Name"] = [[AttValue]];


-- StarterGui.Gunsmith_GUI.Main.OtherAtt.UIListLayout
G2L["57"] = Instance.new("UIListLayout", G2L["53"]);
G2L["57"]["Padding"] = UDim.new(0.01, 0);
G2L["57"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.Gunsmith_GUI.Main.OtherAtt.Laser
G2L["58"] = Instance.new("TextButton", G2L["53"]);
G2L["58"]["TextWrapped"] = true;
G2L["58"]["TextStrokeTransparency"] = 0.75;
G2L["58"]["TextSize"] = 14;
G2L["58"]["TextScaled"] = true;
G2L["58"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["58"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["58"]["FontFace"] = Font.new([[rbxasset://fonts/families/Zekton.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["58"]["BackgroundTransparency"] = 0.75;
G2L["58"]["Size"] = UDim2.new(0.9, 0, 0.03, 0);
G2L["58"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["58"]["Text"] = [[Laser]];
G2L["58"]["Name"] = [[Laser]];


-- StarterGui.Gunsmith_GUI.Main.OtherAtt.Laser.UICorner
G2L["59"] = Instance.new("UICorner", G2L["58"]);
G2L["59"]["CornerRadius"] = UDim.new(0.5, 0);


-- StarterGui.Gunsmith_GUI.Main.OtherAtt.Laser.AttValue
G2L["5a"] = Instance.new("StringValue", G2L["58"]);
G2L["5a"]["Name"] = [[AttValue]];
G2L["5a"]["Value"] = [[Laser]];


-- StarterGui.Gunsmith_GUI.Main.OtherAtt.Flashlight
G2L["5b"] = Instance.new("TextButton", G2L["53"]);
G2L["5b"]["TextWrapped"] = true;
G2L["5b"]["TextStrokeTransparency"] = 0.75;
G2L["5b"]["TextSize"] = 14;
G2L["5b"]["TextScaled"] = true;
G2L["5b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5b"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5b"]["FontFace"] = Font.new([[rbxasset://fonts/families/Zekton.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["5b"]["BackgroundTransparency"] = 0.75;
G2L["5b"]["Size"] = UDim2.new(0.9, 0, 0.03, 0);
G2L["5b"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["5b"]["Text"] = [[Flashlight]];
G2L["5b"]["Name"] = [[Flashlight]];


-- StarterGui.Gunsmith_GUI.Main.OtherAtt.Flashlight.UICorner
G2L["5c"] = Instance.new("UICorner", G2L["5b"]);
G2L["5c"]["CornerRadius"] = UDim.new(0.5, 0);


-- StarterGui.Gunsmith_GUI.Main.OtherAtt.Flashlight.AttValue
G2L["5d"] = Instance.new("StringValue", G2L["5b"]);
G2L["5d"]["Name"] = [[AttValue]];
G2L["5d"]["Value"] = [[Flashlight]];


-- StarterGui.Gunsmith_GUI.Main.OtherAtt.ANPEQ
G2L["5e"] = Instance.new("TextButton", G2L["53"]);
G2L["5e"]["TextWrapped"] = true;
G2L["5e"]["TextStrokeTransparency"] = 0.75;
G2L["5e"]["TextSize"] = 14;
G2L["5e"]["TextScaled"] = true;
G2L["5e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5e"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5e"]["FontFace"] = Font.new([[rbxasset://fonts/families/Zekton.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["5e"]["BackgroundTransparency"] = 0.75;
G2L["5e"]["Size"] = UDim2.new(0.9, 0, 0.03, 0);
G2L["5e"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["5e"]["Text"] = [[AN PEQ]];
G2L["5e"]["Name"] = [[ANPEQ]];


-- StarterGui.Gunsmith_GUI.Main.OtherAtt.ANPEQ.UICorner
G2L["5f"] = Instance.new("UICorner", G2L["5e"]);
G2L["5f"]["CornerRadius"] = UDim.new(0.5, 0);


-- StarterGui.Gunsmith_GUI.Main.OtherAtt.ANPEQ.AttValue
G2L["60"] = Instance.new("StringValue", G2L["5e"]);
G2L["60"]["Name"] = [[AttValue]];
G2L["60"]["Value"] = [[AN PEQ]];


-- StarterGui.Gunsmith_GUI.Main.Finish
G2L["61"] = Instance.new("TextButton", G2L["2"]);
G2L["61"]["TextWrapped"] = true;
G2L["61"]["TextStrokeTransparency"] = 0.75;
G2L["61"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXX;
G2L["61"]["TextSize"] = 14;
G2L["61"]["TextScaled"] = true;
G2L["61"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["61"]["BackgroundColor3"] = Color3.fromRGB(86, 255, 0);
G2L["61"]["FontFace"] = Font.new([[rbxasset://fonts/families/Zekton.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["61"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["61"]["BackgroundTransparency"] = 0.75;
G2L["61"]["Size"] = UDim2.new(0.15, 0, 0.025, 0);
G2L["61"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["61"]["Text"] = [[Finish]];
G2L["61"]["Name"] = [[Finish]];
G2L["61"]["Position"] = UDim2.new(1, 0, 0.825, 0);


-- StarterGui.Gunsmith_GUI.Main.Finish.UICorner
G2L["62"] = Instance.new("UICorner", G2L["61"]);
G2L["62"]["CornerRadius"] = UDim.new(0.5, 0);


-- StarterGui.Gunsmith_GUI.Main.Finish.AttValue
G2L["63"] = Instance.new("StringValue", G2L["61"]);
G2L["63"]["Name"] = [[AttValue]];


-- StarterGui.Gunsmith_GUI.Gunsmith_Client
G2L["64"] = Instance.new("LocalScript", G2L["1"]);
G2L["64"]["Name"] = [[Gunsmith_Client]];


-- StarterGui.Gunsmith_GUI.Vars
G2L["65"] = Instance.new("Folder", G2L["1"]);
G2L["65"]["Name"] = [[Vars]];


-- StarterGui.Gunsmith_GUI.Vars.ToolStorage
G2L["66"] = Instance.new("Folder", G2L["65"]);
G2L["66"]["Name"] = [[ToolStorage]];


-- StarterGui.Gunsmith_GUI.Vars.Ref
G2L["67"] = Instance.new("Folder", G2L["65"]);
G2L["67"]["Name"] = [[Ref]];


-- StarterGui.Gunsmith_GUI.Vars.Ref.GunButton
G2L["68"] = Instance.new("TextButton", G2L["67"]);
G2L["68"]["TextWrapped"] = true;
G2L["68"]["TextStrokeTransparency"] = 0.75;
G2L["68"]["Modal"] = true;
G2L["68"]["TextSize"] = 14;
G2L["68"]["TextScaled"] = true;
G2L["68"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["68"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["68"]["FontFace"] = Font.new([[rbxasset://fonts/families/Zekton.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["68"]["BackgroundTransparency"] = 0.5;
G2L["68"]["Size"] = UDim2.new(1, 0, 0.1, 0);
G2L["68"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["68"]["Text"] = [[Gun Name]];
G2L["68"]["Name"] = [[GunButton]];
G2L["68"]["Visible"] = false;


-- StarterGui.Gunsmith_GUI.Vars.Ref.GunButton.UICorner
G2L["69"] = Instance.new("UICorner", G2L["68"]);
G2L["69"]["CornerRadius"] = UDim.new(0.1, 0);


-- StarterGui.Gunsmith_GUI.Selections
G2L["6a"] = Instance.new("Frame", G2L["1"]);
G2L["6a"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6a"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["6a"]["Size"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["6a"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["6a"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["6a"]["Name"] = [[Selections]];
G2L["6a"]["BackgroundTransparency"] = 0.5;


-- StarterGui.Gunsmith_GUI.Selections.Pack
G2L["6b"] = Instance.new("ScrollingFrame", G2L["6a"]);
G2L["6b"]["Active"] = true;
G2L["6b"]["BorderSizePixel"] = 0;
G2L["6b"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["6b"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6b"]["Name"] = [[Pack]];
G2L["6b"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
G2L["6b"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["6b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6b"]["ScrollBarThickness"] = 2;
G2L["6b"]["BackgroundTransparency"] = 1;


-- StarterGui.Gunsmith_GUI.Selections.Pack.UIGridLayout
G2L["6c"] = Instance.new("UIGridLayout", G2L["6b"]);
G2L["6c"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["6c"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["6c"]["CellPadding"] = UDim2.new(0.015, 0, 0.015, 0);


-- StarterGui.Gunsmith_GUI.Selections.Pack.UIPadding
G2L["6d"] = Instance.new("UIPadding", G2L["6b"]);
G2L["6d"]["PaddingTop"] = UDim.new(0, 10);
G2L["6d"]["PaddingRight"] = UDim.new(0, 10);
G2L["6d"]["PaddingLeft"] = UDim.new(0, 10);
G2L["6d"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.Gunsmith_GUI.Selections.UICorner
G2L["6e"] = Instance.new("UICorner", G2L["6a"]);
G2L["6e"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.Gunsmith_GUI.Selections.DropShadow
G2L["6f"] = Instance.new("ImageLabel", G2L["6a"]);
G2L["6f"]["ZIndex"] = -5;
G2L["6f"]["BorderSizePixel"] = 0;
G2L["6f"]["SliceCenter"] = Rect.new(49, 49, 450, 450);
G2L["6f"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["6f"]["ImageTransparency"] = 0.5;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["6f"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6f"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["6f"]["Image"] = [[rbxassetid://6014261993]];
G2L["6f"]["Size"] = UDim2.new(1, 47, 1, 47);
G2L["6f"]["BackgroundTransparency"] = 1;
G2L["6f"]["Name"] = [[DropShadow]];
G2L["6f"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Gunsmith_GUI.Selections.Close
G2L["70"] = Instance.new("TextButton", G2L["6a"]);
G2L["70"]["BorderSizePixel"] = 0;
G2L["70"]["TextSize"] = 25;
G2L["70"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["70"]["BackgroundColor3"] = Color3.fromRGB(255, 0, 0);
G2L["70"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["70"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["70"]["Size"] = UDim2.new(0, 50, 0, 50);
G2L["70"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["70"]["Text"] = [[X]];
G2L["70"]["Name"] = [[Close]];
G2L["70"]["Position"] = UDim2.new(1, 0, 0, 0);


-- StarterGui.Gunsmith_GUI.Selections.Close.UICorner
G2L["71"] = Instance.new("UICorner", G2L["70"]);
G2L["71"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.Gunsmith_GUI.Gunsmith_Client
local function C_64()
	local script = G2L["64"];
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
			if Child:IsA("Tool") and require(Child.ACS_Settings).Type == 'Gun' then
				Gun 		= Child
				GunData 	= require(Child.ACS_Settings)

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
			if weapon.Nodes:FindFirstChild("Sight") ~= nil and GunData.SightAtt ~= "" then

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
			if weapon.Nodes:FindFirstChild("Barrel") ~= nil and GunData.BarrelAtt ~= "" then

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
			if weapon.Nodes:FindFirstChild("UnderBarrel") ~= nil and GunData.UnderBarrelAtt ~= "" then

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

			if weapon.Nodes:FindFirstChild("Other") ~= nil and GunData.OtherAtt ~= "" then

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
			if weapon.Nodes:FindFirstChild("Sight") ~= nil and GunData.SightAtt ~= "" then

				SightAtt:Destroy()
				SightAtt = nil
				SightData = nil

			end

			--load Barrel Att
			if weapon.Nodes:FindFirstChild("Barrel") ~= nil and GunData.BarrelAtt ~= "" then

				BarrelAtt:Destroy()
				BarrelAtt = nil
				BarrelData = nil

			end

			--load Under Barrel Att
			if weapon.Nodes:FindFirstChild("UnderBarrel") ~= nil and GunData.UnderBarrelAtt ~= "" then

				UnderBarrelAtt:Destroy()
				UnderBarrelAtt = nil
				UnderBarrelData = nil

			end

			if weapon.Nodes:FindFirstChild("Other") ~= nil and GunData.OtherAtt ~= "" then

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

		if GunData.SightAtt == SightName then
			GunData.SightAtt = ""
		else
			GunData.SightAtt = SightName
		end
		UnSetGun()
		SetupGun()
		GunInfoUpdate()
	end

	function SetBarrel(SightName)

		if GunData.BarrelAtt == SightName then
			GunData.BarrelAtt = ""
		else
			GunData.BarrelAtt = SightName
		end
		UnSetGun()
		SetupGun()
		GunInfoUpdate()
	end

	function SetUnderBarrel(SightName)

		if GunData.UnderBarrelAtt == SightName then
			GunData.UnderBarrelAtt = ""
		else
			GunData.UnderBarrelAtt = SightName
		end
		UnSetGun()
		SetupGun()
		GunInfoUpdate()
	end

	function SetOther(SightName)

		if GunData.OtherAtt == SightName then
			GunData.OtherAtt = ""
		else
			GunData.OtherAtt = SightName
		end
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
		if Child:IsA("Tool") and require(Child.ACS_Settings).Type == 'Gun' then

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
end;
task.spawn(C_64);

return G2L["1"]
