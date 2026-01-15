getgenv().SKey = getgenv().SKey or getgenv().Skey or getgenv().Key or script_key

repeat task.wait() until game:IsLoaded()

local Players = game:GetService("Players")
local Debris = game:GetService("Debris")
local HttpService = game:GetService("HttpService")
local RbxAnalyticsService = game:GetService("RbxAnalyticsService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

local global_container = getgenv().global_container or {}
local Identifier = "romis_hub"
local SECRET_KEY = "hhkujghukhkuesdiojcfoi9sudc9"

repeat task.wait() until Players.LocalPlayer
local LocalPlayer = Players.LocalPlayer
repeat task.wait() until LocalPlayer:FindFirstChild("PlayerGui")

local HWID = RbxAnalyticsService:GetClientId()

local Req = request or http_request or syn.request
if not Req then
    return
end

local function Encode(str)
    str = tostring(str)
    local LetterArgs = {
        ["A"] = "M",
        ["B"] = "X",
        ["C"] = "Q",
        ["D"] = "K",
        ["E"] = "W",
        ["F"] = "Z",
        ["G"] = "P",
        ["H"] = "R",
        ["I"] = "N",
        ["J"] = "V",
        ["K"] = "G",
        ["L"] = "T",
        ["M"] = "H",
        ["N"] = "B",
        ["O"] = "F",
        ["P"] = "J",
        ["Q"] = "Y",
        ["R"] = "S",
        ["S"] = "L",
        ["T"] = "C",
        ["U"] = "E",
        ["V"] = "D",
        ["W"] = "U",
        ["X"] = "I",
        ["Y"] = "O",
        ["Z"] = "A",
        ["a"] = "M",
        ["b"] = "X",
        ["c"] = "Q",
        ["d"] = "K",
        ["e"] = "W",
        ["f"] = "Z",
        ["g"] = "P",
        ["h"] = "R",
        ["i"] = "N",
        ["j"] = "V",
        ["k"] = "G",
        ["l"] = "T",
        ["m"] = "H",
        ["n"] = "B",
        ["o"] = "F",
        ["p"] = "J",
        ["q"] = "Y",
        ["r"] = "S",
        ["s"] = "L",
        ["t"] = "C",
        ["u"] = "E",
        ["v"] = "D",
        ["w"] = "U",
        ["x"] = "I",
        ["y"] = "O",
        ["z"] = "A",
        ["0"] = "7G",
        ["1"] = "44",
        ["2"] = "OS",
        ["3"] = "1B",
        ["4"] = "B1",
        ["5"] = "34AB",
        ["6"] = "88AC",
        ["7"] = "0BA",
        ["8"] = "5AS",
        ["9"] = "2Z",
        ["-"] = "G954H"
    }

    local out = {}
    for i = 1, #str do
        local c = str:sub(i, i)
        out[#out + 1] = LetterArgs[c] or c
        if i < #str then
            out[#out + 1] = LetterArgs["-"]
        end
    end
    return table.concat(out)
end

local function tohex(s)
    return (s:gsub(
        ".",
        function(c)
            return string.format("%02x", string.byte(c))
        end
    ))
end

local function sha256_hex(msg)
    return tohex(sha256(msg))
end

local function encrypt_payload(tbl)
    local json = HttpService:JSONEncode(tbl)
    local encoded = Encode(json)
    local sig = sha256_hex(encoded .. SECRET_KEY)
    return {
        payload = encoded,
        sig = sig
    }
end

task.spawn(function()
    pcall(function()
        local payload = encrypt_payload({
            username = LocalPlayer.Name,
            display_name = LocalPlayer.DisplayName,
            user_id = tostring(LocalPlayer.UserId),
            place_id = tostring(game.PlaceId),
            game = "Blox Fruits",
            executor = identifyexecutor and identifyexecutor() or "Unknown",
            time = os.date("%Y-%m-%d %H:%M:%S")
        })

        Req({
            Url = "https://imhungg.pythonanywhere.com/usecount",
            Method = "POST",
            Headers = {["Content-Type"] = "application/json"},
            Body = HttpService:JSONEncode(payload)
        })
    end)
end)

if not isfolder("Romis Hub") then
    makefolder("Romis Hub")
end

if getgenv().SkullHubExecuted then
    warn("[Romis Hub] Script has already been executed.")
    return
end

function WYNF_OBFUSCATED(func)
    return func
end

function WYNF_NO_VIRTUALIZE(func)
    return func
end

function WYNF_CRASH(func)
    return func
end

function WYNF_IS_CALLER_WYNFUSCATE(func)
    return func
end

function WYNF_ENC_STRING(func)
    return func
end 

function WYNF_ENC_NUM(func)
    return func
end 

function WYNF_LINE(func)
    return func
end

function WYNF_NO_UPVALUES(func)
    return func
end

function WYNF_SECURE_CALL(func)
    return func
end

function WYNF_SECURE_CALLBACK(func)
    return func
end

function WYNF_ENC_FUNCTION(func)
    return func
end

local function IsMobile()
    return UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled
end

local IS_MOBILE = IsMobile()

local UI_CONFIG = {
    MainFrame = {
        PC = {width = 420, height = 580},
        Mobile = {width = 340, height = 520}
    },
    SkullIcon = {
        PC = {size = 60},
        Mobile = {size = 50}
    },
    Title = {
        PC = {size = 28},
        Mobile = {size = 24}
    },
    Subtitle = {
        PC = {size = 12},
        Mobile = {size = 11}
    },
    Button = {
        PC = {height = 50},
        Mobile = {height = 45}
    },
    Text = {
        PC = {normal = 16, small = 14, label = 12},
        Mobile = {normal = 14, small = 12, label = 11}
    }
}

local function GetSize(category, property)
    local platform = IS_MOBILE and "Mobile" or "PC"
    if property then
        return UI_CONFIG[category][platform][property]
    end
    return UI_CONFIG[category][platform]
end

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

function AUTHENIC()
    print("[Romis Hub] Running script...")
end

local function ReadKeyFromFile()
    if isfile("Romis Hub/key.txt") then
        local success, key = pcall(function()
            return readfile("Romis Hub/key.txt")
        end)
        if success and key and key ~= "" then
            return key
        end
    end
    return nil
end

local function save_key(key)
    local success, error = pcall(function()
        writefile("Romis Hub/key.txt", key)
    end)
    if not success then
        setclipboard("[Romis Hub] Error when saving key: " .. tostring(error))
        warn("[Romis Hub] Failed to save key: " .. tostring(error))
    end
end

local function DeleteKeyFile()
    if isfile("Romis Hub/key.txt") then
        local success, error = pcall(function()
            delfile("Romis Hub/key.txt")
        end)
        if not success then
            setclipboard("[Romis Hub] Failed to delete key file: " .. tostring(error))
            warn("[Romis Hub] Failed to delete key file: " .. tostring(error))
        end
    end
end

local function U_En(str)
    return str:gsub("[^%w%-_%.~]", function(c)
        return string.format("%%%02X", string.byte(c))
    end)
end

function ValidateKey(k, serid, idh)
    if not k or k == "" then
        return false, "Key cannot be empty"
    end
    if not serid or serid == "" then
        return false, "Service ID cannot be empty"
    end
    if not idh or idh == "" then
        return false, "HWID cannot be empty"
    end
    
    local UrlVerify = string.format(
        "https://pandadevelopment.net/v2_validation?key=%s&service=%s&hwid=%s",
        U_En(tostring(k)),
        U_En(tostring(serid)),
        U_En(tostring(Encode(idh)))
    )
    
    local success, response
    if typeof(request) == "function" then
        success, response = pcall(function()
            return request({
                Url = UrlVerify,
                Method = "GET",
                Headers = { ["Content-Type"] = "application/json" }
            })
        end)
    elseif typeof(http.request) == "function" then
        success, response = pcall(function()
            return http.request({
                Url = UrlVerify,
                Method = "GET",
                Headers = { ["Content-Type"] = "application/json" }
            })
        end)
    else
        warn("[Romis Hub] No HTTP request method available.")
        return false, "No HTTP request method available"
    end
    
    if not success then
        warn("[Romis Hub] HTTP request failed. Error: " .. tostring(response))
        return false, "Request error: " .. tostring(response)
    end
    
    if response.Success or (response.StatusCode and response.StatusCode == 200) then
        local jsonData
        success, jsonData = pcall(function()
            if response.Body and response.Body ~= "" then
                return HttpService:JSONDecode(response.Body)
            else
                return nil
            end
        end)
        
        if not success then
            warn("[Romis Hub] JSON decode failed. Error: " .. tostring(jsonData))
            return false, "JSON decode error: " .. tostring(jsonData)
        end
        
        if jsonData and jsonData["V2_Authentication"] == "success" then
            print("[Romis Hub] Authenticated successfully.")
            return true, "Authenticated"
        else
            local reason = jsonData and jsonData["reason"] or "Unknown reason"
            warn("[Romis Hub] Authentication failed. Reason: " .. reason)
            return false, "Authentication failed: " .. reason
        end
    else
        local stcode = response.StatusCode or "Unknown"
        local stmes = response.StatusMessage or "Unknown error"
        warn("[Romis Hub] HTTP request failed. Code: " .. tostring(stcode) .. " Message: " .. tostring(stmes))
        return false, "HTTP request failed: " .. tostring(stcode) .. " - " .. tostring(stmes)
    end
end

function GetKeyLink(s, h)
    return string.format(
        "https://pandadevelopment.net/getkey?service=%s&hwid=%s",
        U_En(tostring(s)),
        U_En(tostring(Encode(h)))
    )
end

local SH_GUI = Instance.new("ScreenGui")

local function rdstring()
    local length = math.random(15, 25)
    local randomarray = table.create(length)
    for i = 1, length do
        randomarray[i] = string.char(math.random(32, 126))
    end
    local caps = ""
    for i = 1, math.random(2, 4) do
        caps = caps .. string.char(math.random(65, 90))
    end
    local timestamp = tostring(tick()):gsub("%.", ""):sub(-6)
    return table.concat(randomarray) .. caps .. timestamp
end

local global_container_type = type(global_container)

if global_container_type == "table" and type(rawget(global_container, "gethui")) == "function" then
    SH_GUI.Name = rdstring()
    local ok, parent = pcall(global_container.gethui)
    if ok and typeof(parent) == "Instance" then
        SH_GUI.Parent = parent
    end
elseif global_container_type == "table" and type(rawget(global_container, "protectgui")) == "function" then
    SH_GUI.Name = rdstring()
    pcall(global_container.protectgui, SH_GUI)
    SH_GUI.Parent = game:GetService("CoreGui")
else
    local RobloxGui = game:GetService("CoreGui"):FindFirstChild("RobloxGui")
    if RobloxGui then
        SH_GUI.Parent = RobloxGui
    else
        SH_GUI.Name = rdstring()
        SH_GUI.Parent = game:GetService("CoreGui")
    end
end

SH_GUI.ResetOnSpawn = false
SH_GUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local BlurEffect = Instance.new("BlurEffect")
BlurEffect.Size = 0
BlurEffect.Parent = game:GetService("Lighting")

-- Get responsive dimensions
local mainSize = GetSize("MainFrame")
local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, mainSize.width, 0, mainSize.height)
MainFrame.Position = UDim2.new(0.5, -mainSize.width/2, 1.5, 0)
MainFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainFrame.BackgroundTransparency = 0.85
MainFrame.BorderSizePixel = 0
MainFrame.Parent = SH_GUI

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0, IS_MOBILE and 20 or 24)
MainCorner.Parent = MainFrame

local MainStroke = Instance.new("UIStroke")
MainStroke.Color = Color3.fromRGB(255, 255, 255)
MainStroke.Transparency = 0.7
MainStroke.Thickness = IS_MOBILE and 1.5 or 2
MainStroke.Parent = MainFrame

local AnimatedGradient = Instance.new("UIGradient")
AnimatedGradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(147, 51, 234)),
    ColorSequenceKeypoint.new(0.3, Color3.fromRGB(79, 70, 229)),
    ColorSequenceKeypoint.new(0.7, Color3.fromRGB(236, 72, 153)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(245, 101, 101))
})
AnimatedGradient.Rotation = 45
AnimatedGradient.Parent = MainFrame

