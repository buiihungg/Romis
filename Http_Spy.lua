-- HTTP Spy V4 - Enhanced Edition
-- Fixed loadstring compatibility + improved UI + more features

local function CreateHttpSpy()
    -- Wait for game to load
    if not game:IsLoaded() then
        game.Loaded:Wait()
    end
    
    -- Check if already exists
    if game.CoreGui:FindFirstChild("HttpSpyV4") then
        game.CoreGui.HttpSpyV4:Destroy()
        wait(0.1)
    end
    
    -- Main UI Setup
    local HttpSpy = Instance.new("ScreenGui")
    local MainFrame = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local TitleBar = Instance.new("Frame")
    local UICorner_2 = Instance.new("UICorner")
    local TitleText = Instance.new("TextLabel")
    local CloseButton = Instance.new("TextButton")
    local MinimizeButton = Instance.new("TextButton")
    local ClearButton = Instance.new("TextButton")
    local ExportButton = Instance.new("TextButton")
    local FilterFrame = Instance.new("Frame")
    local SearchBox = Instance.new("TextBox")
    local FilterGET = Instance.new("TextButton")
    local FilterPOST = Instance.new("TextButton")
    local FilterALL = Instance.new("TextButton")
    local AutoScrollToggle = Instance.new("TextButton")
    local StatsLabel = Instance.new("TextLabel")
    local MainContainer = Instance.new("ScrollingFrame")
    local UIListLayout = Instance.new("UIListLayout")
    local UIPadding = Instance.new("UIPadding")
    
    -- Detail View
    local DetailFrame = Instance.new("Frame")
    local DetailTitleBar = Instance.new("Frame")
    local DetailTitle = Instance.new("TextLabel")
    local DetailCloseBtn = Instance.new("TextButton")
    local DetailScroll = Instance.new("ScrollingFrame")
    local DetailText = Instance.new("TextLabel")
    
    HttpSpy.Name = "HttpSpyV4"
    HttpSpy.Parent = game.CoreGui
    HttpSpy.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    HttpSpy.ResetOnSpawn = false
    HttpSpy.DisplayOrder = 999
    
    MainFrame.Name = "MainFrame"
    MainFrame.Parent = HttpSpy
    MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 25)
    MainFrame.BorderSizePixel = 0
    MainFrame.Position = UDim2.new(0.05, 0, 0.15, 0)
    MainFrame.Size = UDim2.new(0, 550, 0, 450)
    MainFrame.Active = true
    MainFrame.ClipsDescendants = false
    
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
    Shadow.ImageTransparency = 0.4
    Shadow.ScaleType = Enum.ScaleType.Slice
    Shadow.SliceCenter = Rect.new(10, 10, 118, 118)
    
    -- Title Bar
    TitleBar.Name = "TitleBar"
    TitleBar.Parent = MainFrame
    TitleBar.BackgroundColor3 = Color3.fromRGB(30, 30, 38)
    TitleBar.BorderSizePixel = 0
    TitleBar.Size = UDim2.new(1, 0, 0, 40)
    TitleBar.Active = true
    
    UICorner_2.CornerRadius = UDim.new(0, 12)
    UICorner_2.Parent = TitleBar
    
    TitleText.Name = "TitleText"
    TitleText.Parent = TitleBar
    TitleText.BackgroundTransparency = 1
    TitleText.Position = UDim2.new(0, 15, 0, 0)
    TitleText.Size = UDim2.new(0, 250, 1, 0)
    TitleText.Font = Enum.Font.GothamBold
    TitleText.Text = "🌐 HTTP Spy V4 Enhanced"
    TitleText.TextColor3 = Color3.fromRGB(100, 200, 255)
    TitleText.TextSize = 16
    TitleText.TextXAlignment = Enum.TextXAlignment.Left
    
    -- Buttons
    CloseButton.Name = "CloseButton"
    CloseButton.Parent = TitleBar
    CloseButton.BackgroundColor3 = Color3.fromRGB(255, 60, 60)
    CloseButton.BorderSizePixel = 0
    CloseButton.Position = UDim2.new(1, -28, 0, 10)
    CloseButton.Size = UDim2.new(0, 20, 0, 20)
    CloseButton.Font = Enum.Font.GothamBold
    CloseButton.Text = "×"
    CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    CloseButton.TextSize = 16
    CloseButton.AutoButtonColor = false
    
    local CloseCorner = Instance.new("UICorner")
    CloseCorner.CornerRadius = UDim.new(1, 0)
    CloseCorner.Parent = CloseButton
    
    MinimizeButton.Name = "MinimizeButton"
    MinimizeButton.Parent = TitleBar
    MinimizeButton.BackgroundColor3 = Color3.fromRGB(255, 200, 60)
    MinimizeButton.BorderSizePixel = 0
    MinimizeButton.Position = UDim2.new(1, -53, 0, 10)
    MinimizeButton.Size = UDim2.new(0, 20, 0, 20)
    MinimizeButton.Font = Enum.Font.GothamBold
    MinimizeButton.Text = "─"
    MinimizeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    MinimizeButton.TextSize = 14
    MinimizeButton.AutoButtonColor = false
    
    local MinCorner = Instance.new("UICorner")
    MinCorner.CornerRadius = UDim.new(1, 0)
    MinCorner.Parent = MinimizeButton
    
    ClearButton.Name = "ClearButton"
    ClearButton.Parent = TitleBar
    ClearButton.BackgroundColor3 = Color3.fromRGB(80, 80, 95)
    ClearButton.BorderSizePixel = 0
    ClearButton.Position = UDim2.new(1, -78, 0, 10)
    ClearButton.Size = UDim2.new(0, 20, 0, 20)
    ClearButton.Font = Enum.Font.GothamBold
    ClearButton.Text = "🗑"
    ClearButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    ClearButton.TextSize = 12
    ClearButton.AutoButtonColor = false
    
    local ClearCorner = Instance.new("UICorner")
    ClearCorner.CornerRadius = UDim.new(1, 0)
    ClearCorner.Parent = ClearButton
    
    ExportButton.Name = "ExportButton"
    ExportButton.Parent = TitleBar
    ExportButton.BackgroundColor3 = Color3.fromRGB(100, 100, 255)
    ExportButton.BorderSizePixel = 0
    ExportButton.Position = UDim2.new(1, -103, 0, 10)
    ExportButton.Size = UDim2.new(0, 20, 0, 20)
    ExportButton.Font = Enum.Font.GothamBold
    ExportButton.Text = "💾"
    ExportButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    ExportButton.TextSize = 11
    ExportButton.AutoButtonColor = false
    
    local ExportCorner = Instance.new("UICorner")
    ExportCorner.CornerRadius = UDim.new(1, 0)
    ExportCorner.Parent = ExportButton
    
    -- Filter Frame
    FilterFrame.Name = "FilterFrame"
    FilterFrame.Parent = MainFrame
    FilterFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 33)
    FilterFrame.BorderSizePixel = 0
    FilterFrame.Position = UDim2.new(0, 0, 0, 40)
    FilterFrame.Size = UDim2.new(1, 0, 0, 80)
    
    SearchBox.Name = "SearchBox"
    SearchBox.Parent = FilterFrame
    SearchBox.BackgroundColor3 = Color3.fromRGB(35, 35, 45)
    SearchBox.BorderSizePixel = 0
    SearchBox.Position = UDim2.new(0, 10, 0, 10)
    SearchBox.Size = UDim2.new(1, -20, 0, 28)
    SearchBox.Font = Enum.Font.Gotham
    SearchBox.PlaceholderText = "🔍 Search URL, Method, or Body..."
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
    
    -- Filter Buttons
    FilterGET.Name = "FilterGET"
    FilterGET.Parent = FilterFrame
    FilterGET.BackgroundColor3 = Color3.fromRGB(60, 180, 100)
    FilterGET.BorderSizePixel = 0
    FilterGET.Position = UDim2.new(0, 10, 0, 45)
    FilterGET.Size = UDim2.new(0.22, -5, 0, 26)
    FilterGET.Font = Enum.Font.GothamSemibold
    FilterGET.Text = "GET"
    FilterGET.TextColor3 = Color3.fromRGB(255, 255, 255)
    FilterGET.TextSize = 12
    FilterGET.AutoButtonColor = false
    
    local GetCorner = Instance.new("UICorner")
    GetCorner.CornerRadius = UDim.new(0, 6)
    GetCorner.Parent = FilterGET
    
    FilterPOST.Name = "FilterPOST"
    FilterPOST.Parent = FilterFrame
    FilterPOST.BackgroundColor3 = Color3.fromRGB(255, 140, 60)
    FilterPOST.BorderSizePixel = 0
    FilterPOST.Position = UDim2.new(0.22, 5, 0, 45)
    FilterPOST.Size = UDim2.new(0.22, -5, 0, 26)
    FilterPOST.Font = Enum.Font.GothamSemibold
    FilterPOST.Text = "POST"
    FilterPOST.TextColor3 = Color3.fromRGB(255, 255, 255)
    FilterPOST.TextSize = 12
    FilterPOST.AutoButtonColor = false
    
    local PostCorner = Instance.new("UICorner")
    PostCorner.CornerRadius = UDim.new(0, 6)
    PostCorner.Parent = FilterPOST
    
    FilterALL.Name = "FilterALL"
    FilterALL.Parent = FilterFrame
    FilterALL.BackgroundColor3 = Color3.fromRGB(100, 100, 255)
    FilterALL.BorderSizePixel = 0
    FilterALL.Position = UDim2.new(0.44, 5, 0, 45)
    FilterALL.Size = UDim2.new(0.22, -5, 0, 26)
    FilterALL.Font = Enum.Font.GothamSemibold
    FilterALL.Text = "ALL"
    FilterALL.TextColor3 = Color3.fromRGB(255, 255, 255)
    FilterALL.TextSize = 12
    FilterALL.AutoButtonColor = false
    
    local AllCorner = Instance.new("UICorner")
    AllCorner.CornerRadius = UDim.new(0, 6)
    AllCorner.Parent = FilterALL
    
    AutoScrollToggle.Name = "AutoScrollToggle"
    AutoScrollToggle.Parent = FilterFrame
    AutoScrollToggle.BackgroundColor3 = Color3.fromRGB(120, 120, 255)
    AutoScrollToggle.BorderSizePixel = 0
    AutoScrollToggle.Position = UDim2.new(0.66, 5, 0, 45)
    AutoScrollToggle.Size = UDim2.new(0.34, -15, 0, 26)
    AutoScrollToggle.Font = Enum.Font.GothamSemibold
    AutoScrollToggle.Text = "📜 Auto Scroll: ON"
    AutoScrollToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
    AutoScrollToggle.TextSize = 11
    AutoScrollToggle.AutoButtonColor = false
    
    local AutoCorner = Instance.new("UICorner")
    AutoCorner.CornerRadius = UDim.new(0, 6)
    AutoCorner.Parent = AutoScrollToggle
    
    -- Stats Label
    StatsLabel.Name = "StatsLabel"
    StatsLabel.Parent = MainFrame
    StatsLabel.BackgroundTransparency = 1
    StatsLabel.Position = UDim2.new(0, 10, 1, -28)
    StatsLabel.Size = UDim2.new(1, -20, 0, 22)
    StatsLabel.Font = Enum.Font.GothamSemibold
    StatsLabel.Text = "📊 Total: 0 | GET: 0 | POST: 0 | Other: 0"
    StatsLabel.TextColor3 = Color3.fromRGB(150, 150, 160)
    StatsLabel.TextSize = 11
    StatsLabel.TextXAlignment = Enum.TextXAlignment.Left
    
    -- Main Container
    MainContainer.Name = "MainContainer"
    MainContainer.Parent = MainFrame
    MainContainer.BackgroundTransparency = 1
    MainContainer.Position = UDim2.new(0, 0, 0, 120)
    MainContainer.Size = UDim2.new(1, 0, 1, -150)
    MainContainer.ScrollBarThickness = 6
    MainContainer.ScrollBarImageColor3 = Color3.fromRGB(100, 100, 120)
    MainContainer.BorderSizePixel = 0
    
    UIListLayout.Parent = MainContainer
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Padding = UDim.new(0, 6)
    
    UIPadding.Parent = MainContainer
    UIPadding.PaddingLeft = UDim.new(0, 10)
    UIPadding.PaddingRight = UDim.new(0, 10)
    UIPadding.PaddingTop = UDim.new(0, 10)
    UIPadding.PaddingBottom = UDim.new(0, 10)
    
    -- Detail Frame
    DetailFrame.Name = "DetailFrame"
    DetailFrame.Parent = HttpSpy
    DetailFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 25)
    DetailFrame.BorderSizePixel = 0
    DetailFrame.Position = UDim2.new(0.3, 0, 0.12, 0)
    DetailFrame.Size = UDim2.new(0, 650, 0, 550)
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
    DetailTitleBar.BackgroundColor3 = Color3.fromRGB(30, 30, 38)
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
    DetailTitle.Text = "📄 Request Details"
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
    DetailCloseBtn.AutoButtonColor = false
    
    local DetailCloseCorner = Instance.new("UICorner")
    DetailCloseCorner.CornerRadius = UDim.new(1, 0)
    DetailCloseCorner.Parent = DetailCloseBtn
    
    DetailScroll.Name = "DetailScroll"
    DetailScroll.Parent = DetailFrame
    DetailScroll.BackgroundColor3 = Color3.fromRGB(25, 25, 33)
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
    
    -- Notification
    local NotificationFrame = Instance.new("Frame")
    NotificationFrame.Name = "NotificationFrame"
    NotificationFrame.Parent = HttpSpy
    NotificationFrame.BackgroundColor3 = Color3.fromRGB(50, 200, 100)
    NotificationFrame.BorderSizePixel = 0
    NotificationFrame.Position = UDim2.new(1, -250, 1, -80)
    NotificationFrame.Size = UDim2.new(0, 240, 0, 60)
    NotificationFrame.Visible = false
    
    local NotifCorner = Instance.new("UICorner")
    NotifCorner.CornerRadius = UDim.new(0, 8)
    NotifCorner.Parent = NotificationFrame
    
    local NotificationText = Instance.new("TextLabel")
    NotificationText.Name = "NotificationText"
    NotificationText.Parent = NotificationFrame
    NotificationText.BackgroundTransparency = 1
    NotificationText.Size = UDim2.new(1, -20, 1, 0)
    NotificationText.Position = UDim2.new(0, 10, 0, 0)
    NotificationText.Font = Enum.Font.GothamBold
    NotificationText.TextColor3 = Color3.fromRGB(255, 255, 255)
    NotificationText.TextSize = 14
    NotificationText.Text = "✓ Success!"
    NotificationText.TextWrapped = true
    
    -- Variables
    local IsMinimized = false
    local CurrentFilter = "ALL"
    local AutoScroll = true
    local TotalRequests = 0
    local GetCount = 0
    local PostCount = 0
    local OtherCount = 0
    local AllLogs = {}
    
    -- Functions
    local function UpdateStats()
        StatsLabel.Text = string.format("📊 Total: %d | GET: %d | POST: %d | Other: %d", 
            TotalRequests, GetCount, PostCount, OtherCount)
    end
    
    local function CreateDraggable(Frame, TargetFrame)
        local Dragging = false
        local DragInput, DragStart, StartPos
        
        local function Update(Input)
            local Delta = Input.Position - DragStart
            TargetFrame.Position = UDim2.new(StartPos.X.Scale, StartPos.X.Offset + Delta.X, 
                StartPos.Y.Scale, StartPos.Y.Offset + Delta.Y)
        end
        
        Frame.InputBegan:Connect(function(Input)
            if Input.UserInputType == Enum.UserInputType.MouseButton1 or 
               Input.UserInputType == Enum.UserInputType.Touch then
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
            if Input.UserInputType == Enum.UserInputType.MouseMovement or 
               Input.UserInputType == Enum.UserInputType.Touch then
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
                if AutoScroll then
                    Frame.CanvasPosition = Vector2.new(0, Frame.AbsoluteCanvasSize.Y)
                end
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
    
    local function ShowNotification(Message, Color)
        NotificationText.Text = Message or "✓ Success!"
        NotificationFrame.BackgroundColor3 = Color or Color3.fromRGB(50, 200, 100)
        NotificationFrame.Visible = true
        NotificationFrame.Position = UDim2.new(1, 0, 1, -80)
        NotificationFrame:TweenPosition(UDim2.new(1, -250, 1, -80), "Out", "Quad", 0.3, true)
        task.wait(2.5)
        NotificationFrame:TweenPosition(UDim2.new(1, 0, 1, -80), "In", "Quad", 0.3, true, function()
            NotificationFrame.Visible = false
        end)
    end
    
    local function ShowDetailView(LogText)
        DetailText.Text = LogText
        UpdateDetailTextSize()
        DetailFrame.Visible = true
    end
    
    local function FormatLogEntry(Method, Url, Headers, Body)
        local Text = "╔═══════════════════════════════════════╗\n"
        Text = Text .. "  METHOD: " .. (Method or "UNKNOWN") .. "\n"
        Text = Text .. "╠═══════════════════════════════════════╣\n"
        Text = Text .. "  URL: " .. (Url or "N/A") .. "\n"
        Text = Text .. "╠═══════════════════════════════════════╣\n"
        
        if Headers and type(Headers) == "table" then
            Text = Text .. "  HEADERS:\n"
            for Key, Value in pairs(Headers) do
                Text = Text .. string.format("    • %s: %s\n", tostring(Key), tostring(Value))
            end
            Text = Text .. "╠═══════════════════════════════════════╣\n"
        end
        
        if Body and Body ~= "" then
            Text = Text .. "  BODY:\n"
            local BodyStr = tostring(Body)
            if #BodyStr > 500 then
                Text = Text .. "    " .. BodyStr:sub(1, 500) .. "...\n    [Truncated - " .. #BodyStr .. " chars total]\n"
            else
                Text = Text .. "    " .. BodyStr .. "\n"
            end
            Text = Text .. "╠═══════════════════════════════════════╣\n"
        end
        
        Text = Text .. "  TIME: " .. os.date("%Y-%m-%d %H:%M:%S") .. "\n"
        Text = Text .. "╚═══════════════════════════════════════╝"
        
        return Text
    end
    
    local function CreateLogEntry(Method, Url, Headers, Body)
        local LogEntry = Instance.new("Frame")
        LogEntry.BackgroundColor3 = Color3.fromRGB(33, 33, 41)
        LogEntry.BorderSizePixel = 0
        LogEntry.Size = UDim2.new(1, 0, 0, 70)
        
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
        ClickDetector.AutoButtonColor = false
        
        local MethodLabel = Instance.new("TextLabel")
        MethodLabel.Name = "MethodLabel"
        MethodLabel.Parent = LogEntry
        MethodLabel.BackgroundTransparency = 1
        MethodLabel.Position = UDim2.new(0, 12, 0, 8)
        MethodLabel.Size = UDim2.new(0, 90, 0, 22)
        MethodLabel.Font = Enum.Font.GothamBold
        MethodLabel.Text = Method or "REQUEST"
        MethodLabel.TextSize = 13
        MethodLabel.TextXAlignment = Enum.TextXAlignment.Left
        MethodLabel.ZIndex = 2
        
        if Method and (Method:find("GET") or Method == "GET") then
            MethodLabel.TextColor3 = Color3.fromRGB(100, 220, 150)
        elseif Method and (Method:find("POST") or Method == "POST") then
            MethodLabel.TextColor3 = Color3.fromRGB(255, 180, 100)
        else
            MethodLabel.TextColor3 = Color3.fromRGB(150, 150, 255)
        end
        
        local URLLabel = Instance.new("TextLabel")
        URLLabel.Name = "URLLabel"
        URLLabel.Parent = LogEntry
        URLLabel.BackgroundTransparency = 1
        URLLabel.Position = UDim2.new(0, 105, 0, 8)
        URLLabel.Size = UDim2.new(1, -200, 0, 22)
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
        TimeLabel.Position = UDim2.new(1, -85, 0, 8)
        TimeLabel.Size = UDim2.new(0, 80, 0, 20)
        TimeLabel.Font = Enum.Font.Gotham
        TimeLabel.Text = os.date("%H:%M:%S")
        TimeLabel.TextColor3 = Color3.fromRGB(120, 120, 135)
        TimeLabel.TextSize = 11
        TimeLabel.TextXAlignment = Enum.TextXAlignment.Right
        TimeLabel.ZIndex = 2
        
        local BodyPreview = Instance.new("TextLabel")
        BodyPreview.Name = "BodyPreview"
        BodyPreview.Parent = LogEntry
        BodyPreview.BackgroundTransparency = 1
        BodyPreview.Position = UDim2.new(0, 12, 0, 32)
        BodyPreview.Size = UDim2.new(1, -100, 0, 16)
        BodyPreview.Font = Enum.Font.Gotham
        BodyPreview.TextColor3 = Color3.fromRGB(140, 140, 150)
        BodyPreview.TextSize = 10
        BodyPreview.TextXAlignment = Enum.TextXAlignment.Left
        BodyPreview.TextTruncate = Enum.TextTruncate.AtEnd
        BodyPreview.ZIndex = 2
        
        if Body and Body ~= "" then
            local BodyStr = tostring(Body)
            if #BodyStr > 60 then
                BodyPreview.Text = "💬 " .. BodyStr:sub(1, 60) .. "..."
            else
                BodyPreview.Text = "💬 " .. BodyStr
            end
        else
            BodyPreview.Text = "💬 (no body)"
        end
        
        local CopyButton = Instance.new("TextButton")
        CopyButton.Name = "CopyButton"
        CopyButton.Parent = LogEntry
        CopyButton.BackgroundColor3 = Color3.fromRGB(60, 140, 255)
        CopyButton.BorderSizePixel = 0
        CopyButton.Position = UDim2.new(1, -85, 0, 38)
        CopyButton.Size = UDim2.new(0, 75, 0, 24)
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
            LogEntry.BackgroundColor3 = Color3.fromRGB(42, 42, 52)
        end)
        
        ClickDetector.MouseLeave:Connect(function()
            LogEntry.BackgroundColor3 = Color3.fromRGB(33, 33, 41)
        end)
        
        CopyButton.MouseButton1Click:Connect(function()
            pcall(function()
                setclipboard(LogText)
                CopyButton.BackgroundColor3 = Color3.fromRGB(50, 200, 100)
                CopyButton.Text = "✓ Copied"
                spawn(function()
                    ShowNotification("✓ Log copied to clipboard!")
                end)
                task.wait(1.5)
                CopyButton.BackgroundColor3 = Color3.fromRGB(60, 140, 255)
                CopyButton.Text = "📋 Copy"
            end)
        end)
        
        CopyButton.MouseEnter:Connect(function()
            if CopyButton.Text == "📋 Copy" then
                CopyButton.BackgroundColor3 = Color3.fromRGB(80, 160, 255)
            end
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
            Body = Body,
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
            local Body = LogData.Body or ""
            
            local MatchesFilter = CurrentFilter == "ALL" or 
                                 (CurrentFilter == "GET" and (Method:find("GET") or Method == "GET")) or
                                 (CurrentFilter == "POST" and (Method:find("POST") or Method == "POST"))
            
            local MatchesSearch = SearchText == "" or 
                                 Method:lower():find(SearchText) or 
                                 Url:lower():find(SearchText) or
                                 tostring(Body):lower():find(SearchText)
            
            Entry.Visible = MatchesFilter and MatchesSearch
        end
    end
    
    local function ExportAllLogs()
        local ExportText = "═══════════════════════════════════════\n"
        ExportText = ExportText .. "HTTP SPY V4 - EXPORT LOG\n"
        ExportText = ExportText .. "Generated: " .. os.date("%Y-%m-%d %H:%M:%S") .. "\n"
        ExportText = ExportText .. "Total Requests: " .. TotalRequests .. "\n"
        ExportText = ExportText .. "═══════════════════════════════════════\n\n"
        
        for i, LogData in ipairs(AllLogs) do
            ExportText = ExportText .. "[" .. i .. "] " .. LogData.Text .. "\n\n"
        end
        
        pcall(function()
            setclipboard(ExportText)
            ShowNotification("💾 All logs exported to clipboard!", Color3.fromRGB(100, 100, 255))
        end)
    end
    
    -- Button Events
    CloseButton.MouseButton1Click:Connect(function()
        HttpSpy:Destroy()
    end)
    
    CloseButton.MouseEnter:Connect(function()
        CloseButton.BackgroundColor3 = Color3.fromRGB(255, 80, 80)
    end)
    
    CloseButton.MouseLeave:Connect(function()
        CloseButton.BackgroundColor3 = Color3.fromRGB(255, 60, 60)
    end)
    
    MinimizeButton.MouseButton1Click:Connect(function()
        IsMinimized = not IsMinimized
        if IsMinimized then
            MainFrame:TweenSize(UDim2.new(0, 550, 0, 40), "Out", "Quad", 0.3, true)
            MinimizeButton.Text = "+"
            FilterFrame.Visible = false
            MainContainer.Visible = false
            StatsLabel.Visible = false
        else
            MainFrame:TweenSize(UDim2.new(0, 550, 0, 450), "Out", "Quad", 0.3, true)
            MinimizeButton.Text = "─"
            FilterFrame.Visible = true
            MainContainer.Visible = true
            StatsLabel.Visible = true
        end
    end)
    
    MinimizeButton.MouseEnter:Connect(function()
        MinimizeButton.BackgroundColor3 = Color3.fromRGB(255, 220, 80)
    end)
    
    MinimizeButton.MouseLeave:Connect(function()
        MinimizeButton.BackgroundColor3 = Color3.fromRGB(255, 200, 60)
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
        OtherCount = 0
        UpdateStats()
        ShowNotification("🗑 All logs cleared!", Color3.fromRGB(255, 140, 60))
    end)
    
    ClearButton.MouseEnter:Connect(function()
        ClearButton.BackgroundColor3 = Color3.fromRGB(100, 100, 110)
    end)
    
    ClearButton.MouseLeave:Connect(function()
        ClearButton.BackgroundColor3 = Color3.fromRGB(80, 80, 95)
    end)
    
    ExportButton.MouseButton1Click:Connect(function()
        ExportAllLogs()
    end)
    
    ExportButton.MouseEnter:Connect(function()
        ExportButton.BackgroundColor3 = Color3.fromRGB(120, 120, 255)
    end)
    
    ExportButton.MouseLeave:Connect(function()
        ExportButton.BackgroundColor3 = Color3.fromRGB(100, 100, 255)
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
    
    AutoScrollToggle.MouseButton1Click:Connect(function()
        AutoScroll = not AutoScroll
        if AutoScroll then
            AutoScrollToggle.Text = "📜 Auto Scroll: ON"
            AutoScrollToggle.BackgroundColor3 = Color3.fromRGB(120, 120, 255)
            MainContainer.CanvasPosition = Vector2.new(0, MainContainer.AbsoluteCanvasSize.Y)
        else
            AutoScrollToggle.Text = "📜 Auto Scroll: OFF"
            AutoScrollToggle.BackgroundColor3 = Color3.fromRGB(80, 80, 100)
        end
    end)
    
    SearchBox:GetPropertyChangedSignal("Text"):Connect(function()
        FilterLogs()
    end)
    
    DetailCloseBtn.MouseButton1Click:Connect(function()
        DetailFrame.Visible = false
    end)
    
    DetailCloseBtn.MouseEnter:Connect(function()
        DetailCloseBtn.BackgroundColor3 = Color3.fromRGB(255, 80, 80)
    end)
    
    DetailCloseBtn.MouseLeave:Connect(function()
        DetailCloseBtn.BackgroundColor3 = Color3.fromRGB(255, 60, 60)
    end)
    
    -- Logging Function
    local function LogRequest(Method, Url, Headers, Body)
        TotalRequests = TotalRequests + 1
        
        if Method and (Method:find("GET") or Method == "GET") then
            GetCount = GetCount + 1
        elseif Method and (Method:find("POST") or Method == "POST") then
            PostCount = PostCount + 1
        else
            OtherCount = OtherCount + 1
        end
        
        CreateLogEntry(Method, Url, Headers, Body)
        UpdateStats()
        FilterLogs()
    end
    
    -- Hook Functions
    local success = pcall(function()
        if hookfunction then
            -- Hook game.HttpGet
            local OriginalHttpGet = hookfunction(game.HttpGet, function(self, url, ...)
                pcall(function()
                    LogRequest("HTTP GET", url, nil, nil)
                end)
                return OriginalHttpGet(self, url, ...)
            end)
            
            -- Hook game.HttpPost
            local OriginalHttpPost = hookfunction(game.HttpPost, function(self, url, data, ...)
                pcall(function()
                    LogRequest("HTTP POST", url, nil, data)
                end)
                return OriginalHttpPost(self, url, data, ...)
            end)
            
            -- Hook syn.request
            if syn and syn.request then
                local OriginalSynRequest = hookfunction(syn.request, function(options)
                    pcall(function()
                        LogRequest(options.Method or "REQUEST", options.Url, options.Headers, options.Body)
                    end)
                    return OriginalSynRequest(options)
                end)
            end
            
            -- Hook request
            if request then
                local OriginalRequest = hookfunction(request, function(options)
                    pcall(function()
                        LogRequest(options.Method or "REQUEST", options.Url, options.Headers, options.Body)
                    end)
                    return OriginalRequest(options)
                end)
            end
            
            -- Hook http_request
            if http_request then
                local OriginalHttpRequest = hookfunction(http_request, function(options)
                    pcall(function()
                        LogRequest(options.Method or "REQUEST", options.Url, options.Headers, options.Body)
                    end)
                    return OriginalHttpRequest(options)
                end)
            end
            
            -- Hook http.request (for newer executors)
            if game:GetService("HttpService").request then
                local OriginalHttpServiceRequest = hookfunction(game:GetService("HttpService").request, function(self, options)
                    pcall(function()
                        LogRequest(options.Method or "REQUEST", options.Url, options.Headers, options.Body)
                    end)
                    return OriginalHttpServiceRequest(self, options)
                end)
            end
        end
    end)
    
    UpdateStats()
    
    -- Show success notification
    spawn(function()
        wait(0.5)
        ShowNotification("🌐 HTTP Spy V4 loaded successfully!", Color3.fromRGB(100, 200, 255))
    end)
    
    print("═══════════════════════════════════════")
    print("🌐 HTTP Spy V4 Enhanced Edition")
    print("✓ Successfully loaded!")
    print("✓ Hooks installed:", success and "Yes" or "Partial")
    print("═══════════════════════════════════════")
end

-- Execute
CreateHttpSpy()
