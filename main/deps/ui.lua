--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88    @uniquadev
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER 
]=]

-- Instances: 45 | Scripts: 0 | Modules: 0
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

-- StarterGui.Console.Main.Background.UIStroke
G2L["5"] = Instance.new("UIStroke", G2L["3"]);
G2L["5"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["5"]["Color"] = Color3.fromRGB(41, 41, 41);

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

-- StarterGui.Console.Open.Background.TopGradient
G2L["29"] = Instance.new("UIGradient", G2L["27"]);
G2L["29"]["Rotation"] = 90;
G2L["29"]["Name"] = [[TopGradient]];
G2L["29"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(127, 127, 127))};

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


return G2L["1"];