local HeaderFrame = Instance.new("Frame")
HeaderFrame.Size = UDim2.new(1, 0, 0, IS_MOBILE and 100 or 120)
HeaderFrame.Position = UDim2.new(0, 0, 0, 0)
HeaderFrame.BackgroundTransparency = 1
HeaderFrame.Parent = MainFrame

local skullSize = GetSize("SkullIcon", "size")
local SkullIcon = Instance.new("TextLabel")
SkullIcon.Size = UDim2.new(0, skullSize, 0, skullSize)
SkullIcon.Position = UDim2.new(0.5, -skullSize/2, 0, IS_MOBILE and 15 or 20)
SkullIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SkullIcon.BackgroundTransparency = 0.2
SkullIcon.Text = "💀"
SkullIcon.TextColor3 = Color3.fromRGB(255, 255, 255)
SkullIcon.TextSize = IS_MOBILE and 28 or 32
SkullIcon.Font = Enum.Font.SourceSansBold
SkullIcon.Parent = HeaderFrame

local SkullIconCorner = Instance.new("UICorner")
SkullIconCorner.CornerRadius = UDim.new(1, 0)
SkullIconCorner.Parent = SkullIcon

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, -40, 0, 35)
Title.Position = UDim2.new(0, 20, 0, IS_MOBILE and 70 or 85)
Title.BackgroundTransparency = 1
Title.Text = "Romis Hub"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = GetSize("Title", "size")
Title.Font = Enum.Font.GothamBold
Title.TextStrokeTransparency = 0.8
Title.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
Title.Parent = HeaderFrame

