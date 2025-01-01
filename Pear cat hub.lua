spawn(function()

    if getgenv().request then

        return nil

    end

end)

spawn(function()

    if getgenv().request then

        getgenv().request = nil

    end

end)

if getgenv().ScriptExecuted then

    return print("already executed")

end

function ScriptLoad()

repeat

	wait(.1)

until game:IsLoaded() and game.Players.LocalPlayer and game.CoreGui

if getgenv().ScriptExecute then

	return print('Script Already Execute')

end;





-- // Hop \\ --





local function v14_()

	local v274 = game.PlaceId;

	local v275 = {}

	local v276 = ""

	local v277 = os.date("!*t").hour;

	local v278 = false;

	local function v43_()

		local v279;

		if v276 == "" then

			v279 = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. v274 .. "/servers/Public?sortOrder=Asc&limit=100"))

		else

			v279 = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. v274 .. "/servers/Public?sortOrder=Asc&limit=100&cursor=" .. v276))

		end;

		local v280 = ""

		if v279.nextPageCursor and v279.nextPageCursor ~= "null" and v279.nextPageCursor ~= nil then

			v276 = v279.nextPageCursor

		end;

		local v281 = 0;

		for v282, v283 in pairs(v279.data) do

			local v284 = true;

			v280 = tostring(v283.id)

			if tonumber(v283.maxPlayers) > tonumber(v283.playing) then

				for v285, v286 in pairs(v275) do

					if v281 ~= 0 then

						if v280 == tostring(v286) then

							v284 = false

						end

					else

						if tonumber(v277) ~= tonumber(v286) then

							local v287 = pcall(function()

								v275 = {}

								table.insert(v275, v277)

							end)

						end

					end;

					v281 = v281 + 1

				end;

				if v284 == true then

					table.insert(v275, v280)

					wait(0.1)

					pcall(function()

						wait(0.1)

						game:GetService("TeleportService"):TeleportToPlaceInstance(v274, v280, game.Players.LocalPlayer)

					end)

					wait(4)

				end

			end

		end

	end;

	local function v44_()

		while wait(.1) do

			pcall(function()

				v43_()

				if v276 ~= "" then

					v43_()

				end

			end)

		end

	end;

	v44_()

end;





-- // Funny Thing \\ --





local function updateUI()

	local playerGui = game.Players.LocalPlayer.PlayerGui.Main

	playerGui.Fragments.TextColor3 = Color3.fromRGB(255, 0, 255)

	playerGui.Fragments.Text = "https://discord.gg/VBU9K6ABuE Hub #1"

	local font = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)

	playerGui.Fragments.FontFace = font

	playerGui.Beli.FontFace = font

end

updateUI()





-- // Save Setting \\ --





getgenv().Settings = {

	skibidi = false,

	FastAttack = true,

	BringMob = true,

	AutoRejoin = true

}

local function v0_()

	if readfile and writefile and isfile and isfolder then

		if not isfolder("crackedhub") then

			makefolder("crackedhub")

		end

		if not isfolder("crackedhub/Blox Fruits/") then

			makefolder("crackedhub/Blox Fruits/")

		end

		if not isfile("crackedhub/Blox Fruits/crackedhub.json") then

			writefile("crackedhub/Blox Fruits/crackedhub.json", game:GetService("HttpService"):JSONEncode(getgenv().Settings))

		else

			local v124 = game:GetService("HttpService"):JSONDecode(readfile("crackedhub/Blox Fruits/crackedhub.json"))

			for v125, v126 in pairs(v124) do

				getgenv().Settings[v125] = v126

			end

		end

	else

		return

	end

end



local function v1_()

	if readfile and writefile and isfile and isfolder then

		if not isfile("crackedhub/Blox Fruits/crackedhub.json") then

			v0_()

		else

			local v127 = game:GetService("HttpService"):JSONDecode(readfile("crackedhub/Blox Fruits/crackedhub.json"))

			local v128 = {}

			for v129, v130 in pairs(getgenv().Settings) do

				v128[v129] = v130

			end

			writefile("crackedhub/Blox Fruits/crackedhub.json", game:GetService("HttpService"):JSONEncode(v128))

		end

	else

		return

	end

end

v0_()





-- // Value Of DropDown \\ --





v2_ = {}

for v131, v132 in pairs(game:GetService("Workspace").Boats:GetChildren()) do

	table.insert(v2_, v132.Name)

end

local v1 = {

	"Flame",

	"Ice",

	"Quake",

	"Light",

	"Dark",

	"Spider",

	"Rumble",

	"Magma",

	"Buddha",

	"Sand",

	"Phoenix",

	"Dough"

}

