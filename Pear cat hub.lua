repeat wait() until game:IsLoaded() and game.Players.LocalPlayer
local v69 = game.Players.LocalPlayer:WaitForChild("PlayerGui")



local v70 = v69:FindFirstChild("SkibidiUi")

if v70 then

	v70:Destroy()

end



v70 = Instance.new("ScreenGui")

v70.Name = "SkibidiUi"

v70.ResetOnSpawn = false

v70.Parent = v69



local v71 = "rbxassetid://18801298853"

local v72 = Instance.new("ImageButton")

v72.Image = v71

v72.Size = UDim2.new(0, 50, 0, 50)

v72.Position = UDim2.new(0.1, 0, 0.9, - 100)

v72.BackgroundColor3 = Color3.new(255, 255, 255)

v72.BackgroundTransparency = 0

v72.Parent = v70



local v73 = Instance.new("UICorner", v72)

v73.CornerRadius = UDim.new(0.5, 0)



local v74 = Instance.new("TextLabel")

v74.Text = ''

v74.Font = Enum.Font.GothamBold

v74.TextSize = 40

v74.TextScaled = false

v74.RichText = true

v74.Size = UDim2.new(1, 0, 1, 0)

v74.BackgroundTransparency = 1

v74.TextXAlignment = Enum.TextXAlignment.Center

v74.TextYAlignment = Enum.TextYAlignment.Center

v74.Parent = v72



local v75 = false



local function v76()

	game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.LeftControl, false, game)

end



v72.MouseButton1Click:Connect(function()

	if not v75 then

		v76()

	end

	v75 = not v75

end)



local v77 = 0

local v78 = 0.5



v72.MouseButton1Click:Connect(function()

	local v454 = tick()

	if v454 - v77 < v78 then

		return

	end

	v77 = v454

	if not v75 then

		v76()

	end

	v75 = not v75

end)


local v4 = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

local v5 = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()

local v6 = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()




local v7 = v4:CreateWindow({

	Title = "Org Hub",

	SubTitle = "By Ztx",

	TabWidth = 150,

	Size = UDim2.fromOffset(500, 350),

	Acrylic = true,

	Theme = "Dark",

	MinimizeKey = Enum.KeyCode.LeftControl

})



local v8 = {

	Page1 = v7:AddTab({

		Title = "Tab Settings",

		Icon = ""

	}),

	Page2 = v7:AddTab({

		Title = "Tab Status and Server",

		Icon = ""

	}),

	Page3 = v7:AddTab({

		Title = "Tab Lock Player",

		Icon = ""

	}),

	Page4 = v7:AddTab({

		Title = "Tab Shop",

		Icon = ""

	}),

	Page5 = v7:AddTab({

		Title = "Tab Main",

		Icon = ""

	}),

	Page6 = v7:AddTab({

		Title = "Tab Subs Fram",

		Icon = ""

	}),

	Page7 = v7:AddTab({

		Title = "Tab Muchs Fram",

		Icon = ""

	}),

	Page8 = v7:AddTab({

		Title = "Tab Misc",

		Icon = ""

	}),

	Page9 = v7:AddTab({

		Title = "Tab Race",

		Icon = ""

	}),

	Page10 = v7:AddTab({

		Title = "Tab Sea Event",

		Icon = ""

	}),

}
local v10 = v8.Page1:AddToggle("MyToggle", {

	Title = "Fast Attack",

	Description = "Farm Chế Độ Đã Chọn",

	Default = getgenv().Settings.AutoFarm

})

v13:OnChanged(function(v134)

	getgenv().FastType = v134

	getgenv().Settings.FastType = v134

end)

spawn(function()

	while wait(.1) do

		if getgenv().FastType then

			getgenv().FastAttackDelay = tonumber(getgenv().FastType) or 0.1

		end

	end

end)




		


