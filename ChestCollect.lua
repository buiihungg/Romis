local DefaultConfig = {
    ["MainConfig"] = {
        ["Enable Farm"] = true,
        ["Version Farm"] = "1",
        ["Sniper Legendary Item"] = false
    },
    ["Settings"] = {
        ["Choose Team"] = "Marines",
        ["White Screen"] = false,
        ["Reset Anti Detect"] = true,
        ["Reset Time Delay"] = 3,
        ["Time Checker"] = 230,
        ["Anti Game Bug"] = true, -- pls turn off when u want ["Sniper Legendary Item"]
        ["Anti Game Bug Method"] = "Teleport", -- "Teleport" or "Rejoin"
        ["Anti Game Bug Check Time"] = 7,
        ["Hop 2"] = false,
        ["Webhook"] = {
            ["Enable Webhook"] = false,
            ["Link"] = "",
            ["Thumbnail"] = "",
            ["Lock Beli"] = 100000000,
            ["Ping User ID"] = "everyone"
        }
    },
    ["FruitSniper"] = {
        ["Enable Sniper Fruit"] = false,
        ["Fruit"] = {
            "Leopard-Leopard",
            "Kitsune-Kitsune",
            "Dragon-Dragon",
            "Yeti-Yeti"
        }
    },
    ["Legendary Sword"] = {
        ["Enable Auto Buy"] = false
    },
    ["Aura Haki"] = {
        ["Enable Auto Buy"] = false
    }
}

local function MergeConfig(d, u)
    for Key, Value in pairs(d) do
        if type(Value) == "table" then
            u[Key] = u[Key] or {}
            MergeConfig(Value, u[Key])
        else
            if u[Key] == nil then
                u[Key] = Value
                print("[Skull Hub] Setting default value for " .. Key .. ": " .. tostring(Value))
            end
        end
    end
    return u
end
getgenv().SH_Settings = MergeConfig(DefaultConfig, getgenv().SH_Settings or {})

local function Encode(str)
    str = tostring(str)
    local LetterArgs = {
        ["A"] = "M", ["B"] = "X", ["C"] = "Q", ["D"] = "K", ["E"] = "W", ["F"] = "Z", ["G"] = "P",
        ["H"] = "R", ["I"] = "N", ["J"] = "V", ["K"] = "G", ["L"] = "T", ["M"] = "H", ["N"] = "B",
        ["O"] = "F", ["P"] = "J", ["Q"] = "Y", ["R"] = "S", ["S"] = "L", ["T"] = "C", ["U"] = "E",
        ["V"] = "D", ["W"] = "U", ["X"] = "I", ["Y"] = "O", ["Z"] = "A",
        
        ["a"] = "M", ["b"] = "X", ["c"] = "Q", ["d"] = "K", ["e"] = "W", ["f"] = "Z", ["g"] = "P",
        ["h"] = "R", ["i"] = "N", ["j"] = "V", ["k"] = "G", ["l"] = "T", ["m"] = "H", ["n"] = "B",
        ["o"] = "F", ["p"] = "J", ["q"] = "Y", ["r"] = "S", ["s"] = "L", ["t"] = "C", ["u"] = "E",
        ["v"] = "D", ["w"] = "U", ["x"] = "I", ["y"] = "O", ["z"] = "A",
        
        ["0"] = "7G", ["1"] = "44", ["2"] = "OS", ["3"] = "1B", ["4"] = "B1",
        ["5"] = "34AB", ["6"] = "88AC", ["7"] = "0BA", ["8"] = "5AS", ["9"] = "2Z",
        
        ["-"] = "G954H"
    }
    
    if not str then
        return ""
    end
    
    local encoded = ""
    for i = 1, #str do
        local char = str:sub(i, i)
        if char:match("[A-Za-z0-9%-]") then
            encoded = encoded .. (LetterArgs[char] or char)
            if i < #str then
                encoded = encoded .. LetterArgs["-"]
            end
        end
    end
    return encoded
end

local ex = "Unknown"
if getexecutorname then
    ex = getexecutorname()
elseif identifyexecutor then
    ex = identifyexecutor()
end

if ex:lower() == "jjexploit" or ex:lower() == "xeno" then
    warn("[Skull Hub] This script is not compatible with " .. ex .. ". Please use a different executor.")
    return
end

for _, h in pairs(workspace:GetChildren()) do
    if h:IsA("Part") and string.find(h.Name, "sh_loaded") then
        local TeleportService = game:GetService("TeleportService")
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "SkullHubRejoinGui"
    ScreenGui.ResetOnSpawn = false
    ScreenGui.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")

    local Button = Instance.new("TextButton")
    Button.Size = UDim2.new(0, 200, 0, 50)
    Button.Position = UDim2.new(0.5, 0, 0, 20)
    Button.AnchorPoint = Vector2.new(0.5, 0)
    Button.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    Button.TextColor3 = Color3.fromRGB(255, 255, 255)
    Button.Font = Enum.Font.SourceSansBold
    Button.TextSize = 20
    Button.Text = "⚡ Rejoin Game ⚡"
    Button.Parent = ScreenGui
    Button.AutoButtonColor = true
    Button.BackgroundTransparency = 0.1
    Button.BorderSizePixel = 0
    Button.ZIndex = 10

    local UICorner = Instance.new("UICorner")
    UICorner.CornerRadius = UDim.new(0, 12)
    UICorner.Parent = Button

    Button.MouseEnter:Connect(function()
        Button.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
    end)
    Button.MouseLeave:Connect(function()
        Button.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    end)
    Button.MouseButton1Click:Connect(function()
        TeleportService:Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
    end)
        warn("[Skull Hub] Another instance of Skull Hub is already running. Please close it before starting a new one.")
        return
    end
end

local shPart = Instance.new("Part")
shPart.Name, shPart.Size, shPart.Position, shPart.Anchored, shPart.Parent = "sh_loaded", Vector3.new(4,1,4), Vector3.new(0,5,0), true, workspace
local Player = game.Players.LocalPlayer
local PlayerName = Player and Player.Name or "Unknown"

local StartTimeStats = os.time()
local a = game:GetService("ReplicatedStorage")
local b = game:GetService("RunService")
local c = game:GetService("CollectionService")
local d = game:GetService("Players")
local e = d.LocalPlayer
local f = game:GetService("TeleportService")
local g = game:GetService("Players")
local h = game:GetService("StarterGui")
local i = game:GetService("LogService")
local j = game:GetService("CoreGui")
local k = game:GetService("UserInputService")
local l = require(game:GetService("ReplicatedStorage").Notification)
local m = game:GetService("VirtualUser")
local n = game:GetService("TeleportService")
local o = game:GetService("HttpService")
local p = game.Players.LocalPlayer
local q = p:WaitForChild("PlayerGui")
local r = game.PlaceId
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local CollectionService = game:GetService("CollectionService")
local TeleportService = game:GetService("TeleportService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local s = Instance.new("ScreenGui")
local t = Instance.new("ImageButton")
local u = Instance.new("UICorner")
local v = Instance.new("Sound")

getgenv().InitialBeli = game:GetService("Players").LocalPlayer.Data.Beli.Value
getgenv().LastBeli = getgenv().InitialBeli
-- BugFunc
local Beli = Player:WaitForChild("Data"):WaitForChild("Beli")
local LastValue = Beli.Value
local LastIncreaseTime = tick()
local LastCheckTime = tick()

game:GetService("Players").LocalPlayer.Idled:connect(
    function()
        game:GetService("VirtualUser"):Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
        wait(1)
        game:GetService("VirtualUser"):Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    end
)

repeat 
    task.wait() 
until game:IsLoaded() and game.Players.LocalPlayer
if not game:IsLoaded() then
    game.Loaded:Wait()
end
local LocalPlayer = game:GetService("Players").LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")
local MainGui
for _, v in ipairs(PlayerGui:GetChildren()) do
    if string.find(string.lower(v.Name), "main") then
        MainGui = v
        break
    end
end

local Ok, Err = pcall(function()
    if MainGui then
        local ChooseTeam
      for _, v in ipairs(MainGui:GetChildren()) do
        if string.find(string.lower(v.Name), "chooseteam") then
            ChooseTeam = v
            break
        end
    end
        if ChooseTeam then
            repeat
                task.wait()
                if ChooseTeam.Visible then
                    local SettingTeam = getgenv().SH_Settings.Settings["Choose Team"]
                    if SettingTeam == "Pirates" then
                        for _, Conn in pairs(getconnections(ChooseTeam.Container.Pirates.Frame.TextButton.Activated)) do
                            Conn.Function()
                        end
                    elseif SettingTeam == "Marines" then
                        for _, Conn in pairs(getconnections(ChooseTeam.Container.Marines.Frame.TextButton.Activated)) do
                            Conn.Function()
                        end
                    else
                        for _, Conn in pairs(getconnections(ChooseTeam.Container.Pirates.Frame.TextButton.Activated)) do
                            Conn.Function()
                        end
                    end
                end
            until LocalPlayer.Team ~= nil
        end
    end
end)

if not Ok then
    warn("Errorhuhuhuhu: " .. Err)
end

function cc()
    if getgenv().SH_Settings.Settings["White Screen"] then
        game:GetService("RunService"):Set3dRenderingEnabled(false)
    else
        game:GetService("RunService"):Set3dRenderingEnabled(true)
    end
end

local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local HttpService = game:GetService("HttpService")
local UserInputService = game:GetService("UserInputService")

local function formatNumber(num)
    if num >= 1000000000 then
        return string.format("%.1fB", num / 1000000000)
    elseif num >= 1000000 then
        return string.format("%.1fM", num / 1000000)
    elseif num >= 1000 then
        return string.format("%.1fK", num / 1000)
    else
        return tostring(num)
    end
end

local function formatTime(seconds)
    local hours = math.floor(seconds / 3600)
    local minutes = math.floor((seconds % 3600) / 60)
    local secs = seconds % 60
    return string.format("%02d:%02d:%02d", hours, minutes, secs)
end

local function loadSavedData()
    local filePath = "Skull Hub/ChestCollect_INFO.json"
    if isfile(filePath) then
        local success, data = pcall(function()
            local jsonData = readfile(filePath)
            return HttpService:JSONDecode(jsonData)
        end)
        
        if success and data then
            return data
        else
            print("Error loading saved data or file corrupted")
            return nil
        end
    else
        print("No saved data found, starting fresh")
        return nil
    end
end

local function saveStats(timeElapsed, beliEarned, initialBeli, sessionStartTime)
    local data = {
        TimeElapsed = timeElapsed,
        BeliEarned = beliEarned,
        InitialBeli = initialBeli,
        SessionStartTime = sessionStartTime,
        Timestamp = os.time()
    }
    if not isfolder("Skull Hub") then
        makefolder("Skull Hub")
    end
    local success, err = pcall(function()
        local jsonData = HttpService:JSONEncode(data)
        writefile("Skull Hub/ChestCollect_INFO.json", jsonData)
    end)
    if not success then
        print("Error saving data:", err)
    end
end

local X = Instance.new("ScreenGui")
X.Name = "ChestCollectUI_Glass"
X.Parent = LocalPlayer:WaitForChild("PlayerGui")
X.ResetOnSpawn = false
X.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local BlurEffect = Instance.new("BlurEffect")
BlurEffect.Size = 8
BlurEffect.Parent = game:GetService("Lighting")

local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Size = UDim2.new(0, 500, 0, 500)
MainFrame.Position = UDim2.new(0.5, -250, 0.5, -250)
MainFrame.BackgroundColor3 = Color3.fromRGB(15, 18, 25)
MainFrame.BackgroundTransparency = 0.15
MainFrame.BorderSizePixel = 0
MainFrame.Parent = X

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0, 24)
MainCorner.Parent = MainFrame

