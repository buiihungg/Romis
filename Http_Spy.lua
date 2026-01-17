local HttpSpy = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TitleBar = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local TitleText = Instance.new("TextLabel")
local CloseButton = Instance.new("TextButton")
local MinimizeButton = Instance.new("TextButton")
local ClearButton = Instance.new("TextButton")
local FilterFrame = Instance.new("Frame")
local SearchBox = Instance.new("TextBox")
local FilterGET = Instance.new("TextButton")
local FilterPOST = Instance.new("TextButton")
local FilterALL = Instance.new("TextButton")
local StatsLabel = Instance.new("TextLabel")
local MainContainer = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local UIPadding = Instance.new("UIPadding")

local DetailFrame = Instance.new("Frame")
local DetailTitleBar = Instance.new("Frame")
local DetailTitle = Instance.new("TextLabel")
local DetailCloseBtn = Instance.new("TextButton")
local DetailScroll = Instance.new("ScrollingFrame")
local DetailText = Instance.new("TextLabel")

HttpSpy.Name = "HttpSpyV3"
HttpSpy.Parent = game.CoreGui
HttpSpy.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
HttpSpy.ResetOnSpawn = false

MainFrame.Name = "MainFrame"
MainFrame.Parent = HttpSpy
MainFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 30)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.05, 0, 0.2, 0)
MainFrame.Size = UDim2.new(0, 500, 0, 400)
MainFrame.Active = true

UICorner.CornerRadius = UDim.new(0, 12)
UICorner.Parent = MainFrame

local Shadow = Instance.new("ImageLabel")
Shadow.Name = "Shadow"
Shadow.Parent = MainFrame
Shadow.BackgroundTransparency = 1
Shadow.Position = UDim2.new(0, -15, 0, -15)
Shadow.Size = UDim2.new(1, 30, 1, 30)
Shadow.ZIndex = 0
Shadow.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
Shadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
Shadow.ImageTransparency = 0.5
Shadow.ScaleType = Enum.ScaleType.Slice
Shadow.SliceCenter = Rect.new(10, 10, 118, 118)

TitleBar.Name = "TitleBar"
TitleBar.Parent = MainFrame
TitleBar.BackgroundColor3 = Color3.fromRGB(35, 35, 42)
TitleBar.BorderSizePixel = 0
TitleBar.Size = UDim2.new(1, 0, 0, 35)
TitleBar.Active = true

UICorner_2.CornerRadius = UDim.new(0, 12)
UICorner_2.Parent = TitleBar

TitleText.Name = "TitleText"
TitleText.Parent = TitleBar
TitleText.BackgroundTransparency = 1
TitleText.Position = UDim2.new(0, 15, 0, 0)
TitleText.Size = UDim2.new(0, 200, 1, 0)
TitleText.Font = Enum.Font.GothamBold
TitleText.Text = "🌐 HTTP Spy v3"
TitleText.TextColor3 = Color3.fromRGB(100, 200, 255)
TitleText.TextSize = 16
TitleText.TextXAlignment = Enum.TextXAlignment.Left

CloseButton.Name = "CloseButton"
CloseButton.Parent = TitleBar
CloseButton.BackgroundColor3 = Color3.fromRGB(255, 60, 60)
CloseButton.BorderSizePixel = 0
CloseButton.Position = UDim2.new(1, -30, 0, 7.5)
CloseButton.Size = UDim2.new(0, 20, 0, 20)
CloseButton.Font = Enum.Font.GothamBold
CloseButton.Text = "×"
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.TextSize = 16

local CloseCorner = Instance.new("UICorner")
CloseCorner.CornerRadius = UDim.new(1, 0)
CloseCorner.Parent = CloseButton

MinimizeButton.Name = "MinimizeButton"
MinimizeButton.Parent = TitleBar
MinimizeButton.BackgroundColor3 = Color3.fromRGB(255, 200, 60)
MinimizeButton.BorderSizePixel = 0
MinimizeButton.Position = UDim2.new(1, -55, 0, 7.5)
MinimizeButton.Size = UDim2.new(0, 20, 0, 20)
MinimizeButton.Font = Enum.Font.GothamBold
MinimizeButton.Text = "-"
MinimizeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
MinimizeButton.TextSize = 16

local MinCorner = Instance.new("UICorner")
MinCorner.CornerRadius = UDim.new(1, 0)
MinCorner.Parent = MinimizeButton

