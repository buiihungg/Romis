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

local X = Instance.new("ScreenGui")
X.Name = "VVVVu4"
X.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
X.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Parent = X
MainFrame.Size = UDim2.new(0, 450, 0, 320)
MainFrame.Position = UDim2.new(0.5, -225, 0.5, -160)
MainFrame.BackgroundColor3 = Color3.fromRGB(20, 25, 35)
MainFrame.BorderSizePixel = 0
local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0, 20)
MainCorner.Parent = MainFrame
local MainGradient = Instance.new("UIGradient")
MainGradient.Parent = MainFrame
MainGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(20, 25, 35)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(25, 35, 50))
}
MainGradient.Rotation = 135
local MainStroke = Instance.new("UIStroke")
MainStroke.Parent = MainFrame
MainStroke.Color = Color3.fromRGB(100, 150, 255)
MainStroke.Thickness = 2
MainStroke.Transparency = 0.2
local HeaderFrame = Instance.new("Frame")
HeaderFrame.Name = "HeaderFrame"
HeaderFrame.Parent = MainFrame
HeaderFrame.Size = UDim2.new(1, 0, 0, 70)
HeaderFrame.Position = UDim2.new(0, 0, 0, 0)
HeaderFrame.BackgroundColor3 = Color3.fromRGB(45, 55, 75)
HeaderFrame.BorderSizePixel = 0
local HeaderCorner = Instance.new("UICorner")
HeaderCorner.CornerRadius = UDim.new(0, 20)
HeaderCorner.Parent = HeaderFrame
local HeaderGradient = Instance.new("UIGradient")
HeaderGradient.Parent = HeaderFrame
HeaderGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(88, 101, 242)),
    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(120, 119, 255)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 94, 166))
}
HeaderGradient.Rotation = 45
local TitleLabel = Instance.new("TextLabel")
TitleLabel.Name = "TitleLabel"
TitleLabel.Parent = HeaderFrame
TitleLabel.Size = UDim2.new(1, -20, 1, 0)
TitleLabel.Position = UDim2.new(0, 10, 0, 0)
TitleLabel.BackgroundTransparency = 1
TitleLabel.Text = "SKULL HUB | Chest Collect"
TitleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleLabel.TextSize = 22
TitleLabel.Font = Enum.Font.GothamBold
TitleLabel.TextXAlignment = Enum.TextXAlignment.Center
local StatsContainer = Instance.new("Frame")
StatsContainer.Name = "StatsContainer"
StatsContainer.Parent = MainFrame
StatsContainer.Size = UDim2.new(1, -30, 0, 160)
StatsContainer.Position = UDim2.new(0, 15, 0, 85)
StatsContainer.BackgroundTransparency = 1
local StatsLayout = Instance.new("UIGridLayout")
StatsLayout.Parent = StatsContainer
StatsLayout.CellSize = UDim2.new(0.32, 0, 1, 0)
StatsLayout.CellPadding = UDim2.new(0.02, 0, 0, 0)
StatsLayout.SortOrder = Enum.SortOrder.LayoutOrder
local TimeFrame = Instance.new("Frame")
TimeFrame.Name = "TimeFrame"
TimeFrame.Parent = StatsContainer
TimeFrame.BackgroundColor3 = Color3.fromRGB(35, 45, 65)
TimeFrame.BorderSizePixel = 0
TimeFrame.LayoutOrder = 1
local TimeFrameCorner = Instance.new("UICorner")
TimeFrameCorner.CornerRadius = UDim.new(0, 15)
TimeFrameCorner.Parent = TimeFrame
local TimeGradient = Instance.new("UIGradient")
TimeGradient.Parent = TimeFrame
TimeGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(35, 45, 65)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(45, 55, 75))
}
TimeGradient.Rotation = 90
local TimeStroke = Instance.new("UIStroke")
TimeStroke.Parent = TimeFrame
TimeStroke.Color = Color3.fromRGB(100, 150, 255)
TimeStroke.Thickness = 1
TimeStroke.Transparency = 0.5
local TimeIcon = Instance.new("ImageLabel")
TimeIcon.Parent = TimeFrame
TimeIcon.Size = UDim2.new(0, 25, 0, 25)
TimeIcon.Position = UDim2.new(0.5, -12.5, 0, 8)
TimeIcon.BackgroundTransparency = 1
TimeIcon.Image = "rbxassetid://71060541371057"
TimeIcon.ImageColor3 = Color3.fromRGB(100, 150, 255)
local TimeLabel = Instance.new("TextLabel")
TimeLabel.Name = "TimeLabel"
TimeLabel.Parent = TimeFrame
TimeLabel.Size = UDim2.new(1, -10, 0.3, 0)
TimeLabel.Position = UDim2.new(0, 5, 0.4, 0)
TimeLabel.BackgroundTransparency = 1
TimeLabel.Text = "Time Elapsed"
TimeLabel.TextColor3 = Color3.fromRGB(180, 190, 210)
TimeLabel.TextSize = 19
TimeLabel.Font = Enum.Font.Gotham
TimeLabel.TextXAlignment = Enum.TextXAlignment.Center
local TimeValue = Instance.new("TextLabel")
TimeValue.Name = "TimeValue"
TimeValue.Parent = TimeFrame
TimeValue.Size = UDim2.new(1, -10, 0.3, 0)
TimeValue.Position = UDim2.new(0, 5, 0.65, 0)
TimeValue.BackgroundTransparency = 1
TimeValue.Text = "00:00:00"
TimeValue.TextColor3 = Color3.fromRGB(100, 150, 255)
TimeValue.TextSize = 19
TimeValue.Font = Enum.Font.GothamBold
TimeValue.TextXAlignment = Enum.TextXAlignment.Center
local CurrentBeliFrame = Instance.new("Frame")
CurrentBeliFrame.Name = "CurrentBeliFrame"
CurrentBeliFrame.Parent = StatsContainer
CurrentBeliFrame.BackgroundColor3 = Color3.fromRGB(35, 45, 65)
CurrentBeliFrame.BorderSizePixel = 0
CurrentBeliFrame.LayoutOrder = 2
local CurrentBeliCorner = Instance.new("UICorner")
CurrentBeliCorner.CornerRadius = UDim.new(0, 15)
CurrentBeliCorner.Parent = CurrentBeliFrame
local CurrentBeliGradient = Instance.new("UIGradient")
CurrentBeliGradient.Parent = CurrentBeliFrame
CurrentBeliGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(45, 55, 35)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(55, 65, 45))
}
CurrentBeliGradient.Rotation = 90
local CurrentBeliStroke = Instance.new("UIStroke")
CurrentBeliStroke.Parent = CurrentBeliFrame
CurrentBeliStroke.Color = Color3.fromRGB(255, 215, 0)
CurrentBeliStroke.Thickness = 1
CurrentBeliStroke.Transparency = 0.5
local CurrentBeliIcon = Instance.new("ImageLabel")
CurrentBeliIcon.Parent = CurrentBeliFrame
CurrentBeliIcon.Size = UDim2.new(0, 25, 0, 25)
CurrentBeliIcon.Position = UDim2.new(0.5, -12.5, 0, 8)
CurrentBeliIcon.BackgroundTransparency = 1
CurrentBeliIcon.Image = "rbxassetid://79872718137354"
CurrentBeliIcon.ImageColor3 = Color3.fromRGB(255, 215, 0)
local CurrentBeliLabel = Instance.new("TextLabel")
CurrentBeliLabel.Name = "CurrentBeliLabel"
CurrentBeliLabel.Parent = CurrentBeliFrame
CurrentBeliLabel.Size = UDim2.new(1, -10, 0.3, 0)
CurrentBeliLabel.Position = UDim2.new(0, 5, 0.4, 0)
CurrentBeliLabel.BackgroundTransparency = 1
CurrentBeliLabel.Text = "Current Beli"
CurrentBeliLabel.TextColor3 = Color3.fromRGB(180, 190, 210)
CurrentBeliLabel.TextSize = 19
CurrentBeliLabel.Font = Enum.Font.Gotham
CurrentBeliLabel.TextXAlignment = Enum.TextXAlignment.Center
local CurrentBeliValue = Instance.new("TextLabel")
CurrentBeliValue.Name = "CurrentBeliValue"
CurrentBeliValue.Parent = CurrentBeliFrame
CurrentBeliValue.Size = UDim2.new(1, -10, 0.3, 0)
CurrentBeliValue.Position = UDim2.new(0, 5, 0.65, 0)
CurrentBeliValue.BackgroundTransparency = 1
CurrentBeliValue.Text = "0"
CurrentBeliValue.TextColor3 = Color3.fromRGB(255, 215, 0)
CurrentBeliValue.TextSize = 19
CurrentBeliValue.Font = Enum.Font.GothamBold
CurrentBeliValue.TextXAlignment = Enum.TextXAlignment.Center
local BeliEarnedFrame = Instance.new("Frame")
BeliEarnedFrame.Name = "BeliEarnedFrame"
BeliEarnedFrame.Parent = StatsContainer
BeliEarnedFrame.BackgroundColor3 = Color3.fromRGB(35, 65, 45)
BeliEarnedFrame.BorderSizePixel = 0
BeliEarnedFrame.LayoutOrder = 3
local BeliEarnedCorner = Instance.new("UICorner")
BeliEarnedCorner.CornerRadius = UDim.new(0, 15)
BeliEarnedCorner.Parent = BeliEarnedFrame
local BeliEarnedGradient = Instance.new("UIGradient")
BeliEarnedGradient.Parent = BeliEarnedFrame
BeliEarnedGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(35, 65, 45)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(45, 75, 55))
}
BeliEarnedGradient.Rotation = 90
local BeliEarnedStroke = Instance.new("UIStroke")
BeliEarnedStroke.Parent = BeliEarnedFrame
BeliEarnedStroke.Color = Color3.fromRGB(0, 255, 127)
BeliEarnedStroke.Thickness = 1
BeliEarnedStroke.Transparency = 0.5
local BeliEarnedIcon = Instance.new("ImageLabel")
BeliEarnedIcon.Parent = BeliEarnedFrame
BeliEarnedIcon.Size = UDim2.new(0, 25, 0, 25)
BeliEarnedIcon.Position = UDim2.new(0.5, -12.5, 0, 8)
BeliEarnedIcon.BackgroundTransparency = 1
BeliEarnedIcon.Image = "rbxassetid://133781591564129"
BeliEarnedIcon.ImageColor3 = Color3.fromRGB(0, 255, 127)
local BeliEarnedLabel = Instance.new("TextLabel")
BeliEarnedLabel.Name = "BeliEarnedLabel"
BeliEarnedLabel.Parent = BeliEarnedFrame
BeliEarnedLabel.Size = UDim2.new(1, -10, 0.3, 0)
BeliEarnedLabel.Position = UDim2.new(0, 5, 0.4, 0)
BeliEarnedLabel.BackgroundTransparency = 1
BeliEarnedLabel.Text = "Beli Earned"
BeliEarnedLabel.TextColor3 = Color3.fromRGB(180, 190, 210)
BeliEarnedLabel.TextSize = 19
BeliEarnedLabel.Font = Enum.Font.Gotham
BeliEarnedLabel.TextXAlignment = Enum.TextXAlignment.Center
local BeliEarnedValue = Instance.new("TextLabel")
BeliEarnedValue.Name = "BeliEarnedValue"
BeliEarnedValue.Parent = BeliEarnedFrame
BeliEarnedValue.Size = UDim2.new(1, -10, 0.3, 0)
BeliEarnedValue.Position = UDim2.new(0, 5, 0.65, 0)
BeliEarnedValue.BackgroundTransparency = 1
BeliEarnedValue.Text = "+0"
BeliEarnedValue.TextColor3 = Color3.fromRGB(0, 255, 127)
BeliEarnedValue.TextSize = 19
BeliEarnedValue.Font = Enum.Font.GothamBold
BeliEarnedValue.TextXAlignment = Enum.TextXAlignment.Center
local DiscordButton = Instance.new("TextButton")
DiscordButton.Name = "DiscordButton"
DiscordButton.Parent = MainFrame
DiscordButton.Size = UDim2.new(1, -30, 0, 45)
DiscordButton.Position = UDim2.new(0, 15, 1, -60)
DiscordButton.BackgroundColor3 = Color3.fromRGB(88, 101, 242)
DiscordButton.BorderSizePixel = 0
DiscordButton.Text = ""
DiscordButton.TextColor3 = Color3.fromRGB(255, 255, 255)
DiscordButton.TextSize = 19
DiscordButton.Font = Enum.Font.GothamBold
local DiscordGradient = Instance.new("UIGradient")
DiscordGradient.Parent = DiscordButton
DiscordGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(88, 101, 242)),
    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(114, 137, 218)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 94, 166))
}
DiscordGradient.Rotation = 45
local DiscordButtonCorner = Instance.new("UICorner")
DiscordButtonCorner.CornerRadius = UDim.new(0, 12)
DiscordButtonCorner.Parent = DiscordButton
local DiscordStroke = Instance.new("UIStroke")
DiscordStroke.Parent = DiscordButton
DiscordStroke.Color = Color3.fromRGB(255, 255, 255)
DiscordStroke.Thickness = 1
DiscordStroke.Transparency = 0.8
local DiscordIcon = Instance.new("ImageLabel")
DiscordIcon.Parent = DiscordButton
DiscordIcon.Size = UDim2.new(0, 25, 0, 25)
DiscordIcon.Position = UDim2.new(0, 15, 0.5, -12.5)
DiscordIcon.BackgroundTransparency = 1
DiscordIcon.Image = "rbxassetid://87898550426214"
DiscordIcon.ImageColor3 = Color3.fromRGB(255, 255, 255)
local DiscordText = Instance.new("TextLabel")
DiscordText.Parent = DiscordButton
DiscordText.Size = UDim2.new(1, -50, 1, 0)
DiscordText.Position = UDim2.new(0, 45, 0, 0)
DiscordText.BackgroundTransparency = 1
DiscordText.Text = "Join Discord Server"
DiscordText.TextColor3 = Color3.fromRGB(255, 255, 255)
DiscordText.TextSize = 19
DiscordText.Font = Enum.Font.GothamBold
DiscordText.TextXAlignment = Enum.TextXAlignment.Left
local TweenService = game:GetService("TweenService")
spawn(function()
    while X.Parent do
        local headerTween = TweenService:Create(
            HeaderGradient,
            TweenInfo.new(5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true),
            {Rotation = 405}
        )
        headerTween:Play()
        wait(0.1)
    end
end)
local function createHoverEffect(button)
    local originalColor = button.BackgroundColor3
    local originalIconColor = DiscordIcon.ImageColor3
    local TweenService = game:GetService("TweenService")
    button.MouseEnter:Connect(function()
        local buttonTween = TweenService:Create(
            button,
            TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
            {
                Size = UDim2.new(button.Size.X.Scale, button.Size.X.Offset, 0, 50),
                BackgroundColor3 = Color3.fromRGB(255, 94, 166)
            }
        )
        buttonTween:Play()
        local strokeTween = TweenService:Create(
            DiscordStroke,
            TweenInfo.new(0.4, Enum.EasingStyle.Quad),
            {
                Transparency = 0.2,
                Thickness = 2
            }
        )
        strokeTween:Play()
        local iconTween = TweenService:Create(
            DiscordIcon,
            TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out, 0, false, 0.1),
            {
                Size = UDim2.new(0, 30, 0, 30),
                Position = UDim2.new(0, 12.5, 0.5, -15),
                ImageColor3 = Color3.fromRGB(255, 255, 100),
                Rotation = 15
            }
        )
        iconTween:Play()
        local textTween = TweenService:Create(
            DiscordText,
            TweenInfo.new(0.3, Enum.EasingStyle.Quad),
            {
                Position = UDim2.new(0, 50, 0, 0),
                TextColor3 = Color3.fromRGB(255, 255, 100)
            }
        )
        textTween:Play()
        local gradientTween = TweenService:Create(
            DiscordGradient,
            TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, -1, true),
            {Rotation = 90}
        )
        gradientTween:Play()
    end)
    button.MouseLeave:Connect(function()
        local buttonTween = TweenService:Create(
            button,
            TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {
                Size = UDim2.new(button.Size.X.Scale, button.Size.X.Offset, 0, 45),
                BackgroundColor3 = originalColor
            }
        )
        buttonTween:Play()
        local strokeTween = TweenService:Create(
            DiscordStroke,
            TweenInfo.new(0.3, Enum.EasingStyle.Quad),
            {
                Transparency = 0.8,
                Thickness = 1
            }
        )
        strokeTween:Play()
        local iconTween = TweenService:Create(
            DiscordIcon,
            TweenInfo.new(0.3, Enum.EasingStyle.Back),
            {
                Size = UDim2.new(0, 25, 0, 25),
                Position = UDim2.new(0, 15, 0.5, -12.5),
                ImageColor3 = originalIconColor,
                Rotation = 0
            }
        )
        iconTween:Play()
        local textTween = TweenService:Create(
            DiscordText,
            TweenInfo.new(0.3, Enum.EasingStyle.Quad),
            {
                Position = UDim2.new(0, 45, 0, 0),
                TextColor3 = Color3.fromRGB(255, 255, 255)
            }
        )
        textTween:Play()
        local gradientTween = TweenService:Create(
            DiscordGradient,
            TweenInfo.new(0.3, Enum.EasingStyle.Quad),
            {Rotation = 45}
        )
        gradientTween:Play()
    end)
