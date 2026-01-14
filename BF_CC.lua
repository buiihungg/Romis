local X = Instance.new("ScreenGui")
X.Name = "VVVVu4"
X.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
X.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- Main Frame (Smaller)
local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Parent = X
MainFrame.Size = UDim2.new(0, 340, 0, 200)
MainFrame.Position = UDim2.new(0.5, -170, 0.5, -100)
MainFrame.BackgroundColor3 = Color3.fromRGB(25, 28, 35)
MainFrame.BorderSizePixel = 0

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0, 12)
MainCorner.Parent = MainFrame

local MainGradient = Instance.new("UIGradient")
MainGradient.Parent = MainFrame
MainGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(25, 28, 35)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(35, 40, 50))
}
MainGradient.Rotation = 135

local MainStroke = Instance.new("UIStroke")
MainStroke.Parent = MainFrame
MainStroke.Color = Color3.fromRGB(88, 101, 242)
MainStroke.Thickness = 1.5
MainStroke.Transparency = 0.3

-- Header (Compact)
local HeaderFrame = Instance.new("Frame")
HeaderFrame.Name = "HeaderFrame"
HeaderFrame.Parent = MainFrame
HeaderFrame.Size = UDim2.new(1, 0, 0, 45)
HeaderFrame.Position = UDim2.new(0, 0, 0, 0)
HeaderFrame.BackgroundColor3 = Color3.fromRGB(88, 101, 242)
HeaderFrame.BorderSizePixel = 0

local HeaderCorner = Instance.new("UICorner")
HeaderCorner.CornerRadius = UDim.new(0, 12)
HeaderCorner.Parent = HeaderFrame

local HeaderGradient = Instance.new("UIGradient")
HeaderGradient.Parent = HeaderFrame
HeaderGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(88, 101, 242)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 94, 166))
}
HeaderGradient.Rotation = 45

local TitleLabel = Instance.new("TextLabel")
TitleLabel.Name = "TitleLabel"
TitleLabel.Parent = HeaderFrame
TitleLabel.Size = UDim2.new(1, 0, 1, 0)
TitleLabel.BackgroundTransparency = 1
TitleLabel.Text = "Romis Hub"
TitleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleLabel.TextSize = 18
TitleLabel.Font = Enum.Font.GothamBold
TitleLabel.TextXAlignment = Enum.TextXAlignment.Center

-- Stats Container (Compact Grid)
local StatsContainer = Instance.new("Frame")
StatsContainer.Name = "StatsContainer"
StatsContainer.Parent = MainFrame
StatsContainer.Size = UDim2.new(1, -20, 0, 85)
StatsContainer.Position = UDim2.new(0, 10, 0, 55)
StatsContainer.BackgroundTransparency = 1

local StatsLayout = Instance.new("UIGridLayout")
StatsLayout.Parent = StatsContainer
StatsLayout.CellSize = UDim2.new(0.32, 0, 1, 0)
StatsLayout.CellPadding = UDim2.new(0.02, 0, 0, 0)
StatsLayout.SortOrder = Enum.SortOrder.LayoutOrder

-- Time Stat
local TimeFrame = Instance.new("Frame")
TimeFrame.Name = "TimeFrame"
TimeFrame.Parent = StatsContainer
TimeFrame.BackgroundColor3 = Color3.fromRGB(40, 45, 55)
TimeFrame.BorderSizePixel = 0
TimeFrame.LayoutOrder = 1

local TimeCorner = Instance.new("UICorner")
TimeCorner.CornerRadius = UDim.new(0, 8)
TimeCorner.Parent = TimeFrame

local TimeStroke = Instance.new("UIStroke")
TimeStroke.Parent = TimeFrame
TimeStroke.Color = Color3.fromRGB(100, 150, 255)
TimeStroke.Thickness = 1
TimeStroke.Transparency = 0.6

local TimeLabel = Instance.new("TextLabel")
TimeLabel.Parent = TimeFrame
TimeLabel.Size = UDim2.new(1, 0, 0.4, 0)
TimeLabel.Position = UDim2.new(0, 0, 0.1, 0)
TimeLabel.BackgroundTransparency = 1
TimeLabel.Text = "Time"
TimeLabel.TextColor3 = Color3.fromRGB(160, 170, 190)
TimeLabel.TextSize = 12
TimeLabel.Font = Enum.Font.Gotham

local TimeValue = Instance.new("TextLabel")
TimeValue.Name = "TimeValue"
TimeValue.Parent = TimeFrame
TimeValue.Size = UDim2.new(1, 0, 0.5, 0)
TimeValue.Position = UDim2.new(0, 0, 0.45, 0)
TimeValue.BackgroundTransparency = 1
TimeValue.Text = "00:00:00"
TimeValue.TextColor3 = Color3.fromRGB(100, 150, 255)
TimeValue.TextSize = 14
TimeValue.Font = Enum.Font.GothamBold