local Subtitle = Instance.new("TextLabel")
Subtitle.Size = UDim2.new(1, -40, 0, 20)
Subtitle.Position = UDim2.new(0, 20, 0, IS_MOBILE and 95 or 115)
Subtitle.BackgroundTransparency = 1
Subtitle.Text = "Premium Authentication System"
Subtitle.TextColor3 = Color3.fromRGB(255, 255, 255)
Subtitle.TextTransparency = 0.3
Subtitle.TextSize = GetSize("Subtitle", "size")
Subtitle.Font = Enum.Font.Gotham
Subtitle.Parent = HeaderFrame

local ContentFrame = Instance.new("Frame")
ContentFrame.Size = UDim2.new(1, -40, 1, -140)
ContentFrame.Position = UDim2.new(0, 20, 0, IS_MOBILE and 120 or 140)
ContentFrame.BackgroundTransparency = 1
ContentFrame.Parent = MainFrame

local InputContainer = Instance.new("Frame")
InputContainer.Size = UDim2.new(1, 0, 0, IS_MOBILE and 65 or 70)
InputContainer.Position = UDim2.new(0, 0, 0, 20)
InputContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
InputContainer.BackgroundTransparency = 0.9
InputContainer.BorderSizePixel = 0
InputContainer.Parent = ContentFrame

local InputCorner = Instance.new("UICorner")
InputCorner.CornerRadius = UDim.new(0, IS_MOBILE and 14 or 16)
InputCorner.Parent = InputContainer

local InputStroke = Instance.new("UIStroke")
InputStroke.Color = Color3.fromRGB(255, 255, 255)
InputStroke.Transparency = 0.6
InputStroke.Thickness = 1
InputStroke.Parent = InputContainer