end
createHoverEffect(DiscordButton)
DiscordButton.MouseButton1Click:Connect(function()
    if W then
        setclipboard(W)
    end
    local originalText = DiscordText.Text
    DiscordText.Text = "✅ Discord Link Copied!"
    local successTween = TweenService:Create(
        DiscordText,
        TweenInfo.new(0.2, Enum.EasingStyle.Back),
        {TextColor3 = Color3.fromRGB(0, 255, 127)}
)
    successTween:Play()
    wait(2)
    DiscordText.Text = originalText
    
    local resetTween = TweenService:Create(
        DiscordText,
        TweenInfo.new(0.2, Enum.EasingStyle.Quad),
        {TextColor3 = Color3.fromRGB(255, 255, 255)}
    )
    resetTween:Play()
end)
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
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
            return game:GetService("HttpService"):JSONDecode(jsonData)
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
        local jsonData = game:GetService("HttpService"):JSONEncode(data)
        writefile("Skull Hub/ChestCollect_INFO.json", jsonData)
    end)
    if not success then
        print("Error saving data:", err)
    end
end
local savedData = loadSavedData()
local sessionStartTime
local totalTimeElapsed = 0
local initialBeli
if savedData then
    totalTimeElapsed = savedData.TimeElapsed or 0
    initialBeli = savedData.InitialBeli or game.Players.LocalPlayer.Data.Beli.Value
    sessionStartTime = os.time()
    print("Loaded saved data:")
    print("- Total time elapsed:", formatTime(totalTimeElapsed))
    print("- Initial Beli:", formatNumber(initialBeli))