ClearButton.Name = "ClearButton"
ClearButton.Parent = TitleBar
ClearButton.BackgroundColor3 = Color3.fromRGB(80, 80, 90)
ClearButton.BorderSizePixel = 0
ClearButton.Position = UDim2.new(1, -80, 0, 7.5)
ClearButton.Size = UDim2.new(0, 20, 0, 20)
ClearButton.Font = Enum.Font.GothamBold
ClearButton.Text = "🗑"
ClearButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ClearButton.TextSize = 12

local ClearCorner = Instance.new("UICorner")
ClearCorner.CornerRadius = UDim.new(1, 0)
ClearCorner.Parent = ClearButton

FilterFrame.Name = "FilterFrame"
FilterFrame.Parent = MainFrame
FilterFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 38)
FilterFrame.BorderSizePixel = 0
FilterFrame.Position = UDim2.new(0, 0, 0, 35)
FilterFrame.Size = UDim2.new(1, 0, 0, 70)

SearchBox.Name = "SearchBox"
SearchBox.Parent = FilterFrame
SearchBox.BackgroundColor3 = Color3.fromRGB(40, 40, 48)
SearchBox.BorderSizePixel = 0
SearchBox.Position = UDim2.new(0, 10, 0, 10)
SearchBox.Size = UDim2.new(1, -20, 0, 25)
SearchBox.Font = Enum.Font.Gotham
SearchBox.PlaceholderText = "🔍 Search URL or Method..."
SearchBox.Text = ""
SearchBox.TextColor3 = Color3.fromRGB(220, 220, 220)
SearchBox.TextSize = 13
SearchBox.TextXAlignment = Enum.TextXAlignment.Left
SearchBox.ClearTextOnFocus = false

local SearchCorner = Instance.new("UICorner")
SearchCorner.CornerRadius = UDim.new(0, 6)
SearchCorner.Parent = SearchBox

local SearchPadding = Instance.new("UIPadding")
SearchPadding.Parent = SearchBox
SearchPadding.PaddingLeft = UDim.new(0, 10)

FilterGET.Name = "FilterGET"
FilterGET.Parent = FilterFrame
FilterGET.BackgroundColor3 = Color3.fromRGB(60, 180, 100)
FilterGET.BorderSizePixel = 0
FilterGET.Position = UDim2.new(0, 10, 0, 40)
FilterGET.Size = UDim2.new(0.3, -10, 0, 22)
FilterGET.Font = Enum.Font.GothamSemibold
FilterGET.Text = "GET"
FilterGET.TextColor3 = Color3.fromRGB(255, 255, 255)
FilterGET.TextSize = 12

local GetCorner = Instance.new("UICorner")
GetCorner.CornerRadius = UDim.new(0, 5)
GetCorner.Parent = FilterGET

FilterPOST.Name = "FilterPOST"
FilterPOST.Parent = FilterFrame
FilterPOST.BackgroundColor3 = Color3.fromRGB(255, 140, 60)
FilterPOST.BorderSizePixel = 0
FilterPOST.Position = UDim2.new(0.33, 0, 0, 40)
FilterPOST.Size = UDim2.new(0.3, -5, 0, 22)
FilterPOST.Font = Enum.Font.GothamSemibold
FilterPOST.Text = "POST"
FilterPOST.TextColor3 = Color3.fromRGB(255, 255, 255)
FilterPOST.TextSize = 12

local PostCorner = Instance.new("UICorner")
PostCorner.CornerRadius = UDim.new(0, 5)
PostCorner.Parent = FilterPOST

FilterALL.Name = "FilterALL"
FilterALL.Parent = FilterFrame
FilterALL.BackgroundColor3 = Color3.fromRGB(100, 100, 255)
FilterALL.BorderSizePixel = 0
FilterALL.Position = UDim2.new(0.66, 0, 0, 40)
FilterALL.Size = UDim2.new(0.34, -10, 0, 22)
FilterALL.Font = Enum.Font.GothamSemibold
FilterALL.Text = "ALL"
FilterALL.TextColor3 = Color3.fromRGB(255, 255, 255)
FilterALL.TextSize = 12

local AllCorner = Instance.new("UICorner")
AllCorner.CornerRadius = UDim.new(0, 5)
AllCorner.Parent = FilterALL