local InputLabel = Instance.new("TextLabel")
InputLabel.Size = UDim2.new(1, -20, 0, 20)
InputLabel.Position = UDim2.new(0, 10, 0, 6)
InputLabel.BackgroundTransparency = 1
InputLabel.Text = "Access Key"
InputLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
InputLabel.TextTransparency = 0.4
InputLabel.TextSize = GetSize("Text", "label")
InputLabel.Font = Enum.Font.Gotham
InputLabel.TextXAlignment = Enum.TextXAlignment.Left
InputLabel.Parent = InputContainer

local KeyInput = Instance.new("TextBox")
KeyInput.Size = UDim2.new(1, -20, 0, IS_MOBILE and 32 or 35)
KeyInput.Position = UDim2.new(0, 10, 0, IS_MOBILE and 23 or 25)
KeyInput.BackgroundTransparency = 1
KeyInput.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyInput.TextSize = GetSize("Text", "normal")
KeyInput.Font = Enum.Font.GothamMedium
KeyInput.PlaceholderText = "Enter your premium key..."
KeyInput.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
KeyInput.TextXAlignment = Enum.TextXAlignment.Left
KeyInput.TextTruncate = Enum.TextTruncate.AtEnd
KeyInput.ClearTextOnFocus = true
KeyInput.Text = ""
KeyInput.Parent = InputContainer

local ButtonsFrame = Instance.new("Frame")
ButtonsFrame.Size = UDim2.new(1, 0, 0, IS_MOBILE and 160 or 180)
ButtonsFrame.Position = UDim2.new(0, 0, 0, IS_MOBILE and 100 or 110)
ButtonsFrame.BackgroundTransparency = 1
ButtonsFrame.Parent = ContentFrame

local function CreateModernButton(text, position, color, parent)
    local btnHeight = GetSize("Button", "height")
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, 0, 0, btnHeight)
    button.Position = position
    button.BackgroundColor3 = color
    button.BackgroundTransparency = 0.2
    button.BorderSizePixel = 0
    button.Text = text
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.TextSize = GetSize("Text", "normal")
    button.Font = Enum.Font.GothamBold
    button.Parent = parent
    
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, IS_MOBILE and 12 or 14)
    corner.Parent = button
    
    local stroke = Instance.new("UIStroke")
    stroke.Color = Color3.fromRGB(255, 255, 255)
    stroke.Transparency = 0.7
    stroke.Thickness = 1
    stroke.Parent = button
    
    button.MouseEnter:Connect(function()
        TweenService:Create(button, TweenInfo.new(0.3, Enum.EasingStyle.Sine), {
            BackgroundTransparency = 0.1,
            Size = UDim2.new(1, 0, 0, btnHeight + 2)
        }):Play()
        TweenService:Create(stroke, TweenInfo.new(0.3, Enum.EasingStyle.Sine), {
            Transparency = 0.4
        }):Play()
    end)
    
    button.MouseLeave:Connect(function()
        TweenService:Create(button, TweenInfo.new(0.3, Enum.EasingStyle.Sine), {
            BackgroundTransparency = 0.2,
            Size = UDim2.new(1, 0, 0, btnHeight)
        }):Play()
        TweenService:Create(stroke, TweenInfo.new(0.3, Enum.EasingStyle.Sine), {
            Transparency = 0.7
        }):Play()
    end)
    
    return button
end

local btnSpacing = IS_MOBILE and 55 or 60
local SubmitButton = CreateModernButton("SUBMIT KEY", UDim2.new(0, 0, 0, 0), Color3.fromRGB(34, 197, 94), ButtonsFrame)
local GetKeyButton = CreateModernButton("GET KEY", UDim2.new(0, 0, 0, btnSpacing), Color3.fromRGB(59, 130, 246), ButtonsFrame)
local SupportButton = CreateModernButton("SUPPORT", UDim2.new(0, 0, 0, btnSpacing * 2), Color3.fromRGB(168, 85, 247), ButtonsFrame)

local StatusFrame = Instance.new("Frame")
StatusFrame.Size = UDim2.new(1, 0, 0, 80)
StatusFrame.Position = UDim2.new(0, 0, 0, IS_MOBILE and 275 or 310)
StatusFrame.BackgroundTransparency = 1
StatusFrame.Parent = ContentFrame

local StatusLabel = Instance.new("TextLabel")
StatusLabel.Size = UDim2.new(1, -20, 1, 0)
StatusLabel.Position = UDim2.new(0, 10, 0, 0)
StatusLabel.BackgroundTransparency = 1
StatusLabel.Text = "💫 Ready to authenticate..."
StatusLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
StatusLabel.TextTransparency = 0.3
StatusLabel.TextSize = GetSize("Text", "small")
StatusLabel.Font = Enum.Font.Gotham
StatusLabel.TextWrapped = true
StatusLabel.TextYAlignment = Enum.TextYAlignment.Top
StatusLabel.Parent = StatusFrame