else
    sessionStartTime = os.time()
    totalTimeElapsed = 0
    initialBeli = game.Players.LocalPlayer.Data.Beli.Value
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
            local currentBeli = game.Players.LocalPlayer.Data.Beli.Value
            CurrentBeliValue.Text = formatNumber(currentBeli)
            local beliEarned = currentBeli - initialBeli
            BeliEarnedValue.Text = "+" .. formatNumber(beliEarned)
            saveStats(totalTime, beliEarned, initialBeli, sessionStartTime)
            wait(1)
        end
    end)
end
updateStats()
spawn(function()
    while X.Parent do
        local timePulse = TweenService:Create(
            TimeIcon,
            TweenInfo.new(1.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true),
            {
                Size = UDim2.new(0, 28, 0, 28),
                ImageTransparency = 0.3
            }
        )
        timePulse:Play()
        local beliSpin = TweenService:Create(
            CurrentBeliIcon,
            TweenInfo.new(3, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, -1),
            {Rotation = 360}
        )
        beliSpin:Play()
        local earnedBounce = TweenService:Create(
            BeliEarnedIcon,
            TweenInfo.new(2, Enum.EasingStyle.Bounce, Enum.EasingDirection.InOut, -1, true),
            {
                Position = UDim2.new(0.5, -12.5, 0, 5),
                ImageColor3 = Color3.fromRGB(100, 255, 150)
            }
        )
        earnedBounce:Play()
        wait(0.1)
    end
end)
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
function TPReturner()
    local a5
    if a1 == "" then
        a5 =
            game.HttpService:JSONDecode(
            game:HttpGet("https://games.roblox.com/v1/games/" .. r .. "/servers/Public?sortOrder=Asc&limit=100")
        )
    else
        a5 =
            game.HttpService:JSONDecode(
            game:HttpGet(
                "https://games.roblox.com/v1/games/" .. r .. "/servers/Public?sortOrder=Asc&limit=100&cursor=" .. a1
            )
        )
    end
    local a6 = ""
    if a5.nextPageCursor and a5.nextPageCursor ~= "null" and a5.nextPageCursor ~= nil then
        a1 = a5.nextPageCursor
    end
    local a7 = 0
    for D, E in pairs(a5.data) do
        local a8 = true
        a6 = tostring(E.id)
        if tonumber(E.maxPlayers) > tonumber(E.playing) then
            for a9, aa in pairs(a0) do
                if a7 ~= 0 then
                    if a6 == tostring(aa) then
                        a8 = false
                    end
                else
                    if tonumber(a2) ~= tonumber(aa) then
                        local ab =
                            pcall(
                            function()
                                delfile("ChestCollect.SkullHub")
                                a0 = {}
                                table.insert(a0, a2)
                            end
                        )
                    end
                end
                a7 = a7 + 1
            end
            if a8 == true then
                table.insert(a0, a6)
                wait()
                pcall(
                    function()
                        writefile("ChestCollect.SkullHub", game:GetService("HttpService"):JSONEncode(a0))
                        SendWebhook()
                        wait()
                        game:GetService("TeleportService"):TeleportToPlaceInstance(r, a6, game.Players.LocalPlayer)
                    end
                )
                wait(4)
            end
        end
    end