if game.PlaceId == 2753915549 then

	Sea1 = true

elseif game.PlaceId == 4442272183 then

	Sea2 = true

elseif game.PlaceId == 7449423635 then

	Sea3 = true

end;

local v2 = game.PlaceId;

if v2 == 2753915549 then

	v6_ = true

elseif v2 == 4442272183 then

	v7_ = true

elseif v2 == 7449423635 then

	v8_ = true

end;

if v6_ then

	v9_ = {

		"The Gorilla King",

		"Bobby",

		"Yeti",

		"Mob Leader",

		"Vice Admiral",

		"Warden",

		"Chief Warden",

		"Swan",

		"Magma Admiral",

		"Fishman Lord",

		"Wysper",

		"Thunder God",

		"Cybhttps://discord.gg/VBU9K6ABuE",

		"Saber Expert"

	}

elseif v7_ then

	v9_ = {

		"Diamond",

		"Jeremy",

		"Fajita",

		"Don Swan",

		"Smoke Admiral",

		"Cursed Captain",

		"Darkbeard",

		"Order",

		"Awakened Ice Admiral",

		"Tide Keeper"

	}

elseif v8_ then

	v9_ = {

		"Stone",

		"Island Empress",

		"Kilo Admiral",

		"Captain Elephant",

		"Beautiful Pirate",

		"rip_indra True Form",

		"Longma",

		"Soul Reaper",

		"Cake Queen"

	}

end;

local v3;

if Sea1 then

	v3 = {

		"Magma Ore",

		"Leather",

		"Scrap Metal",

		"Angel Wings",

		"Fish Tail"

	}

elseif Sea2 then

	v3 = {

		"Magma Ore",

		"Scrap Metal",

		"Radioactive Material",

		"Vampire Fang",

		"Mystic Droplet"

	}

elseif Sea3 then

	v3 = {

		"Mini Tusk",

		"Fish Tail",

		"Scrap Metal",

		"Dragon Scale",

		"Conjured Cocoa",

		"Demonic Wisp",

		"Gunpowder"

	}

end;

table.sort(v3)





-- // Window | Tab \\ --





local v4 = loadstring(game:HttpGet("https://raw.githubusercontent.com/TrashLua/BloxFruits/39436518fa20d141f3c5379a05e02e2066b6421c/FreeScripts.lua"))()

