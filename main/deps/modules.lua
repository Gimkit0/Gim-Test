local modules = {}

function modules.fade()
    local TweenService = game:GetService("TweenService")
    
    local Fade = {}
    
    local EXCLUDED_NAMES = {"Container"}
    local EASING_STYLE = Enum.EasingStyle.Quint
    local EASING_DIRECTION = Enum.EasingDirection.InOut
    
    function Fade:Tween(obj, info, goal)
    	local tween = TweenService:Create(obj, info, goal)
    	tween:Play()
    	return tween
    end
    
    function Fade:_checkIfValid(obj)
    	local VALID_CLASSES = {
    		"TextButton", "TextLabel", "TextBox", "ScrollingFrame", "ImageLabel", "ImageButton", 
    		"UIStroke", "BasePart", "MeshPart", "Frame", "Texture", "Decal", "Folder"
    	}
    	
    	return table.find(VALID_CLASSES, obj.ClassName) and not table.find(EXCLUDED_NAMES, obj.Name)
    end
    
    function Fade:_storeInitialTransparency(obj, Attributes)
    	for _, attr in ipairs(Attributes) do
    		if obj[attr] ~= nil and obj:GetAttribute("Initial" .. attr) == nil then
    			obj:SetAttribute("Initial" .. attr, obj[attr])
    		end
    	end
    end
    
    function Fade:_checkForAttributes(obj)
    	local attributeMap = {
    		TextButton = {"BackgroundTransparency", "TextTransparency"},
    		TextLabel = {"BackgroundTransparency", "TextTransparency"},
    		TextBox = {"BackgroundTransparency", "TextTransparency"},
    		ScrollingFrame = {"BackgroundTransparency", "ScrollBarImageTransparency"},
    		ImageLabel = {"BackgroundTransparency", "ImageTransparency"},
    		ImageButton = {"BackgroundTransparency", "ImageTransparency"},
    		UIStroke = {"Transparency"},
    		Frame = {"BackgroundTransparency"},
    		BasePart = {"Transparency"},
    		MeshPart = {"Transparency"},
    		Texture = {"Transparency"},
    		Decal = {"Transparency"}
    	}
    
    	local attributes = attributeMap[obj.ClassName]
    	if attributes then
    		self:_storeInitialTransparency(obj, attributes)
    	end
    end
    
    function Fade:SetTransparency(obj, transparency, speed)
    	local function applyTransparency(obj, transparency)
    		local goals = {}
    
    		for _, attr in ipairs({"Transparency", "BackgroundTransparency", "ImageTransparency", "TextTransparency", "ScrollBarImageTransparency"}) do
    			local InitialAttr = "Initial" .. attr
    			if obj:GetAttribute(InitialAttr) ~= nil then
    				goals[attr] = (transparency == 0) and obj:GetAttribute(InitialAttr) or transparency
    			end
    		end
    
    		if next(goals) then
    			self:Tween(obj, TweenInfo.new(speed, EASING_STYLE, EASING_DIRECTION), goals)
    		end
    	end
    
    	local function scan(obj)
    		if self:_checkIfValid(obj) then
    			self:_checkForAttributes(obj)
    			applyTransparency(obj, transparency)
    		else
    			return
    		end
    
    		for _, inst in ipairs(obj:GetChildren()) do
    			scan(inst)
    		end
    	end
    
    	scan(obj)
    end
    
    function Fade:FadeClose(obj, speed)
    	self:SetTransparency(obj, 1, speed)
    end
    
    function Fade:FadeOpen(obj, speed)
    	self:SetTransparency(obj, 0, speed)
    end
    
    return Fade

end

return modules
