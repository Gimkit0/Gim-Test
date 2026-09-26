local ExploitGetPlayers = {}

local Players = game:GetService("Players")

function ExploitGetPlayers:GetPlayer(object, fasterPlayers)
	if object:IsA("Model") and object:FindFirstChildOfClass("Humanoid") and object.Archivable == false and object.PrimaryPart then
		local actualPlayer
		for _, player in ipairs(fasterPlayers or Players:GetPlayers()) do
			if string.find(player.Name, object.Name) then
				actualPlayer = player
				break
			end
		end
		if object.PrimaryPart.Name == "HumanoidRootPart" and actualPlayer then
			return true
		end
	end
	return false
end

function ExploitGetPlayers:GetCharacterFromPlayer(player)
	if player.Character then
		return player.Character
	end
	for _, object in ipairs(workspace:GetDescendants()) do
		if self:GetPlayer(object, {player}) then
			return object
		end
	end
end

function ExploitGetPlayers:GetAllCharacters()
	local characters = {}
	local players = Players:GetPlayers()
	for _, player in ipairs(players) do
		if player.Character then
			table.insert(characters, player.Character)
		end
	end
	
	if #characters == #players then return characters end
	
	for _, object in ipairs(workspace:GetDescendants()) do
		if self:GetPlayer(object, players) and not characters[object] then
			table.insert(characters, object)
		end
	end
	return characters
end

return ExploitGetPlayers
