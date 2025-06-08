--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88    @uniquadev
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER 
]=]

-- Instances: 81 | Scripts: 1 | Modules: 1 | Tags: 0
local G2L = {};

-- StarterGui.AttachmentMenu
G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["IgnoreGuiInset"] = true;
G2L["1"]["ScreenInsets"] = Enum.ScreenInsets.DeviceSafeInsets;
G2L["1"]["Name"] = [[AttachmentMenu]];


-- StarterGui.AttachmentMenu.Graphical
G2L["2"] = Instance.new("Folder", G2L["1"]);
G2L["2"]["Name"] = [[Graphical]];


-- StarterGui.AttachmentMenu.Graphical.Main
G2L["3"] = Instance.new("Frame", G2L["2"]);
G2L["3"]["BorderSizePixel"] = 0;
G2L["3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["3"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["3"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3"]["Name"] = [[Main]];
G2L["3"]["BackgroundTransparency"] = 1;


-- StarterGui.AttachmentMenu.Graphical.Main.Background
G2L["4"] = Instance.new("Frame", G2L["3"]);
G2L["4"]["ZIndex"] = -10;
G2L["4"]["BorderSizePixel"] = 0;
G2L["4"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4"]["Name"] = [[Background]];
G2L["4"]["BackgroundTransparency"] = 0.45;


-- StarterGui.AttachmentMenu.Graphical.Main.Menu
G2L["5"] = Instance.new("Frame", G2L["3"]);
G2L["5"]["BorderSizePixel"] = 0;
G2L["5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5"]["Name"] = [[Menu]];
G2L["5"]["BackgroundTransparency"] = 1;


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Top
G2L["6"] = Instance.new("Frame", G2L["5"]);
G2L["6"]["BorderSizePixel"] = 0;
G2L["6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6"]["Size"] = UDim2.new(1, 0, 0.25, 0);
G2L["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6"]["Name"] = [[Top]];
G2L["6"]["BackgroundTransparency"] = 1;


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Top.Title
G2L["7"] = Instance.new("TextLabel", G2L["6"]);
G2L["7"]["BorderSizePixel"] = 0;
G2L["7"]["TextSize"] = 45;
G2L["7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["7"]["TextColor3"] = Color3.fromRGB(236, 236, 236);
G2L["7"]["BackgroundTransparency"] = 1;
G2L["7"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7"]["Text"] = [[Server's Attachment Menu]];
G2L["7"]["Name"] = [[Title]];


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Top.Title.Line
G2L["8"] = Instance.new("ImageLabel", G2L["7"]);
G2L["8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["8"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["8"]["Image"] = [[http://www.roblox.com/asset/?id=241779220]];
G2L["8"]["Size"] = UDim2.new(0.5, 0, 0, 5);
G2L["8"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["8"]["BackgroundTransparency"] = 1;
G2L["8"]["Name"] = [[Line]];
G2L["8"]["Position"] = UDim2.new(0.5, 0, 0.75, 0);


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Top.Close
G2L["9"] = Instance.new("TextButton", G2L["6"]);
G2L["9"]["BorderSizePixel"] = 0;
G2L["9"]["Modal"] = true;
G2L["9"]["TextSize"] = 50;
G2L["9"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9"]["BackgroundColor3"] = Color3.fromRGB(255, 0, 0);
G2L["9"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["9"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["9"]["BackgroundTransparency"] = 1;
G2L["9"]["Size"] = UDim2.new(0, 50, 0, 50);
G2L["9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9"]["Text"] = [[X]];
G2L["9"]["Name"] = [[Close]];
G2L["9"]["Position"] = UDim2.new(0.8, 0, 0.5, 0);


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Top.Close.UICorner
G2L["a"] = Instance.new("UICorner", G2L["9"]);
G2L["a"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Top.Back
G2L["b"] = Instance.new("TextButton", G2L["6"]);
G2L["b"]["BorderSizePixel"] = 0;
G2L["b"]["Modal"] = true;
G2L["b"]["TextSize"] = 50;
G2L["b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b"]["BackgroundColor3"] = Color3.fromRGB(255, 0, 0);
G2L["b"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["b"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["b"]["BackgroundTransparency"] = 1;
G2L["b"]["Size"] = UDim2.new(0, 50, 0, 50);
G2L["b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b"]["Text"] = [[<]];
G2L["b"]["Name"] = [[Back]];
G2L["b"]["Visible"] = false;
G2L["b"]["Position"] = UDim2.new(0.15, 0, 0.5, 0);


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Top.Back.UICorner
G2L["c"] = Instance.new("UICorner", G2L["b"]);
G2L["c"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages
G2L["d"] = Instance.new("Frame", G2L["5"]);
G2L["d"]["BorderSizePixel"] = 0;
G2L["d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d"]["AnchorPoint"] = Vector2.new(0.5, 1);
G2L["d"]["Size"] = UDim2.new(0.85, 0, 0.65, 0);
G2L["d"]["Position"] = UDim2.new(0.5, 0, 1, -70);
G2L["d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d"]["Name"] = [[Pages]];
G2L["d"]["BackgroundTransparency"] = 1;


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Guns
G2L["e"] = Instance.new("Frame", G2L["d"]);
G2L["e"]["Visible"] = false;
G2L["e"]["BorderSizePixel"] = 0;
G2L["e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e"]["AnchorPoint"] = Vector2.new(0.5, 1);
G2L["e"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["e"]["Position"] = UDim2.new(0.5, 0, 1, 0);
G2L["e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e"]["Name"] = [[Guns]];
G2L["e"]["BackgroundTransparency"] = 1;


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Guns.Scroll
G2L["f"] = Instance.new("ScrollingFrame", G2L["e"]);
G2L["f"]["Active"] = true;
G2L["f"]["BorderSizePixel"] = 0;
G2L["f"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f"]["Name"] = [[Scroll]];
G2L["f"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
G2L["f"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f"]["ScrollBarThickness"] = 2;
G2L["f"]["BackgroundTransparency"] = 1;


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Guns.Scroll.UIPadding
G2L["10"] = Instance.new("UIPadding", G2L["f"]);
G2L["10"]["PaddingTop"] = UDim.new(0, 20);
G2L["10"]["PaddingRight"] = UDim.new(0, 20);
G2L["10"]["PaddingLeft"] = UDim.new(0, 20);
G2L["10"]["PaddingBottom"] = UDim.new(0, 20);


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Guns.Scroll.UIGridLayout
G2L["11"] = Instance.new("UIGridLayout", G2L["f"]);
G2L["11"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["11"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["11"]["CellPadding"] = UDim2.new(0, 10, 0, 10);


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments
G2L["12"] = Instance.new("Frame", G2L["d"]);
G2L["12"]["Visible"] = false;
G2L["12"]["BorderSizePixel"] = 0;
G2L["12"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["12"]["AnchorPoint"] = Vector2.new(0.5, 1);
G2L["12"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["12"]["Position"] = UDim2.new(0.5, 0, 1, 0);
G2L["12"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["12"]["Name"] = [[Attachments]];
G2L["12"]["BackgroundTransparency"] = 1;


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.AttachmentMenu
G2L["13"] = Instance.new("Frame", G2L["12"]);
G2L["13"]["Visible"] = false;
G2L["13"]["BorderSizePixel"] = 0;
G2L["13"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["13"]["Size"] = UDim2.new(0, 150, 1, 0);
G2L["13"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["13"]["Name"] = [[AttachmentMenu]];
G2L["13"]["BackgroundTransparency"] = 0.5;


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.AttachmentMenu.UICorner
G2L["14"] = Instance.new("UICorner", G2L["13"]);
G2L["14"]["CornerRadius"] = UDim.new(0, 15);


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.AttachmentMenu.Title
G2L["15"] = Instance.new("TextLabel", G2L["13"]);
G2L["15"]["ZIndex"] = 2;
G2L["15"]["BorderSizePixel"] = 0;
G2L["15"]["TextSize"] = 20;
G2L["15"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["15"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["15"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["15"]["BackgroundTransparency"] = 1;
G2L["15"]["Size"] = UDim2.new(1, 0, 0, 50);
G2L["15"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["15"]["Text"] = [[Attachments]];
G2L["15"]["Name"] = [[Title]];


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.AttachmentMenu.UIStroke
G2L["16"] = Instance.new("UIStroke", G2L["13"]);
G2L["16"]["Transparency"] = 0.5;
G2L["16"]["Thickness"] = 2;
G2L["16"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.AttachmentMenu.UIStroke.UIGradient
G2L["17"] = Instance.new("UIGradient", G2L["16"]);
G2L["17"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(0, 0, 0)),ColorSequenceKeypoint.new(0.750, Color3.fromRGB(0, 0, 0)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 255, 255))};


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.AttachmentMenu.Scroll
G2L["18"] = Instance.new("ScrollingFrame", G2L["13"]);
G2L["18"]["Active"] = true;
G2L["18"]["BorderSizePixel"] = 0;
G2L["18"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["18"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["18"]["Name"] = [[Scroll]];
G2L["18"]["AnchorPoint"] = Vector2.new(0, 1);
G2L["18"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
G2L["18"]["Size"] = UDim2.new(1, 0, 1, -50);
G2L["18"]["Position"] = UDim2.new(0, 0, 1, 0);
G2L["18"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["18"]["ScrollBarThickness"] = 2;
G2L["18"]["BackgroundTransparency"] = 1;


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.AttachmentMenu.Scroll.UIListLayout
G2L["19"] = Instance.new("UIListLayout", G2L["18"]);
G2L["19"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["19"]["Padding"] = UDim.new(0, 10);
G2L["19"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.GunInfo
G2L["1a"] = Instance.new("Frame", G2L["12"]);
G2L["1a"]["BorderSizePixel"] = 0;
G2L["1a"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["1a"]["Size"] = UDim2.new(0, 150, 1, 0);
G2L["1a"]["Position"] = UDim2.new(1, 0, 0, 0);
G2L["1a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a"]["Name"] = [[GunInfo]];
G2L["1a"]["BackgroundTransparency"] = 0.5;


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.GunInfo.UICorner
G2L["1b"] = Instance.new("UICorner", G2L["1a"]);
G2L["1b"]["CornerRadius"] = UDim.new(0, 15);


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.GunInfo.Title
G2L["1c"] = Instance.new("TextLabel", G2L["1a"]);
G2L["1c"]["ZIndex"] = 2;
G2L["1c"]["BorderSizePixel"] = 0;
G2L["1c"]["TextSize"] = 20;
G2L["1c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1c"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1c"]["BackgroundTransparency"] = 1;
G2L["1c"]["Size"] = UDim2.new(1, 0, 0, 50);
G2L["1c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1c"]["Text"] = [[Gun Info]];
G2L["1c"]["Name"] = [[Title]];


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.GunInfo.UIStroke
G2L["1d"] = Instance.new("UIStroke", G2L["1a"]);
G2L["1d"]["Transparency"] = 0.5;
G2L["1d"]["Thickness"] = 2;
G2L["1d"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.GunInfo.UIStroke.UIGradient
G2L["1e"] = Instance.new("UIGradient", G2L["1d"]);
G2L["1e"]["Rotation"] = 180;
G2L["1e"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(0, 0, 0)),ColorSequenceKeypoint.new(0.750, Color3.fromRGB(0, 0, 0)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 255, 255))};


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.GunInfo.Scroll
G2L["1f"] = Instance.new("ScrollingFrame", G2L["1a"]);
G2L["1f"]["Active"] = true;
G2L["1f"]["BorderSizePixel"] = 0;
G2L["1f"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["1f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1f"]["Name"] = [[Scroll]];
G2L["1f"]["AnchorPoint"] = Vector2.new(0, 1);
G2L["1f"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
G2L["1f"]["Size"] = UDim2.new(1, 0, 1, -50);
G2L["1f"]["Position"] = UDim2.new(0, 0, 1, 0);
G2L["1f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1f"]["ScrollBarThickness"] = 2;
G2L["1f"]["BackgroundTransparency"] = 1;


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.GunInfo.Scroll.Optic
G2L["20"] = Instance.new("TextButton", G2L["1f"]);
G2L["20"]["RichText"] = true;
G2L["20"]["BorderSizePixel"] = 0;
G2L["20"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["20"]["TextSize"] = 18;
G2L["20"]["TextColor3"] = Color3.fromRGB(151, 151, 151);
G2L["20"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["20"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["20"]["BackgroundTransparency"] = 1;
G2L["20"]["Size"] = UDim2.new(1, 0, 0, 40);
G2L["20"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["20"]["Text"] = [[Optic: None]];
G2L["20"]["Name"] = [[Optic]];


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.GunInfo.Scroll.Optic.UIPadding
G2L["21"] = Instance.new("UIPadding", G2L["20"]);
G2L["21"]["PaddingTop"] = UDim.new(0, 20);
G2L["21"]["PaddingRight"] = UDim.new(0, 10);
G2L["21"]["PaddingLeft"] = UDim.new(0, 10);
G2L["21"]["PaddingBottom"] = UDim.new(0, 20);


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.GunInfo.Scroll.Barrel
G2L["22"] = Instance.new("TextButton", G2L["1f"]);
G2L["22"]["RichText"] = true;
G2L["22"]["BorderSizePixel"] = 0;
G2L["22"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["22"]["TextSize"] = 18;
G2L["22"]["TextColor3"] = Color3.fromRGB(151, 151, 151);
G2L["22"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["22"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["22"]["BackgroundTransparency"] = 1;
G2L["22"]["Size"] = UDim2.new(1, 0, 0, 40);
G2L["22"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["22"]["Text"] = [[Barrel: None]];
G2L["22"]["Name"] = [[Barrel]];
G2L["22"]["Position"] = UDim2.new(0, 0, 0, 40);


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.GunInfo.Scroll.Barrel.UIPadding
G2L["23"] = Instance.new("UIPadding", G2L["22"]);
G2L["23"]["PaddingTop"] = UDim.new(0, 20);
G2L["23"]["PaddingRight"] = UDim.new(0, 10);
G2L["23"]["PaddingLeft"] = UDim.new(0, 10);
G2L["23"]["PaddingBottom"] = UDim.new(0, 20);


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.GunInfo.Scroll.UnderBarrel
G2L["24"] = Instance.new("TextButton", G2L["1f"]);
G2L["24"]["RichText"] = true;
G2L["24"]["BorderSizePixel"] = 0;
G2L["24"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["24"]["TextSize"] = 18;
G2L["24"]["TextColor3"] = Color3.fromRGB(151, 151, 151);
G2L["24"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["24"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["24"]["BackgroundTransparency"] = 1;
G2L["24"]["Size"] = UDim2.new(1, 0, 0, 40);
G2L["24"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["24"]["Text"] = [[UnderBarrel: None]];
G2L["24"]["Name"] = [[UnderBarrel]];
G2L["24"]["Position"] = UDim2.new(0, 0, 0, 80);


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.GunInfo.Scroll.UnderBarrel.UIPadding
G2L["25"] = Instance.new("UIPadding", G2L["24"]);
G2L["25"]["PaddingTop"] = UDim.new(0, 20);
G2L["25"]["PaddingRight"] = UDim.new(0, 10);
G2L["25"]["PaddingLeft"] = UDim.new(0, 10);
G2L["25"]["PaddingBottom"] = UDim.new(0, 20);


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.GunInfo.Scroll.Other
G2L["26"] = Instance.new("TextButton", G2L["1f"]);
G2L["26"]["RichText"] = true;
G2L["26"]["BorderSizePixel"] = 0;
G2L["26"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["26"]["TextSize"] = 18;
G2L["26"]["TextColor3"] = Color3.fromRGB(151, 151, 151);
G2L["26"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["26"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["26"]["BackgroundTransparency"] = 1;
G2L["26"]["Size"] = UDim2.new(1, 0, 0, 40);
G2L["26"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["26"]["Text"] = [[Other: None]];
G2L["26"]["Name"] = [[Other]];
G2L["26"]["Position"] = UDim2.new(0, 0, 0, 120);


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.GunInfo.Scroll.Other.UIPadding
G2L["27"] = Instance.new("UIPadding", G2L["26"]);
G2L["27"]["PaddingTop"] = UDim.new(0, 20);
G2L["27"]["PaddingRight"] = UDim.new(0, 10);
G2L["27"]["PaddingLeft"] = UDim.new(0, 10);
G2L["27"]["PaddingBottom"] = UDim.new(0, 20);


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.GunInfo.Scroll.Underline
G2L["28"] = Instance.new("Frame", G2L["1f"]);
G2L["28"]["BorderSizePixel"] = 0;
G2L["28"]["BackgroundColor3"] = Color3.fromRGB(101, 101, 101);
G2L["28"]["Size"] = UDim2.new(1, 0, 0, 1);
G2L["28"]["Position"] = UDim2.new(0, 0, 0, 170);
G2L["28"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["28"]["Name"] = [[Underline]];


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.GunInfo.Scroll.MuzzleVelocity
G2L["29"] = Instance.new("TextButton", G2L["1f"]);
G2L["29"]["RichText"] = true;
G2L["29"]["BorderSizePixel"] = 0;
G2L["29"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["29"]["TextSize"] = 18;
G2L["29"]["TextColor3"] = Color3.fromRGB(151, 151, 151);
G2L["29"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["29"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["29"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["29"]["BackgroundTransparency"] = 1;
G2L["29"]["Size"] = UDim2.new(1, 0, 0, 40);
G2L["29"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["29"]["Text"] = [[Velocity: 1000]];
G2L["29"]["Name"] = [[MuzzleVelocity]];
G2L["29"]["Position"] = UDim2.new(0, 0, 0, 180);


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.GunInfo.Scroll.MuzzleVelocity.UIPadding
G2L["2a"] = Instance.new("UIPadding", G2L["29"]);
G2L["2a"]["PaddingTop"] = UDim.new(0, 5);
G2L["2a"]["PaddingRight"] = UDim.new(0, 10);
G2L["2a"]["PaddingLeft"] = UDim.new(0, 10);
G2L["2a"]["PaddingBottom"] = UDim.new(0, 20);


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.GunInfo.Scroll.MuzzleVelocity.FillBar
G2L["2b"] = Instance.new("Frame", G2L["29"]);
G2L["2b"]["BorderSizePixel"] = 0;
G2L["2b"]["BackgroundColor3"] = Color3.fromRGB(101, 101, 101);
G2L["2b"]["Size"] = UDim2.new(1, 0, 0, 2);
G2L["2b"]["Position"] = UDim2.new(0, 0, 1, 10);
G2L["2b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2b"]["Name"] = [[FillBar]];


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.GunInfo.Scroll.MuzzleVelocity.FillBar.Fill1
G2L["2c"] = Instance.new("Frame", G2L["2b"]);
G2L["2c"]["ZIndex"] = 3;
G2L["2c"]["BorderSizePixel"] = 0;
G2L["2c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2c"]["Size"] = UDim2.new(0, 0, 1, 0);
G2L["2c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2c"]["Name"] = [[Fill1]];


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.GunInfo.Scroll.MuzzleVelocity.FillBar.Fill2
G2L["2d"] = Instance.new("Frame", G2L["2b"]);
G2L["2d"]["ZIndex"] = 2;
G2L["2d"]["BorderSizePixel"] = 0;
G2L["2d"]["BackgroundColor3"] = Color3.fromRGB(151, 151, 151);
G2L["2d"]["Size"] = UDim2.new(0, 0, 1, 0);
G2L["2d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2d"]["Name"] = [[Fill2]];


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.GunInfo.Scroll.Damage
G2L["2e"] = Instance.new("TextButton", G2L["1f"]);
G2L["2e"]["RichText"] = true;
G2L["2e"]["BorderSizePixel"] = 0;
G2L["2e"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["2e"]["TextSize"] = 18;
G2L["2e"]["TextColor3"] = Color3.fromRGB(151, 151, 151);
G2L["2e"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["2e"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2e"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["2e"]["BackgroundTransparency"] = 1;
G2L["2e"]["Size"] = UDim2.new(1, 0, 0, 40);
G2L["2e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2e"]["Text"] = [[Damage: 80 - 100]];
G2L["2e"]["Name"] = [[Damage]];
G2L["2e"]["Position"] = UDim2.new(0, 0, 0, 220);


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.GunInfo.Scroll.Damage.UIPadding
G2L["2f"] = Instance.new("UIPadding", G2L["2e"]);
G2L["2f"]["PaddingTop"] = UDim.new(0, 5);
G2L["2f"]["PaddingRight"] = UDim.new(0, 10);
G2L["2f"]["PaddingLeft"] = UDim.new(0, 10);
G2L["2f"]["PaddingBottom"] = UDim.new(0, 20);


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.GunInfo.Scroll.Damage.FillBar
G2L["30"] = Instance.new("Frame", G2L["2e"]);
G2L["30"]["BorderSizePixel"] = 0;
G2L["30"]["BackgroundColor3"] = Color3.fromRGB(101, 101, 101);
G2L["30"]["Size"] = UDim2.new(1, 0, 0, 2);
G2L["30"]["Position"] = UDim2.new(0, 0, 1, 10);
G2L["30"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["30"]["Name"] = [[FillBar]];


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.GunInfo.Scroll.Damage.FillBar.Fill1
G2L["31"] = Instance.new("Frame", G2L["30"]);
G2L["31"]["ZIndex"] = 3;
G2L["31"]["BorderSizePixel"] = 0;
G2L["31"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["31"]["Size"] = UDim2.new(0, 0, 1, 0);
G2L["31"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["31"]["Name"] = [[Fill1]];


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.GunInfo.Scroll.Damage.FillBar.Fill2
G2L["32"] = Instance.new("Frame", G2L["30"]);
G2L["32"]["ZIndex"] = 2;
G2L["32"]["BorderSizePixel"] = 0;
G2L["32"]["BackgroundColor3"] = Color3.fromRGB(151, 151, 151);
G2L["32"]["Size"] = UDim2.new(0, 0, 1, 0);
G2L["32"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["32"]["Name"] = [[Fill2]];


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.Center
G2L["33"] = Instance.new("Frame", G2L["12"]);
G2L["33"]["BorderSizePixel"] = 0;
G2L["33"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["33"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["33"]["Size"] = UDim2.new(0.55, 0, 1, 0);
G2L["33"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["33"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["33"]["Name"] = [[Center]];
G2L["33"]["BackgroundTransparency"] = 1;


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.Center.GunName
G2L["34"] = Instance.new("TextLabel", G2L["33"]);
G2L["34"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
G2L["34"]["ZIndex"] = 2;
G2L["34"]["BorderSizePixel"] = 0;
G2L["34"]["TextSize"] = 30;
G2L["34"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["34"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["34"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["34"]["BackgroundTransparency"] = 1;
G2L["34"]["Size"] = UDim2.new(1, 0, 0, 50);
G2L["34"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["34"]["Text"] = [[Sniper Rifle]];
G2L["34"]["Name"] = [[GunName]];


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.Center.ViewportFrame
G2L["35"] = Instance.new("ViewportFrame", G2L["33"]);
G2L["35"]["BorderSizePixel"] = 0;
G2L["35"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["35"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["35"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["35"]["BackgroundTransparency"] = 1;


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.Center.AttachmentTypes
G2L["36"] = Instance.new("Frame", G2L["33"]);
G2L["36"]["BorderSizePixel"] = 0;
G2L["36"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["36"]["AnchorPoint"] = Vector2.new(0, 1);
G2L["36"]["Size"] = UDim2.new(1, 0, 0, 50);
G2L["36"]["Position"] = UDim2.new(0, 0, 1, 0);
G2L["36"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["36"]["Name"] = [[AttachmentTypes]];
G2L["36"]["BackgroundTransparency"] = 1;


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.Center.AttachmentTypes.UIListLayout
G2L["37"] = Instance.new("UIListLayout", G2L["36"]);
G2L["37"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["37"]["Padding"] = UDim.new(0, 10);
G2L["37"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["37"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.Center.AttachmentTypes.Barrel
G2L["38"] = Instance.new("TextButton", G2L["36"]);
G2L["38"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
G2L["38"]["BorderSizePixel"] = 0;
G2L["38"]["TextSize"] = 18;
G2L["38"]["TextColor3"] = Color3.fromRGB(151, 151, 151);
G2L["38"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["38"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["38"]["BackgroundTransparency"] = 0.5;
G2L["38"]["Size"] = UDim2.new(0.25, 0, 0, 40);
G2L["38"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["38"]["Text"] = [[Barrel]];
G2L["38"]["Name"] = [[Barrel]];
G2L["38"]["Visible"] = false;


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.Center.AttachmentTypes.Barrel.UIPadding
G2L["39"] = Instance.new("UIPadding", G2L["38"]);
G2L["39"]["PaddingTop"] = UDim.new(0, 20);
G2L["39"]["PaddingRight"] = UDim.new(0, 20);
G2L["39"]["PaddingLeft"] = UDim.new(0, 20);
G2L["39"]["PaddingBottom"] = UDim.new(0, 20);


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.Center.AttachmentTypes.Barrel.Underline
G2L["3a"] = Instance.new("Frame", G2L["38"]);
G2L["3a"]["BorderSizePixel"] = 0;
G2L["3a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3a"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["3a"]["Size"] = UDim2.new(1, 40, 0, 1);
G2L["3a"]["Position"] = UDim2.new(0.5, 0, 0, 20);
G2L["3a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3a"]["Name"] = [[Underline]];


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.Center.AttachmentTypes.UnderBarrel
G2L["3b"] = Instance.new("TextButton", G2L["36"]);
G2L["3b"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
G2L["3b"]["BorderSizePixel"] = 0;
G2L["3b"]["TextSize"] = 18;
G2L["3b"]["TextColor3"] = Color3.fromRGB(151, 151, 151);
G2L["3b"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3b"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["3b"]["BackgroundTransparency"] = 0.5;
G2L["3b"]["Size"] = UDim2.new(0.25, 0, 0, 40);
G2L["3b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3b"]["Text"] = [[UnderBarrel]];
G2L["3b"]["Name"] = [[UnderBarrel]];
G2L["3b"]["Visible"] = false;


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.Center.AttachmentTypes.UnderBarrel.UIPadding
G2L["3c"] = Instance.new("UIPadding", G2L["3b"]);
G2L["3c"]["PaddingTop"] = UDim.new(0, 20);
G2L["3c"]["PaddingRight"] = UDim.new(0, 20);
G2L["3c"]["PaddingLeft"] = UDim.new(0, 20);
G2L["3c"]["PaddingBottom"] = UDim.new(0, 20);


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.Center.AttachmentTypes.UnderBarrel.Underline
G2L["3d"] = Instance.new("Frame", G2L["3b"]);
G2L["3d"]["BorderSizePixel"] = 0;
G2L["3d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3d"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["3d"]["Size"] = UDim2.new(1, 40, 0, 1);
G2L["3d"]["Position"] = UDim2.new(0.5, 0, 0, 20);
G2L["3d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3d"]["Name"] = [[Underline]];


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.Center.AttachmentTypes.Sight
G2L["3e"] = Instance.new("TextButton", G2L["36"]);
G2L["3e"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
G2L["3e"]["BorderSizePixel"] = 0;
G2L["3e"]["TextSize"] = 18;
G2L["3e"]["TextColor3"] = Color3.fromRGB(151, 151, 151);
G2L["3e"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3e"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["3e"]["BackgroundTransparency"] = 0.5;
G2L["3e"]["Size"] = UDim2.new(0.25, 0, 0, 40);
G2L["3e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3e"]["Text"] = [[Sight]];
G2L["3e"]["Name"] = [[Sight]];
G2L["3e"]["Visible"] = false;


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.Center.AttachmentTypes.Sight.UIPadding
G2L["3f"] = Instance.new("UIPadding", G2L["3e"]);
G2L["3f"]["PaddingTop"] = UDim.new(0, 20);
G2L["3f"]["PaddingRight"] = UDim.new(0, 20);
G2L["3f"]["PaddingLeft"] = UDim.new(0, 20);
G2L["3f"]["PaddingBottom"] = UDim.new(0, 20);


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.Center.AttachmentTypes.Sight.Underline
G2L["40"] = Instance.new("Frame", G2L["3e"]);
G2L["40"]["BorderSizePixel"] = 0;
G2L["40"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["40"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["40"]["Size"] = UDim2.new(1, 40, 0, 1);
G2L["40"]["Position"] = UDim2.new(0.5, 0, 0, 20);
G2L["40"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["40"]["Name"] = [[Underline]];


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.Center.AttachmentTypes.Other
G2L["41"] = Instance.new("TextButton", G2L["36"]);
G2L["41"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
G2L["41"]["BorderSizePixel"] = 0;
G2L["41"]["TextSize"] = 18;
G2L["41"]["TextColor3"] = Color3.fromRGB(151, 151, 151);
G2L["41"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["41"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["41"]["BackgroundTransparency"] = 0.5;
G2L["41"]["Size"] = UDim2.new(0.25, 0, 0, 40);
G2L["41"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["41"]["Text"] = [[Other]];
G2L["41"]["Name"] = [[Other]];
G2L["41"]["Visible"] = false;


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.Center.AttachmentTypes.Other.UIPadding
G2L["42"] = Instance.new("UIPadding", G2L["41"]);
G2L["42"]["PaddingTop"] = UDim.new(0, 20);
G2L["42"]["PaddingRight"] = UDim.new(0, 20);
G2L["42"]["PaddingLeft"] = UDim.new(0, 20);
G2L["42"]["PaddingBottom"] = UDim.new(0, 20);


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.Center.AttachmentTypes.Other.Underline
G2L["43"] = Instance.new("Frame", G2L["41"]);
G2L["43"]["BorderSizePixel"] = 0;
G2L["43"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["43"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["43"]["Size"] = UDim2.new(1, 40, 0, 1);
G2L["43"]["Position"] = UDim2.new(0.5, 0, 0, 20);
G2L["43"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["43"]["Name"] = [[Underline]];


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.Center.Finish
G2L["44"] = Instance.new("TextButton", G2L["33"]);
G2L["44"]["BorderSizePixel"] = 0;
G2L["44"]["TextSize"] = 25;
G2L["44"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["44"]["BackgroundColor3"] = Color3.fromRGB(141, 255, 109);
G2L["44"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["44"]["AnchorPoint"] = Vector2.new(0.5, 1);
G2L["44"]["BackgroundTransparency"] = 0.2;
G2L["44"]["Size"] = UDim2.new(0, 200, 0, 30);
G2L["44"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["44"]["Text"] = [[Finish]];
G2L["44"]["Name"] = [[Finish]];
G2L["44"]["Visible"] = false;
G2L["44"]["Position"] = UDim2.new(0.5, 0, 1, -60);


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.Center.Finish.UICorner
G2L["45"] = Instance.new("UICorner", G2L["44"]);
G2L["45"]["CornerRadius"] = UDim.new(0, 15);


-- StarterGui.AttachmentMenu.Scripts
G2L["46"] = Instance.new("Folder", G2L["1"]);
G2L["46"]["Name"] = [[Scripts]];


-- StarterGui.AttachmentMenu.Scripts.Handler
G2L["47"] = Instance.new("LocalScript", G2L["46"]);
G2L["47"]["Name"] = [[Handler]];


-- StarterGui.AttachmentMenu.Scripts.Handler.TabControl
G2L["48"] = Instance.new("ModuleScript", G2L["47"]);
G2L["48"]["Name"] = [[TabControl]];


-- StarterGui.AttachmentMenu.Scripts.Templates
G2L["49"] = Instance.new("Folder", G2L["46"]);
G2L["49"]["Name"] = [[Templates]];


-- StarterGui.AttachmentMenu.Scripts.Templates.Gun
G2L["4a"] = Instance.new("TextButton", G2L["49"]);
G2L["4a"]["BorderSizePixel"] = 0;
G2L["4a"]["TextTransparency"] = 1;
G2L["4a"]["TextSize"] = 1;
G2L["4a"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4a"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4a"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["4a"]["BackgroundTransparency"] = 0.5;
G2L["4a"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["4a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4a"]["Text"] = [[]];
G2L["4a"]["Name"] = [[Gun]];
G2L["4a"]["Visible"] = false;


-- StarterGui.AttachmentMenu.Scripts.Templates.Gun.UICorner
G2L["4b"] = Instance.new("UICorner", G2L["4a"]);
G2L["4b"]["CornerRadius"] = UDim.new(0, 15);


-- StarterGui.AttachmentMenu.Scripts.Templates.Gun.GunName
G2L["4c"] = Instance.new("TextLabel", G2L["4a"]);
G2L["4c"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
G2L["4c"]["ZIndex"] = 2;
G2L["4c"]["BorderSizePixel"] = 0;
G2L["4c"]["TextSize"] = 14;
G2L["4c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4c"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["4c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4c"]["BackgroundTransparency"] = 1;
G2L["4c"]["AnchorPoint"] = Vector2.new(0, 1);
G2L["4c"]["Size"] = UDim2.new(1, 0, 0, 35);
G2L["4c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4c"]["Text"] = [[Sniper Rifle]];
G2L["4c"]["Name"] = [[GunName]];
G2L["4c"]["Position"] = UDim2.new(0, 0, 1, 0);


-- StarterGui.AttachmentMenu.Scripts.Templates.Gun.ViewportFrame
G2L["4d"] = Instance.new("ViewportFrame", G2L["4a"]);
G2L["4d"]["BorderSizePixel"] = 0;
G2L["4d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4d"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["4d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4d"]["BackgroundTransparency"] = 1;


-- StarterGui.AttachmentMenu.Scripts.Templates.Attachment
G2L["4e"] = Instance.new("TextButton", G2L["49"]);
G2L["4e"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
G2L["4e"]["BorderSizePixel"] = 0;
G2L["4e"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["4e"]["TextSize"] = 18;
G2L["4e"]["TextColor3"] = Color3.fromRGB(151, 151, 151);
G2L["4e"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4e"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["4e"]["BackgroundTransparency"] = 1;
G2L["4e"]["Size"] = UDim2.new(1, 0, 0, 40);
G2L["4e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4e"]["Text"] = [[Barrel]];
G2L["4e"]["Name"] = [[Attachment]];
G2L["4e"]["Visible"] = false;


-- StarterGui.AttachmentMenu.Scripts.Templates.Attachment.UIPadding
G2L["4f"] = Instance.new("UIPadding", G2L["4e"]);
G2L["4f"]["PaddingTop"] = UDim.new(0, 20);
G2L["4f"]["PaddingRight"] = UDim.new(0, 20);
G2L["4f"]["PaddingLeft"] = UDim.new(0, 20);
G2L["4f"]["PaddingBottom"] = UDim.new(0, 20);


-- StarterGui.AttachmentMenu.Scripts.Templates.Attachment.Underline
G2L["50"] = Instance.new("Frame", G2L["4e"]);
G2L["50"]["BorderSizePixel"] = 0;
G2L["50"]["BackgroundColor3"] = Color3.fromRGB(101, 101, 101);
G2L["50"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["50"]["Size"] = UDim2.new(1, 0, 0, 1);
G2L["50"]["Position"] = UDim2.new(0.5, 0, 0, 20);
G2L["50"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["50"]["Name"] = [[Underline]];


-- StarterGui.AttachmentMenu.Scripts.ToolStorage
G2L["51"] = Instance.new("Folder", G2L["46"]);
G2L["51"]["Name"] = [[ToolStorage]];


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

G2L_MODULES[G2L["48"]] = {
Closure = function()
    local script = G2L["48"];local TabControl = {}
TabControl.__index = TabControl

function TabControl.new(config)
	local self = setmetatable({}, TabControl)
	
	self.CurrentTab = nil
	self.LastActivatedTab = nil
	
	self.TabSessions = {}
	
	return self
end

function TabControl:_validateConfig(defaults, newConfig)
	for key, value in pairs(defaults) do
		if newConfig[key] == nil then
			newConfig[key] = value
		end
	end
	return newConfig
end

function TabControl:AddTab(button, name, onActivate, onDeactivate, selected)
	local active = false
	
	if selected == nil then
		selected = true
	end
	
	local session = {
		name = name,
		temp = button,
		
		onActive = function(currentTab)
			self.CurrentTab = currentTab
			currentTab.active = true
			active = true
			if type(onActivate) == "function" then
				onActivate(currentTab)
			end
		end,
		onDeactive = function(currentTab)
			active = false
			currentTab.active = false
			if type(onDeactivate) == "function" then
				onDeactivate(currentTab)
			end
		end,
		
		active = active,
	}
	
	if (not self.CurrentTab) and selected then
		session.onActive(session)
	end
	
	if typeof(button) == "Instance" then
		if button:IsA("TextButton") or button:IsA("ImageButton") then
			button.Activated:Connect(function()
				if active then
					return
				else
					if self.CurrentTab then
						self.CurrentTab.onDeactive(self.CurrentTab)
					end
					session.onActive(session)
				end
			end)
		end
	end
	
	return session
end

function TabControl:SwitchTab(session)
	if self.CurrentTab == session and type(session) ~= "table" then
		return
	end
	self.CurrentTab.onDeactive(self.CurrentTab)
	session.onActive(session)
	self.CurrentTab = session
end

return TabControl

end;
};
-- StarterGui.AttachmentMenu.Scripts.Handler
local function C_47()
local script = G2L["47"];
	local Players = game:GetService("Players")
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local UserInputService = game:GetService("UserInputService")
	local RunService = game:GetService("RunService")
	
	local engine = ReplicatedStorage:FindFirstChild("ACS_Engine")
	local acsModules = engine:WaitForChild("Modules")
	local attachmentModules = engine:WaitForChild("AttModules")
	local attachmentModels = engine:WaitForChild("AttModels")
	local gunModels = engine:WaitForChild("GunModels")
	
	local scripts = script.Parent
	local gui = scripts.Parent
	local graphical = gui.Graphical
	
	local toolStorage = scripts.ToolStorage
	local templates = scripts.Templates
	
	local tabControl = require(script.TabControl).new()
	local attTabControl = require(script.TabControl).new()
	local utils = require(acsModules.Utilities)
	
	local main = graphical.Main
	local menu = main.Menu
	local top = menu.Top
	local pages = menu.Pages
	
	local guns = pages.Guns
	local attachments = pages.Attachments
	
	local localPlayer = Players.LocalPlayer
	
	local freeMode = true
	
	local predefinedAttachments = {
		-- Barrel Attachments
		["Muzzle Brake"] = "BarrelAtt",
		["Compensator"] = "BarrelAtt",
		["Suppressor"] = "BarrelAtt",
		["Flash Hider"] = "BarrelAtt",
	
		-- Sight Attachments
		["Red Dot"] = "SightAtt",
		["ACOG Scope"] = "SightAtt",
		["Sniper Scope"] = "SightAtt",
	
		-- Underbarrel Attachments
		["Vertical Grip"] = "UnderBarrelAtt",
		["Angled Grip"] = "UnderBarrelAtt",
		["Bipod"] = "UnderBarrelAtt",
		["Laser Sight"] = "UnderBarrelAtt",
		["Flashlight"] = "UnderBarrelAtt",
	
		-- Other Attachments
		["Infrared Module"] = "OtherAtt"
	}
	local modTable = {
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
	local storage = {
		model = nil,
		weapon = nil,
		gunData = nil,
		
		orientation = nil,
		size = nil,
		
		mainViewport = nil,
	}
	local attachmentData = {
		SightAtt = nil,
		BarrelAtt = nil,
		UnderBarrelAtt = nil,
		OtherAtt = nil,
	}
	local attachmentTypes = {
		SightAtt = nil,
		BarrelAtt = nil,
		UnderBarrelAtt = nil,
		OtherAtt = nil,
	}
	local rotationStates = {}
	
	local gunsTab = tabControl:AddTab(nil, "Guns", function()
		guns.Visible = true
	end, function()
		guns.Visible = false
	end)
	local attachmentsTab = tabControl:AddTab(nil, "Attachments", function()
		attachments.Visible = true
		top.Back.Visible = true
	end, function()
		attachments.Visible = false
	end)
	
	top.Close.Activated:Connect(function()
		close(true)
	end)
	top.Back.Activated:Connect(function()
		tabControl:SwitchTab(gunsTab)
		top.Back.Visible = false
		close()
	end)
	pages.Attachments.Center.Finish.Activated:Connect(function()
		close(true)
	end)
	function close(closeMenu)
		if storage.weapon then
			storage.weapon.Parent = localPlayer.Backpack
		end
	
		unsetWeapon()
		updateGunInfo()
		
		if closeMenu then
			gui:Destroy()
		end
	end
	function setupGun()
		for _, tool in pairs(toolStorage:GetChildren()) do
			if tool:IsA("Tool") and require(tool.ACS_Settings).Type == 'Gun' then
				storage.weapon = tool
				storage.gunData = require(tool.ACS_Settings)
	
				storage.model = gunModels:WaitForChild(tool.Name):Clone()
				storage.model.PrimaryPart = storage.model.Handle
				
				local nodes = storage.model:FindFirstChild("Nodes")
				
				if nodes then
					for L_213_forvar1, L_214_forvar2 in pairs(nodes:GetChildren()) do
						if L_214_forvar2:IsA('BasePart') then
							utils.Weld(L_214_forvar2, storage.model:WaitForChild("Handle"))
							L_214_forvar2.Anchored = false
							L_214_forvar2.CanCollide = false
						end
					end;
				end
	
				loadAttachment(storage.model)
				setupViewport(pages.Attachments.Center.ViewportFrame, storage.model, true)
				updateGunInfo()
				
				local function canVisible(button)
					if nodes then
						local name = button.Name
						if nodes:FindFirstChild(name) then
							button.Visible = true
						else
							button.Visible = false
						end
					else
						button.Visible = false
					end
				end
	
				canVisible(pages.Attachments.Center.AttachmentTypes.Barrel)
				canVisible(pages.Attachments.Center.AttachmentTypes.Other)
				canVisible(pages.Attachments.Center.AttachmentTypes.Sight)
				canVisible(pages.Attachments.Center.AttachmentTypes.UnderBarrel)
			else
				storage.weapon = nil
				storage.gunData = nil
				storage.model = nil
				
				updateGunInfo()
			end
		end
	
	end
	function unsetWeapon()
		if storage.model then
			storage.model:Destroy()
			storage.model = nil
		end
		storage.weapon = nil
		storage.gunData = nil
		
		resetMods()
	end
	function resetMods()
		modTable.camRecoilMod.RecoilUp 		= 1
		modTable.camRecoilMod.RecoilLeft 	= 1
		modTable.camRecoilMod.RecoilRight 	= 1
	
		modTable.gunRecoilMod.RecoilUp 		= 1
		modTable.gunRecoilMod.RecoilTilt 	= 1
		modTable.gunRecoilMod.RecoilLeft 	= 1
		modTable.gunRecoilMod.RecoilRight 	= 1
	
		modTable.AimRM			= 1
		modTable.SpreadRM 		= 1
		modTable.DamageMod 		= 1
		modTable.minDamageMod 	= 1
	
		modTable.MinRecoilPower 		= 1
		modTable.MaxRecoilPower 		= 1
		modTable.RecoilPowerStepAmount 	= 1
	
		modTable.MinSpread 					= 1
		modTable.MaxSpread 					= 1
		modTable.AimInaccuracyStepAmount 	= 1
		modTable.AimInaccuracyDecrease 		= 1
		modTable.WalkMult 					= 1
		modTable.MuzzleVelocity 			= 1
	end
	function setMods(data)
		modTable.camRecoilMod.RecoilUp 		= modTable.camRecoilMod.RecoilUp * data.camRecoil.RecoilUp
		modTable.camRecoilMod.RecoilLeft 	= modTable.camRecoilMod.RecoilLeft * data.camRecoil.RecoilLeft
		modTable.camRecoilMod.RecoilRight 	= modTable.camRecoilMod.RecoilRight * data.camRecoil.RecoilRight
	
		modTable.gunRecoilMod.RecoilUp 		= modTable.gunRecoilMod.RecoilUp * data.gunRecoil.RecoilUp
		modTable.gunRecoilMod.RecoilTilt 	= modTable.gunRecoilMod.RecoilTilt * data.gunRecoil.RecoilTilt
		modTable.gunRecoilMod.RecoilLeft 	= modTable.gunRecoilMod.RecoilLeft * data.gunRecoil.RecoilLeft
		modTable.gunRecoilMod.RecoilRight 	= modTable.gunRecoilMod.RecoilRight * data.gunRecoil.RecoilRight
	
		modTable.AimRM						= modTable.AimRM * data.AimRecoilReduction
		modTable.SpreadRM 					= modTable.SpreadRM * data.AimSpreadReduction
		modTable.DamageMod 					= modTable.DamageMod * data.DamageMod
		modTable.minDamageMod 				= modTable.minDamageMod * data.minDamageMod
	
		modTable.MinRecoilPower 			= modTable.MinRecoilPower * data.MinRecoilPower
		modTable.MaxRecoilPower 			= modTable.MaxRecoilPower * data.MaxRecoilPower
		modTable.RecoilPowerStepAmount 		= modTable.RecoilPowerStepAmount * data.RecoilPowerStepAmount
	
		modTable.MinSpread 					= modTable.MinSpread * data.MinSpread
		modTable.MaxSpread 					= modTable.MaxSpread * data.MaxSpread
		modTable.AimInaccuracyStepAmount 	= modTable.AimInaccuracyStepAmount * data.AimInaccuracyStepAmount
		modTable.AimInaccuracyDecrease 		= modTable.AimInaccuracyDecrease * data.AimInaccuracyDecrease
		modTable.WalkMult 					= modTable.WalkMult * data.WalkMult
		modTable.MuzzleVelocity 			= modTable.MuzzleVelocity * data.MuzzleVelocityMod
	end
	function loadAttachment(weapon)
		if weapon and weapon:FindFirstChild("Nodes") then
			local function setAtt(name, attType, weldFunc)
				if weapon.Nodes:FindFirstChild(name) and storage.gunData[attType] ~= "" then
					attachmentData[attType] =  require(attachmentModules[storage.gunData[attType]])
					attachmentTypes[attType] = attachmentModels[storage.gunData[attType]]:Clone()
					attachmentTypes[attType].Parent = weapon
					attachmentTypes[attType]:SetPrimaryPartCFrame(weapon.Nodes[name].CFrame)
					
					if name == "Sight" then
						weapon.AimPart.CFrame = attachmentTypes[attType].AimPos.CFrame
					end
	
					setMods(attachmentData[attType])
					
					if type(weldFunc) == "function" then
						weldFunc(weapon, attachmentTypes[attType])
					end
				end
			end
			setAtt("Sight", "SightAtt", function(weapon, attachment)
				for L_209_forvar1, L_210_forvar2 in pairs(weapon:GetChildren()) do
					if L_210_forvar2.Name == "IS" then
						L_210_forvar2.Transparency = 1
					end
				end
	
				for L_209_forvar1, L_210_forvar2 in pairs(attachment:GetChildren()) do
					if L_210_forvar2:IsA('BasePart') then
						utils.Weld(L_210_forvar2, weapon:WaitForChild("Handle"))
						L_210_forvar2.Anchored = false
						L_210_forvar2.CanCollide = false
					end
				end
			end)
	
			setAtt("Barrel", "BarrelAtt", function(weapon, attachment)
				for L_209_forvar1, L_210_forvar2 in pairs(attachment:GetChildren()) do
					if L_210_forvar2:IsA('BasePart') then
						utils.Weld(L_210_forvar2, weapon:WaitForChild("Handle"))
						L_210_forvar2.Anchored = false
						L_210_forvar2.CanCollide = false
					end
				end
			end)
	
			setAtt("UnderBarrel", "UnderBarrelAtt", function(weapon, attachment)
				for L_209_forvar1, L_210_forvar2 in pairs(attachment:GetChildren()) do
					if L_210_forvar2:IsA('BasePart') then
						utils.Weld(L_210_forvar2, weapon:WaitForChild("Handle"))
						L_210_forvar2.Anchored = false
						L_210_forvar2.CanCollide = false
					end
				end
			end)
	
			setAtt("Other", "OtherAtt", function(weapon, attachment)
				for L_209_forvar1, L_210_forvar2 in pairs(attachment:GetChildren()) do
					if L_210_forvar2:IsA('BasePart') then
						utils.Weld(L_210_forvar2, weapon:WaitForChild("Handle"))
						L_210_forvar2.Anchored = false
						L_210_forvar2.CanCollide = false
					end
				end
			end)
		end
	end
	function unloadAttachment(weapon)
		if weapon and weapon:FindFirstChild("Nodes") then
			local function deleteAtt(name, attType)
				if weapon.Nodes:FindFirstChild(name) and attachmentTypes[attType] then
					attachmentTypes[attType]:Destroy()
					attachmentTypes[attType] = nil
					attachmentData[attType] = nil
				end
			end
			
			deleteAtt("Sight", "SightAtt")
			deleteAtt("Barrel", "BarrelAtt")
			deleteAtt("UnderBarrel", "UnderBarrelAtt")
			deleteAtt("Other", "OtherAtt")
		end
	end
	function updateGunInfo()
		local infoFrame = pages.Attachments.GunInfo.Scroll
		
		local function fillUpdate(button, value1, value2, maxValue)
			local fillBar = button:FindFirstChild("FillBar")
			if fillBar then
				local percent1 = math.clamp(value1 / maxValue, 0, 1)
				local percent2 = math.clamp(value2 / maxValue, 0, 1)
	
				fillBar.Fill1.Size = UDim2.new(percent1, 0, 1, 0)
				fillBar.Fill2.Size = UDim2.new(percent2, 0, 1, 0)
			end
		end
		
		local function ezRichText(text, props)
			local richText = text
	
			if props.bold then
				richText = `<b>{richText}</b>`
			end
			if props.italic then
				richText = `<i>{richText}</i>`
			end
			if props.color then
				richText = `<font color="#{props.color:ToHex()}">{richText}</font>`
			end
	
			return richText
		end
		
		if storage.gunData then
			pages.Attachments.GunInfo.Visible = true
			pages.Attachments.Center.GunName.Visible = true
			infoFrame.Optic.Text = `{ezRichText("Optic: ", {color = Color3.fromRGB(255, 255, 255), bold = true})}{storage.gunData.SightAtt}`
			infoFrame.Barrel.Text = `{ezRichText("Barrel: ", {color = Color3.fromRGB(255, 255, 255), bold = true})}{storage.gunData.BarrelAtt}`
			infoFrame.UnderBarrel.Text = `{ezRichText("UnderBarrel: ", {color = Color3.fromRGB(255, 255, 255), bold = true})}{storage.gunData.UnderBarrelAtt}`
			infoFrame.Other.Text = `{ezRichText("Other: ", {color = Color3.fromRGB(255, 255, 255), bold = true})}{storage.gunData.OtherAtt}`
			
			infoFrame.Damage.Text = `{ezRichText("Damage: ", {color = Color3.fromRGB(255, 255, 255), bold = true})}{storage.gunData.LimbDamage[1]} - {storage.gunData.LimbDamage[2]}`
			infoFrame.MuzzleVelocity.Text = `{ezRichText("Velocity: ", {color = Color3.fromRGB(255, 255, 255), bold = true})}{storage.gunData.MuzzleVelocity}`
			
			pages.Attachments.Center.GunName.Text = storage.gunData.gunName
			
			fillUpdate(infoFrame.Damage, storage.gunData.LimbDamage[1], storage.gunData.LimbDamage[2], 100)
			fillUpdate(infoFrame.MuzzleVelocity, storage.gunData.MuzzleVelocity, storage.gunData.MuzzleVelocity, 3000)
		else
			pages.Attachments.GunInfo.Visible = false
			pages.Attachments.Center.GunName.Visible = false
		end
	end
	function setAttachment(attType, attName)
		if storage.gunData[attType] == attName then
			storage.gunData[attType] = "" else
			storage.gunData[attType] = attName
		end
		unsetWeapon()
		setupGun()
		updateGunInfo()
	end
	function rotateHandler(viewportFrame, model)
		if not model then
			return
		end
		if not model.PrimaryPart then
			model.PrimaryPart = model:FindFirstChildWhichIsA("BasePart") or model:FindFirstChild("Handle")
		end
	
		local centerCFrame = select(1, model:GetBoundingBox())
		local state = rotationStates[model.Name] or {
			rotationX = 0,
			rotationY = 0,
			zoomDistance = 0,
			dragging = false,
			lastPos = nil,
			connections = {},
		}
		rotationStates[model.Name] = state
	
		local function updateModelTransform()
			local rotation = CFrame.Angles(math.rad(state.rotationX), math.rad(state.rotationY), 0)
			local offset = Vector3.new(0, 0, state.zoomDistance)
			local camPosition = (centerCFrame.Position + rotation:VectorToWorldSpace(offset))
	
			viewportFrame.CurrentCamera.CFrame = CFrame.new(camPosition, centerCFrame.Position)
			if model and model.PrimaryPart then
				model:SetPrimaryPartCFrame(centerCFrame * rotation)
			end
		end
	
		-- Connect input
		local inputBegan = UserInputService.InputBegan:Connect(function(input, gp)
			if gp then return end
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				local mousePos = UserInputService:GetMouseLocation()
				local vpPos = viewportFrame.AbsolutePosition
				local vpSize = viewportFrame.AbsoluteSize
	
				if mousePos.X >= vpPos.X and mousePos.X <= vpPos.X + vpSize.X and
					mousePos.Y >= vpPos.Y and mousePos.Y <= vpPos.Y + vpSize.Y then
					state.dragging = true
					state.lastPos = input.Position
				end
			end
		end)
	
		local inputChanged = UserInputService.InputChanged:Connect(function(input)
			if state.dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
				local delta = input.Position - state.lastPos
				state.rotationY += delta.X * 0.3
				state.rotationX += delta.Y * 0.3
				state.rotationX = math.clamp(state.rotationX, -80, 80)
				state.lastPos = input.Position
				updateModelTransform()
			end
		end)
	
		local inputEnded = UserInputService.InputEnded:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				state.dragging = false
			end
		end)
		
		--[[
		local wheelMoved = UserInputService.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseWheel then
				state.zoomDistance -= input.Position.Z * 0.5
				state.zoomDistance = math.clamp(state.zoomDistance, 1, 50)
				updateModelTransform()
			end
		end)
		]]
	
		-- Initial transform
		updateModelTransform()
	
		-- Store connections for cleanup
		table.insert(state.connections, inputBegan)
		table.insert(state.connections, inputChanged)
		table.insert(state.connections, inputEnded)
		--table.insert(state.connections, wheelMoved)
	
		-- Return a disconnect function
		return function()
			for _, conn in ipairs(state.connections) do
				if conn.Connected then conn:Disconnect() end
			end
			state.connections = {}
		end
	end
	function setupViewport(viewport, model, rotate)
		local viewportCamera = Instance.new("Camera")
		viewport.CurrentCamera = viewportCamera
		viewportCamera.Parent = viewport
	
		if not model.PrimaryPart then
			model.PrimaryPart = model:FindFirstChildWhichIsA("BasePart") or model:FindFirstChild("Handle")
		end
	
		local centerCFrame, size = model:GetBoundingBox()
		model:SetPrimaryPartCFrame(centerCFrame)
		model.Parent = viewport
	
		local cameraDistance = math.max(size.X, size.Y, size.Z) * 1
		local cameraPosition = centerCFrame.Position + Vector3.new(0, 0, cameraDistance)
		viewportCamera.CFrame = CFrame.new(cameraPosition, centerCFrame.Position)
	
		if rotate then
			rotateHandler(viewport, model)
		end
	
		return viewport
	end
	
	function determineType(model)
		if not (model and model:IsA("Model")) then
			return nil
		end
		
		if freeMode then
			return "Free"
		end
	
		local predefinedType = predefinedAttachments[model.Name]
		if predefinedType then
			return predefinedType
		end
	
		local attModuleScript = attachmentModels:FindFirstChild(model.Name)
		if attModuleScript then
			local success, attModule = pcall(require, attModuleScript)
			if success and type(attModule) == "table" then
				if attModule.IsBipod
					or attModule.EnableLaser
					or attModule.EnableFlashlight
				then
					return "UnderBarrelAtt"
				end
				if (attModule.SightZoom and attModule.SightZoom > 0)
					or (attModule.SightZoom2 and attModule.SightZoom2 > 0)
				then
					return "SightAtt"
				end
				if attModule.IsSuppressor
					or attModule.IsFlashHider
				then
					return "BarrelAtt"
				end
				if attModule.InfraRed then
					return "OtherAtt"
				end
			end
		end
	
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
	function createAttSection(name, attType)
		local attButton = pages.Attachments.Center.AttachmentTypes:FindFirstChild(name)
		if attButton then
			local frame = Instance.new("Frame", pages.Attachments.AttachmentMenu.Scroll)
			frame.BackgroundTransparency = 1
			frame.Size = UDim2.new(1,0,0,0)
			frame.AutomaticSize = Enum.AutomaticSize.Y
			frame.Name = attType
	
			local list = Instance.new("UIListLayout", frame)
	
			for _, attachment in ipairs(attachmentModels:GetChildren()) do
				local typeAtt = determineType(attachment)
				if typeAtt and frame.Name == typeAtt then
					local temp = templates.Attachment:Clone()
					temp.Name = attachment.Name
					temp.Text = attachment.Name
					temp.Visible = true
					temp.Parent = frame
					
					temp.Activated:Connect(function()
						pages.Attachments.Center.Finish.Visible = true
						setAttachment(attType, attachment.Name)
					end)
				elseif typeAtt == "Free" then
					local temp = templates.Attachment:Clone()
					temp.Name = attachment.Name
					temp.Text = attachment.Name
					temp.Visible = true
					temp.Parent = frame
	
					temp.Activated:Connect(function()
						pages.Attachments.Center.Finish.Visible = true
						setAttachment(attType, attachment.Name)
					end)
				end
			end
			
			attTabControl:AddTab(attButton, name, function()
				frame.Visible = true
				attButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
				attButton.TextColor3 = Color3.fromRGB(255, 255, 255)
				pages.Attachments.AttachmentMenu.Visible = true
			end, function()
				frame.Visible = false
				attButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
				attButton.TextColor3 = Color3.fromRGB(150, 150, 150)
			end, false)
			
			frame.Visible = false
	
			return frame
		end
		return nil
	end
	function updateGuns()
		for _, button in ipairs(pages.Guns.Scroll:GetChildren()) do
			if button:IsA("TextButton") then
				button:Destroy()
			end
		end
		
		for _, tool in ipairs(localPlayer.Backpack:GetChildren()) do
			if tool:IsA("Tool") and tool:FindFirstChild("ACS_Settings") then
				if require(tool.ACS_Settings).Type == 'Gun' then
					local temp = templates.Gun:Clone()
					temp.GunName.Text = tool.Name
					temp.Name = tool.Name
					temp.Visible = true
					temp.Parent = pages.Guns.Scroll
	
					local gunModel = gunModels:FindFirstChild(tool.Name)
					if gunModel then
						gunModel = gunModel:Clone()
						setupViewport(temp.ViewportFrame, gunModel, false)
					end
	
					temp.Activated:Connect(function()
						tool.Parent = toolStorage
						setupGun()
						tabControl:SwitchTab(attachmentsTab)
					end)
				end
			end
		end
	end
	
	createAttSection("Barrel", "BarrelAtt")
	createAttSection("Other", "OtherAtt")
	createAttSection("Sight", "SightAtt")
	createAttSection("UnderBarrel", "UnderBarrelAtt")
	
	updateGuns()
	localPlayer.Backpack.ChildAdded:Connect(function(tool)
		if tool:IsA("Tool") then
			updateGuns()
		end
	end)
	localPlayer.Backpack.ChildRemoved:Connect(function(tool)
		if tool:IsA("Tool") then
			updateGuns()
		end
	end)
end;
task.spawn(C_47);

return G2L["1"]
