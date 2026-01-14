local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "ModernGlassUI"
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false

-- Main Container
local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.Size = UDim2.new(0, 320, 0, 220)
MainFrame.Position = UDim2.new(0.5, -160, 0.5, -110)
MainFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 25)
MainFrame.BackgroundTransparency = 0.15
MainFrame.BorderSizePixel = 0

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0, 16)
MainCorner.Parent = MainFrame

-- Glass Effect (Blur simulation)
local GlassOverlay = Instance.new("Frame")
GlassOverlay.Name = "GlassOverlay"
GlassOverlay.Parent = MainFrame
GlassOverlay.Size = UDim2.new(1, 0, 1, 0)
GlassOverlay.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GlassOverlay.BackgroundTransparency = 0.95
GlassOverlay.BorderSizePixel = 0

local GlassCorner = Instance.new("UICorner")
GlassCorner.CornerRadius = UDim.new(0, 16)
GlassCorner.Parent = GlassOverlay

-- Border Glow
local BorderStroke = Instance.new("UIStroke")
BorderStroke.Parent = MainFrame
BorderStroke.Color = Color3.fromRGB(120, 140, 255)
BorderStroke.Thickness = 1.2
BorderStroke.Transparency = 0.5

local BorderGradient = Instance.new("UIGradient")
BorderGradient.Parent = BorderStroke
BorderGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(120, 140, 255)),
    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(200, 120, 255)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(120, 140, 255))
}

-- Header
local Header = Instance.new("Frame")
Header.Name = "Header"
Header.Parent = MainFrame
Header.Size = UDim2.new(1, 0, 0, 50)
Header.BackgroundTransparency = 1

local TitleLabel = Instance.new("TextLabel")
TitleLabel.Name = "Title"
TitleLabel.Parent = Header
TitleLabel.Size = UDim2.new(1, -40, 1, 0)
TitleLabel.Position = UDim2.new(0, 20, 0, 0)
TitleLabel.BackgroundTransparency = 1
TitleLabel.Text = "✨ Romis Hub"
TitleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleLabel.TextSize = 20
TitleLabel.Font = Enum.Font.GothamBold
TitleLabel.TextXAlignment = Enum.TextXAlignment.Left
TitleLabel.TextYAlignment = Enum.TextYAlignment.Center

-- Minimize Button
local MinimizeBtn = Instance.new("TextButton")
MinimizeBtn.Name = "MinimizeBtn"
MinimizeBtn.Parent = Header
MinimizeBtn.Size = UDim2.new(0, 30, 0, 30)
MinimizeBtn.Position = UDim2.new(1, -40, 0.5, -15)
MinimizeBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MinimizeBtn.BackgroundTransparency = 0.9
MinimizeBtn.Text = "−"
MinimizeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
MinimizeBtn.TextSize = 20
MinimizeBtn.Font = Enum.Font.GothamBold
MinimizeBtn.BorderSizePixel = 0

local MinCorner = Instance.new("UICorner")
MinCorner.CornerRadius = UDim.new(0, 8)
MinCorner.Parent = MinimizeBtn

-- Stats Container
local StatsContainer = Instance.new("Frame")
StatsContainer.Name = "Stats"
StatsContainer.Parent = MainFrame
StatsContainer.Size = UDim2.new(1, -30, 0, 90)
StatsContainer.Position = UDim2.new(0, 15, 0, 60)
StatsContainer.BackgroundTransparency = 1

local StatsLayout = Instance.new("UIListLayout")
StatsLayout.Parent = StatsContainer
StatsLayout.SortOrder = Enum.SortOrder.LayoutOrder
StatsLayout.Padding = UDim.new(0, 10)

-- Function to create stat card
local function createStatCard(name, icon, color, layoutOrder)
    local Card = Instance.new("Frame")
    Card.Name = name
    Card.Parent = StatsContainer
    Card.Size = UDim2.new(1, 0, 0, 25)
    Card.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Card.BackgroundTransparency = 0.92
    Card.BorderSizePixel = 0
    Card.LayoutOrder = layoutOrder
    
    local CardCorner = Instance.new("UICorner")
    CardCorner.CornerRadius = UDim.new(0, 10)
    CardCorner.Parent = Card
    
    local CardStroke = Instance.new("UIStroke")
    CardStroke.Parent = Card
    CardStroke.Color = color
    CardStroke.Thickness = 1
    CardStroke.Transparency = 0.7
    
    local IconLabel = Instance.new("TextLabel")
    IconLabel.Parent = Card
    IconLabel.Size = UDim2.new(0, 30, 1, 0)
    IconLabel.Position = UDim2.new(0, 10, 0, 0)
    IconLabel.BackgroundTransparency = 1
    IconLabel.Text = icon
    IconLabel.TextColor3 = color
    IconLabel.TextSize = 16
    IconLabel.Font = Enum.Font.GothamBold
    
    local NameLabel = Instance.new("TextLabel")
    NameLabel.Parent = Card
    NameLabel.Size = UDim2.new(0.4, 0, 1, 0)
    NameLabel.Position = UDim2.new(0, 45, 0, 0)
    NameLabel.BackgroundTransparency = 1
    NameLabel.Text = name
    NameLabel.TextColor3 = Color3.fromRGB(200, 200, 220)
    NameLabel.TextSize = 13
    NameLabel.Font = Enum.Font.Gotham
    NameLabel.TextXAlignment = Enum.TextXAlignment.Left
    
    local ValueLabel = Instance.new("TextLabel")
    ValueLabel.Name = "Value"
    ValueLabel.Parent = Card
    ValueLabel.Size = UDim2.new(0.45, -10, 1, 0)
    ValueLabel.Position = UDim2.new(0.55, 0, 0, 0)
    ValueLabel.BackgroundTransparency = 1
    ValueLabel.Text = "0"
    ValueLabel.TextColor3 = color
    ValueLabel.TextSize = 14
    ValueLabel.Font = Enum.Font.GothamBold
    ValueLabel.TextXAlignment = Enum.TextXAlignment.Right
    
    return Card, ValueLabel