StatsLabel.Name = "StatsLabel"
StatsLabel.Parent = MainFrame
StatsLabel.BackgroundTransparency = 1
StatsLabel.Position = UDim2.new(0, 10, 1, -25)
StatsLabel.Size = UDim2.new(1, -20, 0, 20)
StatsLabel.Font = Enum.Font.GothamSemibold
StatsLabel.Text = "📊 Total: 0 | GET: 0 | POST: 0"
StatsLabel.TextColor3 = Color3.fromRGB(150, 150, 160)
StatsLabel.TextSize = 11
StatsLabel.TextXAlignment = Enum.TextXAlignment.Left

MainContainer.Name = "MainContainer"
MainContainer.Parent = MainFrame
MainContainer.BackgroundTransparency = 1
MainContainer.Position = UDim2.new(0, 0, 0, 105)
MainContainer.Size = UDim2.new(1, 0, 1, -135)
MainContainer.ScrollBarThickness = 6
MainContainer.ScrollBarImageColor3 = Color3.fromRGB(100, 100, 120)

UIListLayout.Parent = MainContainer
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 6)

UIPadding.Parent = MainContainer
UIPadding.PaddingLeft = UDim.new(0, 10)
UIPadding.PaddingRight = UDim.new(0, 10)
UIPadding.PaddingTop = UDim.new(0, 10)
UIPadding.PaddingBottom = UDim.new(0, 10)

DetailFrame.Name = "DetailFrame"
DetailFrame.Parent = HttpSpy
DetailFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 30)
DetailFrame.BorderSizePixel = 0
DetailFrame.Position = UDim2.new(0.3, 0, 0.15, 0)
DetailFrame.Size = UDim2.new(0, 600, 0, 500)
DetailFrame.Visible = false
DetailFrame.Active = true
DetailFrame.ZIndex = 10

local DetailCorner = Instance.new("UICorner")
DetailCorner.CornerRadius = UDim.new(0, 12)
DetailCorner.Parent = DetailFrame

local DetailShadow = Instance.new("ImageLabel")
DetailShadow.Name = "Shadow"
DetailShadow.Parent = DetailFrame
DetailShadow.BackgroundTransparency = 1
DetailShadow.Position = UDim2.new(0, -15, 0, -15)
DetailShadow.Size = UDim2.new(1, 30, 1, 30)
DetailShadow.ZIndex = 9
DetailShadow.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
DetailShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
DetailShadow.ImageTransparency = 0.3
DetailShadow.ScaleType = Enum.ScaleType.Slice
DetailShadow.SliceCenter = Rect.new(10, 10, 118, 118)

DetailTitleBar.Name = "DetailTitleBar"
DetailTitleBar.Parent = DetailFrame
DetailTitleBar.BackgroundColor3 = Color3.fromRGB(35, 35, 42)
DetailTitleBar.BorderSizePixel = 0
DetailTitleBar.Size = UDim2.new(1, 0, 0, 40)
DetailTitleBar.ZIndex = 11
DetailTitleBar.Active = true

local DetailTitleCorner = Instance.new("UICorner")
DetailTitleCorner.CornerRadius = UDim.new(0, 12)
DetailTitleCorner.Parent = DetailTitleBar

DetailTitle.Name = "DetailTitle"
DetailTitle.Parent = DetailTitleBar
DetailTitle.BackgroundTransparency = 1
DetailTitle.Position = UDim2.new(0, 15, 0, 0)
DetailTitle.Size = UDim2.new(1, -50, 1, 0)
DetailTitle.Font = Enum.Font.GothamBold
DetailTitle.Text = "📄 Log Details"
DetailTitle.TextColor3 = Color3.fromRGB(100, 200, 255)
DetailTitle.TextSize = 16
DetailTitle.TextXAlignment = Enum.TextXAlignment.Left
DetailTitle.ZIndex = 11

DetailCloseBtn.Name = "DetailCloseBtn"
DetailCloseBtn.Parent = DetailTitleBar
DetailCloseBtn.BackgroundColor3 = Color3.fromRGB(255, 60, 60)
DetailCloseBtn.BorderSizePixel = 0
DetailCloseBtn.Position = UDim2.new(1, -30, 0, 10)
DetailCloseBtn.Size = UDim2.new(0, 20, 0, 20)
DetailCloseBtn.Font = Enum.Font.GothamBold
DetailCloseBtn.Text = "×"
DetailCloseBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
DetailCloseBtn.TextSize = 16
DetailCloseBtn.ZIndex = 11