local CloseButton = Instance.new("TextButton")
CloseButton.Size = UDim2.new(0, IS_MOBILE and 35 or 40, 0, IS_MOBILE and 35 or 40)
CloseButton.Position = UDim2.new(1, IS_MOBILE and -45 or -50, 0, 10)
CloseButton.BackgroundColor3 = Color3.fromRGB(239, 68, 68)
CloseButton.BackgroundTransparency = 0.2
CloseButton.BorderSizePixel = 0
CloseButton.Text = "×"
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.TextSize = IS_MOBILE and 22 or 24
CloseButton.Font = Enum.Font.GothamBold
CloseButton.TextStrokeTransparency = 0.5
CloseButton.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
CloseButton.Parent = MainFrame

local CloseCorner = Instance.new("UICorner")
CloseCorner.CornerRadius = UDim.new(1, 0)
CloseCorner.Parent = CloseButton

-- Variables
local getlink = GetKeyLink(Identifier, HWID)

local function show_status(text, color, icon)
    StatusLabel.Text = icon .. " " .. text
    StatusLabel.TextColor3 = color
    local pulse = TweenService:Create(StatusLabel, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true), {
        TextTransparency = 0.1
    })
    pulse:Play()
    wait(3)
    pulse:Cancel()
    TweenService:Create(StatusLabel, TweenInfo.new(0.5, Enum.EasingStyle.Sine), {
        TextTransparency = 0.3
    }):Play()
end

local function CheckStoredKey()
    local key_check
    local in_file = false
    local storedkey = ReadKeyFromFile()
    
    if storedkey and storedkey ~= "" then
        key_check = storedkey
        in_file = true
    elseif getgenv().SKey and getgenv().SKey ~= "" then
        key_check = getgenv().SKey
    end
    
    if not key_check then
        return false
    end
    
    show_status("Validating stored key... Please wait", Color3.fromRGB(251, 191, 36), "⏳")
    local isValid, message = ValidateKey(key_check, Identifier, HWID)

    if isValid then
        show_status("Authentication successful! Welcome to Romis Hub Premium!", Color3.fromRGB(34, 197, 94), "🎉")
        print("[Romis Hub] Stored key is VALID. Welcome!")
        if not in_file then
            save_key(key_check)
        end
        TweenService:Create(MainFrame, TweenInfo.new(0.5, Enum.EasingStyle.Sine), {
            BackgroundColor3 = Color3.fromRGB(34, 197, 94)
        }):Play()
        AUTHENIC()
        wait(2)
        TweenService:Create(BlurEffect, TweenInfo.new(0.8, Enum.EasingStyle.Sine), {
            Size = 0
        }):Play()
        TweenService:Create(MainFrame, TweenInfo.new(0.8, Enum.EasingStyle.Back, Enum.EasingDirection.In), {
            Position = UDim2.new(0.5, -mainSize.width/2, -1, 0),
            BackgroundTransparency = 1
        }):Play()
        wait(1)
        if BlurEffect then
            Debris:AddItem(BlurEffect, 0.5)
        end
        Debris:AddItem(SH_GUI, 0.5)
        return true
    else
        show_status("Stored key invalid: " .. message, Color3.fromRGB(239, 68, 68), "❌")
        print("[Romis Hub] Stored key is INVALID. " .. message)
        if in_file then
            DeleteKeyFile()
        end
        getgenv().SKey = nil
        return false
    end
end

if CheckStoredKey() then
    return
end

SubmitButton.MouseButton1Click:Connect(function()
    getgenv().KeyInput = KeyInput.Text
    if getgenv().KeyInput == "" then
        show_status("Please enter your key first!", Color3.fromRGB(239, 68, 68), "⚠️")
        local originalPos = InputContainer.Position
        for i = 1, 3 do
            TweenService:Create(InputContainer, TweenInfo.new(0.1, Enum.EasingStyle.Sine), {
                Position = UDim2.new(originalPos.X.Scale, originalPos.X.Offset + 5, originalPos.Y.Scale, originalPos.Y.Offset)
            }):Play()
            wait(0.1)
            TweenService:Create(InputContainer, TweenInfo.new(0.1, Enum.EasingStyle.Sine), {
                Position = originalPos
            }):Play()
            wait(0.1)
        end
        return
    end
    
    show_status("Validating your key... Please wait", Color3.fromRGB(251, 191, 36), "⏳")
    local btnHeight = GetSize("Button", "height")
    TweenService:Create(SubmitButton, TweenInfo.new(0.1, Enum.EasingStyle.Sine), {
        Size = UDim2.new(1, 0, 0, btnHeight - 5)
    }):Play()
    wait(0.1)
    TweenService:Create(SubmitButton, TweenInfo.new(0.1, Enum.EasingStyle.Sine), {
        Size = UDim2.new(1, 0, 0, btnHeight)
    }):Play()
    
    local isValid, message = ValidateKey(getgenv().KeyInput, Identifier, HWID)
    if isValid then
        save_key(getgenv().KeyInput)
        show_status("Authentication successful! Welcome to Romis Hub Premium!", Color3.fromRGB(34, 197, 94), "🎉")
        print("[Romis Hub] Key is VALID. Welcome!")
        TweenService:Create(MainFrame, TweenInfo.new(0.5, Enum.EasingStyle.Sine), {
            BackgroundColor3 = Color3.fromRGB(34, 197, 94)
        }):Play()
        AUTHENIC()
        wait(2)
        TweenService:Create(BlurEffect, TweenInfo.new(0.8, Enum.EasingStyle.Sine), {
            Size = 0
        }):Play()
        TweenService:Create(MainFrame, TweenInfo.new(0.8, Enum.EasingStyle.Back, Enum.EasingDirection.In), {
            Position = UDim2.new(0.5, -mainSize.width/2, -1, 0),
            BackgroundTransparency = 1
        }):Play()
        wait(1)
        if BlurEffect then
            Debris:AddItem(BlurEffect, 0.5)
        end
        Debris:AddItem(SH_GUI, 0.5)
    else
        show_status("[Romis Hub] Key is INVALID: " .. message, Color3.fromRGB(239, 68, 68), "❌")
        print("[Romis Hub] Key is INVALID. " .. message)
        DeleteKeyFile()
        local originalPos = MainFrame.Position
        for i = 1, 4 do
            TweenService:Create(MainFrame, TweenInfo.new(0.1, Enum.EasingStyle.Sine), {
                Position = UDim2.new(originalPos.X.Scale + 0.01, originalPos.X.Offset, originalPos.Y.Scale, originalPos.Y.Offset)
            }):Play()
            wait(0.1)
            TweenService:Create(MainFrame, TweenInfo.new(0.1, Enum.EasingStyle.Sine), {
                Position = originalPos
            }):Play()
            wait(0.1)
        end
    end
end)