end
function Teleport()
    while wait() do
        pcall(
            function()
                TPReturner()
                if a1 ~= "" then
                    TPReturner()
                end
            end
        )
    end
end
function cecek()
    local promptOverlay = game.CoreGui.RobloxPromptGui.promptOverlay
    for _, E in pairs(promptOverlay:GetDescendants()) do
        if E:IsA("TextLabel") or E:IsA("TextBox") then
            local ac = E.Text:lower()
            if
                ac:find("teleport failed") or ac:find("disconnected") or ac:find("connection error") or
                    ac:find("unusual activity") or
                    ac:find("you have been kicked") or
                    ac:find("exploit detected") or
                    ac:find("error") or
                    ac:find("connection lost") or
                    ac:find("please reconnect") or
                    ac:find("network")
             then
                Teleport()
            end
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
s.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
s.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
t.Parent = s
t.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
t.BorderColor3 = Color3.fromRGB(0, 0, 0)
t.BorderSizePixel = 0
t.Position = UDim2.new(0.103761353, 0, 0.214939028, 0)
t.Size = UDim2.new(0, 58, 0, 55)
t.Image = "rbxassetid://85920884061840"
u.Parent = t
v.Name = "ClickSound"
v.Parent = s
v.SoundId = "rbxassetid://12221967"
v.Volume = 7
local am = game:GetService("TweenService")
local an = t.Size
local ao = TweenInfo.new(0.1, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out, 0, false, 0)
local function ap()
    local aq = am:Create(t, ao, {Size = UDim2.new(0, 70, 0, 65)})
    aq:Play()
    aq.Completed:Connect(
        function()
            local ar = am:Create(t, ao, {Size = an})
            ar:Play()
        end
    )