local DetailCloseCorner = Instance.new("UICorner")
DetailCloseCorner.CornerRadius = UDim.new(1, 0)
DetailCloseCorner.Parent = DetailCloseBtn

DetailScroll.Name = "DetailScroll"
DetailScroll.Parent = DetailFrame
DetailScroll.BackgroundColor3 = Color3.fromRGB(30, 30, 38)
DetailScroll.BorderSizePixel = 0
DetailScroll.Position = UDim2.new(0, 10, 0, 50)
DetailScroll.Size = UDim2.new(1, -20, 1, -60)
DetailScroll.ScrollBarThickness = 8
DetailScroll.ScrollBarImageColor3 = Color3.fromRGB(100, 100, 120)
DetailScroll.ZIndex = 11

local DetailScrollCorner = Instance.new("UICorner")
DetailScrollCorner.CornerRadius = UDim.new(0, 8)
DetailScrollCorner.Parent = DetailScroll

DetailText.Name = "DetailText"
DetailText.Parent = DetailScroll
DetailText.BackgroundTransparency = 1
DetailText.Size = UDim2.new(1, -10, 1, 0)
DetailText.Position = UDim2.new(0, 5, 0, 5)
DetailText.Font = Enum.Font.Code
DetailText.Text = ""
DetailText.TextColor3 = Color3.fromRGB(220, 220, 220)
DetailText.TextSize = 13
DetailText.TextXAlignment = Enum.TextXAlignment.Left
DetailText.TextYAlignment = Enum.TextYAlignment.Top
DetailText.TextWrapped = true
DetailText.ZIndex = 11

local NotificationFrame = Instance.new("Frame")
NotificationFrame.Name = "NotificationFrame"
NotificationFrame.Parent = HttpSpy
NotificationFrame.BackgroundColor3 = Color3.fromRGB(50, 200, 100)
NotificationFrame.BorderSizePixel = 0
NotificationFrame.Position = UDim2.new(1, -230, 1, -70)
NotificationFrame.Size = UDim2.new(0, 220, 0, 50)
NotificationFrame.Visible = false

local NotifCorner = Instance.new("UICorner")
NotifCorner.CornerRadius = UDim.new(0, 8)
NotifCorner.Parent = NotificationFrame

local NotificationText = Instance.new("TextLabel")
NotificationText.Name = "NotificationText"
NotificationText.Parent = NotificationFrame
NotificationText.BackgroundTransparency = 1
NotificationText.Size = UDim2.new(1, 0, 1, 0)
NotificationText.Font = Enum.Font.GothamBold
NotificationText.TextColor3 = Color3.fromRGB(255, 255, 255)
NotificationText.TextSize = 14
NotificationText.Text = "✓ Copied to clipboard!"

local IsMinimized = false
local CurrentFilter = "ALL"
local TotalRequests = 0
local GetCount = 0
local PostCount = 0
local AllLogs = {}

local function UpdateStats()
    StatsLabel.Text = string.format("📊 Total: %d | GET: %d | POST: %d", TotalRequests, GetCount, PostCount)
end

local function CreateDraggable(Frame, TargetFrame)
    local Dragging = false
    local DragInput, DragStart, StartPos

    local function Update(Input)
        local Delta = Input.Position - DragStart
        TargetFrame.Position = UDim2.new(StartPos.X.Scale, StartPos.X.Offset + Delta.X, StartPos.Y.Scale, StartPos.Y.Offset + Delta.Y)
    end

    Frame.InputBegan:Connect(function(Input)
        if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
            Dragging = true
            DragStart = Input.Position
            StartPos = TargetFrame.Position
            
            Input.Changed:Connect(function()
                if Input.UserInputState == Enum.UserInputState.End then
                    Dragging = false
                end
            end)
        end
    end)

    Frame.InputChanged:Connect(function(Input)
        if Input.UserInputType == Enum.UserInputType.MouseMovement or Input.UserInputType == Enum.UserInputType.Touch then
            DragInput = Input
        end
    end)

    game:GetService("UserInputService").InputChanged:Connect(function(Input)
        if Input == DragInput and Dragging then
            Update(Input)
        end
    end)