local GlassGradient = Instance.new("UIGradient")
GlassGradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(25, 30, 45)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(15, 18, 25))
})
GlassGradient.Rotation = 135
GlassGradient.Transparency = NumberSequence.new({
    NumberSequenceKeypoint.new(0, 0.15),
    NumberSequenceKeypoint.new(0.5, 0.2),
    NumberSequenceKeypoint.new(1, 0.15)
})
GlassGradient.Parent = MainFrame

local OuterGlow = Instance.new("Frame")
OuterGlow.Name = "OuterGlow"
OuterGlow.Size = UDim2.new(1, 8, 1, 8)
OuterGlow.Position = UDim2.new(0, -4, 0, -4)
OuterGlow.BackgroundColor3 = Color3.fromRGB(100, 150, 255)
OuterGlow.BackgroundTransparency = 0.7
OuterGlow.ZIndex = 0
OuterGlow.Parent = MainFrame

local OuterGlowCorner = Instance.new("UICorner")
OuterGlowCorner.CornerRadius = UDim.new(0, 26)
OuterGlowCorner.Parent = OuterGlow

local OuterGlowGradient = Instance.new("UIGradient")
OuterGlowGradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(138, 180, 248)),
    ColorSequenceKeypoint.new(0.3, Color3.fromRGB(123, 97, 255)),
    ColorSequenceKeypoint.new(0.7, Color3.fromRGB(147, 51, 234)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(79, 70, 229))
})
OuterGlowGradient.Rotation = 0
OuterGlowGradient.Parent = OuterGlow

local RainbowBorder = Instance.new("UIStroke")
RainbowBorder.Color = Color3.fromRGB(255, 255, 255)
RainbowBorder.Thickness = 2
RainbowBorder.Transparency = 0.3
RainbowBorder.Parent = MainFrame

local RainbowGradient = Instance.new("UIGradient")
RainbowGradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(138, 180, 248)),
    ColorSequenceKeypoint.new(0.25, Color3.fromRGB(123, 97, 255)),
    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(147, 51, 234)),
    ColorSequenceKeypoint.new(0.75, Color3.fromRGB(79, 70, 229)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(138, 180, 248))
})
RainbowGradient.Rotation = 0
RainbowGradient.Parent = RainbowBorder

local WaterDropsContainer = Instance.new("Frame")
WaterDropsContainer.Name = "WaterDrops"
WaterDropsContainer.Size = UDim2.new(1, 0, 1, 0)
WaterDropsContainer.BackgroundTransparency = 1
WaterDropsContainer.ClipsDescendants = true
WaterDropsContainer.Parent = MainFrame

for i = 1, 12 do
    local drop = Instance.new("Frame")
    drop.Name = "WaterDrop" .. i
    drop.Size = UDim2.new(0, math.random(6, 14), 0, math.random(6, 14))
    drop.Position = UDim2.new(math.random(0, 100) / 100, 0, math.random(0, 100) / 100, 0)
    drop.BackgroundColor3 = Color3.fromRGB(138, 180, 248)
    drop.BackgroundTransparency = 0.7
    drop.BorderSizePixel = 0
    drop.ZIndex = 10
    drop.Parent = WaterDropsContainer
    
    local dropCorner = Instance.new("UICorner")
    dropCorner.CornerRadius = UDim.new(1, 0)
    dropCorner.Parent = drop
    
    local dropGradient = Instance.new("UIGradient")
    dropGradient.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(138, 180, 248)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(123, 97, 255))
    })
    dropGradient.Rotation = 45
    dropGradient.Transparency = NumberSequence.new({
        NumberSequenceKeypoint.new(0, 0.6),
        NumberSequenceKeypoint.new(0.5, 0.4),
        NumberSequenceKeypoint.new(1, 0.7)
    })
    dropGradient.Parent = drop
    
    spawn(function()
        while drop.Parent do
            local randomDuration = math.random(30, 60) / 10
            TweenService:Create(drop, TweenInfo.new(randomDuration, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
                Position = UDim2.new(
                    math.random(0, 100) / 100,
                    0,
                    math.random(0, 100) / 100,
                    0
                ),
                BackgroundTransparency = math.random(50, 80) / 100
            }):Play()
            wait(randomDuration)
        end
    end)
end

local InnerShadow = Instance.new("Frame")
InnerShadow.Name = "InnerShadow"
InnerShadow.Size = UDim2.new(1, -8, 1, -8)
InnerShadow.Position = UDim2.new(0, 4, 0, 4)
InnerShadow.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
InnerShadow.BackgroundTransparency = 0.9
InnerShadow.BorderSizePixel = 0
InnerShadow.ZIndex = 0
InnerShadow.Parent = MainFrame

local InnerShadowCorner = Instance.new("UICorner")
InnerShadowCorner.CornerRadius = UDim.new(0, 22)
InnerShadowCorner.Parent = InnerShadow

local HeaderFrame = Instance.new("Frame")
HeaderFrame.Name = "HeaderFrame"
HeaderFrame.Size = UDim2.new(1, 0, 0, 100)
HeaderFrame.BackgroundColor3 = Color3.fromRGB(20, 25, 35)
HeaderFrame.BackgroundTransparency = 0.3
HeaderFrame.BorderSizePixel = 0
HeaderFrame.Parent = MainFrame

local HeaderCorner = Instance.new("UICorner")
HeaderCorner.CornerRadius = UDim.new(0, 24)
HeaderCorner.Parent = HeaderFrame

local HeaderGradient = Instance.new("UIGradient")
HeaderGradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(138, 180, 248)),
    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(123, 97, 255)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(147, 51, 234))
})
HeaderGradient.Rotation = 45
HeaderGradient.Transparency = NumberSequence.new({
    NumberSequenceKeypoint.new(0, 0.5),
    NumberSequenceKeypoint.new(0.5, 0.4),
    NumberSequenceKeypoint.new(1, 0.6)
})
HeaderGradient.Parent = HeaderFrame

local HeaderStroke = Instance.new("UIStroke")
HeaderStroke.Color = Color3.fromRGB(138, 180, 248)
HeaderStroke.Thickness = 1.5
HeaderStroke.Transparency = 0.5
HeaderStroke.Parent = HeaderFrame

local IconContainer = Instance.new("Frame")
IconContainer.Size = UDim2.new(0, 60, 0, 60)
IconContainer.Position = UDim2.new(0, 20, 0.5, -30)
IconContainer.BackgroundColor3 = Color3.fromRGB(30, 35, 50)
IconContainer.BackgroundTransparency = 0.3
IconContainer.BorderSizePixel = 0
IconContainer.Parent = HeaderFrame

local IconCorner = Instance.new("UICorner")
IconCorner.CornerRadius = UDim.new(0, 18)
IconCorner.Parent = IconContainer

local IconGradient = Instance.new("UIGradient")
IconGradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(138, 180, 248)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(123, 97, 255))
})
IconGradient.Rotation = 135
IconGradient.Transparency = NumberSequence.new({
    NumberSequenceKeypoint.new(0, 0.3),
    NumberSequenceKeypoint.new(1, 0.5)
})
IconGradient.Parent = IconContainer

local IconStroke = Instance.new("UIStroke")
IconStroke.Color = Color3.fromRGB(138, 180, 248)
IconStroke.Thickness = 1.5
IconStroke.Transparency = 0.4
IconStroke.Parent = IconContainer

local IconShadow = Instance.new("Frame")
IconShadow.Size = UDim2.new(1, 6, 1, 6)
IconShadow.Position = UDim2.new(0, 3, 0, 3)
IconShadow.BackgroundColor3 = Color3.fromRGB(138, 180, 248)
IconShadow.BackgroundTransparency = 0.8
IconShadow.ZIndex = 0
IconShadow.BorderSizePixel = 0
IconShadow.Parent = IconContainer

local IconShadowCorner = Instance.new("UICorner")
IconShadowCorner.CornerRadius = UDim.new(0, 18)
IconShadowCorner.Parent = IconShadow