local v5 = loadstring(game:HttpGet("https://raw.githubusercontent.com/Tgoduiem/Main/refs/heads/main/orgy%20hub.lua"))()

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

		Title = "Tab Main",

		Icon = ""

	}),

	Page2 = v7:AddTab({

		Title = "Tab Status",

		Icon = ""

	}),

	Page3 = v7:AddTab({

		Title = "Tab Settings",

		Icon = ""

	}),

	Page4 = v7:AddTab({

		Title = "Tab Shop",

		Icon = ""

	}),

	Page5 = v7:AddTab({

		Title = "Tab Item Farm",

		Icon = ""

	}),

	Page6 = v7:AddTab({

		Title = "Tab Auto World",

		Icon = ""

	}),

	Page7 = v7:AddTab({

		Title = "Tab Raid",

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
local v9 = v8.Page1:AddDropdown("Dropdown", {

	Title = "Choose Weapon",

	Description = "Chọn Vũ Khí",

	Values = {

		"Melee",

		"Sword",

		"Fruit"

	},

	Multi = false,

	Default = getgenv().Settings.SelectWeapon,

})

v9:SetValue("Melee")

v9:OnChanged(function(v133)

	v10_ = v133

	getgenv().Settings.SelectWeapon = v133

end)





local v10 = v8.Page1:AddDropdown("Dropdown", {

	Title = "Fast Attack Speed",

	Description = "Chọn Tốc Độ Đánh",

	Values = {

		"0",

		"0.08",

		"0.1",

		"0.15",

		"0.2",

		"0.3",

		"0.4",

		"0.5"

	},

	Multi = false,

	Default = getgenv().Settings.FastType,

})

v10:OnChanged(function(v134)

	getgenv().FastType = v134

	getgenv().Settings.FastType = v134

end)





local v11 = v8.Page1:AddDropdown("Dropdown", {

	Title = "Select Farm Method",

	Description = "Chọn Cách Farm",

	Values = {

		"Up",

		"Below",

		"Behind",

	},

	Multi = false,

	Default = getgenv().Settings.FarmPos,

})

v11:OnChanged(function(v135)

	getgenv().PosFarm = v135

	getgenv().Settings.FarmPos = v135

end)





local v12 = v8.Page1:AddDropdown("Dropdown", {

	Title = "Choose Farm Mode",

	Description = "Chọn Chế Độ Farm",

	Values = {

		"Farm Level",

		"Bone",

		"Cake Prince"

	},

	Multi = false,

	Default = getgenv().Settings.ModeFarm,

})

v12:OnChanged(function(v136)

	getgenv().FarmMode = v136

	getgenv().Settings.ModeFarm = v136

end)





local v13 = v8.Page1:AddToggle("MyToggle", {

	Title = "Auto Farm Mode Choosen",

	Description = "Farm Chế Độ Đã Chọn",

	Default = getgenv().Settings.AutoFarm

})

v13:OnChanged(function(v137)

	getgenv().AutoFarm = v137;

	getgenv().Settings.AutoFarm = v137

	getgenv().AutoStatsMelee = v137;

end)





if Sea1 then

	local v138 = v8.Page1:AddToggle("MyToggle", {

		Title = "Skip Level 1 -> 300",

		Default = getgenv().Settings.FarmFast

	})

	v138:OnChanged(function(v139)

		getgenv().AutoFarmFast = v139;

		getgenv().Settings.FarmFast = v139

	end)

end





local v14 = v8.Page1:AddToggle("Skibidi", {

	Title = "Auto Spawn Cake Prince",

	Description = "Tự động triệu hồi tư lệnh bột",

	Default = getgenv().Settings.AutoSpawnCakePrince

})

v14:OnChanged(function(v140)

	getgenv().Settings.AutoSpawnCakePrince = v140

	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner", bF)

end)





local v15 = v8.Page1:AddToggle("Skibidi", {

	Title = "Auto Farm Chest",

	Description = "Tự động cày rương",

	Default = getgenv().Settings.FarmChestTween

})

v15:OnChanged(function(v141)

	getgenv().AutoFarmChest = v141;

	getgenv().Settings.FarmChestTween = v141

end)

getgenv().MagnitudeAdd = 0;





local v16 = v8.Page1:AddToggle("Skibidi", {

	Title = "Auto Farm Chest Fast",

	Description = "Tự động cày rương nhanh",

	Default = getgenv().Settings.ChestBypass

})

v16:OnChanged(function(v142)

	getgenv().ChestBypass = v142

	getgenv().Settings.ChestBypass = v142

end)





local v17 = v8.Page1:AddDropdown("Dropdown", {

	Title = "Select Material",

	Description = "Chọn Nguyên Liệu",

	Values = v3,

	Multi = false,

	Default = getgenv().Settings.SelectModeMaterial,

})

v17:OnChanged(function(v143)

	v11_ = v143

	getgenv().Settings.SelectModeMaterial = v143

end)





local v18 = v8.Page1:AddToggle("Skibidi", {

	Title = "Auto Farm Selected Material",

	Description = "Tự động cày nguyên liệu đã chọn",

	Default = getgenv().Settings.FarmMaterial

})

v18:OnChanged(function(v144)

	getgenv().AutoFarmMaterial = v144

	getgenv().Settings.FarmMaterial = v144

end)





local v19 = v8.Page1:AddDropdown("Dropdown", {

	Title = "Choose Boss",

	Description = "Chọn Boss",

	Values = v9_,

	Multi = false,

	Default = getgenv().Settings.SelectBoss,

})

v19:OnChanged(function(v145)

	getgenv().SelectBoss = v145

	getgenv().Settings.SelectBoss = v145

end)





local v20 = v8.Page1:AddToggle("Skibidi", {

	Title = "Auto Farm Selected Boss",

	Description = "Tự động cày boss đã chọn",

	Default = getgenv().Settings.AutoFarmBoss

})

v20:OnChanged(function(v146)

	getgenv().AutoFarmBoss = v146;

	getgenv().Settings.AutoFarmBoss = v146

end)





local v21 = v8.Page2:AddParagraph({

	Title = "Bones Status",

	Content = ""

})

    

    

local v22 = v8.Page2:AddParagraph({

	Title = "Cake Prince Status",

	Content = ""

})





local v23 = v8.Page2:AddParagraph({

	Title = "Elite Status",

	Content = ""

})





local v24 = v8.Page2:AddParagraph({

	Title = "Elite",

	Content = ""

})





local v25 = v8.Page3:AddToggle("Skibidi", {

	Title = "Auto Turn On Ken Haki",

	Description = "Tự động bật haki quan sát",

	Default = getgenv().Settings.AutoKen 

})

v25:OnChanged(function(v147)

	getgenv().AutoKen = v147

	getgenv().Settings.AutoKen = v147

end)





local v26 = v8.Page3:AddToggle("Skibidi", {

	Title = "Disable Damge",

	Description = "Tắt số damge hiện lên",

	Default = getgenv().Settings.Disdame 

})

v26:OnChanged(function(v148)

	getgenv().Disdamage = v148;

	getgenv().Settings.Disdame = v148

end)





local v27 = v8.Page3:AddToggle("MyToggle", {

	Title = "Bring Mob",

	Default = getgenv().Settings.BringMob

})

v27:OnChanged(function(v149)

	getgenv().BringMob = v149

	getgenv().Settings.BringMob = v149

end)





local v28 = v8.Page3:AddToggle("Skibidi", {

	Title = "Fast Attack",

	Description = "Đánh nhanh",

	Default = getgenv().Settings.FastAttack

})

v28:OnChanged(function(v150)

	getgenv().FastAttack = v150;

	_G.FastCuaCat = v150

	getgenv().Settings.FastAttack = v150

end)



local v29 = v8.Page4:AddToggle("Skibidi", {

	Title = "Auto Random Bone",

	Description = "Tự động random xương",

	Default = getgenv().Settings.RandomBone

})

v29:OnChanged(function(v151)

	getgenv().AutoRandomBone = v151

	getgenv().Settings.RandomBone = v151

end)





local v30 = v8.Page3:AddToggle("Skibidi", {

	Title = "Disable Notification",

	Description = "Tắt thông báo",

	Default = getgenv().Settings.Disableanotify

})

v30:OnChanged(function(v152)

	getgenv().Remove_trct = v152

	getgenv().Settings.Disableanotify = v152

end)





v8.Page4:AddButton({

	Title = "Buy Geppo",

	Description = "Mua Geppo",

	Callback = function()

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Geppo")

	end

})

v8.Page4:AddButton({

	Title = "Buy Buso Haki",

	Description = "Mua Haki",

	Callback = function()

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Buso")

	end

})

v8.Page4:AddButton({

	Title = "Buy Soru",

	Description = "Mua Soru",

	Callback = function()

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Soru")

	end

})

v8.Page4:AddButton({

	Title = "Buy Ken Haki",

	Description = "Mua Haki Quan Sát",

	Callback = function()

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk", "Buy")

	end

})

v8.Page4:AddButton({

	Title = "Buy SanguineArt",

	Description = "Mua SanguineArt",

	Callback = function()

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt");

	end

});

v8.Page4:AddButton({

	Title = "Buy God Human",

	Description = "Mua God Human",

	Callback = function()

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman");

	end

});

v8.Page4:AddButton({

	Title = "Buy Sharkman karate",

	Description = "Mua SharkMan Karate",

	Callback = function()

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate", true);

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate");

	end

});

v8.Page4:AddButton({

	Title = "Buy Electric Claw",

	Description = "Mua Electric Claw",

	Callback = function()

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw");

	end

});

v8.Page4:AddButton({

	Title = "Buy DeathStep",

	Description = "Mua Death Step",

	Callback = function()

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep");

	end

});

v8.Page4:AddButton({

	Title = "Buy DragonTalon",

	Description = "Mua Dragon Talon",

	Callback = function()

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon");

	end

});

v8.Page4:AddButton({

	Title = "Buy SuperHuman",

	Description = "Mua SuperHuman",

	Callback = function()

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman");

	end

});

v8.Page4:AddButton({

	Title = "Buy DragonClaw",

	Description = "Mua DragonClaw",

	Callback = function()

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "1");

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2");

	end

});

v8.Page4:AddButton({

	Title = "Buy BlackLeg",

	Description = "Mua BlackLeg",

	Callback = function()

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg");

	end

});

v8.Page4:AddButton({

	Title = "Buy Electro",

	Description = "Mua Electro",

	Callback = function()

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro");

	end

});

v8.Page4:AddButton({

	Title = "Buy FishmanKarate",

	Description = "Mua Fishman Karate",

	Callback = function()

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate");

	end

});

v8.Page4:AddButton({

	Title = "Refund Stats",

	Description = "thiết lập lại Stats",

	Callback = function()

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Refund", "1")

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Refund", "2")

	end

})

v8.Page4:AddButton({

	Title = "Reroll Race",

	Description = "Ngẫu Nhiên Tộc",

	Callback = function()

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Reroll", "1")

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Reroll", "2")

	end

})





local v31 = v8.Page5:AddToggle("Skibidi", {

	Title = "Auto Evo Race V2",

	Description = "Tự động nâng tộc lên V2",

	Default = getgenv().Settings.EvoRaceV2

})

v31:OnChanged(function(v153)

	getgenv().AutoEvoRaceV2 = v153

	getgenv().Settings.EvoRaceV2 = v153

end)





local v32 = v8.Page5:AddToggle("Skibidi", {

	Title = "Auto Bartilo Quest",

	Description = "Tự động làm nhiệm vụ bartilo",

	Default = getgenv().Settings.BartiloQuest

})

v32:OnChanged(function(v154)

	getgenv().AutoBartiloQuest = v154;

	getgenv().Settings.BartiloQuest = v154

end)





local v33 = v8.Page5:AddToggle("Skibidi", {

	Title = "Auto Kill Dark Beard",

	Description = "Tự động giết râu đen",

	Default = getgenv().Settings.AutoDarkCoat

})

v33:OnChanged(function(v155)

	getgenv().AutoDarkCoat = v155;

	getgenv().Settings.AutoDarkCoat = v155

end)





local v34 = v8.Page5:AddToggle("Skibidi", {

	Title = "Auto Farm Ectoplasm",

	Description = "Tự động cày vật chất kì dị",

	Default = getgenv().Settings.AutoEctoplasm

})

v34:OnChanged(function(v156)

	getgenv().AutoEctoplasm = v156;

	getgenv().Settings.AutoEctoplasm = v156

end)





local v35 = v8.Page5:AddToggle("Skibidi", {

	Title = "Auto Musketeer Hat",

	Description = "Tự động lấy mũ musketeer",

	Default = getgenv().Settings.AutoMusketeer

})

v35:OnChanged(function(v157)

	getgenv().AutoMusketeer = v157;

	getgenv().Settings.AutoMusketeer = v157

end)





local v36 = v8.Page5:AddToggle("Skibidi", {

	Title = "Auto Serpent Bow",

	Description = "Tự động cung mãng xà",

	Default = getgenv().Settings.AutoSerpent

})

v36:OnChanged(function(v158)

	getgenv().AutoSerpentBow = v158;

	getgenv().Settings.AutoSerpent = v158

end)





local v37 = v8.Page5:AddToggle("Skibidi", {

	Title = "Auto Factory",

	Description = "Tự động đánh nhà máy",

	Default = getgenv().Settings.AutoFactory

})

v37:OnChanged(function(v159)

	getgenv().AutoFactory = v159;

	getgenv().Settings.AutoFactory = v159

end)





local v38 = v8.Page5:AddToggle("Skibidi", {

	Title = "Auto Swan Glasses",

	Description = "Tự động lấy kính đô phờ la min gô",

	Default = getgenv().Settings.AutoSwanGlass

})

v38:OnChanged(function(v160)

	getgenv().AutoSwanGlasses = v160;

	getgenv().Settings.AutoSwanGlass = v160

end)





local v39 = v8.Page5:AddToggle("Skibidi", {

	Title = "Auto Buddy Sword",

	Description = "Tự động lấy kiếm buddy",

	Default = getgenv().Settings.AutoBuddySwords

})

v39:OnChanged(function(v161)

	getgenv().AutoBuddySwords = v161;

	getgenv().Settings.AutoBuddySwords = v161

end)





local v40 = v8.Page5:AddToggle("Skibidi", {

	Title = "Auto Cavander",

	Description = "Tự động lấy kiếm florentino",

	Default = getgenv().Settings.AutoCavander

})

v40:OnChanged(function(v162)

	getgenv().AutoCavander = v162;

	getgenv().Settings.AutoCavander = v162

end)





local v41 = v8.Page5:AddToggle("Skibidi", {

	Title = "Auto Hallow Sycthe",

	Description = "Tự động lấy kiếm hallow sycthe",

	Default = getgenv().Settings.AutoBossHallow

})

v41:OnChanged(function(v163)

	getgenv().AutoBossHallow = v163;

	getgenv().Settings.AutoBossHallow = v163

end)





local v42 = v8.Page5:AddToggle("Skibidi", {

	Title = "Auto Rengoku Swords",

	Description = "Tự động lấy kiếm rengoku",

	Default = getgenv().Settings.AutoRengoku

})

v42:OnChanged(function(v164)

	getgenv().AutoRengoku = v164;

	getgenv().Settings.AutoRengoku = v164

end)





local v43 = v8.Page5:AddToggle("Skibidi", {

	Title = "Auto True Triple Katana",

	Description = "Tự động lấy tam kiếm",

	Default = getgenv().Settings.AutoTripleKatana

})

v43:OnChanged(function(v165)

	getgenv().AutoTripleKatana = v165;

	getgenv().Settings.AutoTripleKatana = v165

end)





local v44 = v8.Page5:AddToggle("Skibidi", {

	Title = "Auto Pole",

	Description = "Tự động lấy pole",

	Default = getgenv().Settings.AutoPole

})

v44:OnChanged(function(v166)

	getgenv().AutoPole = v166;

	getgenv().Settings.AutoPole = v166

end)





local v45 = v8.Page5:AddToggle("Skibidi", {

	Title = "Auto Saber",

	Description = "Tự động lấy kiếm saber",

	Default = getgenv().Settings.AutoSaber

})

v45:OnChanged(function(v167)

	getgenv().AutoSaber = v167;

	getgenv().Settings.AutoSaber = v167

end)





local v46 = v8.Page5:AddToggle("Skibidi", {

	Title = "Auto Observation Haki V2",

	Description = "Tự động lấy haki quan sát v2",

	Default = getgenv().Settings.AutoKenHakiV2

})

v46:OnChanged(function(v168)

	getgenv().AutoKenHakiV2 = v168;

	getgenv().Settings.AutoKenHakiV2 = v168

end)





local v47 = v8.Page5:AddToggle("Skibidi", {

	Title = "Auto Farm Observation Haki",

	Description = "Tự động cày haki quan sát",

	Default = getgenv().Settings.AutoFarmKen

})

v47:OnChanged(function(v169)

	getgenv().AutoObservation = v169;

	getgenv().Settings.AutoFarmKen = v169

end)





local v48 = v8.Page5:AddToggle("Skibidi", {

	Title = "Auto Castle Raid",

	Description = "Tự động đánh quái ở pháo đài",

	Default = getgenv().Settings.AutoRaidCastle

})

v48:OnChanged(function(v170)

	getgenv().AutoCastleRaid = v170;

	getgenv().Settings.AutoRaidCastle = v170

end)





local v49 = v8.Page5:AddToggle("Skibidi", {

	Title = "Auto Holy Torch",

	Description = "Tự động lấy đuốc",

	Default = getgenv().Settings.AutoHolyTorch

})

v49:OnChanged(function(v171)

	getgenv().AutoHolyTorch = v171;

	getgenv().Settings.AutoHolyTorch = v171

end)





local v50 = v8.Page5:AddToggle("Skibidi", {

	Title = "Auto Rainbow Haki",

	Description = "Tự động lấy haki 7 màu",

	Default = getgenv().Settings.AutoRainBowHaki

})

v50:OnChanged(function(v172)

	getgenv().AutoRainbowHaki = v172;

	getgenv().Settings.AutoRainBowHaki = v172

end)





local v51 = v8.Page6:AddToggle("Skibidi", {

	Title = "Auto Third Sea",

	Description = "Tự động lên biển 3",

	Default = getgenv().Settings.AutoThirdSea

})

v51:OnChanged(function(v173)

	getgenv().AutoThirdSea = v173;

	getgenv().Settings.AutoThirdSea = v173

end)





local v52 = v8.Page6:AddToggle("Skibidi", {

	Title = "Auto Second Sea",

	Description = "Tự động lên biển 2",

	Default = getgenv().Settings.AutoNewWorld

})

v52:OnChanged(function(v174)

	getgenv().AutoNewWorld = v174;

	getgenv().Settings.AutoNewWorld = v174

end)





local v53 = v8.Page7:AddToggle("Skibidi", {

	Title = "Auto Buy Law Raid Chip",

	Description = "Tự động mua chip law raid",

	Default = getgenv().Settings.BuyLawChip

})

v53:OnChanged(function(v175)

	getgenv().Auto_Buy_Law_Chip = v175

	getgenv().Settings.BuyLawChip = v175

end)





local v54 = v8.Page7:AddToggle("Skibidi", {

	Title = "Auto Start Law Raid",

	Description = "Tự động bắt đầu law raid",

	Default = getgenv().Settings.AutoStartLawRaid

})

v54:OnChanged(function(v176)

	getgenv().Auto_Start_Law_Dungeon = v176

	getgenv().Settings.AutoStartLawRaid = v176

end)





local v55 = v8.Page7:AddToggle("Skibidi", {

	Title = "Auto Kill Law",

	Description = "Tự động giết law",

	Default = getgenv().Settings.AutoKillLaw

})

v55:OnChanged(function(v177)

	getgenv().AutoLawRaid = v177

	getgenv().Settings.AutoKillLaw = v177

end)





local v56 = v8.Page7:AddDropdown("Dropdown", {

	Title = "Choose Chip",

	Description = "Chọn Chip",

	Values = v1,

	Multi = false,

	Default = getgenv().Settings.SelectChip

})

v56:SetValue("Melee")

v56:OnChanged(function(v178)

	getgenv().SelectChip = v178

	getgenv().Settings.SelectChip = v178

end)





local v57 = v8.Page7:AddToggle("Skibidi", {

	Title = "Buy Chip",

	Description = "Mua Chip",

	Default = getgenv().Settings.AutoBuyChip

})

v57:OnChanged(function(v179)

	getgenv().Auto_Buy_Chips_Dungeon = v179

	getgenv().Settings.AutoBuyChip = v179

end)





local v58 = v8.Page7:AddToggle("Skibidi", {

	Title = "Auto/Start Raid",

	Description = "Tự Động Bắt Đầu Raid",

	Default = getgenv().Settings.AutoStartRaid

})

v58:OnChanged(function(v180)

	getgenv().Auto_StartRaid = v180

	getgenv().Settings.AutoStartRaid = v180

end)





local v59 = v8.Page7:AddToggle("Skibidi", {

	Title = "Kill Aura",

	Description = "Giết Quái Raid",

	Default = getgenv().Settings.Kill_Aura

})

v59:OnChanged(function(v181)

	getgenv().Kill_Aura = v181

	getgenv().Settings.Kill_Aura = v181

end)





local v60 = v8.Page7:AddToggle("Skibidi", {

	Title = "Over Next Island",

	Description = "Qua Đảo Khác Trong Raid",

	Default = getgenv().Settings.AutoOverNextIsland

})

v60:OnChanged(function(v182)

	getgenv().AutoNextIsland = v182

	getgenv().Settings.AutoOverNextIsland = v182

end)





local v61 = v8.Page7:AddToggle("Skibidi", {

	Title = "Auto Awakening",

	Description = "Tự Động Thức Tỉnh",

	Default = getgenv().Settings.AutoAwaken

})

v61:OnChanged(function(v183)

	getgenv().AutoAwakenAbilities = v183

	getgenv().Settings.AutoAwaken = v183

end)





local v62 = v8.Page7:AddToggle("Skibidi", {

	Title = "Auto Use Low Beli Fruit",

	Description = "Tự Động Dùng Trái Ác Quỷ Thấp Beli",

	Default = getgenv().Settings.AutoFruit

})

v62:OnChanged(function(v184)

	getgenv().AutoFruit = v184

	getgenv().Settings.AutoFruit = v184

end)





v8.Page8:AddButton({

	Title = "Remove Fog",

	Description = "Xóa Xương Mù",

	Callback = function()

		game:GetService("Lighting").LightingLayers:Destroy()

		game:GetService("Lighting").Sky:Destroy()

	end

})





v8.Page8:AddButton({

	Title = "Always Day",

	Description = "Luôn Sáng",

	Callback = function()

		game:GetService("RunService").Heartbeat:wait(0.1)

		game:GetService("Lighting").ClockTime = 12

	end

})





local v63 = v8.Page8:AddToggle("Skibidi", {

	Title = "Auto Rejoin",

	Description = "Tự động vào lại server",

	Default = getgenv().Settings.AutoRejoin

})

v63:OnChanged(function(v185)

	getgenv().AutoRejoinLinh = v185

	getgenv().Settings.AutoRejoin = v185

end)





v8.Page8:AddButton({

	Title = "Redeem All Codes",

	Description = "Dùng Tất Cả Code",

	Callback = function()

		v13_()

	end

})





v8.Page8:AddButton({

	Title = "Join Pirates Team",

	Description = "Vào Đội Hải Tặc",

	Callback = function()

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", "Pirates")

	end

})





v8.Page8:AddButton({

	Title = "Join Marines Team",

	Description = "Vào Đội Hải Quân",

	Callback = function()

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", "Marines")

	end

})





v8.Page8:AddButton({

	Title = "Open Devil Shop Menu",

	Description = "Mở Shop Bán Trái Ác Quỷ",

	Callback = function()

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")

		game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Visible = true

	end

})





v8.Page8:AddButton({

	Title = "Open Color Haki Menu",

	Description = "Mở Bảng Haki",

	Callback = function()

		game.Players.LocalPlayer.PlayerGui.Main.Colors.Visible = true

	end

})





v8.Page8:AddButton({

	Title = "Open Title Name Menu",

	Description = "Mở Bảng Biệt Danh",

	Callback = function()

		local v186 = {

			[1] = "getTitles"

		}

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v186))

		game.Players.LocalPlayer.PlayerGui.Main.Titles.Visible = true

	end

})





