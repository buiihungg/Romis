-- Advanced HTTP Spy v3
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

-- Properties
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

UICorner.CornerRadius = UDim.new(0, 12)
UICorner.Parent = MainFrame

-- Shadow effect
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

-- Filter Frame
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

-- Notification
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

-- Variables
local isMinimized = false
local currentFilter = "ALL"
local totalRequests = 0
local getCount = 0
local postCount = 0
local allLogs = {}

-- Functions
local function updateStats()
    StatsLabel.Text = string.format("📊 Total: %d | GET: %d | POST: %d", totalRequests, getCount, postCount)
end

local function createDraggable(gui)
    local dragging, dragInput, dragStart, startPos

    local function update(input)
        local delta = input.Position - dragStart
        gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end

    gui.InputBegan:Connect(function(input)
        if input.UserInputType ~= Enum.UserInputType.MouseButton1 and input.UserInputType ~= Enum.UserInputType.Touch then return end
        dragging = true
        dragStart = input.Position
        startPos = gui.Position
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end)

    gui.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)

    game:GetService("UserInputService").InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            update(input)
        end
    end)
end

createDraggable(TitleBar)

local function registerDynamicScrollingFrame(frame)
    local layout = frame:FindFirstChildWhichIsA("UIListLayout")
    local function updateCanvasSize()
        frame.CanvasSize = UDim2.new(0, 0, 0, layout.AbsoluteContentSize.Y + 20)
    end
    layout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(updateCanvasSize)
    updateCanvasSize()
end

registerDynamicScrollingFrame(MainContainer)

local function showNotification(message)
    NotificationText.Text = message or "✓ Copied to clipboard!"
    NotificationFrame.BackgroundColor3 = Color3.fromRGB(50, 200, 100)
    NotificationFrame.Visible = true
    NotificationFrame:TweenPosition(UDim2.new(1, -230, 1, -70), "Out", "Quad", 0.3, true)
    task.wait(2)
    NotificationFrame:TweenPosition(UDim2.new(1, 0, 1, -70), "In", "Quad", 0.3, true, function()
        NotificationFrame.Visible = false
    end)
end

local function formatLogEntry(method, url, headers, body)
    local text = "Method: " .. (method or "UNKNOWN") .. "\nURL: " .. (url or "N/A")
    
    if headers and type(headers) == "table" then
        text = text .. "\n\nHeaders:"
        for key, value in pairs(headers) do
            text = text .. string.format("\n  %s: %s", tostring(key), tostring(value))
        end
    end
    
    if body and body ~= "" then
        text = text .. "\n\nBody:\n" .. tostring(body)
    end
    
    return text
end