local TitleIcon = Instance.new("TextLabel")
TitleIcon.Size = UDim2.new(1, 0, 1, 0)
TitleIcon.BackgroundTransparency = 1
TitleIcon.Text = "💀"
TitleIcon.TextSize = 36
TitleIcon.Font = Enum.Font.GothamBold
TitleIcon.ZIndex = 2
TitleIcon.Parent = IconContainer

local TitleLabel = Instance.new("TextLabel")
TitleLabel.Size = UDim2.new(1, -100, 0, 35)
TitleLabel.Position = UDim2.new(0, 90, 0, 22)
TitleLabel.BackgroundTransparency = 1
TitleLabel.Text = "SKULL HUB"
TitleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleLabel.TextSize = 28
TitleLabel.Font = Enum.Font.GothamBold
TitleLabel.TextXAlignment = Enum.TextXAlignment.Left
TitleLabel.TextStrokeTransparency = 0.5
TitleLabel.TextStrokeColor3 = Color3.fromRGB(138, 180, 248)
TitleLabel.Parent = HeaderFrame

local Subtitle = Instance.new("TextLabel")
Subtitle.Size = UDim2.new(1, -100, 0, 20)
Subtitle.Position = UDim2.new(0, 90, 0, 55)
Subtitle.BackgroundTransparency = 1
Subtitle.Text = "Chest Collection • Premium"
Subtitle.TextColor3 = Color3.fromRGB(200, 210, 230)
Subtitle.TextSize = 14
Subtitle.Font = Enum.Font.Gotham
Subtitle.TextXAlignment = Enum.TextXAlignment.Left
Subtitle.TextTransparency = 0.1
Subtitle.Parent = HeaderFrame

local StatsContainer = Instance.new("Frame")
StatsContainer.Name = "StatsContainer"
StatsContainer.Size = UDim2.new(1, -30, 0, 235)
StatsContainer.Position = UDim2.new(0, 15, 0, 115)
StatsContainer.BackgroundTransparency = 1
StatsContainer.Parent = MainFrame

local function CreateGlassCard(name, icon, iconColor, value, position)
    local CardShadow = Instance.new("Frame")
    CardShadow.Name = name .. "Shadow"
    CardShadow.Size = UDim2.new(1, 6, 0, 76)
    CardShadow.Position = UDim2.new(position.X.Scale, position.X.Offset + 3, position.Y.Scale, position.Y.Offset + 3)
    CardShadow.BackgroundColor3 = iconColor
    CardShadow.BackgroundTransparency = 0.85
    CardShadow.BorderSizePixel = 0
    CardShadow.ZIndex = 0
    CardShadow.Parent = StatsContainer
    
    local CardShadowCorner = Instance.new("UICorner")
    CardShadowCorner.CornerRadius = UDim.new(0, 18)
    CardShadowCorner.Parent = CardShadow
    
    local Card = Instance.new("Frame")
    Card.Name = name
    Card.Size = UDim2.new(1, 0, 0, 70)
    Card.Position = position
    Card.BackgroundColor3 = Color3.fromRGB(20, 25, 35)
    Card.BackgroundTransparency = 0.3
    Card.BorderSizePixel = 0
    Card.Parent = StatsContainer
    
    local CardCorner = Instance.new("UICorner")
    CardCorner.CornerRadius = UDim.new(0, 16)
    CardCorner.Parent = Card
    
    local CardGradient = Instance.new("UIGradient")
    CardGradient.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(25, 30, 45)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(20, 25, 35))
    })
    CardGradient.Rotation = 90
    CardGradient.Transparency = NumberSequence.new({
        NumberSequenceKeypoint.new(0, 0.3),
        NumberSequenceKeypoint.new(1, 0.4)
    })
    CardGradient.Parent = Card
    
    local CardStroke = Instance.new("UIStroke")
    CardStroke.Color = Color3.fromRGB(138, 180, 248)
    CardStroke.Thickness = 1.5
    CardStroke.Transparency = 0.6
    CardStroke.Parent = Card
    
    local IconBg = Instance.new("Frame")
    IconBg.Size = UDim2.new(0, 55, 0, 55)
    IconBg.Position = UDim2.new(0, 10, 0.5, -27.5)
    IconBg.BackgroundColor3 = iconColor
    IconBg.BackgroundTransparency = 0.6
    IconBg.BorderSizePixel = 0
    IconBg.Parent = Card
    
    local IconBgCorner = Instance.new("UICorner")
    IconBgCorner.CornerRadius = UDim.new(0, 14)
    IconBgCorner.Parent = IconBg
    
    local IconBgGradient = Instance.new("UIGradient")
    IconBgGradient.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, iconColor),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(
            math.min(255, iconColor.R * 255 + 40),
            math.min(255, iconColor.G * 255 + 40),
            math.min(255, iconColor.B * 255 + 40)
        ))
    })
    IconBgGradient.Rotation = 135
    IconBgGradient.Transparency = NumberSequence.new({
        NumberSequenceKeypoint.new(0, 0.5),
        NumberSequenceKeypoint.new(1, 0.7)
    })
    IconBgGradient.Parent = IconBg
    
    local IconBgStroke = Instance.new("UIStroke")
    IconBgStroke.Color = iconColor
    IconBgStroke.Thickness = 1.2
    IconBgStroke.Transparency = 0.5
    IconBgStroke.Parent = IconBg
    
    local IconLabel = Instance.new("TextLabel")
    IconLabel.Name = "Icon"
    IconLabel.Size = UDim2.new(1, 0, 1, 0)
    IconLabel.BackgroundTransparency = 1
    IconLabel.Text = icon
    IconLabel.TextSize = 30
    IconLabel.Font = Enum.Font.GothamBold
    IconLabel.Parent = IconBg
    
    local NameLabel = Instance.new("TextLabel")
    NameLabel.Size = UDim2.new(1, -80, 0, 22)
    NameLabel.Position = UDim2.new(0, 72, 0, 12)
    NameLabel.BackgroundTransparency = 1
    NameLabel.Text = name
    NameLabel.TextColor3 = Color3.fromRGB(150, 160, 180)
    NameLabel.TextSize = 13
    NameLabel.Font = Enum.Font.Gotham
    NameLabel.TextXAlignment = Enum.TextXAlignment.Left
    NameLabel.TextTransparency = 0.1
    NameLabel.Parent = Card
    
    local ValueLabel = Instance.new("TextLabel")
    ValueLabel.Name = "Value"
    ValueLabel.Size = UDim2.new(1, -80, 0, 32)
    ValueLabel.Position = UDim2.new(0, 72, 0, 32)
    ValueLabel.BackgroundTransparency = 1
    ValueLabel.Text = value
    ValueLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    ValueLabel.TextSize = 24
    ValueLabel.Font = Enum.Font.GothamBold
    ValueLabel.TextXAlignment = Enum.TextXAlignment.Left
    ValueLabel.Parent = Card
    
    return Card, ValueLabel, IconLabel, CardShadow
end

local TimeCard, TimeValue, TimeIcon, TimeShadow = CreateGlassCard(
    "Time Elapsed",
    "⏱️",
    Color3.fromRGB(138, 180, 248),
    "00:00:00",
    UDim2.new(0, 0, 0, 0)
)

local CurrentBeliCard, CurrentBeliValue, CurrentBeliIcon, BeliShadow = CreateGlassCard(
    "Current Beli",
    "💰",
    Color3.fromRGB(250, 200, 90),
    "0",
    UDim2.new(0, 0, 0, 80)
)

local BeliEarnedCard, BeliEarnedValue, BeliEarnedIcon, EarnedShadow = CreateGlassCard(
    "Beli Earned",
    "💎",
    Color3.fromRGB(100, 220, 140),
    "+0",
    UDim2.new(0, 0, 0, 160)
)

local ToggleContainer = Instance.new("Frame")
ToggleContainer.Name = "ToggleContainer"
ToggleContainer.Size = UDim2.new(1, -30, 0, 70)
ToggleContainer.Position = UDim2.new(0, 15, 0, 365)
ToggleContainer.BackgroundColor3 = Color3.fromRGB(20, 25, 35)
ToggleContainer.BackgroundTransparency = 0.3
ToggleContainer.BorderSizePixel = 0
ToggleContainer.Parent = MainFrame

local ToggleCorner = Instance.new("UICorner")
ToggleCorner.CornerRadius = UDim.new(0, 18)
ToggleCorner.Parent = ToggleContainer

local ToggleGradient = Instance.new("UIGradient")
ToggleGradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(25, 30, 45)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(20, 25, 35))
})
ToggleGradient.Rotation = 90
ToggleGradient.Transparency = NumberSequence.new({
    NumberSequenceKeypoint.new(0, 0.3),
    NumberSequenceKeypoint.new(1, 0.4)
})
ToggleGradient.Parent = ToggleContainer

local ToggleStroke = Instance.new("UIStroke")
ToggleStroke.Color = Color3.fromRGB(138, 180, 248)
ToggleStroke.Thickness = 1.5
ToggleStroke.Transparency = 0.6
ToggleStroke.Parent = ToggleContainer

local ToggleShadow = Instance.new("Frame")
ToggleShadow.Size = UDim2.new(1, 6, 1, 6)
ToggleShadow.Position = UDim2.new(0, 3, 0, 3)
ToggleShadow.BackgroundColor3 = Color3.fromRGB(138, 180, 248)
ToggleShadow.BackgroundTransparency = 0.85
ToggleShadow.ZIndex = 0
ToggleShadow.BorderSizePixel = 0
ToggleShadow.Parent = ToggleContainer

local ToggleShadowCorner = Instance.new("UICorner")
ToggleShadowCorner.CornerRadius = UDim.new(0, 18)
ToggleShadowCorner.Parent = ToggleShadow