v8.Page8:AddButton({

	Title = "Open Awakening Menu",

	Description = "Mở Bảng Thức Tỉnh",

	Callback = function()

		game:GetService("Players").LocalPlayer.PlayerGui.Main.AwakeningToggler.Visible = true

	end

})





v8.Page8:AddButton({

	Title = "Hop Server",

	Description = "Chuyển Máy Chủ",

	Callback = function()

		v14_()

	end

})





v8.Page8:AddButton({

	Title = "Rejoin Server",

	Description = "Vào Lại Máy Chủ Hiện Tại",

	Callback = function()

		game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)

	end

})





local v64 = v8.Page9:AddToggle("Skibidi", {

	Title = "Auto Trial",

	Description = "Tự Động Trial",

	Default = getgenv().Settings.AutoTrial

})

v64:OnChanged(function(v187)

	getgenv().AutoQuestRace = v187

	getgenv().Settings.AutoTrial = v187

end)





local v65 = v8.Page9:AddToggle("Skibidi", {

	Title = "Auto Kill Player Trial",

	Description = "Tự Động Giết Người Chơi Trong Trial",

	Default = getgenv().Settings.AutoKillPlayerTrial

})

v65:OnChanged(function(v188)

	getgenv().KillPlayerTrial = v188

	getgenv().KillPlayerSpam = v188

	getgenv().Settings.AutoKillPlayerTrial = v188

end)