end

CreateDraggable(TitleBar, MainFrame)
CreateDraggable(DetailTitleBar, DetailFrame)

local function RegisterDynamicScrollingFrame(Frame)
    local Layout = Frame:FindFirstChildWhichIsA("UIListLayout")
    if Layout then
        local function UpdateCanvasSize()
            Frame.CanvasSize = UDim2.new(0, 0, 0, Layout.AbsoluteContentSize.Y + 20)
        end
        Layout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(UpdateCanvasSize)
        UpdateCanvasSize()
    end
end

RegisterDynamicScrollingFrame(MainContainer)

local function UpdateDetailTextSize()
    local TextBounds = game:GetService("TextService"):GetTextSize(
        DetailText.Text,
        DetailText.TextSize,
        DetailText.Font,
        Vector2.new(DetailScroll.AbsoluteSize.X - 20, math.huge)
    )
    DetailText.Size = UDim2.new(1, -10, 0, math.max(TextBounds.Y + 10, DetailScroll.AbsoluteSize.Y))
    DetailScroll.CanvasSize = UDim2.new(0, 0, 0, TextBounds.Y + 20)
end

local function ShowNotification(Message)
    NotificationText.Text = Message or "✓ Copied to clipboard!"
    NotificationFrame.BackgroundColor3 = Color3.fromRGB(50, 200, 100)
    NotificationFrame.Visible = true
    NotificationFrame:TweenPosition(UDim2.new(1, -230, 1, -70), "Out", "Quad", 0.3, true)
    task.wait(2)
    NotificationFrame:TweenPosition(UDim2.new(1, 0, 1, -70), "In", "Quad", 0.3, true, function()
        NotificationFrame.Visible = false
    end)
end

local function ShowDetailView(LogText)
    DetailText.Text = LogText
    UpdateDetailTextSize()
    DetailFrame.Visible = true
end

local function FormatLogEntry(Method, Url, Headers, Body)
    local Text = "Method: " .. (Method or "UNKNOWN") .. "\nURL: " .. (Url or "N/A")
    
    if Headers and type(Headers) == "table" then
        Text = Text .. "\n\nHeaders:"
        for Key, Value in pairs(Headers) do
            Text = Text .. string.format("\n  %s: %s", tostring(Key), tostring(Value))
        end
    end
    
    if Body and Body ~= "" then
        Text = Text .. "\n\nBody:\n" .. tostring(Body)
    end
    
    return Text
end