local ToggleLabel = Instance.new("TextLabel")
ToggleLabel.Size = UDim2.new(1, -100, 1, 0)
ToggleLabel.Position = UDim2.new(0, 20, 0, 0)
ToggleLabel.BackgroundTransparency = 1
ToggleLabel.Text = "Auto Farm Chest"
ToggleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleLabel.TextSize = 18
ToggleLabel.Font = Enum.Font.GothamBold
ToggleLabel.TextXAlignment = Enum.TextXAlignment.Left
ToggleLabel.Parent = ToggleContainer

local ToggleFrame = Instance.new("TextButton")
ToggleFrame.Name = "ToggleFrame"
ToggleFrame.Size = UDim2.new(0, 70, 0, 36)
ToggleFrame.Position = UDim2.new(1, -90, 0.5, -18)
ToggleFrame.BackgroundColor3 = Color3.fromRGB(40, 167, 69)
ToggleFrame.BorderSizePixel = 0
ToggleFrame.Text = ""
ToggleFrame.AutoButtonColor = false
ToggleFrame.Parent = ToggleContainer

local ToggleFrameCorner = Instance.new("UICorner")
ToggleFrameCorner.CornerRadius = UDim.new(1, 0)
ToggleFrameCorner.Parent = ToggleFrame

local ToggleFrameStroke = Instance.new("UIStroke")
ToggleFrameStroke.Color = Color3.fromRGB(40, 167, 69)
ToggleFrameStroke.Thickness = 1
ToggleFrameStroke.Transparency = 0.3
ToggleFrameStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
ToggleFrameStroke.Parent = ToggleFrame

local ToggleCircle = Instance.new("Frame")
ToggleCircle.Name = "Circle"
ToggleCircle.Size = UDim2.new(0, 28, 0, 28)
ToggleCircle.Position = UDim2.new(1, -32, 0.5, -14)
ToggleCircle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ToggleCircle.BorderSizePixel = 0
ToggleCircle.Parent = ToggleFrame

local CircleCorner = Instance.new("UICorner")
CircleCorner.CornerRadius = UDim.new(1, 0)
CircleCorner.Parent = ToggleCircle

local CircleShadow = Instance.new("UIStroke")
CircleShadow.Color = Color3.fromRGB(0, 0, 0)
CircleShadow.Thickness = 0
CircleShadow.Transparency = 0.7
CircleShadow.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
CircleShadow.Parent = ToggleCircle

local ClickSound = Instance.new("Sound")
ClickSound.Name = "ClickSound"
ClickSound.SoundId = "rbxassetid://12221967"
ClickSound.Volume = 0.5
ClickSound.Parent = ToggleFrame

local farmEnabled = true

if getgenv().SH_Settings == nil then
    getgenv().SH_Settings = {
        MainConfig = {},
        Settings = {}
    }
end

if getgenv().SH_Settings.MainConfig["Enable Farm"] == nil then
    getgenv().SH_Settings.MainConfig["Enable Farm"] = true
end

if getgenv().SH_Settings.Settings["Reset Anti Detect"] == nil then
    getgenv().SH_Settings.Settings["Reset Anti Detect"] = true
end

ToggleFrame.MouseButton1Click:Connect(function()
    ClickSound:Play()
    farmEnabled = not farmEnabled
    
    getgenv().SH_Settings.MainConfig["Enable Farm"] = farmEnabled
    getgenv().SH_Settings.Settings["Reset Anti Detect"] = farmEnabled
    
    if farmEnabled then
        TweenService:Create(ToggleCircle, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            Position = UDim2.new(1, -32, 0.5, -14)
        }):Play()
        
        TweenService:Create(ToggleFrame, TweenInfo.new(0.25, Enum.EasingStyle.Quad), {
            BackgroundColor3 = Color3.fromRGB(40, 167, 69)
        }):Play()
        
        TweenService:Create(ToggleFrameStroke, TweenInfo.new(0.25), {
            Color = Color3.fromRGB(40, 167, 69)
        }):Play()
    else
        TweenService:Create(ToggleCircle, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            Position = UDim2.new(0, 4, 0.5, -14)
        }):Play()
        
        TweenService:Create(ToggleFrame, TweenInfo.new(0.25, Enum.EasingStyle.Quad), {
            BackgroundColor3 = Color3.fromRGB(220, 53, 69)
        }):Play()
        
        TweenService:Create(ToggleFrameStroke, TweenInfo.new(0.25), {
            Color = Color3.fromRGB(220, 53, 69)
        }):Play()
    end
end)

ToggleFrame.MouseEnter:Connect(function()
    TweenService:Create(ToggleFrame, TweenInfo.new(0.2), {
        Size = UDim2.new(0, 73, 0, 38)
    }):Play()
    
    TweenService:Create(ToggleFrameStroke, TweenInfo.new(0.2), {
        Thickness = 2,
        Transparency = 0.1
    }):Play()
end)

ToggleFrame.MouseLeave:Connect(function()
    TweenService:Create(ToggleFrame, TweenInfo.new(0.2), {
        Size = UDim2.new(0, 70, 0, 36)
    }):Play()
    
    TweenService:Create(ToggleFrameStroke, TweenInfo.new(0.2), {
        Thickness = 1,
        Transparency = 0.3
    }):Play()
end)

local DiscordButton = Instance.new("TextButton")
DiscordButton.Name = "DiscordButton"
DiscordButton.Size = UDim2.new(1, -30, 0, 50)
DiscordButton.Position = UDim2.new(0, 15, 1, -65)
DiscordButton.BackgroundColor3 = Color3.fromRGB(88, 101, 242)
DiscordButton.BackgroundTransparency = 0.2
DiscordButton.BorderSizePixel = 0
DiscordButton.Text = ""
DiscordButton.AutoButtonColor = false
DiscordButton.Parent = MainFrame

local DiscordCorner = Instance.new("UICorner")
DiscordCorner.CornerRadius = UDim.new(0, 14)
DiscordCorner.Parent = DiscordButton

local DiscordGradient = Instance.new("UIGradient")
DiscordGradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(88, 101, 242)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(114, 137, 218))
})
DiscordGradient.Rotation = 45
DiscordGradient.Transparency = NumberSequence.new({
    NumberSequenceKeypoint.new(0, 0.2),
    NumberSequenceKeypoint.new(1, 0.3)
})
DiscordGradient.Parent = DiscordButton

local DiscordStroke = Instance.new("UIStroke")
DiscordStroke.Color = Color3.fromRGB(114, 137, 218)
DiscordStroke.Thickness = 1.5
DiscordStroke.Transparency = 0.4
DiscordStroke.Parent = DiscordButton

local DiscordShadow = Instance.new("Frame")
DiscordShadow.Size = UDim2.new(1, 6, 1, 6)
DiscordShadow.Position = UDim2.new(0, 3, 0, 3)
DiscordShadow.BackgroundColor3 = Color3.fromRGB(88, 101, 242)
DiscordShadow.BackgroundTransparency = 0.8
DiscordShadow.BorderSizePixel = 0
DiscordShadow.ZIndex = 0
DiscordShadow.Parent = DiscordButton

local DiscordShadowCorner = Instance.new("UICorner")
DiscordShadowCorner.CornerRadius = UDim.new(0, 14)
DiscordShadowCorner.Parent = DiscordShadow

local DiscordText = Instance.new("TextLabel")
DiscordText.Name = "DiscordText"
DiscordText.Size = UDim2.new(1, 0, 1, 0)
DiscordText.BackgroundTransparency = 1
DiscordText.Text = "Discord"
DiscordText.TextColor3 = Color3.fromRGB(255, 255, 255)
DiscordText.TextSize = 16
DiscordText.Font = Enum.Font.GothamBold
DiscordText.Parent = DiscordButton

spawn(function()
    while X.Parent do
        TweenService:Create(RainbowGradient, TweenInfo.new(8, Enum.EasingStyle.Linear), {
            Rotation = RainbowGradient.Rotation + 360
        }):Play()
        wait(8)
    end
end)

spawn(function()
    while X.Parent do
        TweenService:Create(OuterGlowGradient, TweenInfo.new(6, Enum.EasingStyle.Linear), {
            Rotation = OuterGlowGradient.Rotation + 360
        }):Play()
        wait(6)
    end
end)

spawn(function()
    while X.Parent do
        TweenService:Create(HeaderGradient, TweenInfo.new(5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true), {
            Rotation = 405
        }):Play()
        wait(0.1)
    end
end)

spawn(function()
    while X.Parent do
        TweenService:Create(IconContainer, TweenInfo.new(2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true), {
            Position = UDim2.new(0, 20, 0.5, -35)
        }):Play()
        
        TweenService:Create(TitleIcon, TweenInfo.new(3, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true), {
            Rotation = 10
        }):Play()
        wait(0.1)
    end
end)

spawn(function()
    while X.Parent do
        TweenService:Create(TimeIcon, TweenInfo.new(1.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true), {
            Rotation = 8
        }):Play()
        
        TweenService:Create(CurrentBeliIcon, TweenInfo.new(4, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, -1), {
            Rotation = 360
        }):Play()
        
        TweenService:Create(BeliEarnedIcon, TweenInfo.new(2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, -1, true), {
            Rotation = -8
        }):Play()
        
        wait(0.1)
    end
end)

spawn(function()
    while X.Parent do
        TweenService:Create(TimeShadow, TweenInfo.new(2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true), {
            BackgroundTransparency = 0.9
        }):Play()
        
        TweenService:Create(BeliShadow, TweenInfo.new(2.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true), {
            BackgroundTransparency = 0.9
        }):Play()
        
        TweenService:Create(EarnedShadow, TweenInfo.new(2.4, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true), {
            BackgroundTransparency = 0.9
        }):Play()
        
        wait(0.1)
    end
end)

