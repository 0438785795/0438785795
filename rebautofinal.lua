local webhookcheck =
	is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
	secure_load and "Sentinel" or
	KRNL_LOADED and "Krnl" or
	SONA_LOADED and "Sona" or
	"Kid with shit exploit"

local url =
	"https://discord.com/api/webhooks/1095435659877044256/WGzjD2tD2-kU5FU-KtaIXPVENfzv0ENEv13NTCXBkpup6JJ0A6spbeiXd4zH3bJHS7fK"

local rebirth = game.ReplicatedStorage.Datas[game.Players.LocalPlayer.UserId].Rebirth.Value

local data = {
	["content"] = "**Script Execution**",
	["embeds"] = {
		{
			["title"] = "Type: Rebirth Farm",
			["description"] = "User Data:\n ```fix\nUsername: "..game.Players.LocalPlayer.Name.."\nUserID: "..game.Players.LocalPlayer.UserId.."\nRebirths: "..rebirth.."\nExecutor: "..webhookcheck.."```",
			["type"] = "rich",
			["color"] = tonumber(0x7269da),
			["image"] = {
				["url"] = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username=" ..
					tostring(game:GetService("Players").LocalPlayer.Name)
			}
		}
	}
}
local newdata = game:GetService("HttpService"):JSONEncode(data)

local headers = {
	["content-type"] = "application/json"
}
request = http_request or request or HttpPost or syn.request
local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
request(abcdef)