-- Current Beli Stat
local CurrentBeliFrame = Instance.new("Frame")
CurrentBeliFrame.Name = "CurrentBeliFrame"
CurrentBeliFrame.Parent = StatsContainer
CurrentBeliFrame.BackgroundColor3 = Color3.fromRGB(40, 45, 55)
CurrentBeliFrame.BorderSizePixel = 0
CurrentBeliFrame.LayoutOrder = 2

local CurrentBeliCorner = Instance.new("UICorner")
CurrentBeliCorner.CornerRadius = UDim.new(0, 8)
CurrentBeliCorner.Parent = CurrentBeliFrame

local CurrentBeliStroke = Instance.new("UIStroke")
CurrentBeliStroke.Parent = CurrentBeliFrame
CurrentBeliStroke.Color = Color3.fromRGB(255, 215, 0)
CurrentBeliStroke.Thickness = 1
CurrentBeliStroke.Transparency = 0.6

local CurrentBeliLabel = Instance.new("TextLabel")
CurrentBeliLabel.Parent = CurrentBeliFrame
CurrentBeliLabel.Size = UDim2.new(1, 0, 0.4, 0)
CurrentBeliLabel.Position = UDim2.new(0, 0, 0.1, 0)
CurrentBeliLabel.BackgroundTransparency = 1
CurrentBeliLabel.Text = "Current"
CurrentBeliLabel.TextColor3 = Color3.fromRGB(160, 170, 190)
CurrentBeliLabel.TextSize = 12
CurrentBeliLabel.Font = Enum.Font.Gotham

local CurrentBeliValue = Instance.new("TextLabel")
CurrentBeliValue.Name = "CurrentBeliValue"
CurrentBeliValue.Parent = CurrentBeliFrame
CurrentBeliValue.Size = UDim2.new(1, 0, 0.5, 0)
CurrentBeliValue.Position = UDim2.new(0, 0, 0.45, 0)
CurrentBeliValue.BackgroundTransparency = 1
CurrentBeliValue.Text = "0"
CurrentBeliValue.TextColor3 = Color3.fromRGB(255, 215, 0)
CurrentBeliValue.TextSize = 14
CurrentBeliValue.Font = Enum.Font.GothamBold

-- Beli Earned Stat
local BeliEarnedFrame = Instance.new("Frame")
BeliEarnedFrame.Name = "BeliEarnedFrame"
BeliEarnedFrame.Parent = StatsContainer
BeliEarnedFrame.BackgroundColor3 = Color3.fromRGB(40, 45, 55)
BeliEarnedFrame.BorderSizePixel = 0
BeliEarnedFrame.LayoutOrder = 3

local BeliEarnedCorner = Instance.new("UICorner")
BeliEarnedCorner.CornerRadius = UDim.new(0, 8)
BeliEarnedCorner.Parent = BeliEarnedFrame

local BeliEarnedStroke = Instance.new("UIStroke")
BeliEarnedStroke.Parent = BeliEarnedFrame
BeliEarnedStroke.Color = Color3.fromRGB(0, 255, 127)
BeliEarnedStroke.Thickness = 1
BeliEarnedStroke.Transparency = 0.6

local BeliEarnedLabel = Instance.new("TextLabel")
BeliEarnedLabel.Parent = BeliEarnedFrame
BeliEarnedLabel.Size = UDim2.new(1, 0, 0.4, 0)
BeliEarnedLabel.Position = UDim2.new(0, 0, 0.1, 0)
BeliEarnedLabel.BackgroundTransparency = 1
BeliEarnedLabel.Text = "Earned"
BeliEarnedLabel.TextColor3 = Color3.fromRGB(160, 170, 190)
BeliEarnedLabel.TextSize = 12
BeliEarnedLabel.Font = Enum.Font.Gotham

local BeliEarnedValue = Instance.new("TextLabel")
BeliEarnedValue.Name = "BeliEarnedValue"
BeliEarnedValue.Parent = BeliEarnedFrame
BeliEarnedValue.Size = UDim2.new(1, 0, 0.5, 0)
BeliEarnedValue.Position = UDim2.new(0, 0, 0.45, 0)
BeliEarnedValue.BackgroundTransparency = 1
BeliEarnedValue.Text = "+0"
BeliEarnedValue.TextColor3 = Color3.fromRGB(0, 255, 127)
BeliEarnedValue.TextSize = 14
BeliEarnedValue.Font = Enum.Font.GothamBold

-- Discord Button (Compact)
local DiscordButton = Instance.new("TextButton")
DiscordButton.Name = "DiscordButton"
DiscordButton.Parent = MainFrame
DiscordButton.Size = UDim2.new(1, -20, 0, 35)
DiscordButton.Position = UDim2.new(0, 10, 1, -45)
DiscordButton.BackgroundColor3 = Color3.fromRGB(88, 101, 242)
DiscordButton.BorderSizePixel = 0
DiscordButton.Text = "Join Discord"
DiscordButton.TextColor3 = Color3.fromRGB(255, 255, 255)
DiscordButton.TextSize = 14
DiscordButton.Font = Enum.Font.GothamBold

