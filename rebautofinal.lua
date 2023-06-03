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
        Max = 1000,
        Def = 1000
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
        return strength >= 100000 and speed >= 100000 and defence >= 100000 and energy >= 100000
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
        if game:GetService("Workspace").Living[playerName].Stats.Strength.Value < 100000 then
            local args1 = {
                [1] = "Blacknwhite27",
                [2] = 1
            }
    
            game:GetService("ReplicatedStorage").Package.Events.p:FireServer(unpack(args1))
        end
    
        -- Second block of code - only invoke if defense is less than 100,000
        if game:GetService("Workspace").Living[playerName].Stats.Defense.Value < 100000 then
            local args2 = {
                [1] = "Blacknwhite27"
            }
    
            game:GetService("ReplicatedStorage").Package.Events.def:InvokeServer(unpack(args2))
        end
    
        -- Third block of code - only invoke if energy is less than 100,000
        if game:GetService("Workspace").Living[playerName].Stats.Energy.Value < 100000 then
            local args3 = {
                [1] = 1,
                [2] = true,
                [3] = CFrame.new(4884.39306640625, 59.267791748046875, 5340.4501953125) * CFrame.Angles(-1.3409267663955688, -1.130136251449585, -1.3176262378692627)
            }
    
            game:GetService("ReplicatedStorage").Package.Events.kb:FireServer(unpack(args3))
        end
    
        -- Fourth block of code
        if game:GetService("Workspace").Living[playerName].Stats.Speed.Value < 100000 then
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
       
        --AUTO MODE--
        spawn(function()
        local plr = game.Players.LocalPlayer
        local equipRemote = game:GetService("ReplicatedStorage").Package.Events.equipskill
        
        local Settings = {
            Tables = {
                Forms = {
                    {FormName = 'SSJBUI', StrengthReq = 120000000, SpeedReq = 120000000, EnergyReq = 120000000},
                    {FormName = 'Ultra Ego', StrengthReq = 120000000, SpeedReq = 120000000, EnergyReq = 120000000},
                    {FormName = 'LBSSJ4', StrengthReq = 100000000, SpeedReq = 100000000, EnergyReq = 100000000},
                    {FormName = 'SSJB4', StrengthReq = 51000000, SpeedReq = 51000000, EnergyReq = 51000000},
                    {FormName = 'True God of Creation', StrengthReq = 31000000, SpeedReq = 31000000, EnergyReq = 31000000},
                    {FormName = 'True God of Destruction', StrengthReq = 31000000, SpeedReq = 31000000, EnergyReq = 31000000},
                    {FormName = 'Super Broly', StrengthReq = 4000000, SpeedReq = 4000000, EnergyReq = 4000000},
                    {FormName = 'SSJR3', StrengthReq = 50000000, SpeedReq = 50000000, EnergyReq = 50000000},
                    {FormName = 'SSJB3', StrengthReq = 50000000, SpeedReq = 50000000, EnergyReq = 50000000},
                    {FormName = 'God of Destruction', StrengthReq = 30000000, SpeedReq = 30000000, EnergyReq = 30000000},
                    {FormName = 'God of Creation', StrengthReq = 30000000, SpeedReq = 30000000, EnergyReq = 30000000},
                    {FormName = 'Jiren Ultra Instinct', StrengthReq = 14000000, SpeedReq = 14000000, EnergyReq = 14000000},
                    {FormName = 'Mastered Ultra Instinct', StrengthReq = 14000000, SpeedReq = 14000000, EnergyReq = 14000000},
                    {FormName = 'Godly SSJ2', StrengthReq = 8000000, SpeedReq = 8000000, EnergyReq = 8000000},
                    {FormName = 'Ultra Instinct Omen', StrengthReq = 5000000, SpeedReq = 5000000, EnergyReq = 5000000},
                    {FormName = 'Evil SSJ', StrengthReq = 4000000, SpeedReq = 4000000, EnergyReq = 4000000},
                    {FormName = 'Blue Evolution', StrengthReq = 3500000, SpeedReq = 3500000, EnergyReq = 3500000},
                    {FormName = 'Dark Rose', StrengthReq = 3500000, SpeedReq = 3500000, EnergyReq = 3500000},
                    {FormName = 'Kefla SSJ2', StrengthReq = 3000000, SpeedReq = 3000000, EnergyReq = 3000000},
                    {FormName = 'SSJ Berserker', StrengthReq = 3000000, SpeedReq = 3000000, EnergyReq = 3000000},
                    {FormName = 'True Rose', StrengthReq = 2400000, SpeedReq = 2400000, EnergyReq = 2400000},
                    {FormName = 'SSJB Kaioken', StrengthReq = 2200000, SpeedReq = 2200000, EnergyReq = 2200000},
                    {FormName = 'SSJ Rose', StrengthReq = 1400000, SpeedReq = 1400000, EnergyReq = 1400000},
                    {FormName = 'SSJ Blue', StrengthReq = 1200000, SpeedReq = 1200000, EnergyReq = 1200000},
                    {FormName = 'Corrupt SSJ', StrengthReq = 700000, SpeedReq = 700000, EnergyReq = 700000},
                    {FormName = 'SSJ Rage', StrengthReq = 700000, SpeedReq = 700000, EnergyReq = 700000},
                    {FormName = 'SSJG', StrengthReq = 450000, SpeedReq = 450000, EnergyReq = 450000},
                    {FormName = 'SSJ4', StrengthReq = 300000, SpeedReq = 300000, EnergyReq = 300000},
                    {FormName = 'Mystic', StrengthReq = 200000, SpeedReq = 200000, EnergyReq = 200000},
                    {FormName = 'LSSJ', StrengthReq = 140000, SpeedReq = 140000, EnergyReq = 140000},
                    {FormName = 'SSJ3', StrengthReq = 95000, SpeedReq = 95000, EnergyReq = 95000},
                    {FormName = 'Spirit SSJ', StrengthReq = 65000, SpeedReq = 65000, EnergyReq = 65000},
                    {FormName = 'SSJ2 Majin', StrengthReq = 65000, SpeedReq = 65000, EnergyReq = 65000},
                    {FormName = 'SSJ2', StrengthReq = 34000, SpeedReq = 34000, EnergyReq = 34000},
                    {FormName = 'SSJ Kaioken', StrengthReq = 16000, SpeedReq = 16000, EnergyReq = 16000},
                    {FormName = 'SSJ', StrengthReq = 6000, SpeedReq = 6000, EnergyReq = 6000},
                    {FormName = 'FSSJ', StrengthReq = 2500, SpeedReq = 2500, EnergyReq = 2500},
                    {FormName = 'Kaioken', StrengthReq = 1000, SpeedReq = 1000, EnergyReq = 1000},
                }
            },
            Variables = {Farm = false}
        }
        
        local currentForm = ""
        
        local function transform()
            pcall(function()
                while true do
                    if game:GetService("ReplicatedStorage").Datas[plr.UserId].Quest.Value ~= "" then
                        repeat wait() until game:GetService("ReplicatedStorage").Datas[plr.UserId].Quest.Value == ""
                    end
        
                    for i,v in pairs(Settings.Tables.Forms) do
                        local formName = v.FormName
                        local strengthReq = v.StrengthReq
                        local speedReq = v.SpeedReq
                        local energyReq = v.EnergyReq
        
                        if game:GetService("ReplicatedStorage").Datas[plr.UserId].Strength.Value >= strengthReq 
                            and game:GetService("ReplicatedStorage").Datas[plr.UserId].Speed.Value >= speedReq
                            and game:GetService("ReplicatedStorage").Datas[plr.UserId].Energy.Value >= energyReq
                            and formName ~= currentForm then
                            if equipRemote:InvokeServer(formName) then
                                currentForm = formName
                                for i = 1, 5 do
                                    game:GetService("ReplicatedStorage").Package.Events.ta:InvokeServer()
                                end
                                break
                            end
                        end
                    end
        
                    repeat wait()
                        if plr.Character.Status.SelectedTransformation.Value ~= plr.Character.Status.Transformation.Value then
                            for i = 1, 5 do
                                game:GetService("ReplicatedStorage").Package.Events.ta:InvokeServer()
                            end
                        end
                    until plr.Character.Status.SelectedTransformation.Value == plr.Character.Status.Transformation.Value
                end
            end)
        end
        
        transform()
        
        Spawn(function()
            while true do
                wait()
                if game:GetService("ReplicatedStorage").Datas[plr.UserId].Quest.Value ~= "" then
                    repeat wait() until game:GetService("ReplicatedStorage").Datas[plr.UserId].Quest.Value == ""
                    wait(1)
                    transform()
                    wait(6)
                end
            end
        end)
        
        Spawn(function()
            plr.CharacterRemoving:Connect(function()
                wait(0.8)
                transform()
            end)
        end)
        end)
        
        game:GetService("VirtualInputManager"):SendKeyEvent(true, "Space", false, uwu)
        game:GetService("VirtualInputManager"):SendKeyEvent(false, "Space", false, uwu)
        game:GetService("VirtualInputManager"):SendKeyEvent(true, "Space", false, uwu)
        game:GetService("VirtualInputManager"):SendKeyEvent(false, "Space", false, uwu)
        
        
        local plr = game.Players.LocalPlayer
         plr.CharacterRemoving:Connect(function()
                      wait(3)
         game:GetService("VirtualInputManager"):SendKeyEvent(true, "Space", false, uwu)
         game:GetService("VirtualInputManager"):SendKeyEvent(false, "Space", false, uwu)
         game:GetService("VirtualInputManager"):SendKeyEvent(true, "Space", false, uwu)
         game:GetService("VirtualInputManager"):SendKeyEvent(false, "Space", false, uwu)
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
                     local humanoidRootPart = game:GetService("Workspace").Living[player.Name].HumanoidRootPart
    
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
                        local strength = game:GetService("Workspace").Living[player.Name].Stats.Strength.Value
                        local speed = game:GetService("Workspace").Living[player.Name].Stats.Speed.Value
                        local defence = game:GetService("Workspace").Living[player.Name].Stats.Defense.Value
                        local energy = game:GetService("Workspace").Living[player.Name].Stats.Energy.Value
    
                        while autoToggle do
                            wait()
                            if strength >= 100000 and speed >= 100000 and defence >= 100000 and energy >= 100000 and workspace.Living:FindFirstChild(player.Name) then
                                if game:GetService("ReplicatedStorage").Datas[player.userId].Quest.Value == "" then
                                    wait(8)
                                    for _, boss in ipairs(bosses) do
                                        if boss.Name ~= lastBoss and workspace:FindFirstChild("Living") and workspace.Living:FindFirstChild(boss.Name) and workspace.Living:FindFirstChild(player.Name) then
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
                                                    ["MouseHit"] = CFrame.new(humanoidRootPart.Position),
                                                    ["FaceMouse"] = true
                                                }
    
                                                _G.PlayedSound = false
    
                                                while _G.Looping do
                                                    wait()
    
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
                                                    if player.Character.Stats.Ki.Value <= player.Character.Stats.Ki.MaxValue * 0.25 then
                                                        while player.Character.Stats.Ki.Value <= player.Character.Stats.Ki.MaxValue * 0.30 do
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
                                                       player.Character:SetPrimaryPartCFrame(humanoidRootPart.CFrame * CFrame.new(0, 0, 2))
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
    
    
    local Reb = true
    
    local function clickLoop()
        while Reb do 
            wait()
            game:GetService("ReplicatedStorage").Package.Events.reb:InvokeServer()
        end
    end
    
    Page.Toggle({
        Text = "Rebirth",
        Callback = function(value)
            print(value)
            if value == true then
                Reb = true
                coroutine.wrap(clickLoop)()
            else
                Reb = false
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
        Max = 1000,
        Def = 1000
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
                        if player.Status.SelectedTransformation.Value ~= player.Status.Transformation.Value then
                            transform:InvokeServer()
                        end
                    until player.Status.SelectedTransformation.Value == player.Status.Transformation.Value

                    wait(1.75)
                    equipRemote:InvokeServer("Ultra Ego")
                    transform:InvokeServer()
                    transform:InvokeServer()
                    spawn(function()
                        equipRemote:InvokeServer("SSJBUI")
                        transform:InvokeServer()
                        transform:InvokeServer()
                    end)
                end
            end

            local diedConnection

            local function onPlayerDied()
                diedConnection:Disconnect()
                wait(6)
                if not (player.Status.Transformation.Value == "Ultra Ego" or player.Status.Transformation.Value == "SSJBUI") then
                    restartScript()
                end
            end

            -- Start the script
            restartScript()

            -- Connect the diedConnection
            local success, error = pcall(function()
            if humanoidRootPart and humanoidRootPart:IsDescendantOf(workspace.Living) and game:GetService("Workspace").Living[player.Name].HumanoidRootPart then
                diedConnection = player.Character.Humanoid.Died:Connect(onPlayerDied)
                end
            end)

            if not success then
                warn("Error connecting diedConnection:", error)
            end

            -- Function to restart the script when "Ultra Ego" or "SSJBUI" transformation is unequipped
            local function restartOnUnequip()
                while true do
                    if not (player.Status.Transformation.Value == "Ultra Ego" or player.Status.Transformation.Value == "SSJBUI") then
                        wait(1)
                        if not (player.Status.Transformation.Value == "Ultra Ego" or player.Status.Transformation.Value == "SSJBUI") then
                            restartScript()
                        end
                    end
                    wait(1)
                end
            end

            spawn(restartOnUnequip)
        end)

        
        game:GetService("VirtualInputManager"):SendKeyEvent(true, "Space", false, uwu)
        game:GetService("VirtualInputManager"):SendKeyEvent(false, "Space", false, uwu)
        game:GetService("VirtualInputManager"):SendKeyEvent(true, "Space", false, uwu)
        game:GetService("VirtualInputManager"):SendKeyEvent(false, "Space", false, uwu)
        
        
        local plr = game.Players.LocalPlayer
         plr.CharacterRemoving:Connect(function()
                      wait(3)
         game:GetService("VirtualInputManager"):SendKeyEvent(true, "Space", false, uwu)
         game:GetService("VirtualInputManager"):SendKeyEvent(false, "Space", false, uwu)
         game:GetService("VirtualInputManager"):SendKeyEvent(true, "Space", false, uwu)
         game:GetService("VirtualInputManager"):SendKeyEvent(false, "Space", false, uwu)
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
                        local strength = game:GetService("Workspace").Living[player.Name].Stats.Strength.Value
                        local speed = game:GetService("Workspace").Living[player.Name].Stats.Speed.Value
                        local defence = game:GetService("Workspace").Living[player.Name].Stats.Defense.Value
                        local energy = game:GetService("Workspace").Living[player.Name].Stats.Energy.Value
    
                        while autoToggle do
                            wait()
                            if strength >= 100000 and speed >= 100000 and defence >= 100000 and energy >= 100000 and workspace.Living:FindFirstChild(player.Name) then
                                if game:GetService("ReplicatedStorage").Datas[player.userId].Quest.Value == "" then
                                    wait(8)
                                    for _, boss in ipairs(bosses) do
                                        if boss.Name ~= lastBoss and workspace:FindFirstChild("Living") and workspace.Living:FindFirstChild(boss.Name) and workspace.Living:FindFirstChild(player.Name) and (player.Status.Transformation.Value == "Ultra Ego" or player.Status.Transformation.Value == "SSJBUI") then
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
                                                    ["MouseHit"] = CFrame.new(humanoidRootPart.Position),
                                                    ["FaceMouse"] = true
                                                }
    
                                                _G.PlayedSound = false
    
                                                while _G.Looping do
                                                    wait()
    
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
                                                       player.Character:SetPrimaryPartCFrame(humanoidRootPart.CFrame * CFrame.new(0, 0, 2))
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

        while rebValue >= game.ReplicatedStorage.Datas[player.UserId].Rebirth.Value do
            game:GetService("ReplicatedStorage").Package.Events.reb:InvokeServer()
            wait(0.01)
        end
        wait(0.5)

        local args = {
            [1] = "Earth"
        }

        while true do
        game:GetService("ReplicatedStorage").Package.Events.TP:InvokeServer(unpack(args))
        wait(2)
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