local function createLogEntry(method, url, headers, body)
    local LogEntry = Instance.new("Frame")
    LogEntry.BackgroundColor3 = Color3.fromRGB(38, 38, 46)
    LogEntry.BorderSizePixel = 0
    LogEntry.Size = UDim2.new(1, 0, 0, 0)
    
    local EntryCorner = Instance.new("UICorner")
    EntryCorner.CornerRadius = UDim.new(0, 8)
    EntryCorner.Parent = LogEntry
    
    local MethodLabel = Instance.new("TextLabel")
    MethodLabel.Name = "MethodLabel"
    MethodLabel.Parent = LogEntry
    MethodLabel.BackgroundTransparency = 1
    MethodLabel.Position = UDim2.new(0, 10, 0, 5)
    MethodLabel.Size = UDim2.new(0, 80, 0, 20)
    MethodLabel.Font = Enum.Font.GothamBold
    MethodLabel.Text = method or "REQUEST"
    MethodLabel.TextSize = 13
    MethodLabel.TextXAlignment = Enum.TextXAlignment.Left
    
    if method == "GET" or method == "HTTP GET" then
        MethodLabel.TextColor3 = Color3.fromRGB(100, 220, 150)
    elseif method == "POST" or method == "HTTP POST" then
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
    URLLabel.Text = url or "N/A"
    URLLabel.TextColor3 = Color3.fromRGB(200, 200, 210)
    URLLabel.TextSize = 12
    URLLabel.TextXAlignment = Enum.TextXAlignment.Left
    URLLabel.TextTruncate = Enum.TextTruncate.AtEnd
    
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
    
    local CopyCorner = Instance.new("UICorner")
    CopyCorner.CornerRadius = UDim.new(0, 5)
    CopyCorner.Parent = CopyButton
    
    LogEntry.Size = UDim2.new(1, 0, 0, 60)
    
    local logText = formatLogEntry(method, url, headers, body)
    
    CopyButton.MouseButton1Click:Connect(function()
        setclipboard(logText)
        CopyButton.BackgroundColor3 = Color3.fromRGB(50, 200, 100)
        CopyButton.Text = "✓ Copied"
        showNotification("✓ Log copied to clipboard!")
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
    
    local logData = {
        entry = LogEntry,
        method = method,
        url = url,
        text = logText
    }
    table.insert(allLogs, logData)
    
    LogEntry.Parent = MainContainer
    return LogEntry
end

local function filterLogs()
    local searchText = SearchBox.Text:lower()
    
    for _, logData in ipairs(allLogs) do
        local entry = logData.entry
        local method = logData.method or ""
        local url = logData.url or ""
        
        local matchesFilter = currentFilter == "ALL" or 
                             (currentFilter == "GET" and (method:find("GET") or method == "GET")) or
                             (currentFilter == "POST" and (method:find("POST") or method == "POST"))
        
        local matchesSearch = searchText == "" or 
                             method:lower():find(searchText) or 
                             url:lower():find(searchText)
        
        entry.Visible = matchesFilter and matchesSearch
    end
end

-- Button Events
CloseButton.MouseButton1Click:Connect(function()
    HttpSpy:Destroy()
end)

MinimizeButton.MouseButton1Click:Connect(function()
    isMinimized = not isMinimized
    if isMinimized then
        MainFrame:TweenSize(UDim2.new(0, 500, 0, 35), "Out", "Quad", 0.3, true)
        MinimizeButton.Text = "+"
    else
        MainFrame:TweenSize(UDim2.new(0, 500, 0, 400), "Out", "Quad", 0.3, true)
        MinimizeButton.Text = "-"
    end
end)

ClearButton.MouseButton1Click:Connect(function()
    for _, child in ipairs(MainContainer:GetChildren()) do
        if child:IsA("Frame") then
            child:Destroy()
        end
    end
    allLogs = {}
    totalRequests = 0
    getCount = 0
    postCount = 0
    updateStats()
    showNotification("🗑 All logs cleared!")
end)

FilterGET.MouseButton1Click:Connect(function()
    currentFilter = "GET"
    FilterGET.BackgroundColor3 = Color3.fromRGB(80, 200, 120)
    FilterPOST.BackgroundColor3 = Color3.fromRGB(255, 140, 60)
    FilterALL.BackgroundColor3 = Color3.fromRGB(100, 100, 255)
    filterLogs()
end)

FilterPOST.MouseButton1Click:Connect(function()
    currentFilter = "POST"
    FilterPOST.BackgroundColor3 = Color3.fromRGB(255, 160, 80)
    FilterGET.BackgroundColor3 = Color3.fromRGB(60, 180, 100)
    FilterALL.BackgroundColor3 = Color3.fromRGB(100, 100, 255)
    filterLogs()
end)

FilterALL.MouseButton1Click:Connect(function()
    currentFilter = "ALL"
    FilterALL.BackgroundColor3 = Color3.fromRGB(120, 120, 255)
    FilterGET.BackgroundColor3 = Color3.fromRGB(60, 180, 100)
    FilterPOST.BackgroundColor3 = Color3.fromRGB(255, 140, 60)
    filterLogs()
end)

SearchBox:GetPropertyChangedSignal("Text"):Connect(function()
    filterLogs()
end)

-- HTTP Spy Logic
local function logRequest(method, url, headers, body)
    totalRequests = totalRequests + 1
    if method:find("GET") then
        getCount = getCount + 1
    elseif method:find("POST") then
        postCount = postCount + 1
    end
    createLogEntry(method, url, headers, body)
    updateStats()
end

local HttpGet = hookfunction(game.HttpGet, function(self, url, ...)
    logRequest("HTTP GET", url)
    return HttpGet(self, url, ...)
end)

local HttpPost = hookfunction(game.HttpPost, function(self, url, data, ...)
    logRequest("HTTP POST", url, nil, data)
    return HttpPost(self, url, data, ...)
end)

if syn and syn.request then
    local SynRequest = hookfunction(syn.request, function(options)
        logRequest(options.Method or "REQUEST", options.Url, options.Headers, options.Body)
        return SynRequest(options)
    end)
elseif request then
    local Request = hookfunction(request, function(options)
        logRequest(options.Method or "REQUEST", options.Url, options.Headers, options.Body)
        return Request(options)
    end)
elseif http_request then
    local HttpRequest = hookfunction(http_request, function(options)
        logRequest(options.Method or "REQUEST", options.Url, options.Headers, options.Body)
        return HttpRequest(options)
    end)
end

updateStats()
print("🌐 HTTP Spy v3 loaded successfully!")