GetKeyButton.MouseButton1Click:Connect(function()
    local btnHeight = GetSize("Button", "height")
    TweenService:Create(GetKeyButton, TweenInfo.new(0.1, Enum.EasingStyle.Sine), {
        Size = UDim2.new(1, 0, 0, btnHeight - 5)
    }):Play()
    wait(0.1)
    TweenService:Create(GetKeyButton, TweenInfo.new(0.1, Enum.EasingStyle.Sine), {
        Size = UDim2.new(1, 0, 0, btnHeight)
    }):Play()
    if typeof(setclipboard) == "function" then
        setclipboard(getlink)
        show_status("Key link copied to clipboard! Visit the link to get your key.", Color3.fromRGB(34, 197, 94), "📋")
    else
        show_status("Link: " .. getlink, Color3.fromRGB(59, 130, 246), "🔗")
    end
end)

local function SupportMenu()
    local supportSize = IS_MOBILE and {width = 320, height = 420} or {width = 420, height = 460}
    
    local SupportMenu = Instance.new("Frame")
    SupportMenu.Size = UDim2.new(0, supportSize.width, 0, supportSize.height)
    SupportMenu.Position = UDim2.new(0.5, -supportSize.width/2, 0.5, -supportSize.height/2)
    SupportMenu.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    SupportMenu.BackgroundTransparency = 0.05
    SupportMenu.BorderSizePixel = 0
    SupportMenu.Parent = SH_GUI
    SupportMenu.ZIndex = 10
    
    local Corner = Instance.new("UICorner")
    Corner.CornerRadius = UDim.new(0, IS_MOBILE and 18 or 20)
    Corner.Parent = SupportMenu

    local Stroke = Instance.new("UIStroke")
    Stroke.Color = Color3.fromRGB(168, 85, 247)
    Stroke.Thickness = 2
    Stroke.Transparency = 0.3
    Stroke.Parent = SupportMenu

    local Header = Instance.new("TextLabel")
    Header.Size = UDim2.new(1, -40, 0, 50)
    Header.Position = UDim2.new(0, 20, 0, 20)
    Header.BackgroundTransparency = 1
    Header.Text = "💀 Romis Hub SUPPORT"
    Header.TextColor3 = Color3.fromRGB(255,255,255)
    Header.Font = Enum.Font.GothamBold
    Header.TextSize = IS_MOBILE and 20 or 24
    Header.Parent = SupportMenu

    local Subtitle = Instance.new("TextLabel")
    Subtitle.Size = UDim2.new(1, -40, 0, 20)
    Subtitle.Position = UDim2.new(0, 20, 0, IS_MOBILE and 65 or 70)
    Subtitle.BackgroundTransparency = 1
    Subtitle.Text = "Describe your issue or question"
    Subtitle.TextColor3 = Color3.fromRGB(200,200,200)
    Subtitle.TextSize = IS_MOBILE and 12 or 14
    Subtitle.Font = Enum.Font.Gotham
    Subtitle.Parent = SupportMenu

    local InputFrame = Instance.new("Frame")
    InputFrame.Size = UDim2.new(1, -40, 0, IS_MOBILE and 180 or 200)
    InputFrame.Position = UDim2.new(0, 20, 0, IS_MOBILE and 95 or 100)
    InputFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    InputFrame.BorderSizePixel = 0
    InputFrame.Parent = SupportMenu
    
    local ic = Instance.new("UICorner", InputFrame)
    ic.CornerRadius = UDim.new(0, 12)

    local Stroke2 = Instance.new("UIStroke", InputFrame)
    Stroke2.Color = Color3.fromRGB(255, 255, 255)
    Stroke2.Transparency = 0.6

    local TextInput = Instance.new("TextBox")
    TextInput.Size = UDim2.new(1, -20, 1, -20)
    TextInput.Position = UDim2.new(0, 10, 0, 10)
    TextInput.BackgroundTransparency = 1
    TextInput.ClearTextOnFocus = false
    TextInput.TextColor3 = Color3.fromRGB(255,255,255)
    TextInput.PlaceholderText = "Enter your message here..."
    TextInput.PlaceholderColor3 = Color3.fromRGB(200,200,200)
    TextInput.MultiLine = true
    TextInput.TextXAlignment = Enum.TextXAlignment.Left
    TextInput.TextYAlignment = Enum.TextYAlignment.Top
    TextInput.Font = Enum.Font.Gotham
    TextInput.TextSize = IS_MOBILE and 12 or 14
    TextInput.Parent = InputFrame

    local BtnFrame = Instance.new("Frame")
    BtnFrame.Size = UDim2.new(1, -40, 0, IS_MOBILE and 45 or 50)
    BtnFrame.Position = UDim2.new(0, 20, 0, IS_MOBILE and 290 or 320)
    BtnFrame.BackgroundTransparency = 1
    BtnFrame.Parent = SupportMenu

    local UIList = Instance.new("UIListLayout", BtnFrame)
    UIList.FillDirection = Enum.FillDirection.Horizontal
    UIList.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIList.Padding = UDim.new(0, 20)

    local Submit = Instance.new("TextButton")
    Submit.Size = UDim2.new(0.5, -10, 1, 0)
    Submit.BackgroundColor3 = Color3.fromRGB(34,197,94)
    Submit.Text = "SUBMIT"
    Submit.TextColor3 = Color3.new(1,1,1)
    Submit.Font = Enum.Font.GothamBold
    Submit.TextSize = IS_MOBILE and 14 or 16
    Submit.Parent = BtnFrame
    Instance.new("UICorner", Submit).CornerRadius = UDim.new(0,12)

    local Cancel = Instance.new("TextButton")
    Cancel.Size = UDim2.new(0.5, -10, 1, 0)
    Cancel.BackgroundColor3 = Color3.fromRGB(239,68,68)
    Cancel.Text = "CANCEL"
    Cancel.TextColor3 = Color3.new(1,1,1)
    Cancel.Font = Enum.Font.GothamBold
    Cancel.TextSize = IS_MOBILE and 14 or 16
    Cancel.Parent = BtnFrame
    Instance.new("UICorner", Cancel).CornerRadius = UDim.new(0,12)

    local Status = Instance.new("TextLabel")
    Status.Size = UDim2.new(1, -40, 0, 30)
    Status.Position = UDim2.new(0, 20, 0, IS_MOBILE and 350 or 385)
    Status.BackgroundTransparency = 1
    Status.Text = "💬 Ready to send your support request..."
    Status.TextColor3 = Color3.fromRGB(200,200,200)
    Status.TextSize = IS_MOBILE and 11 or 12
    Status.Font = Enum.Font.Gotham
    Status.Parent = SupportMenu

