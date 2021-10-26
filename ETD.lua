-- Escape The Darkness

-- gamelink: www.roblox.com/games/5884786982

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/IreXion-UI-Library/main/IreXion%20UI%20Library"))()

local Gui = Library:AddGui({
	Title = {"IreXion", "Escape The Darkness"},
	ThemeColor = Color3.fromRGB(255, 0, 0),
	ToggleKey = Enum.KeyCode.Insert,
})

local Tab = Gui:AddTab("Main")
local Tab2 = Gui:AddTab("Others")

local Category = Tab:AddCategory("ESP & TP")
local Page2 = Tab2:AddCategory("Others")

local Button = Category:AddButton("Safe", function()
	local sfzn = CFrame.new(-36.767303466797, 4.1499977111816, 440.71029663086) + Vector3.new(0,20,0)
	local player = game.Players.LocalPlayer.Character.HumanoidRootPart
	_G.Oldpos = player.Position
	wait()
	player.CFrame = sfzn
end)

local Button = Category:AddButton("Return to Play Map", function()
	local oldPos = CFrame.new(_G.Oldpos)
	local player = game.Players.LocalPlayer.Character.HumanoidRootPart
	player.CFrame = oldPos
end)

local Button = Category:AddButton("Pumpkin ESP", function()
	for i,v in pairs(game.Workspace:GetDescendants()) do
		if v.Name == "pumpkin" and v.Parent.Name == "Pumpkin" then -- i am just wondering that the part u wanna esp have these properties u can change them if it doesnt work
		local BillboardGui = Instance.new("BillboardGui")
		local TextLabel = Instance.new("TextLabel")
		
		BillboardGui.Parent = v.Parent
		BillboardGui.AlwaysOnTop = true
		BillboardGui.LightInfluence = 1
		BillboardGui.Name = "ETD Pumpkin"
		BillboardGui.Size = UDim2.new(0, 50, 0, 50)
		BillboardGui.StudsOffset = Vector3.new(0, 2, 0)
		
		TextLabel.Parent = BillboardGui
		TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
		TextLabel.BackgroundTransparency = 1
		TextLabel.Size = UDim2.new(1, 0, 1, 0)
		TextLabel.Text = "Pumpkin"
		TextLabel.TextColor3 = Color3.new(255, 165, 0)
		TextLabel.TextScaled = true
		end
	end
end)

local Button = Category:AddButton("Notes ESP", function()
	for i,v in pairs(game.Workspace.CurrentMap.Mechanics.Notes:GetDescendants()) do
		if v.Name == "Root" and v.Parent.Name == "Note" then -- i am just wondering that the part u wanna esp have these properties u can change them if it doesnt work
		local BillboardGui = Instance.new("BillboardGui")
		local TextLabel = Instance.new("TextLabel")
		
		BillboardGui.Parent = v.Parent.Parent
		BillboardGui.AlwaysOnTop = true
		BillboardGui.LightInfluence = 1
		BillboardGui.Name = "ETD Notes"
		BillboardGui.Size = UDim2.new(0, 50, 0, 50)
		BillboardGui.StudsOffset = Vector3.new(0, 2, 0)
		
		TextLabel.Parent = BillboardGui
		TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
		TextLabel.BackgroundTransparency = 1
		TextLabel.Size = UDim2.new(1, 0, 1, 0)
		TextLabel.Text = "Notes"
		TextLabel.TextColor3 = Color3.new(1, 1, 1)
		TextLabel.TextScaled = true
		end
	end
end)

local Button = Category:AddButton("Killer Spawn", function()
	for i,v in pairs(game.Workspace.CurrentMap.Level:GetDescendants()) do
		if v.Name == "gui" and v.Parent.Name == "KillerSpawn" then -- i am just wondering that the part u wanna esp have these properties u can change them if it doesnt work
		local BillboardGui = Instance.new("BillboardGui")
		local TextLabel = Instance.new("TextLabel")
		
		BillboardGui.Parent = v.Parent
		BillboardGui.AlwaysOnTop = true
		BillboardGui.LightInfluence = 1
		BillboardGui.Name = "ETD KS"
		BillboardGui.Size = UDim2.new(0, 50, 0, 50)
		BillboardGui.StudsOffset = Vector3.new(0, 2, 0)
		
		TextLabel.Parent = BillboardGui
		TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
		TextLabel.BackgroundTransparency = 1
		TextLabel.Size = UDim2.new(1, 0, 1, 0)
		TextLabel.Text = "Killer Spawn"
		TextLabel.TextColor3 = Color3.new(1, 0, 0)
		TextLabel.TextScaled = true
		end
	end
end)

local Button = Page2:AddButton("Unnamed ESP", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/UnnamedESP.lua", true))()
end)

local Bind = Page2:AddBind("Toggle UI Bind", Gui.ToggleKey, function()
	
end)

--[[Library:Notify("Thank you for checking out IreXion - ETD.", function(bool)
	print("User clicked", bool and "yes" or "no")
end)]]--