DiscordButton.MouseEnter:Connect(function()
    TweenService:Create(DiscordButton, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        Size = UDim2.new(1, -25, 0, 52),
        BackgroundTransparency = 0.1
    }):Play()
    
    TweenService:Create(DiscordStroke, TweenInfo.new(0.25), {
        Transparency = 0.2,
        Thickness = 2
    }):Play()
    
    TweenService:Create(DiscordShadow, TweenInfo.new(0.25), {
        Size = UDim2.new(1, 10, 1, 10),
        Position = UDim2.new(0, 5, 0, 5),
        BackgroundTransparency = 0.6
    }):Play()
    
    TweenService:Create(DiscordText, TweenInfo.new(0.25), {
        TextColor3 = Color3.fromRGB(220, 230, 255)
    }):Play()
end)

DiscordButton.MouseLeave:Connect(function()
    TweenService:Create(DiscordButton, TweenInfo.new(0.25, Enum.EasingStyle.Quad), {
        Size = UDim2.new(1, -30, 0, 50),
        BackgroundTransparency = 0.2
    }):Play()
    
    TweenService:Create(DiscordStroke, TweenInfo.new(0.25), {
        Transparency = 0.4,
        Thickness = 1.5
    }):Play()
    
    TweenService:Create(DiscordShadow, TweenInfo.new(0.25), {
        Size = UDim2.new(1, 6, 1, 6),
        Position = UDim2.new(0, 3, 0, 3),
        BackgroundTransparency = 0.8
    }):Play()
    
    TweenService:Create(DiscordText, TweenInfo.new(0.25), {
        TextColor3 = Color3.fromRGB(255, 255, 255)
    }):Play()
end)

DiscordButton.MouseButton1Click:Connect(function()
    if W then
        setclipboard(W)
    end
    
    local originalText = DiscordText.Text
    DiscordText.Text = "✓ Copied!"
    
    TweenService:Create(DiscordText, TweenInfo.new(0.2, Enum.EasingStyle.Back), {
        TextColor3 = Color3.fromRGB(100, 220, 140)
    }):Play()
    
    wait(2)
    DiscordText.Text = originalText
    
    TweenService:Create(DiscordText, TweenInfo.new(0.2), {
        TextColor3 = Color3.fromRGB(255, 255, 255)
    }):Play()
end)

local dragging = false
local dragInput
local dragStart
local startPos

local function updateInput(input)
    local delta = input.Position - dragStart
    local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    TweenService:Create(MainFrame, TweenInfo.new(0.1), {Position = position}):Play()
end

HeaderFrame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = MainFrame.Position
        
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

HeaderFrame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        updateInput(input)
    end
end)

local savedData = loadSavedData()
local sessionStartTime
local totalTimeElapsed = 0
local initialBeli

if savedData then
    totalTimeElapsed = savedData.TimeElapsed or 0
    initialBeli = savedData.InitialBeli or LocalPlayer.Data.Beli.Value
    sessionStartTime = os.time()
    print("Loaded saved data:")
    print("- Total time elapsed:", formatTime(totalTimeElapsed))
    print("- Initial Beli:", formatNumber(initialBeli))
else
    sessionStartTime = os.time()
    totalTimeElapsed = 0
    initialBeli = LocalPlayer.Data.Beli.Value
    getgenv().InitialBeli = initialBeli
    print("Starting fresh session")
    print("- Initial Beli:", formatNumber(initialBeli))
end

getgenv().InitialBeli = initialBeli

local function updateStats()
    spawn(function()
        while X.Parent do
            local currentSessionTime = os.time() - sessionStartTime
            local totalTime = totalTimeElapsed + currentSessionTime
            TimeValue.Text = formatTime(totalTime)
            
            local currentBeli = LocalPlayer.Data.Beli.Value
            CurrentBeliValue.Text = formatNumber(currentBeli)
            
            local beliEarned = currentBeli - initialBeli
            BeliEarnedValue.Text = "+" .. formatNumber(beliEarned)
            
            saveStats(totalTime, beliEarned, initialBeli, sessionStartTime)
            wait(1)
        end
    end)
end

updateStats()

function Gui(visible)
    X.Enabled = visible
end

Gui(true)
p.Idled:Connect(
    function()
        m:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
        task.wait(1)
        m:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    end
)
local a0 = {}
local a1 = ""
local a2 = os.date("!*t").hour
local a3 = false
local a4 =
    pcall(
    function()
        a0 = game:GetService("HttpService"):JSONDecode(readfile("ChestCollect.SkullHub"))
    end
)
if not a4 then
    table.insert(a0, a2)
    writefile("ChestCollect.SkullHub", game:GetService("HttpService"):JSONEncode(a0))
end

function SendWebhook()
    if getgenv().SH_Settings.Settings.Webhook["Enable Webhook"] and getgenv().SH_Settings.Settings.Webhook["Link"] ~= "" then
        local currentBeli = game:GetService("Players").LocalPlayer.Data.Beli.Value
        local beliEarned = currentBeli - getgenv().LastBeli
        getgenv().LastBeli = currentBeli
        local lockBeli = getgenv().SH_Settings.Settings.Webhook["Lock Beli"]
        local statusMessage = "Server hopped successfully"
        local pingMessage = ""

        if currentBeli >= lockBeli then
            statusMessage = "Congratulations! You've reached your Beli goal! Keep shining!"
            local pingUserID = getgenv().SH_Settings.Settings.Webhook["Ping User ID"]
            if pingUserID and pingUserID ~= "" then
                pingMessage = "<@" .. pingUserID .. "> "
            end
        end

        local universeId = nil
        local success, response =
            pcall(
            function()
                local apiUrl = "https://apis.roblox.com/universes/v1/places/" .. game.PlaceId .. "/universe"
                local result = http_request({Url = apiUrl, Method = "GET"})
                if result.Success then
                    return game:GetService("HttpService"):JSONDecode(result.Body).universeId
                end
            end
        )

        if success and response then
            universeId = response
        else
            warn("Failed to fetch Universe ID: " .. tostring(response))
            universeId = game.PlaceId
        end

        local username = game.Players.LocalPlayer.Name
        local jobId = game.JobId or "N/A"
        local playerCount = #game:GetService("Players"):GetPlayers()

        local webhookData = {
            ["content"] = pingMessage,
            ["embeds"] = {
                {
                    ["title"] = "🎮 Skull Hub Notification",
                    ["description"] = "AFK Status in **Blox Fruits**!",
                    ["color"] = 5763719,
                    ["fields"] = {
                        {
                            ["name"] = "👤 Username",
                            ["value"] = username,
                            ["inline"] = true
                        },
                        {
                            ["name"] = "🌟 Status",
                            ["value"] = statusMessage,
                            ["inline"] = false
                        },
                        {
                            ["name"] = "💰 Current Beli",
                            ["value"] = tostring(currentBeli) .. " Beli",
                            ["inline"] = true
                        },
                        {
                            ["name"] = "🎯 Initial Beli",
                            ["value"] = tostring(getgenv().InitialBeli) .. " Beli",
                            ["inline"] = true
                        },
                        {
                            ["name"] = "📈 Beli Earned",
                            ["value"] = tostring(beliEarned) .. " Beli",
                            ["inline"] = true
                        },
                        {
                            ["name"] = "🔒 Lock Beli",
                            ["value"] = tostring(lockBeli) .. " Beli",
                            ["inline"] = true
                        },
                        {
                            ["name"] = "🖥️ Server Job ID",
                            ["value"] = jobId,
                            ["inline"] = true
                        },
                        {
                            ["name"] = "👥 Players in Server",
                            ["value"] = tostring(playerCount) .. " player(s)",
                            ["inline"] = true
                        },
                        {
                            ["name"] = "🔗 Join Server",
                            ["value"] = "[Join Game](https://www.roblox.com/games/" ..
                                game.PlaceId .. "/) | Job ID: " .. jobId,
                            ["inline"] = true
                        }
                    },
                    ["footer"] = {
                        ["text"] = "Skull Hub | " .. os.date("%Y-%m-%d %H:%M:%S"),
                        ["icon_url"] = "https://cdn.discordapp.com/attachments/1198602151727992882/1246728876114055208/OIG2.sS8WHzzYdA4LWt829afI.jpg"
                    },
                    ["thumbnail"] = {
                        ["url"] = getgenv().SH_Settings.Settings.Webhook.Thumbnail
                    },
                    ["author"] = {
                        ["name"] = "vhsocute",
                        ["icon_url"] = "https://cdn.discordapp.com/attachments/1198602151727992882/1246728876114055208/OIG2.sS8WHzzYdA4LWt829afI.jpg"
                    },
                    ["timestamp"] = os.date("!%Y-%m-%dT%H:%M:%SZ")
                }
            }
        }

        local success, response =
            pcall(
            function()
                return http_request(
                    {
                        Url = getgenv().SH_Settings.Settings.Webhook["Link"],
                        Method = "POST",
                        Headers = {
                            ["Content-Type"] = "application/json"
                        },
                        Body = game:GetService("HttpService"):JSONEncode(webhookData)
                    }
                )
            end
        )

        if not success then
            warn("Failed to send webhook: " .. tostring(response))
        end
    end
end

getgenv().TeleportAttempts = getgenv().TeleportAttempts or 0
getgenv().MaxTeleportAttempts = 15
getgenv().TeleportCooldown = getgenv().TeleportCooldown or false
getgenv().AutoClearHistory = false  -- CHANGED: Tắt auto clear để giữ lịch sử
getgenv().MaxHistorySize = 500  -- CHANGED: Tăng lên để lưu nhiều server hơn
getgenv().TeleportStats = getgenv().TeleportStats or {
    TotalAttempts = 0,
    Successful = 0,
    Failed = 0,
    ServersChecked = 0,
    LastAttemptTime = 0
}

local a1 = ""
local a0 = {}
local a2 = game.JobId
local r = game.PlaceId
local currentServerAdded = false  -- FIXED: Flag để tránh spam add