end
local function as(at, au)
    dragToggle = nil
    dragSpeed = .25
    dragInput = nil
    dragStart = nil
    dragPos = nil
    function updateInput(av)
        Delta = av.Position - dragStart
        Position =
            UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
        game:GetService("TweenService"):Create(au, TweenInfo.new(dragSpeed), {Position = Position}):Play()
    end
    at.InputBegan:Connect(
        function(av)
            if av.UserInputType == Enum.UserInputType.MouseButton1 or av.UserInputType == Enum.UserInputType.Touch then
                dragToggle = true
                dragStart = av.Position
                startPos = au.Position
                av.Changed:Connect(
                    function()
                        if av.UserInputState == Enum.UserInputState.End then
                            dragToggle = false
                        end
                    end
                )
            end
        end
    )
    at.InputChanged:Connect(
        function(av)
            if av.UserInputType == Enum.UserInputType.MouseMovement or av.UserInputType == Enum.UserInputType.Touch then
                dragInput = av
            end
        end
    )
    game:GetService("UserInputService").InputChanged:Connect(
        function(av)
            if av == dragInput and dragToggle then
                updateInput(av)
            end
        end
    )
end
local function aw()
    local ax = Instance.new("LocalScript", t)
    ax.Parent.MouseButton1Click:Connect(
        function()
            v:Play()
            ap()
            if _G.Settings == nil then
                _G.Settings = {}
            end
            if getgenv().SH_Settings.MainConfig["Enable Farm"] == nil then
                getgenv().SH_Settings.MainConfig["Enable Farm"] = true
            end
            if getgenv().SH_Settings.Settings["Reset Anti Detect"] == nil then
                getgenv().SH_Settings.Settings["Reset Anti Detect"] = true
            end
            if X.Enabled == nil then
                X.Enabled = true
            end
            getgenv().SH_Settings.Settings["Reset Anti Detect"] =
                not getgenv().SH_Settings.Settings["Reset Anti Detect"]
            getgenv().SH_Settings.MainConfig["Enable Farm"] = not getgenv().SH_Settings.MainConfig["Enable Farm"]
            X.Enabled = not X.Enabled
        end
    )
end
coroutine.wrap(aw)()
as(t, t)
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
            LastCheckTime = nowtime
        else
            LastIncreaseTime = tick()
            LastCheckTime = tick()
        end
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