local function CreateLogEntry(Method, Url, Headers, Body)
    local LogEntry = Instance.new("Frame")
    LogEntry.BackgroundColor3 = Color3.fromRGB(38, 38, 46)
    LogEntry.BorderSizePixel = 0
    LogEntry.Size = UDim2.new(1, 0, 0, 60)
    
    local EntryCorner = Instance.new("UICorner")
    EntryCorner.CornerRadius = UDim.new(0, 8)
    EntryCorner.Parent = LogEntry
    
    local ClickDetector = Instance.new("TextButton")
    ClickDetector.Name = "ClickDetector"
    ClickDetector.Parent = LogEntry
    ClickDetector.BackgroundTransparency = 1
    ClickDetector.Size = UDim2.new(1, 0, 1, 0)
    ClickDetector.Text = ""
    ClickDetector.ZIndex = 1
    
    local MethodLabel = Instance.new("TextLabel")
    MethodLabel.Name = "MethodLabel"
    MethodLabel.Parent = LogEntry
    MethodLabel.BackgroundTransparency = 1
    MethodLabel.Position = UDim2.new(0, 10, 0, 5)
    MethodLabel.Size = UDim2.new(0, 80, 0, 20)
    MethodLabel.Font = Enum.Font.GothamBold
    MethodLabel.Text = Method or "REQUEST"
    MethodLabel.TextSize = 13
    MethodLabel.TextXAlignment = Enum.TextXAlignment.Left
    MethodLabel.ZIndex = 2
    
    if Method == "GET" or Method == "HTTP GET" then
        MethodLabel.TextColor3 = Color3.fromRGB(100, 220, 150)
    elseif Method == "POST" or Method == "HTTP POST" then
        MethodLabel.TextColor3 = Color3.fromRGB(255, 180, 100)
    else
        MethodLabel.TextColor3 = Color3.fromRGB(150, 150, 255)
    end
    
    local URLLabel = Instance.new("TextLabel")
    URLLabel.Name = "URLLabel"
    URLLabel.Parent = LogEntry
    URLLabel.BackgroundTransparency = 1
    URLLabel.Position = UDim2.new(0, 95, 0, 5)
    URLLabel.Size = UDim2.new(1, -180, 0, 20)
    URLLabel.Font = Enum.Font.Gotham
    URLLabel.Text = Url or "N/A"
    URLLabel.TextColor3 = Color3.fromRGB(200, 200, 210)
    URLLabel.TextSize = 12
    URLLabel.TextXAlignment = Enum.TextXAlignment.Left
    URLLabel.TextTruncate = Enum.TextTruncate.AtEnd
    URLLabel.ZIndex = 2
    
    local TimeLabel = Instance.new("TextLabel")
    TimeLabel.Name = "TimeLabel"
    TimeLabel.Parent = LogEntry
    TimeLabel.BackgroundTransparency = 1
    TimeLabel.Position = UDim2.new(1, -80, 0, 5)
    TimeLabel.Size = UDim2.new(0, 75, 0, 20)
    TimeLabel.Font = Enum.Font.Gotham
    TimeLabel.Text = os.date("%H:%M:%S")
    TimeLabel.TextColor3 = Color3.fromRGB(120, 120, 130)
    TimeLabel.TextSize = 11
    TimeLabel.TextXAlignment = Enum.TextXAlignment.Right
    TimeLabel.ZIndex = 2
    
    local CopyButton = Instance.new("TextButton")
    CopyButton.Name = "CopyButton"
    CopyButton.Parent = LogEntry
    CopyButton.BackgroundColor3 = Color3.fromRGB(60, 140, 255)
    CopyButton.BorderSizePixel = 0
    CopyButton.Position = UDim2.new(1, -80, 0, 30)
    CopyButton.Size = UDim2.new(0, 70, 0, 24)
    CopyButton.Font = Enum.Font.GothamSemibold
    CopyButton.Text = "📋 Copy"
    CopyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    CopyButton.TextSize = 11
    CopyButton.AutoButtonColor = false
    CopyButton.ZIndex = 3
    
    local CopyCorner = Instance.new("UICorner")
    CopyCorner.CornerRadius = UDim.new(0, 5)
    CopyCorner.Parent = CopyButton
    
    local LogText = FormatLogEntry(Method, Url, Headers, Body)
    
    ClickDetector.MouseButton1Click:Connect(function()
        ShowDetailView(LogText)
    end)
    
    ClickDetector.MouseEnter:Connect(function()
        LogEntry.BackgroundColor3 = Color3.fromRGB(45, 45, 55)
    end)
    
    ClickDetector.MouseLeave:Connect(function()
        LogEntry.BackgroundColor3 = Color3.fromRGB(38, 38, 46)
    end)
    
    CopyButton.MouseButton1Click:Connect(function()
        setclipboard(LogText)
        CopyButton.BackgroundColor3 = Color3.fromRGB(50, 200, 100)
        CopyButton.Text = "✓ Copied"
        ShowNotification("✓ Log copied to clipboard!")
        task.wait(1.5)
        CopyButton.BackgroundColor3 = Color3.fromRGB(60, 140, 255)
        CopyButton.Text = "📋 Copy"
    end)
    
    CopyButton.MouseEnter:Connect(function()
        CopyButton.BackgroundColor3 = Color3.fromRGB(80, 160, 255)
    end)
    
    CopyButton.MouseLeave:Connect(function()
        if CopyButton.Text == "📋 Copy" then
            CopyButton.BackgroundColor3 = Color3.fromRGB(60, 140, 255)
        end
    end)
    
    local LogData = {
        Entry = LogEntry,
        Method = Method,
        Url = Url,
        Text = LogText
    }
    table.insert(AllLogs, LogData)
    
    LogEntry.Parent = MainContainer
    return LogEntry
end

