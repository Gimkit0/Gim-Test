--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88    @uniquadev
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER 
]=]

-- Instances: 56 | Scripts: 1 | Modules: 0 | Tags: 0
local G2L = {};

-- StarterGui.Gunsmith_GUI
G2L["1"] = Instance.new("ScreenGui", game:GetService("CoreGui"))
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


-- StarterGui.Gunsmith_GUI.Main.SightAtt.UIListLayout
G2L["1e"] = Instance.new("UIListLayout", G2L["1d"]);
G2L["1e"]["Padding"] = UDim.new(0.01, 0);
G2L["1e"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.Gunsmith_GUI.Main.BarrelAtt
G2L["1f"] = Instance.new("ScrollingFrame", G2L["2"]);
G2L["1f"]["Visible"] = false;
G2L["1f"]["Active"] = true;
G2L["1f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1f"]["Name"] = [[BarrelAtt]];
G2L["1f"]["Size"] = UDim2.new(0.15, 0, 0.8, 0);
G2L["1f"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1f"]["Position"] = UDim2.new(0.155, 0, 0.2, 0);
G2L["1f"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["1f"]["BackgroundTransparency"] = 1;


-- StarterGui.Gunsmith_GUI.Main.BarrelAtt.UIListLayout
G2L["20"] = Instance.new("UIListLayout", G2L["1f"]);
G2L["20"]["Padding"] = UDim.new(0.01, 0);
G2L["20"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.Gunsmith_GUI.Main.UnderBarrelAtt
G2L["21"] = Instance.new("ScrollingFrame", G2L["2"]);
G2L["21"]["Visible"] = false;
G2L["21"]["Active"] = true;
G2L["21"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["21"]["Name"] = [[UnderBarrelAtt]];
G2L["21"]["Size"] = UDim2.new(0.15, 0, 0.8, 0);
G2L["21"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["21"]["Position"] = UDim2.new(0.155, 0, 0.2, 0);
G2L["21"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["21"]["BackgroundTransparency"] = 1;


-- StarterGui.Gunsmith_GUI.Main.UnderBarrelAtt.UIListLayout
G2L["22"] = Instance.new("UIListLayout", G2L["21"]);
G2L["22"]["Padding"] = UDim.new(0.01, 0);
G2L["22"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.Gunsmith_GUI.Main.OtherAtt
G2L["23"] = Instance.new("ScrollingFrame", G2L["2"]);
G2L["23"]["Visible"] = false;
G2L["23"]["Active"] = true;
G2L["23"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["23"]["Name"] = [[OtherAtt]];
G2L["23"]["Size"] = UDim2.new(0.15, 0, 0.8, 0);
G2L["23"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["23"]["Position"] = UDim2.new(0.155, 0, 0.2, 0);
G2L["23"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["23"]["BackgroundTransparency"] = 1;


-- StarterGui.Gunsmith_GUI.Main.OtherAtt.UIListLayout
G2L["24"] = Instance.new("UIListLayout", G2L["23"]);
G2L["24"]["Padding"] = UDim.new(0.01, 0);
G2L["24"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.Gunsmith_GUI.Main.Finish
G2L["25"] = Instance.new("TextButton", G2L["2"]);
G2L["25"]["TextWrapped"] = true;
G2L["25"]["TextStrokeTransparency"] = 0.75;
G2L["25"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXX;
G2L["25"]["TextSize"] = 14;
G2L["25"]["TextScaled"] = true;
G2L["25"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["25"]["BackgroundColor3"] = Color3.fromRGB(86, 255, 0);
G2L["25"]["FontFace"] = Font.new([[rbxasset://fonts/families/Zekton.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["25"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["25"]["BackgroundTransparency"] = 0.75;
G2L["25"]["Size"] = UDim2.new(0.15, 0, 0.025, 0);
G2L["25"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["25"]["Text"] = [[Finish]];
G2L["25"]["Name"] = [[Finish]];
G2L["25"]["Position"] = UDim2.new(1, 0, 0.825, 0);


-- StarterGui.Gunsmith_GUI.Main.Finish.UICorner
G2L["26"] = Instance.new("UICorner", G2L["25"]);
G2L["26"]["CornerRadius"] = UDim.new(0.5, 0);


-- StarterGui.Gunsmith_GUI.Main.Finish.AttValue
G2L["27"] = Instance.new("StringValue", G2L["25"]);
G2L["27"]["Name"] = [[AttValue]];


-- StarterGui.Gunsmith_GUI.Gunsmith_Client
G2L["28"] = Instance.new("LocalScript", G2L["1"]);
G2L["28"]["Name"] = [[Gunsmith_Client]];


-- StarterGui.Gunsmith_GUI.Vars
G2L["29"] = Instance.new("Folder", G2L["1"]);
G2L["29"]["Name"] = [[Vars]];


-- StarterGui.Gunsmith_GUI.Vars.ToolStorage
G2L["2a"] = Instance.new("Folder", G2L["29"]);
G2L["2a"]["Name"] = [[ToolStorage]];


-- StarterGui.Gunsmith_GUI.Vars.Ref
G2L["2b"] = Instance.new("Folder", G2L["29"]);
G2L["2b"]["Name"] = [[Ref]];


-- StarterGui.Gunsmith_GUI.Vars.Ref.GunButton
G2L["2c"] = Instance.new("TextButton", G2L["2b"]);
G2L["2c"]["TextWrapped"] = true;
G2L["2c"]["TextStrokeTransparency"] = 0.75;
G2L["2c"]["Modal"] = true;
G2L["2c"]["TextSize"] = 14;
G2L["2c"]["TextScaled"] = true;
G2L["2c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2c"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2c"]["FontFace"] = Font.new([[rbxasset://fonts/families/Zekton.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["2c"]["BackgroundTransparency"] = 0.5;
G2L["2c"]["Size"] = UDim2.new(1, 0, 0.1, 0);
G2L["2c"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["2c"]["Text"] = [[Gun Name]];
G2L["2c"]["Name"] = [[GunButton]];
G2L["2c"]["Visible"] = false;


-- StarterGui.Gunsmith_GUI.Vars.Ref.GunButton.UICorner
G2L["2d"] = Instance.new("UICorner", G2L["2c"]);
G2L["2d"]["CornerRadius"] = UDim.new(0.1, 0);


-- StarterGui.Gunsmith_GUI.Vars.Ref.AttachmentButton
G2L["2e"] = Instance.new("TextButton", G2L["2b"]);
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
G2L["2e"]["Text"] = [[Compensator]];
G2L["2e"]["Name"] = [[AttachmentButton]];
G2L["2e"]["Visible"] = false;


-- StarterGui.Gunsmith_GUI.Vars.Ref.AttachmentButton.UICorner
G2L["2f"] = Instance.new("UICorner", G2L["2e"]);
G2L["2f"]["CornerRadius"] = UDim.new(0.5, 0);


-- StarterGui.Gunsmith_GUI.Vars.Ref.AttachmentButton.AttValue
G2L["30"] = Instance.new("StringValue", G2L["2e"]);
G2L["30"]["Name"] = [[AttValue]];


-- StarterGui.Gunsmith_GUI.Selections
G2L["31"] = Instance.new("Frame", G2L["1"]);
G2L["31"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["31"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["31"]["Size"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["31"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["31"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["31"]["Name"] = [[Selections]];
G2L["31"]["BackgroundTransparency"] = 0.5;


-- StarterGui.Gunsmith_GUI.Selections.Pack
G2L["32"] = Instance.new("ScrollingFrame", G2L["31"]);
G2L["32"]["Active"] = true;
G2L["32"]["BorderSizePixel"] = 0;
G2L["32"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["32"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["32"]["Name"] = [[Pack]];
G2L["32"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
G2L["32"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["32"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["32"]["ScrollBarThickness"] = 2;
G2L["32"]["BackgroundTransparency"] = 1;


-- StarterGui.Gunsmith_GUI.Selections.Pack.UIGridLayout
G2L["33"] = Instance.new("UIGridLayout", G2L["32"]);
G2L["33"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["33"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["33"]["CellPadding"] = UDim2.new(0.015, 0, 0.015, 0);


-- StarterGui.Gunsmith_GUI.Selections.Pack.UIPadding
G2L["34"] = Instance.new("UIPadding", G2L["32"]);
G2L["34"]["PaddingTop"] = UDim.new(0, 10);
G2L["34"]["PaddingRight"] = UDim.new(0, 10);
G2L["34"]["PaddingLeft"] = UDim.new(0, 10);
G2L["34"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.Gunsmith_GUI.Selections.UICorner
G2L["35"] = Instance.new("UICorner", G2L["31"]);
G2L["35"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.Gunsmith_GUI.Selections.DropShadow
G2L["36"] = Instance.new("ImageLabel", G2L["31"]);
G2L["36"]["ZIndex"] = -5;
G2L["36"]["BorderSizePixel"] = 0;
G2L["36"]["SliceCenter"] = Rect.new(49, 49, 450, 450);
G2L["36"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["36"]["ImageTransparency"] = 0.5;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["36"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["36"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["36"]["Image"] = [[rbxassetid://6014261993]];
G2L["36"]["Size"] = UDim2.new(1, 47, 1, 47);
G2L["36"]["BackgroundTransparency"] = 1;
G2L["36"]["Name"] = [[DropShadow]];
G2L["36"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Gunsmith_GUI.Selections.Close
G2L["37"] = Instance.new("TextButton", G2L["31"]);
G2L["37"]["BorderSizePixel"] = 0;
G2L["37"]["TextSize"] = 25;
G2L["37"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["37"]["BackgroundColor3"] = Color3.fromRGB(255, 0, 0);
G2L["37"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["37"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["37"]["Size"] = UDim2.new(0, 50, 0, 50);
G2L["37"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["37"]["Text"] = [[X]];
G2L["37"]["Name"] = [[Close]];
G2L["37"]["Position"] = UDim2.new(1, 0, 0, 0);


-- StarterGui.Gunsmith_GUI.Selections.Close.UICorner
G2L["38"] = Instance.new("UICorner", G2L["37"]);
G2L["38"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.Gunsmith_GUI.Gunsmith_Client
local function C_28()
local script = G2L["28"];
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
task.spawn(C_28);

return G2L["1"]
