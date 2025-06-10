--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88    @uniquadev
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER 
]=]

-- Instances: 143 | Scripts: 1 | Modules: 1 | Tags: 0
local G2L = {};

-- StarterGui.AttachmentMenu
G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["IgnoreGuiInset"] = true;
G2L["1"]["ScreenInsets"] = Enum.ScreenInsets.DeviceSafeInsets;
G2L["1"]["Name"] = [[AttachmentMenu]];
G2L["1"]["ResetOnSpawn"] = false;


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
G2L["f"]["Size"] = UDim2.new(1, 0, 1, -50);
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
G2L["11"]["CellPadding"] = UDim2.new(0, 10, 0, 10);


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Guns.ModSelection
G2L["12"] = Instance.new("Frame", G2L["e"]);
G2L["12"]["BorderSizePixel"] = 0;
G2L["12"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["12"]["AnchorPoint"] = Vector2.new(0, 1);
G2L["12"]["Size"] = UDim2.new(1, 0, 0, 50);
G2L["12"]["Position"] = UDim2.new(0, 0, 1, 0);
G2L["12"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["12"]["Name"] = [[ModSelection]];
G2L["12"]["BackgroundTransparency"] = 1;


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Guns.ModSelection.Attachments
G2L["13"] = Instance.new("TextButton", G2L["12"]);
G2L["13"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
G2L["13"]["BorderSizePixel"] = 0;
G2L["13"]["TextSize"] = 18;
G2L["13"]["TextColor3"] = Color3.fromRGB(151, 151, 151);
G2L["13"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["13"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["13"]["BackgroundTransparency"] = 0.5;
G2L["13"]["Size"] = UDim2.new(0.25, 0, 0, 40);
G2L["13"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["13"]["Text"] = [[Attachments]];
G2L["13"]["Name"] = [[Attachments]];


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Guns.ModSelection.Attachments.UIPadding
G2L["14"] = Instance.new("UIPadding", G2L["13"]);
G2L["14"]["PaddingTop"] = UDim.new(0, 20);
G2L["14"]["PaddingRight"] = UDim.new(0, 20);
G2L["14"]["PaddingLeft"] = UDim.new(0, 20);
G2L["14"]["PaddingBottom"] = UDim.new(0, 20);


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Guns.ModSelection.Attachments.Underline
G2L["15"] = Instance.new("Frame", G2L["13"]);
G2L["15"]["BorderSizePixel"] = 0;
G2L["15"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["15"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["15"]["Size"] = UDim2.new(1, 40, 0, 1);
G2L["15"]["Position"] = UDim2.new(0.5, 0, 0, 20);
G2L["15"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["15"]["Name"] = [[Underline]];


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Guns.ModSelection.UIListLayout
G2L["16"] = Instance.new("UIListLayout", G2L["12"]);
G2L["16"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["16"]["Padding"] = UDim.new(0, 10);
G2L["16"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["16"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Guns.ModSelection.Modifications
G2L["17"] = Instance.new("TextButton", G2L["12"]);
G2L["17"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
G2L["17"]["BorderSizePixel"] = 0;
G2L["17"]["TextSize"] = 18;
G2L["17"]["TextColor3"] = Color3.fromRGB(151, 151, 151);
G2L["17"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["17"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["17"]["BackgroundTransparency"] = 0.5;
G2L["17"]["Size"] = UDim2.new(0.25, 0, 0, 40);
G2L["17"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["17"]["Text"] = [[Modifications]];
G2L["17"]["Name"] = [[Modifications]];


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Guns.ModSelection.Modifications.UIPadding
G2L["18"] = Instance.new("UIPadding", G2L["17"]);
G2L["18"]["PaddingTop"] = UDim.new(0, 20);
G2L["18"]["PaddingRight"] = UDim.new(0, 20);
G2L["18"]["PaddingLeft"] = UDim.new(0, 20);
G2L["18"]["PaddingBottom"] = UDim.new(0, 20);


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Guns.ModSelection.Modifications.Underline
G2L["19"] = Instance.new("Frame", G2L["17"]);
G2L["19"]["BorderSizePixel"] = 0;
G2L["19"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["19"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["19"]["Size"] = UDim2.new(1, 40, 0, 1);
G2L["19"]["Position"] = UDim2.new(0.5, 0, 0, 20);
G2L["19"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["19"]["Name"] = [[Underline]];


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments
G2L["1a"] = Instance.new("Frame", G2L["d"]);
G2L["1a"]["Visible"] = false;
G2L["1a"]["BorderSizePixel"] = 0;
G2L["1a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a"]["AnchorPoint"] = Vector2.new(0.5, 1);
G2L["1a"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["1a"]["Position"] = UDim2.new(0.5, 0, 1, 0);
G2L["1a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a"]["Name"] = [[Attachments]];
G2L["1a"]["BackgroundTransparency"] = 1;


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.AttachmentMenu
G2L["1b"] = Instance.new("Frame", G2L["1a"]);
G2L["1b"]["Visible"] = false;
G2L["1b"]["BorderSizePixel"] = 0;
G2L["1b"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1b"]["Size"] = UDim2.new(0, 150, 1, 0);
G2L["1b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1b"]["Name"] = [[AttachmentMenu]];
G2L["1b"]["BackgroundTransparency"] = 0.5;


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.AttachmentMenu.UICorner
G2L["1c"] = Instance.new("UICorner", G2L["1b"]);
G2L["1c"]["CornerRadius"] = UDim.new(0, 15);


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.AttachmentMenu.Title
G2L["1d"] = Instance.new("TextLabel", G2L["1b"]);
G2L["1d"]["ZIndex"] = 2;
G2L["1d"]["BorderSizePixel"] = 0;
G2L["1d"]["TextSize"] = 20;
G2L["1d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1d"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1d"]["BackgroundTransparency"] = 1;
G2L["1d"]["Size"] = UDim2.new(1, 0, 0, 50);
G2L["1d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1d"]["Text"] = [[Attachments]];
G2L["1d"]["Name"] = [[Title]];


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.AttachmentMenu.UIStroke
G2L["1e"] = Instance.new("UIStroke", G2L["1b"]);
G2L["1e"]["Transparency"] = 0.5;
G2L["1e"]["Thickness"] = 2;
G2L["1e"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.AttachmentMenu.UIStroke.UIGradient
G2L["1f"] = Instance.new("UIGradient", G2L["1e"]);
G2L["1f"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(0, 0, 0)),ColorSequenceKeypoint.new(0.750, Color3.fromRGB(0, 0, 0)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 255, 255))};


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.AttachmentMenu.Scroll
G2L["20"] = Instance.new("ScrollingFrame", G2L["1b"]);
G2L["20"]["Active"] = true;
G2L["20"]["BorderSizePixel"] = 0;
G2L["20"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["20"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["20"]["Name"] = [[Scroll]];
G2L["20"]["AnchorPoint"] = Vector2.new(0, 1);
G2L["20"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
G2L["20"]["Size"] = UDim2.new(1, 0, 1, -50);
G2L["20"]["Position"] = UDim2.new(0, 0, 1, 0);
G2L["20"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["20"]["ScrollBarThickness"] = 2;
G2L["20"]["BackgroundTransparency"] = 1;


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.AttachmentMenu.Scroll.UIListLayout
G2L["21"] = Instance.new("UIListLayout", G2L["20"]);
G2L["21"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["21"]["Padding"] = UDim.new(0, 10);
G2L["21"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.GunInfo
G2L["22"] = Instance.new("Frame", G2L["1a"]);
G2L["22"]["BorderSizePixel"] = 0;
G2L["22"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["22"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["22"]["Size"] = UDim2.new(0, 150, 1, 0);
G2L["22"]["Position"] = UDim2.new(1, 0, 0, 0);
G2L["22"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["22"]["Name"] = [[GunInfo]];
G2L["22"]["BackgroundTransparency"] = 0.5;


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.GunInfo.UICorner
G2L["23"] = Instance.new("UICorner", G2L["22"]);
G2L["23"]["CornerRadius"] = UDim.new(0, 15);


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.GunInfo.Title
G2L["24"] = Instance.new("TextLabel", G2L["22"]);
G2L["24"]["ZIndex"] = 2;
G2L["24"]["BorderSizePixel"] = 0;
G2L["24"]["TextSize"] = 20;
G2L["24"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["24"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["24"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["24"]["BackgroundTransparency"] = 1;
G2L["24"]["Size"] = UDim2.new(1, 0, 0, 50);
G2L["24"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["24"]["Text"] = [[Gun Info]];
G2L["24"]["Name"] = [[Title]];


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.GunInfo.UIStroke
G2L["25"] = Instance.new("UIStroke", G2L["22"]);
G2L["25"]["Transparency"] = 0.5;
G2L["25"]["Thickness"] = 2;
G2L["25"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.GunInfo.UIStroke.UIGradient
G2L["26"] = Instance.new("UIGradient", G2L["25"]);
G2L["26"]["Rotation"] = 180;
G2L["26"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(0, 0, 0)),ColorSequenceKeypoint.new(0.750, Color3.fromRGB(0, 0, 0)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 255, 255))};


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.GunInfo.Scroll
G2L["27"] = Instance.new("ScrollingFrame", G2L["22"]);
G2L["27"]["Active"] = true;
G2L["27"]["BorderSizePixel"] = 0;
G2L["27"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["27"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["27"]["Name"] = [[Scroll]];
G2L["27"]["AnchorPoint"] = Vector2.new(0, 1);
G2L["27"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
G2L["27"]["Size"] = UDim2.new(1, 0, 1, -50);
G2L["27"]["Position"] = UDim2.new(0, 0, 1, 0);
G2L["27"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["27"]["ScrollBarThickness"] = 2;
G2L["27"]["BackgroundTransparency"] = 1;


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.GunInfo.Scroll.Optic
G2L["28"] = Instance.new("TextButton", G2L["27"]);
G2L["28"]["RichText"] = true;
G2L["28"]["BorderSizePixel"] = 0;
G2L["28"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["28"]["TextSize"] = 18;
G2L["28"]["TextColor3"] = Color3.fromRGB(151, 151, 151);
G2L["28"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["28"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["28"]["BackgroundTransparency"] = 1;
G2L["28"]["Size"] = UDim2.new(1, 0, 0, 40);
G2L["28"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["28"]["Text"] = [[Optic: None]];
G2L["28"]["Name"] = [[Optic]];


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.GunInfo.Scroll.Optic.UIPadding
G2L["29"] = Instance.new("UIPadding", G2L["28"]);
G2L["29"]["PaddingTop"] = UDim.new(0, 20);
G2L["29"]["PaddingRight"] = UDim.new(0, 10);
G2L["29"]["PaddingLeft"] = UDim.new(0, 10);
G2L["29"]["PaddingBottom"] = UDim.new(0, 20);


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.GunInfo.Scroll.Barrel
G2L["2a"] = Instance.new("TextButton", G2L["27"]);
G2L["2a"]["RichText"] = true;
G2L["2a"]["BorderSizePixel"] = 0;
G2L["2a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["2a"]["TextSize"] = 18;
G2L["2a"]["TextColor3"] = Color3.fromRGB(151, 151, 151);
G2L["2a"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2a"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["2a"]["BackgroundTransparency"] = 1;
G2L["2a"]["Size"] = UDim2.new(1, 0, 0, 40);
G2L["2a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2a"]["Text"] = [[Barrel: None]];
G2L["2a"]["Name"] = [[Barrel]];
G2L["2a"]["Position"] = UDim2.new(0, 0, 0, 40);


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.GunInfo.Scroll.Barrel.UIPadding
G2L["2b"] = Instance.new("UIPadding", G2L["2a"]);
G2L["2b"]["PaddingTop"] = UDim.new(0, 20);
G2L["2b"]["PaddingRight"] = UDim.new(0, 10);
G2L["2b"]["PaddingLeft"] = UDim.new(0, 10);
G2L["2b"]["PaddingBottom"] = UDim.new(0, 20);


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.GunInfo.Scroll.UnderBarrel
G2L["2c"] = Instance.new("TextButton", G2L["27"]);
G2L["2c"]["RichText"] = true;
G2L["2c"]["BorderSizePixel"] = 0;
G2L["2c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["2c"]["TextSize"] = 18;
G2L["2c"]["TextColor3"] = Color3.fromRGB(151, 151, 151);
G2L["2c"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2c"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["2c"]["BackgroundTransparency"] = 1;
G2L["2c"]["Size"] = UDim2.new(1, 0, 0, 40);
G2L["2c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2c"]["Text"] = [[UnderBarrel: None]];
G2L["2c"]["Name"] = [[UnderBarrel]];
G2L["2c"]["Position"] = UDim2.new(0, 0, 0, 80);


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.GunInfo.Scroll.UnderBarrel.UIPadding
G2L["2d"] = Instance.new("UIPadding", G2L["2c"]);
G2L["2d"]["PaddingTop"] = UDim.new(0, 20);
G2L["2d"]["PaddingRight"] = UDim.new(0, 10);
G2L["2d"]["PaddingLeft"] = UDim.new(0, 10);
G2L["2d"]["PaddingBottom"] = UDim.new(0, 20);


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.GunInfo.Scroll.Other
G2L["2e"] = Instance.new("TextButton", G2L["27"]);
G2L["2e"]["RichText"] = true;
G2L["2e"]["BorderSizePixel"] = 0;
G2L["2e"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["2e"]["TextSize"] = 18;
G2L["2e"]["TextColor3"] = Color3.fromRGB(151, 151, 151);
G2L["2e"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2e"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["2e"]["BackgroundTransparency"] = 1;
G2L["2e"]["Size"] = UDim2.new(1, 0, 0, 40);
G2L["2e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2e"]["Text"] = [[Other: None]];
G2L["2e"]["Name"] = [[Other]];
G2L["2e"]["Position"] = UDim2.new(0, 0, 0, 120);


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.GunInfo.Scroll.Other.UIPadding
G2L["2f"] = Instance.new("UIPadding", G2L["2e"]);
G2L["2f"]["PaddingTop"] = UDim.new(0, 20);
G2L["2f"]["PaddingRight"] = UDim.new(0, 10);
G2L["2f"]["PaddingLeft"] = UDim.new(0, 10);
G2L["2f"]["PaddingBottom"] = UDim.new(0, 20);


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.GunInfo.Scroll.Underline
G2L["30"] = Instance.new("Frame", G2L["27"]);
G2L["30"]["BorderSizePixel"] = 0;
G2L["30"]["BackgroundColor3"] = Color3.fromRGB(101, 101, 101);
G2L["30"]["Size"] = UDim2.new(1, 0, 0, 1);
G2L["30"]["Position"] = UDim2.new(0, 0, 0, 170);
G2L["30"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["30"]["Name"] = [[Underline]];


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.GunInfo.Scroll.MuzzleVelocity
G2L["31"] = Instance.new("TextButton", G2L["27"]);
G2L["31"]["RichText"] = true;
G2L["31"]["BorderSizePixel"] = 0;
G2L["31"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["31"]["TextSize"] = 18;
G2L["31"]["TextColor3"] = Color3.fromRGB(151, 151, 151);
G2L["31"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["31"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["31"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["31"]["BackgroundTransparency"] = 1;
G2L["31"]["Size"] = UDim2.new(1, 0, 0, 40);
G2L["31"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["31"]["Text"] = [[Velocity: 1000]];
G2L["31"]["Name"] = [[MuzzleVelocity]];
G2L["31"]["Position"] = UDim2.new(0, 0, 0, 180);


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.GunInfo.Scroll.MuzzleVelocity.UIPadding
G2L["32"] = Instance.new("UIPadding", G2L["31"]);
G2L["32"]["PaddingTop"] = UDim.new(0, 5);
G2L["32"]["PaddingRight"] = UDim.new(0, 10);
G2L["32"]["PaddingLeft"] = UDim.new(0, 10);
G2L["32"]["PaddingBottom"] = UDim.new(0, 20);


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.GunInfo.Scroll.MuzzleVelocity.FillBar
G2L["33"] = Instance.new("Frame", G2L["31"]);
G2L["33"]["BorderSizePixel"] = 0;
G2L["33"]["BackgroundColor3"] = Color3.fromRGB(101, 101, 101);
G2L["33"]["Size"] = UDim2.new(1, 0, 0, 2);
G2L["33"]["Position"] = UDim2.new(0, 0, 1, 10);
G2L["33"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["33"]["Name"] = [[FillBar]];


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.GunInfo.Scroll.MuzzleVelocity.FillBar.Fill1
G2L["34"] = Instance.new("Frame", G2L["33"]);
G2L["34"]["ZIndex"] = 3;
G2L["34"]["BorderSizePixel"] = 0;
G2L["34"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["34"]["Size"] = UDim2.new(0, 0, 1, 0);
G2L["34"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["34"]["Name"] = [[Fill1]];


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.GunInfo.Scroll.MuzzleVelocity.FillBar.Fill2
G2L["35"] = Instance.new("Frame", G2L["33"]);
G2L["35"]["ZIndex"] = 2;
G2L["35"]["BorderSizePixel"] = 0;
G2L["35"]["BackgroundColor3"] = Color3.fromRGB(151, 151, 151);
G2L["35"]["Size"] = UDim2.new(0, 0, 1, 0);
G2L["35"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["35"]["Name"] = [[Fill2]];


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.GunInfo.Scroll.Damage
G2L["36"] = Instance.new("TextButton", G2L["27"]);
G2L["36"]["RichText"] = true;
G2L["36"]["BorderSizePixel"] = 0;
G2L["36"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["36"]["TextSize"] = 18;
G2L["36"]["TextColor3"] = Color3.fromRGB(151, 151, 151);
G2L["36"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["36"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["36"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["36"]["BackgroundTransparency"] = 1;
G2L["36"]["Size"] = UDim2.new(1, 0, 0, 40);
G2L["36"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["36"]["Text"] = [[Damage: 80 - 100]];
G2L["36"]["Name"] = [[Damage]];
G2L["36"]["Position"] = UDim2.new(0, 0, 0, 220);


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.GunInfo.Scroll.Damage.UIPadding
G2L["37"] = Instance.new("UIPadding", G2L["36"]);
G2L["37"]["PaddingTop"] = UDim.new(0, 5);
G2L["37"]["PaddingRight"] = UDim.new(0, 10);
G2L["37"]["PaddingLeft"] = UDim.new(0, 10);
G2L["37"]["PaddingBottom"] = UDim.new(0, 20);


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.GunInfo.Scroll.Damage.FillBar
G2L["38"] = Instance.new("Frame", G2L["36"]);
G2L["38"]["BorderSizePixel"] = 0;
G2L["38"]["BackgroundColor3"] = Color3.fromRGB(101, 101, 101);
G2L["38"]["Size"] = UDim2.new(1, 0, 0, 2);
G2L["38"]["Position"] = UDim2.new(0, 0, 1, 10);
G2L["38"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["38"]["Name"] = [[FillBar]];


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.GunInfo.Scroll.Damage.FillBar.Fill1
G2L["39"] = Instance.new("Frame", G2L["38"]);
G2L["39"]["ZIndex"] = 3;
G2L["39"]["BorderSizePixel"] = 0;
G2L["39"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["39"]["Size"] = UDim2.new(0, 0, 1, 0);
G2L["39"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["39"]["Name"] = [[Fill1]];


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.GunInfo.Scroll.Damage.FillBar.Fill2
G2L["3a"] = Instance.new("Frame", G2L["38"]);
G2L["3a"]["ZIndex"] = 2;
G2L["3a"]["BorderSizePixel"] = 0;
G2L["3a"]["BackgroundColor3"] = Color3.fromRGB(151, 151, 151);
G2L["3a"]["Size"] = UDim2.new(0, 0, 1, 0);
G2L["3a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3a"]["Name"] = [[Fill2]];


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.Center
G2L["3b"] = Instance.new("Frame", G2L["1a"]);
G2L["3b"]["BorderSizePixel"] = 0;
G2L["3b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3b"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["3b"]["Size"] = UDim2.new(0.55, 0, 1, 0);
G2L["3b"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["3b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3b"]["Name"] = [[Center]];
G2L["3b"]["BackgroundTransparency"] = 1;


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.Center.GunName
G2L["3c"] = Instance.new("TextLabel", G2L["3b"]);
G2L["3c"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
G2L["3c"]["ZIndex"] = 2;
G2L["3c"]["BorderSizePixel"] = 0;
G2L["3c"]["TextSize"] = 30;
G2L["3c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3c"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["3c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3c"]["BackgroundTransparency"] = 1;
G2L["3c"]["Size"] = UDim2.new(1, 0, 0, 50);
G2L["3c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3c"]["Text"] = [[Sniper Rifle]];
G2L["3c"]["Name"] = [[GunName]];


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.Center.ViewportFrame
G2L["3d"] = Instance.new("ViewportFrame", G2L["3b"]);
G2L["3d"]["BorderSizePixel"] = 0;
G2L["3d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3d"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["3d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3d"]["BackgroundTransparency"] = 1;


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.Center.AttachmentTypes
G2L["3e"] = Instance.new("Frame", G2L["3b"]);
G2L["3e"]["BorderSizePixel"] = 0;
G2L["3e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3e"]["AnchorPoint"] = Vector2.new(0, 1);
G2L["3e"]["Size"] = UDim2.new(1, 0, 0, 50);
G2L["3e"]["Position"] = UDim2.new(0, 0, 1, 0);
G2L["3e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3e"]["Name"] = [[AttachmentTypes]];
G2L["3e"]["BackgroundTransparency"] = 1;


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.Center.AttachmentTypes.UIListLayout
G2L["3f"] = Instance.new("UIListLayout", G2L["3e"]);
G2L["3f"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["3f"]["Padding"] = UDim.new(0, 10);
G2L["3f"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["3f"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.Center.AttachmentTypes.Barrel
G2L["40"] = Instance.new("TextButton", G2L["3e"]);
G2L["40"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
G2L["40"]["BorderSizePixel"] = 0;
G2L["40"]["TextSize"] = 18;
G2L["40"]["TextColor3"] = Color3.fromRGB(151, 151, 151);
G2L["40"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["40"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["40"]["BackgroundTransparency"] = 0.5;
G2L["40"]["Size"] = UDim2.new(0.25, 0, 0, 40);
G2L["40"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["40"]["Text"] = [[Barrel]];
G2L["40"]["Name"] = [[Barrel]];
G2L["40"]["Visible"] = false;


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.Center.AttachmentTypes.Barrel.UIPadding
G2L["41"] = Instance.new("UIPadding", G2L["40"]);
G2L["41"]["PaddingTop"] = UDim.new(0, 20);
G2L["41"]["PaddingRight"] = UDim.new(0, 20);
G2L["41"]["PaddingLeft"] = UDim.new(0, 20);
G2L["41"]["PaddingBottom"] = UDim.new(0, 20);


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.Center.AttachmentTypes.Barrel.Underline
G2L["42"] = Instance.new("Frame", G2L["40"]);
G2L["42"]["BorderSizePixel"] = 0;
G2L["42"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["42"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["42"]["Size"] = UDim2.new(1, 40, 0, 1);
G2L["42"]["Position"] = UDim2.new(0.5, 0, 0, 20);
G2L["42"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["42"]["Name"] = [[Underline]];


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.Center.AttachmentTypes.UnderBarrel
G2L["43"] = Instance.new("TextButton", G2L["3e"]);
G2L["43"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
G2L["43"]["BorderSizePixel"] = 0;
G2L["43"]["TextSize"] = 18;
G2L["43"]["TextColor3"] = Color3.fromRGB(151, 151, 151);
G2L["43"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["43"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["43"]["BackgroundTransparency"] = 0.5;
G2L["43"]["Size"] = UDim2.new(0.25, 0, 0, 40);
G2L["43"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["43"]["Text"] = [[UnderBarrel]];
G2L["43"]["Name"] = [[UnderBarrel]];
G2L["43"]["Visible"] = false;


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.Center.AttachmentTypes.UnderBarrel.UIPadding
G2L["44"] = Instance.new("UIPadding", G2L["43"]);
G2L["44"]["PaddingTop"] = UDim.new(0, 20);
G2L["44"]["PaddingRight"] = UDim.new(0, 20);
G2L["44"]["PaddingLeft"] = UDim.new(0, 20);
G2L["44"]["PaddingBottom"] = UDim.new(0, 20);


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.Center.AttachmentTypes.UnderBarrel.Underline
G2L["45"] = Instance.new("Frame", G2L["43"]);
G2L["45"]["BorderSizePixel"] = 0;
G2L["45"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["45"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["45"]["Size"] = UDim2.new(1, 40, 0, 1);
G2L["45"]["Position"] = UDim2.new(0.5, 0, 0, 20);
G2L["45"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["45"]["Name"] = [[Underline]];


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.Center.AttachmentTypes.Sight
G2L["46"] = Instance.new("TextButton", G2L["3e"]);
G2L["46"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
G2L["46"]["BorderSizePixel"] = 0;
G2L["46"]["TextSize"] = 18;
G2L["46"]["TextColor3"] = Color3.fromRGB(151, 151, 151);
G2L["46"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["46"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["46"]["BackgroundTransparency"] = 0.5;
G2L["46"]["Size"] = UDim2.new(0.25, 0, 0, 40);
G2L["46"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["46"]["Text"] = [[Sight]];
G2L["46"]["Name"] = [[Sight]];
G2L["46"]["Visible"] = false;


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.Center.AttachmentTypes.Sight.UIPadding
G2L["47"] = Instance.new("UIPadding", G2L["46"]);
G2L["47"]["PaddingTop"] = UDim.new(0, 20);
G2L["47"]["PaddingRight"] = UDim.new(0, 20);
G2L["47"]["PaddingLeft"] = UDim.new(0, 20);
G2L["47"]["PaddingBottom"] = UDim.new(0, 20);


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.Center.AttachmentTypes.Sight.Underline
G2L["48"] = Instance.new("Frame", G2L["46"]);
G2L["48"]["BorderSizePixel"] = 0;
G2L["48"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["48"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["48"]["Size"] = UDim2.new(1, 40, 0, 1);
G2L["48"]["Position"] = UDim2.new(0.5, 0, 0, 20);
G2L["48"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["48"]["Name"] = [[Underline]];


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.Center.AttachmentTypes.Other
G2L["49"] = Instance.new("TextButton", G2L["3e"]);
G2L["49"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
G2L["49"]["BorderSizePixel"] = 0;
G2L["49"]["TextSize"] = 18;
G2L["49"]["TextColor3"] = Color3.fromRGB(151, 151, 151);
G2L["49"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["49"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["49"]["BackgroundTransparency"] = 0.5;
G2L["49"]["Size"] = UDim2.new(0.25, 0, 0, 40);
G2L["49"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["49"]["Text"] = [[Other]];
G2L["49"]["Name"] = [[Other]];
G2L["49"]["Visible"] = false;


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.Center.AttachmentTypes.Other.UIPadding
G2L["4a"] = Instance.new("UIPadding", G2L["49"]);
G2L["4a"]["PaddingTop"] = UDim.new(0, 20);
G2L["4a"]["PaddingRight"] = UDim.new(0, 20);
G2L["4a"]["PaddingLeft"] = UDim.new(0, 20);
G2L["4a"]["PaddingBottom"] = UDim.new(0, 20);


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.Center.AttachmentTypes.Other.Underline
G2L["4b"] = Instance.new("Frame", G2L["49"]);
G2L["4b"]["BorderSizePixel"] = 0;
G2L["4b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4b"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["4b"]["Size"] = UDim2.new(1, 40, 0, 1);
G2L["4b"]["Position"] = UDim2.new(0.5, 0, 0, 20);
G2L["4b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4b"]["Name"] = [[Underline]];


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.Center.Finish
G2L["4c"] = Instance.new("TextButton", G2L["3b"]);
G2L["4c"]["BorderSizePixel"] = 0;
G2L["4c"]["TextSize"] = 25;
G2L["4c"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4c"]["BackgroundColor3"] = Color3.fromRGB(141, 255, 109);
G2L["4c"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["4c"]["AnchorPoint"] = Vector2.new(0.5, 1);
G2L["4c"]["BackgroundTransparency"] = 0.2;
G2L["4c"]["Size"] = UDim2.new(0, 200, 0, 30);
G2L["4c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4c"]["Text"] = [[Finish]];
G2L["4c"]["Name"] = [[Finish]];
G2L["4c"]["Visible"] = false;
G2L["4c"]["Position"] = UDim2.new(0.5, 0, 1, -60);


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Attachments.Center.Finish.UICorner
G2L["4d"] = Instance.new("UICorner", G2L["4c"]);
G2L["4d"]["CornerRadius"] = UDim.new(0, 15);


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Modifications
G2L["4e"] = Instance.new("Frame", G2L["d"]);
G2L["4e"]["Visible"] = false;
G2L["4e"]["BorderSizePixel"] = 0;
G2L["4e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4e"]["AnchorPoint"] = Vector2.new(0.5, 1);
G2L["4e"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["4e"]["Position"] = UDim2.new(0.5, 0, 1, 0);
G2L["4e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4e"]["Name"] = [[Modifications]];
G2L["4e"]["BackgroundTransparency"] = 1;


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Modifications.ModMenu
G2L["4f"] = Instance.new("Frame", G2L["4e"]);
G2L["4f"]["BorderSizePixel"] = 0;
G2L["4f"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4f"]["Size"] = UDim2.new(0, 150, 1, 0);
G2L["4f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4f"]["Name"] = [[ModMenu]];
G2L["4f"]["BackgroundTransparency"] = 0.5;


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Modifications.ModMenu.UICorner
G2L["50"] = Instance.new("UICorner", G2L["4f"]);
G2L["50"]["CornerRadius"] = UDim.new(0, 15);


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Modifications.ModMenu.Title
G2L["51"] = Instance.new("TextLabel", G2L["4f"]);
G2L["51"]["ZIndex"] = 2;
G2L["51"]["BorderSizePixel"] = 0;
G2L["51"]["TextSize"] = 20;
G2L["51"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["51"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["51"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["51"]["BackgroundTransparency"] = 1;
G2L["51"]["Size"] = UDim2.new(1, 0, 0, 50);
G2L["51"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["51"]["Text"] = [[Mods]];
G2L["51"]["Name"] = [[Title]];


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Modifications.ModMenu.UIStroke
G2L["52"] = Instance.new("UIStroke", G2L["4f"]);
G2L["52"]["Transparency"] = 0.5;
G2L["52"]["Thickness"] = 2;
G2L["52"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Modifications.ModMenu.UIStroke.UIGradient
G2L["53"] = Instance.new("UIGradient", G2L["52"]);
G2L["53"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(0, 0, 0)),ColorSequenceKeypoint.new(0.750, Color3.fromRGB(0, 0, 0)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 255, 255))};


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Modifications.ModMenu.Scroll
G2L["54"] = Instance.new("ScrollingFrame", G2L["4f"]);
G2L["54"]["Active"] = true;
G2L["54"]["BorderSizePixel"] = 0;
G2L["54"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["54"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["54"]["Name"] = [[Scroll]];
G2L["54"]["AnchorPoint"] = Vector2.new(0, 1);
G2L["54"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
G2L["54"]["Size"] = UDim2.new(1, 0, 1, -50);
G2L["54"]["Position"] = UDim2.new(0, 0, 1, 0);
G2L["54"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["54"]["ScrollBarThickness"] = 2;
G2L["54"]["BackgroundTransparency"] = 1;


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Modifications.ModMenu.Scroll.UIListLayout
G2L["55"] = Instance.new("UIListLayout", G2L["54"]);
G2L["55"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["55"]["Padding"] = UDim.new(0, 10);
G2L["55"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Modifications.ModMenu.Scroll.VelocityModifier
G2L["56"] = Instance.new("TextButton", G2L["54"]);
G2L["56"]["RichText"] = true;
G2L["56"]["BorderSizePixel"] = 0;
G2L["56"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["56"]["TextSize"] = 18;
G2L["56"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["56"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["56"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["56"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["56"]["BackgroundTransparency"] = 1;
G2L["56"]["Size"] = UDim2.new(1, 0, 0, 40);
G2L["56"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["56"]["Text"] = [[Velocity Multiplier]];
G2L["56"]["Name"] = [[VelocityModifier]];


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Modifications.ModMenu.Scroll.VelocityModifier.UIPadding
G2L["57"] = Instance.new("UIPadding", G2L["56"]);
G2L["57"]["PaddingTop"] = UDim.new(0, 5);
G2L["57"]["PaddingRight"] = UDim.new(0, 10);
G2L["57"]["PaddingLeft"] = UDim.new(0, 10);
G2L["57"]["PaddingBottom"] = UDim.new(0, 20);


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Modifications.ModMenu.Scroll.VelocityModifier.TextBox
G2L["58"] = Instance.new("TextBox", G2L["56"]);
G2L["58"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["58"]["PlaceholderColor3"] = Color3.fromRGB(151, 151, 151);
G2L["58"]["BorderSizePixel"] = 0;
G2L["58"]["TextSize"] = 12;
G2L["58"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["58"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["58"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["58"]["ClearTextOnFocus"] = false;
G2L["58"]["PlaceholderText"] = [[Input Here]];
G2L["58"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["58"]["Position"] = UDim2.new(0, 0, 1, 0);
G2L["58"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["58"]["Text"] = [[]];
G2L["58"]["BackgroundTransparency"] = 1;


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Modifications.ModMenu.Scroll.SpreadModifier
G2L["59"] = Instance.new("TextButton", G2L["54"]);
G2L["59"]["RichText"] = true;
G2L["59"]["BorderSizePixel"] = 0;
G2L["59"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["59"]["TextSize"] = 18;
G2L["59"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["59"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["59"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["59"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["59"]["BackgroundTransparency"] = 1;
G2L["59"]["Size"] = UDim2.new(1, 0, 0, 40);
G2L["59"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["59"]["Text"] = [[Spread Multiplier]];
G2L["59"]["Name"] = [[SpreadModifier]];


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Modifications.ModMenu.Scroll.SpreadModifier.UIPadding
G2L["5a"] = Instance.new("UIPadding", G2L["59"]);
G2L["5a"]["PaddingTop"] = UDim.new(0, 5);
G2L["5a"]["PaddingRight"] = UDim.new(0, 10);
G2L["5a"]["PaddingLeft"] = UDim.new(0, 10);
G2L["5a"]["PaddingBottom"] = UDim.new(0, 20);


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Modifications.ModMenu.Scroll.SpreadModifier.TextBox
G2L["5b"] = Instance.new("TextBox", G2L["59"]);
G2L["5b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["5b"]["PlaceholderColor3"] = Color3.fromRGB(151, 151, 151);
G2L["5b"]["BorderSizePixel"] = 0;
G2L["5b"]["TextSize"] = 12;
G2L["5b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5b"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["5b"]["ClearTextOnFocus"] = false;
G2L["5b"]["PlaceholderText"] = [[Input Here]];
G2L["5b"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["5b"]["Position"] = UDim2.new(0, 0, 1, 0);
G2L["5b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5b"]["Text"] = [[]];
G2L["5b"]["BackgroundTransparency"] = 1;


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Modifications.ModMenu.Scroll.DamageModifier
G2L["5c"] = Instance.new("TextButton", G2L["54"]);
G2L["5c"]["RichText"] = true;
G2L["5c"]["BorderSizePixel"] = 0;
G2L["5c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["5c"]["TextSize"] = 18;
G2L["5c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5c"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["5c"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5c"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["5c"]["BackgroundTransparency"] = 1;
G2L["5c"]["Size"] = UDim2.new(1, 0, 0, 40);
G2L["5c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5c"]["Text"] = [[Damage Multiplier]];
G2L["5c"]["Name"] = [[DamageModifier]];


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Modifications.ModMenu.Scroll.DamageModifier.UIPadding
G2L["5d"] = Instance.new("UIPadding", G2L["5c"]);
G2L["5d"]["PaddingTop"] = UDim.new(0, 5);
G2L["5d"]["PaddingRight"] = UDim.new(0, 10);
G2L["5d"]["PaddingLeft"] = UDim.new(0, 10);
G2L["5d"]["PaddingBottom"] = UDim.new(0, 20);


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Modifications.ModMenu.Scroll.DamageModifier.TextBox
G2L["5e"] = Instance.new("TextBox", G2L["5c"]);
G2L["5e"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["5e"]["PlaceholderColor3"] = Color3.fromRGB(151, 151, 151);
G2L["5e"]["BorderSizePixel"] = 0;
G2L["5e"]["TextSize"] = 12;
G2L["5e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5e"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["5e"]["ClearTextOnFocus"] = false;
G2L["5e"]["PlaceholderText"] = [[Input Here]];
G2L["5e"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["5e"]["Position"] = UDim2.new(0, 0, 1, 0);
G2L["5e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5e"]["Text"] = [[]];
G2L["5e"]["BackgroundTransparency"] = 1;


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Modifications.ModMenu.Scroll.AmmoModifier
G2L["5f"] = Instance.new("TextButton", G2L["54"]);
G2L["5f"]["RichText"] = true;
G2L["5f"]["BorderSizePixel"] = 0;
G2L["5f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["5f"]["TextSize"] = 18;
G2L["5f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5f"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["5f"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5f"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["5f"]["BackgroundTransparency"] = 1;
G2L["5f"]["Size"] = UDim2.new(1, 0, 0, 40);
G2L["5f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5f"]["Text"] = [[Ammo Amount]];
G2L["5f"]["Name"] = [[AmmoModifier]];


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Modifications.ModMenu.Scroll.AmmoModifier.UIPadding
G2L["60"] = Instance.new("UIPadding", G2L["5f"]);
G2L["60"]["PaddingTop"] = UDim.new(0, 5);
G2L["60"]["PaddingRight"] = UDim.new(0, 10);
G2L["60"]["PaddingLeft"] = UDim.new(0, 10);
G2L["60"]["PaddingBottom"] = UDim.new(0, 20);


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Modifications.ModMenu.Scroll.AmmoModifier.TextBox
G2L["61"] = Instance.new("TextBox", G2L["5f"]);
G2L["61"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["61"]["PlaceholderColor3"] = Color3.fromRGB(151, 151, 151);
G2L["61"]["BorderSizePixel"] = 0;
G2L["61"]["TextSize"] = 12;
G2L["61"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["61"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["61"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["61"]["ClearTextOnFocus"] = false;
G2L["61"]["PlaceholderText"] = [[Input Here]];
G2L["61"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["61"]["Position"] = UDim2.new(0, 0, 1, 0);
G2L["61"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["61"]["Text"] = [[]];
G2L["61"]["BackgroundTransparency"] = 1;


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Modifications.ModMenu.Scroll.PenetrationModifier
G2L["62"] = Instance.new("TextButton", G2L["54"]);
G2L["62"]["RichText"] = true;
G2L["62"]["BorderSizePixel"] = 0;
G2L["62"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["62"]["TextSize"] = 18;
G2L["62"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["62"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["62"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["62"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["62"]["BackgroundTransparency"] = 1;
G2L["62"]["Size"] = UDim2.new(1, 0, 0, 40);
G2L["62"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["62"]["Text"] = [[Penetration]];
G2L["62"]["Name"] = [[PenetrationModifier]];


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Modifications.ModMenu.Scroll.PenetrationModifier.UIPadding
G2L["63"] = Instance.new("UIPadding", G2L["62"]);
G2L["63"]["PaddingTop"] = UDim.new(0, 5);
G2L["63"]["PaddingRight"] = UDim.new(0, 10);
G2L["63"]["PaddingLeft"] = UDim.new(0, 10);
G2L["63"]["PaddingBottom"] = UDim.new(0, 20);


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Modifications.ModMenu.Scroll.PenetrationModifier.TextBox
G2L["64"] = Instance.new("TextBox", G2L["62"]);
G2L["64"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["64"]["PlaceholderColor3"] = Color3.fromRGB(151, 151, 151);
G2L["64"]["BorderSizePixel"] = 0;
G2L["64"]["TextSize"] = 12;
G2L["64"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["64"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["64"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["64"]["ClearTextOnFocus"] = false;
G2L["64"]["PlaceholderText"] = [[Input Here]];
G2L["64"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["64"]["Position"] = UDim2.new(0, 0, 1, 0);
G2L["64"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["64"]["Text"] = [[]];
G2L["64"]["BackgroundTransparency"] = 1;


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Modifications.GunInfo
G2L["65"] = Instance.new("Frame", G2L["4e"]);
G2L["65"]["BorderSizePixel"] = 0;
G2L["65"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["65"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["65"]["Size"] = UDim2.new(0, 150, 1, 0);
G2L["65"]["Position"] = UDim2.new(1, 0, 0, 0);
G2L["65"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["65"]["Name"] = [[GunInfo]];
G2L["65"]["BackgroundTransparency"] = 0.5;


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Modifications.GunInfo.UICorner
G2L["66"] = Instance.new("UICorner", G2L["65"]);
G2L["66"]["CornerRadius"] = UDim.new(0, 15);


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Modifications.GunInfo.Title
G2L["67"] = Instance.new("TextLabel", G2L["65"]);
G2L["67"]["ZIndex"] = 2;
G2L["67"]["BorderSizePixel"] = 0;
G2L["67"]["TextSize"] = 20;
G2L["67"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["67"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["67"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["67"]["BackgroundTransparency"] = 1;
G2L["67"]["Size"] = UDim2.new(1, 0, 0, 50);
G2L["67"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["67"]["Text"] = [[Gun Info]];
G2L["67"]["Name"] = [[Title]];


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Modifications.GunInfo.UIStroke
G2L["68"] = Instance.new("UIStroke", G2L["65"]);
G2L["68"]["Transparency"] = 0.5;
G2L["68"]["Thickness"] = 2;
G2L["68"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Modifications.GunInfo.UIStroke.UIGradient
G2L["69"] = Instance.new("UIGradient", G2L["68"]);
G2L["69"]["Rotation"] = 180;
G2L["69"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(0, 0, 0)),ColorSequenceKeypoint.new(0.750, Color3.fromRGB(0, 0, 0)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 255, 255))};


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Modifications.GunInfo.Scroll
G2L["6a"] = Instance.new("ScrollingFrame", G2L["65"]);
G2L["6a"]["Active"] = true;
G2L["6a"]["BorderSizePixel"] = 0;
G2L["6a"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["6a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6a"]["Name"] = [[Scroll]];
G2L["6a"]["AnchorPoint"] = Vector2.new(0, 1);
G2L["6a"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
G2L["6a"]["Size"] = UDim2.new(1, 0, 1, -50);
G2L["6a"]["Position"] = UDim2.new(0, 0, 1, 0);
G2L["6a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6a"]["ScrollBarThickness"] = 2;
G2L["6a"]["BackgroundTransparency"] = 1;


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Modifications.GunInfo.Scroll.MuzzleVelocity
G2L["6b"] = Instance.new("TextButton", G2L["6a"]);
G2L["6b"]["RichText"] = true;
G2L["6b"]["BorderSizePixel"] = 0;
G2L["6b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["6b"]["TextSize"] = 18;
G2L["6b"]["TextColor3"] = Color3.fromRGB(151, 151, 151);
G2L["6b"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["6b"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6b"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["6b"]["BackgroundTransparency"] = 1;
G2L["6b"]["Size"] = UDim2.new(1, 0, 0, 40);
G2L["6b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6b"]["Text"] = [[Velocity: 1000]];
G2L["6b"]["Name"] = [[MuzzleVelocity]];
G2L["6b"]["Position"] = UDim2.new(0, 0, 0, 40);


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Modifications.GunInfo.Scroll.MuzzleVelocity.UIPadding
G2L["6c"] = Instance.new("UIPadding", G2L["6b"]);
G2L["6c"]["PaddingTop"] = UDim.new(0, 5);
G2L["6c"]["PaddingRight"] = UDim.new(0, 10);
G2L["6c"]["PaddingLeft"] = UDim.new(0, 10);
G2L["6c"]["PaddingBottom"] = UDim.new(0, 20);


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Modifications.GunInfo.Scroll.MuzzleVelocity.FillBar
G2L["6d"] = Instance.new("Frame", G2L["6b"]);
G2L["6d"]["BorderSizePixel"] = 0;
G2L["6d"]["BackgroundColor3"] = Color3.fromRGB(101, 101, 101);
G2L["6d"]["Size"] = UDim2.new(1, 0, 0, 2);
G2L["6d"]["Position"] = UDim2.new(0, 0, 1, 10);
G2L["6d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6d"]["Name"] = [[FillBar]];


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Modifications.GunInfo.Scroll.MuzzleVelocity.FillBar.Fill1
G2L["6e"] = Instance.new("Frame", G2L["6d"]);
G2L["6e"]["ZIndex"] = 3;
G2L["6e"]["BorderSizePixel"] = 0;
G2L["6e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6e"]["Size"] = UDim2.new(0, 0, 1, 0);
G2L["6e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6e"]["Name"] = [[Fill1]];


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Modifications.GunInfo.Scroll.MuzzleVelocity.FillBar.Fill2
G2L["6f"] = Instance.new("Frame", G2L["6d"]);
G2L["6f"]["ZIndex"] = 2;
G2L["6f"]["BorderSizePixel"] = 0;
G2L["6f"]["BackgroundColor3"] = Color3.fromRGB(151, 151, 151);
G2L["6f"]["Size"] = UDim2.new(0, 0, 1, 0);
G2L["6f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6f"]["Name"] = [[Fill2]];


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Modifications.GunInfo.Scroll.Damage
G2L["70"] = Instance.new("TextButton", G2L["6a"]);
G2L["70"]["RichText"] = true;
G2L["70"]["BorderSizePixel"] = 0;
G2L["70"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["70"]["TextSize"] = 18;
G2L["70"]["TextColor3"] = Color3.fromRGB(151, 151, 151);
G2L["70"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["70"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["70"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["70"]["BackgroundTransparency"] = 1;
G2L["70"]["Size"] = UDim2.new(1, 0, 0, 40);
G2L["70"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["70"]["Text"] = [[Damage: 80 - 100]];
G2L["70"]["Name"] = [[Damage]];


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Modifications.GunInfo.Scroll.Damage.UIPadding
G2L["71"] = Instance.new("UIPadding", G2L["70"]);
G2L["71"]["PaddingTop"] = UDim.new(0, 5);
G2L["71"]["PaddingRight"] = UDim.new(0, 10);
G2L["71"]["PaddingLeft"] = UDim.new(0, 10);
G2L["71"]["PaddingBottom"] = UDim.new(0, 20);


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Modifications.GunInfo.Scroll.Damage.FillBar
G2L["72"] = Instance.new("Frame", G2L["70"]);
G2L["72"]["BorderSizePixel"] = 0;
G2L["72"]["BackgroundColor3"] = Color3.fromRGB(101, 101, 101);
G2L["72"]["Size"] = UDim2.new(1, 0, 0, 2);
G2L["72"]["Position"] = UDim2.new(0, 0, 1, 10);
G2L["72"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["72"]["Name"] = [[FillBar]];


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Modifications.GunInfo.Scroll.Damage.FillBar.Fill1
G2L["73"] = Instance.new("Frame", G2L["72"]);
G2L["73"]["ZIndex"] = 3;
G2L["73"]["BorderSizePixel"] = 0;
G2L["73"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["73"]["Size"] = UDim2.new(0, 0, 1, 0);
G2L["73"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["73"]["Name"] = [[Fill1]];


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Modifications.GunInfo.Scroll.Damage.FillBar.Fill2
G2L["74"] = Instance.new("Frame", G2L["72"]);
G2L["74"]["ZIndex"] = 2;
G2L["74"]["BorderSizePixel"] = 0;
G2L["74"]["BackgroundColor3"] = Color3.fromRGB(151, 151, 151);
G2L["74"]["Size"] = UDim2.new(0, 0, 1, 0);
G2L["74"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["74"]["Name"] = [[Fill2]];


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Modifications.GunInfo.Scroll.Accuracy
G2L["75"] = Instance.new("TextButton", G2L["6a"]);
G2L["75"]["RichText"] = true;
G2L["75"]["BorderSizePixel"] = 0;
G2L["75"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["75"]["TextSize"] = 18;
G2L["75"]["TextColor3"] = Color3.fromRGB(151, 151, 151);
G2L["75"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["75"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["75"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["75"]["BackgroundTransparency"] = 1;
G2L["75"]["Size"] = UDim2.new(1, 0, 0, 40);
G2L["75"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["75"]["Text"] = [[Accuracy: 1]];
G2L["75"]["Name"] = [[Accuracy]];
G2L["75"]["Position"] = UDim2.new(0, 0, 0, 80);


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Modifications.GunInfo.Scroll.Accuracy.UIPadding
G2L["76"] = Instance.new("UIPadding", G2L["75"]);
G2L["76"]["PaddingTop"] = UDim.new(0, 5);
G2L["76"]["PaddingRight"] = UDim.new(0, 10);
G2L["76"]["PaddingLeft"] = UDim.new(0, 10);
G2L["76"]["PaddingBottom"] = UDim.new(0, 20);


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Modifications.GunInfo.Scroll.Accuracy.FillBar
G2L["77"] = Instance.new("Frame", G2L["75"]);
G2L["77"]["BorderSizePixel"] = 0;
G2L["77"]["BackgroundColor3"] = Color3.fromRGB(101, 101, 101);
G2L["77"]["Size"] = UDim2.new(1, 0, 0, 2);
G2L["77"]["Position"] = UDim2.new(0, 0, 1, 10);
G2L["77"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["77"]["Name"] = [[FillBar]];


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Modifications.GunInfo.Scroll.Accuracy.FillBar.Fill1
G2L["78"] = Instance.new("Frame", G2L["77"]);
G2L["78"]["ZIndex"] = 3;
G2L["78"]["BorderSizePixel"] = 0;
G2L["78"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["78"]["Size"] = UDim2.new(0, 0, 1, 0);
G2L["78"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["78"]["Name"] = [[Fill1]];


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Modifications.GunInfo.Scroll.Accuracy.FillBar.Fill2
G2L["79"] = Instance.new("Frame", G2L["77"]);
G2L["79"]["ZIndex"] = 2;
G2L["79"]["BorderSizePixel"] = 0;
G2L["79"]["BackgroundColor3"] = Color3.fromRGB(151, 151, 151);
G2L["79"]["Size"] = UDim2.new(0, 0, 1, 0);
G2L["79"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["79"]["Name"] = [[Fill2]];


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Modifications.GunInfo.Scroll.Penetration
G2L["7a"] = Instance.new("TextButton", G2L["6a"]);
G2L["7a"]["RichText"] = true;
G2L["7a"]["BorderSizePixel"] = 0;
G2L["7a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["7a"]["TextSize"] = 18;
G2L["7a"]["TextColor3"] = Color3.fromRGB(151, 151, 151);
G2L["7a"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["7a"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7a"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["7a"]["BackgroundTransparency"] = 1;
G2L["7a"]["Size"] = UDim2.new(1, 0, 0, 40);
G2L["7a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7a"]["Text"] = [[Penetration: 200]];
G2L["7a"]["Name"] = [[Penetration]];
G2L["7a"]["Position"] = UDim2.new(0, 0, 0, 120);


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Modifications.GunInfo.Scroll.Penetration.UIPadding
G2L["7b"] = Instance.new("UIPadding", G2L["7a"]);
G2L["7b"]["PaddingTop"] = UDim.new(0, 5);
G2L["7b"]["PaddingRight"] = UDim.new(0, 10);
G2L["7b"]["PaddingLeft"] = UDim.new(0, 10);
G2L["7b"]["PaddingBottom"] = UDim.new(0, 20);


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Modifications.GunInfo.Scroll.Penetration.FillBar
G2L["7c"] = Instance.new("Frame", G2L["7a"]);
G2L["7c"]["BorderSizePixel"] = 0;
G2L["7c"]["BackgroundColor3"] = Color3.fromRGB(101, 101, 101);
G2L["7c"]["Size"] = UDim2.new(1, 0, 0, 2);
G2L["7c"]["Position"] = UDim2.new(0, 0, 1, 10);
G2L["7c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7c"]["Name"] = [[FillBar]];


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Modifications.GunInfo.Scroll.Penetration.FillBar.Fill1
G2L["7d"] = Instance.new("Frame", G2L["7c"]);
G2L["7d"]["ZIndex"] = 3;
G2L["7d"]["BorderSizePixel"] = 0;
G2L["7d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7d"]["Size"] = UDim2.new(0, 0, 1, 0);
G2L["7d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7d"]["Name"] = [[Fill1]];


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Modifications.GunInfo.Scroll.Penetration.FillBar.Fill2
G2L["7e"] = Instance.new("Frame", G2L["7c"]);
G2L["7e"]["ZIndex"] = 2;
G2L["7e"]["BorderSizePixel"] = 0;
G2L["7e"]["BackgroundColor3"] = Color3.fromRGB(151, 151, 151);
G2L["7e"]["Size"] = UDim2.new(0, 0, 1, 0);
G2L["7e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7e"]["Name"] = [[Fill2]];


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Modifications.Center
G2L["7f"] = Instance.new("Frame", G2L["4e"]);
G2L["7f"]["BorderSizePixel"] = 0;
G2L["7f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7f"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["7f"]["Size"] = UDim2.new(0.55, 0, 1, 0);
G2L["7f"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["7f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7f"]["Name"] = [[Center]];
G2L["7f"]["BackgroundTransparency"] = 1;


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Modifications.Center.GunName
G2L["80"] = Instance.new("TextLabel", G2L["7f"]);
G2L["80"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
G2L["80"]["ZIndex"] = 2;
G2L["80"]["BorderSizePixel"] = 0;
G2L["80"]["TextSize"] = 30;
G2L["80"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["80"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["80"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["80"]["BackgroundTransparency"] = 1;
G2L["80"]["Size"] = UDim2.new(1, 0, 0, 50);
G2L["80"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["80"]["Text"] = [[Sniper Rifle]];
G2L["80"]["Name"] = [[GunName]];


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Modifications.Center.ViewportFrame
G2L["81"] = Instance.new("ViewportFrame", G2L["7f"]);
G2L["81"]["BorderSizePixel"] = 0;
G2L["81"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["81"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["81"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["81"]["BackgroundTransparency"] = 1;


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Modifications.Center.Finish
G2L["82"] = Instance.new("TextButton", G2L["7f"]);
G2L["82"]["BorderSizePixel"] = 0;
G2L["82"]["TextSize"] = 25;
G2L["82"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["82"]["BackgroundColor3"] = Color3.fromRGB(141, 255, 109);
G2L["82"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["82"]["AnchorPoint"] = Vector2.new(0.5, 1);
G2L["82"]["BackgroundTransparency"] = 0.2;
G2L["82"]["Size"] = UDim2.new(0, 200, 0, 30);
G2L["82"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["82"]["Text"] = [[Finish]];
G2L["82"]["Name"] = [[Finish]];
G2L["82"]["Visible"] = false;
G2L["82"]["Position"] = UDim2.new(0.5, 0, 1, -60);


-- StarterGui.AttachmentMenu.Graphical.Main.Menu.Pages.Modifications.Center.Finish.UICorner
G2L["83"] = Instance.new("UICorner", G2L["82"]);
G2L["83"]["CornerRadius"] = UDim.new(0, 15);


-- StarterGui.AttachmentMenu.Scripts
G2L["84"] = Instance.new("Folder", G2L["1"]);
G2L["84"]["Name"] = [[Scripts]];


-- StarterGui.AttachmentMenu.Scripts.Handler
G2L["85"] = Instance.new("LocalScript", G2L["84"]);
G2L["85"]["Name"] = [[Handler]];


-- StarterGui.AttachmentMenu.Scripts.Handler.TabControl
G2L["86"] = Instance.new("ModuleScript", G2L["85"]);
G2L["86"]["Name"] = [[TabControl]];


-- StarterGui.AttachmentMenu.Scripts.Templates
G2L["87"] = Instance.new("Folder", G2L["84"]);
G2L["87"]["Name"] = [[Templates]];


-- StarterGui.AttachmentMenu.Scripts.Templates.Gun
G2L["88"] = Instance.new("TextButton", G2L["87"]);
G2L["88"]["BorderSizePixel"] = 0;
G2L["88"]["TextTransparency"] = 1;
G2L["88"]["TextSize"] = 1;
G2L["88"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["88"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["88"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["88"]["BackgroundTransparency"] = 0.5;
G2L["88"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["88"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["88"]["Text"] = [[]];
G2L["88"]["Name"] = [[Gun]];
G2L["88"]["Visible"] = false;


-- StarterGui.AttachmentMenu.Scripts.Templates.Gun.UICorner
G2L["89"] = Instance.new("UICorner", G2L["88"]);
G2L["89"]["CornerRadius"] = UDim.new(0, 15);


-- StarterGui.AttachmentMenu.Scripts.Templates.Gun.GunName
G2L["8a"] = Instance.new("TextLabel", G2L["88"]);
G2L["8a"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
G2L["8a"]["ZIndex"] = 2;
G2L["8a"]["BorderSizePixel"] = 0;
G2L["8a"]["TextSize"] = 14;
G2L["8a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8a"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["8a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8a"]["BackgroundTransparency"] = 1;
G2L["8a"]["AnchorPoint"] = Vector2.new(0, 1);
G2L["8a"]["Size"] = UDim2.new(1, 0, 0, 35);
G2L["8a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8a"]["Text"] = [[Sniper Rifle]];
G2L["8a"]["Name"] = [[GunName]];
G2L["8a"]["Position"] = UDim2.new(0, 0, 1, 0);


-- StarterGui.AttachmentMenu.Scripts.Templates.Gun.ViewportFrame
G2L["8b"] = Instance.new("ViewportFrame", G2L["88"]);
G2L["8b"]["BorderSizePixel"] = 0;
G2L["8b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8b"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["8b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8b"]["BackgroundTransparency"] = 1;


-- StarterGui.AttachmentMenu.Scripts.Templates.Attachment
G2L["8c"] = Instance.new("TextButton", G2L["87"]);
G2L["8c"]["BorderSizePixel"] = 0;
G2L["8c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["8c"]["TextSize"] = 18;
G2L["8c"]["TextColor3"] = Color3.fromRGB(151, 151, 151);
G2L["8c"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8c"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["8c"]["BackgroundTransparency"] = 1;
G2L["8c"]["Size"] = UDim2.new(1, 0, 0, 40);
G2L["8c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8c"]["Text"] = [[Barrel]];
G2L["8c"]["Name"] = [[Attachment]];
G2L["8c"]["Visible"] = false;


-- StarterGui.AttachmentMenu.Scripts.Templates.Attachment.UIPadding
G2L["8d"] = Instance.new("UIPadding", G2L["8c"]);
G2L["8d"]["PaddingTop"] = UDim.new(0, 20);
G2L["8d"]["PaddingRight"] = UDim.new(0, 20);
G2L["8d"]["PaddingLeft"] = UDim.new(0, 20);
G2L["8d"]["PaddingBottom"] = UDim.new(0, 20);


-- StarterGui.AttachmentMenu.Scripts.Templates.Attachment.Underline
G2L["8e"] = Instance.new("Frame", G2L["8c"]);
G2L["8e"]["BorderSizePixel"] = 0;
G2L["8e"]["BackgroundColor3"] = Color3.fromRGB(101, 101, 101);
G2L["8e"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["8e"]["Size"] = UDim2.new(1, 0, 0, 1);
G2L["8e"]["Position"] = UDim2.new(0.5, 0, 0, 20);
G2L["8e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8e"]["Name"] = [[Underline]];


-- StarterGui.AttachmentMenu.Scripts.ToolStorage
G2L["8f"] = Instance.new("Folder", G2L["84"]);
G2L["8f"]["Name"] = [[ToolStorage]];


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

G2L_MODULES[G2L["86"]] = {
Closure = function()
    local script = G2L["86"];local TabControl = {}
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
local function C_85()
local script = G2L["85"];
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
	local modSelTabControl = require(script.TabControl).new()
	local utils = require(acsModules.Utilities)
	
	local main = graphical.Main
	local menu = main.Menu
	local top = menu.Top
	local pages = menu.Pages
	
	local guns = pages.Guns
	local attachments = pages:WaitForChild("Attachments")
	local modifications = pages:WaitForChild("Modifications")
	
	local localPlayer = Players.LocalPlayer
	
	local freeMode = true
	local mainMode = "Attachments"
	
	local predefinedAttachments = {
		-- Barrel Attachments
		["Muzzle Brake"] = "Barrel",
		["Compensator"] = "Barrel",
		["Suppressor"] = "Barrel",
		["Flash Hider"] = "Barrel",
	
		-- Sight Attachments
		["Red Dot"] = "Sight",
		["ACOG Scope"] = "Sight",
		["Sniper Scope"] = "Sight",
	
		-- Underbarrel Attachments
		["Vertical Grip"] = "UnderBarrel",
		["Angled Grip"] = "UnderBarrel",
		["Bipod"] = "UnderBarrel",
		["Laser Sight"] = "UnderBarrel",
		["Flashlight"] = "UnderBarrel",
	
		-- Other Attachments
		["Infrared Module"] = "Other"
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
	local modificationsTab = tabControl:AddTab(nil, "Modifications", function()
		modifications.Visible = true
		top.Back.Visible = true
	end, function()
		modifications.Visible = false
	end)
	local attachmentsModTab = modSelTabControl:AddTab(guns.ModSelection.Attachments, "AttachmentMod", function()
		mainMode = "Attachments"
		guns.ModSelection.Attachments.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
		guns.ModSelection.Attachments.TextColor3 = Color3.fromRGB(255, 255, 255)
	end, function()
		guns.ModSelection.Attachments.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		guns.ModSelection.Attachments.TextColor3 = Color3.fromRGB(150, 150, 150)
	end)
	local modificationsModTab = modSelTabControl:AddTab(guns.ModSelection.Modifications, "ModificationsMod", function()
		mainMode = "Modifications"
		guns.ModSelection.Modifications.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
		guns.ModSelection.Modifications.TextColor3 = Color3.fromRGB(255, 255, 255)
	end, function()
		guns.ModSelection.Modifications.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		guns.ModSelection.Modifications.TextColor3 = Color3.fromRGB(150, 150, 150)
	end)
	
	top.Close.Activated:Connect(function()
		close(true)
	end)
	top.Back.Activated:Connect(function()
		tabControl:SwitchTab(gunsTab)
		top.Back.Visible = false
		close()
	end)
	attachments.Center.Finish.Activated:Connect(function()
		close(true)
	end)
	guns.ModSelection.Attachments.Activated:Connect(function()
		mainMode = "Attachments"
	end)
	guns.ModSelection.Modifications.Activated:Connect(function()
		mainMode = "Modifications"
	end)
	
	
	function close(closeMenu)
		if storage.weapon and storage.weapon.Parent ~= nil then
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
				
				if mainMode == "Attachments" then
					setupViewport(attachments.Center.ViewportFrame, storage.model, true) else
					setupViewport(modifications.Center.ViewportFrame, storage.model, true)
				end
				
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
	
				canVisible(attachments.Center.AttachmentTypes.Barrel)
				canVisible(attachments.Center.AttachmentTypes.Other)
				canVisible(attachments.Center.AttachmentTypes.Sight)
				canVisible(attachments.Center.AttachmentTypes.UnderBarrel)
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
						if weapon:FindFirstChild("AimPart") and attachmentTypes[attType]:FindFirstChild("AimPos") then
							weapon.AimPart.CFrame = attachmentTypes[attType].AimPos.CFrame
						end
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
	function calculateAccuracy()
		local baseSpread = (modTable.MinSpread + modTable.MaxSpread) / 2
		local spreadFactor = 1 / baseSpread
	
		local recoilFactor = 1 / (
			(modTable.gunRecoilMod.RecoilUp + modTable.gunRecoilMod.RecoilTilt +
				modTable.gunRecoilMod.RecoilLeft + modTable.gunRecoilMod.RecoilRight) / 4
		)
	
		local aimFactor = modTable.AimInaccuracyDecrease / modTable.AimInaccuracyStepAmount
	
		local accuracyScore = (spreadFactor + recoilFactor + aimFactor) / 3
		return accuracyScore
	end
	function getMultiplier(input, target)
		return target / input
	end
	function updateGunInfo()
		local infoFrame = attachments.GunInfo.Scroll
		local modInfoFrame = modifications.GunInfo.Scroll
		
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
			local accuracyScore = math.clamp(calculateAccuracy() * 10, 0, 100)
			
			attachments.GunInfo.Visible = true
			attachments.Center.GunName.Visible = true
			
			modifications.GunInfo.Visible = true
			modifications.Center.GunName.Visible = true
			
			infoFrame.Optic.Text = `{ezRichText("Optic: ", {color = Color3.fromRGB(255, 255, 255), bold = true})}{storage.gunData.SightAtt}`
			infoFrame.Barrel.Text = `{ezRichText("Barrel: ", {color = Color3.fromRGB(255, 255, 255), bold = true})}{storage.gunData.BarrelAtt}`
			infoFrame.UnderBarrel.Text = `{ezRichText("UnderBarrel: ", {color = Color3.fromRGB(255, 255, 255), bold = true})}{storage.gunData.UnderBarrelAtt}`
			infoFrame.Other.Text = `{ezRichText("Other: ", {color = Color3.fromRGB(255, 255, 255), bold = true})}{storage.gunData.OtherAtt}`
			
			infoFrame.Damage.Text = `{ezRichText("Damage: ", {color = Color3.fromRGB(255, 255, 255), bold = true})}{math.round(storage.gunData.LimbDamage[1] * modTable.DamageMod)} - {math.round(storage.gunData.LimbDamage[2] * modTable.DamageMod)}`
			infoFrame.MuzzleVelocity.Text = `{ezRichText("Velocity: ", {color = Color3.fromRGB(255, 255, 255), bold = true})}{math.round(storage.gunData.MuzzleVelocity * modTable.MuzzleVelocity)}`
			
			modInfoFrame.Damage.Text = `{ezRichText("Damage: ", {color = Color3.fromRGB(255, 255, 255), bold = true})}{math.round(storage.gunData.LimbDamage[1] * modTable.DamageMod)} - {math.round(storage.gunData.LimbDamage[2] * modTable.DamageMod)}`
			modInfoFrame.MuzzleVelocity.Text = `{ezRichText("Velocity: ", {color = Color3.fromRGB(255, 255, 255), bold = true})}{math.round(storage.gunData.MuzzleVelocity * modTable.MuzzleVelocity)}`
			modInfoFrame.Accuracy.Text = `{ezRichText("Accuracy: ", {color = Color3.fromRGB(255, 255, 255), bold = true})}{math.round(accuracyScore)}`
			modInfoFrame.Penetration.Text = `{ezRichText("Penetration: ", {color = Color3.fromRGB(255, 255, 255), bold = true})}{math.round(storage.gunData.BulletPenetration)}`
			
			attachments.Center.GunName.Text = storage.gunData.gunName
			modifications.Center.GunName.Text = storage.gunData.gunName
			
			fillUpdate(infoFrame.Damage, storage.gunData.LimbDamage[1] * modTable.DamageMod, storage.gunData.LimbDamage[2] * modTable.DamageMod, 100)
			fillUpdate(infoFrame.MuzzleVelocity, storage.gunData.MuzzleVelocity * modTable.MuzzleVelocity, storage.gunData.MuzzleVelocity * modTable.MuzzleVelocity, 3000)
			
			fillUpdate(modInfoFrame.MuzzleVelocity, (storage.gunData.MuzzleVelocity * modTable.MuzzleVelocity), (storage.gunData.MuzzleVelocity * modTable.MuzzleVelocity), 3000)
			fillUpdate(modInfoFrame.Damage, (storage.gunData.LimbDamage[1] * modTable.DamageMod), (storage.gunData.LimbDamage[2] * modTable.DamageMod), 100)
			fillUpdate(modInfoFrame.Accuracy, accuracyScore, accuracyScore, 100)
			fillUpdate(modInfoFrame.Penetration, storage.gunData.BulletPenetration, storage.gunData.BulletPenetration, 200)
		else
			attachments.GunInfo.Visible = false
			attachments.Center.GunName.Visible = false
			
			modifications.GunInfo.Visible = false
			modifications.Center.GunName.Visible = false
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
			if not pages then return end
			if not modifications then return end
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
			if not pages then return end
			if not modifications then return end
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
			if not pages then return end
			if not modifications then return end
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
	function determineType(model, getName)
		if not (model and model:IsA("Model")) then
			return nil
		end
		
		if not getName then
			if freeMode then
				return "Free"
			end
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
					return "UnderBarrel"
				end
				if (attModule.SightZoom and attModule.SightZoom > 0)
					or (attModule.SightZoom2 and attModule.SightZoom2 > 0)
				then
					return "Sight"
				end
				if attModule.IsSuppressor
					or attModule.IsFlashHider
				then
					return "Barrel"
				end
				if attModule.InfraRed then
					return "Other"
				end
			end
		end
	
		if model:FindFirstChild("LaserPoint") or model:FindFirstChild("FlashPoint") then
			return "UnderBarrel"
		elseif model:FindFirstChild("AimPos") or model:FindFirstChild("SightMark") then
			return "Sight"
		elseif model:FindFirstChild("BarrelPos") then
			return "Barrel"
		else
			return "Other"
		end
	end
	local function createAttOrganize(name, parent)
		if not parent then
			parent = attachments.AttachmentMenu.Scroll
		end
		
		local frame = Instance.new("Frame", parent)
		frame.BackgroundTransparency = 1
		frame.Size = UDim2.new(1,0,0,0)
		frame.AutomaticSize = Enum.AutomaticSize.Y
		frame.Name = name
	
		local title = Instance.new("TextLabel", frame)
		title.BackgroundTransparency = 1
		title.Size = UDim2.new(1,0,0,30)
		title.TextColor3 = Color3.fromRGB(255, 255, 255)
		title.TextSize = 18
		title.Text = name
		title.Font = Enum.Font.Sarpanch
		title.TextXAlignment = Enum.TextXAlignment.Center
		title.TextYAlignment = Enum.TextYAlignment.Bottom
		title.Name = "000 Title 000"
		title.LayoutOrder = -1
	
		local list = Instance.new("UIListLayout", frame)
		list.SortOrder = Enum.SortOrder.Name
	end
	
	function createAttSection(name, attType)
		local attButton = attachments.Center.AttachmentTypes:FindFirstChild(name)
		if attButton then
			local frame = Instance.new("Frame", attachments.AttachmentMenu.Scroll)
			frame.BackgroundTransparency = 1
			frame.Size = UDim2.new(1,0,0,0)
			frame.AutomaticSize = Enum.AutomaticSize.Y
			frame.Name = attType
	
			local list = Instance.new("UIListLayout", frame)
			list.SortOrder = Enum.SortOrder.LayoutOrder
			
			local function createAttButton(name, typeAtt)
				local temp = templates.Attachment:Clone()
				temp.Name = name
				temp.Text = name
				temp.Visible = true
				
				if typeAtt then
					if frame:FindFirstChild(typeAtt) then
						temp.Parent = frame:FindFirstChild(typeAtt) else
						temp.Parent = frame
					end
				end
				
				return temp
			end
			
			createAttOrganize("Unoptimize", frame)
			createAttOrganize("Sight", frame)
			createAttOrganize("Barrel", frame)
			createAttOrganize("UnderBarrel", frame)
			createAttOrganize("Other", frame)
			
			local temp = createAttButton("None", "Unoptimize")
			temp.Activated:Connect(function()
				attachments.Center.Finish.Visible = true
				setAttachment(attType, "")
			end)
	
			for _, attachment in ipairs(attachmentModels:GetChildren()) do
				local typeAtt = determineType(attachment)
				if typeAtt and frame.Name == typeAtt then
					local temp = createAttButton(attachment.Name, determineType(attachment, true))
					temp.Activated:Connect(function()
						attachments.Center.Finish.Visible = true
						setAttachment(attType, attachment.Name)
					end)
				elseif typeAtt == "Free" then
					local temp = createAttButton(attachment.Name, determineType(attachment, true))
					temp.Activated:Connect(function()
						attachments.Center.Finish.Visible = true
						setAttachment(attType, attachment.Name)
					end)
				end
			end
			
			attTabControl:AddTab(attButton, name, function()
				frame.Visible = true
				attButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
				attButton.TextColor3 = Color3.fromRGB(255, 255, 255)
				attachments.AttachmentMenu.Visible = true
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
	function setupModButton(button, minValue, maxValue, startValue, func)
		if not startValue then
			startValue = 1
		end
		
		minValue = tonumber(minValue)
		maxValue = tonumber(maxValue)
		startValue = tonumber(startValue)
		
		local textbox = button:FindFirstChild("TextBox")
		if textbox then
			textbox.FocusLost:Connect(function()
				if textbox.Text ~= "" or textbox.Text ~= nil then
					local value = tonumber(textbox.Text)
					value = math.clamp(value, minValue, maxValue)
					
					textbox.Text = ""
	
					func(value)
					updateGunInfo()
				end
			end)
		end
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
						
						if mainMode == "Attachments" then
							tabControl:SwitchTab(attachmentsTab) else
							tabControl:SwitchTab(modificationsTab)
						end
					end)
				end
			end
		end
	end
	
	createAttSection("Barrel", "BarrelAtt")
	createAttSection("Other", "OtherAtt")
	createAttSection("Sight", "SightAtt")
	createAttSection("UnderBarrel", "UnderBarrelAtt")
	
	setupModButton(modifications.ModMenu.Scroll.AmmoModifier, 0, math.huge, 0, function(value)
		storage.gunData.StoredAmmo += (storage.gunData.Ammo * value)
	end)
	setupModButton(modifications.ModMenu.Scroll.DamageModifier, 0, math.huge, 0, function(value)
		storage.gunData.MinDamage = (storage.gunData.LimbDamage[1] * value)
	end)
	setupModButton(modifications.ModMenu.Scroll.VelocityModifier, 0, math.huge, 0, function(value)
		modTable.MuzzleVelocity = getMultiplier(modTable.MuzzleVelocity, value)
		storage.gunData.MuzzleVelocity = value
	end)
	setupModButton(modifications.ModMenu.Scroll.SpreadModifier, 0, math.huge, 0, function(value)
		modTable.MinSpread = getMultiplier(modTable.MinSpread, value)
		modTable.MaxSpread = getMultiplier(modTable.MaxSpread, value)
		
		storage.gunData.MinSpread = value
		storage.gunData.MaxSpread = value
	end)
	setupModButton(modifications.ModMenu.Scroll.PenetrationModifier, 0, math.huge, 0, function(value)
		storage.gunData.IgnoreProtection = true
		storage.gunData.BulletPenetration = value
	end)
	
	updateGuns()
	localPlayer.CharacterAdded:Connect(function()
		updateGuns()
	end)
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
task.spawn(C_85);

return G2L["1"]