local DiscordGradient = Instance.new("UIGradient")
DiscordGradient.Parent = DiscordButton
DiscordGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(88, 101, 242)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 94, 166))
}
DiscordGradient.Rotation = 45

local DiscordCorner = Instance.new("UICorner")
DiscordCorner.CornerRadius = UDim.new(0, 8)
DiscordCorner.Parent = DiscordButton

local DiscordStroke = Instance.new("UIStroke")
DiscordStroke.Parent = DiscordButton
DiscordStroke.Color = Color3.fromRGB(255, 255, 255)
DiscordStroke.Thickness = 1
DiscordStroke.Transparency = 0.7

-- Animations
local TweenService = game:GetService("TweenService")

spawn(function()
    while X.Parent do
        TweenService:Create(HeaderGradient, TweenInfo.new(4, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true), {Rotation = 405}):Play()
        wait(0.1)
    end
end)

-- Button Hover Effect
DiscordButton.MouseEnter:Connect(function()
    TweenService:Create(DiscordButton, TweenInfo.new(0.3, Enum.EasingStyle.Quad), {BackgroundColor3 = Color3.fromRGB(255, 94, 166)}):Play()
    TweenService:Create(DiscordStroke, TweenInfo.new(0.3), {Transparency = 0.3, Thickness = 1.5}):Play()
end)

DiscordButton.MouseLeave:Connect(function()
    TweenService:Create(DiscordButton, TweenInfo.new(0.3, Enum.EasingStyle.Quad), {BackgroundColor3 = Color3.fromRGB(88, 101, 242)}):Play()
    TweenService:Create(DiscordStroke, TweenInfo.new(0.3), {Transparency = 0.7, Thickness = 1}):Play()
end)

DiscordButton.MouseButton1Click:Connect(function()
    if W then
        setclipboard(W)
    end
    local originalText = DiscordButton.Text
    DiscordButton.Text = "✓ Link Copied!"
    TweenService:Create(DiscordButton, TweenInfo.new(0.2), {TextColor3 = Color3.fromRGB(0, 255, 127)}):Play()
    wait(2)
    DiscordButton.Text = originalText
    TweenService:Create(DiscordButton, TweenInfo.new(0.2), {TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()
end)

-- Dragging
local UserInputService = game:GetService("UserInputService")
local dragging, dragInput, dragStart, startPos

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

-- Helper Functions
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

-- Data Management
local function loadSavedData()
    local filePath = "Romis Hub/ChestCollect_INFO.json"
    if isfile(filePath) then
        local success, data = pcall(function()
            return game:GetService("HttpService"):JSONDecode(readfile(filePath))
        end)
        return success and data or nil
    end
    return nil
end

local function saveStats(timeElapsed, beliEarned, initialBeli, sessionStartTime)
    local data = {
        TimeElapsed = timeElapsed,
        BeliEarned = beliEarned,
        InitialBeli = initialBeli,
        SessionStartTime = sessionStartTime,
        Timestamp = os.time()
    }
    if not isfolder("Romis Hub") then
        makefolder("Romis Hub")
    end
    pcall(function()
        writefile("Romis Hub/ChestCollect_INFO.json", game:GetService("HttpService"):JSONEncode(data))
    end)
end

-- Initialize
local savedData = loadSavedData()
local sessionStartTime = os.time()
local totalTimeElapsed = savedData and savedData.TimeElapsed or 0
local initialBeli = savedData and savedData.InitialBeli or game.Players.LocalPlayer.Data.Beli.Value
getgenv().InitialBeli = initialBeli

-- Update Loop
spawn(function()
    while X.Parent do
        local totalTime = totalTimeElapsed + (os.time() - sessionStartTime)
        TimeValue.Text = formatTime(totalTime)
        
        local currentBeli = game.Players.LocalPlayer.Data.Beli.Value
        CurrentBeliValue.Text = formatNumber(currentBeli)
        
        local beliEarned = currentBeli - initialBeli
        BeliEarnedValue.Text = "+" .. formatNumber(beliEarned)
        
        saveStats(totalTime, beliEarned, initialBeli, sessionStartTime)
        wait(1)
    end
end)

-- Subtle Animations
spawn(function()
    while X.Parent do
        TweenService:Create(TimeStroke, TweenInfo.new(2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true), {Transparency = 0.3}):Play()
        TweenService:Create(CurrentBeliStroke, TweenInfo.new(2.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true), {Transparency = 0.3}):Play()
        TweenService:Create(BeliEarnedStroke, TweenInfo.new(2.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true), {Transparency = 0.3}):Play()
        wait(0.1)
    end
end)

function Gui(visible)
    X.Enabled = visible
end

Gui(true)