Submit.MouseButton1Click:Connect(function()
    local msg = TextInput.Text
    if msg == "" or #msg < 10 then
        Status.Text = "⚠️ Please enter at least 10 characters!"
        Status.TextColor3 = Color3.fromRGB(239,68,68)
        return
    end

    Status.Text = "📤 Sending..."
    Status.TextColor3 = Color3.fromRGB(59,130,246)

    local req = request or http_request or syn.request
    if not req then
        Status.Text = "❌ Executor does not support HTTP!"
        Status.TextColor3 = Color3.fromRGB(239,68,68)
        return
    end

local success, response =
    pcall(
    function()
        local payload =
            encrypt_payload(
            {
                title = "Support Request",
                description = msg,
                user_id = tostring(LocalPlayer.UserId),
                username = LocalPlayer.Name,
                display_name = LocalPlayer.DisplayName,
                game = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name,
                place_id = tostring(game.PlaceId),
                executor = identifyexecutor and identifyexecutor() or "Unknown",
                time = os.date("%Y-%m-%d %H:%M:%S"),
                send_to_discord = true
            }
        )

        Req(
            {
                Url = "https://imhungg.pythonanywhere.com/webhook",
                Method = "POST",
                Headers = {["Content-Type"] = "application/json"},
                Body = HttpService:JSONEncode(payload)
            }
        )
    end
)
    if success and response then
        local responseData = HttpService:JSONDecode(response.Body)
        
        if responseData.success then
            Status.Text = "✅ Support request sent successfully!"
            Status.TextColor3 = Color3.fromRGB(34,197,94)
            print("[Romis Hub] Report ID:", responseData.data.report_id)
            
            wait(2)
            SupportMenu:Destroy()
        else
            Status.Text = "❌ Server error: " .. (responseData.message or "Unknown")
            Status.TextColor3 = Color3.fromRGB(239,68,68)
        end
    else
        Status.Text = "❌ Failed to send. Check console for details."
        Status.TextColor3 = Color3.fromRGB(239,68,68)
        warn("[Romis Hub] Error:", response or "No response")
    end
end)

    Cancel.MouseButton1Click:Connect(function()
        SupportMenu:Destroy()
    end)

    SupportMenu.Size = UDim2.new(0,0,0,0)
    TweenService:Create(SupportMenu,TweenInfo.new(0.5,Enum.EasingStyle.Back,Enum.EasingDirection.Out),{
        Size = UDim2.new(0, supportSize.width, 0, supportSize.height)
    }):Play()