local function FilterLogs()
    local SearchText = SearchBox.Text:lower()
    
    for _, LogData in ipairs(AllLogs) do
        local Entry = LogData.Entry
        local Method = LogData.Method or ""
        local Url = LogData.Url or ""
        
        local MatchesFilter = CurrentFilter == "ALL" or 
                             (CurrentFilter == "GET" and (Method:find("GET") or Method == "GET")) or
                             (CurrentFilter == "POST" and (Method:find("POST") or Method == "POST"))
        
        local MatchesSearch = SearchText == "" or 
                             Method:lower():find(SearchText) or 
                             Url:lower():find(SearchText)
        
        Entry.Visible = MatchesFilter and MatchesSearch
    end
end

CloseButton.MouseButton1Click:Connect(function()
    HttpSpy:Destroy()
end)

MinimizeButton.MouseButton1Click:Connect(function()
    IsMinimized = not IsMinimized
    if IsMinimized then
        MainFrame:TweenSize(UDim2.new(0, 500, 0, 35), "Out", "Quad", 0.3, true)
        MinimizeButton.Text = "+"
        FilterFrame.Visible = false
        MainContainer.Visible = false
        StatsLabel.Visible = false
    else
        MainFrame:TweenSize(UDim2.new(0, 500, 0, 400), "Out", "Quad", 0.3, true)
        MinimizeButton.Text = "-"
        FilterFrame.Visible = true
        MainContainer.Visible = true
        StatsLabel.Visible = true
    end
end)

ClearButton.MouseButton1Click:Connect(function()
    for _, Child in ipairs(MainContainer:GetChildren()) do
        if Child:IsA("Frame") then
            Child:Destroy()
        end
    end
    AllLogs = {}
    TotalRequests = 0
    GetCount = 0
    PostCount = 0
    UpdateStats()
    ShowNotification("🗑 All logs cleared!")
end)

FilterGET.MouseButton1Click:Connect(function()
    CurrentFilter = "GET"
    FilterGET.BackgroundColor3 = Color3.fromRGB(80, 200, 120)
    FilterPOST.BackgroundColor3 = Color3.fromRGB(255, 140, 60)
    FilterALL.BackgroundColor3 = Color3.fromRGB(100, 100, 255)
    FilterLogs()
end)

FilterPOST.MouseButton1Click:Connect(function()
    CurrentFilter = "POST"
    FilterPOST.BackgroundColor3 = Color3.fromRGB(255, 160, 80)
    FilterGET.BackgroundColor3 = Color3.fromRGB(60, 180, 100)
    FilterALL.BackgroundColor3 = Color3.fromRGB(100, 100, 255)
    FilterLogs()
end)

FilterALL.MouseButton1Click:Connect(function()
    CurrentFilter = "ALL"
    FilterALL.BackgroundColor3 = Color3.fromRGB(120, 120, 255)
    FilterGET.BackgroundColor3 = Color3.fromRGB(60, 180, 100)
    FilterPOST.BackgroundColor3 = Color3.fromRGB(255, 140, 60)
    FilterLogs()
end)

SearchBox:GetPropertyChangedSignal("Text"):Connect(function()
    FilterLogs()
end)

DetailCloseBtn.MouseButton1Click:Connect(function()
    DetailFrame.Visible = false
end)

local function LogRequest(Method, Url, Headers, Body)
    TotalRequests = TotalRequests + 1
    if Method:find("GET") then
        GetCount = GetCount + 1
    elseif Method:find("POST") then
        PostCount = PostCount + 1
    end
    CreateLogEntry(Method, Url, Headers, Body)
    UpdateStats()
end

local HttpGet = hookfunction(game.HttpGet, function(self, url, ...)
    LogRequest("HTTP GET", url)
    return HttpGet(self, url, ...)
end)

local HttpPost = hookfunction(game.HttpPost, function(self, url, data, ...)
    LogRequest("HTTP POST", url, nil, data)
    return HttpPost(self, url, data, ...)
end)

if syn and syn.request then
    local SynRequest = hookfunction(syn.request, function(options)
        LogRequest(options.Method or "REQUEST", options.Url, options.Headers, options.Body)
        return SynRequest(options)
    end)
elseif request then
    local Request = hookfunction(request, function(options)
        LogRequest(options.Method or "REQUEST", options.Url, options.Headers, options.Body)
        return Request(options)
    end)
elseif http_request then
    local HttpRequest = hookfunction(http_request, function(options)
        LogRequest(options.Method or "REQUEST", options.Url, options.Headers, options.Body)
        return HttpRequest(options)
    end)
end

UpdateStats()
print("🌐 HTTP Spy v3 loaded successfully!")
