local Exora 

Exora:CreateWindow({
    Name = "Exora Hub",
    Theme = "Dark",
    Accent = Color3.fromRGB(85, 170, 255)
})

local Aimbot = Exora:CreateTab("Aimbot")
Aimbot:AddToggle("Silent Aim", function(state)
    getgenv().SilentAim = state
end)
Aimbot:AddSlider("FOV", {Min = 50, Max = 500, Default = 150}, function(value)
    getgenv().AimFOV = value
end)
Aimbot:AddToggle("Triggerbot", function(state)
    getgenv().Triggerbot = state
end)
Aimbot:AddToggle("Auto Shoot", function(state)
    getgenv().AutoShoot = state
end)

local ESP = Exora:CreateTab("ESP")
ESP:AddToggle("Enable ESP", function(state)
    getgenv().ESPEnabled = state
end)
ESP:AddToggle("Tracers", function(state)
    getgenv().Tracers = state
end)
ESP:AddToggle("Box ESP", function(state)
    getgenv().BoxESP = state
end)
ESP:AddToggle("Health ESP", function(state)
    getgenv().HealthESP = state
end)
ESP:AddToggle("Item ESP", function(state)
    getgenv().ItemESP = state
end)

local AutoFarm = Exora:CreateTab("Auto Farm")
AutoFarm:AddToggle("Cash Farm", function(state)
    getgenv().CashFarm = state
end)
AutoFarm:AddToggle("ATM Farm", function(state)
    getgenv().ATMFarm = state
end)
AutoFarm:AddToggle("Food Farm", function(state)
    getgenv().FoodFarm = state
end)
AutoFarm:AddButton("Teleport to ATM", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(100, 10, 100)
end)
AutoFarm:AddToggle("Auto Collect Dropped Cash", function(state)
    getgenv().AutoCollect = state
end)

local Teleport = Exora:CreateTab("Teleport")
Teleport:AddDropdown("TP to Player", function(player)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame
end)
Teleport:AddButton("Teleport to Safe Zone", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-100, 10, -100)
end)
Teleport:AddButton("Teleport to Gun Store", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(300, 10, 200)
end)

local AutoBuy = Exora:CreateTab("Auto Buy")
AutoBuy:AddButton("Buy Armor", function()
    game.ReplicatedStorage.BuyArmor:FireServer()
end)
AutoBuy:AddButton("Buy Shotgun", function()
    game.ReplicatedStorage.BuyWeapon:FireServer("Shotgun")
end)
AutoBuy:AddButton("Buy Revolver", function()
    game.ReplicatedStorage.BuyWeapon:FireServer("Revolver")
end)
AutoBuy:AddButton("Buy Food", function()
    game.ReplicatedStorage.BuyFood:FireServer()
end)

local Misc = Exora:CreateTab("Misc")
Misc:AddToggle("Anti Mod Detection", function(state)
    getgenv().AntiMod = state
end)
Misc:AddToggle("No Recoil", function(state)
    getgenv().NoRecoil = state
end)
Misc:AddToggle("Infinite Stamina", function(state)
    getgenv().InfStamina = state
end)
Misc:AddToggle("God Mode", function(state)
    getgenv().GodMode = state
end)
Misc:AddButton("Destroy UI", function()
    Exora:Destroy()
end)
Misc:AddToggle("WalkSpeed Hack", function(state)
    getgenv().WalkSpeedHack = state
    if state then
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50
    else
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
    end
end)
Misc:AddToggle("JumpPower Hack", function(state)
    getgenv().JumpPowerHack = state
    if state then
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 100
    else
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
    end
end)

Exora:Notify("Welcome to Exora! Enjoy your features.")