end

-- Create stat cards
local TimeCard, TimeValue = createStatCard("Time", "⏱️", Color3.fromRGB(100, 180, 255), 1)
local CurrentCard, CurrentValue = createStatCard("Current", "💰", Color3.fromRGB(255, 200, 80), 2)
local EarnedCard, EarnedValue = createStatCard("Earned", "📈", Color3.fromRGB(100, 255, 150), 3)

-- Discord Button
local DiscordBtn = Instance.new("TextButton")
DiscordBtn.Name = "DiscordBtn"
DiscordBtn.Parent = MainFrame
DiscordBtn.Size = UDim2.new(1, -30, 0, 38)
DiscordBtn.Position = UDim2.new(0, 15, 1, -50)
DiscordBtn.BackgroundColor3 = Color3.fromRGB(88, 101, 242)
DiscordBtn.BackgroundTransparency = 0.2
DiscordBtn.BorderSizePixel = 0
DiscordBtn.Text = "🌐 Join Discord"
DiscordBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
DiscordBtn.TextSize = 14
DiscordBtn.Font = Enum.Font.GothamBold

local DiscordCorner = Instance.new("UICorner")
DiscordCorner.CornerRadius = UDim.new(0, 10)
DiscordCorner.Parent = DiscordBtn

local DiscordStroke = Instance.new("UIStroke")
DiscordStroke.Parent = DiscordBtn
DiscordStroke.Color = Color3.fromRGB(88, 101, 242)
DiscordStroke.Thickness = 1
DiscordStroke.Transparency = 0.5

-- Services
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")

-- Animations
spawn(function()
    while ScreenGui.Parent do
        TweenService:Create(BorderGradient, TweenInfo.new(3, Enum.EasingStyle.Linear), {Rotation = 360}):Play()
        wait(3)
        BorderGradient.Rotation = 0
    end
end)

-- Button hover effects
MinimizeBtn.MouseEnter:Connect(function()
    TweenService:Create(MinimizeBtn, TweenInfo.new(0.2), {BackgroundTransparency = 0.7}):Play()
end)

MinimizeBtn.MouseLeave:Connect(function()
    TweenService:Create(MinimizeBtn, TweenInfo.new(0.2), {BackgroundTransparency = 0.9}):Play()
end)

DiscordBtn.MouseEnter:Connect(function()
    TweenService:Create(DiscordBtn, TweenInfo.new(0.3), {BackgroundTransparency = 0, Size = UDim2.new(1, -28, 0, 40)}):Play()
    TweenService:Create(DiscordStroke, TweenInfo.new(0.3), {Transparency = 0.2}):Play()
end)

DiscordBtn.MouseLeave:Connect(function()
    TweenService:Create(DiscordBtn, TweenInfo.new(0.3), {BackgroundTransparency = 0.2, Size = UDim2.new(1, -30, 0, 38)}):Play()
    TweenService:Create(DiscordStroke, TweenInfo.new(0.3), {Transparency = 0.5}):Play()
end)

DiscordBtn.MouseButton1Click:Connect(function()
    if W then setclipboard(W) end
    DiscordBtn.Text = "✓ Copied!"
    TweenService:Create(DiscordBtn, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(0, 255, 127)}):Play()
    wait(2)
    DiscordBtn.Text = "🌐 Join Discord"
    TweenService:Create(DiscordBtn, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(88, 101, 242)}):Play()
end)

-- Minimize functionality
local isMinimized = false
MinimizeBtn.MouseButton1Click:Connect(function()
    isMinimized = not isMinimized
    if isMinimized then
        -- Hide all content except header
        StatsContainer.Visible = false
        DiscordBtn.Visible = false
        TweenService:Create(MainFrame, TweenInfo.new(0.3, Enum.EasingStyle.Quad), {
            Size = UDim2.new(0, 320, 0, 50)
        }):Play()
        MinimizeBtn.Text = "+"
    else
        -- Show all content
        TweenService:Create(MainFrame, TweenInfo.new(0.3, Enum.EasingStyle.Quad), {
            Size = UDim2.new(0, 320, 0, 220)
        }):Play()
        MinimizeBtn.Text = "−"
        wait(0.3)
        StatsContainer.Visible = true
        DiscordBtn.Visible = true
    end
end)

-- Dragging
local dragging, dragInput, dragStart, startPos

Header.InputBegan:Connect(function(input)
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

Header.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        local delta = input.Position - dragStart
        MainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
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
        return tostring(math.floor(num))
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
    if isfile and isfile(filePath) then
        local success, data = pcall(function()
            return game:GetService("HttpService"):JSONDecode(readfile(filePath))
        end)
        return success and data or nil
    end
    return nil
end

local function saveStats(timeElapsed, beliEarned, initialBeli, sessionStartTime)
    if not writefile then return end
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
    while ScreenGui.Parent do
        local totalTime = totalTimeElapsed + (os.time() - sessionStartTime)
        TimeValue.Text = formatTime(totalTime)
        
        local currentBeli = game.Players.LocalPlayer.Data.Beli.Value
        CurrentValue.Text = formatNumber(currentBeli)
        
        local beliEarned = currentBeli - initialBeli
        EarnedValue.Text = "+" .. formatNumber(beliEarned)
        
        saveStats(totalTime, beliEarned, initialBeli, sessionStartTime)
        wait(1)
    end
end)

-- Toggle Function
function Gui(visible)
    ScreenGui.Enabled = visible
end

Gui(true)