local v66 = v8.Page9:AddToggle("Skibidi", {

	Title = "Auto Pull Lever",

	Description = "Tự Động Gạt Cần",

	Default = getgenv().Settings.ToggleAutoPullLever

})

v66:OnChanged(function(v189)

	getgenv().PULL_lever2F = v189

	v15_ = v189

	getgenv().Settings.ToggleAutoPullLever = v189

end)





local v67 = v8.Page9:AddToggle("Skibidi", {

	Title = "Auto Add Gear",

	Description = "Tự Động Thêm Gear",

	Default = getgenv().Settings.AutoAddGear

})

v67:OnChanged(function(v190)

	getgenv().gear = v190

	getgenv().Settings.AutoAddGear = v190

end)





v8.Page9:AddButton({

	Title = "Teleport To Place Add Gear",

	Description = "Dịch chuyển Đến Chỗ Thêm Gear",

	Callback = function()

		for v191, v192 in next, workspace:GetDescendants() do

			if v192.Name == "Prompt" then

				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v192.CFrame

			end

		end

	end

})





v8.Page9:AddButton({

	Title = "Teleport To Door Race",

	Description = "Dịch Chuyển Đến Cửa Tộc",

	Callback = function()

		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)

		wait(0.1)

		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)

		wait(0.1)

		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)

		wait(0.1)

		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)

		wait(.1)

		if game:GetService("Players").LocalPlayer.Data.Race.Value == "Human" then

			PlayerTP(CFrame.new(29221.822265625, 14890.9755859375, - 205.99114990234375))

		elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Skypiea" then

			PlayerTP(CFrame.new(28960.158203125, 14919.6240234375, 235.03948974609375))

		elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman" then

			PlayerTP(CFrame.new(28231.17578125, 14890.9755859375, - 211.64173889160156))

		elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Cybhttps://discord.gg/VBU9K6ABuE" then

			PlayerTP(CFrame.new(28502.681640625, 14895.9755859375, - 423.7279357910156))

		elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Ghoul" then

			PlayerTP(CFrame.new(28674.244140625, 14890.6767578125, 445.4310607910156))

		elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink" then

			PlayerTP(CFrame.new(29012.341796875, 14890.9755859375, - 380.1492614746094))

		end

	end

})





v8.Page9:AddButton({

	Title = "Collect Gear",

	Description = "Nhặt Gear",

	Callback = function()

		for v193, v194 in next, Workspace.Map.MysticIsland:GetDescendants() do

			if v194.Name:find("Part") and v194.ClassName == "MeshPart" then

				PlayerTP(v194.CFrame)

			end

		end

	end

})





local v68 = v8.Page9:AddToggle("Skibidi", {

	Title = "Auto Buy Train",

	Description = "Tự Động Mua Train",

	Default = getgenv().Settings.AutoBuyTrain

})

v68:OnChanged(function(v195)

	getgenv().AutoBuyTrain = v195

	getgenv().Settings.AutoBuyTrain = v195

end)