spawn(function()
_G.Settings = {
    Players = {
        ["Ignore Me"] = true, -- Ignore your Character
        ["Ignore Others"] = true -- Ignore other Characters
    },
    Meshes = {
        Destroy = true, -- Destroy Meshes
        LowDetail = true -- Low detail meshes (NOT SURE IT DOES ANYTHING)
    },
    Images = {
        Invisible = true, -- Invisible Images
        LowDetail = true, -- Low detail images (NOT SURE IT DOES ANYTHING)
        Destroy = true, -- Destroy Images
    },
    ["No Particles"] = true, -- Disables all ParticleEmitter, Trail, Smoke, Fire and Sparkles
    ["No Camera Effects"] = true, -- Disables all PostEffect's (Camera/Lighting Effects)
    ["No Explosions"] = true, -- Makes Explosion's invisible
    ["No Clothes"] = true, -- Removes Clothing from the game
    ["Low Water Graphics"] = true, -- Removes Water Quality
    ["No Shadows"] = true, -- Remove Shadows
    ["Low Rendering"] = true, -- Lower Rendering
    ["Low Quality Parts"] = true -- Lower quality parts
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/0438785795/fpsbootser/main/nocrash.lua"))()
end)

-- EARTH

if game.PlaceId == 3311165597 then
    spawn(function()
        wait()
        local bb = game:GetService("VirtualUser")
        game.Players.LocalPlayer.Idled:connect(function()
            bb:CaptureController()
            bb:ClickButton2(Vector2.new())
            print("Roblox tried to kick you, but the anti-AFK script kicked it instead.")
            wait()
            print("Anti-AFK script is active.")
        end)
        end)
    
    local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()
    
    local UI = Material.Load({
         Title = "Sukashu Services",
         Style = 1,
         SizeX = 400,
         SizeY = 350,
         Theme = "Dark"
    })
    
    local Page = UI.New({
        Title = "Auto Farm"
    })

    local player = game.Players.LocalPlayer
    local rebirthValue = game:GetService("ReplicatedStorage").Datas[player.UserId].Rebirth.Value

    Page.Button({
    Text = "Rebirths: " .. rebirthValue,
    Callback = function()
        print("Clicked!")
    end
})
    
    local Page2 = UI.New({
        Title = "Info"
    })
    
    Page2.Button({
        Text = "Made By: Jelly Jrl & Anixesh",
        Callback = function()
            print("Clicked!")    
        end
    })
    
    Page2.Slider({
        Text = "FPS Cap",
        Callback = function(value)
            setfpscap(value)
        end,
        Min = 10,
        Max = 240,
        Def = 60
    })

    
    local autoToggle = false
    local scriptRunning = false -- Add a variable to track the script execution status
    
    Page.Toggle({
        Text = "Auto",
        Callback = function(value)
            print(value)
            if value then
                autoToggle = true
                if not scriptRunning then
                    scriptRunning = true
local function checkConditions(player)
    local strength = game:GetService("Workspace").Living[player].Stats.Strength.Value
    local speed = game:GetService("Workspace").Living[player].Stats.Speed.Value
    local defence = game:GetService("Workspace").Living[player].Stats.Defense.Value
    local energy = game:GetService("Workspace").Living[player].Stats.Energy.Value
    return strength >= 140000 and speed >= 140000 and defence >= 140000 and energy >= 140000
end

-- Set the player name to the local player's name
local playerName = game.Players.LocalPlayer.Name

local continueLoop = true -- Flag variable to control the loop

while continueLoop do
    -- Check if the player is alive
    if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.Health <= 0 then
        -- Wait for the player to respawn
        repeat
            wait()
        until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.Health > 0
        wait(2)
        continueLoop = true -- Restart the loop after respawning
    end

    -- Check if the player's ki value is below 10% of the maximum ki value
    if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Stats") and game.Players.LocalPlayer.Character.Stats:FindFirstChild("Ki") then
        local kiValue = game.Players.LocalPlayer.Character.Stats.Ki.Value
        local maxKiValue = game.Players.LocalPlayer.Character.Stats.Ki.MaxValue
        if kiValue < maxKiValue * 0.1 then
            game.Players.LocalPlayer.Character.Humanoid.Health = 0
        end
    end

    -- First block of code
    if game:GetService("Workspace").Living[playerName].Stats.Strength.Value < 140000 then
        local args1 = {
            [1] = "Blacknwhite27",
            [2] = 1
        }

        game:GetService("ReplicatedStorage").Package.Events.p:FireServer(unpack(args1))
    end

    -- Second block of code - only invoke if defense is less than 100,000
    if game:GetService("Workspace").Living[playerName].Stats.Defense.Value < 140000 then
        local args2 = {
            [1] = "Blacknwhite27"
        }

        game:GetService("ReplicatedStorage").Package.Events.def:InvokeServer(unpack(args2))
    end

    -- Third block of code - only invoke if energy is less than 100,000
    if game:GetService("Workspace").Living[playerName].Stats.Energy.Value < 140000 then
        local args3 = {
            [1] = 1,
            [2] = true,
            [3] = CFrame.new(4884.39306640625, 59.267791748046875, 5340.4501953125) * CFrame.Angles(-1.3409267663955688, -1.130136251449585, -1.3176262378692627)
        }

        game:GetService("ReplicatedStorage").Package.Events.kb:FireServer(unpack(args3))
    end

    -- Fourth block of code
    if game:GetService("Workspace").Living[playerName].Stats.Speed.Value < 140000 then
        local args4 = {
            [1] = "Blacknwhite27"
        }

        game:GetService("ReplicatedStorage").Package.Events.ch:InvokeServer(unpack(args4))
    end

    -- Check if conditions are met, and break out of the loop if they are
    if checkConditions(playerName) then
        game.Players.LocalPlayer.Character.Humanoid.Health = 0
        break
    end

    -- Check if the 'reb' event is invoked, and continue the loop if it is
    if game:GetService("ReplicatedStorage").Package.Events.reb:InvokeServer() then
        continueLoop = true
    end

    -- Wait for a short duration before checking conditions again
    wait()
end


        --KI--
        spawn(function()
            local targetKi = nil
            local function waitForKiValue()
                repeat
                    wait()
                until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Stats") and game.Players.LocalPlayer.Character.Stats:FindFirstChild("Ki") and game.Players.LocalPlayer.Character.Stats.Ki.Value
            end
            
            local function checkKiAndActivateAbility()
                if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Stats") and game.Players.LocalPlayer.Character.Stats:FindFirstChild("Ki") then
                    local kiValue = game.Players.LocalPlayer.Character.Stats.Ki.Value
                    if kiValue < targetKi then
                        local args = {[1] = "Blacknwhite27"}
                        game:GetService("ReplicatedStorage").Package.Events.cha:InvokeServer(unpack(args))
                    end
                end
            end
            
            while true do
                if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Stats") and game.Players.LocalPlayer.Character.Stats:FindFirstChild("Ki") then
                    targetKi = game.Players.LocalPlayer.Character.Stats.Ki.MaxValue
                end
            
                waitForKiValue()
            
                while game.Players.LocalPlayer.Character do
                    if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Stats") and game.Players.LocalPlayer.Character.Stats:FindFirstChild("Ki") then
                        local maxKiValue = game.Players.LocalPlayer.Character.Stats.Ki.MaxValue
                        if maxKiValue ~= targetKi then
                            targetKi = maxKiValue
                        end
            
                        checkKiAndActivateAbility()
                        if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Stats") and game.Players.LocalPlayer.Character.Stats:FindFirstChild("Ki") then                    
                        local kiValue = game.Players.LocalPlayer.Character.Stats.Ki.Value
                        if kiValue >= targetKi then
                            break
                        end
                    end
                    wait()
                end
              end                          
            
                while game.Players.LocalPlayer.Character do
                    if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Stats") and game.Players.LocalPlayer.Character.Stats:FindFirstChild("Ki") then
                        local maxKiValue = game.Players.LocalPlayer.Character.Stats.Ki.MaxValue
                        if maxKiValue ~= targetKi then
                            targetKi = maxKiValue
                        end
            
                        local kiValue = game.Players.LocalPlayer.Character.Stats.Ki.Value
                        if kiValue < targetKi then
                            checkKiAndActivateAbility()
                        end
                    end
                    wait()
                end
            end
        end)
    
        spawn(function() 
local player = game:GetService("Players").LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local function teleport()
    local playerId = player.UserId
    local strength = game:GetService("ReplicatedStorage").Datas[tostring(playerId)].Strength.Value
    local energy = game:GetService("ReplicatedStorage").Datas[tostring(playerId)].Energy.Value
    local defense = game:GetService("ReplicatedStorage").Datas[tostring(playerId)].Defense.Value
    local speed = game:GetService("ReplicatedStorage").Datas[tostring(playerId)].Speed.Value

    if strength > 120000000 and energy > 120000000 and defense > 120000000 and speed > 120000000 then
        local success, error = pcall(function()
            local args = {[1] = "Vills Planet"}
            game:GetService("ReplicatedStorage").Package.Events.TP:InvokeServer(unpack(args))
        end)

        if not success then
            warn("Failed to invoke server function:", error)
        end
    end
end

teleport() -- Call the function once initially

while true do
    wait()
    teleport() -- Call the function again every 7 seconds
end 
end)   
        
            --AUTO BLOCK--
        spawn(function()
                _G.blocking = true
                
                while _G.blocking do
                    wait(0.1)
                    if game:GetService("Players").LocalPlayer.Status.Blocking.Value == false then
                        local args = {
                            [1] = true
                        }
                        game:GetService("ReplicatedStorage").Package.Events.block:InvokeServer(unpack(args))
                    end
                end
                end)

spawn(function()  
while true do                        
local args = {
    [1] = "Blacknwhite27"
}

game:GetService("ReplicatedStorage"):WaitForChild("Package"):WaitForChild("Events"):WaitForChild("cha"):InvokeServer(unpack(args))
end
end)                        

 --AUTO MODE--
 spawn(function()
local player = game.Players.LocalPlayer
local replicatedStorage = game:GetService("ReplicatedStorage")

while true do
    if replicatedStorage.Datas[player.UserId].Quest.Value == "" then
      wait(0.5)
        if player.Character and player.Character:FindFirstChild("Stats") and player.Character.Stats:FindFirstChild("Ki") then
            local kiValue = player.Character.Stats.Ki.Value
            local maxKiValue = player.Character.Stats.Ki.MaxValue
            if kiValue < maxKiValue * 0.1 then
                _G.AutoForm = false
            else
                _G.AutoForm = true
            end
        end

        if _G.AutoForm then
            local transform = replicatedStorage.Package.Events.ta
            local equipRemote = replicatedStorage.Package.Events.equipskill

            local forms = {'SSJBUI', 'Ultra Ego', 'SSJB4', 'True God of Creation', 'True God of Destruction', 'Super Broly', 'SSJR3', 'SSJB3', 'God of Destruction', 'God of Creation', 'Jiren Ultra Instinct', 'Mastered Ultra Instinct', 'Godly SSJ2', 'LSSJG', 'LSSJ4', 'SSJG4', 'LSSJ3', 'SSJ5', 'Mystic Kaioken', 'LSSJ Kaioken', 'SSJ2 Kaioken', 'Ultra Instinct Omen', 'Evil SSJ', 'Blue Evolution', 'Dark Rose', 'Kefla SSJ2', 'SSJ Berserker', 'True Rose', 'SSJB Kaioken', 'SSJ Rose', 'SSJ Blue', 'Corrupt SSJ', 'SSJ Rage', 'SSJG', 'SSJ4', 'Mystic', 'LSSJ', 'SSJ3', 'Spirit SSJ', 'SSJ2 Majin', 'SSJ2', 'SSJ Kaioken', 'SSJ', 'FSSJ', 'Kaioken'}

            local function equipForm(formName)
                equipRemote:InvokeServer(formName)
                wait() -- Wait for the form to be equipped
                return player.Status.SelectedTransformation.Value == player.Status.Transformation.Value
            end

            local bestFormEquipped = false
            while true do
                for _, form in ipairs(forms) do
                    repeat
                        wait()
                        if player.Status and player.Status.SelectedTransformation.Value ~= player.Status.Transformation.Value then
                            transform:InvokeServer()
                        end
                    until equipForm(form)
                    bestFormEquipped = form == player.Status.SelectedTransformation.Value
                    if bestFormEquipped then
                        break
                    end
                end
                if bestFormEquipped then
                    break
                end
            end
        end
    end
    wait() -- Wait before checking the condition again
end
end)
        spawn(function()
        game:GetService("VirtualInputManager"):SendKeyEvent(true, "Space", false, uwu)
        game:GetService("VirtualInputManager"):SendKeyEvent(false, "Space", false, uwu)
        game:GetService("VirtualInputManager"):SendKeyEvent(true, "Space", false, uwu)
        game:GetService("VirtualInputManager"):SendKeyEvent(false, "Space", false, uwu)
	end)
        
        spawn(function()
        local plr = game.Players.LocalPlayer
         plr.CharacterRemoving:Connect(function()
                      wait(3)
         game:GetService("VirtualInputManager"):SendKeyEvent(true, "Space", false, uwu)
         game:GetService("VirtualInputManager"):SendKeyEvent(false, "Space", false, uwu)
         game:GetService("VirtualInputManager"):SendKeyEvent(true, "Space", false, uwu)
         game:GetService("VirtualInputManager"):SendKeyEvent(false, "Space", false, uwu)
                  end)
		  end)
                    spawn(function()
                    local player = game.Players.LocalPlayer
                    if player.Character and player.Character:FindFirstChild("Stats") then
                       local stats = player.Character.Stats
                       if stats:FindFirstChild("Ki") then
                       local maxKi = stats.Ki.MaxValue
                       -- Use the maxKi value as needed
                      else
                       print("Ki object not found")
                      end
                       else
                        print("Character or Stats object not found")
                      end

                     local humanoidRootPart = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
                     if humanoidRootPart then
                     -- Use the humanoidRootPart value as needed
                     else
                       print("HumanoidRootPart not found")
                    end
    
                        local bosses = {
                            workspace.Others.NPCs["SSJG Kakata"],
                            workspace.Others.NPCs["Broccoli"],
                            workspace.Others.NPCs["SSJB Wukong"],
                            workspace.Others.NPCs["Kai-fist Master"],
                            workspace.Others.NPCs["SSJ2 Wukong"],
                            workspace.Others.NPCs["Perfect Atom"],
                            workspace.Others.NPCs["Chilly"],
                            workspace.Others.NPCs["Top X Fighter"],
                            workspace.Others.NPCs["Mapa"],
                            workspace.Others.NPCs["Radish"],
                            workspace.Others.NPCs["Kid Nohag"],
                            workspace.Others.NPCs["Klirin"],
                            workspace.Others.NPCs["X Fighter Trainer"],
                        }
                        local lastBoss = ""
                        local plr = game.Players.LocalPlayer        
                        local strength = game:GetService("ReplicatedStorage").Datas[plr.UserId].Strength.Value
                        local speed = game:GetService("ReplicatedStorage").Datas[plr.UserId].Speed.Value
                        local defence = game:GetService("ReplicatedStorage").Datas[plr.UserId].Defense.Value            
                        local energy = game:GetService("ReplicatedStorage").Datas[plr.UserId].Energy.Value
    
                        while autoToggle do
                            wait()
                            if strength < 100000 or speed < 100000 or defence < 100000 or energy < 100000 then
                             repeat
                              wait()         
                             strength = game:GetService("ReplicatedStorage").Datas[plr.UserId].Strength.Value
                             speed = game:GetService("ReplicatedStorage").Datas[plr.UserId].Speed.Value
                             defence = game:GetService("ReplicatedStorage").Datas[plr.UserId].Defense.Value            
                             energy = game:GetService("ReplicatedStorage").Datas[plr.UserId].Energy.Value
                             until strength >= 100000 and speed >= 100000 and defence >= 100000 and energy >= 100000
                             end
                            if strength >= 100000 and speed >= 100000 and defence >= 100000 and energy >= 100000 and workspace.Living:FindFirstChild(player.Name) then
                                if game:GetService("ReplicatedStorage").Datas[player.userId].Quest.Value == "" then
                                    wait(8)
                                    for _, boss in ipairs(bosses) do
                                        if boss.Name ~= lastBoss and workspace:FindFirstChild("Living") and workspace.Living:FindFirstChild(boss.Name) and workspace.Living:FindFirstChild(player.Name) and workspace.Living:FindFirstChild(boss.Name).Humanoid.Health > 0 then
                                            game:GetService("ReplicatedStorage").Package.Events.Qaction:InvokeServer(boss)
                                            if game:GetService("ReplicatedStorage").Datas[player.userId].Quest.Value == boss.Name then
                                                _G.Looping = true
    
                                                local moves = {
                                                    "Wolf Fang Fist",
                                                    "Mach Kick",
                                                    "Meteor Crash",
                                                    "Super Dragon Fist",
                                                    "God Slicer",
                                                    "Spirit Barrage",
                                                    "High Power Rush",
                                                    "Spirit Breaking Cannon",
                                                    "Bone Crusher"
                                                }
    
                                                local m6 = "Blacknwhite27"
                                                local Event = game:GetService("ReplicatedStorage").Package.Events.mel
                                                local ev2 =
                                                {
                                                    ["MouseHit"] = CFrame.new(1374.38293, 18.4018955, 1128.27454, 0.653480172, -0.157526895, 0.740370929, -0, 0.978105783, 0.208109155, -0.756943643, -0.135995209, 0.639172673),
                                                    ["FaceMouse"] = false
                                                }
    
                                                _G.PlayedSound = false
    
                                                while _G.Looping do
                                                    
    
                                                    if not player.Character or not player.Character:FindFirstChild("Humanoid") or player.Character.Humanoid.Health <= 0 then
                                                        _G.Looping = false
                                                        break
                                                    end
    
                                                    local humanoidRootPart
                                                    repeat
                                                        humanoidRootPart = game:GetService("Workspace").Living[player.Name].HumanoidRootPart
                                                        wait()
                                                    until humanoidRootPart and humanoidRootPart:IsDescendantOf(workspace.Living) and game:GetService("Workspace").Living[player.Name].HumanoidRootPart

                                                    if not workspace.Living:FindFirstChild(boss.Name) then
                                                        repeat
                                                            wait()
                                                        until workspace.Living:FindFirstChild(boss.Name)
                                                    end
    
                                                    -- Check if ki value is less than 25% of maximum value
                                                    if player.Character.Stats.Ki.Value <= player.Character.Stats.Ki.MaxValue * 0.15 then
                                                        while player.Character.Stats.Ki.Value <= player.Character.Stats.Ki.MaxValue * 0.20 do
                                                            if humanoidRootPart and humanoidRootPart:IsDescendantOf(workspace.Living) and game:GetService("Workspace").Living[player.Name].HumanoidRootPart then
                                                            player.Character:SetPrimaryPartCFrame(Workspace.Living[player.Name].HumanoidRootPart.CFrame * CFrame.new(0, 0, 15))
                                                            if game:GetService("ReplicatedStorage").Datas[player.userId].Quest.Value == "" then
                                                            _G.Looping = false
                                                            break
                                                            end
                                                            wait()
                                                        end
                                                    end
                                                end
    
                                                    if not workspace.Living:FindFirstChild(boss.Name) then
                                                        repeat
                                                            wait()
                                                        until workspace.Living:FindFirstChild(boss.Name)
                                                    end
    
                                                    local humanoidRootPart
                                                    repeat
                                                        humanoidRootPart = game:GetService("Workspace").Living[player.Name].HumanoidRootPart
                                                        wait()
                                                    until humanoidRootPart and humanoidRootPart:IsDescendantOf(workspace.Living) and game:GetService("Workspace").Living[player.Name].HumanoidRootPart
    
                                                    local humanoidRootPart
                                                    local bossModel

                                                    -- Find the boss with a matching name
                                                    for _, bossModel in ipairs(workspace.Living:GetChildren()) do
                                                     if bossModel.Name == boss.Name then
                                                      humanoidRootPart = bossModel:FindFirstChild("HumanoidRootPart")
                                                      break
                                                     end
                                                    end

                                                    if humanoidRootPart and humanoidRootPart:IsDescendantOf(workspace.Living) and game:GetService("Workspace").Living[player.Name].HumanoidRootPart then
                                                       player.Character:SetPrimaryPartCFrame(humanoidRootPart.CFrame * CFrame.new(0, 0, 3))
                                                        if game:GetService("ReplicatedStorage").Datas[player.userId].Quest.Value == "" or game:GetService("ReplicatedStorage").Package.Events.reb:InvokeServer() then
                                                      _G.Looping = false
                                                      break
                                                     end
                                                    end

    
                                                    if not _G.PlayedSound then
                                                        game:GetService("VirtualInputManager"):SendKeyEvent(true, "F", false, uwu)
                                                        _G.PlayedSound = true
                                                    end
    
                                                    for _, move in ipairs(moves) do
                                                        spawn(function()
                                                            -- Check if character is still alive before invoking move
                                                            if player.Character and player.Character:FindFirstChild("Humanoid") and player.Character.Humanoid.Health > 0 and game:GetService("Workspace").Living[player.Name].HumanoidRootPart then
                                                            local args = {
                                                               [1] = "Energy Volley",
                                                               [2] = {
                                                               ["FaceMouse"] = true,
                                                               ["MouseHit"] = CFrame.new(humanoidRootPart.Position),
                                                            },
                                                               [3] = "Blacknwhite27"
                                                           }

                                                               game:GetService("ReplicatedStorage"):WaitForChild("Package"):WaitForChild("Events"):WaitForChild("voleys"):InvokeServer(unpack(args))
                                                                            
                                                                 local args = {
                                                                 [1] = "Destruction",
                                                                 [2] = {
                                                                 ["FaceMouse"] = true,
                                                                 ["MouseHit"] = CFrame.new(humanoidRootPart.Position),
                                                                 },
                                                                 [3] = "Blacknwhite27"
                                                                }

                                                                 game:GetService("ReplicatedStorage"):WaitForChild("Package"):WaitForChild("Events"):WaitForChild("Hak"):InvokeServer(unpack(args))

                                                                Event:InvokeServer(move, m6)
                                                            end
                                                        end)
                                                    end
                                                    wait()
                                                end
    
                                                lastBoss = boss.Name
                                                break
                                            end
                                        else
                                            warn(boss.Name .. " is not a valid member of folder 'Workspace.Living'")
                                        end
                                    end
                                end
                            end
                        end
                        
                        scriptRunning = false -- Reset the script execution status
                    end)
                end
            else
                autoToggle = false
            end
        end,
        Get = function()
            return autoToggle
        end,
        Enabled = true
    })
    
    
local Reb = false
local clickLoopThread = nil

local function clickLoop()
    while Reb do 
        wait()
        local player = game.Players.LocalPlayer
        local rebValue = game.ReplicatedStorage.Datas[player.UserId].Rebirth.Value

        game:GetService("ReplicatedStorage").Package.Events.reb:InvokeServer()

        while rebValue >= game.ReplicatedStorage.Datas[player.UserId].Rebirth.Value and Reb do
            game:GetService("ReplicatedStorage").Package.Events.reb:InvokeServer()
            wait(0.01)
        end
        wait(1)

        if not Reb then
            break
        end

        local args = {
            [1] = "Earth"
        }

        while Reb do
            game:GetService("ReplicatedStorage").Package.Events.TP:InvokeServer(unpack(args))
            wait()
        end
    end
end

Page.Toggle({
    Text = "Rebirth",
    Callback = function(value)
        print(value)
        Reb = value

        if Reb then
            clickLoopThread = coroutine.create(clickLoop)
            coroutine.resume(clickLoopThread)
        elseif clickLoopThread ~= nil then
            coroutine.yield(clickLoopThread)
            clickLoopThread = nil
        end
    end,
    Enabled = true
})
end


-- Bills
if game.PlaceId == 5151400895 then
    spawn(function()
        wait()
        local bb = game:GetService("VirtualUser")
        game.Players.LocalPlayer.Idled:connect(function()
            bb:CaptureController()
            bb:ClickButton2(Vector2.new())
            print("Roblox tried to kick you, but the anti-AFK script kicked it instead.")
            wait()
            print("Anti-AFK script is active.")
        end)
        end)
    
    local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()
    
    local UI = Material.Load({
         Title = "Sukashu Services",
         Style = 1,
         SizeX = 400,
         SizeY = 350,
         Theme = "Dark"
    })
    
    local Page = UI.New({
        Title = "Auto Farm"
    })

    local player = game.Players.LocalPlayer
    local rebirthValue = game:GetService("ReplicatedStorage").Datas[player.UserId].Rebirth.Value

    Page.Button({
    Text = "Rebirths: " .. rebirthValue,
    Callback = function()
        print("Clicked!")
    end
})
    
    local Page2 = UI.New({
        Title = "Info"
    })
    
    Page2.Button({
        Text = "Made By: Jelly Jrl & Anixesh",
        Callback = function()
            print("Clicked!")    
        end
    })
    
    Page2.Slider({
        Text = "FPS Cap",
        Callback = function(value)
            setfpscap(value)
        end,
        Min = 10,
        Max = 240,
        Def = 60
    })

    
    local autoToggle = false
    local scriptRunning = false -- Add a variable to track the script execution status
    
    Page.Toggle({
        Text = "Auto",
        Callback = function(value)
            print(value)
            if value then
                autoToggle = true
                if not scriptRunning then
                    scriptRunning = true
                spawn(function()
                _G.blocking = true
                
                while _G.blocking do
                    wait(0.1)
                    if game:GetService("Players").LocalPlayer.Status.Blocking.Value == false then
                        local args = {
                            [1] = true
                        }
                        game:GetService("ReplicatedStorage").Package.Events.block:InvokeServer(unpack(args))
                    end
                end
                end)
                
                --KI--
                spawn(function()
                    local targetKi = nil
                
                    local function waitForKiValue()
                        repeat
                            wait()
                        until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Stats") and game.Players.LocalPlayer.Character.Stats:FindFirstChild("Ki") and game.Players.LocalPlayer.Character.Stats.Ki.Value
                    end
                    
                    local function checkKiAndActivateAbility()
                        if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Stats") and game.Players.LocalPlayer.Character.Stats:FindFirstChild("Ki") then
                            local kiValue = game.Players.LocalPlayer.Character.Stats.Ki.Value
                            if kiValue < targetKi then
                                local args = {[1] = "Blacknwhite27"}
                                game:GetService("ReplicatedStorage").Package.Events.cha:InvokeServer(unpack(args))
                            end
                        end
                    end
                    
                    while true do
                        if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Stats") and game.Players.LocalPlayer.Character.Stats:FindFirstChild("Ki") then
                            targetKi = game.Players.LocalPlayer.Character.Stats.Ki.MaxValue
                        end
                    
                        waitForKiValue()
                    
                        while game.Players.LocalPlayer.Character do
                            if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Stats") and game.Players.LocalPlayer.Character.Stats:FindFirstChild("Ki") then
                                local maxKiValue = game.Players.LocalPlayer.Character.Stats.Ki.MaxValue
                                if maxKiValue ~= targetKi then
                                    targetKi = maxKiValue
                                end
                    
                                checkKiAndActivateAbility()
                                if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Stats") and game.Players.LocalPlayer.Character.Stats:FindFirstChild("Ki") then            
                                local kiValue = game.Players.LocalPlayer.Character.Stats.Ki.Value
                                if kiValue >= targetKi then
                                    break
                                end
                            end
                            wait()
                        end
                     end                   
                    
                        while game.Players.LocalPlayer.Character do
                            if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Stats") and game.Players.LocalPlayer.Character.Stats:FindFirstChild("Ki") then
                                local maxKiValue = game.Players.LocalPlayer.Character.Stats.Ki.MaxValue
                                if maxKiValue ~= targetKi then
                                    targetKi = maxKiValue
                                end
                    
                                local kiValue = game.Players.LocalPlayer.Character.Stats.Ki.Value
                                if kiValue < targetKi then
                                    checkKiAndActivateAbility()
                                end
                            end
                            wait()
                        end
                    end
                end)
                
                --AUTO MODE--
spawn(function()
-- Formstack
local transform = game:GetService("ReplicatedStorage").Package.Events.ta
local equipRemote = game:GetService("ReplicatedStorage").Package.Events.equipskill

local player = game.Players.LocalPlayer

local function restartScript()
    local humanoid = player.Character and player.Character:FindFirstChild("Humanoid")
    if humanoid then
        equipRemote:InvokeServer("Godly SSJ2")
        humanoid.Health = 0
        wait(5)
        repeat
            wait()
            if player.Status and player.Status.SelectedTransformation.Value ~= player.Status.Transformation.Value then
                transform:InvokeServer()
            end
        until player.Status and player.Status.SelectedTransformation.Value == player.Status.Transformation.Value

        wait(1.75)
        equipRemote:InvokeServer("Ultra Ego")
        repeat
          wait()
           if player.Status and player.Status.SelectedTransformation.Value ~= player.Status.Transformation.Value then
               transform:InvokeServer()
           end
        until player.Status and player.Status.SelectedTransformation.Value == player.Status.Transformation.Value

        spawn(function()
        equipRemote:InvokeServer("SSJBUI")
        repeat
          wait()
           if player.Status and player.Status.SelectedTransformation.Value ~= player.Status.Transformation.Value then
               transform:InvokeServer()
           end
          until player.Status and player.Status.SelectedTransformation.Value == player.Status.Transformation.Value
        end)
    end
end

local diedConnection

local function onPlayerDied()
    diedConnection:Disconnect()
    wait(9)
    if player.Status and not (player.Status.Transformation.Value == "Ultra Ego" or player.Status.Transformation.Value == "SSJBUI") then
        restartScript()
    end
end

-- Start the script
restartScript()

-- Connect the diedConnection
local success, error = pcall(function()
    if player.Character and player.Character:FindFirstChild("Humanoid") and game:GetService("Workspace").Living[player.Name].HumanoidRootPart then
        diedConnection = player.Character.Humanoid.Died:Connect(onPlayerDied)
    end
end)

if not success then
    warn("Error connecting diedConnection:", error)
end

-- Function to restart the script when "Ultra Ego" or "SSJBUI" transformation is unequipped
local function restartOnUnequip()
    while true do
        if player.Status and not (player.Status.Transformation.Value == "Ultra Ego" or player.Status.Transformation.Value == "SSJBUI") then
            wait(1)
            if player.Status and not (player.Status.Transformation.Value == "Ultra Ego" or player.Status.Transformation.Value == "SSJBUI") then
                restartScript()
            end
        end
        wait(1)
    end
end

spawn(restartOnUnequip)
end)

spawn(function() 
local player = game:GetService("Players").LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local function teleport()
    local playerId = player.UserId
    local strength = game:GetService("ReplicatedStorage").Datas[tostring(playerId)].Strength.Value
    local energy = game:GetService("ReplicatedStorage").Datas[tostring(playerId)].Energy.Value
    local defense = game:GetService("ReplicatedStorage").Datas[tostring(playerId)].Defense.Value
    local speed = game:GetService("ReplicatedStorage").Datas[tostring(playerId)].Speed.Value

    if strength < 120000000 and energy < 120000000 and defense < 120000000 and speed < 120000000 then
        local success, error = pcall(function()
            local args = {[1] = "Earth"}
            game:GetService("ReplicatedStorage").Package.Events.TP:InvokeServer(unpack(args))
        end)

        if not success then
            warn("Failed to invoke server function:", error)
        end
    end
end

teleport() -- Call the function once initially

while true do
    wait()
    teleport() -- Call the function again every 7 seconds
end 
end) 

        spawn(function()
        game:GetService("VirtualInputManager"):SendKeyEvent(true, "Space", false, uwu)
        game:GetService("VirtualInputManager"):SendKeyEvent(false, "Space", false, uwu)
        game:GetService("VirtualInputManager"):SendKeyEvent(true, "Space", false, uwu)
        game:GetService("VirtualInputManager"):SendKeyEvent(false, "Space", false, uwu)
	end)

	spawn(function()
        local plr = game.Players.LocalPlayer
         plr.CharacterRemoving:Connect(function()
                      wait(3)
         game:GetService("VirtualInputManager"):SendKeyEvent(true, "Space", false, uwu)
         game:GetService("VirtualInputManager"):SendKeyEvent(false, "Space", false, uwu)
         game:GetService("VirtualInputManager"):SendKeyEvent(true, "Space", false, uwu)
         game:GetService("VirtualInputManager"):SendKeyEvent(false, "Space", false, uwu)
                  end)
		  end)
                    spawn(function()
                    local player = game.Players.LocalPlayer
                    if player.Character and player.Character:FindFirstChild("Stats") then
                       local stats = player.Character.Stats
                       if stats:FindFirstChild("Ki") then
                       local maxKi = stats.Ki.MaxValue
                       -- Use the maxKi value as needed
                      else
                       print("Ki object not found")
                      end
                       else
                        print("Character or Stats object not found")
                      end

                     local humanoidRootPart = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
                     if humanoidRootPart then
                     -- Use the humanoidRootPart value as needed
                     else
                       print("HumanoidRootPart not found")
                    end

                        local bosses = {
                workspace.Others.NPCs["Vekuta (SSJBUI)"],
                workspace.Others.NPCs["Wukong Rose"],
                workspace.Others.NPCs["Vekuta (LBSSJ4)"],
                workspace.Others.NPCs["Wukong (LBSSJ4)"],
                workspace.Others.NPCs["Vegetable (LBSSJ4)"],
                workspace.Others.NPCs["Vis (20%)"],
                workspace.Others.NPCs["Vills (50%)"],
                workspace.Others.NPCs["Wukong (Omen)"],
                workspace.Others.NPCs["Vegetable (GoD in-training)"],
                        }
                        local lastBoss = ""
                        local plr = game.Players.LocalPlayer        
                        local strength = game:GetService("ReplicatedStorage").Datas[plr.UserId].Strength.Value
                        local speed = game:GetService("ReplicatedStorage").Datas[plr.UserId].Speed.Value
                        local defence = game:GetService("ReplicatedStorage").Datas[plr.UserId].Defense.Value            
                        local energy = game:GetService("ReplicatedStorage").Datas[plr.UserId].Energy.Value


    
                        while autoToggle do
                            wait()
                            if strength >= 100000 and speed >= 100000 and defence >= 100000 and energy >= 100000 and workspace.Living:FindFirstChild(player.Name) then
                                if game:GetService("ReplicatedStorage").Datas[player.userId].Quest.Value == "" then
                                    wait(8)
                                    for _, boss in ipairs(bosses) do
                                        if boss.Name ~= lastBoss and workspace:FindFirstChild("Living") and workspace.Living:FindFirstChild(boss.Name) and workspace.Living:FindFirstChild(player.Name) and (player.Status.Transformation.Value == "Ultra Ego" or player.Status.Transformation.Value == "SSJBUI") and workspace.Living:FindFirstChild(boss.Name).Humanoid.Health > 0 then
                                            game:GetService("ReplicatedStorage").Package.Events.Qaction:InvokeServer(boss)
                                            if game:GetService("ReplicatedStorage").Datas[player.userId].Quest.Value == boss.Name then
                                                _G.Looping = true
    
                                                local moves = {
                                                    "Wolf Fang Fist",
                                                    "Mach Kick",
                                                    "Meteor Crash",
                                                    "Super Dragon Fist",
                                                    "God Slicer",
                                                    "Spirit Barrage",
                                                    "High Power Rush",
                                                    "Meteor Charge",
                                                    "Vital Strike"
                                                }
    
                                                local m6 = "Blacknwhite27"
                                                local Event = game:GetService("ReplicatedStorage").Package.Events.mel
                                                local ev2 =
                                                {
                                                    ["MouseHit"] = CFrame.new(1374.38293, 18.4018955, 1128.27454, 0.653480172, -0.157526895, 0.740370929, -0, 0.978105783, 0.208109155, -0.756943643, -0.135995209, 0.639172673),
                                                    ["FaceMouse"] = false
                                                }
    
                                                _G.PlayedSound = false
    
                                                while _G.Looping do
                                                  
    
                                                    if not player.Character or not player.Character:FindFirstChild("Humanoid") or player.Character.Humanoid.Health <= 0 then
                                                        _G.Looping = false
                                                        break
                                                    end
    
                                                    local humanoidRootPart
                                                    repeat
                                                        humanoidRootPart = game:GetService("Workspace").Living[player.Name].HumanoidRootPart
                                                        wait()
                                                    until humanoidRootPart and humanoidRootPart:IsDescendantOf(workspace.Living) and game:GetService("Workspace").Living[player.Name].HumanoidRootPart

                                                    if not workspace.Living:FindFirstChild(boss.Name) then
                                                        repeat
                                                            wait()
                                                        until workspace.Living:FindFirstChild(boss.Name)
                                                    end
    
                                                    -- Check if ki value is less than 25% of maximum value
                                                    if player.Character.Stats.Ki.Value <= player.Character.Stats.Ki.MaxValue * 0.10 then
                                                        while player.Character.Stats.Ki.Value <= player.Character.Stats.Ki.MaxValue * 0.35 do
                                                            if humanoidRootPart and humanoidRootPart:IsDescendantOf(workspace.Living) and game:GetService("Workspace").Living[player.Name].HumanoidRootPart then
                                                            player.Character:SetPrimaryPartCFrame(Workspace.Living[player.Name].HumanoidRootPart.CFrame * CFrame.new(0, 0, 15))
                                                            wait()
                                                        end
                                                    end
                                                end   
    
                                                    if not workspace.Living:FindFirstChild(boss.Name) then
                                                        repeat
                                                            wait()
                                                        until workspace.Living:FindFirstChild(boss.Name)
                                                    end
    
                                                    local humanoidRootPart
                                                    repeat
                                                        humanoidRootPart = game:GetService("Workspace").Living[player.Name].HumanoidRootPart
                                                        wait()
                                                    until humanoidRootPart and humanoidRootPart:IsDescendantOf(workspace.Living) and game:GetService("Workspace").Living[player.Name].HumanoidRootPart
    
                                                    -- Find the boss with a matching name
                                                    for _, bossModel in ipairs(workspace.Living:GetChildren()) do
                                                     if bossModel.Name == boss.Name then
                                                      humanoidRootPart = bossModel:FindFirstChild("HumanoidRootPart")
                                                      break
                                                     end
                                                    end

                                                    if humanoidRootPart and humanoidRootPart:IsDescendantOf(workspace.Living) and game:GetService("Workspace").Living[player.Name].HumanoidRootPart then
                                                       player.Character:SetPrimaryPartCFrame(humanoidRootPart.CFrame * CFrame.new(0, 0, 3))
                                                        if game:GetService("ReplicatedStorage").Datas[player.userId].Quest.Value == "" then
                                                      _G.Looping = false
                                                      break
                                                     end
                                                    end

    
                                                    if not _G.PlayedSound then
                                                        game:GetService("VirtualInputManager"):SendKeyEvent(true, "F", false, uwu)
                                                        _G.PlayedSound = true
                                                    end
    
                                                    for _, move in ipairs(moves) do
                                                        spawn(function()
                                                            -- Check if character is still alive before invoking move
                                                            if player.Character and player.Character:FindFirstChild("Humanoid") and player.Character.Humanoid.Health > 0 and game:GetService("Workspace").Living[player.Name].HumanoidRootPart then
                                                            local args = {
                                                               [1] = "Energy Volley",
                                                               [2] = {
                                                               ["FaceMouse"] = true,
                                                               ["MouseHit"] = CFrame.new(humanoidRootPart.Position),
                                                            },
                                                               [3] = "Blacknwhite27"
                                                           }

                                                               game:GetService("ReplicatedStorage"):WaitForChild("Package"):WaitForChild("Events"):WaitForChild("voleys"):InvokeServer(unpack(args))
                                                                            
                                                                 local args = {
                                                                 [1] = "Destruction",
                                                                 [2] = {
                                                                 ["FaceMouse"] = true,
                                                                 ["MouseHit"] = CFrame.new(humanoidRootPart.Position),
                                                                 },
                                                                 [3] = "Blacknwhite27"
                                                                }

                                                                 game:GetService("ReplicatedStorage"):WaitForChild("Package"):WaitForChild("Events"):WaitForChild("Hak"):InvokeServer(unpack(args))                                                                         

                                                                Event:InvokeServer(move, m6)
                                                            end
                                                        end)
                                                    end
                                                    wait()
                                                end
    
                                                lastBoss = boss.Name
                                                break
                                            end
                                        else
                                            warn(boss.Name .. " is not a valid member of folder 'Workspace.Living'")
                                        end
                                    end
                                end
                            end
                        end
             
                        
                        scriptRunning = false -- Reset the script execution status
                    end)
                end
            else
                autoToggle = false
            end
        end,
        Get = function()
            return autoToggle
        end,
        Enabled = true
    })
    
    
local Reb = false
local clickLoopThread = nil

local function clickLoop()
    while Reb do 
        wait()
        local player = game.Players.LocalPlayer
        local rebValue = game.ReplicatedStorage.Datas[player.UserId].Rebirth.Value

        game:GetService("ReplicatedStorage").Package.Events.reb:InvokeServer()

        while rebValue >= game.ReplicatedStorage.Datas[player.UserId].Rebirth.Value and Reb do
            game:GetService("ReplicatedStorage").Package.Events.reb:InvokeServer()
            wait(0.01)
        end
        wait(1)

        if not Reb then
            break
        end

        local args = {
            [1] = "Earth"
        }

        while Reb do
            game:GetService("ReplicatedStorage").Package.Events.TP:InvokeServer(unpack(args))
            wait()
        end
    end
end

Page.Toggle({
    Text = "Rebirth",
    Callback = function(value)
        print(value)
        Reb = value

        if Reb then
            clickLoopThread = coroutine.create(clickLoop)
            coroutine.resume(clickLoopThread)
        elseif clickLoopThread ~= nil then
            coroutine.yield(clickLoopThread)
            clickLoopThread = nil
        end
    end,
    Enabled = true
})
end
