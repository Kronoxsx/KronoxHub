local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
    Name = "KronoxHub Beta / Anime Card Clash",
    LoadingTitle = "KronoxHub",
    LoadingSubtitle = "by Kronox",
    Theme = "Default",
    DisableRayfieldPrompts = false,
    DisableBuildWarnings = false, 
 
    ConfigurationSaving = {
       Enabled = true,
       FolderName = "KronoxHub", 
       FileName = "KronoxHubConfing"
    },
 
    Discord = {
       Enabled = true,
       Invite = "k7bJNMxjpz",
       RememberJoins = true
    },
    
    KeySystem = false,
    KeySettings = {
       Title = "KronoxHub",
       Subtitle = "Key System",
       Note = "Join Discord: https://discord.gg/k7bJNMxjpz", 
       FileName = "KronoxHub", 
       SaveKey = true, 
       GrabKeyFromSite = false, 
       Key = {"KronoxBeta"} 
    }
})


 local MainTab = Window:CreateTab("Main", 4483362458) -- Title, Image
 local MiscTab = Window:CreateTab("Misc", 4483362458)
 local MainSection = MainTab:CreateSection ("Main")
 local dragonNames = {
    "eternal_dragon",
    "shadow_dragon"
}
local worldsData = {
    {Display = "LOBBY", Value = "LOBBY"},
    {Display = "NINJA VILLAGE", Value = "NINJA_VILLAGE"}, 
    {Display = "GREEN PLANET", Value = "GREEN_PLANET"},
    {Display = "SHIBUYA STATION", Value = "SHIBUYA_STATION"},
    {Display = "TITANS CITY", Value = "TITANS_CITY"},
    {Display = "DIMENSIONAL FORTRESS", Value = "DIMENSIONAL_FORTRESS"},
    {Display = "CANDY ISLAND", Value = "CANDY_ISLAND"},
    {Display = "SOLO CITY", Value = "SOLO_CITY"}
}

local selectedWorld = worldsData[1].Value

-- Create dropdown
local Dropdown = MainTab:CreateDropdown({
    Name = "Select World",
    Options = {
        "LOBBY",
        "NINJA VILLAGE",
        "GREEN PLANET",
        "SHIBUYA STATION", 
        "TITANS CITY",
        "DIMENSIONAL FORTRESS",
        "CANDY ISLAND",
        "SOLO CITY"
    },
    CurrentOption = {"LOBBY"},
    MultipleOptions = false,
    Flag = "WorldsDropdown",
    Callback = function(selected)
        for _, world in ipairs(worldsData) do
            if world.Display == selected[1] then
                selectedWorld = world.Value
                break
            end
        end
    end
})

-- Create teleport button
local Button = MainTab:CreateButton({
    Name = "Teleport to Selected World",
    Callback = function()
        local args = {
            [1] = selectedWorld 
        }
        game:GetService("ReplicatedStorage")
            :WaitForChild("KbG")
            :WaitForChild("e8719382-41e0-4938-8faa-ccefa57dff2d")
            :FireServer(unpack(args))
    end
})


local bossData = {
    {Display = "Bijuu Beast", Value = "bijuu_beast"},
    {Display = "Awakened Galactic Tyrant", Value = "awakened_galactic_tyrant"}, 
    {Display = "King of Curses", Value = "king_of_curses"},
    {Display = "Combat Giant", Value = "combat_giant"},
    {Display = "Awakened Pale Demon Lord", Value = "awakened_pale_demon_lord"},
    {Display = "Soul Queen", Value = "soul_queen"},
    {Display = "Awakened Shadow Monarch", Value = "awakened_shadow_monarch"}
}

local selectedBosses = {bossData[1].Value} 
local autoAttackEnabled = false
local attackInterval = 40 
local cycleDuration = 600 --full cycle

local Dropdown = MainTab:CreateDropdown({
    Name = "Select Bosses to Attack",
    Options = {
        "Bijuu Beast",
        "Awakened Galactic Tyrant",
        "King of Curses",
        "Awakened_Pale_Demon Lord",
        "Soul Queen",
        "Awakened Shadow Monarch"
    },
    CurrentOption = {"Bijuu Beast"},
    MultipleOptions = true,
    Flag = "BossDropdown",
    Callback = function(selected)
        selectedBosses = {}
        for _, boss in ipairs(bossData) do
            if table.find(selected, boss.Display) then
                table.insert(selectedBosses, boss.Value)
            end
        end
    end
})

local Toggle = MainTab:CreateToggle({
    Name = "Auto Attack Bosses",
    CurrentValue = false,
    Flag = "AutoBossAttackToggle",
    Callback = function(Value)
        autoAttackEnabled = Value
        if Value then
            coroutine.wrap(function()
                local startTime = os.time()
                local currentIndex = 1
                
                while autoAttackEnabled do
                    -- Attack current boss
                    local args = {[1] = selectedBosses[currentIndex]}
                    game:GetService("ReplicatedStorage")
                        :WaitForChild("KbG")
                        :WaitForChild("3a1fcdd7-87a5-44dc-a4e0-6f3bb90dbdb5")
                        :FireServer(unpack(args))
                    

                    currentIndex = currentIndex + 1
                    if currentIndex > #selectedBosses then
                        currentIndex = 1
                    end
                    

                    if os.time() - startTime >= cycleDuration then
                        currentIndex = 1
                        startTime = os.time()
                    end
                    
                    task.wait(attackInterval)
                end
            end)()
        end
    end
})


local currentDragon = dragonNames[1] -- Default to eternal_dragon

local Dropdown = MainTab:CreateDropdown({
    Name = "Select Raid",
    Options = {"Eternal Dragon", "Shadow Dragon"},
    CurrentOption = {"Eternal Dragon"},
    MultipleOptions = false,
    Flag = "DragonDropdown",
    Callback = function(Option)

        currentDragon = Option[1] == "Eternal Dragon" and dragonNames[1] or dragonNames[2]
    end,
})


local autoFire = false
local Toggle = MainTab:CreateToggle({
    Name = "Auto Raid",
    CurrentValue = false,
    Flag = "AutoFireToggle",
    Callback = function(Value)
        autoFire = Value
        if Value then
            coroutine.wrap(function()
                while autoFire do
                    local args = {
                        [1] = currentDragon -- Only this changes
                    }
                    game:GetService("ReplicatedStorage"):WaitForChild("KbG")
                        :WaitForChild("3a1fcdd7-87a5-44dc-a4e0-6f3bb90dbdb5")
                        :FireServer(unpack(args))
                    task.wait(5)
                end
            end)()
        end
    end,
})

local NotificationToggle = MainTab:CreateToggle({
    Name = "Notifications",  -- Static name that never changes
    CurrentValue = false,    -- Default state
    Flag = "NotificationToggle",
    Callback = function(Value)

        game:GetService("ReplicatedStorage"):WaitForChild("KbG")
            :WaitForChild("e562f3c5-093c-4c88-b211-e0b628e2ffdd")
            :FireServer("NOTIFICATIONS_ENABLED", Value)
    end
})


local DiscordButton = MiscTab:CreateButton({
    Name = "📋 Copy Discord Link",
    Callback = function()
        setclipboard("https://discord.gg/k7bJNMxjpz")
        Rayfield:Notify({
            Title = "Discord Link Copied",
            Content = string.format("Join for keys (reset in %s)", os.date("%A at midnight", nextResetTime)),
            Duration = 8,
            Image = 4483362458
        })
    end
})


local Button = MiscTab:CreateButton({
    Name = "Destroy Script",
    Callback = function()
        Rayfield:Destroy()
    end,
 })