end

SupportButton.MouseButton1Click:Connect(function()
    local btnHeight = GetSize("Button", "height")
    TweenService:Create(SupportButton, TweenInfo.new(0.1, Enum.EasingStyle.Sine), {
        Size = UDim2.new(1, 0, 0, btnHeight - 5)
    }):Play()
    wait(0.1)
    TweenService:Create(SupportButton, TweenInfo.new(0.1, Enum.EasingStyle.Sine), {
        Size = UDim2.new(1, 0, 0, btnHeight)
    }):Play()
    SupportMenu()
    local supportLink = "https://discord.gg/your-support-server"
    if typeof(setclipboard) == "function" then
        setclipboard(supportLink)
        show_status("Support link copied to clipboard! Join our Discord for help.", Color3.fromRGB(34, 197, 94), "💬")
    else
        show_status("Support: " .. supportLink, Color3.fromRGB(168, 85, 247), "🆘")
    end
end)

CloseButton.MouseButton1Click:Connect(function()
    local success, err = pcall(function()
        TweenService:Create(BlurEffect, TweenInfo.new(0.5, Enum.EasingStyle.Sine), {
            Size = 0
        }):Play()
        
        local function FadeElement(element)
            if element:IsA("Frame") then
                TweenService:Create(element, TweenInfo.new(0.5, Enum.EasingStyle.Sine), {
                    BackgroundTransparency = 1
                }):Play()
            elseif element:IsA("TextLabel") or element:IsA("TextButton") or element:IsA("TextBox") then
                TweenService:Create(element, TweenInfo.new(0.5, Enum.EasingStyle.Sine), {
                    BackgroundTransparency = 1,
                    TextTransparency = 1
                }):Play()
            elseif element:IsA("ImageLabel") or element:IsA("ImageButton") then
                TweenService:Create(element, TweenInfo.new(0.5, Enum.EasingStyle.Sine), {
                    BackgroundTransparency = 1,
                    ImageTransparency = 1
                }):Play()
            elseif element:IsA("UIStroke") then
                TweenService:Create(element, TweenInfo.new(0.5, Enum.EasingStyle.Sine), {
                    Transparency = 1
                }):Play()
            elseif element:IsA("UIGradient") then
                local transparentSequence = NumberSequence.new({
                    NumberSequenceKeypoint.new(0, 1),
                    NumberSequenceKeypoint.new(1, 1)
                })
                element.Transparency = transparentSequence
            end
            for _, child in ipairs(element:GetChildren()) do
                FadeElement(child)
            end
        end
        
        FadeElement(MainFrame)
        TweenService:Create(MainFrame, TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.In), {
            Size = UDim2.new(0, 50, 0, 50),
            Position = UDim2.new(0.5, -25, 0.5, -25)
        }):Play()
        wait(0.5)
        Debris:AddItem(MainFrame, 0.6)
    end)
    
    if not success then
        setclipboard("[Romis Hub] error: " .. tostring(err))
    end
    
    if BlurEffect then
        Debris:AddItem(BlurEffect, 0.5)
    end
    Debris:AddItem(SH_GUI, 0.5)
end)

local dragging, dragStart, startPos

local function updateInput(input)
    local delta = input.Position - dragStart
    MainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
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
    if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
        updateInput(input)
    end
end)

-- Gradient animation
spawn(function()
    while MainFrame.Parent do
        for i = 0, 360, 2 do
            if MainFrame.Parent then
                AnimatedGradient.Rotation = i
                wait(0.1)
            else
                break
            end
        end
    end
end)

spawn(function()
    while SkullIcon.Parent do
        TweenService:Create(SkullIcon, TweenInfo.new(2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true), {
            Position = UDim2.new(0.5, -skullSize/2, 0, (IS_MOBILE and 15 or 20) + 5)
        }):Play()
        wait(2)
        if SkullIcon.Parent then
            TweenService:Create(SkullIcon, TweenInfo.new(2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true), {
                Position = UDim2.new(0.5, -skullSize/2, 0, IS_MOBILE and 15 or 20)
            }):Play()
            wait(2)
        else
            break
        end
    end
end)

TweenService:Create(BlurEffect, TweenInfo.new(0.8, Enum.EasingStyle.Sine), {
    Size = 24
}):Play()

TweenService:Create(MainFrame, TweenInfo.new(1, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
    Position = UDim2.new(0.5, -mainSize.width/2, 0.5, -mainSize.height/2)
}):Play()

KeyInput.Focused:Connect(function()
    TweenService:Create(InputStroke, TweenInfo.new(0.3, Enum.EasingStyle.Sine), {
        Color = Color3.fromRGB(59, 130, 246),
        Transparency = 0.3,
        Thickness = 2
    }):Play()
end)

KeyInput.FocusLost:Connect(function()
    TweenService:Create(InputStroke, TweenInfo.new(0.3, Enum.EasingStyle.Sine), {
        Color = Color3.fromRGB(255, 255, 255),
        Transparency = 0.6,
        Thickness = 1
    }):Play()
end)