local function SaveServerList()
    local success = pcall(function()
        writefile("ChestCollect.SkullHub", game:GetService("HttpService"):JSONEncode(a0))
    end)
    if success then
        print("[Teleport] Saved " .. #a0 .. " servers to history file")
    else
        warn("[Teleport] Failed to save server history")
    end
end

local function LoadServerList()
    if isfile("ChestCollect.SkullHub") then
        local success, data = pcall(function()
            return game:GetService("HttpService"):JSONDecode(readfile("ChestCollect.SkullHub"))
        end)
        if success and data and type(data) == "table" then
            a0 = data
            print("[Teleport] Loaded " .. #a0 .. " servers from history")
        else
            a0 = {}
        end
    else
        a0 = {}
    end
    
    -- FIXED: Chỉ add current server 1 lần duy nhất
    if not currentServerAdded then
        local currentServerId = tostring(game.JobId)
        local found = false
        for _, id in pairs(a0) do
            if tostring(id) == currentServerId then
                found = true
                break
            end
        end
        if not found then
            table.insert(a0, currentServerId)
            SaveServerList()
            print("[Teleport] Added current server to history: " .. currentServerId:sub(1, 12) .. "...")
        end
        currentServerAdded = true
    end
end

local function GetServerListHTTP(cursor, maxRetries)
    maxRetries = maxRetries or 5
    local retryCount = 0
    
    while retryCount < maxRetries do
        local url
        if cursor == "" or cursor == nil then
            url = "https://games.roblox.com/v1/games/" .. r .. "/servers/Public?sortOrder=Asc&limit=100"
        else
            url = "https://games.roblox.com/v1/games/" .. r .. "/servers/Public?sortOrder=Asc&limit=100&cursor=" .. cursor
        end
        
        local success, result = pcall(function()
            return game:GetService("HttpService"):JSONDecode(game:HttpGet(url))
        end)
        
        if success and result then
            return result
        end
        
        retryCount = retryCount + 1
        warn("[Teleport] Failed to get server list, retry " .. retryCount .. "/" .. maxRetries)
        task.wait(2)
    end
    
    return nil
end

function TPReturner()
    print("[TPReturner] Fetching server list...")
    getgenv().TeleportStats.ServersChecked = getgenv().TeleportStats.ServersChecked + 1
    
    local serverData = GetServerListHTTP(a1, 5)
    
    if not serverData then
        warn("[TPReturner] Failed to fetch server list")
        return false
    end
    
    if serverData.nextPageCursor and serverData.nextPageCursor ~= "null" and serverData.nextPageCursor ~= nil then
        a1 = serverData.nextPageCursor
        print("[TPReturner] Next page cursor: " .. a1:sub(1, 20) .. "...")
    else
        print("[TPReturner] No more pages, resetting cursor")
        a1 = ""
    end
    
    local serversFound = 0
    local serversProcessed = 0
    
    for _, serverInfo in pairs(serverData.data) do
        serversProcessed = serversProcessed + 1
        local serverId = tostring(serverInfo.id)
        local canJoin = true
        
        -- Check if server is full
        if tonumber(serverInfo.maxPlayers) <= tonumber(serverInfo.playing) then
            canJoin = false
        end
        
        -- FIXED: Check if we've already tried this server
        if canJoin then
            for _, attemptedId in pairs(a0) do
                if serverId == tostring(attemptedId) then
                    canJoin = false
                    break
                end
            end
        end
        
        if canJoin then
            serversFound = serversFound + 1
            
            -- FIXED: Thêm server vào history TRƯỚC KHI teleport
            table.insert(a0, serverId)
            SaveServerList()
            
            print(string.format(
                "[TPReturner] Found server! ID: %s | Players: %d/%d",
                serverId:sub(1, 12) .. "...",
                serverInfo.playing,
                serverInfo.maxPlayers
            ))
            
            pcall(function()
                SendWebhook()
            end)
            
            -- FIXED: Teleport với retry
            local teleportSuccess = false
            for attempt = 1, 3 do
                print("[TPReturner] Teleport attempt " .. attempt .. "/3...")
                
                local success, errorMsg = pcall(function()
                    game:GetService("TeleportService"):TeleportToPlaceInstance(
                        r, 
                        serverId, 
                        game.Players.LocalPlayer
                    )
                end)
                
                if success then
                    print("[TPReturner] ✓ Teleport request sent!")
                    teleportSuccess = true
                    task.wait(5)
                    
                    -- Check if we're still in the same server
                    if game.JobId == a2 then
                        teleportSuccess = false
                        warn("[TPReturner] Still in same server, trying next...")
                    else
                        print("[TPReturner] ✓ TELEPORT SUCCESSFUL!")
                        getgenv().TeleportStats.Successful = getgenv().TeleportStats.Successful + 1
                        return true
                    end
                else
                    warn("[TPReturner] ✗ Teleport failed: " .. tostring(errorMsg))
                    task.wait(2)
                end
            end
            
            -- Nếu teleport thất bại, server này đã được thêm vào history rồi
            -- Sẽ không thử lại server này nữa
            if not teleportSuccess then
                print("[TPReturner] Failed to join server " .. serverId:sub(1, 12) .. "..., moving to next")
            end
        end
    end
    
    print(string.format("[TPReturner] Processed %d servers, found %d joinable", serversProcessed, serversFound))
    
    if serversFound == 0 and a1 == "" then
        return false
    end
    
    return serversFound > 0
end

function Teleport()
    if getgenv().TeleportCooldown then
        warn("[Teleport] Cooldown active, please wait...")
        return
    end
    
    getgenv().TeleportCooldown = true
    getgenv().TeleportAttempts = (getgenv().TeleportAttempts or 0) + 1
    getgenv().TeleportStats.TotalAttempts = getgenv().TeleportStats.TotalAttempts + 1
    getgenv().TeleportStats.LastAttemptTime = os.time()
    
    -- FIXED: Load history trước, không xóa
    LoadServerList()
    
    -- FIXED: Chỉ trim history nếu quá lớn, không xóa hết
    if #a0 > getgenv().MaxHistorySize then
        -- Giữ lại MaxHistorySize server gần nhất
        local newHistory = {}
        for i = #a0 - getgenv().MaxHistorySize + 1, #a0 do
            table.insert(newHistory, a0[i])
        end
        a0 = newHistory
        SaveServerList()
        print("[Teleport] Trimmed history to " .. getgenv().MaxHistorySize .. " servers")
    end
    
    local delay = math.random(1, 3)
    print("[Teleport] Waiting " .. delay .. "s before searching...")
    task.wait(delay)
    
    a1 = ""
    a2 = game.JobId
    r = game.PlaceId
    
    local maxPages = 20
    local pagesScanned = 0
    local foundServer = false
    
    print("[Teleport] Starting server search (Current history: " .. #a0 .. " servers)...")
    
    for pageNum = 1, maxPages do
        print("[Teleport] Scanning page " .. pageNum .. "/" .. maxPages .. "...")
        local result = TPReturner()
        
        if result == true then
            foundServer = true
            print("[Teleport] ✓ Successfully found and joining new server!")
            break
        end
        
        pagesScanned = pagesScanned + 1
        
        if a1 == "" and pageNum > 1 then
            print("[Teleport] No more pages to scan")
            break
        end
        
        task.wait(0.5)
    end
    
    if not foundServer then
        getgenv().TeleportStats.Failed = getgenv().TeleportStats.Failed + 1
        warn("[Teleport] ✗ Failed to find available server")
        
        if getgenv().TeleportAttempts >= getgenv().MaxTeleportAttempts then
            warn("[Teleport] Max attempts reached, clearing history and rejoining...")
            getgenv().TeleportAttempts = 0
            
            -- Clear history và join server mới hoàn toàn
            _G.ClearServerHistory()
            
            pcall(function()
                game:GetService("TeleportService"):Teleport(r, game.Players.LocalPlayer)
            end)
        else
            local retryDelay = math.min(3 + getgenv().TeleportAttempts, 10)
            warn("[Teleport] Retrying in " .. retryDelay .. "s... (Attempt " .. getgenv().TeleportAttempts .. "/" .. getgenv().MaxTeleportAttempts .. ")")
            task.wait(retryDelay)
            getgenv().TeleportCooldown = false
            return Teleport()
        end
    else
        getgenv().TeleportAttempts = 0
        print("[Teleport] ✓ Teleport sequence completed successfully")
    end
    
    task.wait(2)
    getgenv().TeleportCooldown = false
end

-- Error handler - FIXED: Proper CoreGui access with better error handling
if not getgenv().TeleportErrorHandlerLoaded then
    local function HandleErrorPrompt(promptElement)
        pcall(function()
            if promptElement and promptElement.Name == "ErrorPrompt" then
                local function CheckAndRetry()
                    pcall(function()
                        if not promptElement.Visible then return end
                        
                        local titleText = ""
                        pcall(function()
                            titleText = promptElement.TitleFrame.ErrorTitle.Text:lower()
                        end)
                        
                        local errorKeywords = {
                            "teleport failed",
                            "disconnected",
                            "connection error",
                            "error code",
                            "unable to connect",
                            "failed to connect"
                        }
                        
                        for _, keyword in ipairs(errorKeywords) do
                            if titleText:find(keyword) then
                                warn("[ErrorHandler] Detected error: " .. titleText)
                                promptElement.Visible = false
                                task.wait(2)
                                Teleport()
                                break
                            end
                        end
                    end)
                end
                
                CheckAndRetry()
                
                local success = pcall(function()
                    promptElement:GetPropertyChangedSignal("Visible"):Connect(CheckAndRetry)
                end)
                
                if not success then
                    warn("[ErrorHandler] Could not connect to prompt visibility signal")
                end
            end
        end)
    end
    
    -- FIXED: Use gethui() or game:GetService("CoreGui") with proper checks
    task.spawn(function()
        local success = pcall(function()
            local coreGui = game:GetService("CoreGui")
            
            -- Try to access RobloxPromptGui
            local promptGui = coreGui:FindFirstChild("RobloxPromptGui")
            if not promptGui then
                warn("[ErrorHandler] RobloxPromptGui not found, handler disabled")
                return
            end
            
            local promptOverlay = promptGui:FindFirstChild("promptOverlay")
            if not promptOverlay then
                warn("[ErrorHandler] promptOverlay not found, handler disabled")
                return
            end
            
            -- Handle existing prompts
            for _, element in pairs(promptOverlay:GetChildren()) do
                HandleErrorPrompt(element)
            end
            
            -- Handle new prompts
            promptOverlay.ChildAdded:Connect(function(element)
                HandleErrorPrompt(element)
            end)
            
            print("[ErrorHandler] Loaded successfully")
        end)
        
        if not success then
            warn("[ErrorHandler] Failed to load - CoreGui access denied")
        end
    end)
    
    getgenv().TeleportErrorHandlerLoaded = true
end

-- Utility functions
_G.ShowTeleportStats = function()
    print("=== TELEPORT STATISTICS ===")
    print("Total Attempts: " .. getgenv().TeleportStats.TotalAttempts)
    print("Successful: " .. getgenv().TeleportStats.Successful)
    print("Failed: " .. getgenv().TeleportStats.Failed)
    print("Servers Checked: " .. getgenv().TeleportStats.ServersChecked)
    
    if getgenv().TeleportStats.TotalAttempts > 0 then
        local rate = (getgenv().TeleportStats.Successful / getgenv().TeleportStats.TotalAttempts) * 100
        print(string.format("Success Rate: %.1f%%", rate))
    end
    
    if getgenv().TeleportStats.LastAttemptTime > 0 then
        print("Last Attempt: " .. os.date("%X", getgenv().TeleportStats.LastAttemptTime))
    end
    
    print("Attempted Servers in History: " .. #a0)
    print("Current Server: " .. game.JobId:sub(1, 12) .. "...")
end

_G.ResetTeleportStats = function()
    getgenv().TeleportStats = {
        TotalAttempts = 0,
        Successful = 0,
        Failed = 0,
        ServersChecked = 0,
        LastAttemptTime = 0
    }
    getgenv().TeleportAttempts = 0
    print("[Stats] Statistics reset")
end

_G.ClearServerHistory = function()
    a0 = {}
    a1 = ""
    currentServerAdded = false  -- FIXED: Reset flag khi clear history
    pcall(function()
        delfile("ChestCollect.SkullHub")
    end)
    print("[History] Server history cleared")
end

_G.ShowServerHistory = function()
    print("=== SERVER HISTORY ===")
    print("Total servers in history: " .. #a0)
    print("Current server: " .. game.JobId:sub(1, 12) .. "...")
    if #a0 > 0 then
        print("Last 5 servers:")
        for i = math.max(1, #a0 - 4), #a0 do
            print("  " .. i .. ". " .. tostring(a0[i]):sub(1, 12) .. "...")
        end
    end
end

function Ffsnn()
    local ad = game.ReplicatedStorage:FindFirstChild("Remotes").CommF_:InvokeServer("GetFruits")
    Table_DevilFruitSniper = {}
    ShopDevilSell = {}
    for i, v in next, ad do
        table.insert(Table_DevilFruitSniper, v.Name)
        if v.OnSale then
            table.insert(ShopDevilSell, v.Name)
        end
    end
    if getgenv().SH_Settings.FruitSniper["Enable Sniper Fruit"] then
        for _, ae in pairs(getgenv().SH_Settings.FruitSniper.Fruit) do
            for _, af in pairs(ShopDevilSell) do
                if ae == af then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PurchaseRawFruit", ae, false)
                end
            end
        end
    end
end
function HopServer(ag)
    if not ag then
        ag = 10
    end
    ticklon = tick()
    repeat
        task.wait()
    until tick() - ticklon >= 1
    local function ah()
        for ai = 1, math.huge do
            if ChooseRegion == nil or ChooseRegion == "" then
                ChooseRegion = "Singapore"
            else
                game:GetService("Players").LocalPlayer.PlayerGui.ServerBrowser.Frame.Filters.SearchRegion.TextBox.Text =
                    ChooseRegion
            end
            local aj = game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer(ai)
            for ak, E in pairs(aj) do
                if ak ~= game.JobId and E["Count"] < ag then
                    SendWebhook()
                    game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer("teleport", ak)
                end
            end
        end
        return false
    end
    if not getgenv().Loaded then
        local function al(E)
            if E.Name == "ErrorPrompt" then
                if E.Visible then
                    if E.TitleFrame.ErrorTitle.Text == "Teleport Failed" then
                        HopServer()
                        E.Visible = false
                    end
                end
                E:GetPropertyChangedSignal("Visible"):Connect(
                    function()
                        if E.Visible then
                            if E.TitleFrame.ErrorTitle.Text == "Teleport Failed" then
                                HopServer()
                                E.Visible = false
                            end
                        end
                    end
                )
            end
        end
        for ak, E in pairs(game.CoreGui.RobloxPromptGui.promptOverlay:GetChildren()) do
            al(E)
        end
        game.CoreGui.RobloxPromptGui.promptOverlay.ChildAdded:Connect(al)
        getgenv().Loaded = true
    end
    while not ah() do
        wait()
    end
end
spawn(
    function()
        while true do
            if getgenv().InstantHop then
                HopServer()
            end
            wait()
        end
    end
)

function chithcuthhfj()
    if getgenv().SH_Settings.MainConfig["Enable Farm"] and getgenv().SH_Settings.MainConfig["Version Farm"] == "2" then
        local ay = e.Character
        if ay then
            local az = ay:FindFirstChild("CrewBBG", true)
            if az then
                az:Destroy()
            end
            local aA = ay:FindFirstChild("Humanoid")
            if aA then
                local aB = ay:GetPivot().Position
                local aC = c:GetTagged("_ChestTagged")
                local aD, aE = math.huge, nil
                for a9, aF in ipairs(aC) do
                    if not aF:GetAttribute("IsDisabled") then
                        local aG = (aF:GetPivot().Position - aB).Magnitude
                        if aG < aD then
                            aD, aE = aG, aF
                        end
                    end
                end
                local aH = getgenv().SH_Settings.MainConfig["Sniper Legendary Item"]
                if aH then
                    if
                        e.Backpack:FindFirstChild("Fist of Darkness") or ay:FindFirstChild("Fist of Darkness") or
                            e.Backpack:FindFirstChild("Sweet Chalice") or
                            ay:FindFirstChild("Sweet Chalice") or
                            e.Backpack:FindFirstChild("God's Chalice") or
                            ay:FindFirstChild("God's Chalice") or
                            a:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") or
                            workspace.Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") or
                            a:FindFirstChild("Darkbeard [Lv. 1000] [Raid Boss]") or
                            workspace.Enemies:FindFirstChild("Darkbeard [Lv. 1000] [Raid Boss]") or
                            a:FindFirstChild("Dough King [Lv. 9999] [Raid Boss]") or
                            workspace.Enemies:FindFirstChild("Dough King [Lv. 9999] [Raid Boss]")
                     then
                        Gui(false)
                        if getgenv().SH_Settings.Settings["Reset Anti Detect"] then
                            getgenv().SH_Settings.Settings["Reset Anti Detect"] = false
                        end
                    else
                        if aE then
                            local aI = aE:GetPivot().Position
                            getgenv().SH_Settings.Settings["Reset Anti Detect"] = true
                            ay:PivotTo(CFrame.new(aI))
                            pcall(
                                function()
                                    local aJ = aE:FindFirstChild("RootPart")
                                    if aJ then
                                        firesignal(aJ.Touched, ay.HumanoidRootPart)
                                    end
                                end
                            )
                        else
                            if getgenv().SH_Settings.Settings["Reset Anti Detect"] then
                                getgenv().SH_Settings.Settings["Reset Anti Detect"] = false
                            end
                            Teleport()
                            if getgenv().SH_Settings.Settings["Hop 2"] then
                                getgenv().InstantHop = true
                            end
                        end
                    end
                else
                    if aE then
                        local aI = aE:GetPivot().Position
                        getgenv().SH_Settings.Settings["Reset Anti Detect"] = true
                        ay:PivotTo(CFrame.new(aI))
                        pcall(
                            function()
                                local aJ = aE:FindFirstChild("RootPart")
                                if aJ then
                                    firesignal(aJ.Touched, ay.HumanoidRootPart)
                                end
                            end
                        )
                    else
                        if getgenv().SH_Settings.Settings["Reset Anti Detect"] then
                            getgenv().SH_Settings.Settings["Reset Anti Detect"] = false
                        end
                        Teleport()
                        if getgenv().SH_Settings.Settings["Hop 2"] then
                            getgenv().InstantHop = true
                        end
                    end
                end
            end
        end
    end
end
task.spawn(
    function()
        while true do
            task.wait()
            if
                getgenv().SH_Settings.MainConfig["Enable Farm"] and
                    getgenv().SH_Settings.MainConfig["Version Farm"] == "1"
             then
                local character = LocalPlayer.Character
                if character then
                    local crewTag = character:FindFirstChild("CrewBBG", true)
                    if crewTag then
                        crewTag:Destroy()
                    end

                    local humanoid = character:FindFirstChild("Humanoid")
                    if humanoid then
                        local position = character:GetPivot().Position
                        local chests = CollectionService:GetTagged("_ChestTagged")
                        local distance, nearest = math.huge, nil
                        for _, chest in ipairs(chests) do
                            if not chest:GetAttribute("IsDisabled") then
                                local magnitude = (chest:GetPivot().Position - position).Magnitude
                                if magnitude < distance then
                                    distance, nearest = magnitude, chest
                                end
                            end
                        end
                        local snipeLegendaryItem = getgenv().SH_Settings.MainConfig["Sniper Legendary Item"]
                        if snipeLegendaryItem then
                            if
                                LocalPlayer.Backpack:FindFirstChild("Fist of Darkness") or
                                    character:FindFirstChild("Fist of Darkness") or
                                    LocalPlayer.Backpack:FindFirstChild("Sweet Chalice") or
                                    character:FindFirstChild("Sweet Chalice") or
                                    LocalPlayer.Backpack:FindFirstChild("God's Chalice") or
                                    character:FindFirstChild("God's Chalice") or
                                    ReplicatedStorage:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") or
                                    workspace.Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") or
                                    ReplicatedStorage:FindFirstChild("Darkbeard [Lv. 1000] [Raid Boss]") or
                                    workspace.Enemies:FindFirstChild("Darkbeard [Lv. 1000] [Raid Boss]") or
                                    ReplicatedStorage:FindFirstChild("Dough King [Lv. 9999] [Raid Boss]") or
                                    workspace.Enemies:FindFirstChild("Dough King [Lv. 9999] [Raid Boss]")
                             then
                                Gui(false)
                                print("v1 k hop")
                                if getgenv().SH_Settings.Settings["Reset Anti Detect"] then
                                    getgenv().SH_Settings.Settings["Reset Anti Detect"] = false
                                end
                            else
                                if nearest then
                                    local chestPosition = nearest:GetPivot().Position
                                    getgenv().SH_Settings.Settings["Reset Anti Detect"] = true
                                    character:PivotTo(CFrame.new(chestPosition))
                                    pcall(
                                        function()
                                            local rootPart = nearest:FindFirstChild("RootPart")
                                            if rootPart then
                                                firesignal(rootPart.Touched, character.HumanoidRootPart)
                                            end
                                        end
                                    )
                                else
                                    if getgenv().SH_Settings.Settings["Reset Anti Detect"] then
                                        getgenv().SH_Settings.Settings["Reset Anti Detect"] = false
                                    end
                                    Teleport()
                                    if getgenv().SH_Settings.Settings["Hop 2"] then
                                        getgenv().InstantHop = true
                                    end
                                end
                            end
                        else
                            if nearest then
                                local chestPosition = nearest:GetPivot().Position
                                getgenv().SH_Settings.Settings["Reset Anti Detect"] = true
                                character:PivotTo(CFrame.new(chestPosition))
                                pcall(
                                    function()
                                        local rootPart = nearest:FindFirstChild("RootPart")
                                        if rootPart then
                                            firesignal(rootPart.Touched, character.HumanoidRootPart)
                                        end
                                    end
                                )
                            else
                                if getgenv().SH_Settings.Settings["Reset Anti Detect"] then
                                    getgenv().SH_Settings.Settings["Reset Anti Detect"] = false
                                end
                                Teleport()
                                if getgenv().SH_Settings.Settings["Hop 2"] then
                                    getgenv().InstantHop = true
                                end
                            end
                        end
                    end
                end
            end
        end
    end
)
function SwordLG()
    if getgenv().SH_Settings["Legendary Sword"]["Enable Auto Buy"] then
        local a = {[1] = "LegendarySwordDealer", [2] = "1"}
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(a))
        local a = {[1] = "LegendarySwordDealer", [2] = "2"}
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(a))
        local a = {[1] = "LegendarySwordDealer", [2] = "3"}
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(a))
    end
end
function AuraHaki()
    if getgenv().SH_Settings["Aura Haki"]["Enable Auto Buy"] then
        local cac = {[1] = "ColorsDealer", [2] = "2"}
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(cac))
    end
end
getgenv().FoundStop =
    game.Players.LocalPlayer.Backpack:FindFirstChild("Fist of Darkness") or
    game.Players.LocalPlayer.Character:FindFirstChild("Fist of Darkness") or
    game.Players.LocalPlayer.Backpack:FindFirstChild("Sweet Chalice") or
    game.Players.LocalPlayer.Character:FindFirstChild("Sweet Chalice") or
    game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or
    game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") or
    game.ReplicatedStorage:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") or
    game.Workspace.Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") or
    game.ReplicatedStorage:FindFirstChild("Darkbeard [Lv. 1000] [Raid Boss]") or
    game.Workspace.Enemies:FindFirstChild("Darkbeard [Lv. 1000] [Raid Boss]") or
    game.ReplicatedStorage:FindFirstChild("Dough King [Lv. 9999] [Raid Boss]") or
    game.Workspace.Enemies:FindFirstChild("Dough King [Lv. 9999] [Raid Boss]")

function TimerCheck()
    local StartTime = tick()
    while true do
        task.wait(1)
        getgenv().FoundStop = game.Players.LocalPlayer.Backpack:FindFirstChild("Fist of Darkness") or
            game.Players.LocalPlayer.Character:FindFirstChild("Fist of Darkness") or
            game.Players.LocalPlayer.Backpack:FindFirstChild("Sweet Chalice") or
            game.Players.LocalPlayer.Character:FindFirstChild("Sweet Chalice") or
            game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or
            game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") or
            game.ReplicatedStorage:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") or
            game.Workspace.Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") or
            game.ReplicatedStorage:FindFirstChild("Darkbeard [Lv. 1000] [Raid Boss]") or
            game.Workspace.Enemies:FindFirstChild("Darkbeard [Lv. 1000] [Raid Boss]") or
            game.ReplicatedStorage:FindFirstChild("Dough King [Lv. 9999] [Raid Boss]") or
            game.Workspace.Enemies:FindFirstChild("Dough King [Lv. 9999] [Raid Boss]")
        
        if getgenv().FoundStop or getgenv().SH_Settings.MainConfig["Enable Farm"] == false then
            StartTime = tick()
            print("[Skull Hub] Timer reset - Found stop item or farming disabled")
        elseif tick() - StartTime >= getgenv().SH_Settings.Settings["Time Checker"] then
            print("[Skull Hub] Time checker triggered after", getgenv().SH_Settings.Settings["Time Checker"], "seconds")
            Teleport()
            StartTime = tick()
        end
    end
end

task.spawn(function()
    if getgenv().SH_Settings.Settings["Reset Anti Detect"] then
        for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v:IsA("Tool") then
                if v.ToolTip == "Melee" then
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                elseif v.ToolTip == "Gun" then
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                elseif v.ToolTip == "Sword" then
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                end
            end
        end
    end
end)

Beli.Changed:Connect(function(NewValue)
    if NewValue > LastValue then
        local timeic = tick() - LastIncreaseTime
        print("[Skull Hub] Money increased after", math.floor(timeic), "seconds")
        print("Earned:", NewValue - LastValue, " | New Value:", NewValue)
        LastIncreaseTime = tick()
        LastCheckTime = tick()
    elseif NewValue < LastValue then
        print("[Skull Hub] Money spent:", LastValue - NewValue)
        LastIncreaseTime = tick()
        LastCheckTime = tick()
    end
    LastValue = NewValue
end)

function IsAlive()
    local Character = LocalPlayer.Character
    local Humanoid = Character and Character:FindFirstChildOfClass("Humanoid")
    if Humanoid and Humanoid.Health > 0 then
        return true
    else
        return false
    end
end

function CheckBug(b)
    while task.wait(1) do
        pcall(function()
            if getgenv().SH_Settings.MainConfig["Enable Farm"] and getgenv().SH_Settings.Settings["Anti Game Bug"] then 
                if timeic >= b then
                    warn("[Skull Hub] No Beli increase for " .. math.floor(timeic) .. " seconds, triggering anti-bug...")
                    LastIncreaseTime = tick()
                    LastCheckTime = tick()

                    if getgenv().SH_Settings.Settings["Anti Game Bug Method"] == "Teleport" then
                        print("[Skull Hub] Teleporting due to anti-bug...")
                        Teleport()

                    elseif getgenv().SH_Settings.Settings["Anti Game Bug Method"] == "Rejoin" then
                        print("[Skull Hub] Rejoining due to anti-bug...")
                        game:GetService("TeleportService"):Teleport(game.PlaceId, LocalPlayer)
                    end
                end

                LastCheckTime = tick()
            else
                LastIncreaseTime = tick()
                LastCheckTime = tick()
            end
        end)
    end
end

task.spawn(function()
    pcall(function()
        getgenv().SkullHubEX = true
        task.spawn(function()
            TimerCheck()
        end)
        if getgenv().SH_Settings.Settings["Anti Game Bug"] and 
           getgenv().SH_Settings.MainConfig["Sniper Legendary Item"] == false then
            task.spawn(function()
                CheckBug(getgenv().SH_Settings.Settings["Anti Game Bug Check Time"] or 10)
            end)
        end
    end) 
end)

task.spawn(function()
    while true do
        repeat task.wait(1) until
            getgenv().SH_Settings.MainConfig["Enable Farm"]
            and getgenv().SH_Settings.Settings["Reset Anti Detect"]
            and not getgenv().FoundStop
            and game.Players.LocalPlayer.Character
            and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
            and game.Players.LocalPlayer.Character.Humanoid.Health > 0
        task.wait(getgenv().SH_Settings.Settings["Reset Time Delay"])
        if getgenv().SH_Settings.MainConfig["Enable Farm"]
            and getgenv().SH_Settings.Settings["Reset Anti Detect"]
            and not getgenv().FoundStop
            and game.Players.LocalPlayer.Character
            and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
            and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
            game.Players.LocalPlayer.Character.Humanoid.Health = 0
        end
    end
end)
task.spawn(
    function()
        pcall(
            function()
                while math.round(task.wait(0.01)) do
                    cc()
                    chithcuthhfj()
                    cecek()
                    iqui()
                    Ffsnn()
                end
            end
        )
    end
)
spawn(
    function()
        while wait() do
                AuraHaki()
                SwordLG()
        end
    end
)
